---
aliases: [Shovqin qavati davomi, Tadqiqot 1B, Noise floor part 2]
tags: [shaxsiy-tadqiqot, tadqiqot, tadqiqot]
created: 2026-09-26
updated: 2026-09-26
sektor: 22-ShaxsiyTadqiqot | Tadqiqot
tur: tadqiqot
holat: faol
sarlavha: Tadqiqot 1B — Shovqin qavati: to'rt bo'shliq to'ldirildi
qisqacha: 1-tadqiqotning yopilmagan savollari — operator kesimidagi raqamlar, kalibrovka bozori, standartga yo'l, amaldagi o'rnatish holati
manba: workspace/01-Loyiha1-Carbon-Emission/Tadqiqotlar/Tadqiqot_1B_Shovqin_Qavati_Davomi.md
---

# TADQIQOT №1-B — SHOVQIN QAVATI: TO'RT BO'SHLIQ TO'LDIRILDI
### 1-tadqiqot «halol cheklovlar»ida qolib ketgan savollarga ikkinchi qatlam javob

**Sana:** 2026-yil sentabr · **Holat:** tadqiqot (kod yo'q, pilot yo'q)
**Asos:** `Tadqiqot-1-Shovqin-Qavati.md` §6 — to'rtta yopilmagan savol
**Bog'liq:** `Tadqiqot-0-Indeks.md` → «Keyingi qadam: A → B → C», **A varianti shu fayl bilan boshlanadi**

---

## 0. Nima o'zgardi 1-tadqiqotdan keyin (bir qarashda)

1- tadqiqot «yagona raqam yo'q, oraliq ±2%–11%» dedi va to'rtta bo'shliqni yozib qo'ydi. Bu ikkinchi qatlam ularning **uchtasini qisman, bittasini to'liq** yopdi va **bitta yangi xavf** topdi:

| # | Bo'shliq (1-tadqiqot §6) | Bu faylda holati | Yangi javob (qisqa) |
|---|---|---|---|
| 1 | **UZ uchun aniq raqam yo'q** | ⚠️ qisman | UZ raqami hali yo'q, lekin **operator kesimidagi raqamlar topildi**: oqim o'lchagichi (eng zaif nuqta) — bitta yo'lda **5–17%**, X-shaklida **0,5–1%**; etalonning o'zi **±0,7%**; RATA «etaloni» ham **5–6%** xato qiladi |
| 2 | **O'z DSt 3605:2022 matni to'liq yo'q** | ✅ **yo'l topildi** | Standart matni kerak emas — **texnik topshiriqni Kim yozishi aniqlandi**: Ekologiya qo'mitasi huzuridagi *Davlat ekologik sertifikatlashtirish va standartlashtirish markazi* (VM-783). Metodikani **shu TT orqali** kiritish mumkin |
| 3 | **Uskunalar amalda o'rnatildimi** | ✅ **birinchi dalil** | «IES» AJ: To'raqo'rg'on, Talimarjon, Angren IES, Toshkent va Farg'ona IEM — o'rnatildi; 3 tasi **geoaxborot bazasiga integratsiya qilindi**. Lekin bu **namuna**, umumiy qamrov yo'q |
| 4 | **Kalibrovka bozori kim** | ✅ **to'ldirildi** | Milliy tizim **bor**: O'zbekiston akkreditatsiya markazi **ILAC MRA a'zosi** (2022, 116 davlat tan oladi); O'zMIM tarkibida akkreditatsiyalangan sinov laboratoriyasi **O'ZAK.SL.0046**; **O'z DSt ISO/IEC 17025:2019** kuchda (7.6.3 — noaniqlik majburiy). **Lekin** mustaqil akademik tahlil: noaniqlik baholari «ilmiy asoslanganligi va qayta hisoblash mexanizmi yetarli hujjatlashtirilmagan» |

> **Yangi xavf (1-tadqiqotda yo'q edi):** eng katta xato manbai — **oqim o'lchagichi**, va u **barcha moddalarga bir xil yo'nalishda** ko'payadi. Ya'ni bitta buzuq oqim datchigi butun korxonaning **hamma** hisobotini bir tomonga suradi. Fareqni "konsentratsiya xatosi" deb qarash — metodologik xato.

---

## A. Bo'shliq 1 — Raqamlar: endi **qurilma kesimida** (adabiyot, AQSH/Yevropa)

1- tadqiqot umumiy raqamlarni berdi (±2%, ±11%, ±10,8%). Ammo chegara qo'yish uchun **qaysi qurilma qancha xato qiladi** bilinishi kerak. NIST ning masshtabli mo'ri simulyatori (SMSS) shu savolga **absolyut** javob beradi — unda etalon oqim **±0,7% (95%)** aniqlikda ma'lum:

| O'lchov elementi | Kuzatilgan og'ish | Manba | G'oya uchun ma'nosi |
|---|---|---|---|
| **Etalon (NIST SMSS)** | **±0,7%** (kengaytirilgan, 95%) | B1 | «Shovqin qavatining qavati» — undan pastni o'lchab bo'lmaydi |
| **Bitta yo'lli ultratovush oqim o'lchagich** | **5–17%** (yo'nalish burchagiga qarab); buzilgan oqimda **14–17%** | B1 | CEMS ning **eng zaif bo'g'ini** |
| **X-shaklidagi (ikki yo'l) ultratovush** | **0,5–1%** | B1 | Arzon yechim: ~10 barobar aniqlik |
| **S-zond RATA** («mustaqil etalon») | **5–6%** | B1 | **Nazorat qiluvchi asbobning o'zi 5–6% xato qiladi** |
| **Eski S-probe + EAM protsedura** (1999 gacha) | **+20% gacha musbat siljish** | B2 | Ortiq ko'rsatish = iqtisodiy zarar → EPA qoidalari o'zgardi |
| **Suyultirish zondi (dilution probe)** | harorat 330°F oshsa **−9% … −13%** | B2 | Tuzatish algoritmi bilan **−1,4% … +0,95%** ga tushadi |
| **PM (chang) CEMS** | ~**10%** aniqlik, **95%** mavjudlik — «yaxshi amaliyot» darajasi | B4 | Chang o'lchovi bilvosita (optik/elektrostatik) → eng noaniq modda |

### A.1 Misol: bitta 9 ppm NOₓ o'lchovi qancha «yumshoq»

Haqiqiy stansiya ma'lumotlari bilan hisoblangan: NOₓ **9 ppmvd** atrofida **90% ishonch** uchun **±9%** ni «mos» deb qabul qilish kerak; kirish parametrlari ekstremumlarda bo'lsa natija **41,25 – 74,69 lb/soat** (ya'ni **−26% … +34%**) oralig'iga yoyiladi [B3]. PEMS tizimi uchun Texas talabi **20%** va korrelyatsiya **r ≥ 0,8** [B5].

### A.2 Nega bu **«bitta modda»** emas, «butun hisobot» muammosi

NIST hisobotining markaziy jumlasi: *«xato oqim o'lchovi hamma konsentratsiya o'lchovlariga ko'paytiriladi va shu bilan **barcha** chiqarilgan moddalarning qiymatini xato qiladi; bundan tashqari, barcha moddalar qiymati **bir xil yo'nalishda** siljiydi»* [B1].

> **Metodologik saboq (yangi tezis):** shovqin qavati **modda kesimida emas, o'lchov zanjiri kesimida** o'lchanishi kerak. Zanjir: *konsentratsiya datchigi → namuna olish zondi → namlik/harorat → oqim → hisoblash → metama'lumot*. Har bo'g'in uchun alohida noaniqlik + **yo'nalish belgisi** (+/−) yozilishi shart. Aks holda «simmetrik ±10%» deb hisoblab, aslida **musbat siljish** bilan ishlaymiz.

---

## B. Bo'shliq 4 — Kalibrovka bozori: O'zbekistonda **kim** bor (to'liq yopildi)

### B.1 Rasmiy tizim

| Element | Holat | Manba |
|---|---|---|
| **O'zbekiston akkreditatsiya markazi** | **ILAC MRA** to'la huquqli a'zosi (14.09.2022) → natijalar **116 davlatda** tan olinadi | B8 |
| **O'z DSt ISO/IEC 17025:2019** | Milliy standart sifatida kuchda; **7.6.3** — sinov bayonnomasi uchun **o'lchash noaniqligini baholash majburiy**; **6.5.2** — izchillik (traceability) talabi | B6 |
| **O'zMIM** (Milliy metrologiya instituti) laboratoriyasi | Akkreditatsiyalangan, davlat reyestri **O'ZAK.SL.0046** — o'lchash vositalari va texnik mahsulotlarni sinovdan o'tkazadi | B7 |
| **Izchillik bo'lmasa** | Sinov natijasi bo'yicha **moslik to'g'risida xulosa berilmaydi** (nim.uz qo'llanmasi) | B6 |

### B.2 Amaliy bo'shliq (akademik tahlil, 2025)

O'zbekiston laboratoriyalari akkreditatsiyasi bo'yicha tadqiqot (Buxoro DTU, 2025) ikkita tizimli kamchilikni rasman qayd etadi [B9]:

1. **«O'lchash noaniqligi tahlili hujjatlarda ko'rsatilgan bo'lsa-da, ularning ilmiy asoslanganligi va qayta hisoblash mexanizmi yetarli darajada hujjatlashtirilmagan»** — ya'ni *noaniqlik bor*, lekin **uni qayta hisoblash / tekshirish usuli hujjatlashtirilmagan**.
2. **«Xalqaro akkreditatsiyalangan kalibrlash laboratoriyalaridan o'tkazilmagan»** holatlar uchraydi — ya'ni hujjat jihatidan izchillik zanjiri **uzilgan bo'lishi mumkin**.

> **G'oyaga bevosita saboq:** g'oyaning taklifi endi «kalibrlash xizmatini tashkil qilish» emas (u bor), balki **«noaniqlikni qayta hisoblash va hujjatlashtirish metodikasi»** — bu bo'shliq **rasman tan olingan**, ya'ni hujjatli asos bor. Bu — A→B→C rejasidagi **A** ning huquqiy oyog'i.
>
> Va yana: CEMS uchun QAL2/AST ekvivalenti (har 3 yil joyida kalibrovka + har yil parallel o'lchov) **hech bir hujjatda ko'rinmadi**. Bu — **aniq bo'sh joy**: standart bor (O'z DSt 3605:2022), lekin **davriylik va mustaqillik talabi** yo'q.

---

## C. Bo'shliq 2 — O'z DSt 3605:2022 ga **yo'l**: kim TTni yozadi

1- tadqiqot standart to'liq matni qo'lga kiritilmaganini aytdi. Bu savolni «matnni topish» shart emas — **ta'sir nuqtasi** boshqacha:

| Zanjir | Kim | Manba |
|---|---|---|
| Uskuna **talab shartlari** | Ekologiya qo'mitasi huzuridagi **«Davlat ekologik sertifikatlashtirish va standartlashtirish markazi»** ishlab chiqadi | B13 (VM-783) |
| Uskuna **xaridi** | Shu TT asosida; davlat ishtirokidagi korxonalarga **markazlashtirilgan** xarid | B13 |
| **Mahalliylashtirish** | Investitsiyalar, sanoat va savdo vazirligi + Ekologiya qo'mitasi birgalikda taklif kiritadi | B13 |
| **Yangi oyna (2026-aprel)** | «Qurilishda ekologik faoliyat standarti talablari» — qurilish boshlanishidan **oldin** fon stansiyalari va onlayn kameralar talabi; ijrochilar: Qurilish vazirligi, Ekologiya qo'mitasi, Kadastr agentligi, Texnik tartibga solish agentligi | B14 |
| **Toshkent + tutash hudud** | Sanoat korxonalarida **majburiy avtomatik monitoring postlari**, ma'lumotlar **yagona geoaxborot tizimiga** | B11 |
| **Amal qilmasa** | Kompensatsiya to'lovlari **keskin oshiriladi** | B11 |

> **Saboq:** standart matnini olish muammo emas — **uni kim qo'llashini belgilaydigan ikkilamchi hujjatlar** (TT shartlari, mahalliylashtirish talablari, «Ekologik faoliyat standarti») aynan **hozir yozilmoqda**. Shovqin qavati protokolini **shu hujjatlarga kiritish** — 1-tadqiqotdagi «bo'shliq»ni to'ldirishning eng arzon va real yo'li.

---

## D. Bo'shliq 3 — Uskunalar: **birinchi real dalillar** (va ular nimani ko'rsatmaydi)

### D.1 Nima o'rnatilgani **tasdiqlandi**

| Obyekt | Holat | Manba |
|---|---|---|
| To'raqo'rg'on, Talimarjon, Angren IES + Toshkent, Farg'ona IEM | Tashlamalarni avtomatik monitoring qilish **stansiyalari o'rnatildi** | B10 (yillik hisobot, 02.2025) |
| Taxiatosh, To'raqo'rg'on, Talimarjon IES + aholi punktlaridagi statsionar kuzatish punktlari | **Yagona geoaxborot bazasiga integratsiya qilindi** | B10 (2023 va 2024 hisobotlari) |
| «IES» AJ markaziy apparati | **Situatsion markaz** (real vaqt monitoringi) va **«1:S 8 Korxona»** markazlashgan hisobot tizimi joriy etildi | B10 |
| Tizim (hukumat, 23.03.2026) | Markaz tarkibida **15 ta ixtisoslashgan laboratoriya**; sputnik + GIS + masofadan zondlash; Toshkentda **majburiy postlar** | B12 |

### D.2 Nega bu hali **javob emas** (halol chegara)

1. **Bu namuna, populyatsiya emas.** Beshta stansiya — energetika sektorining bir qismi. Sinov protokoli (5.2 stratifikatsiya) uchun **namuna hajmi** kerak, va u bizda yo'q.
2. **«O'rnatildi» ≠ «standartga muvofiq».** VM-783 uskuna *o'rnatilishini* talab qiladi; O'z DSt 3605:2022 *qanday bo'lishini*. Ular orasida **muvofiqlik auditi natijasi ommaga e'lon qilinmagan**.
3. **«Integratsiya qilindi» ≠ «ma'lumot ishonchli».** Geoaxborot bazasiga ulanish — **texnik** hodisa; ma'lumot sifati (kalibrovka holati, mavjudlik %, uzilishlar) alohida o'lchanadi.
4. **Situatsion markaz — operator tomonda.** Ya'ni ma'lumot **ishlab chiqaruvchining o'z** markazida ham ko'rinadi. Bu **o'z-o'zini nazorat** (QAL3) uchun yaxshi, **mustaqil nazorat** (QAL2/AST) o'rnini **bosmaydi**.

> **Xulosa:** «o'rnatilgan bo'lishi ehtimoli yuqori, lekin qamrov va sifat noma'lum» — bu 1-tadqiqotdagi xulosani **kuchaytiradi**, o'zgartirmaydi. Yangi: endi bizda **tekshiriladigan nomzodlar ro'yxati** bor (5 ta IES/IEM + Sanoat) — pilot shu yerdan boshlanishi mumkin.

---

## E. UZ-ga xos «noma'lumlar» ro'yxati (2-darajali natija)

Quyidagi kattaliklar **hech qayerda (UZ bo'yicha) o'lchanmagan** va faqat pilotda olinadi. Har biri uchun **kim beradi** va **qanday olinadi** yozildi:

| # | Noma'lum kattalik | Kim beradi | Qanday olinadi |
|---|---|---|---|
| 1 | Mahalliy gaz tarkibi (kaloriya qiymati) o'zgaruvchanligi | Hududiy gaz ta'minot + korxona hisobi | Yoqilg'i hisobining kirish noaniqligi; oylik hisobotlardan |
| 2 | Issiq va sovuq kunlarda oqim o'lchagichi drifti | CEMS operatori (QAL3 kartalari) | Nazorat kartalari arxivi (Shewhart/CUSUM) |
| 3 | Chang (PM) o'lchovining real tarqalishi | Korxona PM CEMS + parallel gravimetriya | Yillik 5 ta parallel o'lchov (EN AST analogi) |
| 4 | Metama'lumot bilan izohlanadigan farq ulushi | Korxona texnik xizmati jurnali | Uskuna to'xtashi/ta'miri sanalari bilan farqlarni kesishma |
| 5 | Yong'in/o'lchov usuli almashganda farq siljishi | Laboratoriya (namuna) | Ikki usulda bir vaqtda o'lchash (2 hafta) |
| 6 | Hisobot ↔ fiskal (gaz/eletr) tafovut darajasi | Soliq/energetika hisobi (ruxsat bilan) | Agregat darajada taqqoslash (energiya balansi) |
| 7 | Filtr/neytralizator ishlashi (PF-81 bog'liq) | Korxona + Ekologiya | Tozalash samarasi = kirish−chiqish (o'lchov bilan) |

> **Bu ro'yxatning o'zi mahsulot:** u 1-tadqiqotdagi «aniq raqam yo'q» ni **«mana shu 7 raqam kerak»** ga aylantiradi. Har bir qator — **bitta o'lchov topshirig'i**.

---

## F. Protokol TZ-1 (qoralama texnik topshiriq, v0.1) — pilot o'lchov

**Maqsad:** o'zbek sharoitida uch juftlik uchun farq taqsimotini o'lchash va **zonalar chegarasini asoslash**.
**Joy:** energetika (2 IES/IEM) + sement yoki kimyo (1 korxona) — uchta strata.
**Hajm:** har strata uchun **30–40 juftlik** (jami ~**100–120**), 8–12 hafta.

| Bosqich | Ish | Natija |
|---|---|---|
| T1 | Obyekt tanlash (yozma rozilik + ma'lumot almashish rejimi) | 3 ta shartnoma |
| T2 | Zanjir xaritasi: har bo'g'in uchun noaniqlik va **belgisi** | zanjir jadvali (A bo'limi shaklida) |
| T3 | Oqim o'lchagichini baholash (X-shakl yoki RATA, mustaqil) | oqim noaniqligi % |
| T4 | Parallel o'lchov: hisobot ↔ CEMS (20 daqiqalik o'rtacha, O'z DSt 3605:2022 bo'yicha) | juftliklar to'plami |
| T5 | Metama'lumot qatlami (E jadvalidagi 7 maydon) | izohlangan farqlar |
| T6 | Statistika: kvantillar (5/25/50/75/95), MAD, og'irlik, surilish belgisi | taqsimot profili |
| T7 | **Zonalar:** qabul / shartli / rad etish + **yolg'on-ijobiy darajasi** | chegara stoli |

**Natija shakli:** sektor × usul kesimida **uch zona jadvali** + metodik qo'llanma loyihasi (keyinchalik TT shartlariga kiritish uchun).
**Xarajat tarkibi (taxminiy, keyin aniqlanadi):** mustaqil o'lchov brigadasi · oqim etaloni (RATA) · statistika/analitika · hisobot. *(1-tadqiqotda aytilganidek — bu tadqiqot, smeta emas; raqamlar C variantida.)*

---

## G. Yangi va o'zgargan xulosalar

**O'zgarmadi (mustahkamlandi):**
1. Yagona shovqin qavati yo'q — usul va sektor juftligi kesimida o'lchanadi.
2. Farqlar og'ir dumli; uchdan biri — metama'lumot, o'lchov emas.
3. O'zbekistonda asos bor (O'z DSt 3605:2022 + metrologik quvvat).

**Yangi (1-tadqiqotda yo'q edi):**
4. **Eng zaif bo'g'in — oqim o'lchagichi** (5–17%), va uning xatosi **hamma moddalarga bir yo'nalishda** o'tadi → shovqin qavati **belgili (signed)** bo'lishi shart.
5. **Nazorat vositasining o'zi noaniq:** RATA «etaloni» 5–6%, etalon SMSS ±0,7%. Ya'ni «haqiqiy qiymat» ham intervallidir → **uch tomonlama** taqqoslash (hisobot ↔ CEMS ↔ etalon) kerak.
6. **Kalibrovka tashkilotlari bor, metodika yo'q:** ILAC/ISO 17025 tizimi mavjud, lekin noaniqlikni qayta hisoblash amaliyoti hujjatlashtirilmagan (rasman tan olingan bo'shliq) + CEMS uchun **davriylik/mustaqillik talabi (QAL2/AST analogi) hech qayerda yo'q**.
7. **Ta'sir nuqtasi aniqlandi:** VM-783 va PQ-343 bo'yicha TT shartlarini **Davlat ekologik sertifikatlashtirish va standartlashtirish markazi** yozadi; 2026-aprel oynasida «Qurilishda ekologik faoliyat standarti» talablari yangilanadi → metodikani shu yerga kiritish mumkin.
8. **«O'rnatildi» dalili bor, «mos» dalili yo'q:** 5 ta yirik energetika obyektida stansiyalar va geoaxborot integratsiyasi tasdiqlangan — bu **pilot uchun nomzodlar**, qamrov statistikasi emas.

**Keyingi qadam (A→B→C tartibida):**
- **A (davom):** TZ-1 v0.1 ni rasmiy shaklga keltirish (obyekt tanlash mezonlari + ma'lumot almashish rejimi) → keyin **B (adolat paketi)**: apellyatsiya tartibi + tushuntirish kartasi + yolg'on-ijobiy oshkorligi.

---

## MANBALAR (bu fayl uchun yangi)

| Kod | Manba | Sana | Daraja | Havola |
|---|---|---|---|---|
| B1 | NIST, «Progress Towards Accurate Monitoring of Flue Gas Flow» (10-ISFFM) — SMSS etaloni ±0,7%; bitta yo'l USM 5–17%; X-pattern 0,5%; S-probe RATA 5–6%; oqim xatosi barcha moddalarga ko'payadi | 2018 | R | https://tsapps.nist.gov/publication/get_pdf.cfm?pub_id=925357 |
| B2 | Lehigh University Energy Research Center, «Factors affecting CEM measurement accuracy» — S-probe bilan +20% gacha musbat siljish; suyultirish zondi harorat xatosi −9…−13%, tuzatish bilan −1,4…+0,95% | 2003 | R | https://www.envirotech-online.com/download/white-paper/96 |
| B3 | POWER Magazine, «How accurate are your reported emissions measurements?» — 9 ppm NOₓ misoli: 90% ishonch uchun ±9%; ekstremal holat −26%…+34% | 2006 | A | https://www.powermag.com/how-accurate-are-your-reported-emissions-measurements/ |
| B4 | US EPA/625/R-97/001, PM CEMS baholash — 10% aniqlik va 95% mavjudlik «yaxshi amaliyot» darajasi | 1997–2000 | R | https://www.epa.gov/system/files/documents/2025-01/evaluation-of-particulate-matter-pm-continuous-emission-monitoring-systems-cems-vol-1-9-2000.pdf |
| B5 | Texas PEMS RATA talabi — 20% aniqlik, r ≥ 0,8 (statistik mezonlar misoli) | amaldagi | A | https://www.power-eng.com/environmental-emissions/pems-meets-boiler-nox-cems-requirements/ |
| B6 | O'zbekiston Milliy metrologiya instituti (nim.uz) qo'llanmasi — O'z DSt ISO/IEC 17025:2019, 7.6.3 noaniqlik majburiy; 6.5.2 izchillik; izchillik bo'lmasa xulosa berilmaydi | 26.02.2024 | R | https://nim.uz/2024/02/26/sinov-laboratoriyalarda-metrologik-kuzatiluvchanlikni-taqdimot-qilish-hamda-sinovlarni-o%CA%BBtkazishda-o%CA%BBlchashlar-ishonchliligini-ta%CA%BCminlash-bo%CA%BByicha-qo%CA%BBllanma-2/ |
| B7 | O'zMIM sinov laboratoriyasi, reyestr raqami **O'ZAK.SL.0046** (o'lchash vositalari va texnik mahsulotlar) | amaldagi | R | https://nim.uz/faoliyat/olchov-vositalari-va-texnik-mahsulotlarni-sinov-laboratoriyasi/ |
| B8 | O'zbekiston akkreditatsiya markazi **ILAC MRA** a'zosi (14.09.2022) → 116 davlatda tan olinadi | 2022 | M | https://kun.uz/37838077 |
| B9 | Qarshiyev, Xo'jjiyev (Buxoro DTU), «Laboratoriya akkreditatsiyasida metrologik hamda standart talablarning integratsiyasi» — noaniqlik hujjatlashtirish va xalqaro kalibrlash zaifligi | 06.2025 | A | https://devos.uz/files/1242.pdf |
| B10 | «Issiqlik elektr stansiyalari» AJ yillik hisobotlari — stansiyalar o'rnatilgani, geoaxborot integratsiyasi, situatsion markaz, «1:S 8 Korxona» | 2024, 2025 | R | https://cdn.tpp.uz/2025/02/20/11/27/0B2CHLv1AOovz10otEBBVCHLn6hSkFWs.pdf · https://cdn.tpp.uz/2024/04/13/10/46/kec2gPnUfQ2WEsOyNqPcmja0UKl3lO5f.pdf |
| B11 | gazeta.uz — Toshkent va tutash hududlarda majburiy avtomatik monitoring postlari, geoaxborot integratsiyasi, talabga amal qilmasa kompensatsiya keskin oshadi | 24.03.2026 | M | https://www.gazeta.uz/oz/2026/03/24/ecology/ |
| B12 | Hukumat konferensiyasi (yuz.uz) — PM2,5 2026 yanvar–fevralda pasaygan; markazda 15 ixtisoslashgan laboratoriya; sputnik/GIS/masofadan zondlash | 23.03.2026 | M | https://yuz.uz/uz/news/ekologiya-sohasida-umummilliy-loyihalarni-amalga-oshirish-chora-tadbirlari-korib-chiqildi |
| B13 | VM-783 (25.11.2024) — uskunalar TIF TN 9027/8421; TT shartlari **Davlat ekologik sertifikatlashtirish va standartlashtirish markazi** tomonidan; markazlashtirilgan xarid; mahalliylashtirish topshirig'i | 25.11.2024 | R | https://www.lex.uz/docs/-7233437 |
| B14 | PQ-343 (18.11.2025) — 1.03.2026 dan 5× to'lov; Yagona platforma 1.09.2026; «Qurilishda ekologik faoliyat standarti» talablari 2026-aprel | 18.11.2025 | R | https://lex.uz/uz/docs/-7847341 |

---

*Bu fayl `Tadqiqot-1-Shovqin-Qavati.md` ning davomi. 1-fayl: savol, umumiy raqamlar, O'z DSt 3605:2022, protokol loyihasi, to'rt bo'shliq. 2-fayl (bu): bo'shliqlar → qurilma kesimidagi raqamlar, kalibrovka bozori, standartga yo'l, amaldagi o'rnatish, noma'lumlar ro'yxati, TZ-1 qoralamasi.*
