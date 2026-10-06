---
name: slang-id
description: Bikin tulisan AI terdengar seperti orang Indonesia asli. Gunakan setiap kali menulis, menyunting, atau menilai teks berbahasa Indonesia (caption, chat, email, artikel, naskah, dokumentasi) untuk membuang kekakuan dan pola khas AI, lalu menggantinya dengan kata gaul kekinian dan pola kalimat yang natural. Jangan dipakai untuk konteks yang menuntut bahasa baku formal (hukum, akademik, surat resmi); di sana pakai register baku yang rapi.
version: 1.0.0
license: MIT
author: santika reja
---

# slang-id: Anti AI-Slop Bahasa Indonesia

Skill ini membuat teks berbahasa Indonesia terdengar seperti ditulis orang Indonesia asli, bukan mesin. Dua senjata: **kata gaul kekinian** yang pas takaran, dan **pola kalimat** yang natural. Lawannya: kekakuan, kalimat generik, dan pola khas AI.

## Prinsip inti

1. **Slang itu bumbu, bukan makanan utama.** Satu-dua penanda gaul per paragraf sudah cukup. Teks yang tiap kalimatnya ditempeli slang justru terdengar seperti AI yang disuruh "jadi gaul", cringe dan ketahuan.
2. **Natural dulu, gaul kemudian.** Kalau kalimatnya masih kaku, perbaiki strukturnya dulu (lihat `references/pola-kalimat.md`) sebelum menabur kata gaul. Slang tidak menyelamatkan kalimat yang strukturnya robotik.
3. **Kenali register.** Gaul untuk kasual (chat, sosmed, konten). Profesional santai untuk kerja (email, presentasi). Baku rapi untuk formal. Salah register lebih fatal daripada salah kata.
4. **Uji baca keras.** Selesai menulis, baca keras-keras. Kalau terdengar seperti pengumuman atau seperti robot baca naskah, revisi. Orang Indonesia asli ngomongnya mengalir, motong kalimat, dan pakai partikel.

## Alur kerja

1. **Kunci suara** (`references/konsistensi-gaya.md`): tetapkan mode, intensitas, pasangan sapaan,
   partikel andalan, kata gaul andalan, dan daftar pantangan. Satu kunci dipakai konsisten
   untuk semua output dalam konteks yang sama. Ini yang membuat AI terdengar seperti
   orang yang sama, bukan ganti-ganti kepribadian tiap respons.
2. **Tentukan register** dari konteks dan audiens:
   - *Gaul/kasual*: teman, sosmed, konten kreator, chat. Slang penuh tapi terkendali.
   - *Profesional santai*: kolega, klien, email kerja non-formal. Bahasa baku yang hidup: kalimat pendek, verba kuat, tanpa slang berat. Partikel ringan (`sih`, `kan`) boleh sesekali.
   - *Formal/baku*: hukum, akademik, surat resmi, dokumen. Skill ini TIDAK dipakai untuk menambah slang; tapi tetap dipakai untuk membuang pola AI-slop (lihat `references/anti-slop.md`) agar bahasa bakunya rapi dan manusiawi.
3. **Buang pola AI-slop** dari draf. Daftar lengkap + pindai cepat 30 detik: `references/anti-slop.md`.
   Ini langkah wajib sebelum langkah 4.
4. **Terapkan pola kalimat natural** (`references/pola-kalimat.md`, ini ACUAN UTAMA): jawab dulu baru jelaskan, koreksi diri sesekali, spesifik bukan generik, satu ide satu kalimat pendek. Katalog 80 pola siap pakai (P01–P80): `references/leksikon-gaul.md`.
5. **Tabur kata gaul** secukupnya, sesuai kunci suara. Pilih dari `references/leksikon-gaul.md`
   atau ringkasnya di `references/kata-gaul.md`, tapi JANGAN mengacak seluruh leksikon;
   rotasi dari kata andalan yang sudah dikunci. Takaran natural: 1–2 penanda per 2–3 kalimat.
6. **Checklist konsistensi** (`references/konsistensi-gaya.md` bagian 2) + **uji baca keras**.
   Lolos keduanya = selesai.

**Batas wilayah:** skill ini tidak berlaku untuk kode sumber (nama variabel/fungsi/komentar kode).
Detail: `references/konsistensi-gaya.md` bagian 6.

## Aturan anti-cringe (jangan dilanggar)

- Jangan campur slang dari era berbeda dalam satu teks (`ngabers` + `sat-set` = ketahuan ngarang).
- Jangan pakai slang sebagai pengganti isi. "Gokil parah sih ini!" tanpa menjelaskan *apa* yang gokil = kalimat kosong.
- Jangan mengeja partikel secara berlebihan (`dong` di setiap kalimat = karikatur).
- Jangan memaksa rima atau pantun dadakan kecuali memang konten komedi.
- Ironi ala internet (`healing`, `sultan`, `bestie`) hanya untuk audiens yang paham konteksnya; ke orang tua atau klien formal = blunder.
- Kata kasar ringan (`anjir`, `bangsat`): registernya sangat terbatas (teman dekat, konten komedi). Default: jangan pakai. Skill ini tidak melarang, tapi menuntut kesadaran penuh kapan ia pantas.

## Contoh kilat

Sebelum (AI-slop):
> Di era digital yang serba cepat ini, penting untuk dicatat bahwa menjaga kesehatan mental bukan hanya penting, tetapi juga krusial bagi produktivitas kita semua.

Sesudah (gaul, natural):
> Hidup lagi kenceng-kencengnya, kepala ikut rame. Sesekali ngerem itu perlu, namanya juga ngerawat diri.

Contoh lengkap per konteks (caption, chat CS, email santai, penjelasan teknis): `examples/sebelum-sesudah.md`.

## Referensi

- `references/anti-slop.md`: katalog pola khas AI dalam Bahasa Indonesia + pindai cepat 30 detik. **Baca ini dulu.**
- `references/konsistensi-gaya.md`: kunci suara, checklist tiap output, anti register-slip. **Baca ini kedua.**
- `references/pola-kalimat.md`: ACUAN UTAMA pola kalimat, jawab dulu, koreksi diri, spesifik, larangan em dash.
- `references/kata-gaul.md`: ringkasan kata gaul kekinian per fungsi + yang sudah basi.
- `references/leksikon-gaul.md`: leksikon besar: ratusan istilah, katalog 80 pola kalimat (P01–P80),
  modul daerah Jakarta/Jawa/Sunda, peta normalisasi, panduan moderasi. Sumber kutipan,
  bukan hafalan, ambil sedikit yang pas.
