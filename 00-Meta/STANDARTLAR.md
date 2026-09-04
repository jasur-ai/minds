---
aliases: [Standartlar, Standards, Qabul Mezonlari, Accept Criteria, Checklist]
tags: [meta, standards, quality]
created: 2026-09-04
updated: 2026-09-04
sektor: 00-Meta
tur: meta
holat: faol
sarlavha: Standartlar — UZ bozori uchun mukammal
qisqacha: UZ bozori uchun aniq iqllik standartlari — qabul mezonlari, baholash, sifat nazorati (v3.0)
---

# ✅ STANDARTLAR — Startup G'oyalarni Qabul Qilish va Sifat Nazorati

> **Maqsad:** Har bir saqlangan g'oya REAL muammo, REAL to'lovchi va REAL bo'sh joyga ega bo'lishini kafolatlash.
> **Qoida:** Standartga to'g'ri kelmagan g'oya vaultga KIRMAYDI (70 ta g'oya shu sabab o'chirilgan — [[STARTUP-MUAMMOLAR]]).
> *2026-09-04: 5 loyiha 100/100 rejaga yetkazildi — endi standartlar yangi g'oyalar va amaliy bosqich uchun qo'llaniladi.*

---

## 🚪 1. KIRISH DARVOZASI (QABUL MEZONLARI)

Yangi g'oya vaultga **faqat quyidagi 6 mezonning BARCHASI** bajarilsa qabul qilinadi:

| # | Mezon | Talab | Tekshiruv manbai |
|---|-------|-------|------------------|
| 1 | **Aniq muammo** | "Kim uchun? Nima muammo? Qanchalik og'riqli?" — 1 jumlada | 5+ intervyu yozuvi (Mom Test 🥇-🥉) |
| 2 | **Real raqamlar** | UZ raqamlari [[STANDARTLAR]] 3.6 bazasiga solishtirilgan (aholi 37.54 mln, KOBM 1.2 mln, 0–4 yosh 4.61 mln...) | Manba linki (7+) |
| 3 | **To'lovchi bor** | Kim to'laydi? Qancha? UZS da ham aniq (Payme/Click kanali bilan) | Narx modeli hisobi + bottom-up |
| 4 | **Bo'sh joy** | Mavjud yechim yo'q yoki kuchsiz — goldenpages/Stat.uz tekshiruvi | Raqobatchilar ro'yxati |
| 5 | **Amalga oshirish mumkin** | MVP $500 dan arzon, 1-2 kishi qura oladi, IT Park rezidentligi yo'li aniq | MVP byudjeti |
| 6 | **UZ bozoriga mos** | Til (o'zbekcha), infratuzilma (Telegram/mobil internet), qonuniy doira (litsenziya?) — hammasi aniq | 🇺🇿 realligi bo'limi + 3.7 iqllik testi |

> [!warning] ⛔ RAD ETISH SABABLARI (avtomatik)
> 1. **Mavjud yechim bor** — IshTopchi, Payxem, Metanchi.uz, HEALZY, QALB, Agro-Market kabi (qayta taklif TAQIQLANADI)
> 2. **To'lovchi yo'q** — NGO/grant loyihasi (donor bo'lmasa)
> 3. **Davlat loyihasi** — not startup (suv monitoringi kabi)
> 4. **Shablon g'oya** — "hamma uchun app", "AI platforma" (aniq muammosiz)
> 5. **Texnik og'ir MVP** — $5,000+ yoki 3+ oy qurilish

---

## 📋 2. QABUL CHECKLISTI (AI 01 tekshiruvi — yangi g'oya uchun)

Bot `/new` orqali g'oya kelganda AI 01 quyidagi checklistni to'ldiradi:

```markdown
## ✅ G'OYANI TEKSHIRISH (sana: ___)
- [ ] 1. Muammo aniqmi? (kim/nima/og'riq — 1 jumla)
- [ ] 2. Real raqamlar bormi? (hajm, narx, % — manbali)
- [ ] 3. To'lovchi aniqlanganmi? (kim to'laydi, qancha)
- [ ] 4. Raqobatchilar tekshirildimi? (kim bor, nima qiladi)
- [ ] 5. Bo'sh joy isbotlandimi? (raqobatchi zaif/yo'q)
- [ ] 6. MVP arzonmi? (< $500, 1-2 kishi)
- [ ] 7. UZ realligi hisobga olinganmi? (til/internet/qonun)
- [ ] 8. 7+ manba keltirildimi? (web-research)
- [ ] QAROR: QABUL ✅ / RAD ❌ (sabab bilan)
```

**Qabul qilingach:** g'oya shabloni (quyida) bo'yicha fayl yaratiladi va [[WORKFLOW]] bo'yicha rivojlantiriladi.

---

## 🎤 2.5. INTERVYU STANDARTI (MOM TEST — Rob Fitzpatrick)

Intervyular g'oyani maqtash emas, **fakt yig'ish** uchun o'tkaziladi. 3 ta qoida:

| Qoida | Nima qilish kerak | Nima qilish mumkin emas |
|-------|-------------------|--------------------------|
| 1. **G'oyani aytma** | Suhbatdoshning o'zi muammosini so'zlasin | "Biz shunday app quryapmiz..." demo |
| 2. **Maqtovni hisobga olma** | "Ajoyib g'oya!" — qiymat 0, keyingi savolga o't | Maqtovni tasdiq deb qabul qilish |
| 3. **O'tmishdagi faktni so'ra** | "Oxirgi marta qachon shu muammoga duch keldingiz? Nima qildingiz? Qancha to'ladingiz?" | "Kelajakda foydalanarmidingiz?" (yolg'on "ha" oladi) |

**Kuchli intervyu savollari (har biri fakt chiqaradi):**
1. "Bu muammoni oxirgi marta qachon sezdingiz?" (chastota)
2. "O'shanda nima qildingiz? Kimdan so'radingiz?" (mavjud yechim)
3. "Buning uchun pul to'laganmisiz? Qancha?" (to'lov qobiliyati)
4. "Hozir nimadan foydalanasiz? Nima yoqmadi?" (muammo chuqurligi)
5. "Buni hal qilish uchun qancha vaqt/pul sarfladingiz?" (og'riq qiymati)

**Intervyu isbot shkalasi (kuchli → zaif):**
1. 🥇 **Pre-order/depozit** (pul oldindan) — eng kuchli
2. 🥈 **Kelajakdagi majburiyat** ("x/y da sotib olaman" + telefon/kelishuv)
3. 🥉 **O'tmishdagi to'lov** (bunga o'xshashga allaqachon to'lagan)
4. ⚠️ "Qiziq, ehtimol foydalanardim" (taxmin — isbot emas)
5. ❌ "Ajoyib g'oya!" (maqtov — 0 qiymat)

**Mezon:** har g'oya uchun 5+ intervyu, ularning kamida 2 tasida pul/isbot darajasi 🥇-🥉 bo'lishi kerak.

---

## 📊 3. BAHOLASH TIZIMI (1–10 skala)

Har loyiha uchun (QADAM 100 — yakuniy baho) 6 mezon bo'yicha ball:

| Mezon | 1–3 (zaif) | 4–6 (o'rta) | 7–8 (kuchli) | 9–10 (a'lo) |
|-------|-----------|-------------|--------------|-------------|
| **Muammo haqiqiyligi** | Taxmin, intervyu yo'q | Qisman isbot | Intervyu + raqam | Davlat tan olgan/statistika |
| **Yechim mosligi** | Forma emas | Qisman | To'g'ri kanal + narx | Moat bilan |
| **Bozor hajmi** | <10k kishi | Lokal | UZ bozori + kengayish | Markaziy Osiyo |
| **Raqobat** | Yetakchi bor | Bir nechta | Bo'sh joy + moat | Bo'sh joy + tarmoq effekti |
| **Iqtisodiyot** | LTV<CAC | LTV/CAC 1–3× | 3–10× | 10×+ |
| **Amalga oshirish** | Og'ir/3+ oy | O'rta | MVP <$500 | Concierge/tez |

**Qaror qoidasi:**
- **7.0+** → GO ✅ (100 qadam davom ettiradi)
- **5.0–6.9** → TUZATISH 🔄 (qaysi mezon past — shu ustida ish)
- **<5.0** → PIVOT/TO'XTATISH ❌ (sabab yoziladi, g'oya o'chiriladi)

**Joriy baholar (2026-09-04):** Parvarish.uz etalon · Bog'chaTop 7.5 · To'yByudjet 7.8 · XavfsizBiz.uz 8.0 · QishloqMaktab.uz 7.8

---

## 🌍 3.5. GLOBAL FRAMEWORKLAR INTEGRATSIYASI (brilliant tekshiruv)

Har g'oya quyidagi global investor frameworklari bilan ham tekshiriladi:

### A) YC (Y Combinator) — "Kuchli g'oya" 3 mezon (Michael Seibel)
| Mezon | Savol | Zaif javob | Kuchli javob |
|-------|-------|------------|--------------|
| **Kichik bozor (kichikdan boshlash)** | Kichik, aniq segmentda boshlay olasizmi? | "Hamma uchun" | Bitta aniq segment (masalan, diaspora farzandlari) |
| **Tez o'sish potentsiali** | Bozor o'syaptimi? | O'smayotgan/statik | Texnologik/populyatsion o'sish (masalan, 65+ ulushi) |
| **Takrorlash qiyinligi** | 6 oyda klonlana oladimi? | Bir kunlik app | Moat: ma'lumot, tarmoq, litsenziya, brend |

> YC qabul darajasi ~1.5% (10,000+ ariza → 130–150 qabul) — ular aynan shu 3 mezonni + jamoani qidiradi.

### B) Peter Thiel — "Zero to One" 7 savol (monopoliya testi)
| # | Savol | Standart javob |
|---|-------|----------------|
| 1 | **Texnologiya** — 10× yaxshimisiz? | Mavjud yechimdan 10× arzon/tez/yaxshi (masalan, agent komissiyasi 10–20% → $30/oy) |
| 2 | **Tarmoq effekti** — har foydalanuvchi bilan qiymat o'sadimi? | Marketplace: pudratchi ↔ mijoz (bog'cha ↔ ota-ona) |
| 3 | **Tejamkorlik** — o'sish bilan xarajat kamayadimi? | SaaS/marketplace marjasi o'sadi, agentlik emas |
| 4 | **Brend** — kategoriya egasi bo'la olasizmi? | "bog'cha tanlash = Bog'chaTop" (Winnie modeli) |
| 5 | **Monopoliya** — kichik bozorning katta ulushi? | Bo'sh joy: raqobatchi yo'q yoki faqat qisman yechim |
| 6 | **Tarqatish** — mijozga qanday yetasiz? | Arzon kanal: DM, ona zanjiri, direktor (CAC <$5) |
| 7 | **Vaqt** — nima uchun hozir? | Infratuzilma/qonun/talab o'zgardi (masalan, PP-167, 2022 qonun) |

### C) a16z — Market sizing: TOP-DOWN vs BOTTOM-UP
| Usul | Formula | Xavf |
|------|---------|------|
| **Top-down** | "Jami bozor $X mlrd → 1% olsak..." | Optimizm (marketing slaydlari uchun) |
| **Bottom-up** ✅ | `Mijozlar soni × o'rtacha yillik to'lov (ACV)` | Real — asosiy isbot |

**Standart:** Har g'oyada IKKALASI kerak — top-down (potentsial hikoyasi) + bottom-up (real hisob).
**Misollar:** To'yByudjet bottom-up: 200k to'y/yil × $30 featured = $6M/yil potentsial. SMB: 400k KOBM × $240/yil = $96M TAM.

### D) Alex Hormozi — 5 mezon testi (tez filtr)
| Mezon | Savol |
|-------|-------|
| Muammo kattaligi | Yechishga arziydigan darajada og'riqli/tez-tezmi? |
| To'lov qobiliyati | Mijozda pul bormi? |
| Yetkazib berish | Siz (1-2 kishi) yetkaza olasizmi? |
| Barqarorlik | Qayta sotib olish (subscription/referral) bormi? |
| Ko'paytirish | O'sish bilan marja yaxshilanadimi? |

---

## 🇺🇿 3.6. UZBEKISTON BOZOR BAZASI (ANIQLANGAN RAQAMLAR — v3.0)

Har g'oya quyidagi UZ ma'lumotlar bazasiga solishtiriladi — raqamlar taxmin emas, **manbali va yangilangan**:

### A) Aholi va demografiya (2025)
| Ko'rsatkich | Raqam | Manba |
|-------------|-------|-------|
| Aholi (2025-01-01) | **37.54 mln** (+51.5 ming/oy o'sish) | gazeta.uz, stat.uz |
| 0–4 yosh bolalar | **4.61 mln** (eng yirik yosh guruhi) | kun.uz (2026-07-02) |
| Mehnatga layoqatli yoshdan kattalar | **4.5 mln** | daryo.uz |
| Internet foydalanuvchilari | **27.2 mln+** (25 mln+ mobil) | yuz.uz |
| Bank kartalari / POS / bankomatlar | **69 mln** / 445 ming / 46 ming | infocom.uz |

**Standart:** g'oya auditoriyasi soni shu raqamlar bilan tekshiriladi — "27 mln internet foydalanuvchisi" degan umumiy so'z emas, aniq segment (masalan, 0–4 yosh 4.61 mln → bog'cha bozori) ko'rsatilishi shart.

### B) Tadbirkorlik va IT sektori (2025)
| Ko'rsatkich | Raqam | Manba |
|-------------|-------|-------|
| Kichik tadbirkorlik subyektlari | **1.2 mln+** faol | stat.uz (2026-05-01) |
| KOBM bozor xizmatlari hajmi | **397.5 trln so'm** (2025) | stat.uz (2025-10-24) |
| Har 1,000 aholiga tadbirkorlik subyekti | **31.8** | stat.uz (2025-09-11) |
| IT Park rezidentlari | **3,400+** (970+ xorijiy kapital) | it-park.uz (2026-01-07) |
| Startup funding (jami) | **$489 mln+** · 96 kompaniya · 1 unicorn (Uzum) | elpislabs.com (2025) |
| 2025 funding o'sishi | Q1–4: $110 mln — +111.92% (y/y) | elpislabs.com |

### C) IT Park imtiyozlari (har loyiha rejasiga kiritilishi shart)
| Imtiyoz | Shart | Manba |
|---------|-------|-------|
| **0% daromad solig'i** | 2031-yilgacha (IT sohasi) · O'RQ-1014 (2024-12-24) uzaytirdi | buxgalter.uz, it-park.uz |
| Xarajatni 50% qaytarish | Xalqaro akseleratorlar uchun ($20k gacha) | elpislabs.com |
| "1+1" co-investitsiya | **$100k gacha** (davlat + investor teng) | elpislabs.com |
| Venture krediti | Bozor stavkasidan past shartlar | elpislabs.com |
| President Tech Award | **$1M** mukofot fondi | elpislabs.com |

**Standart:** har loyihaning MOLIYALASHTIRISH bo'limida IT Park yo'li ko'rsatiladi (rezidentlik + grant + akselerator). Bu — UZ startupning asosiy raqobat ustunligi.

### D) To'lov tizimi va infratuzilma (mahsulot uchun talab)
| Omil | Holat | Standartga ta'siri |
|-------|-------|---------------------|
| Payme / Click / Uzum Pay | Asosiy to'lov kanallari | Har biznes-modelda kamida 1 tasi ko'rsatilishi shart |
| Naqd pul ulushi (qishloq) | Yuqori — ishonch kanali sifatida | "Naqd + Payme" gibrid modeli hisobga olinadi |
| Mobil internet | 25 mln+ foydalanuvchi, tezligi +53% (2025) | Mobil-birinchi (Telegram) — app emas |
| Telegram qamrovi | Keng — biznes kanali | Telegram bot/guruh modeli afzal (qishloqda ham) |
| Xalqaro to'lov (diaspora) | Payme xalqaro kartalar; 2-bosqichda xorijiy yuridik shaxs | Diaspora modelida ko'rsatilishi shart |

### E) Qonuniy doira (har g'oya tekshiriladi)
| Qonun/Hujjat | Nima beradi | Qachon kerak |
|--------------|-------------|--------------|
| O'RQ-701 (2021) | Litsenziyalash tartibi | Tibbiy/ta'lim/parvarish xizmatlari |
| 2022 bog'cha qonuni | Oilaviy bog'cha tartibini soddalashtirdi | Bog'cha platformalari |
| PP-167 kiberxavfsizlik | Talablar + jarimalar | IT/xavfsizlik xizmatlari |
| JK 278-modda | Axborot xavfsizligi buzilishi javobgarligi | Kiberxavfsizlik — ehtiyot pozitsiyasi |
| 1% aylanma soliq (yakka tadbirkor) | Soddalashtirilgan soliq | MVP bosqichi (acsour.kz 2025-12-29 misol) |

**Standart:** har faylda "Qonuniy doira" bo'limi — tegishli qonun ko'rsatilgan va litsenziya kerakmi/kerakmasligi aniq.

---

## 🎯 3.7. UZ STANDARTI — ANIQ IQLLIK (v3.0 yadrosi)

UZ bozori uchun g'oya quyidagi **5 ta aniq iqllik talabiga** javob berishi shart:

| # | Talab | Aniq iqllik mezoni | Qabul qilinmaydigan javob |
|---|-------|--------------------|---------------------------|
| 1 | **Aniq segment** | "27 mln internet foydalanuvchisi" EMAS — "Toshkentdagi 100k+ diaspora farzandi" | "Hamma uchun" |
| 2 | **Aniq narx** | "$15/oy — Payme orqali" (UZS da ham: ~190k so'm) | "Raqobatdan arzon" |
| 3 | **Aniq kanal** | "Ona zanjiri + Telegram guruhlari" (CAC $2–5) | "Marketing qilamiz" |
| 4 | **Aniq raqam** | "1.2 mln KOBM × 5% qamrov = 60k mijoz" (bottom-up) | "Katta bozor" |
| 5 | **Aniq qonun** | "Litsenziya shart emas (xizmat ko'rsatish); JK 278 ehtiyoti" | "Qonuniy xavf yo'q" |

**Qoida:** Agar g'oya javobida "hamma", "marketing", "katta bozor", "qonuniy xavf yo'q" kabi noaniqlik bo'lsa — TUZATISH 🔄 holatiga qaytadi.

---

## 🌍 3.8. XALQARO MODEL LOKALIZATSIYASI (UZ uchun moslash)

G'oya xorijiy muvaffaqiyat modelini takrorlashi mumkin, lekin **lokalizatsiya isboti** talab qilinadi:

| Xalqaro model | UZ lokalizatsiyasi | Isbotlanishi kerak |
|---------------|--------------------|--------------------|
| Winnie (bog'cha, AQSh) | Bog'chaTop — 4.61 mln bola, 2022 qonun | Qonun matni + bog'cha soni |
| The Knot (to'y, AQSh) | To'yByudjet — 200k+ to'y/yil, 25% qarz | To'y statistikasi + kalki.uz bo'shlig'i |
| Guardz/Cynomi (MSSP) | XavfsizBiz — 1.2 mln KOBM, PP-167 | KOBM xavf statistikasi + qonun |
| Physics Wallah (edtech, Hindiston) | QishloqMaktab — 1,600+ qishloq maktab | Maktab interneti + donor dasturlari |
| Honor/Home Instead (parvarish, AQSh) | Parvarish.uz — 4.5 mln 60+, diaspora $3.8 mlrd | 65+ soni + remittance statistikasi |

**Qoida:** model manbasi + UZ raqamlari + lokal farq (infratuzilma/qonun/madaniyat) — uchalasi bo'lsa lokalizatsiya qabul qilinadi.

---

## 📄 4. G'OYA FAYLI SHABLONI (yangi fayl uchun)

Har bir yangi g'oya quyidagi tuzilma bilan yaratiladi:

```markdown
---
aliases: [Nomi, English Name]
tags: [sektor, tur]
created: YYYY-MM-DD
updated: YYYY-MM-DD
sektor: NN-Sektor
tur: g'oya
holat: faol
bosqich: 1
qadam: 0
sarlavha: Nomi — qisqa tavsif
qisqacha: 1 jumlalik tavsif
---

# 🏷️ NOMI — TAVSIF

## 🎯 Nega BU g'oya? (Problem Statement)
- Muammo: [kim uchun, nima, og'riq]
- Real raqamlar: [hajm, narx, %]

## 🇺🇿 O'zbekiston realligi
- [Lokal raqamlar, infratuzilma, qonuniy doira]

## 📊 Xalqaro taqqoslash
| Model | Nima qildi | Natija |

## 💰 Startup modeli (narxlar)
| Paket | Narx | Tarkib |

## 📈 Bozor tahlili (TAM/SAM/SOM)

## 🔗 Bog'liq notalar
- [[00-Meta/STARTUP-100-STEPS]] · [[00-Meta/METHODOLOGY]]

## 📚 Manbalar (7+)
1. [manba]
```

> [!note] Frontmatter standarti
> `bosqich` va `qadam` har blok tugagach yangilanadi ([[WORKFLOW]] 4-bo'lim). `holat: faol` — ish davom etmoqda.

---

## 🧪 5. SIFAT NAZORATI (har qadamda)

| Tekshiruv | Mezon | Buzilganda |
|-----------|-------|------------|
| Manbalar | 7+ manba, link ishlaydi | Manba qo'shish |
| Real raqamlar | Taxmin emas, manbali | Raqamni tekshirish/almashtirish |
| Xulosa | Har QADAM oxirida 2–4 jumla | Xulosa qo'shish |
| Frontmatter | bosqich/qadam/holat to'g'ri | Yangilash |
| Linklar | Buzilgan link 0 | Tuzatish |
| Imzo | `*AI 01 — sana | Ish joyi*` | Qo'shish |
| UZ realligi | Har faylda 🇺🇿 bo'limi | Qo'shish |
| YC 3 mezon | Kichik segment + o'sish + takrorlanmaslik | Qayta ishlash |
| Thiel 7 savol | Kamida 4/7 "ha" | Zaif nuqtani chuqurlashtirish |
| Bottom-up hisob | Mijoz × ACV formulasi bor (UZS da ham) | Hisob qo'shish |
| Mom Test isboti | 🥇-🥉 darajali 2+ intervyu | Intervyu o'tkazish |
| UZ aniq iqllik (3.7) | 5 talab: segment/narx/kanal/raqam/qonun — noaniqlik 0 | 3.7 testiga qaytarish |
| UZ raqamlar bazasi (3.6) | Raqamlar manbali va yangilangan (stat.uz/it-park.uz) | Manba yangilash |
| To'lov kanali | Payme/Click/Uzum Pay ko'rsatilgan | Kanala qo'shish |
| IT Park yo'li | Rezidentlik/grant yo'li rejada | Qo'shish |

---

## 📚 MANBALAR (frameworklar)

1. ycombinator.com — "How to apply and succeed at YC" (Dalton Caldwell) — kuchli g'oya + jamoa mezonlari
2. YC acceptance ~1.5% — 10,000+ ariza → 130–150 qabul (Quora/HubSpot 2021–2025)
3. Peter Thiel — "Zero to One" (2014) — 7 savol: texnologiya, tarmoq, tejamkorlik, brend, monopoliya, tarqatish, vaqt
4. Rob Fitzpatrick — "The Mom Test" (2013) — intervyu 3 qoidasi + isbot darajalari
5. a16z.com — "16 More Startup Metrics" (2015) — top-down vs bottom-up market sizing
6. waveup.com (2026-04-27) — Top-down vs bottom-up: "Top-down = prize, bottom-up = capture"
7. Alex Hormozi — 5 mezon business idea testi
8. elpislabs.com (2025-06-04) — UZ startup ekotizimi 2025: 771+ startup, $489M funding, +111.92% o'sish, Uzum unicorn
9. startupbase.uz — O'zbekiston startup ekotizimi raqamli platformasi
10. itparkventures.uz — IT Park Ventures (Central Asia venture fund)
11. gazeta.uz (2025-01-24) — Aholi 37,543,200 (2025-01-01), oyiga +51.5 ming
12. kun.uz (2026-07-02) — 0–4 yosh 4.61 mln (eng yirik yosh guruhi)
13. daryo.uz (2025-07-09) — 60+ ulushi 11.2%, mehnatga layoqatli yoshdan kattalar 4.5 mln
14. yuz.uz — Internet foydalanuvchilari 27.2 mln+ (25 mln mobil)
15. infocom.uz — Bank kartalari 69 mln · POS 445 ming · bankomatlar 46 ming
16. stat.uz (2026-05-01) — 1.2 mln+ kichik tadbirkorlik subyekti
17. stat.uz (2025-10-24) — KOBM bozor xizmatlari 397.5 trln so'm
18. it-park.uz (2026-01-07) — 3,400+ IT Park rezidenti (970+ xorijiy kapital)
19. buxgalter.uz (2025-01-07) — O'RQ-1014 (2024-12-24): IT Park soliq imtiyozlari 2031-gacha uzaytirildi
20. salom-ai.uz — IT Park AI startaplar uchun 0% soliq (2031-gacha)

---

## 🔗 BOG'LIQ NOTALAR

- [[WORKFLOW]] — yangi g'oya qo'shish va rivojlantirish jarayoni
- [[STARTUP-MUAMMOLAR]] — rad etilgan g'oyalar va sabablari
- [[METHODOLOGY]] — 7 boqichli metodologiya
- [[STARTUP-100-STEPS]] — 100 qadam framework
- [[STATS]] — joriy holat statistikasi
- [[Chat for AIs and Monitoring]] — AI 01 ↔ AI 07 aloqa jurnali

---

*Oxirgi yangilanish: 2026-09-04 (UZ bozor bazasi + aniq iqllik testi — v3.0)*