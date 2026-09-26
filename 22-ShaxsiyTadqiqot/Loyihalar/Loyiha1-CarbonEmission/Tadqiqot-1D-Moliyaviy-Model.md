---
aliases: [Moliyaviy model, Tadqiqot 1D, Financial model]
tags: [shaxsiy-tadqiqot, tadqiqot, tadqiqot]
created: 2026-09-26
updated: 2026-09-26
sektor: 22-ShaxsiyTadqiqot | Tadqiqot
tur: tadqiqot
holat: faol
sarlavha: Tadqiqot 1D — Moliyaviy model: xarajat, manba va PF-16 qaytarish zanjiri
qisqacha: C varianti — korxona/davlat kesimida to'rt blokli xarajat, rag'bat zinapoyasi (5× ↔ 36 oy ↔ 50% → 70%) va himoya qatlamining narxi
manba: workspace/01-Loyiha1-Carbon-Emission/Tadqiqotlar/Tadqiqot_1D_Moliyaviy_Model.md
---

# TADQIQOT №1-D — MOLIYAVIY MODEL: XARAJAT, MANBA VA QAYTARISH ZANJIRI
### C varianti — korxona/davlat kesimi · PF-16 qaytarish zanjiri · himoya qatlamining narxi

**Sana:** 2026-yil sentabr · **Holat:** tadqiqot/loyiha (kod yo'q, pilot yo'q, hisob-kitob — model)
**Asos:** `Tadqiqot-1B` (o'lchov raqamlari) + `Tadqiqot-1C` (himoya qatlami) + `Tadqiqot-0-Indeks.md` → «C. Moliyaviy model»
**Bog'liq:** A varianti = 1B · B varianti = 1C · **C varianti = shu fayl** — shu bilan 1-tadqiqot yo'nalishi yopiladi

---

## 0. Bir qarashda: besh raqam

| # | Nima | Raqam |
|---|---|---|
| 1 | **Xarajat 4 blokka bo'linadi** | uskuna · o'rnatish+integratsiya · yillik xizmat · mustaqil tekshiruv |
| 2 | **Emissiya monitoring stansiyasi (CEMS) — xalqaro benchmark** | bitta mo'ri uchun **$120 000–350 000** to'liq o'rnatilgan; yillik xizmat TIC ning **3–6%** i |
| 3 | **Fon stansiyasi (ambient)** | sertifikatlangan to'liq stansiya **$150 000–250 000**; yillik xizmat kapitalning **5–15%** i |
| 4 | **Rag'bat zinapoyasi (UZ, amaldagi)** | 5× jazo ↔ **36 oy** bo'lib to'lash ↔ qarzdorlikdan voz kechish ↔ **50% → 70%** qaytarish |
| 5 | **Himoya qatlamining narxi (1-C paketi)** | monitoring byudjetining taxminan **1–3%** i (baholash; quyida §F) |

> **Asosiy tezis:** UZda **jarima** kuchli, **rag'bat** esa yaxshi ishlab chiqilgan — lekin ikkisi **alohida hujjatlarda**. Korxona uchun qaror «jazo xavfi» va «qaytarish imtiyozi» ni **bitta raqamda** ko'ra olmaydi. Moliyaviy modelning vazifasi — shu ikkisini **bitta daftarga** keltirish.

---

## A. Xarajat tomoni — to'rt blok

### A.1 Blok 1: Uskuna (xalqaro narx oraliqlari)

| Qurilma | Narx (birlik) | Manba |
|---|---|---|
| Etalon (FRM/FEM) havo sifati monitori — bitta modda | **$15 000–40 000** | Clarity (2026) |
| PM analizator (BAM/TEOM) | **$25 000–60 000+** | Clarity |
| To'liq sertifikatlangan CAAQMS (bir necha gaz + zarralar) | **$150 000–250 000** | ESEGAS (2026) |
| Oddiy tizim (faqat PM2,5 + PM10) | **$20 000–50 000** | ESEGAS |
| Gazlar qo'shilganda (SO₂, NOₓ, CO, O₃) | **$80 000–150 000** | ESEGAS |
| **CEMS (bitta mo'ri, ko'p gazli, to'liq o'rnatilgan)** | **$120 000–350 000** (≈2/3 — uskuna) | Applus/Guide UK |
| Arzon CEMS (Xitoy ishlab chiqarishi) | **$8 000–33 000** | Accio (2026) |
| Arzon sensor (ko'rsatkich darajasi) | **$500–5 000** birlik-yil | Clarity; AirGradient $225–990 |

**UZ shartlari (majburiy):**
- Fon va emissiya stansiyalari **O'zMSt 194:2024** va **O'zMSt 195:2024** milliy standartlariga muvofiq bo'lishi shart;
- muvofiqlikni baholash va **metrologik tekshiruv** — Ekologiya qo'mitasi huzuridagi *Davlat ekologik sertifikatlashtirish va standartlashtirish markazi*;
- TIF TN kodlari: **9027** (stansiyalar/postlar), **8421** (chang-gaz va suv tozalash);
- chang-gaz tozalash samaradorligi: yangi uskuna **≥99,5%**, modernizatsiya **≥95%**; lokal suv tozalash **≥80%**;
- xarid shartida **respublika hududida texnik servis tashkil etish** talabi bor (ya'ni «arzon import + servissiz» modeli yopilgan).

### A.2 Blok 2: O'rnatish, integratsiya, tekshiruv
- o'rnatish va ishga tushirish (xalqaro: TIC ning ≈1/3 qismi — injiniring, loyiha, sertifikatlash);
- **geoaxborot bazasiga integratsiya** (PQ-343: 01.03.2026 gacha);
- metrologik tekshiruv + TT shartlariga muvofiqlik xulosasi;
- qurilish maydonlari uchun: **1000 m² dan katta uchastkalarda** fon stansiyasi — qurilishni davom ettirishning sharti.

### A.3 Blok 3: Yillik xizmat (OPEX)

| Tur | Yillik xarajat |
|---|---|
| CEMS | TIC ning **3–6%** i (kalibrovka gazlari, sarf materiallar, uchinchi tomon QA) |
| Fon stansiyasi (etalon) | kapitalning **5–15%** i |
| Etalon monitor (alohida) | >**$15 000**/yil (faqat bitta modda) |
| Arzon sensor | $5–200/yil |

### A.4 Blok 4: Mustaqil tekshiruv (1-C paketidan)
- RATA/QA amaliyoti: **yillik**, o'tish mezoni **nisbiy aniqlik ≤10%**; **≤7,5%** bo'lsa tekshiruv kamaytiriladi;
- 1-C dagi taklif: **qizil signallarning ≥5%** i mustaqil laboratoriya tomonidan qayta o'lchanadi;
- bu blok **hisobga olinmagan bo'lsa**, tizim «o'zini tekshirmaydi» — va 202-son Nizomning **3 yillik qayta hisob-kitobi** davlatga qaytib tushadi (kech).

---

## B. Korxona kesimi: uch stsenariy (shartli misol)

> **Farazlar (model):** I toifa korxona; 3 ta tashkil etilgan manba (mo'ri); kompensatsiya to'lovi bazasi — **yiliga 2 mlrd so'm** (shartli); kurs — **1$ = 12 700 so'm** (model uchun qat'iy, real kurs tebranadi).

### B.1 Uch stsenariy

| Stsenariy | Nima qilinadi | Birinchi yil xarajati | Huquqiy oqibat |
|---|---|---|---|
| **S1 — hech nima** | o'rnatilmaydi | 0 | **5×** kompensatsiya (202-son Nizom, 201-band) + koeffitsient **1×–20×** xavfi + qarzdorlik |
| **S2 — minimal** | fon monitoring stansiyasi | uskuna + o'rnatish + xizmat | qarzdorlikdan **voz kechish** + to'lovning **50%** igacha qaytariladi (2 yil ichida) |
| **S3 — to'liq paket** | stansiya + chang-gaz + lokal suv + kuzatuv posti | S2 + tozalash uskunalari | **70%** igacha qaytarish + kompensatsiyani **36 oy** bo'lib to'lash |

### B.2 Shartli hisob (faqat mantiqni ko'rsatadi)

| Stsenariy | Yillik to'lov (shartli) | 3 yillik sof yo'qotish |
|---|---|---|
| S1 (o'rnatilmagan) | 2 mlrd × **5** = 10 mlrd so'm | ≈ **30 mlrd so'm** + jarimalar |
| S2 (faqat fon stansiyasi) | 2 mlrd − 50% qaytarish = 1 mlrd so'm | ≈ 3 mlrd so'm + uskuna/nizom xarajati |
| S3 (to'liq paket) | 2 mlrd − 70% = 0,6 mlrd so'm | **≈ 1,8 mlrd so'm** + uskuna xarajati |

**Xulosa (model):** S2 va S3 orasidagi farq ko'p hollarda **tozalash uskunasining narxidan kichik** bo'lishi mumkin — ya'ni **rag'bat zinapoyasi ishlaydi**, lekin qaror qabul qiluvchi buni **faqat ikki hujjatni yonma-yon qo'yganda** ko'radi. Bu — C variantining asosiy amaliy xulosasi.

---

## C. Davlat kesimi: xarajat va manbalar

### C.1 Xarajat qatorlari (baholash)

| Qator | Mazmuni | Holat |
|---|---|---|
| 1 | **347 ta fon stansiyasi** xaridi (VM-783) | byudjet transferti orqali; summa xarid hujjatlarida |
| 2 | **Yagona ekologik onlayn platforma** (01.09.2026) | Ekologiya jamg'armasi hisobidan |
| 3 | **Ekologik monitoring milliy markazi** (sobiq ixtisoslashtirilgan tahliliy nazorat markazi negizida) | tashkiliy |
| 4 | Laboratoriya tarmog'i / metrologik tekshiruv | markaz zimmasida |
| 5 | **Mustaqil qayta-o'lchov kvotasi** (1-C) | yangi qator — tadqiqot taklifi |
| 6 | O'qitish va attestatsiya (davlat inspektorlari — har 3 yilda) | nizom darajasida |

### C.2 Manbalar (PQ-343 — fakt)

| Manba | Miqdor |
|---|---|
| Respublika budjetidan (2025) | **900 mlrd so'm** |
| Respublika budjetidan (2026, 8-ilova) | **548 mlrd so'm** — jumladan: kadastrlar 8 000 mln · ihota o'rmonlari 73 715 mln · o'rmon texnikasi 66 285 mln · «Yashil makon» 250 000 mln · sanitar tozalash 150 000 mln |
| Uglerod birliklari savdosidan | **20%** (2026-01-01 dan) |
| Kompensatsiya to'lovlari va jarimalardan ajratmalar (9-ilova) | 2026-dan: kompensatsiya **45/15**, jarimalar **50/37**, daraxt kesish 50/28,25 va h.k. (Ekologiya jamg'armasi / Maxsus jamg'arma) |
| Utilizatsiya yig'imi | **10%** (2026) → 2027-dan 100%/90% |

> **Diqqat:** yuqoridagi **548 mlrd so'm** — jamg'armaning 2026-yilgi **maqsadli** mablag'i; unda monitoring tarmog'i (347 stansiya) **ko'rsatilmagan** — ular alohida byudjet transferi orqali (VM-783). Ya'ni **ikki oqim** bor va ular bir hujjatda birlashtirilmagan.

### C.3 Neytrallik testi (sifat jihatidan)
Davlat tomoni uchun tizim **o'zini qoplashi** mumkin, agar:
1. 5× va 20× koeffitsientlar **aniq o'lchovga** tayansa (1-C paketi: shartli zona + karta + apellyatsiya);
2. qaytarish imtiyozi **ko'proq korxonani** o'rnatishga undasa (tushum kamayadi, lekin baza kengayadi);
3. platforma xarajati **Ekologiya jamg'armasi**dan, undirish esa **kompensatsiya**dan keladi (turli cho'ntaklar — buxgalteriya jihatidan muhim).

---

## D. PF-16 → VM 85-son: qaytarish zanjiri (faktlar)

### D.1 Ikki bosqich

| Bosqich | Shart | Imtiyoz |
|---|---|---|
| **1-bosqich** | atmosfera havosi ifloslanishi **fon monitoring stansiyasi** o'rnatilgan | (a) kompensatsiyadan shakllangan **qarzdorlikdan voz kechish**; (b) respublika budjetiga yo'naltirilgan kompensatsiyaning **50%** igacha — **2 yil** davomida qaytarish |
| **2-bosqich** | kelgusi **1 yil** ichida **chang-gaz** va **lokal suv tozalash** uskunalari ham o'rnatilgan | kompensatsiyaning **70%** igacha — **2 yil** davomida qaytarish |

**Tartib:** imtiyoz **Ekologiya qo'mitasining xulosasi** asosida; ariza — DXM yoki **YAIDPX (my.gov.uz)** orqali. VM 85-son Nizomda: hujjatlar (2-bob), xabarnomani ko'rib chiqish (3-bob), rag'batlantirish (4-bob). **Avtomatik voz kechish**: fon stansiyasi o'rnatilgani aniqlansa, qo'mita qarzdorlikdan **avtomatik** voz kechadi va korxonani xabardor qiladi.

### D.2 Uchinchi imtiyoz (hujjatda kam ko'rinadi)
202-son Nizomga **301-band**: stansiyalar + chang-gaz + lokal suv + kuzatuv posti o'rnatgan **yoki shartnoma bo'yicha 15% dan ortiq to'lov qilgan** I/II toifa subyektlarga kompensatsiyani **teng ulushlarda 36 oy davomida** to'lashga ruxsat etiladi.
**Bu — likvidlik imtiyozi:** korxona bir kunda 2 mlrd emas, oyiga ≈55 mln so'm to'laydi (shartli hisob).

### D.3 Zanjirdagi uch bo'shliq
1. **50% va 70% — «gacha»** (ya'ni yakuniy foiz xulosa bilan belgilanadi) → korxona **oldindan** aniq raqamni bilmaydi. *Taklif:* e'lon qilingan shkala (1-C dagi «tushuntirish kartasi» tamoyili).
2. **Qaytarish 2 yilga cho'zilgan**, holbuki 5× jazosi **darhol** boshlanadi → diskontlangan qiymatda rag'bat sezilarli zaiflashadi. *Taklif:* birinchi 6 oyda tezlashtirilgan qaytarish.
3. **Voz kechish «qarzdorlikka» tegishli, joriy to'lovga emas** → ta'sir muddati cheklangan. *Taklif:* imtiyozni joriy yil to'loviga ham yoyish.

---

## E. Rag'bat zinapoyasi — bitta jadvalda

| Qadam | Holat | Pul ta'siri | Asos |
|---|---|---|---|
| **0** | hech nima | kompensatsiya **5×**; koeffitsient **1×–20×**; 20× (normativ yo'q bo'lsa) | 202-son Nizom 201-band |
| **1** | fon stansiyasi | qarzdorlikdan voz kechish + **50%** qaytarish (2 yil) | PF-16; VM 85-son |
| **2** | + chang-gaz + lokal suv | **70%** qaytarish (2 yil) | PF-16; VM 85-son |
| **3** | + to'liq paket | kompensatsiyani **36 oy** bo'lib to'lash | 202-son Nizom 301-band |

**Muhim:** 1–3 qadamlar **o'lchov aniqligiga bog'liq emas**. Ya'ni korxona uskunani o'rnatadi, lekin **hisoblangan summa** qanday chiqqanini bilmaydi (1-C §C) — natijada 50%/70% *noto'g'ri bazadan* hisoblanishi mumkin. **Bu — 1-C va 1-D ning kesishish nuqtasi.**

---

## F. Himoya qatlamining narxi (1-C paketi)

| Element | Xarajat turi | Baholash |
|---|---|---|
| 12 maydonli **tushuntirish kartasi** | platforma ichida (avtomatik generatsiya) | ≈ **0** qo'shimcha (dastur qatori) |
| **Apellyatsiya oqimi** | mavjud muddatlar (10 kun / 30 ish kuni) ishlatiladi | ≈ **0** yangi institut |
| **Mustaqil 5% qayta-o'lchov** | dala o'lchovlari + laboratoriya | qizil signallar soniga bog'liq (formula quyida) |
| **Choraklik Aniqlik hisoboti** | tahlil (2–3 mutaxassis-kun / chorak) | ≈ **1%** boshqaruv xarajati |

**Kvota tannarxi (formula, narx emas):**
`Kvota xarajati = (qizil signallar soni × 5%) × (1 qayta-o'lchov tannarxi)`
- 1-C dagi taklif: **≥20 holat/chorak** — ya'ni kichik hajmda ham hisobot ma'noli bo'ladi;
- uchinchi tomon QA xalqaro amaliyotda **yillik xizmat xarajatining bir qismi** (CEMS OPEX 3–6% ichida) — demak kvota **yangi byudjet qatori emas, mavjud OPEX ichida** joylashtirilishi mumkin.

> **1-C ning asosiy moliyaviy xulosasi:** himoya qatlami **arzon** (byudjetning ~1–3% i), lekin **to'lamaslik narxi** katta: noto'g'ri bazadan hisoblangan 50%/70% qaytarish va bekor qilingan qarorlar. Oshkorlik — xarajat emas, **risklarni kamaytirish**.

---

## G. Halol cheklovlar

1. **UZ narxlari ochiq emas:** 347 stansiya va platforma xarid summalari xarid hujjatlari/xarid.uzex.uz da; bu faylda **xalqaro benchmarklar** ishlatilgan.
2. **Barcha hisob-kitoblar — model**, rasmiy smeta emas: bazaviy to'lov (2 mlrd so'm), kurs va toifa **shartli** qabul qilingan.
3. **«50%/70% gacha»** iborasi yakuniy foizni kafolatlamaydi — xulosa bilan belgilanadi.
4. **36 oy bo'lib to'lash** va **qaytarish** bir vaqtda qo'llanishi mumkinmi — hujjatlarda aniq misol yo'q (huquqiy tekshiruv kerak).
5. **Mahalliylashtirish** talabi import narxini o'zgartiradi (VM-783: TT shartlari + mahalliylashtirish topshirig'i) — benchmark narxlar **yuqori chegara** bo'lishi mumkin.
6. **Valyuta va inflyatsiya** modelga kiritilmagan; 2 yilga cho'zilgan qaytarish real qiymatda kamayadi (diskont stavkasi yo'q).
7. **Soliq tomoni** ko'rib chiqilmagan (imtiyoz soliqqa tortiladimi — alohida savol).

---

## H. Xulosalar (yangi)

1. **Tizim ikki hujjatga bo'lingan:** jazo (202-son Nizom) va rag'bat (PF-16 / VM 85-son). Korxona ularni birlashtirmaguncha **qaror qabul qilmaydi** — bu moliyaviy emas, **axborot** muammosi.
2. **Rag'bat zinapoyasi to'rt qadamli** va to'liq shakllangan: 5× ↔ 36 oy ↔ voz kechish ↔ 50%/70%.
3. **Aniqlik — moliyaviy kategoriya:** o'lchov xatosi koeffitsientni, koeffitsient summani, summa esa qaytarish foizini o'zgartiradi. Uch marta ko'paytirilgan xato.
4. **Himoya qatlami arzon:** 1-C paketi monitoring byudjetining taxminan **1–3%** i — va u **mavjud OPEX ichida** joylashadi (yangi institut talab qilinmaydi).
5. **C varianti bilan 1-tadqiqot yo'nalishi yopiladi:** o'lchov noaniqligi (1B) → himoya qatlami (1C) → moliyaviy asos (1D) bir zanjirga ulandi.

**Keyingi bosqich (yo'nalishdan tashqari):** `TZ-1` ni rasmiylashtirish (obyekt tanlash mezonlari, ma'lumot almashish rejimi) — muddat **2026-10-10**; undan keyin natijalarni `Goya-Uch-Daftar.md` ga sintez qilish.

---

## MANBALAR (bu fayl uchun yangi)

| Kod | Manba | Sana | Daraja | Havola |
|---|---|---|---|---|
| D1 | **PF-16** «O'zbekiston-2030» strategiyasini «Atrof-muhitni asrash va yashil iqtisodiyot yilida» amalga oshirish dasturi — birinchi bosqich: qarzdorlikdan voz kechish + kompensatsiyaning **50%** igacha (2 yil); ikkinchi bosqich: **70%** igacha | 30.01.2025 | R | https://lex.uz/docs/-7369703 |
| D2 | **VM 85-son** «Sanoat korxonalarining atrof-muhitga salbiy ta'sirini kamaytirish harakatlarini rag'batlantirish…» — ikki bosqich, **xulosa** asosida, DXM/YAIDPX orqali; 4-bosqichda **avtomatik voz kechish** | 28.02.2026 | R | https://lex.uz/uz/docs/-8068163 |
| D3 | gazeta.uz — PF-16 mexanizmi izohi: 50% (1-bosqich), **70%** (2-bosqich, monitoring + chang-gaz + lokal suv uskunalari o'rnatilganda) | 10.02.2025 | M | https://www.gazeta.uz/oz/2025/02/10/insurance/ |
| D4 | **VM 783-son** — 347 ta avtomatlashtirilgan kichik stansiya; TT shartlari *Davlat ekologik sertifikatlashtirish va standartlashtirish markazi* tomonidan; **O'zMSt 194:2024** va **O'zMSt 195:2024** ga muvofiqlik; TIF TN 9027/8421; chang-gaz **≥99,5%** (yangi) / **≥95%** (modernizatsiya), lokal suv **≥80%**; xarid shartida **texnik servis** talabi | 25.11.2024 | R | https://lex.uz/uz/docs/-7233437 |
| D5 | **202-son Nizom**, **201-band** — uskunalarni o'rnatmagan I/II toifa subyektlar uchun kompensatsiya **5 baravar**; **301-band** — o'rnatganlar yoki 15% dan ortiq to'lov qilganlar uchun **36 oy** bo'lib to'lash | 12.04.2021 / VM 783 bilan | R | https://lex.uz/uz/docs/-7233437 |
| D6 | **PQ-343**, 12–14-bandlar va 8–10-ilovalar — 2025: 900 mlrd so'm; 2026: **548 mlrd** (taqsimot bilan); uglerod savdosidan 20%; 9-ilova ajratmalari (45/15; 50/37; …) | 18.11.2025 | R | https://lex.uz/uz/docs/-7847341 |
| D7 | kun.uz (ekologik farmon tahlili) — **347 ta stansiya to'g'ridan-to'g'ri shartnomalar** asosida xarid; **Air Monitoring Uzbekistan** platformasi; 10 ta Toshkent stansiyasi qo'mitaga o'tadi | 25.11.2025 | M | https://kun.uz/news/2025/11/25/toshkentda-ekologik-vaziyatni-yaxshilash-uchun-maxsus-komissiya-tuzildi |
| D8 | Anhor — «Zamin» fondi ko'magida **28 ta** HORIBA stansiyasi; 347 ta qo'shimcha stansiya; ma'lumotlar yagona tizimga | 08.09.2026 | M | https://anhor.uz/uzl/ekologiya/ozbekistonda-havo-sifati-monitoring-kengaytirish |
| D9 | Senat ma'lumoti (SQ-844-IV) — **69 ta avtostatns** (44 korxona)+27 kuzatuv punkti; 26 shaharda 74 statsionar punkt, shu jumladan 8 avtomatik; Toshkentda 2 stansiya (PM10/PM2,5, «Zamin» fondi) | 20.12.2023 | R | https://lex.uz/docs/-6733055 |
| D10 | Applus — CEMS: bitta mo'ri uchun to'liq o'rnatilgan **$120 000–350 000**, ≈2/3 uskuna; yillik xizmat **3–6%**; qaytim muddati 18–24 oy | 2025 | A | https://www.applus.com/global/en/ei/expertise/faqs/continuous-emission-monitoring-systems-(cems):-a-strategic-primer-for-industrial-decision-makers |
| D11 | Clarity — etalon monitor **$15 000–40 000**; yillik xizmat **>$15 000**; BAM/TEOM **$25 000–60 000**; arzon sensorlar $500–5 000 | 2026 | A | https://www.clarity.io/blog/cost-of-air-quality-monitoring-a-pricing-guide-for-cities-agencies |
| D12 | ESEGAS — CAAQMS narxlari: PM2,5+PM10 **$20 000–50 000**; gazlar bilan **$80 000–150 000**; sertifikatlangan **$150 000–250 000**; yillik xizmat kapitalning **5–15%** i | 2026 | A | https://esegas.com/continuous-ambient-air-quality-monitoring-system-price-guide/ |
| D13 | Accio — CEMS o'rtacha **$50 000–150 000**; arzon tizimlar **$8 000–33 000** | 2026 | M | https://www.accio.com/business/continuous-emission-monitoring-system-price |
| D14 | EPA CAMD «Relative accuracy» — **yillik RATA**, mezon **≤10%**; **≤7,5%** bo'lsa chastota kamayadi; muvaffaqiyatsiz RATA → ma'lumot «havo» hisoblanadi va o'rniga qo'yiladigan usul qo'llanadi | 2022 | R | https://www.epa.gov/system/files/documents/2022-05/Monitoring%20Insights-%20Relative%20Accuracy.pdf |
| D15 | ScienceDirect (Pokiston tajribasi) — etalon BAM ≈**$30 000**, o'rnatish $150–200, xizmat $150–200/yil; arzon sensor ≈$800 | 2025 | A | https://www.sciencedirect.com/science/article/pii/S0160412025002727 |
| D16 | gazeta.uz / Sputnik — 2025-yilda **59 mingdan ortiq** ma'muriy huquqbuzarlik (2024: 47 ming); jarima va kompensatsiyani **yagona sanksiya**ga birlashtirish taklifi | 30.04–05.05.2026 | M | https://www.gazeta.uz/oz/2026/05/01/eco/ · https://oz.sputniknews.uz/20260501/ekologiya-57258702.html |

> **Daraja izohi:** R — rasmiy hujjat/regulyator · A — akademik yoki sanoat tahlili · M — media. Narx benchmarklari (D10–D13) **xalqaro**; UZ shartnoma summalari ochiq xarid hujjatlarida tekshirilishi kerak (D7, §G.1).
