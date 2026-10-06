#!/usr/bin/env bash
#
# install.sh — pasang skill "slang-id" ke AI tools / agent AI pilihanmu.
#
# Cara pakai (interaktif):
#   ./install.sh
#
# Cara pakai (non-interaktif):
#   ./install.sh --tools claude,codex --method symlink --yes
#   ./install.sh --tools agents --method copy --scope project --yes
#   ./install.sh --uninstall --tools claude --yes
#
# Opsi:
#   --tools   daftar tool dipisah koma: claude, codex, cursor, agents, custom
#             (agents = standar ~/.agents/skills yang dibaca banyak tools baru)
#   --method  symlink | copy   (default: symlink)
#   --scope   user | project    (default: user; project = folder .<tool>/skills di direktori aktif)
#   --custom-dir PATH          (wajib jika --tools memuat "custom")
#   --yes     lewati semua konfirmasi
#   --uninstall               hapus instalasi, bukan pasang
#   -h, --help                tampilkan bantuan

set -euo pipefail

SKILL_NAME="slang-id"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$SCRIPT_DIR/skills/$SKILL_NAME"

METHOD="symlink"; METHOD_GIVEN=0
SCOPE="user"; SCOPE_GIVEN=0
TOOLS=""
CUSTOM_DIR=""
ASSUME_YES=0
UNINSTALL=0

# tool-id -> subdir relatif terhadap home (scope user) atau cwd (scope project)
declare -A TOOL_SUBDIR=(
  [claude]=".claude/skills"
  [codex]=".codex/skills"
  [cursor]=".cursor/skills"
  [agents]=".agents/skills"
)
TOOL_LABELS=(
  "claude:Claude Code (~/.claude/skills)"
  "codex:Codex CLI (~/.codex/skills)"
  "cursor:Cursor (~/.cursor/skills)"
  "agents:Standar AgentSkills (~/.agents/skills) — dibaca banyak tools/AI agent baru"
  "custom:Direktori sendiri (ditanya nanti)"
)

usage() { sed -n '2,/^$/p' "$0" | sed 's/^# //; s/^#//'; }

log()  { printf '%s\n' "$*"; }
ask() { # ask "pertanyaan" -> jawab di $REPLY
  printf '%s ' "$1"
  read -r REPLY
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --tools)      TOOLS="$2"; shift 2 ;;
    --method)     METHOD="$2"; METHOD_GIVEN=1; shift 2 ;;
    --scope)      SCOPE="$2"; SCOPE_GIVEN=1; shift 2 ;;
    --custom-dir) CUSTOM_DIR="$2"; shift 2 ;;
    --yes)        ASSUME_YES=1; shift ;;
    --uninstall)  UNINSTALL=1; shift ;;
    -h|--help)    usage; exit 0 ;;
    *) log "Opsi tidak dikenal: $1"; usage; exit 1 ;;
  esac
done

[[ "$METHOD" == symlink || "$METHOD" == copy ]] || { log "method harus symlink atau copy"; exit 1; }
[[ "$SCOPE" == user || "$SCOPE" == project ]] || { log "scope harus user atau project"; exit 1; }
[[ -d "$SRC_DIR" ]] || { log "Tidak ketemu: $SRC_DIR"; exit 1; }

# ---------- pilih tools ----------
if [[ -z "$TOOLS" ]]; then
  if [[ "$ASSUME_YES" == 1 ]]; then
    log "--tools wajib diisi saat --yes tanpa pilihan interaktif"; exit 1
  fi
  log "Mau dipasang ke tool/AI agent apa? (pisahkan koma, mis. 1,3 — atau 'all')"
  i=1
  for entry in "${TOOL_LABELS[@]}"; do
    log "  $i) ${entry#*:}"
    i=$((i+1))
  done
  ask "Pilihan:"
  if [[ "$REPLY" == "all" ]]; then
    TOOLS="claude,codex,cursor,agents"
  else
    TOOLS=""
    for n in ${REPLY//,/ }; do
      id="${TOOL_LABELS[$((n-1))]%%:*}"
      TOOLS="${TOOLS:+$TOOLS,}$id"
    done
  fi
fi

confirm() {
  [[ "$ASSUME_YES" == 1 ]] && return 0
  ask "$1 [y/N]:"
  [[ "$REPLY" =~ ^[yY]$ ]]
}

do_install_one() { # $1 = tool id
  local id="$1" dest
  if [[ "$id" == "custom" ]]; then
    if [[ -z "$CUSTOM_DIR" ]]; then
      if [[ "$ASSUME_YES" == 1 ]]; then log "--custom-dir wajib untuk tools=custom"; exit 1; fi
      ask "Direktori tujuan custom:"
      CUSTOM_DIR="$REPLY"
    fi
    dest="$CUSTOM_DIR/$SKILL_NAME"
  else
    dest="$BASE/${TOOL_SUBDIR[$id]}/$SKILL_NAME"
  fi

  if [[ -e "$dest" || -L "$dest" ]]; then
    if ! confirm "$dest sudah ada. Timpa?"; then
      log "  - dilewati: $dest"
      return 0
    fi
    rm -rf "$dest"
  fi
  mkdir -p "$(dirname "$dest")"

  if [[ "$METHOD" == "symlink" ]]; then
    ln -s "$SRC_DIR" "$dest"
    log "  + symlink: $dest -> $SRC_DIR"
  else
    cp -r "$SRC_DIR" "$dest"
    log "  + copy: $dest"
  fi
}

do_uninstall_one() { # $1 = tool id
  local id="$1" dest
  if [[ "$id" == "custom" ]]; then
    [[ -n "$CUSTOM_DIR" ]] || { log "--custom-dir wajib untuk tools=custom"; exit 1; }
    dest="$CUSTOM_DIR/$SKILL_NAME"
  else
    local base="$HOME"
    [[ "$SCOPE" == "project" ]] && base="$PWD"
    dest="$base/${TOOL_SUBDIR[$id]}/$SKILL_NAME"
  fi
  if [[ -e "$dest" || -L "$dest" ]]; then
    rm -rf "$dest"
    log "  - dihapus: $dest"
  else
    log "  - tidak ada: $dest (dilewati)"
  fi
}

# ---------- pilih method & scope secara interaktif bila tidak diberi via flag ----------
if [[ "$ASSUME_YES" == 0 ]]; then
  if [[ "$METHOD_GIVEN" == 0 ]]; then
    log "Metode instalasi:"
    log "  1) symlink (disarankan — update repo otomatis kepakai)"
    log "  2) copy (mandiri, tidak ikut update)"
    ask "Pilihan [1]:"
    case "${REPLY:-1}" in
      2) METHOD="copy" ;;
      *) METHOD="symlink" ;;
    esac
  fi
  if [[ "$SCOPE_GIVEN" == 0 ]]; then
    log "Scope instalasi:"
    log "  1) user (global, di $HOME)"
    log "  2) project (di direktori aktif: $PWD)"
    ask "Pilihan [1]:"
    case "${REPLY:-1}" in
      2) SCOPE="project" ;;
      *) SCOPE="user" ;;
    esac
  fi
fi

BASE="$HOME"; BASE_DESC="home ($HOME)"
if [[ "$SCOPE" == "project" ]]; then
  BASE="$PWD"; BASE_DESC="project ($PWD)"
fi

if [[ "$UNINSTALL" == 1 ]]; then
  log "Uninstall skill '$SKILL_NAME' (scope: $SCOPE)..."
  IFS=',' read -ra IDS <<< "$TOOLS"
  for id in "${IDS[@]}"; do do_uninstall_one "$id"; done
  log "Selesai."
  exit 0
fi

log "Install skill '$SKILL_NAME' — method: $METHOD, scope: $SCOPE ($BASE_DESC)"
log "Target: $TOOLS"
confirm "Lanjut?" || { log "Dibatalkan."; exit 0; }

IFS=',' read -ra IDS <<< "$TOOLS"
for id in "${IDS[@]}"; do
  [[ -n "${TOOL_SUBDIR[$id]:-}" || "$id" == "custom" ]] || { log "Tool tidak dikenal: $id (dilewati)"; continue; }
  do_install_one "$id"
done

log ""
log "Selesai. Verifikasi cepat:"
for id in "${IDS[@]}"; do
  if [[ "$id" == "custom" ]]; then
    [[ -e "$CUSTOM_DIR/$SKILL_NAME/SKILL.md" ]] && log "  ✓ custom: $CUSTOM_DIR/$SKILL_NAME/SKILL.md"
  else
    b="$HOME"; [[ "$SCOPE" == "project" ]] && b="$PWD"
    [[ -e "$b/${TOOL_SUBDIR[$id]}/$SKILL_NAME/SKILL.md" ]] && log "  ✓ $id: $b/${TOOL_SUBDIR[$id]}/$SKILL_NAME/SKILL.md"
  fi
done
log ""
log "Catatan: restart tool/AI agent-nya bila skill belum muncul di daftar skills."
