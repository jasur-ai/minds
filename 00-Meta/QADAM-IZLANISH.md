# QADAM-IZLANISH — 56 qadamning har biri uchun mustaqil izlanish (1-LOYIHA: emissiya auditi)

**Sana:** 2026-09-27 · **Tamoyil:** har bir qadam — alohida izlanish: savol → manbalar → dalillar → tahlil → xulosa → deliverable.

---

## 1. A1 — Muammoni bir jumlada shakllantirish

**Savol:** Hisobot jarayonining asosiy tarangligi nimada?
**Manbalar:** VM-783 (lex.uz/uz/docs/-7233437) · kun.uz (25.11.2025) · gazeta.uz (01.05.2026) · Sputnik (05.08.2026).
**Dalillar:** VM-783 hisob-kitob (calculation) usulini asosiy qilib belgilaydi; nazorat esa bosqichma-bosqich o'lchovga o'tmoqda; 2025-yilda ~59 000 huquqbuzarlik qayd etilgan; bitta tekshiruvda 750 korxona ko'rilib, 1 trln 386 mlrd so'm zarar va ~500 mansabdor jazo aniqlandi.
**Tahlil:** Jarima sababi ko'pincha «hisob» va «o'lchov» farqidan tug'iladi, lekin qaror matnida o'lchov xatosi chegarasi ko'rsatilmaydi.
**Xulosa:** Muammo texnik emas — institutsional: hisob-kitobdan o'lchovga o'tishda ishonch ko'prigi yo'q.
**Deliverable:** `Umumiy/00-UMUMIY.md`

## 2. A2 — Qamrovni raqamlash

**Savol:** Tizim nechta obyektni qamraydi va avtomatika qanchasini ko'radi?
**Manbalar:** VM-783 · SQ-844-IV · kun.uz (25.11.2025) · Anhor (08.09.2026).
**Dalillar:** 663 I toifa + 1 672 II toifa = **2 335 obyekt**; 69 avtomatik stansiya 44 korxonada; 347 stansiya budjet hisobidan o'rnatilishi rejalashtirilgan; HORIBA uskunalari partiyasi — 28 komplekt.
**Tahlil:** 2 335 obyektdan atigi ~2% avtomatik kuzatuvda — bo'shliq aynan o'lchov bosqichida.
**Xulosa:** Qamrov keng, avtomatika tor; o'rnatish bosqichma-bosqich bo'lishi kerak (aks holda sifat tushadi).
**Deliverable:** K5 grafik (`grafiklar/K5.svg`)

## 3. A3 — Rasmiy hujjatlar bazasini yig'ish

**Savol:** Qaysi hujjatlar tizimni boshqaradi va ular bir-biriga zid emasmi?
**Manbalar:** lex.uz: VM-783, 202-Nizom (lex.uz/uz/docs/-5367873), PF-16, VM-85 (lex.uz/uz/docs/-8068163), PQ-343 (lex.uz/uz/docs/-7847341), PQ-347, O'RQ-457; MJTK.
**Dalillar:** 202-Nizom 201-band 5× qoidasi; 301-band 36 oy / >15%; PQ-343: o'rnatish 01.03.2026, jamg'arma 900+548 mlrd so'm, uglerod 20%, platforma 01.09.2026, 7-ilova 8 talab; O'RQ-457 — 30 ish kuni; MJTK 10/60 kun.
**Tahlil:** Baza to'liq, ammo hujjatlar orasida muddat va koeffitsient uzilishlari bor (5× ↔ 70%, 30 kun ↔ 60 kun).
**Xulosa:** Huquqiy inventar tuzildi — ziddiyatlar ro'yxati keyingi qadamlar uchun kirish nuqtasi.
**Deliverable:** `Tadqiqotlar/Tadqiqot_0_Indeks.md`

## 4. A4 — O'lchov zanjirini tahlil qilish

**Savol:** Xato zanjirda qayerda tug'iladi va qayerda kattalashadi?
**Manbalar:** `Tadqiqot-1B` (noaniqlik zanjiri) · EPA CAMD · Lehigh tadqiqoti.
**Dalillar:** Etalon ±0,7%; oqim o'lchagichi (USM) 5–17%; namuna olish X ≤1%; S-probe 5–6%; Lehigh sinovlarida oqim tizimini almashtirish +20% va −9…−13% farq bergan.
**Tahlil:** Zanjir: kontsentratsiya × oqim × vaqt; noaniqlik asosan oqim bo'g'inida to'planadi, keyin koeffitsient orqali kattalashadi.
**Xulosa:** Zaif bo'g'in — **oqim**; nazorat shu bo'g'inga qaratilishi kerak.
**Deliverable:** `Tadqiqot-1B` (I qatlam)

## 5. A5 — Shovqin qavatini (baseline) o'lchash dizayni

**Savol:** Tizimning «shovqin» darajasi qanday o'lchanadi?
**Manbalar:** `Tadqiqot-1B` §F · TZ-1 v0.1 loyihasi.
**Dalillar:** 3 strata (I/II toifa, tarmoq, geografiya); 100–120 juftlik (parallel o'lchov); 8–12 hafta; maqsad — takrorlanuvchanlik va tizimli xatoni ajratish.
**Tahlil:** Hozirgi jarima tizimi shovqin darajasini bilmaydi — shuning uchun «tasodifiy» jarimalar ehtimoli bor.
**Xulosa:** Hukm chiqarishdan oldin o'lchov sifatini o'lchash kerak.
**Deliverable:** `Tadqiqot-1B` §F (TZ-1)

## 6. A6 — Normativ chegaralarni aniqlash

**Savol:** Talablar qanday chegaralarni belgilaydi va ular o'lchov xatosini hisobga oladimi?
**Manbalar:** VM-783 3-band · O'zMSt 194:2024 / 195:2024 · TIF TN 9027/8421.
**Dalillar:** Samaradorlik talablari ≥99,5% / ≥95% / ≥80%; uskunalar TIF TN kodlari bilan tasniflanadi; chegaralar norma sifatida beriladi.
**Tahlil:** Chegaralar bor, lekin ular «nuqta» sifatida yozilgan — kengaytirilgan noaniqlik (U) hisobga olinmagan.
**Xulosa:** Talabni o'lchov noaniqligi tili bilan qayta yozish kerak (JCGM 106 yondashuvi).
**Deliverable:** VM-783 3-band tahlili

## 7. A7 — Xato → pul zanjirini modellashtirish

**Savol:** O'lchov xatosi qanday qilib aniq summaga aylanadi?
**Manbalar:** 202-Nizom 201-band · gazeta.uz (13.05.2026) · spot.uz.
**Dalillar:** Koeffitsient 5× (5 barobar) qoidasi; kompensatsiya misollari — Muborak GQIZ 10 mlrd 834 mln so'm, Boysun 8,5 mlrd so'm.
**Tahlil:** Zanjir: o'lchov → koeffitsient → summa → qaytarish/jarima; har bosqichda xato kattalashadi, lekin e'lon qilinmaydi.
**Xulosa:** «Aniqlik» — texnik emas, iqtisodiy toifa: xato pulga aylanadi.
**Deliverable:** `Tadqiqot-1D` §D

## 8. A8 — Xalqaro taqqoslash

**Savol:** Rivojlangan tizimlarda o'lchov xatosi bilan qanday ishlanadi?
**Manbalar:** EPA CAMD (RATA) · 40 CFR 22 · JCGM 106 / ILAC G8 · ISO 17025 7.8.6 · EU AI Act 86-modda (02.08.2026) · OMB M-24-10 · Aarhus 9 / IED.
**Dalillar:** RATA tekshiruv chegarasi ≤10% / ≤7,5%; shikoyat muddati 30 kun; JCGM 106 uchinchi zona (noaniqlik oralig'i) yondashuvi; ILAC G8 U k=2 va w=U ≤2,3–2,5%; AI Act — avtomatik qaror ustidan tushuntirish talabi.
**Tahlil:** Umumiy trend: qaror + uning noaniqligi birga e'lon qilinadi; e'tiroz huquqi qaror bilan birga keladi.
**Xulosa:** Xalqaro andozalar UZ uchun ham qo'llaniladigan tayyor «shablon» beradi.
**Deliverable:** `Tadqiqot-1C`, `Tadqiqot-1D`

## 9. A9 — Bo'shliqlar inventarizatsiyasi

**Savol:** Qaysi nuqtalarda qoida jim turadi?
**Manbalar:** `Tadqiqot-1D` §D.3.
**Dalillar:** 1) «gacha» so'zi — muddatlar noaniq; 2) vaqt assimetriyasi — jazo darhol, qaytarish 2 yilga cho'ziladi; 3) voz kechish doirasi — qarzdorlikdan voz kechish kimga va qancha?
**Tahlil:** Uch bo'shliq bir-biriga bog'liq: noaniq muddat → nosimmetrik vaqt → tanlab qo'llash xavfi.
**Xulosa:** Uch bo'shliq — keyingi izlanishlarning asosiy ro'yxati.
**Deliverable:** `Tadqiqot-1D` §D.3

## 10. A10 — Himoya dizayni: uch zonali qoida

**Savol:** Qaror qanday qilib xatoni «jarima»dan ajratadi?
**Manbalar:** JCGM 106 · `Tadqiqot-1C` §C.
**Dalillar:** Zonalar L va L+U chegaralariga quriladi: 🟢 yashil — L+U dan past (yozib borish); 🟡 sariq — L va L+U oralig'i (jazo yo'q, tekshiruv); 🔴 qizil — L+U dan yuqori (jazo + tushuntirish).
**Tahlil:** Sariq zona — xato zonasining rasmiy tan olinishi; jarima faqat o'lchov ishonch bilan ko'rsatgan holatda beriladi.
**Xulosa:** Zona qoidasi — «adolat paketi»ning yadrosi.
**Deliverable:** `Tadqiqot-1C` §C · K7 grafik

## 11. A11 — Tushuntirish kartasi dizayni

**Savol:** Korxona nega jarima olganini texnik tilda qanday tushunadi?
**Manbalar:** `Tadqiqot-1C` §D · ISO 17025 7.8.6.
**Dalillar:** 12 maydonli karta: x̄ (o'lchangan), U (kengaytirilgan noaniqlik), L (chegara), qoida, kalibrovka dalili, laboratoriya, akkreditatsiya, sana, uskuna, zona, apellyatsiya yo'li, QR havola.
**Tahlil:** Karta qarorni tekshirsa bo'ladigan hujjatga aylantiradi; korxona o'z hisob-kitobini taqqoslashi mumkin.
**Xulosa:** Karta — shikoyatlar sonini kamaytiruvchi arzon vosita.
**Deliverable:** `Tadqiqot-1C` §D

## 12. A12 — Apellyatsiya oqimini loyihalash

**Savol:** E'tiroz bildirish yo'li qanday quriladi?
**Manbalar:** O'RQ-457 (30 ish kuni) · MJTK (10/60 kun) · `Tadqiqot-1C` §E.
**Dalillar:** 6 bosqich: T+0 xabarnoma → T+2 korxona tushuntirishi → 10 kun ko'rib chiqish → **soft-hold** (pul muzlatiladi, lekin jarima saqlanadi) → 30 ish kunida yakuniy xulosa → sud yo'li.
**Tahlil:** Apellyatsiya «shikoyat qutisi» emas — jarayonning rasmiy qismi; soft-hold hisob-kitob adolatini saqlaydi.
**Xulosa:** 6 bosqichli oqim O'RQ-457 muddatlariga to'liq sig'adi.
**Deliverable:** `Tadqiqot-1C` §E · K8 grafik

## 13. A13 — Oshkoralik metrikalarini belgilash

**Savol:** Tizimning o'zi qanday hisobot beradi?
**Manbalar:** `Tadqiqot-1C` §F.
**Dalillar:** 5 metrika: 1) signallar jami soni; 2) sariq zona ulushi; 3) qayta-o'lchov natijalari; 4) apellyatsiya statistikasi; 5) kalibrovka holati. Har chorak e'lon.
**Tahlil:** Nazorat organi o'z ishining natijalarini ochiq ko'rsatsa, ishonch o'sadi — yashirish riski kamayadi.
**Xulosa:** Choraklik «Aniqlik hisoboti» — tizimning o'z-o'zini tekshirishi.
**Deliverable:** `Tadqiqot-1C` §F · K10 grafik

## 14. A14 — Mustaqil qayta-o'lchov kvotasi

**Savol:** Tizimning xatosi mustaqil qanday tekshiriladi?
**Manbalar:** `Tadqiqot-1C` §F · ILAC MRA (UZ 14.09.2022).
**Dalillar:** Qizil signallarning **≥5%** i mustaqil (ILAC-MRA akkreditatsiyalangan) laboratoriyada qayta o'lchanadi.
**Tahlil:** Kvota kichik ko'rinadi, lekin tizimga «nazoratchi ham nazorat qilinadi» ishonchini beradi; xarajat nisbatan kichik.
**Xulosa:** 5% qayta-o'lchov — arzon ishonch sug'urtasi.
**Deliverable:** `Tadqiqot-1C` §F

## 15. A15 — Xarajat modeli (4 blok)

**Savol:** Tizim qancha turadi va qanday bosqichlarga bo'linadi?
**Manbalar:** `Tadqiqot-1D` §A · Applus · clarity.io · ESEGAS · Accio (2026 vendor sahifalari).
**Dalillar:** Uskuna: CEMS TIC $120–350k, CAAQMS $150–250k, PM $20–50k, FRM/FEM $15–40k, BAM ≈$30k; xizmat: O&M 5–15%, OPEX 3–6%. 4 blok: uskuna · o'rnatish/integratsiya · yillik xizmat · mustaqil tekshiruv. Baza hisob: 2 mlrd so'm, kurs 12 700 (S1/S2/S3).
**Tahlil:** Narxlar diapazoni keng — tanlov usuliga qarab 2–3 baravar farq qiladi.
**Xulosa:** 2 335 obyekt uchun faqat bosqichli model real (avval I toifa + ustuvor tarmoqlar).
**Deliverable:** `Tadqiqot-1D` §A · K4 grafik

## 16. A16 — Rag'bat zinapoyasini tiklash

**Savol:** Jarima va imtiyoz qanday bir tizimga ulanadi?
**Manbalar:** 202-Nizom 301-band · VM-85.
**Dalillar:** 5× jazo (o'rnatilmagan holat) ↔ 50% → 70% imtiyoz ↔ 36 oy muddat; >15% sharti.
**Tahlil:** Zinapoya korxonaga «o'rnatmaslik qimmat, o'rnatish foydali» signalini beradi, lekin oraliq holatlar yozilmagan.
**Xulosa:** Rag'bat zinapoyasi mavjud, uni ko'rinadigan qilish kerak.
**Deliverable:** `Tadqiqot-1D` §E · K2 grafik

## 17. A17 — PF-16 / VM-85 qaytarish zanjiri

**Savol:** To'langan jarima qanday qaytariladi?
**Manbalar:** gazeta.uz (02.03.2026) · `Tadqiqot-1D` §D.
**Dalillar:** 2 bosqich: 1-bosqich — qarzdorlikdan voz kechish; 2-bosqich — 70% qaytarish, 2 yil davomida; Qo'mita xulosasi 15 ish kuni; DXM/YAIDPX orqali o'tadi. 2026 I yarim yillikda jamg'arma 274 mlrd so'm (gazeta.uz 16.09.2026).
**Tahlil:** Mexanizm ishlaydi, lekin kam ma'lum — korxonalar huquqini bilmaydi.
**Xulosa:** Qaytarish zanjiri — mavjud, e'lon qilinishi kerak.
**Deliverable:** `Tadqiqot-1D` §D

## 18. A18 — Rag'bat bo'shliqlari tahlili

**Savol:** Imtiyoz tizimida nima yetishmaydi?
**Manbalar:** `Tadqiqot-1D` §D.3 · VM-85.
**Dalillar:** Uch bo'shliq: «gacha» muddat noaniqligi; 2 yil kutish vs darhol 5× jazo; imtiyoz faqat qarzdorlikka — yangi investitsiya uchun rag'bat yo'q.
**Tahlil:** Korxona uchun eng qimmat narsa — noaniqlik; aniq muddat bo'lsa, rejalashtirish mumkin bo'ladi.
**Xulosa:** Rag'bat siyosati «jarima yumshatish»dan «investitsiya rag'bati»ga o'tishi kerak.
**Deliverable:** `Tadqiqot-1D` §D.3

## 19. A19 — TZ-1 dizayni

**Savol:** Keyingi ilmiy qadam nima bo'ladi?
**Manbalar:** `Tadqiqot-1B` §F (TZ-1 v0.1).
**Dalillar:** TZ-1: maqsad — shovqin qavatini o'lchash; 3 strata; 100–120 juftlik; 8–12 hafta; natija — tizimli xato va takrorlanuvchanlik bahosi.
**Tahlil:** TZ-1 texnik hujjat sifatida 10.10.2026 gacha rasmiylashtirilishi rejalashtirilgan (56 qadamdan tashqarida — vaqtga bog'liq).
**Xulosa:** TZ-1 — loyihaning tadqiqotdan amaliyotga o'tish nuqtasi.
**Deliverable:** `Tadqiqot-1B` §F

## 20. A20 — Ma'lumot almashish rejimi

**Savol:** O'lchov ma'lumotlari qanday shaklda almashinadi?
**Manbalar:** `Tadqiqot-1B` §F · ISO 17025 7.8.6.
**Dalillar:** Anonimlashtirish qoidasi; xom ma'lumot + kalibrovka dalillari birga; xavfsizlik va egalik masalasi; hisobot talablari (7.8.6) — noaniqlik bayon qilinishi shart.
**Tahlil:** Format standart bo'lmasa, natijalarni taqqoslash mumkin emas — har laboratoriya o'z usulida yozadi.
**Xulosa:** Ma'lumot rejimi — taqqoslashning old sharti.
**Deliverable:** `Tadqiqot-1B` §F

## 21. A21 — Obyekt tanlash mezonlari

**Savol:** Qaysi obyektlar birinchi navbatda o'lchanadi?
**Manbalar:** `Tadqiqot-1B` §F · uza.uz (29.11.2025 — 9 sement zavodi) · VM-783 (toifa).
**Dalillar:** Mezonlar: toifa (I/II), tarmoq (energetika, sement, metallurgiya), geografiya (Toshkent + viloyatlar), stansiya turi (CEMS/CAAQMS). Misol: 9 sement zavodida avtomatik stansiyalar o'rnatilgan.
**Tahlil:** Tanlov tasodifiy emas — statistik jihatdan ifodali bo'lishi kerak (strata ichida).
**Xulosa:** Birinchi navbat — I toifa + yuqori emissiyali tarmoqlar.
**Deliverable:** `Tadqiqot-1B` §F

## 22. A22 — Risk registri

**Savol:** Tizim qanday xavflarga uchraydi va javob nima?
**Manbalar:** Maqola v3 §10 (5 qarshi fikr).
**Dalillar:** 1) «Ochiqlik nazoratni zaiflashtiradi» → javob: ishonch o'lchovli qarorni mustahkamlaydi; 2) «Korxona yashiradi» → qarama-qarshi signal (hajm/energiya); 3) «Reyting siyosiylashadi» → tendentsiya metodikasi; 4) «Xarajat og'ir» → bosqichlilik; 5) «AI xato qiladi» → shablon + manba, raqamni o'zgartirmaydi.
**Tahlil:** Har risk uchun texnik emas, jarayonli javob tanlangan — bu barqarorroq.
**Xulosa:** Risk yo'q qilinmaydi — boshqariladi va ochiq yoziladi.
**Deliverable:** Maqola v3 §10

## 23. A23 — Yashil yuvish riskini baholash

**Savol:** Imtiyoz qanday qilib «yashil yuvish»ga aylanmasligi mumkin?
**Manbalar:** Maqola v3 §10 · VM-85 shartlari.
**Dalillar:** Imtiyoz natijaga bog'lanmasa — korxona jarimadan qutulish vositasi sifatida foydalanadi; shart: 70% imtiyoz pasayish ko'rsatkichi bilan bog'lanadi.
**Tahlil:** O'lchanadigan natija bo'lmasa, imtiyoz — ko'rinmas subsidiya.
**Xulosa:** Imtiyoz = isbotlangan natija; aks holda berilmaydi.
**Deliverable:** Maqola v3 §10

## 24. A24 — Kuzatuv ro'yxati (yopilmagan savollar)

**Savol:** Qaysi savollarga javob bizga bog'liq emas?
**Manbalar:** gazeta.uz (24.03.2026) · PQ-343 · gazeta.uz (16.09.2026).
**Dalillar:** 6 savol: 2026 rasmiy hisobotlari; PM2,5 trendi (yanv-fev 2026 da pasayish qayd etilgan); PQ-343 platformasi (01.09.2026) holati; 347 stansiya ishga tushishi; ekopolitsiya amaliyoti; anaerob/WtE loyihalari.
**Tahlil:** Bu javoblar tashqi manbalar chiqishiga bog'liq — shuning uchun ro'yxat «kutish» rejimida.
**Xulosa:** Kuzatuv ro'yxati davriy tekshiriladi (har chorak).
**Deliverable:** Maqola v3 §13.3

## 25. A25 — Xarita tuzilishi

**Savol:** Loyihani bir varaqda qanday ko'rsatish mumkin?
**Manbalar:** `Loyiha-1-Xarita.html` · `Loyiha-1-Xarita.canvas` · `grafiklar/XARITA.svg`.
**Dalillar:** 10 tugun: markaz «EMISSIYA AUDITI — avtomatik monitoring tizimi» (o'lchov → himoya → pul); chapda — MUAMMO (2 335 obyekt), HUQUQIY BAZA (VM-783·202·PF-16·PQ-343), G'OYA (uch daftar), MINI-ILOVA (v2.9 jonli), MANBALAR (R/A/M); o'ngda — I. O'LCHOV (1-B), II. HIMOYA (1-C), III. PUL (1-D), TADQIQOTLAR 1–5, TZ-1; pastda — KEYINGI QADAMLAR (TZ-1 10.10.2026 → trilogiya sintezi → nashr tahriri).
**Tahlil:** Xarita loyihani 30 sekundda o'qish imkonini beradi — matnsiz ham mantiq ko'rinadi.
**Xulosa:** Xarita — «loyiha = map» talabining bajarilishi.
**Deliverable:** XARITA.svg + HTML

## 26. A26 — Manba darajalari va indeks bog'lash

**Savol:** Har bir raqam qanchalik ishonchli va qayerdan olingan?
**Manbalar:** `Tadqiqotlar/Tadqiqot_0_Indeks.md` · Maqola v2 (E-turkum).
**Dalillar:** Uch daraja: **R** — rasmiy (lex.uz, gazeta.uz rasmiy xabarlari), **A** — akademik (EPA, ScienceDirect), **M** — media (kun.uz, spot.uz); E-turkum E1–E20; yo'nalish A→B→C (indeks → tadqiqot → maqola).
**Tahlil:** Daraja ko'rsatilmagan raqam — tekshirib bo'lmaydigan raqam; shu sabab har bir da'vo kodlanadi.
**Xulosa:** Manba darajalari tizimi butun loyihada majburiy.
**Deliverable:** `Tadqiqot_0_Indeks.md`

## 27. B1 — Mavzu va taranglik

**Savol:** Maqolaning markaziy ziddiyati nimada?
**Manbalar:** gazeta.uz (01.05.2026) · `Tadqiqot-1B` · Maqola v1.
**Dalillar:** 2025-yilda ~59 000 huquqbuzarlik qayd etilgan; shu bilan birga oqim o'lchagichi noaniqligi 5–17% — ya'ni har bir jarima «raqam» ustiga qurilgan, raqam esa xato bilan keladi.
**Tahlil:** O'quvchi uchun eng kuchli taranglik: tizim ishlayapti, lekin «aniqlik» isbotlanmagan.
**Xulosa:** Maqola shiori — «raqam ishonchsiz bo'lsa, jazo ham adolatsiz».
**Deliverable:** v3 §1

## 28. B2 — Maqsadli o'quvchi

**Savol:** Maqola kim uchun yozilmoqda?
**Manbalar:** `Umumiy-Maqola-Tavsifi.md`.
**Dalillar:** 5 guruh: siyosat qiluvchi (qaror), muhandis (texnik ishonch), jurnalist (fakt), investor (xarajat/risk), talaba (o'rganish).
**Tahlil:** Har guruh uchun bir xil matn ishlamaydi — shuning uchun uch qatlamli tuzilma (I/II/III) tanlandi: har kim o'z qatlamidan boshlashi mumkin.
**Xulosa:** Tuzilma o'quvchi guruhlariga moslashtirilgan.
**Deliverable:** `Umumiy-Maqola-Tavsifi.md`

## 29. B3 — Tahrir qoidalari

**Savol:** Maqolada nimalar cheklanadi?
**Manbalar:** `00-INDEX.md` · `05-Promptlar/maqola1_prompt.md`.
**Dalillar:** Qoidalar: ziddiyat ochiq ko'rsatiladi; har da'vo manbali (sana + daraja); texnik implementatsiya yozilmaydi (u TZ hujjatida); jamlanma raqam «manbasiz» qoldirilmaydi.
**Tahlil:** Bu — qoralama intizomi: yakuniy nusxaga qadar hech narsa «yopilmaydi».
**Xulosa:** Qoidalar butun maqolaga bir xil qo'llanildi.
**Deliverable:** `00-INDEX.md`

## 30. B4 — Dalillar to'plami (raw v1)

**Savol:** Maqola uchun dalillar qanday to'plandi?
**Manbalar:** Maqola v1 (`Maqola-EGAZ-BALANS.md`, ~65 KB).
**Dalillar:** 3.1–3.10 bo'limlar bo'yicha hamma raqam, jadval va iqtibos to'plandi; §0/1/2.1–2.4 + Ilova C/E qamrab olindi; keyin bu material reestrga (B6) ajratildi.
**Tahlil:** «Avval to'plash, keyin tanlash» usuli — kutilmagan dalil yo'qolmaydi.
**Xulosa:** Xom to'plam saqlanadi (o'chirilmaydi) — tanlov keyin.
**Deliverable:** Maqola v1

## 31. B5 — Manba darajalari

**Savol:** Manbalar qanday tasniflanadi?
**Manbalar:** Maqola v1 §9 · v3 §12 · `Tadqiqot_0_Indeks.md`.
**Dalillar:** R — rasmiy (qonun, lex.uz, rasmiy xabar); A — akademik (EPA, ScienceDirect, JCGM/ILAC); M — media (kun.uz, spot.uz, gazeta.uz xabarlari). Har bir raqam yoniga daraja yoziladi.
**Tahlil:** Ziddiyat chiqsa, birinchi navbatda R daraja ustuvor, lekin ziddiyat yashirilmaydi.
**Xulosa:** Daraja tizimi ziddiyatlarni boshqarish vositasi.
**Deliverable:** v3 §12

## 32. B6 — Raqamlar reestri

**Savol:** Nechta raqam ishlatildi va ular qayerdan?
**Manbalar:** `Raqamlar-Reestr.md`.
**Dalillar:** Har yozuv: raqam · manba · sana · daraja. Misol: 347 stansiya — kun.uz, 25.11.2025, M; 2 335 obyekt — VM-783, R; RATA ≤10% — EPA CAMD, A.
**Tahlil:** Reestr «yagona haqiqat manbai» bo'lib, matn va grafik o'zaro tekshiriladi.
**Xulosa:** Har bir grafik raqami reestr bilan solishtirilgan.
**Deliverable:** `Raqamlar-Reestr.md`

## 33. B7 — Ziddiyatlar jadvali

**Savol:** Manbalar o'zaro qayerda qarama-qarshi?
**Manbalar:** v3 §3.3 · v1 §9.
**Dalillar:** 4 ziddiyat yozildi: 1) jarima darajalari (5× vs amaliy 50–70%); 2) muddatlar (30 ish kuni vs 60 kun); 3) «gacha» muddatlari; 4) qaytarish davri (2 yil) va jazo tezligi. 1 tasi taqqoslash orqali hal qilindi (muddat — MJTK/O'RQ-457 farqi izohlandi).
**Tahlil:** Ziddiyatni yashirmaslik — maqolaning ishonch manbai.
**Xulosa:** Qolgan 3 ziddiyat ochiq qoldirildi (qoralama qoidasi).
**Deliverable:** v3 §3.3

## 34. B8 — Abstrakt

**Savol:** Maqolani uch jumlada qanday bayon qilish mumkin?
**Manbalar:** v3 sarlavhaoldi.
**Dalillar:** Uch qatlam: I — o'lchov ishonchi; II — himoya (apellyatsiya/zona); III — pul (jazo/imtiyoz). Kalit raqamlar: 2 335 obyekt · 5–17% noaniqlik · 5× / 70% / 36 oy.
**Tahlil:** Abstrakt qatlamlarni emas, savolni oldinga chiqaradi: «qaror qanchalik ishonchli?».
**Xulosa:** Abstrakt tuzilma bilan bir xil o'qda yozildi.
**Deliverable:** v3 sarlavhaoldi

## 35. B9 — Yangi o'q: uch qatlam

**Savol:** Maqolaning yangi tuzilishi nimaga asoslangan?
**Manbalar:** v3 §2 · 1-B/1-C/1-D tadqiqotlari.
**Dalillar:** I qatlam — o'lchov (1-B); II qatlam — himoya (1-C); III qatlam — pul (1-D). Har qatlam alohida tadqiqot natijasiga tayanadi.
**Tahlil:** Uch qatlam o'qi o'quvchiga «muammo → yechim → oqibat» yo'lini ko'rsatadi.
**Xulosa:** Maqola tuzilmasi tadqiqot tuzilmasini takrorlaydi — izchillik ta'minlangan.
**Deliverable:** v3 §2

## 36. B10 — Kirish (hook)

**Savol:** O'quvchini birinchi xatda nima ushlaydi?
**Manbalar:** PQ-343 (o'rnatish majburiyati 01.03.2026) · v3 §1.
**Dalillar:** 2026-yil 1-martdan uskuna o'rnatish majburiyati kuchga kirdi; shu kundan o'lchov ma'lumoti pulga aylanadi (jamg'arma/kompensatsiya).
**Tahlil:** «1-mart: raqam qachon pulga aylandi» — aniq sana + oqibat: o'quvchi sababni darhol tushunadi.
**Xulosa:** Kirish hook'i huquqiy sanaga bog'landi.
**Deliverable:** v3 §1

## 37. B11 — I qatlam bo'limi (o'lchov)

**Savol:** O'lchov ishonchi nima bilan o'lchanadi?
**Manbalar:** `Tadqiqot-1B` · Lehigh sinovlari · EPA CAMD.
**Dalillar:** Oqim noaniqligi 5–17%; etalon ±0,7%; Lehigh: uskuna almashganda +20% / −9…−13% farq; RATA talabi ≤10% / ≤7,5%.
**Tahlil:** Raqamlar orasidagi farq «yomon niyat» emas — texnik xato bo'lishi mumkin; shuning uchun tekshiruv metodi muhim.
**Xulosa:** I qatlam xulosasi: ishonchni o'lchash mumkin — va kerak.
**Deliverable:** v3 §4 · K1/K3 grafiklar

## 38. B12 — II qatlam bo'limi (himoya)

**Savol:** Himoya mexanizmlari yetarlimi?
**Manbalar:** PQ-343 7-ilova (8 talab) · O'RQ-457 · JCGM 106.
**Dalillar:** 8 talabda e'tiroz bildirish tartibi to'liq yozilmagan; UZ mexanizmlari: 30 ish kuni, 10/60 kun; xalqaro andoza: uch zonali qoida.
**Tahlil:** E'tiroz huquqi bor, lekin «xato zonasi» rasmiy tan olinmagan — shu sabab korxona har doim qizil zonada.
**Xulosa:** II qatlamda taklif — zona qoidasi + tushuntirish kartasi.
**Deliverable:** v3 §5 · K7/K8 grafiklar

## 39. B13 — III qatlam bo'limi (pul)

**Savol:** Pul oqimi adolatli qurilganmi?
**Manbalar:** 202-Nizom 201/301-bandlar · VM-85 · `Tadqiqot-1D`.
**Dalillar:** 5× (o'rnatilmagan) ↔ 50% → 70% (imtiyoz) ↔ 36 oy; uch bo'shliq: «gacha», vaqt assimetriyasi, voz kechish doirasi.
**Tahlil:** Tizim bir vaqtda ham jazolaydi, ham rag'batlantiradi — lekin oraliq holatlar noaniq.
**Xulosa:** III qatlam taklifi: rag'batni natijaga bog'lash.
**Deliverable:** v3 §6 · K2/K9 grafiklar

## 40. B14 — Amaliyot bo'limi

**Savol:** 2026-yilda amalda nima bo'ldi?
**Manbalar:** Sputnik (05.08.2026) · gazeta.uz (13.05.2026) · spot.uz · gazeta.uz (16.09.2026) · uza.uz (29.11.2025).
**Dalillar:** 750 korxonada tekshiruv — 1 trln 386 mlrd so'm zarar, ~500 mansabdor jazo; Muborak 10 mlrd 834 mln, Boysun 8,5 mlrd kompensatsiya; 2026 I yarim yil jamg'arma 274 mlrd; 9 sement zavodi avtomatik stansiyalar.
**Tahlil:** Amaliyot ko'rsatadi: mexanizm ishlayapti, lekin jarayon ochiq emas — korxonalar sababni bilmaydi.
**Xulosa:** Maqolaga «jonli» dalillar qo'shildi.
**Deliverable:** v3 §8

## 41. B15 — Xarajat bo'limi

**Savol:** Tizim qancha turadi — o'quvchi buni biladimi?
**Manbalar:** `Tadqiqot-1D` §A · vendor sahifalari (Applus, clarity.io, ESEGAS, Accio).
**Dalillar:** 4 blok xarajat; CEMS TIC $120–350k; CAAQMS $150–250k; PM $20–50k; FRM/FEM $15–40k; yillik xizmat 5–15%/3–6%.
**Tahlil:** Xarajat raqamlari ochiq bo'lsa, «juda qimmat» degan e'tiroz tekshiriladi.
**Xulosa:** Xarajat bo'limi munozarani faktga o'giradi.
**Deliverable:** v3 §7 · K4 grafik

## 42. B16 — Muhokama

**Savol:** Qarshi fikrlarga javob bormi?
**Manbalar:** v3 §10.
**Dalillar:** 5 qarshi fikr + javob; alohida — yashil yuvish riski (imtiyoz natijaga bog'lanmasa).
**Tahlil:** Muhokama bo'limi maqolaning eng «halol» qismi — qarshi dalillar o'z nomi bilan yozilgan.
**Xulosa:** Muhokama xulosani emas, savolni mustahkamlaydi.
**Deliverable:** v3 §10

## 43. B17 — Xulosa va tavsiyalar

**Savol:** Amaliy takliflar kimga qaratilgan?
**Manbalar:** v3 §11.
**Dalillar:** 10 tavsiya; 9 tasi texnik emas — tashkiliy/siyosiy (ochiqlik, muddat, kvota, karta, hisobot).
**Tahlil:** Tavsiyalar «kim nima qiladi» shaklida — mas'ul organ ko'rsatilgan.
**Xulosa:** Xulosa qoralama emas, harakatlar ro'yxati.
**Deliverable:** v3 §11

## 44. B18 — Manbalar bo'limi

**Savol:** O'quvchi raqamlarni o'zi tekshira oladimi?
**Manbalar:** v3 §12 · E-turkum (E1–E20).
**Dalillar:** Har bir manba: nom · sana · havola · daraja; E12a/E12b, E13a, E16a–c kabi bo'lingan kodlar parallel manbalarni ko'rsatadi.
**Tahlil:** Manbalar bo'limi maqolani «tekshiriladigan hujjat»ga aylantiradi.
**Xulosa:** Manba tizimi talab darajasida.
**Deliverable:** v3 §12

## 45. B19 — Qoralama bo'limi

**Savol:** Nima ochiq qoldirildi va nega?
**Manbalar:** v3 §13.
**Dalillar:** Sarlavha variantlari; ishlatilmagan dalillar ro'yxati; ochiq savollar (kuzatuv); ziddiyatlarni hal qilish muallifga qoldirilgan.
**Tahlil:** Qoralama bo'limi «tugallanmagan» taassurot emas — bu tahrir bosqichi uchun yo'l xaritasi.
**Xulosa:** Yakuniy tanlov muallifda — talab bajarildi.
**Deliverable:** v3 §13

## 46. B20 — Sarlavha variantlari

**Savol:** Sarlavha o'quvchini ushlaydimi?
**Manbalar:** v3 §13.1.
**Dalillar:** 4 variant: (1) «raqam ishonchsiz bo'lsa…»; (2) savol shakli; (3) raqam bilan; (4) qarama-qarshilik shaklida.
**Tahlil:** Har variant boshqa auditoriyaga mos — tanlov muallifga berilgan.
**Xulosa:** Sarlavha tanlovi ochiq (qoralama qoidasi).
**Deliverable:** v3 §13.1

## 47. B21 — Grafiklar to'plami

**Savol:** Qaysi raqam qaysi grafik bilan ko'rsatildi?
**Manbalar:** `grafiklar/K1…K10.svg`.
**Dalillar:** K1 zanjir (o'lchov→koeffitsient→pul); K2 rag'bat zinapoyasi (5×↔70%); K3 noaniqlik diapazonlari; K4 uskuna narxlari (log); K5 qamrov (2 335/750/347); K6 pul oqimi (900/548/274); K7 uch zonali qoida; K8 apellyatsiya vaqt chizig'i; K9 vaqt assimetriyasi (jazo darhol, qaytarish 2 yil); K10 choraklik aniqlik hisoboti (5 metrika).
**Tahlil:** Har grafik matndagi bo'limga bog'langan (2→K1, 4→K3, 5→K7+K8, 6→K2+K9+K6, 7→K4, 8→K5+K10).
**Xulosa:** Grafiklar — matnning «isbot qismi».
**Deliverable:** `grafiklar/` (10 SVG)

## 48. B21b — Grafiklarni eksport qilish

**Savol:** Grafiklar chop etish/taqdimot uchun tayyormi?
**Manbalar:** `png/K1…K10.png` + `XARITA.png`.
**Dalillar:** SVG → PNG konversiya 1,4× shkalada, oq fon bilan; jami 11 fayl; matn ustma-ust tushmasligi va kesilmasligi tekshirildi (K3/K4/K5/K7/K8 tuzatildi); emoji ishlatilmagan (render mosligi).
**Tahlil:** PNG nusxalar Telegram/bot va hujjatlar uchun ishlatiladi.
**Xulosa:** Eksport qatori tugallandi: SVG (manba) + PNG (tarqatish).
**Deliverable:** `png/` (11 PNG)

## 49. B22 — O'qish ketma-ketligi

**Savol:** Maqolani qanday tartibda o'qish kerak?
**Manbalar:** v3 tuzilmasi.
**Dalillar:** Ketma-ketlik: matn → jadval → grafik → xulosa; har bo'lim shu ritmda qurilgan; botda 1→13 bo'lim sifatida yuradi.
**Tahlil:** Ritm o'quvchini «dalil → xulosa» yo'lidan olib boradi, orqaga sakrashni kamaytiradi.
**Xulosa:** O'qish ketma-ketligi rasmiy qoidaga aylandi.
**Deliverable:** v3 (tuzilma) · bot `/maqola`

## 50. B23 — Mobil va chop etish mosligi

**Savol:** Hujjat telefonda ham, chop etishda ham o'qiladimi?
**Manbalar:** `01-Maqola-Draft.html` (`@media` qoidalari).
**Dalillar:** Responsive tuzilma; print CSS; sarlavha balandligi mobil uchun cheklandi (@≤92px); jadval va grafiklar kengaytirilmaydi (scroll yo'q).
**Tahlil:** Hujjat asosiy o'quv qurilmasi — telefon; shu sabab o'lchovlar mobildan boshlandi.
**Xulosa:** Mobil muvofiqlik tekshirildi (skrinshot audit).
**Deliverable:** v3 HTML

## 51. B24 — Indeks va tavsifni yangilash

**Savol:** Hujjatlar orasidagi bog'lanish yangilanganmi?
**Manbalar:** `00-INDEX.md` · `Umumiy-Maqola-Tavsifi.md`.
**Dalillar:** «Versiyalar» jadvali (v1/v2/v3), uch qatlam o'qi tavsifi, havolalar botga (`/maqola`, `/xarita`) qo'shildi.
**Tahlil:** Indeks bo'lmasa, qaysi fayl oxirgi ekani yo'qoladi — shu xato bir marta yuz berdi (merge hodisasi).
**Xulosa:** Indeks — versiya nazoratining bir qismi.
**Deliverable:** `00-INDEX.md`

## 52. B25 — Annotatsiya va kalit so'zlar

**Savol:** Hujjat ilmiy jurnalga tayyormi?
**Manbalar:** v3 sarlavhaoldi.
**Dalillar:** Annotatsiya: muammo + uch qatlam + asosiy raqamlar; 8 kalit so'z (emissiya, o'lchov noaniqligi, monitoring, jarima, apellyatsiya, ishonch, raqamli platforma, O'zbekiston).
**Tahlil:** Kalit so'zlar izlanuvchanlikni oshiradi va mavzuni chegaralaydi.
**Xulosa:** Annotatsiya qoralama holatida ham to'liq.
**Deliverable:** v3 sarlavhaoldi

## 53. B26 — Yakuniy o'qish nusxasi

**Savol:** O'quv nusxasi bitta faylda bormi?
**Manbalar:** `01-Maqola-Draft.html` (60 195 bayt).
**Dalillar:** 13 bo'lim; §13 «QORALAMA — yakuniy tanlov muallifga»; matn + jadval + 10 grafik inline; botda 13 bo'lim sifatida ochiladi.
**Tahlil:** HTML nusxa — o'qish uchun; manba matn (v3) — tahrir uchun; ikkisi sinxron.
**Xulosa:** Nusxa talabga javob beradi (matn + raqam + grafik ketma-ketligi).
**Deliverable:** `01-Maqola-Draft.html`

## 54. C1 — Barcha fayllarni indeksga bog'lash

**Savol:** Uchta yo'nalish (maqola, loyiha, tadqiqot) indeksda bormi?
**Manbalar:** `Tadqiqotlar/Tadqiqot_0_Indeks.md` · `00-INDEX.md` (maqola, loyiha).
**Dalillar:** Maqolalar indeksi + Maqola1 indeksi + Loyiha indeksi yozildi; har bir fayl mas'ul bo'limga bog'landi; E-turkum va A/B/C/D tadqiqot kodlari kesishadi.
**Tahlil:** Indeks — «qaysi fayl qayerda ishlatiladi» xaritasini beradi.
**Xulosa:** C1 bajarildi — havolalar jonli.
**Deliverable:** indekslar (3 fayl)

## 55. C2 — Vault commit + push

**Savol:** Materiallar versiya nazoratidami?
**Manbalar:** `jasur-ai/minds` (main).
**Dalillar:** `0884c50` (PNG materiallar) → `a91dc66` (B-kodlar + maqola tuzatish) → merge'lar → `71e4709` (tiklash: sayqallangan grafiklar + B-kodlar); har commit push qilindi; TADQIQOT ziddiyati «96 @ 2026-09-26 23:40» qoidasi bilan hal qilinadi.
**Tahlil:** Bir marta noto'g'ri merge eski fayllarni qaytardi — saboq: pushdan keyin masofa kontenti tekshirilishi shart (endi qoida).
**Xulosa:** Vault yaxlit holatda; versiyalar tarixi bor.
**Deliverable:** GitHub `main` tarixi

## 56. C3 — Jonli API tekshiruvi (va o'qish nusxalarini taqdim etish)

**Savol:** Tizim jonli ishlayaptimi — bot, API, mini-ilova?
**Manbalar:** `minds-bot` worker · `/api/tadqiqot` · `/api/reja56` · `/api/maqola` · `/api/xarita` · mini-ilova (v2.9).
**Dalillar:** `/api/reja56` = 56 qadam; `/api/maqola` = 13 bo'lim; `/api/xarita` = 10 tugun; botda `/reja56`, `/qadam56 N`, `/maqola N`, `/xarita N` ishlaydi (yuborildi); mini-ilovada «Yakuniy materiallar» paneli (v-tadqiqot) ulandi; `/api/tadqiqot` — tadqiqot yozuvlari (96 yozuv kutilgan).
**Tahlil:** Barcha o'qish nusxalari bitta joydan (bot + mini-ilova) ochiladi — HTML nusxa talab qilinmaydi.
**Xulosa:** Jonli tekshiruv yakunlandi; keyingi bosqich — har bir qadamning izlanishi botda 1→56 ko'rinishi (shu fayl shu maqsadda yaratildi).
**Deliverable:** bot + mini-ilova (jonli)
