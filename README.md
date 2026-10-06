# slang-id

Skill anti AI-slop Bahasa Indonesia. Bikin AI nulis kayak orang Indonesia asli: kata gaul kekinian yang pas takaran, pola kalimat yang natural, tanpa kekakuan dan pola khas AI.

*An agent skill that makes AI write like a native Indonesian: current slang used sparingly, natural sentence patterns, zero AI tells. Works with any agent that reads the SKILL.md standard.*

## Kenapa ada skill ini

Tulisan AI berbahasa Indonesia gampang ketahuan: pembuka "Di era digital yang serba cepat ini", paralelisme "bukan hanya X tetapi juga Y", tripel kosong "cepat, tepat, dan akurat", kosakata terjemahan ("hiruk pikuk", "krusial", "lanskap"), dan penutup ritual "Semoga bermanfaat!". Skill ini membuang semuanya, lalu menggantinya dengan cara ngomong orang Indonesia beneran, partikel (`sih`, `dong`, `kok`), kalimat yang dipotong, dan slang yang masih hidup.

## Isi skill

```
skills/slang-id/
  SKILL.md                    # aturan main + alur kerja (6 langkah)
  references/
    anti-slop.md              # katalog pola khas AI + pindai cepat 30 detik, baca ini dulu
    konsistensi-gaya.md       # kunci suara (voice lock), checklist tiap output, anti register-slip
    pola-kalimat.md           # partikel, ellipsis, topikalisasi, ritme
    kata-gaul.md              # ringkasan slang kekinian per fungsi + yang sudah basi
    leksikon-gaul.md          # leksikon besar: ratusan istilah, 80 pola (P01–P80),
                              # modul Jakarta/Jawa/Sunda, normalisasi, moderasi
  examples/
    sebelum-sesudah.md        # 7 contoh nyata: caption, chat CS, email, konsistensi persona, dll.
```

Prinsip yang dipegang: **slang itu bumbu, bukan makanan utama**. Skill ini juga mengatur *register*, gaul untuk kasual, profesional santai untuk kerja, baku rapi untuk formal. Salah register lebih fatal daripada salah kata.

## Instalasi

```bash
git clone https://github.com/ANGGATYASIA/anti-ai-slop-indonesia-slang.git
cd anti-ai-slop-indonesia-slang
./install.sh
```

Installer interaktif: pilih tool/AI agent tujuan (Claude Code, Codex CLI, Cursor, standar AgentSkills `~/.agents/skills`, atau direktori sendiri), pilih symlink atau copy, pilih scope user (global) atau project. Juga bisa non-interaktif:

```bash
./install.sh --tools claude,codex --method symlink --yes
./install.sh --tools agents --method copy --scope project --yes
./install.sh --uninstall --tools claude --yes
```

Alternatif: pakai [skills.sh](https://skills.sh): `npx skills add ANGGATYASIA/anti-ai-slop-indonesia-slang`.

Setelah instalasi, restart tool-nya bila skill belum muncul. Skill aktif otomatis setiap kamu menulis atau menyunting teks berbahasa Indonesia.

## Mode selalu-on (harness level)

Secara default installer juga menulis satu blok direktif ke file konfigurasi global tiap tool:

| Tool | File yang ditulis |
|---|---|
| Claude Code | `~/.claude/CLAUDE.md` |
| Codex CLI | `~/.codex/AGENTS.md` |
| Cursor | `~/.cursor/rules/slang-id-always-on.md` |

File-file itu dibaca AI di *setiap* sesi, sehingga gaya skill ini aktif untuk **setiap** output Bahasa Indonesia, termasuk percakapan sehari-hari, bukan cuma saat kamu meminta. Blok direktif ditandai `<!-- slang-id:begin -->` / `<!-- slang-id:end -->` agar rapi dan gampang dicabut.

- Nonaktifkan saat instalasi: `./install.sh --no-always-on`
- Cabut kapan saja: `./install.sh --uninstall --tools claude,codex,cursor`

Catatan jujur: skill bekerja di lapisan instruksi, bukan mengubah bobot model. Mode selalu-on adalah mekanisme terkuat yang bisa dilakukan sebuah skill: memastikan instruksi gaya ini dibaca di setiap sesi, sehingga karakteristik output AI berubah konsisten.

## Kompatibilitas

Mengikuti standar [SKILL.md](https://agentskills.io), satu format yang dibaca Claude Code, Codex CLI, Cursor, Gemini CLI, OpenClaw, Hermes Agent, dan ~40 tools lainnya. Tidak ada kode yang dijalankan, tidak ada ketergantungan, tidak ada telemetri. Cuma Markdown.

## Contoh

Sebelum:
> Di era digital yang serba cepat ini, penting untuk dicatat bahwa menjaga kesehatan mental bukan hanya penting, tetapi juga krusial bagi produktivitas kita semua.

Sesudah:
> Hidup lagi kenceng-kencengnya, kepala ikut rame. Sesekali ngerem itu perlu, namanya juga ngerawat diri.

Contoh lengkap: [examples/sebelum-sesudah.md](skills/slang-id/examples/sebelum-sesudah.md).

## Lisensi

MIT, pakai bebas, modifikasi bebas, komersial bebas. Lihat [LICENSE](LICENSE).
