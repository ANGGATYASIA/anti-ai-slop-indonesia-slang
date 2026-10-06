# Leksikon Bahasa Gaul Indonesia 2026

> Modul referensi untuk skill `slang-id`. Berisi inventaris kata gaul, pola kalimat
> (P01–P80), modul daerah (Jakarta/Jawa/Sunda), peta normalisasi, dan panduan moderasi.
> Disusun dari riset per 6 Oktober 2026 — bahasa gaul bergerak cepat, perlakukan
> istilah bertanda temporal sebagai snapshot, bukan aturan permanen.
>
> Cara pakai: JANGAN menghafal atau menabur semua kata dari sini. Pilih sedikit
> yang pas (lihat `konsistensi-gaya.md` untuk takaran), dan baca `anti-slop.md`
> dulu sebelum menghasilkan teks.

# Skill Bahasa Gaul Indonesia 2026

## Tujuan

Gunakan skill ini untuk:

1. Memahami slang, bahasa percakapan, singkatan, partikel, campur kode, meme phrase, ejaan ekspresif, dan bahasa daerah yang telah menyebar secara nasional.
2. Menghasilkan tuturan informal yang terdengar alami tanpa memaksakan slang.
3. Mengubah teks gaul menjadi bahasa Indonesia netral/formal tanpa menghilangkan maksud, emosi, negasi, atau intensitas.
4. Menyesuaikan gaya dengan audiens, platform, hubungan sosial, wilayah, generasi, dan tujuan komunikasi.
5. Mendeteksi hinaan, kata kasar, stereotip, pelecehan, serta ujaran yang perlu ditangani secara aman.

Bahasa gaul Indonesia bersifat dinamis, kontekstual, dan bervariasi menurut daerah. Ragam nasional banyak dipengaruhi tuturan Jakarta/Betawi, tetapi juga menyerap bahasa Indonesia baku, Inggris, Jawa, Sunda, Melayu, bahasa Tionghoa, budaya gim, fandom, dan meme internet.[cite:31][cite:47] Karena itu, daftar ini **luas tetapi tidak pernah final**; istilah viral harus diperlakukan sebagai data bertanggal, bukan aturan permanen.

## Dasar Riset

- Penelitian media sosial menemukan enam mekanisme umum: singkatan, akronim, pemendekan, pelesetan, pembalikan, serta kata baru/pergeseran makna.[cite:1][cite:5]
- Kajian morfologi yang lebih rinci juga menemukan pengurangan/penambahan fonem, peminjaman, monoftongisasi, penggantian huruf, reduplikasi, afiksasi, partikel, dan walikan.[cite:7]
- IndoCollex mengelompokkan transformasi percakapan menjadi penghilangan vokal, afiksasi, pemendekan, penghilangan spasi/tanda hubung, perubahan bunyi, akronim, dan pembalikan; datasetnya berlisensi MIT.[cite:79]
- Kamus Alay mendokumentasikan 3.592 bentuk unik hasil anotasi manual dari komentar Instagram dan menyertakan pasangan bentuk formal serta contoh konteks.[cite:73][cite:83]
- Percakapan digital cenderung memakai kalimat sederhana, elipsis, fragmen, campur kode, dan penegasan dengan partikel; konteks bersama menggantikan unsur kalimat yang dihilangkan.[cite:63][cite:68]
- Slang berfungsi untuk menyapa, bercanda, menyindir, menyatakan kagum/tidak suka, dan membangun keakraban; fungsi pragmatis harus dipertahankan saat menafsirkan teks.[cite:1][cite:60]

## Aturan Utama AI

### Prioritas keputusan

1. **Pahami intent sebelum kata.** `gila`, `anjir`, `parah`, `sakit`, atau `pecah` dapat menjadi pujian, keluhan, keterkejutan, atau hinaan.
2. **Baca hubungan sosial.** `lu-gue` cocok untuk teman akrab tertentu, tetapi dapat dianggap terlalu kasar kepada pelanggan baru, orang yang lebih tua, atau situasi resmi.
3. **Baca platform.** TikTok/X boleh lebih padat dan meme-heavy; WhatsApp pelanggan sebaiknya hangat tetapi jelas; artikel SEO dan dokumen transaksi harus netral.
4. **Jangan meniru berlebihan.** Maksimal 1–3 penanda gaul kuat per kalimat. Hindari menumpuk `bestie, literally, slay, no debat, ygy` sekaligus kecuali sedang memparodikan gaya tersebut.
5. **Pertahankan stance.** Saat normalisasi, pertahankan apakah penutur sedang bercanda, ragu, sarkastis, marah, mengajak, atau menolak.
6. **Jangan mengarang kepanjangan.** Banyak akronim memiliki etimologi rakyat yang tidak pasti. Jika asal tidak terverifikasi, tulis `asal populer/tidak pasti`.
7. **Jangan generalisasi daerah.** Kata daerah yang menjadi populer nasional tetap dapat mempunyai makna, tingkat kesopanan, atau pelafalan berbeda di daerah asal.
8. **Utamakan keselamatan.** Kata kasar boleh dipahami atau dikutip seperlunya, tetapi jangan diarahkan untuk menyerang individu/kelompok.

### Mode keluaran

| Mode | Karakter | Contoh |
|---|---|---|
| `formal` | Baku, eksplisit, tanpa slang | “Apakah Anda bersedia menjadwalkan kunjungan?” |
| `netral` | Percakapan sopan nasional | “Kak, mau jadwalkan survei kapan?” |
| `casual` | Akrab, slang ringan | “Kak, kalau cocok kita gas survei, ya.” |
| `gen_z` | Ringkas, ekspresif, meme secukupnya | “Layout-nya clean banget, no debat.” |
| `jaksel` | Indonesia sebagai matriks + sisipan Inggris | “Honestly, aksesnya practical banget buat daily commute.” |
| `regional_light` | 1–2 penanda daerah yang aman | “Mangga dicek dulu, Kak.” |
| `meme` | Ironi/absurditas disengaja | “Niatnya cuma lihat unit, pulangnya malah booking. Plot twist.” |

### Parameter yang disarankan

```yaml
slang_style:
  mode: casual
  intensity: 2        # 0 formal; 1 ringan; 2 alami; 3 sangat gaul; 4 parodi/meme
  audience: prospect-property
  relationship: new   # new, familiar, close-friend, community
  platform: whatsapp  # whatsapp, instagram, tiktok, x, youtube, marketplace, blog
  region: national    # national, jakarta, west-java, central-java, east-java, etc.
  age_band: mixed     # gen-alpha, gen-z, millennial, mixed
  code_mix: low       # none, low, medium, high
  profanity: none     # none, masked, contextual
  emoji: low          # none, low, medium
```

## Pembentukan Kata

| Pola | Rumus operasional | Contoh | Catatan AI |
|---|---|---|---|
| Abreviasi | Sisakan huruf penting | `jangan → jgn`, `dengan → dgn` | Cocok untuk chat; jangan untuk dokumen resmi. |
| Akronim | Gabungkan suku awal/unsur | `malas gerak → mager` | Makna dapat bergeser dari kepanjangan awal. |
| Kliping | Potong sebagian leksem | `halusinasi → halu`, `juragan → gan` | Bentuk pendek sering menjadi lema mandiri. |
| Penghilangan awal | Buang fonem awal | `sudah → udah`, `memang → emang` | Sangat umum dalam percakapan. |
| Penghilangan tengah | Hilangkan vokal/fonem | `sebentar → bentar`, `bagaimana → gimana` | Variannya dapat bertumpuk: `gimana → gmn`. |
| Monoftongisasi | `au → o`, `ai → e` | `kalau → kalo`, `pakai → pake` | Khas percakapan luas. |
| Afiks informal | `meN- → nge-`; `-kan/-i → -in` | `mengobrol → ngobrol`, `rapikan → rapiin` | Pola produktif berpengaruh Betawi.[cite:31] |
| Nasalisasi | Bentuk kerja dengan `ng-/ny-/n-` | `chat → ngechat`, `sapu → nyapu` | Serapan Inggris dapat menerima afiks Indonesia. |
| Pasif informal | `di- + dasar gaul` | `di-chat`, `di-ghosting`, `di-prank` | Gunakan tanda hubung bila keterbacaan perlu. |
| Walikan | Balik huruf/suku kata | `yuk → kuy`, `bisa → sabi`, `bang → ngab` | Tidak semua kata boleh dibalik sembarang. |
| Pelesetan bunyi | Ubah fonem untuk humor | `serius → ciyus`, `santai → santuy` | Sering terasa retro jika tren lewat. |
| Elongasi | Ulang huruf | `bagusss`, `gemesss`, `noooo` | Menandai intensitas/emosi, bukan lema baru. |
| Reduplikasi digital | Angka atau ulang | `teman2`, `pelan-pelan` | Normalisasi harus mengembalikan pengulangan. |
| Campur kode | Matriks Indonesia + unsur asing | `gue lagi overthinking` | Bedakan sisipan kata, frasa, dan klausa.[cite:46] |
| Pergeseran makna | Lema lama, makna baru | `receh`, `garing`, `gas` | Jangan terjemahkan secara literal. |
| Template meme | Slot produktif | `[nama] core`, `POV: ...`, `adalah pokoknya` | Bersifat sangat temporal.[cite:18] |

## Tata Bahasa Gaul

### Pronomina

| Persona | Santai aman | Akrab Jakarta | Regional/komunitas | Risiko |
|---|---|---|---|---|
| Saya | aku, saya | gue, gua, gw | aing, inyong, awak, beta, kita | `aing` dapat terdengar kasar di luar kedekatan Sunda. |
| Kamu | kamu, kak | lo, lu, elu | maneh, koe, sampean, ente | `maneh/koe` sensitif pada tingkat tutur. |
| Dia | dia, doi | die | de'e | `doi` sering bernuansa pasangan/orang incaran. |
| Kalian | kalian, teman-teman | lu pada, kalian | rek, lur, gaes | Pilih sapaan sesuai komunitas. |

### Afiks produktif

- `nge- + nomina/verba`: `ngechat`, `ngegas`, `ngeflex`, `ngonten`, `nge-vlog`.
- `-in`: `bawain`, `jelasin`, `masukin`, `follow-in`, `spill-in`.
- `di- + bentuk informal`: `dibales`, `di-read`, `dicuekin`, `dighosting`.
- `ke- -an`: `kebanyakan`, `kesiangan`, `kemahalan`; bentuk kreatif seperti `ke-salty-an` dipahami tetapi jangan dipaksakan.
- `se-`: `se-worth it itu`, `se-random itu`; produktif dalam gaya hiperbolik digital.

### Partikel pragmatis

| Partikel | Fungsi dominan | Kontras contoh |
|---|---|---|
| `dong` | Permintaan/persuasi/penegasan ramah | “Kirim lokasinya dong.” |
| `deh` | Pelunakan, keputusan, menyerah | “Besok aja deh.” |
| `sih` | Fokus, evaluasi, protes ringan | “Bagus sih, cuma jauh.” |
| `kok` | Menyangkal asumsi/keheranan | “Dekat kok dari tol.” |
| `kan` | Mencari kesepakatan/mengingatkan | “Kemarin sudah dikirim, kan?” |
| `nih` | Menunjuk info dekat/menawarkan | “Nih, pricelist-nya.” |
| `tuh` | Menunjuk/menegaskan hal agak jauh | “Yang pojok tuh paling luas.” |
| `lah` | Penegasan/kejengkelan ringan | “Ya iyalah.” |
| `mah` | Topik/kontras, pengaruh Sunda | “Kalau akses mah aman.” |
| `atuh` | Rayuan/protes ringan Sunda | “Jangan gitu atuh.” |
| `ya` | Pelunak/konfirmasi | “Dicek dulu, ya.” |
| `ya kan / ygy` | Meminta validasi | “Yang penting nyaman, ya kan?” |
| `weh/woy/woi` | Memanggil/terkejut | Hindari kepada pelanggan baru. |

Partikel fatis sering tidak menambah isi proposisional, tetapi membuka interaksi, mempertahankan kedekatan, memperhalus, atau menegaskan pesan.[cite:64]

## Pola Kalimat

Pola digital lazim memakai kalimat tunggal, elipsis, urutan inversi, sedikit konjungsi, dan konteks implisit.[cite:14][cite:15] Jangan “memperbaiki” fragmen secara otomatis jika fragmen itu sengaja dipakai untuk punchline, urgency, atau respons singkat.

### Pola inti

| ID | Rumus | Fungsi | Contoh kontekstual | Versi netral |
|---|---|---|---|---|
| P01 | `[S] lagi [V/Adj]` | Keadaan berlangsung | “Gue lagi mager keluar.” | “Saya sedang malas keluar.” |
| P02 | `lagi [V], nih` | Elipsis subjek | “Lagi cek lokasi, nih.” | “Saya sedang mengecek lokasi.” |
| P03 | `[Adj] banget` | Intensifikasi | “View-nya cakep banget.” | “Pemandangannya sangat bagus.” |
| P04 | `[Adj] parah` | Intensitas positif/negatif | “Murah parah.” | “Sangat murah.” |
| P05 | `auto [V/Adj/N]` | Akibat seketika/hiperbola | “Dekat stasiun, auto laku.” | “Kedekatan dengan stasiun meningkatkan daya jual.” |
| P06 | `langsung [V], no debat` | Ajakan/penegasan | “Unit pojok langsung booking, no debat.” | “Unit pojok sangat layak segera dipesan.” |
| P07 | `gas [N/V]` | Ajakan lanjut | “Kalau cocok, gas survei.” | “Jika cocok, mari jadwalkan survei.” |
| P08 | `kuy/skuy [V]` | Ajakan akrab | “Kuy cek show unit.” | “Mari melihat unit contoh.” |
| P09 | `[V] dulu gak sih?` | Saran + validasi | “Ngopi dulu gak sih?” | “Bagaimana jika kita minum kopi dahulu?” |
| P10 | `[X], gak sih?` | Meminta persetujuan | “Lokasinya strategis, gak sih?” | “Bukankah lokasinya strategis?” |
| P11 | `kok bisa [X]?` | Heran | “Kok bisa seluas ini?” | “Bagaimana bisa seluas ini?” |
| P12 | `masa [X]?` | Ragu/tidak percaya | “Masa DP-nya segitu?” | “Benarkah uang mukanya sebesar itu?” |
| P13 | `bukannya [X], malah [Y]` | Kontras ironis | “Bukannya nabung, malah checkout.” | “Alih-alih menabung, ia justru berbelanja.” |
| P14 | `niatnya [X], malah [Y]` | Plot twist | “Niatnya survei, malah booking.” | “Awalnya hanya survei, akhirnya memesan.” |
| P15 | `udah [X], [Y] lagi` | Akumulasi | “Udah luas, dekat tol lagi.” | “Selain luas, lokasinya juga dekat tol.” |
| P16 | `[X] doang` | Pembatasan | “Lihat-lihat doang.” | “Hanya melihat-lihat.” |
| P17 | `[X] aja dulu` | Tahap sementara | “Simulasi aja dulu.” | “Mari mulai dengan simulasi.” |
| P18 | `tinggal [V]` | Kemudahan langkah tersisa | “Tinggal pilih unit.” | “Anda hanya perlu memilih unit.” |
| P19 | `[X] mah [Y]` | Topik-kontras | “Kalau akses mah aman.” | “Untuk akses, kondisinya baik.” |
| P20 | `[X] sih, cuma [Y]` | Pujian + keberatan | “Bagus sih, cuma agak jauh.” | “Bagus, tetapi agak jauh.” |
| P21 | `[X] kok` | Menyangkal kekhawatiran | “Prosesnya gampang kok.” | “Prosesnya mudah.” |
| P22 | `[V]-in dong` | Permintaan akrab | “Spill harganya dong.” | “Mohon informasikan harganya.” |
| P23 | `jangan [V] mulu` | Teguran | “Jangan rebahan mulu.” | “Jangan terus berbaring.” |
| P24 | `[V] mulu` | Keluhan repetisi | “Meeting mulu.” | “Terus-menerus rapat.” |
| P25 | `gak [V-V]` | Tidak sama sekali | “Gak habis-habis.” | “Tidak kunjung selesai.” |
| P26 | `mana [X] lagi` | Tambahan keluhan | “Macet, mana hujan lagi.” | “Selain macet, hujan juga turun.” |
| P27 | `[X]? siapa takut` | Tantangan percaya diri | “KPR? Siapa takut.” | “KPR bukan hambatan.” |
| P28 | `[X] level [Y]` | Skala humor | “Macet level pasrah.” | “Kemacetannya sangat parah.” |
| P29 | `[X] coded` | Memiliki aura/ciri | “Rumah ini family-coded.” | “Rumah ini sangat cocok untuk keluarga.” |
| P30 | `[nama/tempat] core` | Kompilasi ciri khas | “Pasarkemis core: pagi-pagi sudah ramai.” | “Ciri khas Pasarkemis.” |
| P31 | `POV: [situasi]` | Sudut pandang konten | “POV: nemu rumah dekat kantor.” | “Bayangkan menemukan rumah dekat kantor.” |
| P32 | `the real [X]` | Penegasan identitas | “The real hidden gem.” | “Benar-benar lokasi unggulan tersembunyi.” |
| P33 | `[X] be like: [reaksi]` | Meme representasi | “Dompet be like: jangan.” | “Seolah-olah dompet menolak.” |
| P34 | `bukan [X] biasa` | Hiperbola promosi | “Bukan promo biasa.” | “Promonya sangat menarik.” |
| P35 | `definisi [X]` | Pelabelan hiperbolik | “Definisi rumah nyaman.” | “Contoh rumah yang nyaman.” |
| P36 | `[X] adalah koentji` | Penegasan retro/meme | “Lokasi adalah koentji.” | “Lokasi adalah faktor utama.” |
| P37 | `valid [X]` | Persetujuan | “Valid, ini worth it.” | “Benar, ini sepadan.” |
| P38 | `fix [X]` | Kepastian subjektif | “Fix jadi favorit.” | “Kemungkinan besar akan menjadi favorit.” |
| P39 | `literally [X]` | Penekanan campur kode | “Literally lima menit ke tol.” | “Benar-benar hanya lima menit ke tol.” |
| P40 | `honestly, [klausa]` | Pendapat jujur | “Honestly, layout-nya enak.” | “Sejujurnya, tata ruangnya nyaman.” |
| P41 | `menurut gue, [klausa]` | Opini informal | “Menurut gue, tipe ini paling worth it.” | “Menurut saya, tipe ini paling sepadan.” |
| P42 | `lowkey [X]` | Pengakuan samar | “Lowkey pengin booking.” | “Diam-diam saya ingin memesan.” |
| P43 | `highkey [X]` | Pengakuan terang | “Highkey suka fasadnya.” | “Saya sangat menyukai fasadnya.” |
| P44 | `not gonna lie/ngl, [X]` | Kejujuran santai | “Ngl, aksesnya enak.” | “Sejujurnya, aksesnya baik.” |
| P45 | `it's giving [X]` | Vibe/asosiasi | “It’s giving villa vibes.” | “Suasananya menyerupai vila.” |
| P46 | `[X] vibes` | Nuansa | “Resort vibes banget.” | “Nuansanya seperti resor.” |
| P47 | `no [N], no [N]` | Slogan | “No macet, no drama.” | “Minim kemacetan dan kerepotan.” |
| P48 | `kalau [X], kenapa enggak?` | Persuasi | “Kalau cicilannya ringan, kenapa enggak?” | “Jika cicilannya ringan, layak dipertimbangkan.” |
| P49 | `emang boleh [X]?` | Heran memuji | “Emang boleh semurah ini?” | “Harganya sangat terjangkau.” |
| P50 | `se-[Adj] itu` | Intensifikasi | “Selega itu ruang keluarganya.” | “Ruang keluarganya sangat lega.” |
| P51 | `gak ada obat` | Luar biasa | “View-nya gak ada obat.” | “Pemandangannya luar biasa.” |
| P52 | `di luar nalar/nurul` | Sangat ekstrem/absurd | “Diskonnya di luar nalar.” | “Diskonnya luar biasa besar.” |
| P53 | `ngotak dikit` | Protes hiperbolik | “Cakepnya ngotak dikit.” | “Desainnya sangat indah.” |
| P54 | `salfok sama [X]` | Fokus teralih | “Salfok sama tamannya.” | “Perhatian saya tertuju pada tamannya.” |
| P55 | `spill [X]` | Minta/bagi info | “Spill pricelist, Kak.” | “Mohon kirim daftar harga.” |
| P56 | `drop [X]` | Kirim info | “Drop lokasinya di chat.” | “Kirim lokasinya melalui pesan.” |
| P57 | `izin [V]` | Tindakan sopan-ironis | “Izin meracuni timeline.” | “Izinkan saya membagikan rekomendasi.” |
| P58 | `meresahkan` | Menarik secara hiperbolik | “Promonya meresahkan.” | “Promonya sangat menarik.” |
| P59 | `racun banget` | Godaan beli | “Kontennya racun banget.” | “Kontennya sangat menggoda untuk membeli.” |
| P60 | `keracunan [X]` | Terpengaruh tren | “Keracunan dekor minimalis.” | “Terpengaruh tren dekorasi minimalis.” |
| P61 | `plot twist: [X]` | Perubahan tak terduga | “Plot twist: unitnya masih ada.” | “Tak disangka, unitnya masih tersedia.” |
| P62 | `ending-nya [X]` | Hasil cerita | “Ending-nya booking juga.” | “Akhirnya ia tetap memesan.” |
| P63 | `terpantau [X]` | Observasi bercanda | “Terpantau mulai kepincut.” | “Tampaknya mulai tertarik.” |
| P64 | `aman terkendali` | Meyakinkan | “Dokumen aman terkendali.” | “Dokumennya lengkap dan tertangani.” |
| P65 | `sat set [V]` | Cepat-efisien | “Sat set urus KPR.” | “Urus KPR dengan cepat.” |
| P66 | `gercep sebelum [X]` | Urgensi | “Gercep sebelum sold out.” | “Segera bertindak sebelum habis.” |
| P67 | `jangan sampai [X]` | Peringatan | “Jangan sampai kehabisan.” | Sama; gaya sudah netral. |
| P68 | `udah paling bener [X]` | Rekomendasi kuat | “Udah paling bener survei dulu.” | “Sebaiknya lakukan survei terlebih dahulu.” |
| P69 | `[X] supremacy` | Favorit fanatik/meme | “Unit hook supremacy.” | “Unit hook adalah pilihan unggulan.” |
| P70 | `[X] era` | Fase identitas | “Masuk home-owner era.” | “Memasuki fase sebagai pemilik rumah.” |
| P71 | `[X] arc` | Babak perkembangan | “Mulai nabung arc.” | “Memulai tahap menabung.” |
| P72 | `manifesting [X]` | Harapan | “Manifesting rumah tahun ini.” | “Berharap memiliki rumah tahun ini.” |
| P73 | `delulu is the solulu` | Berkhayal sebagai coping | “Manifest dulu; delulu is the solulu.” | “Berharaplah, tetapi tetap realistis.” |
| P74 | `we listen, we don't judge` | Format pengakuan | “We listen, we don’t judge: aku suka rumah pojok.” | “Mari dengarkan tanpa menghakimi.” |
| P75 | `gak bisa Yura` | Tidak sanggup emosional | “Lihat cicilannya, gak bisa Yura.” | “Saya tidak sanggup melihat cicilannya.” |
| P76 | `adalah pokoknya` | Tutup penjelasan absurd | “Bagusnya... adalah pokoknya.” | “Intinya, sangat bagus.” |
| P77 | `[X] dulu` | Meme pengalihan/ajakan | “Ngopi dulu.” | “Mari minum kopi dahulu.” |
| P78 | `orang [English word]` | Label meme 2026 | “Orang have memang beda.” | “Orang berada memang berbeda.” |
| P79 | `I'm cooked` / `udah cooked` | Dalam masalah/kelelahan | “Deadline besok, gue cooked.” | “Saya berada dalam masalah.” |
| P80 | `touch grass` | Sindiran terlalu online | “Debat mulu, touch grass sana.” | “Beristirahatlah dari internet.” |

Template `core`, `gak bisa Yura`, dan `adalah pokoknya` tercatat sebagai tren 2025–2026; istilah seperti `orang have`, `brainrot`, `cooked`, dan `touch grass` muncul dalam daftar tren 2026 dan harus dipakai dengan label temporal, bukan dianggap universal.[cite:18][cite:23]

## Gaya Bahasa

### Gaya santai nasional

- Dasar: `aku/kamu` atau `saya/kak`, `gak/nggak`, `udah`, `aja`, `banget`, `kok`, `ya`.
- Ritme: 5–14 kata per kalimat; satu gagasan utama; boleh elipsis bila konteks jelas.
- Cocok: layanan pelanggan ramah, caption umum, komunitas lintas usia.
- Hindari: slang viral beruntun, hinaan, atau sapaan `lu` tanpa sinyal keakraban.

**Contoh:** “Kak, unit yang ini masih ada kok. Mau aku kirim simulasi cicilannya?”

### Gaya Gen Z internet

- Dasar: intensifier (`auto`, `parah`, `se-X itu`), stance (`lowkey`, `valid`, `fix`), meme template (`POV`, `core`, `era`).
- Ritme: fragmen pendek + punchline; kapital untuk emosi; emoji secukupnya.
- Cocok: TikTok, Reels, X, konten hiburan.
- Hindari: memasukkan semua tren sekaligus atau menggunakan tren lama sebagai gaya “terbaru”.

**Contoh:** “POV: niatnya cuma survei. Plot twist: pulang bawa nomor booking.”

### Gaya Jaksel

Bahasa Jaksel biasanya mempertahankan bahasa Indonesia sebagai bahasa matriks lalu menyisipkan unsur Inggris pada tingkat kata, frasa, atau klausa. Fungsinya dapat berupa efisiensi, identitas urban, modernitas, penekanan, atau nuansa makna.[cite:46][cite:50]

- Pola alami: `Honestly + klausa ID`; `gue lagi + V-ing/Adj EN`; `ini tuh + English phrase + banget`.
- Afiks silang: `di-follow up`, `nge-check`, `di-approve`, `meeting-an`.
- Hindari susunan seperti kamus acak: “Actually gue literally honestly...”

**Contoh:** “Honestly, layout tipe ini paling practical buat young family.”

### Gaya sarkasme

Sarkasme sering bertumpu pada ketidakselarasan antara makna literal dan konteks, pujian semu, tanda baca, emoji, atau fakta sebelumnya. Jangan menyimpulkan sarkasme hanya dari satu kata.

- Pujian literal + kegagalan: “Keren, telat dua jam.”
- Persetujuan semu: “Iya, paling bener emang kamu.”
- Hiperbola: “Cepat banget, cuma nunggu tiga hari.”
- Pertanyaan retoris: “Emang susah ya baca chat?”

### Gaya promosi properti

- Gunakan slang untuk hook dan kedekatan, tetapi angka, legalitas, jarak, harga, tenor, dan syarat harus eksplisit.
- Jangan mengubah klaim faktual menjadi hiperbola menyesatkan: `5 menit ke tol` harus berdasarkan rute/kondisi yang dijelaskan.
- CTA casual aman: `mau aku kirim detailnya?`, `boleh kita jadwalkan survei`, `kalau cocok, lanjut simulasi`.
- Kata `gas`, `gercep`, `sold out`, atau `cuan` jangan dipakai untuk memberi tekanan manipulatif.

**Contoh:** “Fasadnya clean banget, tapi yang lebih penting: SHM, dua kamar, dan akses sekitar 10 menit ke gerbang tol dalam kondisi normal.”

## Modul Daerah

Bahasa gaul dalam dokumen ini dipisahkan menjadi tiga modul operasional: **Jakarta/nasional-internet**, **Jawa**, dan **Sunda**. Pemisahan ini bukan batas mutlak: ragam Jakarta/Betawi telah menyebar nasional; bahasa Jawa dan Sunda ikut masuk ke slang nasional; pengguna digital juga sering melakukan campur kode.[cite:31][cite:47]

### Router daerah

```yaml
region_router:
  jakarta:
    pronouns: [gue, gua, gw, lo, lu, elu]
    negation: [gak, nggak, kagak]
    particles: [dong, deh, sih, kok, kan, nih, tuh]
    verb_patterns: [nge-, -in, di- + stem informal]
    default_register: urban-casual
  jawa:
    pronouns: [aku, kowe, koe, sampeyan, panjenengan]
    negation: [ora, ra, mboten]
    particles: [lho, toh, kok, rek, je, yo]
    verb_patterns: [ngoko base, Indonesian-Javanese code-mix]
    default_register: ngoko-peer
  sunda:
    pronouns: [abdi, urang, aing, anjeun, maneh]
    negation: [teu, henteu]
    particles: [mah, teh, atuh, euy, ge, da]
    verb_patterns: [Sundanese base, Indonesian-Sundanese code-mix, -keun]
    default_register: loma-peer
```

**Aturan router:** Jangan memilih ragam hanya dari lokasi pengguna. Pilih berdasarkan bahasa input, pilihan eksplisit pengguna, hubungan sosial, dan tingkat tutur. Jika ragu, gunakan bahasa Indonesia santai nasional dengan sapaan `Kak`.

### Jakarta dan nasional

Modul Jakarta mencakup ragam urban berpengaruh Betawi, slang nasional, bahasa internet, gim, hubungan, pekerjaan, pemasaran, dan campur kode Jaksel. Bentuk `gue/gw`, `lu/lo`, `nggak`, `aja`, `udah`, `dong`, `kan`, `sih`, dan `banget` merupakan penanda ragam lisan Jakarta yang tersebar luas.[cite:98]

#### Tata bahasa Jakarta

- Pronomina: `gue/gua/gw` ↔ `lo/lu/elu`; versi lebih aman: `aku/kamu` atau `saya/Kak`.
- Verba aktif: `nge- + dasar` → `ngecek`, `ngechat`, `ngegas`; verba transitif sering memakai `-in` → `jelasin`, `kirimin`, `rapiin`.
- Pasif: `di- + dasar informal/asing` → `dibales`, `di-read`, `di-follow up`.
- Negasi: `gak/nggak`; `kagak` memberi warna Betawi/Jakarta lebih kuat.
- Partikel: `dong` meminta/membujuk; `deh` melunakkan/menutup; `sih` memberi fokus/evaluasi; `kok` menyangkal asumsi; `kan` mencari kesepakatan; `nih/tuh` menunjuk.

#### Pola Jakarta

| Pola | Fungsi | Contoh |
|---|---|---|
| `gue lagi [V]` | aktivitas berlangsung | `Gue lagi ngecek unitnya.` |
| `lo udah [V] belum?` | pertanyaan penyelesaian | `Lo udah lihat denahnya belum?` |
| `[V]-in gue [O] dong` | permintaan akrab | `Kirimin gue pricelist dong.` |
| `gak [Adj]-[Adj] amat` | menyangkal intensitas | `Gak jauh-jauh amat, kok.` |
| `[X] sih, cuma [Y]` | penilaian + keberatan | `Bagus sih, cuma agak jauh.` |
| `[X] kok` | meyakinkan | `Prosesnya gampang kok.` |
| `kagak ada [N]` | negasi Betawi kuat | `Kagak ada biaya tambahan.` |
| `emang [X]?` | tanya/ragu/retoris | `Emang masih ada unitnya?` |
| `lah, kok [X]?` | keheranan | `Lah, kok harganya berubah?` |
| `ya kali [X]` | menolak kemungkinan | `Ya kali beli tanpa survei.` |
| `masa [X] sih?` | tidak percaya | `Masa seluas ini sih?` |
| `udah [X], [Y] lagi` | akumulasi | `Udah luas, dekat tol lagi.` |

#### Leksikon Jakarta/nasional
| Istilah | Makna operasional | Label | Contoh alami |
|---|---|---|---|
| aja | saja | `R1,SAFE` | Santai aja, masih ada waktu. |
| ajah/aj | varian ketik dari aja | `R2,NET` | Kirim fotonya aj. |
| aku | pronomina orang pertama informal | `R1,SAFE` | Aku kirim detailnya, ya. |
| gue/gua/gw/gwuh | saya/aku gaya Jakarta dan variasi ejaan | `R2,JKT` | Gue sudah cek lokasinya. |
| lo/lu/loe/elu | kamu gaya Jakarta | `R2,JKT,CAUTION` | Lu jadi datang besok? |
| doi | dia; sering orang yang disukai/pasangan | `R2` | Doi sudah kasih kabar. |
| kak/kaka/kakaq | sapaan sopan-akrab, tidak selalu saudara | `R1,SAFE` | Kak, mau tanya tipe unitnya? |
| bang/abang | sapaan laki-laki; kakak laki-laki | `R1` | Bang, share lokasinya, dong. |
| ngab | bang yang dibalik; sapaan akrab laki-laki | `R2,NET` | Santai dulu, ngab. |
| bro/bray/breh | sapaan teman laki-laki atau netral komunitas | `R2` | Aman, bro. |
| sis/sista | sapaan teman perempuan/pelanggan | `R2` | Makasih, Sis. |
| bestie/besti/bestay | sahabat; sapaan akrab kadang ironis | `R2,NET` | Bestie, spill link-nya. |
| gaes/guys/gais/gays | teman-teman; pembuka ke audiens | `R1,NET` | Gaes, cek sampai akhir. |
| gan/agan | juragan; sapaan forum/marketplace | `R2,NET` | Ready, Gan. |
| bos/bosku/bosque | sapaan bercanda penuh hormat | `R2` | Siap, Bosku. |
| cuy/coy | sapaan teman sangat santai | `R2` | Gokil, cuy. |
| bund/bunda | sapaan perempuan/ibu di komunitas | `R1` | Bund, boleh share resepnya? |
| min/mimin/admin | sapaan kepada pengelola akun | `R1,NET` | Min, link-nya error. |
| uhuuy/cie/ciye | godaan saat ada kabar romantis/menyenangkan | `R2` | Cie, yang baru jadian. |
| nggak/gak/ga/kagak/kgk | tidak | `R1/R2` | Aku gak bisa datang. |
| enggak/engga | tidak; lebih lunak | `R1` | Enggak apa-apa. |
| gw gak/guwe ga | kombinasi persona + negasi sangat santai | `R2` | Gue gak ikut dulu. |
| gpp/gapapa/gakpapa | tidak apa-apa | `R1,NET` | Telat sedikit gpp. |
| udah/uda/dah | sudah | `R1` | Udah dikirim, ya. |
| belum/belom/blm | belum | `R1,NET` | Aku belum cek. |
| lagi/gi/lg | sedang; kembali | `R1,NET` | Lagi di jalan. |
| bakal/bakal | akan | `R1` | Besok bakal ramai. |
| ntar/entar/nanti | nanti | `R1` | Ntar aku kabari. |
| bentar/bntar | sebentar | `R1` | Tunggu bentar. |
| kemaren/kemarin/kmrn | kemarin | `R1,NET` | Kemarin sudah survei. |
| sekarang/skrg | sekarang | `R1,NET` | Sekarang masih tersedia. |
| gimana/gmn | bagaimana | `R1` | Gimana menurut kamu? |
| begimana/bijimane | bagaimana, bernuansa Betawi | `R2,JKT` | Bijimane enaknya? |
| kenapa/knp/ngapa | mengapa | `R1/R2` | Ngapa diam aja? |
| apaan/paansi | apa; apa sih | `R2` | Apaan, sih? |
| siapa/sapa/sp | siapa | `R1,NET` | Ini punya siapa? |
| dimana/dmn | di mana | `R1,NET` | Lokasinya dmn? |
| berapa/brp | berapa | `R1,NET` | Harganya brp? |
| kapan/kpn | kapan | `R1,NET` | Kapan bisa survei? |
| kalo/kalau/kl | jika | `R1` | Kalo cocok, lanjut. |
| karena/karna/krn | karena | `R1,NET` | Batal karena hujan. |
| tapi/tp | tetapi | `R1,NET` | Bagus, tapi jauh. |
| sama/ama | dengan; dan; setara | `R1` | Pergi sama teman. |
| buat/bwt | untuk; membuat | `R1,NET` | Ini buat kamu. |
| pake/pakai/pke | menggunakan | `R1` | Bayar pake transfer. |
| kayak/kek | seperti | `R1/R2` | Kayak pernah lihat. |
| cuma/cuman | hanya | `R1` | Cuma tanya dulu. |
| doang/doank | saja; hanya | `R2` | Lihat-lihat doang. |
| banget/bgt/beud/bat | sangat; sekali | `R1/R2` | Bagus banget. |
| abis/abiz | setelah; habis | `R1` | Abis meeting, aku kabari. |
| biar/biarin | supaya; membiarkan | `R1` | Biar aku cek dulu. |
| bilang/ngomong | berkata/berbicara | `R1` | Dia bilang besok. |
| bikin | membuat | `R1` | Bikin penasaran. |
| kasih/ngasih | memberi | `R1` | Kasih tahu, ya. |
| lihat/ngeliat/liat | melihat | `R1/R2` | Mau lihat unit? |
| dengar/denger | mendengar | `R1` | Aku baru denger. |
| ketemu/meet up | bertemu | `R1/JAKSEL` | Kita ketemu jam dua. |
| pergi/cabut | meninggalkan tempat | `R2` | Gue cabut dulu. |
| datang/merapat | datang dan bergabung | `R2` | Yang dekat, merapat. |
| nongkrong/nongki | berkumpul santai | `R2` | Nongki nanti malam. |
| ngobrol | berbicara santai | `R1` | Kita ngobrol dulu. |
| curhat | menceritakan masalah/perasaan | `R1` | Dia lagi curhat. |
| curcol | curhat colongan; tiba-tiba curhat | `R2` | Kok jadi curcol, ya? |
| nyimak | menyimak; mengikuti percakapan | `R1,NET` | Izin nyimak. |
| nimbrung | ikut masuk percakapan | `R1` | Boleh nimbrung? |
| kopdar | kopi darat; bertemu luring | `R2,NET` | Komunitas mau kopdar. |
| japri | jalur/jaringan pribadi; pesan privat | `R1,NET` | Detailnya japri aja. |
| wapri | WhatsApp pribadi | `R2,NET` | Kirim ke wapri, ya. |
| PM/PC/DM | pesan privat/direct message | `R1,NET` | Harga via DM. |
| VC/vidcall | panggilan video | `R1,NET` | Nanti kita VC. |
| otw | sedang menuju lokasi; kadang baru bersiap | `R1,NET` | Aku OTW. |
| otw palsu | mengaku berangkat padahal belum | `R2,NET` | Jangan OTW palsu. |
| share | membagikan | `R1,JAKSEL` | Share pin lokasinya. |
| spill | membocorkan/membagikan informasi | `R2,NET` | Spill harganya, dong. |
| drop | mengirim/menaruh informasi | `R2,JAKSEL` | Drop link di grup. |
| update | memperbarui/mengabari perkembangan | `R1` | Nanti aku update. |
| follow up/folup | menindaklanjuti | `R1,JAKSEL` | Besok aku follow up. |
| FYI | untuk informasi | `R1,NET` | FYI, stok tinggal dua. |
| BTW | ngomong-ngomong | `R1,NET` | BTW, besok libur. |
| CMIIW | koreksi jika saya salah | `R1,NET` | CMIIW, akadnya Jumat. |
| IMO/IMHO | menurut pendapat saya | `R2,NET` | IMO, warna ini lebih cocok. |
| OOT | di luar topik | `R2,NET` | Maaf OOT, mau tanya. |
| TMI | terlalu banyak informasi pribadi | `R2,NET` | Itu TMI, sih. |
| TL;DR | ringkasan untuk teks panjang | `R2,NET` | TL;DR: promonya diperpanjang. |
| ASAP | secepat mungkin | `R1,NET` | Tolong kirim ASAP. |
| AFK | meninggalkan perangkat/gim sementara | `R2,GAME` | AFK lima menit. |
| BRB | segera kembali | `R2,NET` | BRB, angkat telepon. |
| LOL | tertawa keras; penanda humor | `R2,NET` | Gue salah kirim, LOL. |
| LMAO | tertawa sangat keras | `R2,NET,CAUTION` | LMAO, ending-nya absurd. |
| IDK | saya tidak tahu | `R2,NET` | IDK, tanya admin. |
| IKR | benar, kan; saya juga merasa begitu | `R2,NET` | IKR, bagus banget. |
| TBH | sejujurnya | `R2,NET` | TBH, gue kurang suka. |
| NGL | jujur saja | `R2,NET` | NGL, ini worth it. |
| OOTD | pakaian hari ini | `R1,NET` | OOTD buat survei lokasi. |
| FYP | halaman rekomendasi TikTok; masuk rekomendasi | `R1,NET` | Videonya tembus FYP. |
| FOMO | takut ketinggalan tren/kesempatan | `R1,NET` | Jangan beli cuma karena FOMO. |
| JOMO | senang tidak mengikuti keramaian | `R2,NET` | Weekend di rumah, JOMO. |
| YOLO | hidup hanya sekali; alasan spontan | `R2,NET` | YOLO, tapi tetap hitung budget. |
| POV | sudut pandang; format skenario | `R1,NET` | POV: pertama kali punya rumah. |
| IRL | di dunia nyata/luring | `R2,NET` | Kenalan online, ketemu IRL. |
| NSFW | tidak aman dibuka di tempat kerja | `R2,NET,CAUTION` | Kontennya NSFW. |
| SFW | aman dilihat umum/kerja | `R2,NET` | Versi ini SFW. |
| OOTN | pakaian malam ini | `R2,NET` | OOTN kondangan. |
| PAP | kirim foto | `R2,NET` | PAP suasananya, dong. |
| VN | pesan suara | `R1,NET` | Jelasin lewat VN aja. |
| VC | panggilan video | `R1,NET` | VC sekarang bisa? |
| WA | WhatsApp | `R1` | Aku kirim lewat WA. |
| IG | Instagram | `R1` | Cek highlight IG. |
| X/Twitter | platform X; Twitter tetap lazim sebagai nama sosial | `R1` | Lagi ramai di X. |
| menfess | pesan anonim yang dikirim lewat akun komunitas | `R2,NET` | Kirim lewat menfess. |
| base | akun komunitas/topik di X | `R2,NET` | Tanya di base properti. |
| thread/utas | rangkaian posting | `R1,NET` | Baca thread lengkapnya. |
| mutual/moots | akun yang saling mengikuti | `R2,NET` | Hai, moots baru. |
| mutualan | saling mengikuti akun | `R2,NET` | Mau mutualan? |
| unfollow | berhenti mengikuti | `R1,NET` | Akun itu gue unfollow. |
| soft block | hapus pengikut dengan blokir lalu buka blokir | `R2,NET` | Dia kena soft block. |
| block/blok | mencegah akun berinteraksi | `R1` | Kalau mengganggu, blok aja. |
| stalk/stalking | mengamati akun diam-diam/berulang | `R2,NET` | Jangan stalking mantan. |
| kepo | sangat ingin tahu | `R1` | Kepo banget, deh. |
| salken | salam kenal | `R1,NET` | Salken dari Tangerang. |
| salfok | salah fokus; perhatian tertuju hal lain | `R1,NET` | Salfok sama kucingnya. |
| salting | salah tingkah | `R2` | Dia langsung salting. |
| saltum | salah kostum | `R1` | Aku saltum ke acara formal. |
| typo | salah ketik | `R1` | Maaf, typo. |
| editan | hasil suntingan; kadang berarti tidak asli | `R1` | Itu foto editan. |
| clickbait | judul pemancing klik | `R1,NET` | Judulnya clickbait. |
| ragebait | konten sengaja memancing marah | `R2,NET,T` | Jangan terpancing ragebait. |
| engagement bait | konten sengaja memancing interaksi | `R2,NET` | Pertanyaannya cuma engagement bait. |
| hoaks/hoax | informasi palsu | `R1` | Cek dulu, jangan sebar hoaks. |
| valid | benar; masuk akal; disetujui | `R2,NET` | Pendapatnya valid. |
| relate/relatable | sesuai pengalaman pribadi | `R2,JAKSEL` | Kontennya relate banget. |
| random | acak; tidak terduga | `R2,JAKSEL` | Pertanyaannya random. |
| awkward | canggung | `R2,JAKSEL` | Suasananya awkward. |
| cringe | menimbulkan malu/geli tidak nyaman | `R2,NET` | Videonya agak cringe. |
| sus | mencurigakan | `R2,NET,GAME` | Link itu sus. |
| red flag | tanda bahaya/karakter negatif | `R1,NET` | Suka bohong itu red flag. |
| green flag | tanda sifat/kondisi positif | `R1,NET` | Transparan soal biaya itu green flag. |
| beige flag | keunikan netral/agak aneh | `R2,NET` | Hobinya itu beige flag. |
| toxic | merusak/tidak sehat secara sosial | `R1` | Lingkungannya toxic. |
| gaslighting | memanipulasi orang agar meragukan persepsinya | `R1,NET` | Jangan sembarang menyebut beda pendapat sebagai gaslighting. |
| gatekeeping | menahan info/akses agar eksklusif | `R2,NET` | Jangan gatekeeping tempat bagus. |
| mansplaining | pria menjelaskan secara merendahkan/asumtif | `R2,NET,CAUTION` | Penjelasannya terasa mansplaining. |
| trauma dumping | membebankan curahan trauma tanpa kesiapan penerima | `R2,NET,CAUTION` | Tanya consent sebelum trauma dumping. |
| oversharing | membagikan info pribadi berlebihan | `R1,NET` | Kayaknya aku oversharing. |
| ghosting | menghilang tanpa penjelasan | `R1,NET` | Setelah survei, dia ghosting. |
| zombieing | orang yang ghosting lalu muncul lagi | `R2,NET` | Tiba-tiba dia zombieing. |
| breadcrumbing | memberi sedikit perhatian tanpa komitmen | `R2,NET` | Jangan breadcrumbing orang. |
| benching | menahan seseorang sebagai opsi cadangan | `R2,NET` | Dia cuma di-benching. |
| love bombing | perhatian berlebihan untuk memengaruhi/mengontrol | `R1,NET` | Waspadai pola love bombing. |
| orbiting | tetap memantau media sosial setelah putus komunikasi | `R2,NET` | Sudah ghosting, masih orbiting. |
| soft launch | memperkenalkan samar-samar | `R1,NET` | Dia soft launch pasangan. |
| hard launch | memperkenalkan secara terang-terangan | `R1,NET` | Akhirnya hard launch rumah baru. |
| canon event | pengalaman penting yang dianggap harus terjadi | `R2,NET,T` | Salah pilih kos itu canon event. |
| main character | sikap merasa pusat cerita; bisa pujian | `R2,NET` | Hari ini main character moment. |
| NPC | orang yang dianggap pasif/generik; istilah gim | `R2,GAME,CAUTION` | Jangan labeli orang sebagai NPC sembarangan. |
| side quest | kegiatan sampingan tak terencana | `R2,GAME` | Survei malah jadi side quest kuliner. |
| lore | latar cerita/riwayat mendalam | `R2,NET` | Ada lore panjang di balik proyek itu. |
| plot twist | kejutan alur/hasil | `R1,NET` | Plot twist: harganya turun. |
| character development | perkembangan sikap diri | `R2,NET` | Mulai disiplin nabung, character development. |
| arc | fase/babak perkembangan | `R2,NET,T` | Masuk healing arc. |
| era | fase identitas/gaya | `R2,NET` | Masuk home-owner era. |
| core | sufiks label estetika/kompilasi ciri | `R2,NET,T` | Kontennya Pasarkemis core. |
| coded | terasa memiliki ciri tertentu | `R2,NET,T` | Desainnya family-coded. |
| aesthetic/estetik | menarik secara visual | `R1` | Kafenya estetik. |
| vibes/vibe | nuansa atau atmosfer | `R1` | Vibes-nya tenang. |
| vibe check | penilaian kecocokan suasana | `R2,NET` | Sebelum masuk, vibe check dulu. |
| slay | tampil/berhasil sangat memukau | `R2,NET` | Outfit-nya slay. |
| ate | melakukan sesuatu dengan sangat baik | `R2,NET,T` | Presentasinya ate. |
| ate and left no crumbs | sangat unggul tanpa cela | `R2,NET,T` | Desainnya ate and left no crumbs. |
| understood the assignment | menjalankan brief dengan tepat | `R2,NET` | Tim desain understood the assignment. |
| serve/serving | menampilkan gaya tertentu dengan kuat | `R2,NET` | Fasadnya serving luxury. |
| giving/it's giving | memberi kesan/asosiasi | `R2,NET` | It’s giving resort vibes. |
| iconic | sangat khas/berkesan | `R1` | Momen itu iconic. |
| legend/legit | luar biasa; sah/benar | `R2` | Tempat makannya legit. |
| goated/GOAT | dianggap terbaik sepanjang masa | `R2,NET` | Strateginya goated. |
| fire/lit | sangat keren/seru | `R2,NET` | Acara tadi lit. |
| bussin | sangat enak/bagus, sering makanan | `R2,NET` | Makanannya bussin. |
| banger | karya/konten sangat bagus | `R2,NET` | Lagunya banger. |
| mid | biasa saja/medioker | `R2,NET,CAUTION` | Filmnya mid. |
| meh | biasa saja/tidak terkesan | `R2` | Rasanya meh. |
| peak | puncak kualitas; sangat bagus | `R2,NET` | Ini peak design. |
| underrated | bagus tetapi kurang diapresiasi | `R1` | Lokasi ini underrated. |
| overrated | dinilai berlebihan | `R1` | Menurutku tempat itu overrated. |
| hidden gem | tempat/hal bagus yang belum banyak diketahui | `R1,SAFE` | Kawasan ini hidden gem. |
| worth it | sepadan dengan harga/usaha | `R1,SAFE` | Tipe ini worth it. |
| not worth it | tidak sepadan | `R1` | Biayanya tidak worth it. |
| value for money | manfaat sepadan harga | `R1,SAFE` | Paketnya value for money. |
| no debat | penegasan sangat yakin | `R2,NET` | Ini favorit, no debat. |
| no counter | sulit dibantah/dilawan | `R2,GAME` | Lokasinya no counter. |
| no cap | sungguh/tidak bohong | `R2,NET` | Bagus banget, no cap. |
| cap | bohong/omong kosong | `R2,NET` | Itu cap. |
| fr/for real | sungguh; setuju kuat | `R2,NET` | FR, ini nyaman. |
| bet | oke/setuju/tantangan diterima | `R2,NET` | Besok jam dua? Bet. |
| word | benar/setuju | `R2,NET` | Word, gue ikut. |
| period/periodt | penutup penegasan tanpa debat | `R2,NET` | Dia pantas menang, period. |
| end game | tujuan/opsi akhir terbaik | `R2,GAME` | Rumah ini end game. |
| GG | good game; hebat/selesai total | `R2,GAME` | Presentasinya GG. |
| GGWP | good game, well played | `R2,GAME` | GGWP, tim. |
| OP | overpowered; terlalu kuat/unggul | `R2,GAME` | Karakter ini OP. |
| nerf | mengurangi kekuatan/keunggulan | `R2,GAME` | Fitur itu kena nerf. |
| buff | meningkatkan kekuatan/keunggulan | `R2,GAME` | Update ini buff besar. |
| carry | membawa tim menuju kemenangan | `R2,GAME` | Dia nge-carry tim. |
| feeder | pemain yang sering memberi keuntungan lawan | `R2,GAME,CAUTION` | Jangan toxic ke feeder. |
| noob/newbie | pemula | `R2,GAME,CAUTION` | Gue masih newbie. |
| tryhard | terlalu keras berusaha demi menang | `R2,GAME` | Santai, jangan tryhard. |
| meta | strategi/gaya paling efektif saat ini | `R2,GAME` | Konten pendek lagi meta. |
| DC | terputus dari koneksi | `R2,GAME` | Tadi DC. |
| lag/nge-lag | respons lambat karena koneksi/perangkat | `R1,GAME` | Videonya nge-lag. |
| mabar | main bareng | `R1,GAME` | Mabar malam ini. |
| party | kelompok bermain | `R2,GAME` | Masuk party, yuk. |
| push rank | bermain untuk menaikkan peringkat | `R2,GAME` | Weekend push rank. |
| war | pertarungan; debat ramai | `R2,GAME,NET` | Kolom komentar lagi war. |
| spill tea/tea | membagikan gosip/info menarik | `R2,NET` | Ada tea baru? |
| teh tumpah | gosip terbuka; terjemahan bercanda | `R2,NET` | Wah, tehnya tumpah. |
| gibah/ghibah | membicarakan keburukan orang | `R1,CAUTION` | Jangan gibah. |
| rujak/dirujak | dikritik ramai-ramai | `R2,NET` | Postingannya dirujak netizen. |
| diserbu | didatangi/dikomentari banyak orang | `R1,NET` | Akunnya diserbu. |
| digoreng | isu diperbesar/diolah terus | `R2,NET` | Isunya terus digoreng. |
| dinaikkan | dibuat ramai/diangkat algoritma atau massa | `R1,NET` | Topiknya dinaikkan lagi. |
| netizen/warganet | pengguna internet | `R1` | Warganet ramai berkomentar. |
| netijen/netijen +62 | varian bercanda untuk warganet Indonesia | `R2,NET` | Netijen +62 gercep banget. |
| negara berflower | Indonesia; plesetan developing country | `R2,NET,CAUTION` | Drama negara berflower. |
| wakanda | nama fiksi untuk menyamarkan Indonesia/negara | `R2,NET,CAUTION` | Kebijakan di Wakanda. |
| Konoha | nama fiksi untuk menyindir Indonesia/politik | `R2,NET,CAUTION` | Warga Konoha ramai. |
| +62 | Indonesia berdasarkan kode telepon | `R2,NET` | Kelakuan warga +62. |
| kaum mendang-mending | orang yang terus membandingkan opsi | `R2,NET` | Kaum mendang-mending mulai hadir. |
| suhu | orang sangat ahli | `R2,NET` | Mohon arahan, suhu. |
| sepuh | senior/ahli berpengalaman; sapaan hormat bercanda | `R2,NET` | Izin belajar, sepuh. |
| pro player | orang sangat mahir; literal atau hiperbola | `R2,GAME` | Cara editnya pro player. |
| warga lokal | orang setempat; kadang label meme | `R1` | Tanya warga lokal. |
| kaum rebahan | orang yang suka berbaring/santai | `R2` | Kaum rebahan merapat. |
| kaum healing | orang yang suka liburan untuk menyegarkan diri | `R2` | Kaum healing siap berangkat. |
| healing | pemulihan; dalam slang sering liburan/refreshing | `R1,NET` | Weekend mau healing. |
| self reward | hadiah untuk diri setelah usaha | `R1` | Boleh self reward, tetap sesuai budget. |
| me time | waktu untuk diri sendiri | `R1` | Aku butuh me time. |
| quality time | waktu bermakna bersama | `R1` | Quality time sama keluarga. |
| work-life balance | keseimbangan kerja dan hidup | `R1` | Lagi cari work-life balance. |
| burnout | kelelahan kronis terkait tuntutan | `R1` | Istirahat kalau burnout. |
| overmikir/overthinking | berpikir berlebihan | `R1/R2` | Jangan overthinking dulu. |
| insecure | kurang percaya diri/tidak aman | `R1` | Dia lagi insecure. |
| hepi/happy | senang | `R1` | Aku hepi banget. |
| sedih brutal | sangat sedih | `R2,NET` | Ending-nya sedih brutal. |
| galau | bimbang/gelisah emosional | `R1` | Lagi galau pilih tipe. |
| baper | terbawa perasaan | `R1` | Jangan baper, cuma bercanda. |
| baperan | mudah terbawa perasaan | `R1` | Dia memang baperan. |
| bete/BT | kesal/bosan/tidak mood | `R1` | Nunggu lama bikin bete. |
| bad mood | suasana hati buruk | `R1` | Aku lagi bad mood. |
| mood | suasana hati; juga sangat sesuai perasaan | `R1` | Rebahan itu mood. |
| mood booster | hal yang memperbaiki suasana hati | `R1` | Kopi jadi mood booster. |
| nyesek | sesak secara emosional | `R1` | Lihat tagihan bikin nyesek. |
| ngenes | menyedihkan/memprihatinkan | `R2` | Nasibnya ngenes. |
| nelangsa | sedih mendalam; kadang hiperbola | `R1` | Dompet ikut nelangsa. |
| merana | sangat sedih; sering bercanda | `R1` | Tanggal tua merana. |
| ngedumel | mengeluh pelan | `R1` | Jangan ngedumel terus. |
| ngeluh | mengeluh | `R1` | Boleh capek, jangan ngeluh mulu. |
| ngambek | marah dan menarik diri | `R1` | Dia ngambek. |
| ngambis | bersikap sangat ambisius | `R2` | Lagi ngambis belajar. |
| ambis | ambisius | `R1` | Timnya ambis. |
| semangat/cemungut | dorongan; bentuk kedua bergaya alay/imut | `R1/R2` | Cemungut kerjanya. |
| santuy/sans/woles/selow | santai | `R2` | Santuy, masih aman. |
| kalem | tenang | `R1` | Kalem dulu. |
| chill | santai/tenang | `R2,JAKSEL` | Chill, jangan panik. |
| panik gak/panik ga sih | format respons pada situasi mendadak | `R2,NET` | Panik gak sih, file hilang? |
| kicep | diam karena kalah/malu/kaget | `R2` | Langsung kicep. |
| skakmat | tidak bisa membalas argumen | `R2` | Jawabannya bikin skakmat. |
| kena mental | terpukul secara psikologis/tersinggung | `R2,CAUTION` | Kalah sekali langsung kena mental. |
| mental tempe | dianggap mudah menyerah; stereotip lama | `R2,CAUTION` | Hindari melabeli orang mental tempe. |
| triggered | terpicu emosi/trauma; sering dipakai longgar | `R1,CAUTION` | Topik itu bikin dia triggered. |
| salty | kesal/iri karena kalah atau dikritik | `R2,NET` | Kok jadi salty? |
| petty | mempermasalahkan hal kecil/dendam kecil | `R2,JAKSEL` | Jangan petty, deh. |
| chaos | kacau/ramai | `R1` | Grupnya chaos. |
| rusuh | kacau dan mengganggu | `R1` | Komentarnya rusuh. |
| barbar | liar/agresif/tidak tertib | `R2,CAUTION` | Diskonnya bikin belanja barbar. |
| brutal | sangat ekstrem | `R2` | Macetnya brutal. |
| ngeri | menakutkan; juga hebat secara hiperbola | `R1` | Diskonnya ngeri. |
| gokil/goks | gila dalam arti keren/lucu | `R2` | Gokil, luas banget. |
| gila/gile | sangat mengejutkan; literal gangguan mental harus dihindari | `R2,CAUTION` | Gila, bagus banget. |
| anjir/anjay/anjrit/njir | seruan kaget/kagum; eufemisme umpatan | `R2/R3,CAUTION` | Anjir, tinggi banget. |
| busyet/buset | seruan kaget | `R2` | Buset, ramai banget. |
| astaga/anjay | seruan keterkejutan | `R1/R2` | Astaga, lupa bawa kunci. |
| wadoh/waduh/aduh | seruan masalah/kaget | `R1` | Waduh, hujan. |
| lah kok | keheranan/kontradiksi | `R2` | Lah kok tutup? |
| lho/loh/lo | partikel keheranan atau koreksi | `R1` | Sudah dikirim, lho. |
| hah/heh | kaget/tidak dengar/memanggil | `R2,CAUTION` | Hah, serius? |
| yah | kecewa ringan | `R1` | Yah, kehabisan. |
| yeay/yay | senang/merayakan | `R1` | Yeay, disetujui. |
| uwu | ekspresi gemas/manis | `R2,NET` | Uwu, lucu banget. |
| aura | kesan/pesona; kini dapat dinilai atau “dikumpulkan” | `R2,NET,T` | Auranya kuat. |
| aura farming | aksi sengaja membangun kesan keren | `R2,NET,T` | Dia lagi aura farming. |
| minus aura | tindakan memalukan yang mengurangi citra | `R2,NET,T` | Jatuh pas pamer, minus aura. |
| rizz | karisma menggoda/menarik pasangan | `R2,NET,T` | Rizz-nya kuat. |
| rizzler | orang dengan rizz tinggi | `R2,NET,T` | Si paling rizzler. |
| delulu | delusional; berkhayal tidak realistis | `R2,NET,T` | Boleh delulu, tetap bikin rencana. |
| solulu | solution; pasangan rima meme delulu | `R2,NET,T` | Delulu is the solulu. |
| brainrot/brain rot | konten/obsesi internet berulang yang memenuhi pikiran | `R2,NET,T` | Meme itu jadi brainrot. |
| chronically online | terlalu hidup dalam budaya internet | `R2,NET,CAUTION` | Istilah itu cuma dipahami yang chronically online. |
| touch grass | keluar dari internet dan kembali ke dunia nyata | `R2,NET,CAUTION` | Debat terus, touch grass dulu. |
| cooked | berada dalam masalah; habis tenaga; kalah | `R2,NET,T` | Deadline sejam lagi, gue cooked. |
| let him cook | biarkan ia melanjutkan ide/aksi | `R2,NET,T` | Tunggu, let him cook. |
| who let him cook | hasil aksinya buruk/absurd | `R2,NET,T` | Presentasinya kacau; who let him cook? |
| skibidi | istilah meme absurd; makna sangat tergantung konteks | `R2,NET,T` | Humornya skibidi banget. |
| sigma | persona mandiri/dominan dalam meme; sering ironis | `R2,NET,T` | Dia masuk mode sigma. |
| Ohio | label meme untuk kejadian aneh/absurd | `R2,NET,T` | Cuma di Ohio. |
| six seven/67 | meme seruan absurd; makna leksikal tidak stabil | `R2,NET,T` | Anak-anak teriak six seven. |
| unc | sapaan mengejek “paman/orang tua” | `R2,NET,T,CAUTION` | Santai, unc. |
| crash out | meledak emosi/bertindak nekat | `R2,NET,T,CAUTION` | Jangan crash out gara-gara komentar. |
| nonchalant | cuek/tenang tanpa banyak reaksi | `R2,NET,T` | Gayanya nonchalant. |
| nonchalant core | estetika/kompilasi perilaku sangat cuek | `R2,NET,T` | Videonya nonchalant core. |
| stecu | setelan cuek; gaya pura-pura cuek | `R2,NET,T` | Dia lagi stecu. |
| kalcer | pelafalan culture; berbudaya/trendi dalam komunitas | `R2,NET,T` | Tempatnya kalcer. |
| skena | scene/komunitas gaya atau musik tertentu | `R2,NET` | Anak skena ngumpul di sana. |
| jamet | stereotip gaya tertentu; dapat merendahkan | `R2,CAUTION` | Jangan pakai jamet untuk menghina. |
| ngabers | stereotip gaya pria streetwear/motor | `R2,NET,CAUTION` | Gaya ngabers. |
| cegil | cewek gila; label perempuan emosional, bisa seksis | `R2,NET,CAUTION` | Hindari melabeli orang cegil. |
| cogil | cowok gila; pasangan istilah cegil | `R2,NET,CAUTION` | Istilah cogil sering bercanda. |
| pick me | orang yang mencari validasi dengan merendahkan kelompoknya | `R2,NET,CAUTION` | Jangan asal cap pick me. |
| attention seeker | pencari perhatian | `R1,CAUTION` | Kontennya dianggap attention seeker. |
| caper | cari perhatian | `R1` | Dia lagi caper. |
| pansos | panjat sosial; mencari popularitas melalui orang/isu | `R1` | Jangan pansos lewat musibah. |
| flex/flexing | pamer | `R1` | Dia flexing mobil baru. |
| humblebrag | pamer terselubung sebagai kerendahan hati/keluhan | `R2,NET` | Caption-nya humblebrag. |
| clout | popularitas/pengaruh sosial | `R2,NET` | Dia cuma cari clout. |
| clout chasing | mengejar popularitas | `R2,NET` | Aksinya dinilai clout chasing. |
| viral | menyebar luas dan cepat | `R1` | Videonya viral. |
| trending | sedang ramai | `R1` | Topiknya trending. |
| hype | antusiasme besar | `R1` | Hype-nya tinggi. |
| hyped | sangat antusias | `R2` | Gue hyped buat besok. |
| receh | humor ringan/dangkal; nominal kecil | `R1` | Jokes-nya receh tapi lucu. |
| garing | tidak lucu | `R1` | Jokes-nya garing. |
| jayus | lelucon yang tidak lucu/canggung | `R2` | Humornya jayus. |
| ngakak | tertawa keras | `R1` | Videonya bikin ngakak. |
| ngikik | tertawa kecil | `R1` | Dia cuma ngikik. |
| wkwk/wkwkwk | representasi tawa khas internet Indonesia | `R1,NET` | Wkwk, bisa aja. |
| kwkw/awokawok | varian tawa internet | `R2,NET` | Awokawok, lucu banget. |
| haha/hehe/hihi | tawa; `hehe` dapat melunakkan atau canggung | `R1` | Maaf telat, hehe. |
| xixi/xixixi | tawa manja/ironis | `R2,NET` | Xixi, ketahuan. |
| terjungkal/meninggal/meninggoy karena lucu | hiperbola sangat lucu | `R2,NET` | Gue meninggoy baca komen. |
| humor bapak-bapak | lelucon permainan kata sederhana | `R1` | Itu humor bapak-bapak. |
| dark jokes | humor bertema sensitif/gelap | `R1,CAUTION` | Dark jokes perlu konteks dan batas. |
| inside joke | lelucon yang dipahami kelompok tertentu | `R1` | Itu inside joke kantor. |
| roasting | mengolok dengan format humor | `R1,CAUTION` | Roasting harus dengan batas yang disepakati. |
| roast | kritik/ejekan lucu | `R2,CAUTION` | Jangan roast fisik orang. |
| absurd | tidak masuk akal secara lucu | `R1` | Videonya absurd. |
| random banget | sangat tidak terduga | `R2` | Pertanyaannya random banget. |
| aneh bin ajaib | sangat aneh | `R2` | Kelakuannya aneh bin ajaib. |
| ajaib | aneh/luar biasa tergantung konteks | `R1` | Solusinya ajaib. |
| di luar nalar | sangat ekstrem/tidak masuk akal | `R2` | Harganya di luar nalar. |
| di luar nurul | plesetan “di luar nalar” | `R2,NET,T` | Kelakuannya di luar Nurul. |
| nggak ngotak | tidak masuk akal; ekstrem | `R2` | Diskonnya gak ngotak. |
| ngotak dikit | protes hiperbolik terhadap hal ekstrem | `R2,NET` | Cakepnya ngotak dikit. |
| gak ada obat | luar biasa; ekstrem | `R2` | View-nya gak ada obat. |
| pecah | sangat meriah/keren | `R2` | Acaranya pecah. |
| badai | sangat keren; lebih retro | `R2` | Tampilannya badai. |
| kece | keren/menarik | `R1` | Desainnya kece. |
| keren abis | sangat keren | `R2` | Fasadnya keren abis. |
| mantap/mantab | sangat baik | `R1` | Mantap, lanjut. |
| mantul | mantap betul | `R2` | Hasilnya mantul. |
| top markotop | sangat bagus; retro/humoris | `R2` | Servisnya top markotop. |
| maknyus | sangat enak/bagus; retro | `R2` | Makanannya maknyus. |
| ciamik | bagus/rapi | `R1` | Hasil editnya ciamik. |
| paripurna | sempurna; sering hiperbolik | `R1` | Paket lengkap paripurna. |
| totalitas tanpa batas | sangat total; slogan hiperbolik | `R2` | Dekornya totalitas tanpa batas. |
| niat banget | sangat bersungguh-sungguh | `R1` | Kontennya niat banget. |
| sat set/satset | cepat, sigap, efisien | `R1,NET` | Adminnya sat set. |
| gercep | gerak cepat | `R1` | Gercep sebelum habis. |
| gas | lanjutkan/ayo | `R1` | Kalau cocok, gas. |
| kuy | yuk; bentuk balik | `R2` | Kuy berangkat. |
| skuy | yuk dengan tambahan bunyi | `R2` | Skuy makan. |
| sabi | bisa; bentuk balik | `R2` | Besok sabi. |
| cus | ayo pergi/lakukan | `R2` | Cus ke lokasi. |
| let's go/lesgo | ayo; seruan antusias | `R2,NET` | Lesgo, tim! |
| merapat | datang/bergabung | `R1` | Yang mau diskon, merapat. |
| cekidot | silakan cek; dari check it out | `R2,NET,RETRO` | Detailnya cekidot. |
| capcus | segera pergi | `R2,RETRO` | Yuk capcus. |
| hayuk/hayo | ayo | `R2` | Hayuk berangkat. |
| rebahan | berbaring/santai tanpa aktivitas | `R1` | Weekend rebahan. |
| mager | malas bergerak | `R1` | Lagi mager keluar. |
| gabut | tidak ada kegiatan/merasa bosan | `R1` | Gue gabut. |
| nolep | no life; minim kehidupan sosial | `R2,CAUTION` | Jangan gampang cap orang nolep. |
| kuper | kurang pergaulan | `R1,CAUTION` | Dia merasa kuper. |
| kudet | kurang update | `R1` | Jangan kudet soal promo. |
| telmi | telat mikir | `R2,CAUTION` | Maaf, lagi telmi. |
| lemot | lambat berpikir/merespons/perangkat | `R1,CAUTION` | HP-nya lemot. |
| lola | loading lama; lambat memahami | `R2` | Otak lagi lola. |
| blank | pikiran kosong | `R1` | Tiba-tiba blank. |
| error | keliru/tidak berfungsi | `R1` | Sistemnya error. |
| hang | macet/tidak merespons | `R1` | Laptopnya hang. |
| ngadat | bermasalah/tidak mau berfungsi | `R1` | Motornya ngadat. |
| zonk | gagal mendapat hasil; kosong | `R2` | Datang jauh-jauh, zonk. |
| apes | sial | `R1` | Lagi apes. |
| boncos | rugi/tekor | `R2` | Iklannya boncos. |
| tekor | pengeluaran melebihi pemasukan | `R1` | Bulan ini tekor. |
| bokek | tidak punya uang | `R1` | Tanggal tua bokek. |
| kanker | kantong kering; akronim humor | `R2` | Akhir bulan kanker. |
| tanggal tua | periode akhir bulan saat uang menipis | `R1` | Menu tanggal tua. |
| cuan | uang/keuntungan | `R1,SAFE` | Semoga makin cuan. |
| cuan cuan cuan | seruan mengejar untung | `R2` | Bisnisnya cuan cuan cuan. |
| balik modal/BEP | pendapatan menutup biaya | `R1` | Kapan balik modal? |
| sultan | orang sangat kaya | `R1,NET` | Harga khusus sultan. |
| old money | kekayaan keluarga lama; juga estetika | `R1,NET` | Gayanya old money. |
| new money | kekayaan baru dan gaya pamer tertentu | `R1,NET` | Vibes new money. |
| orang kaya/orang have | orang berada; bentuk kedua meme 2026 | `R2,NET,T` | Orang have beda cerita. |
| orang haven't/orang not yet | orang yang belum punya/mampu; meme | `R2,NET,T` | Kita masih orang not yet. |
| no money no meimei | plesetan slogan soal uang | `R2,NET,T` | Tanggal tua: no money no meimei. |
| flexing | memamerkan kekayaan/pencapaian | `R1` | Bukan flexing, cuma berbagi. |
| checkout/cekot | menyelesaikan pembelian online | `R1/ R2` | Akhirnya cekot juga. |
| keranjang kuning | fitur produk TikTok Shop | `R1,NET` | Cek keranjang kuning. |
| racun | produk/konten yang menggoda membeli | `R2,NET` | Skincare ini racun. |
| meracuni | membuat orang ingin mencoba/membeli | `R2,NET` | Izin meracuni timeline. |
| keracunan | terpengaruh rekomendasi/tren | `R2,NET` | Gue keracunan sepatu itu. |
| lapar mata | ingin membeli karena melihat, bukan butuh | `R1` | Jangan lapar mata. |
| kalap | kehilangan kontrol saat belanja/makan | `R1` | Dia kalap waktu diskon. |
| war tiket | berebut tiket saat penjualan dibuka | `R1,NET` | Siap war tiket. |
| sold out | habis terjual | `R1` | Unitnya sold out. |
| restock | stok tersedia kembali | `R1` | Kapan restock? |
| PO/preorder | pesan sebelum barang tersedia | `R1` | Barangnya sistem PO. |
| COD | bayar saat barang diterima | `R1` | Bisa COD? |
| nego | menawar | `R1` | Harga masih bisa nego. |
| net | harga final setelah diskon | `R1` | Itu harga net. |
| murce | murah; bentuk humor/centil | `R2` | Harganya murce. |
| mehong | mahal; bahasa binan/populer | `R2` | Kok mehong banget? |
| murah meriah | sangat terjangkau | `R1` | Jajannya murah meriah. |
| harga rakyat | harga terjangkau | `R1` | Menunya harga rakyat. |
| harga teman | harga khusus lebih murah | `R1` | Kasih harga teman, dong. |
| harga nggak ngotak | harga sangat murah/mahal, bergantung konteks | `R2` | Harga tiketnya gak ngotak. |
| promo gila | promo sangat besar | `R2,CAUTION` | Ada promo gila minggu ini. |
| diskon brutal | diskon sangat besar | `R2` | Diskon brutal 10.10. |
| PHP | pemberi harapan palsu | `R1` | Jangan PHP-in pelanggan. |
| modus | niat tersembunyi, sering romantis | `R1` | Baik banget, ada modus? |
| PDKT | pendekatan sebelum pacaran | `R1` | Mereka lagi PDKT. |
| HTS | hubungan tanpa status | `R1` | Capek menjalani HTS. |
| TTM | teman tapi mesra | `R1` | Katanya cuma TTM. |
| friendzone | hubungan hanya dianggap teman | `R1` | Dia terjebak friendzone. |
| bucin | budak cinta; sangat tunduk karena cinta | `R1` | Dia bucin banget. |
| gamon | gagal move on | `R1` | Masih gamon sama mantan. |
| move on | melanjutkan hidup setelah hubungan/kejadian | `R1` | Sudah waktunya move on. |
| gebetan | orang yang disukai/diincar | `R1` | Gebetannya datang. |
| crush | orang yang disukai | `R1` | Ketemu crush di acara. |
| ayang/sayang/syng | sapaan pasangan | `R1` | Ayang sudah makan? |
| beb/babe/baby | sapaan sayang | `R2` | Makasih, Beb. |
| pacar/doi | pasangan romantis | `R1` | Doi ikut survei. |
| jadian | mulai berpacaran | `R1` | Mereka resmi jadian. |
| putus | mengakhiri hubungan | `R1` | Mereka sudah putus. |
| balikan | kembali berpacaran | `R1` | Mereka balikan. |
| LDR | hubungan jarak jauh | `R1` | Mereka menjalani LDR. |
| clingy | terlalu melekat/bergantung | `R1` | Dia merasa pasangannya clingy. |
| posesif | ingin mengontrol pasangan secara berlebih | `R1` | Posesif bukan tanda cinta. |
| cemburuan | mudah cemburu | `R1` | Dia cemburuan. |
| chemistry | kecocokan interaksi | `R1` | Chemistry mereka kuat. |
| sparks | rasa ketertarikan awal | `R2` | Katanya tidak ada sparks. |
| relationship goals | hubungan yang dianggap ideal | `R2` | Mereka disebut relationship goals. |
| couple goals | pasangan yang dianggap ideal | `R2` | Kontennya couple goals. |
| single | tidak punya pasangan | `R1` | Lagi nyaman single. |
| jomblo | tidak punya pasangan | `R1` | Jomblo bukan masalah. |
| jones | jomblo ngenes | `R2,CAUTION` | Istilah jones bernada mengejek. |
| sadboi/sadgirl | persona sedih, biasanya soal cinta | `R2,NET` | Playlist sadboi. |
| badut | orang yang terus menghibur/berkorban dalam cinta tanpa hasil | `R2,NET,CAUTION` | Jangan mau jadi badut cinta. |
| badut bucin | orang yang dipermainkan karena cinta | `R2,NET,CAUTION` | Dia sadar jadi badut bucin. |
| cinta monyet | romansa remaja awal | `R1` | Itu cinta monyet. |
| cinlok | cinta lokasi | `R1` | Mereka cinlok di proyek. |
| CLBK | cinta lama bersemi kembali | `R1` | Wah, CLBK. |
| peka | mampu menangkap isyarat perasaan | `R1` | Coba lebih peka. |
| gak peka | tidak menangkap isyarat | `R1` | Dia gak peka. |
| kode | isyarat tidak langsung | `R1` | Sudah kasih kode. |
| ngode | memberi isyarat | `R1` | Dia lagi ngode. |
| respon/response | tanggapan | `R1` | Belum ada respons. |
| slow response/slowres | lambat membalas | `R1` | Maaf slowres. |
| fast response/fastres | cepat membalas | `R1` | Adminnya fastres. |
| read doang | membaca tanpa membalas | `R2` | Jangan read doang. |
| di-read | pesan telah dibaca tetapi tidak dibalas | `R2,JAKSEL` | Chat gue cuma di-read. |
| dikacangin | diabaikan | `R2` | Kok dikacangin? |
| dicuekin | diabaikan dengan sikap cuek | `R1` | Dia dicuekin. |
| left on read | dibiarkan setelah pesan dibaca | `R2,NET` | Gue left on read. |
| late reply | balasan terlambat | `R1` | Maaf late reply. |
| noted | sudah dicatat/dipahami | `R1` | Noted, Kak. |
| siap/siap 86 | mengerti dan siap melaksanakan | `R1/R2` | Siap 86. |
| copy that | pesan diterima/dipahami | `R2` | Copy that. |
| roger | pesan diterima | `R2` | Roger, aman. |
| aman | baik/tidak bermasalah/disetujui | `R1` | Jam dua aman. |
| aman terkendali | situasi tertangani | `R1` | Semua aman terkendali. |
| clear | jelas/selesai | `R1,JAKSEL` | Soal biaya sudah clear. |
| settle | selesai/disepakati | `R1,JAKSEL` | Pembayaran sudah settle. |
| deal | sepakat | `R1` | Kalau cocok, deal. |
| fix | pasti/ditetapkan | `R1` | Fix berangkat besok. |
| confirm/konfirm | memastikan | `R1` | Tolong konfirm kehadiran. |
| cancel/cancelled | membatalkan | `R1` | Acara di-cancel. |
| reschedule | menjadwalkan ulang | `R1` | Boleh reschedule? |
| pending | tertunda | `R1` | Statusnya pending. |
| hold | menahan sementara | `R1` | Unit bisa di-hold sehari. |
| booking | memesan | `R1` | Mau booking unit. |
| closing | penutupan penjualan/transaksi | `R1` | Semoga closing hari ini. |
| prospek | calon pelanggan/peluang | `R1` | Ada prospek baru. |
| leads | data/potensi calon pelanggan | `R1` | Leads minggu ini naik. |
| hot lead | calon pelanggan sangat berminat | `R1` | Follow up hot lead dulu. |
| cold lead | calon pelanggan minat rendah/belum siap | `R1` | Nurture cold lead. |
| follow up | tindak lanjut | `R1` | Follow up besok. |
| canvassing | mencari calon pelanggan langsung | `R1` | Tim lagi canvassing. |
| open house | acara kunjungan properti | `R1` | Ada open house Minggu. |
| site visit/survei | kunjungan lokasi | `R1` | Jadwalkan site visit. |
| show unit | unit contoh | `R1` | Kita lihat show unit. |
| unit ready | unit tersedia/siap | `R1` | Unit ready terbatas. |
| indent | properti dibangun setelah pemesanan/bertahap | `R1` | Tipe ini masih indent. |
| ready stock | sudah tersedia | `R1` | Ada yang ready stock. |
| DP | uang muka | `R1` | DP mulai sepuluh persen. |
| cicilan | pembayaran berkala | `R1` | Cicilannya berapa? |
| KPR | kredit pemilikan rumah | `R1` | Bisa dibantu KPR. |
| ACC/approved | disetujui | `R1` | KPR-nya sudah ACC. |
| reject | ditolak | `R1` | Pengajuannya kena reject. |
| BI checking/SLIK | pemeriksaan riwayat kredit; istilah pertama masih populer | `R1` | Cek SLIK sebelum KPR. |
| cuan properti | keuntungan dari properti | `R1,SAFE` | Hitung potensi cuan properti secara realistis. |
| capital gain | kenaikan nilai aset | `R1` | Proyeksi capital gain bukan jaminan. |
| yield | imbal hasil sewa | `R1` | Hitung yield bersih. |
| passive income | pendapatan relatif pasif | `R1` | Sewa bisa jadi passive income. |
| work from cafe/WFC | bekerja dari kafe | `R1` | Besok WFC. |
| WFH | bekerja dari rumah | `R1` | Hari ini WFH. |
| WFO | bekerja dari kantor | `R1` | Senin WFO. |
| WFA | bekerja dari mana saja | `R1` | Kebijakan WFA. |
| meeting | rapat | `R1` | Ada meeting jam tiga. |
| meeting-an | melakukan rapat; bentuk hibrida | `R2,JAKSEL` | Seharian meeting-an. |
| deadline/dedlen | batas waktu | `R1/R2` | Deadline besok. |
| revisi | perbaikan | `R1` | Ada revisi lagi. |
| brief | arahan kerja | `R1` | Brief-nya sudah jelas. |
| brainstorm | curah gagasan | `R1` | Kita brainstorm dulu. |
| brainstorming | proses curah gagasan | `R1` | Ada sesi brainstorming. |
| insight | wawasan/temuan | `R1` | Ada insight baru. |
| concern | kekhawatiran/fokus masalah | `R1,JAKSEL` | Concern utamanya harga. |
| issue | masalah/topik | `R1,JAKSEL` | Ada issue di server. |
| challenge | tantangan | `R1,JAKSEL` | Challenge-nya di distribusi. |
| solution/solusi | pemecahan | `R1` | Kita cari solusi. |
| action item | tugas tindak lanjut | `R1,JAKSEL` | Action item-nya tiga. |
| timeline | jadwal/alur waktu | `R1` | Timeline mundur. |
| workflow | alur kerja | `R1` | Workflow-nya otomatis. |
| approve/approval | menyetujui/persetujuan | `R1` | Menunggu approval. |
| review | meninjau/ulasan | `R1` | Tolong review dokumen. |
| feedback | umpan balik | `R1` | Butuh feedback. |
| ping | mengingatkan lewat pesan | `R2,JAKSEL` | Nanti ping aku. |
| reminder | pengingat | `R1` | Reminder meeting jam dua. |
| take over | mengambil alih tugas | `R1` | Aku take over dulu. |
| backup | cadangan/mencadangkan | `R1` | Backup datanya. |
| handle | menangani | `R1` | Biar aku handle. |
| execute/eksekusi | melaksanakan | `R1` | Kita eksekusi besok. |
| wrap up | menyelesaikan/merangkum | `R1` | Kita wrap up. |
| quick win | hasil cepat dengan usaha relatif kecil | `R1` | Fokus quick win dulu. |
| low hanging fruit | peluang termudah | `R1,JAKSEL` | Ambil low hanging fruit. |
| scale up | memperbesar operasi | `R1` | Siap scale up. |
| automate | mengotomatiskan | `R1` | Kita automate laporan. |
| AI banget | terlihat dihasilkan AI/bernuansa AI; tergantung konteks | `R2,T` | Copy-nya terlalu AI banget. |
| humanize | membuat terasa lebih manusiawi | `R1` | Tolong humanize teksnya. |
| prompt | instruksi untuk AI | `R1` | Prompt-nya spesifik. |
| halusinasi AI | jawaban AI yang mengarang fakta | `R1` | Cek sumber agar tidak halusinasi AI. |
| AI slop | konten AI massal berkualitas rendah | `R2,NET,T,CAUTION` | Hindari AI slop. |
| slop | konten berkualitas rendah dan berlimpah | `R2,NET,T` | Feed penuh slop. |
| kopas/copy-paste/copas | menyalin dan menempel | `R1` | Jangan copas mentah. |
| ATM | amati, tiru, modifikasi | `R1` | Pakai metode ATM, bukan plagiat. |
| SEO friendly | mudah dipahami mesin pencari | `R1` | Judulnya SEO friendly. |
| click-worthy | layak/menggoda diklik | `R1,JAKSEL` | Buat hook yang click-worthy. |
| hook | bagian pembuka penarik perhatian | `R1` | Hook tiga detik pertama. |
| CTA | ajakan bertindak | `R1` | CTA-nya jelas. |
| caption | teks pendamping konten | `R1` | Caption sudah siap. |
| carousel | postingan beberapa slide | `R1` | Bikin carousel edukasi. |
| reels | video pendek Instagram | `R1` | Upload ke Reels. |
| shorts | video pendek YouTube | `R1` | Versi Shorts lebih padat. |
| konten | materi media | `R1` | Kontennya relate. |
| ngonten | membuat konten | `R1` | Hari ini ngonten. |
| content creator/kreator | pembuat konten | `R1` | Dia content creator. |
| influencer | figur berpengaruh di media sosial | `R1` | Kolaborasi dengan influencer. |
| KOL | key opinion leader | `R1` | Pilih KOL lokal. |
| endorse | promosi berbayar oleh figur | `R1` | Produknya di-endorse. |
| unboxing | membuka produk di kamera | `R1` | Video unboxing. |
| haul | konten menunjukkan banyak barang belanjaan | `R1` | Bikin home decor haul. |
| GRWM | get ready with me | `R2,NET` | Konten GRWM survei rumah. |
| ASMR | konten suara yang memberi sensasi tenang | `R1,NET` | ASMR bersih-bersih rumah. |
| mukbang | siaran/konten makan dalam jumlah atau format tertentu | `R1,NET` | Mukbang bareng tim. |
| reaction | konten reaksi | `R1` | Buat video reaction. |
| stitch | fitur merespons potongan video TikTok | `R1,NET` | Stitch video itu. |
| duet | fitur video berdampingan TikTok | `R1,NET` | Ayo duet. |
| remix | mengolah ulang konten | `R1` | Remix Reels-nya. |
| algorithm/algoritma | sistem rekomendasi platform | `R1` | Algoritmanya berubah. |
| shadowban | dugaan pembatasan jangkauan tanpa notifikasi jelas | `R2,NET` | Jangan langsung menyimpulkan shadowban. |
| reach | jangkauan | `R1` | Reach turun. |
| impression | jumlah tayangan | `R1` | Impression naik. |
| engagement | interaksi | `R1` | Engagement bagus. |
| ER | engagement rate | `R1` | Cek ER akun. |
| organik | tanpa iklan berbayar | `R1` | Traffic organik. |
| ads/iklan | promosi berbayar | `R1` | Jalankan ads. |
| boost | mendorong jangkauan berbayar/organik | `R1` | Boost postingan. |
| viralitas | potensi menjadi viral | `R1` | Viralitas bukan satu-satunya KPI. |
| algoritma friendly | dianggap cocok untuk algoritma | `R2` | Formatnya algoritma friendly. |
| soft selling | promosi halus | `R1` | Gunakan soft selling. |
| hard selling | promosi langsung | `R1` | Jangan hard selling terus. |
| storytelling | penyampaian lewat cerita | `R1` | Pakai storytelling. |
| relatable | mudah dihubungkan dengan pengalaman audiens | `R1` | Buat contoh relatable. |
| authentic/otentik | terasa asli | `R1` | Tone-nya authentic. |
| raw | mentah/apa adanya | `R1` | Video raw terasa dekat. |
| cinematic | bergaya sinematik | `R1` | Ambil footage cinematic. |
| aesthetic | menarik dan konsisten secara visual | `R1` | Feed-nya aesthetic. |
| clean | bersih/minimal secara visual | `R1,JAKSEL` | Desainnya clean. |
| premium look | tampilan berkelas | `R1` | Fasadnya premium look. |
| low effort | minim usaha | `R2,JAKSEL` | Kontennya low effort. |
| high effort | butuh banyak usaha | `R2,JAKSEL` | Videonya high effort. |
| brainrot content | konten absurd/repetitif yang melekat di pikiran | `R2,NET,T` | Itu brainrot content. |
| shitpost | postingan sengaja absurd/berkualitas “buruk” untuk humor | `R3,NET,CAUTION` | Akun itu sering shitpost. |
| memeable | mudah dijadikan meme | `R2,NET` | Ekspresinya memeable. |
| viral-worthy | berpotensi viral | `R2,JAKSEL` | Momennya viral-worthy. |
| FYP-able | dianggap cocok masuk FYP | `R2,NET` | Hook-nya FYP-able. |
| algospeak | kata samaran untuk menghindari moderasi algoritmik | `R2,NET,T` | “Unalive” adalah contoh algospeak Inggris. |
| unalive | eufemisme internet untuk meninggal/bunuh diri; sangat sensitif | `R2,NET,CAUTION` | Jangan gunakan untuk meremehkan kematian. |
| seggs | eufemisme internet untuk seks | `R2,NET,CAUTION` | Istilah seggs muncul karena moderasi. |
| le dollar bean | eufemisme/plesetan lesbian | `R2,NET,T,CAUTION` | Jangan gunakan untuk mengejek identitas. |
| wafer/wafad | varian bercanda dari wafat | `R2,NET,CAUTION` | Hindari pada konteks duka nyata. |
| meninggoy | plesetan meninggal untuk hiperbola humor | `R2,NET,CAUTION` | Gue meninggoy lihat meme itu. |
| mokad | mati; slang kasar | `R3,CAUTION` | Jangan pakai untuk berita duka. |
| tewas gaya | sangat malu/kalah secara hiperbola | `R2` | Dia tewas gaya. |

### Jawa

Modul Jawa berfokus pada bentuk yang dikenal luas dalam percakapan digital Jawa, terutama **ngoko antarteman**, ditambah slang Jawa Timur/Surabaya dan walikan Malang. Ngoko menandai kedekatan tetapi tidak tepat otomatis kepada orang lebih tua, guru, pelanggan baru, atau relasi hierarkis; komunikasi dengan figur berstatus lebih tinggi cenderung menuntut ragam lebih sopan.[cite:87][cite:95]

#### Tingkat tutur

| Level | Persona umum | Pemakaian AI |
|---|---|---|
| Ngoko | `aku–kowe/koe` | Teman dekat/sebaya; jangan otomatis untuk pelanggan. |
| Madya/sopan percakapan | `aku/kula–sampeyan` | Kesopanan menengah; nilai `sampeyan` berbeda menurut wilayah. |
| Krama | `kula–panjenengan` | Situasi hormat; perlu kompetensi lebih dari sekadar mengganti pronomina. |

#### Tata bahasa Jawa

- Negasi ngoko: `ora/ra`; belum: `durung`; sudah: `wis/wes`.
- Tanya: `opo` (apa), `sopo` (siapa), `piye` (bagaimana), `ngopo` (mengapa/sedang apa), `pira` (berapa).
- Penanda ajakan: `ayo`, `yuk`, `gas`; keberangkatan: `budal`.
- Sapaan: `rek` (Jawa Timur), `lur` (dari `dulur`), `cak` (Jawa Timur), `sam` dalam walikan Malang.
- Campur kode digital sering mempertahankan struktur Jawa sambil menyisipkan slang Indonesia/Inggris; media sosial mendorong pola ini.[cite:95][cite:99]

#### Pola Jawa

| Pola | Fungsi | Contoh | Padanan Indonesia |
|---|---|---|---|
| `aku lagi [V]` | aktivitas berlangsung | `Aku lagi nang dalan.` | Saya sedang di jalan. |
| `kowe wis [V] durung?` | sudah/belum | `Kowe wis mangan durung?` | Kamu sudah makan belum? |
| `ora/ra [V]` | negasi | `Aku ra ngerti.` | Saya tidak mengerti. |
| `piye, dadi [V]?` | konfirmasi rencana | `Piye, dadi survei?` | Bagaimana, jadi survei? |
| `ayo/gas [V]` | ajakan | `Gas budal saiki.` | Ayo berangkat sekarang. |
| `[Adj] tenan` | intensifikasi | `Apik tenan omahe.` | Rumahnya bagus sekali. |
| `[X], rek` | sapaan solidaritas | `Merapat, rek.` | Mari bergabung, teman-teman. |
| `wes, [imperatif]` | menutup/mengarahkan | `Wes, santai wae.` | Sudah, santai saja. |
| `kok iso [X]?` | heran | `Kok iso murah ngene?` | Bagaimana bisa semurah ini? |
| `ojo [V] terus` | larangan | `Ojo overthinking terus.` | Jangan terus overthinking. |
| `mung [X] wae` | pembatasan | `Mung takon wae.` | Hanya bertanya. |
| `jan [Adj] pol` | intensitas ekspresif | `Jan rame pol.` | Sangat ramai. |

#### Leksikon Jawa terkurasi
| Istilah | Makna operasional | Label | Contoh alami |
|---|---|---|---|
| lur/sedulur | saudara/kawan dari Jawa | `R2,REG` | Monggo dicek, lur. |
| rek | kawan-kawan; sapaan Jawa Timur | `R2,REG` | Ayo budal, rek. |
| ambyar | hancur/berantakan secara emosional atau keadaan | `R1,REG` | Rencananya ambyar. |
| misuh | mengumpat, dari Jawa | `R2,REG,CAUTION` | Dia langsung misuh. |
| jos/joss | bagus/mantap | `R2,REG` | Rasanya joss. |
| apik | bagus/rapi, dari Jawa | `R1,REG` | Penataannya apik. |
| pol/poll | sangat/maksimal, Jawa | `R2,REG` | Ramainya pol. |
| pol-polan | habis-habisan/maksimal | `R2` | Promonya pol-polan. |
| budal | berangkat, Jawa | `R2,REG` | Ayo budal. |
| monggo/mangga | silakan, Jawa/Sunda | `R1,REG` | Monggo dicek. |
| aku | saya/aku | `R1,REG` | Aku lagi nang dalan. |
| kowe/koe | kamu; ngoko | `R2,REG,CAUTION` | Kowe wis mangan? |
| sampeyan | Anda/kamu, kesopanan menengah | `R1,REG` | Sampeyan badhe tindak pundi? |
| panjenengan | Anda hormat | `R1,REG` | Panjenengan sampun rawuh? |
| ora/ra | tidak | `R2,REG` | Aku ra ngerti. |
| wis/wes | sudah | `R2,REG` | Wes dikirim. |
| durung | belum | `R2,REG` | Durung rampung. |
| opo | apa | `R2,REG` | Iki opo? |
| piye | bagaimana | `R2,REG` | Piye kabare? |
| ngopo | mengapa/sedang apa | `R2,REG` | Lagi ngopo? |
| tenan | benar-benar | `R2,REG` | Apik tenan. |
| wae | saja | `R2,REG` | Santai wae. |
| ojo | jangan | `R2,REG` | Ojo kesusu. |
| mangan | makan | `R2,REG` | Ayo mangan. |
| cak | sapaan laki-laki Jawa Timur | `R2,REG` | Siap, Cak. |
| jancuk/jancok/cok | umpatan atau sapaan intim tertentu Jawa Timur | `V,REG,CAUTION` | Hindari di komunikasi merek. |
| ngalam | Malang dalam walikan | `R2,REG` | Arek Ngalam. |
| sam | mas dalam walikan Malang | `R2,REG` | Piye, Sam? |
| horeg | suara musik/sound system sangat keras dan bergetar | `R2,REG,T` | Sound horeg lagi ramai. |

### Sunda

Modul Sunda membedakan ragam **hormat**, **loma/akrab**, dan bentuk **kasar**. Slang Sunda remaja berfungsi untuk humor, ejekan, pujian, keakraban, kerahasiaan, serta identitas kelompok; pembentukannya mencakup clipping, akronim, blending, derivasi, onomatope, dan coinage.[cite:88] Gen Z Sunda di TikTok juga lebih sering memakai campur kode, pemanjangan vokal, pengulangan konsonan, dan intonasi hiperbolik dibanding generasi sebelumnya.[cite:89]

#### Tingkat tutur

| Level | Persona umum | Pemakaian AI |
|---|---|---|
| Hormat | `abdi–anjeun` | Pelanggan/orang baru; pilihan aman jika berbahasa Sunda. |
| Loma | `urang–maneh` | Teman akrab; `maneh` bisa tidak sopan tanpa kedekatan. |
| Kasar/intim tertentu | `aing–sia` | Jangan dipakai AI kepada pelanggan; pahami untuk klasifikasi. |

#### Tata bahasa Sunda

- Negasi: `teu` (loma), `henteu` (lebih hormat); belum: `can`; sudah: `geus`.
- Tanya: `naon` (apa), `saha` (siapa), `kumaha` (bagaimana), `iraha` (kapan), `sabaraha` (berapa), `naha` (mengapa).
- Partikel: `mah` menandai topik/kontras; `teh/téh` menandai topik/fokus; `atuh` membujuk/protes; `euy` seruan akrab; `da` memberi alasan; `ge/gé` berarti juga/penegas.
- Imperatif produktif `-keun` tampak pada `gaskeun`, yang secara pragmatis menjadi ajakan bersemangat untuk segera bertindak.[cite:92]
- Campur kode Indonesia–Sunda lazim di media sosial Jawa Barat dan dapat memperkuat identitas serta keterlibatan lokal.[cite:96]

#### Pola Sunda

| Pola | Fungsi | Contoh | Padanan Indonesia |
|---|---|---|---|
| `abdi bade [V]` | rencana sopan | `Abdi bade ningali unit.` | Saya hendak melihat unit. |
| `urang keur [V]` | aktivitas berlangsung | `Urang keur di jalan.` | Saya sedang di jalan. |
| `anjeun tos [V] acan?` | sudah/belum sopan | `Anjeun tos ningali acan?` | Apakah Anda sudah melihatnya? |
| `maneh geus [V] can?` | sudah/belum akrab | `Maneh geus dahar can?` | Kamu sudah makan belum? |
| `teu [V]` | negasi | `Teu ngarti.` | Tidak mengerti. |
| `kumaha, jadi [V]?` | konfirmasi | `Kumaha, jadi survei?` | Bagaimana, jadi survei? |
| `[X] mah [Y]` | topik/kontras | `Akses mah aman.` | Untuk akses, aman. |
| `ulah [V] atuh` | larangan lunak/protes | `Ulah kitu atuh.` | Jangan begitu. |
| `[Adj] pisan` | intensifikasi | `Saena pisan.` | Bagus sekali. |
| `gaskeun [V]` | ajakan cepat | `Gaskeun surveina.` | Ayo segera lakukan survei. |
| `da [alasan]` | memberi alasan | `Da lokasina deukeut.` | Karena lokasinya dekat. |
| `[X], euy` | seruan akrab | `Cakep euy.` | Bagus sekali. |

#### Leksikon Sunda terkurasi
| Istilah | Makna operasional | Label | Contoh alami |
|---|---|---|---|
| gaskeun/gaskan | ayo lanjutkan | `R2` | Gaskeun surveinya. |
| abdi | saya, hormat | `R1,REG` | Abdi bade naros. |
| anjeun | Anda/kamu, hormat | `R1,REG` | Anjeun kumaha damang? |
| urang | saya/orang, bergantung konteks | `R1,REG` | Urang keur di jalan. |
| aing | saya, sangat akrab/kasar menurut konteks | `R3,REG,CAUTION` | Jangan dipakai ke pelanggan. |
| maneh | kamu, loma; dapat tidak sopan | `R2,REG,CAUTION` | Maneh jadi datang? |
| sia | kamu, kasar | `R3,REG,CAUTION` | Jangan dipakai AI. |
| teu | tidak, loma | `R2,REG` | Teu acan. |
| henteu | tidak, lebih hormat | `R1,REG` | Henteu kunanaon. |
| geus | sudah | `R2,REG` | Geus dikirim. |
| can/acan | belum | `R1,REG` | Tos tuang acan? |
| naon | apa | `R2,REG` | Aya naon? |
| saha | siapa | `R2,REG` | Eta saha? |
| kumaha | bagaimana | `R1,REG` | Kumaha damang? |
| iraha | kapan | `R2,REG` | Iraha datang? |
| sabaraha | berapa | `R2,REG` | Sabaraha hargana? |
| mah | penanda topik/kontras | `R1,REG` | Akses mah aman. |
| teh/téh | penanda topik/fokus; juga sapaan perempuan dalam konteks lain | `R1,REG` | Ieu téh naon? |
| atuh | partikel membujuk/protes | `R1,REG` | Ulah kitu atuh. |
| euy | seruan akrab | `R2,REG` | Keren euy. |
| da | penanda alasan | `R2,REG` | Da deukeut. |
| pisan | sangat | `R1,REG` | Saena pisan. |
| punten | permisi/maaf | `R1,REG,SAFE` | Punten, bade naros. |
| mangga | silakan | `R1,REG,SAFE` | Mangga dilebet. |
| geulis | cantik | `R1,REG` | Geulis pisan. |
| kasep | tampan | `R1,REG` | Kasep pisan. |
| kehed | umpatan Sunda | `V,REG,CAUTION` | Jangan digunakan merek. |
| gaskeun | ayo segera lakukan | `R2,REG,NET` | Gaskeun surveina. |

## Peta Normalisasi

Peta berikut untuk **pemahaman**, bukan perintah mengganti secara buta. Normalisasi harus memperhatikan konteks, persona, dan emosi.

### Ejaan percakapan → netral

```yaml
normalization_map:
  aq: aku
  akoh: aku
  akuh: aku
  gw: saya
  gue: saya
  gua: saya
  gweh: saya
  lo: kamu
  lu: kamu
  loe: kamu
  elu: kamu
  doi: dia
  die: dia
  mreka: mereka
  mrk: mereka
  org: orang
  orang2: orang-orang
  tmn: teman
  temen: teman
  temen2: teman-teman
  kk: kakak
  kaka: kakak
  ade: adik
  bokap: ayah
  nyokap: ibu
  ortu: orang tua
  anak2: anak-anak
  ga: tidak
  gak: tidak
  nggak: tidak
  enggak: tidak
  kagak: tidak
  kgk: tidak
  gx: tidak
  g: tidak
  blm: belum
  belom: belum
  udh: sudah
  uda: sudah
  udah: sudah
  dah: sudah
  dh: sudah
  jgn: jangan
  jngn: jangan
  gpp: tidak apa-apa
  gapapa: tidak apa-apa
  knp: mengapa
  ngapa: mengapa
  gmn: bagaimana
  gimana: bagaimana
  bgmn: bagaimana
  dmn: di mana
  kmn: ke mana
  kpn: kapan
  brp: berapa
  siapa2: siapa-siapa
  apa2: apa-apa
  apaan: apa
  paansi: apa sebenarnya
  emg: memang
  emang: memang
  bgt: sangat
  beud: sangat
  bat: sangat
  bener: benar
  bnerr: benar
  salah2: salah-salah
  krn: karena
  karna: karena
  tp: tetapi
  tpi: tetapi
  dgn: dengan
  dg: dengan
  sm: dengan
  ama: dengan
  utk: untuk
  buat: untuk
  dr: dari
  dri: dari
  dlm: dalam
  yg: yang
  jg: juga
  jga: juga
  jd: jadi
  jdi: jadi
  klo: kalau
  kalo: kalau
  kl: kalau
  biar: supaya
  spy: supaya
  trs: terus
  trus: terus
  lalu: kemudian
  skrg: sekarang
  skr: sekarang
  kmrn: kemarin
  bsk: besok
  besoq: besok
  ntar: nanti
  entar: nanti
  bentar: sebentar
  bntr: sebentar
  lg: sedang
  lgi: sedang
  gi: sedang
  aj: saja
  aja: saja
  ajh: saja
  doang: saja
  doank: saja
  nih: ini
  ni: ini
  tuh: itu
  tu: itu
  gini: begini
  gitu: begitu
  gt: begitu
  gtuh: begitu
  kyk: seperti
  kek: seperti
  kayak: seperti
  pake: memakai
  pk: memakai
  pke: memakai
  mau: ingin
  mo: ingin
  mw: ingin
  pengen: ingin
  pingin: ingin
  blg: berkata
  bilang: berkata
  ngomong: berbicara
  ngasih: memberi
  kasih: memberi
  ngeliat: melihat
  liat: melihat
  denger: mendengar
  mikir: berpikir
  ngerti: mengerti
  paham: memahami
  tau: tahu
  gatau: tidak tahu
  gtw: tidak tahu
  krg: kurang
  lbh: lebih
  byk: banyak
  bnyk: banyak
  dikit: sedikit
  sdkt: sedikit
  smua: semua
  smuanya: semuanya
  bbrp: beberapa
  tiap2: tiap-tiap
  rumah2: rumah-rumah
  pelan2: pelan-pelan
  baik2: baik-baik
  hati2: hati-hati
  makasih: terima kasih
  mksh: terima kasih
  trims: terima kasih
  tq: terima kasih
  thx: terima kasih
  tengkyu: terima kasih
  maap: maaf
  maf: maaf
  monmaap: mohon maaf
  sori: maaf
  sorry: maaf
  plis: tolong
  please: tolong
  tlg: tolong
  met: selamat
  hbd: selamat ulang tahun
  moga: semoga
  smg: semoga
  aamiin: amin
  iy: iya
  iyaaa: iya
  iyap: iya
  yup: iya
  nope: tidak
  ok: baik
  okeh: baik
  okedeh: baiklah
  sip: baik
  mantul: sangat baik
  gas: lanjutkan
  gercep: bergerak cepat
  mager: malas bergerak
  gabut: tidak ada kegiatan
  baper: terbawa perasaan
  bucin: sangat tunduk karena cinta
  caper: mencari perhatian
  pansos: mencari popularitas sosial
  kudet: kurang mengikuti informasi terbaru
  kuper: kurang bergaul
  salfok: salah fokus
  salting: salah tingkah
  saltum: salah kostum
  curcol: curhat spontan
  japri: pesan pribadi
  wapri: WhatsApp pribadi
  komuk: kondisi wajah
  halu: berkhayal tidak realistis
  receh: humor ringan
  garing: tidak lucu
  gokil: sangat keren atau lucu
  santuy: santai
  woles: santai
  sabi: bisa
  kuy: ayo
  skuy: ayo
  ngab: bang
  bestie: sahabat
  cuan: keuntungan
  bokek: tidak punya uang
  boncos: rugi
  murce: murah
  mehong: mahal
```

### Aturan elongasi

- `bagussss`, `baguuus`, `bagusss!!!` → lemma `bagus`, fitur `intensity=high`, emosi positif.
- `nggakkk`, `gaaaa` → lemma `tidak`, fitur dapat berupa penolakan kuat, manja, frustrasi, atau bercanda.
- `wkwkwkwk`, `hahahaha`, `awokawok` → token tawa; jangan selalu dihapus karena membawa stance.
- Kapital penuh (`GAK MAU`) → kemungkinan penekanan/teriakan; normalisasi teks boleh menurunkan kapital tetapi harus menyimpan `emphasis=true`.

### Ambiguitas wajib

| Bentuk | Kemungkinan | Aturan disambiguasi |
|---|---|---|
| `gas` | bahan bakar; lanjutkan | Jika berdiri sebagai respons/imperatif, biasanya “lanjutkan”. |
| `receh` | uang pecahan; humor ringan | Dekat `jokes/lucu/ngakak` → humor. |
| `garing` | kering; tidak lucu | Dekat `jokes/lawakan` → tidak lucu. |
| `parah` | buruk; sangat bagus | Gunakan polaritas kata di sekitarnya. |
| `gila` | kondisi literal; intensifier | Hindari inferensi medis dari seruan. |
| `sakit` | nyeri; sangat hebat/menohok | `beat-nya sakit` bukan diagnosis. |
| `racun` | toksin; godaan membeli | Dekat produk/rekomendasi → godaan belanja. |
| `war` | perang; perebutan tiket/debat | Periksa objek: `war tiket`, `war komentar`. |
| `valid` | sah formal; setuju secara slang | Respons tunggal biasanya persetujuan. |
| `fix` | memperbaiki; pasti | Dalam kalimat Indonesia sebelum predikat → “pasti”. |
| `literally` | benar-benar literal; intensifier longgar | Jangan menganggap klaim pasti faktual. |
| `healing` | proses pemulihan; liburan | Konteks wisata → refreshing/liburan. |
| `goreng` | memasak; membesar-besarkan isu | Objek `isu/topik` → amplifikasi isu. |
| `rujak` | makanan; kritik massal | Bentuk pasif `dirujak netizen` → dikritik ramai. |
| `core` | inti; label estetika/meme | Setelah nama/konsep → himpunan ciri. |

## Lintas Daerah

### Jangan campur sembarang

- Jakarta + Jawa alami jika penutur memang bilingual: `Gue wis OTW, rek`; jangan dibuat-buat untuk merek nasional.
- Indonesia + Sunda lazim: `Kalau akses mah aman`; partikel `mah` sudah luas tetapi tetap membawa nuansa Sunda.
- Jawa + slang internet lazim: `Ojo overthinking terus`; struktur lokal dapat menampung istilah global.[cite:95]
- Sunda + slang internet lazim: `Gaskeun, jangan mager`; `-keun` memberi warna imperatif Sunda.[cite:92]
- Jangan mengganti setiap kata Indonesia dengan padanan daerah. Tingkat tutur, urutan kata, intonasi, dan identitas penutur juga menentukan kealamian.

### Fallback aman

Jika daerah terdeteksi tetapi tingkat tutur tidak jelas:

1. Gunakan bahasa Indonesia santai.
2. Pakai sapaan `Kak`, bukan `lu`, `kowe`, `maneh`, atau `sia`.
3. Sisipkan maksimal satu penanda lokal yang sopan, misalnya `monggo`, `mangga`, atau `punten`.
4. Untuk informasi transaksi, selalu kembalikan angka dan syarat ke bahasa Indonesia eksplisit.

## Kata Kasar dan Risiko

### Label keamanan

| Level | Definisi | Respons AI |
|---|---|---|
| `R1` | Informal aman | Boleh digunakan sesuai audiens. |
| `R2` | Sangat santai/berpotensi tidak profesional | Gunakan hanya jika relasi dan platform mendukung. |
| `R3` | Kasar/umpatan | Pahami; produksi hanya bila pengguna meminta konteks aman dan tidak menyerang. |
| `V` | Vulgar/tabu | Jangan gunakan untuk pemasaran atau layanan pelanggan. |
| `HATE-RISK` | Dapat menyerang identitas terlindungi | Jangan menghasilkan serangan; gunakan hanya untuk klasifikasi, edukasi, atau kutipan minimal. |

### Leksikon sensitif minimum

| Istilah | Arti/fungsi | Label | Catatan |
|---|---|---|---|
| `anjing/anying/anjg` | umpatan; literal hewan | `R3` | Variannya `anjir/anjay` lebih eufemistis tetapi tetap sensitif. |
| `bangsat/bgst` | umpatan keras | `V` | Jangan arahkan kepada orang. |
| `bajingan` | umpatan keras | `V` | Konteks konflik. |
| `kampret` | umpatan; literal kelelawar kecil | `R3` | Pernah memiliki muatan politik. |
| `brengsek` | orang/perilaku sangat buruk | `R3` | Serangan personal. |
| `sialan` | umpatan kesal | `R3` | Lebih ringan daripada sebagian vulgaritas. |
| `tai/taik` | kotoran; umpatan | `V` | Hindari merek. |
| `asu` | anjing dalam Jawa; umpatan | `V,REG` | Sangat konteks regional. |
| `jancuk/jancok` | umpatan Jawa Timur; juga sapaan intim tertentu | `V,REG` | Keakraban tidak membuatnya aman secara universal. |
| `kehed` | umpatan Sunda | `V,REG` | Hindari tanpa konteks lokal. |
| `goblok/tolol/bego` | menghina kecerdasan | `R3` | Jangan gunakan sebagai evaluasi orang. |
| `idiot` | hinaan kecerdasan | `R3` | Jangan inferensikan kondisi klinis. |
| `bacot` | omongan/banyak bicara; perintah diam | `R3` | Agresif. |
| `kontol/kntl` | genital; umpatan | `V` | Sangat vulgar. |
| `memek/mmk` | genital; umpatan | `V` | Sangat vulgar. |
| `ngentot/ngtd` | aktivitas seksual; umpatan | `V` | Sangat vulgar. |
| `lonte` | pelacur; hinaan misoginis | `V,HATE-RISK` | Jangan reproduksi sebagai serangan. |
| `bencong/banci` | istilah identitas/ekspresi gender yang sering menghina | `HATE-RISK` | Gunakan istilah identitas yang dipilih orang tersebut. |
| `autis` sebagai ejekan | penyalahgunaan istilah kondisi | `HATE-RISK` | Jangan gunakan untuk “cuek/aneh”. |
| `cacat` sebagai ejekan | penghinaan disabilitas | `HATE-RISK` | Gunakan hanya makna teknis yang tepat, bukan serangan. |
| `jamet` | stereotip kelas/gaya | `R2,CAUTION` | Bisa merendahkan kelompok sosial. |
| `norak/kampungan` | merendahkan selera/kelas/asal | `R3,CAUTION` | Hindari dalam komunikasi merek. |

Dataset ujaran abusif Indonesia memisahkan label abusive dan hate speech serta target individu/kelompok, agama, ras, kondisi fisik, gender/orientasi, dan tingkat keparahan; pemisahan ini lebih aman daripada menganggap semua kata kasar sebagai kategori yang sama.[cite:42]

## Contoh Kontekstual

### Percakapan teman

**Input:** `lu jadi cabut jam brp?`

**Pemahaman:** Teman menanyakan waktu keberangkatan; `cabut` berarti pergi, bukan mencabut benda.

**Jawaban alami:** `Sekitar jam tujuh. Ntar gue kabarin pas OTW.`

**Normalisasi:** `Kamu jadi pergi pukul berapa?` → `Sekitar pukul tujuh. Nanti saya kabari ketika berangkat.`

### WhatsApp prospek properti baru

**Terlalu formal:** `Apakah Saudara berminat untuk melaksanakan kunjungan lokasi?`

**Terlalu gaul:** `Bestie gaskeun site visit satset no debat ygy 🔥`

**Tepat:** `Kak, kalau berkenan kita bisa jadwalkan survei lokasi. Sabtu atau Minggu lebih nyaman?`

### WhatsApp prospek akrab

**Input:** `masih ada unit hook ga kak? spill cicilannya dong`

**Jawaban:** `Masih ada, Kak. Aku kirim simulasi cicilan dan denah unit hook-nya, ya. Boleh tahu rencana DP-nya supaya hitungannya lebih pas?`

### Caption properti Gen Z

`POV: niatnya cuma lihat-lihat, terus nemu rumah dua kamar dekat tol dengan cicilan yang masih masuk budget. Plot twist: langsung minta simulasi.`

### Caption informatif

`Fasadnya clean banget, tapi bukan cuma soal look. Tipe ini punya dua kamar, SHM, carport, dan akses sekitar 10 menit ke gerbang tol pada kondisi lalu lintas normal.`

### Komplain pelanggan

**Input:** `admin slowres bgt, chat gw di-read doang dari kmrn`

**Jangan jawab:** `Santuy dong, bestie.`

**Jawaban aman:** `Maaf, Kak, pesannya belum tertangani sejak kemarin. Saya cek sekarang dan akan memberi kabar paling lambat pukul 21.00 WIB.`

### Sarkasme

**Teks:** `Wah cepat banget, cuma tiga hari baru dibales.`

**Interpretasi:** Negatif/sarkastis. `cepat banget` tidak boleh diberi label sentimen positif tanpa konteks `cuma tiga hari baru`.

### Ambiguitas pujian

**Teks:** `Gila, rumahnya sakit banget.`

**Interpretasi paling mungkin:** Pujian hiperbolik terhadap desain/penampilan. Bukan laporan gangguan mental atau penyakit rumah.

### Penolakan halus

- Sangat langsung: `Gak mau.`
- Santai halus: `Kayaknya belum dulu, deh.`
- Profesional: `Terima kasih, tetapi untuk saat ini saya belum dapat melanjutkan.`

### Campur kode alami

`Honestly, concern gue cuma akses pas jam sibuk. Kalau itu clear, tipe ini paling worth it.`

### Campur kode berlebihan

`Honestly literally gue actually concern dan basically mau decide untuk proceed.`

**Perbaikan:** `Honestly, concern gue cuma satu: mau lanjut sekarang atau tunggu bulan depan.`

### Moderasi

**Input:** umpatan keras kepada admin.

**Respons:** Akui emosi tanpa meniru hinaan: `Saya paham Anda kesal karena belum mendapat kepastian. Tolong kirim nomor pemesanan agar saya cek sekarang.`

## Transformasi Gaya

**Pesan dasar:** `Unit ini masih tersedia. Harganya Rp650 juta. Apakah Anda ingin melihat lokasi?`

- `formal`: `Unit ini masih tersedia dengan harga Rp650 juta. Apakah Anda ingin menjadwalkan kunjungan lokasi?`
- `netral`: `Kak, unitnya masih tersedia di Rp650 juta. Mau jadwalkan survei lokasi?`
- `casual`: `Masih ready, Kak, harganya Rp650 juta. Kalau cocok, kita atur survei, ya.`
- `gen_z`: `Unitnya masih ready di Rp650 juta. Mau cek langsung biar gak cuma kepo?`
- `jaksel`: `Unitnya masih available di Rp650 juta. Kalau mau, kita schedule site visit.`
- `meme`: `POV: unit incaran ternyata masih ada. Harganya Rp650 juta—tinggal gas survei, bukan gas panik.`

## Prosedur Inferensi

```text
INPUT teks
1. Deteksi platform, audiens, relasi, wilayah, dan tujuan.
2. Tokenisasi tanpa langsung menghapus tawa, emoji, kapital, elongasi, atau tanda baca.
3. Cari frasa multi-kata lebih dahulu: “no debat”, “gak ada obat”, “red flag”, “orang have”.
4. Petakan bentuk ke lemma dan simpan fitur gaya: register, emosi, intensitas, temporalitas.
5. Lakukan disambiguasi memakai 3–10 token sekitar dan konteks percakapan.
6. Tentukan fungsi pragmatis: info, ajakan, penolakan, keluhan, sindiran, pujian, humor, serangan.
7. Jika menghasilkan respons, pilih mode dan intensitas; tiru tingkat formalitas, bukan kata kasar.
8. Verifikasi angka, nama, legalitas, klaim medis/hukum/keuangan; slang tidak boleh menutupi ketidakpastian.
9. Keluarkan teks serta metadata bila sistem mendukung.
```

### Skema anotasi

```json
{
  "surface": "gila ini murah parah, gas survei gak sih?",
  "normalized": "Ini sangat murah. Apakah sebaiknya kita melakukan survei?",
  "intent": ["praise", "invitation", "seek_agreement"],
  "sentiment": "positive",
  "sarcasm": false,
  "register": "casual_gen_z",
  "intensity": 3,
  "slang": [
    {"form": "gila", "lemma": "sangat", "sense": "intensifier_positive"},
    {"form": "parah", "lemma": "sangat", "sense": "intensifier_positive"},
    {"form": "gas", "lemma": "lanjutkan", "sense": "invitation"},
    {"form": "gak sih", "lemma": "bukankah", "sense": "seek_agreement"}
  ],
  "safety": {"level": "safe", "targeted_abuse": false},
  "temporal_terms": []
}
```

## Aturan Generasi

### Lakukan

- Cocokkan slang dengan usia dan hubungan sosial.
- Gunakan `Kak` untuk komunikasi penjualan lintas gender bila tidak tahu preferensi sapaan.
- Pertahankan ejaan merek, nama proyek, harga, dan detail teknis.
- Gunakan partikel untuk kehangatan: `ya`, `kok`, `nih`, `deh` secara moderat.
- Batasi campur kode Inggris pada istilah yang memang alami di domain.
- Tandai tren temporal (`T`) dan turunkan penggunaannya saat mulai terasa usang.
- Dalam normalisasi, simpan versi asli dan versi netral agar sinyal gaya tidak hilang.

### Hindari

- Memanggil semua orang `bestie`, `bund`, `cuy`, atau `ngab`.
- Menulis slang viral dalam dokumen hukum, akad, invoice, atau kebijakan.
- Menganggap `wkwk` selalu bahagia; tawa dapat menyamarkan canggung, sinis, atau tidak nyaman.
- Menganggap kata Inggris otomatis “Jaksel”. Gaya Jaksel memerlukan struktur campur kode yang masuk akal.
- Memakai dialek daerah sebagai karikatur komedi.
- Menormalisasi `ga` menjadi `tidak` bila `ga` merupakan bagian nama/akronim.
- Menghapus negasi atau intensitas saat membersihkan teks.
- Menggunakan istilah diagnosis (`autis`, `OCD`, `bipolar`, `skizo`) sebagai slang perilaku.

## Uji Kompetensi

### Pemahaman

1. `spill pricelist dong` → permintaan daftar harga, register santai.
2. `rumahnya gila sih` → kemungkinan pujian; butuh konteks visual/lanjutan.
3. `cepat banget, seminggu baru jadi` → kemungkinan sarkasme negatif.
4. `izin nyimak` → bergabung pasif dalam percakapan.
5. `gue cooked` → penutur merasa dalam masalah/kelelahan; tren internet.
6. `orang have mah bebas` → komentar bercanda/sinis tentang orang berada.
7. `yang pojok tuh cakep` → `tuh` menunjuk objek, `cakep` menilai positif.
8. `adminnya sat set` → pujian terhadap respons cepat.
9. `kontennya racun` → menggoda membeli/mencoba, bukan toksik literal.
10. `dia dirujak netizen` → dikritik ramai-ramai.

### Produksi

**Tugas:** Buat CTA WhatsApp untuk prospek baru.

- Lulus: `Kak, mau aku kirim simulasi cicilan atau sekalian jadwalkan survei?`
- Gagal karena terlalu formal: `Saudara dipersilakan mengajukan permohonan simulasi.`
- Gagal karena berlebihan: `Bestie gaskeun satset booking no debat ygy.`

### Normalisasi

- `gw blm bisa, ntar gw kabarin` → `Saya belum bisa. Nanti saya kabari.`
- `anjir murah parah` → `Sangat murah.` + metadata `surprise/high intensity`.
- `bsk jd survei g?` → `Apakah besok jadi melakukan survei?`
- `chat gue di-read doang` → `Pesan saya hanya dibaca tanpa dibalas.`
- `lowkey pengin cekot` → `Diam-diam saya ingin menyelesaikan pembelian.`

### Keamanan

- Umpatan tanpa target: klasifikasikan emosi, jangan otomatis hate speech.
- Umpatan kepada individu: `targeted_abuse=true`.
- Slur terhadap kelompok terlindungi: `hate_risk=true`; jangan parafrase menjadi serangan baru.
- Sarkasme tanpa umpatan tetap dapat abusif; evaluasi proposisi dan target.

## Pemeliharaan

1. Tambahkan istilah baru hanya setelah muncul di sedikitnya dua sumber/komunitas independen atau korpus internal yang memadai.
2. Simpan `first_seen`, `last_seen`, platform, wilayah, usia pengguna, makna, dan contoh asli yang dianonimkan.
3. Bedakan `slang stabil`, `tren aktif`, `niche`, `regional`, `retro`, dan `usang`.
4. Audit tiap 3 bulan untuk tren internet dan tiap 12 bulan untuk slang stabil.
5. Jangan memasukkan nama individu viral sebagai lema bila maknanya belum lepas dari peristiwa asal.
6. Catat perubahan makna; jangan menimpa sense lama.
7. Untuk data pelatihan, pisahkan `train/dev/test` berdasarkan waktu dan akun agar tidak terjadi kebocoran.
8. Seimbangkan contoh positif, negatif, netral, sarkastis, serta penggunaan literal vs slang.
9. Pertahankan lisensi sumber. Kamus Alay menyediakan leksikon normalisasi berskala ribuan, IndoCollex berlisensi MIT, sedangkan kamus ujaran abusif Ibrohim–Budi berlisensi CC BY-NC-SA 4.0.[cite:73][cite:79][cite:36]

## Batasan

- Tidak ada daftar slang yang benar-benar lengkap karena bentuk baru dapat muncul dan hilang dalam hitungan hari.
- Kepopuleran daring tidak menjamin penggunaan lisan nasional.
- Makna slang dapat berbeda antarplatform, kelas sosial, fandom, wilayah, dan kelompok pertemanan.
- Contoh tren 2026 dalam dokumen ini adalah snapshot per 6 Oktober 2026 dan perlu divalidasi ulang sebelum dipakai sebagai identitas merek jangka panjang.
- Dokumen ini cocok sebagai skill/instruction layer dan seed lexicon; untuk model produksi, gabungkan dengan korpus berizin, anotasi manusia, evaluasi regional, serta pemantauan drift.
