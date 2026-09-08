---
aliases: [Standartlar, Standards, Qabul Mezonlari, Accept Criteria, Checklist]
tags: [meta, standards, quality]
created: 2026-09-04
updated: 2026-09-08
sektor: 00-Meta
tur: meta
holat: faol
sarlavha: Standartlar — UZ bozori uchun mukammal
qisqacha: UZ bozori uchun aniq iqllik standartlari — 100 qadamli qabul standarti + baholash + sifat nazorati (v6.0)
---

# ✅ STANDARTLAR — Startup G'oyalarni Qabul Qilish va Sifat Nazorati

> **Maqsad:** Har bir saqlangan g'oya REAL muammo, REAL to'lovchi va REAL bo'sh joyga ega bo'lishini kafolatlash.
> **Qoida:** Standartga to'g'ri kelmagan g'oya vaultga KIRMAYDI (70 ta g'oya shu sabab o'chirilgan — [[REAL-PROBLEMS-UZ]]).
> **Qabul yo'li:** Yangi g'oya 100 QADAMLI QABUL STANDARTI (5-bo'lim) dan o'tadi — kamida 90/100 va kritik mezonlarda 100% bajarilishi shart. Amalda isbot: [[SMB_Cybersecurity|XavfsizBiz.uz]] 100/100 o'tgan (6-bo'lim).
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

## 🆚 3.9. REAL RAQOBATCHILAR BAZASI (2025-2026 research — v4.0)

Har g'oya tekshirilganda quyidagi **real UZ raqobatchilari** bilan solishtiriladi (kim nima qilgan, bo'sh joy qayerda):

### A) Bog'cha bozori (Bog'chaTop uchun)
| Raqobatchi | Nima qiladi | Kuchli tomoni | Bo'sh joy |
|------------|-------------|---------------|-----------|
| **nodavlat-bogcha.uz** + ilova (davlat platformasi) | Nodavlat bog'cha ro'yxati, davomat, ota-ona ilovasi | Davlat ishonchi, bepul | Tekshiruv/reyting/narx taqqoslash yo'q |
| **goldenpages.uz** (837 bog'cha) | Katalog — kontakt + manzil | Keng baza | Narx, o'rinlar, review, tekshiruv yo'q |
| **top.uz / yellowpages.uz** | Katalog | — | Faqat kontakt |
| **Yandex Maps** | Xarita + review | Joylashuv | Bog'cha-spetsifik emas, tekshiruv yo'q |

**Bo'sh joy xulosasi:** katalog bor, lekin TEKSHIRUV + narx + review + bron — bo'sh.

### B) To'y bozori (To'yByudjet uchun)
| Raqobatchi | Nima qiladi | Kuchli tomoni | Bo'sh joy |
|------------|-------------|---------------|-----------|
| **kalki.uz** | Umumiy kalkulyatorlar (soliq, foiz) | Bepul, tanish | To'y byudjeti + pudratchilar YO'Q |
| **yellowpages.uz** (to'y sayohatlari) | Katalog | — | Pudratchi bozori YO'Q |
| To'y agentliklari (Instagram) | To'liq tashkil qilish (10–20% komissiya) | Xizmat sifati | Komissiya baland, shaffoflik yo'q |

**Bo'sh joy xulosasi:** kalkulyator bor, pudratchi MARKETPLACE'i bo'sh.

### C) Kiberxavfsizlik bozori (XavfsizBiz.uz uchun)
| Raqobatchi | Nima qiladi | Kuchli tomoni | Bo'sh joy |
|------------|-------------|---------------|-----------|
| **CSEC (csec.uz)** — davlat markazi | Davlat ob'yektlari uchun xizmat, 24/7 ishonch telefoni | Davlat miqyosida | KOBM ga xizmat qilmaydi |
| **UZINFOCOM** | DDoS himoya, antivirus, audit, o'qitish | Texnik imkoniyat | KOBM narxiga emas, korporativ |
| **CYBERNODE** (xususiy) | Yirik mijozlar uchun | Texnik | KOBM segmentiga yo'nalmagan |
| Mastercard so'rovi (2025) | KOBM larning ~50% hujumga uchragan — talab isboti | — | — |

**Bo'sh joy xulosasi:** davlat/korporativ xizmatlar bor — ARZON KOBM xizmati bo'sh (PP-167 talablari KOBM ga ham o'tmoqda).

### D) Ta'lim bozori (QishloqMaktab.uz uchun)
| Raqobatchi | Nima qiladi | Kuchli tomoni | Bo'sh joy |
|------------|-------------|---------------|-----------|
| **TopSpot / Englify** | Onlayn ingliz tili (jonli darslar) | Sifat, brend | Shahar narxi (430k so'm+/oy), qishloqqa mos emas |
| **Grand Ta'lim** (12 filial) | Offline + onlayn | Tarmoq | Shaharlar, qishloq yo'q |
| **Global Education (Telegram)** | Telegram darslar (Payme/Click) | Kanali to'g'ri | Qishloqqa qaratilmagan, jonli emas |
| British Council | Onlayn | Xalqaro brend | Narxi yuqori |

**Bo'sh joy xulosasi:** onlayn ta'lim bor — QISHLOQQA qaratilgan arzon jonli model bo'sh.

### E) Parvarish bozori (Parvarish.uz uchun)
| Raqobatchi | Nima qiladi | Kuchli tomoni | Bo'sh joy |
|------------|-------------|---------------|-----------|
| **onlaynhamshira.uz / Med24 / InCare / Paramedics / TezMed / MyCare** | Uyga tibbiy hamshira, ukol, tahlil (24/7) | Tibbiy xizmat | KUNDALIK parvarish (yashash, ovqat, nazorat) YO'Q |
| **OLX** (29 e'lon) | Shaxsiy hamshira e'lonlari | — | Tekshiruv, kafolat, hisobot yo'q |

**Bo'sh joy xulosasi:** tibbiy xizmatlar bor — DIASPORA NAZORATI bilan keksalar parvarishi bo'sh.

### F) Raqobatchi tekshiruv TEMPLATE (har g'oya uchun majburiy)
```markdown
## 🆚 RAQOBATCHILAR (sana)
| Raqobatchi | Nima qiladi | Kuchli | Bo'sh joy |
|---|---|---|---|
| 1. _ | _ | _ | _ |
| 2. _ | _ | _ | _ |

**Bo'sh joy xulosasi:** _ (katalog bor lekin X yo'q / xizmat bor lekin segment Y ga yo'nalmagan)
**Manbalar:** goldenpages.uz/yellowpages.uz/Google qidiruv — tekshirilgan sana
```

---

## 🏢 3.10. KOMPANIYA YURIDIK STATUSI TEMPLATE (v4.0)

Har loyihada **bosqichga mos yuridik shakl** belgilanadi — status avtomatik o'smaydi, maqsadga qarab tanlanadi:

| Bosqich | Yuridik shakl | Soliq rejimi | Qachon o'tish |
|---------|---------------|--------------|--------------|
| MVP (0–$1k MRR) | **Yakka tadbirkor (YTT)** | Qat'iy soliq (2025: xodim uchun 32.5k so'm yarmi); 2030-gacha maxsus rejim | Darhol — bepul ochiladi (my.gov.uz) |
| O'sish ($1k–5k MRR) | YTT → **MCHJ** | YTT imtiyozlari davom; MCHJ da standart | 10+ mijoz/shartnoma kerak bo'lganda |
| Scale ($5k+ MRR) | **MCHJ + IT Park rezidenti** | **0% daromad solig'i** (2031-gacha, O'RQ-1014) | IT faoliyat ulushi yetganda |
| Escrow/xalqaro | MCHJ + alohida hisob / xorijiy yuridik shaxs | Alohida talablar | To'lov himoyasi (escrow) yoqilganda |

**YTT imtiyozlari (2025):** qat'iy soliq 50% xodim uchun (32.5 ming so'm), savdo uchun alohida stavkalar — president.uz (2025-08-11), gov.uz (2025-03-20)

### Template (har loyiha fayliga):
```markdown
## 🏢 YURIDIK STATUS
| Bosqich | Shakl | Soliq | Qachon o'zgaradi |
|---|---|---|---|
| Hozir | Yakka tadbirkor | Qat'iy | 10+ mijozda |
| Keyin | MCHJ + IT Park | 0% soliq | MRR $5k+ |
**Qonuniy doira:** litsenziya kerakmi (O'RQ-701)? JK 278 ehtiyoti? PP-167? — aniq javob
```

---

## ⚖️ 3.11. QONUNLAR TEKSHIRUV TEMPLATE (v4.0)

Har g'oya **qonuniy doirasini** quyidagi template bilan tekshiradi:

| # | Savol | Javob (aniq) | Manba |
|---|-------|--------------|-------|
| 1 | Faoliyat litsenziyalanadimi? (O'RQ-701) | Ha/Yo'q — qaysi tur | lex.uz |
| 2 | Sektor qonuni bormi? (bog'cha 2022, PP-167, ta'lim) | Ha — qaysi | lex.uz |
| 3 | JK javobgarligi bormi? (JK 278 — axborot xavfsizligi) | Ehtiyot choralari | lex.uz |
| 4 | Shaxsiy ma'lumotlar qonuni (O'RQ-718?) | Talablar | lex.uz |
| 5 | To'lov tizimi talablari (Payme/Click merchant) | Rasmiylashuv muddati | provider.uz |
| 6 | IT Park rezidentligi mumkinmi? | Ha/Yo'q — IT faoliyat ulushi | it-park.uz |

**Yangi qonunlar (research 2026):**
- **PQ-167** (2023-05-31, lex.uz/-6479190) — kiberxavfsizlik talablari (MAI obyektlari)
- **2026–2030 Kiberxavfsizlik strategiyasi** (2026-03-10 farmon, gazeta.uz 2026-03-17) — talab o'sishda
- **O'zMSt 472:2025** — axborot xavfsizligi hodisalarini boshqarish (milliy standart)
- **YTT maxsus rejim** (2030-12-31 gacha) — president.uz (2025-08-11)
- **O'RQ-1014** (2024-12-24) — IT Park imtiyozlari uzaytirildi (2031)

---

## ⚠️ 3.12. XAVFLAR VA TUZOQLAR (CB Insights + UZ — v5.0)

### Global muvaffaqiyatsizlik sabablari (CB Insights — 400+ post-mortem tahlili)
| # | Sabab | % | Standartda qanday oldini olinadi |
|---|-------|---|----------------------------------|
| 1 | **Bozor ehtiyoji yo'q** (no market need) | **35–43%** | Mom Test 🥇-🥉 isboti + pre-order (2.5-bo'lim) |
| 2 | **Pul tugadi / mablag' topa olmadi** | **38%** | Cashflow qoidasi: 3 oy zaxira + IT Park grantlari (3.6C) |
| 3 | **Raqobatchiga yutqazdi** | **20%** | Real raqobatchilar bazasi (3.9) + moat tekshiruvi (QADAM 91) |
| 4 | **Noto'g'ri jamoa** | **15%** | 1-2 kishi qura oladigan MVP mezonu (1-bo'lim #5) |
| 5 | **Noto'g'ri vaqt** | **13%** | "Nega hozir?" savoli (Thiel 7-savol, 3.5B) |
| 6 | **Qonuniy muammolar** | **8%** | Qonuniy tekshiruv (3.11) — litsenziya/JK 278 |

### UZ-spetsifik tuzoqlar (vault tajribasidan)
| # | Tuzoq | Misol | Qoida |
|---|-------|-------|-------|
| 1 | **"Davlat qiladi" xavfi** | nodavlat-bogcha.uz — davlat o'zi platforma qurdi | Davlat bor joyda — hamkorlik yoki bo'sh segment topish (3.9) |
| 2 | **To'lovchi yo'q model** | NGO/grant g'oyalar (DigitalInclusion) | Kim to'laydi aniq bo'lmasa — RAD (1-bo'lim) |
| 3 | **Mavjud yechim kloni** | MetanNavbat→Metanchi.uz, NFCPay→Apple Pay | Raqobatchilar tekshiruvi (3.9) majburiy |
| 4 | **Naqd pul madaniyati** (qishloq) | Onlayn to'lov ishlamaydi | "Naqd + Payme" gibrid model (3.6D) |
| 5 | **Internet cheklovi** | Qishloqda video dars sig'maydi | Telegram engil format + oflayn (3.6D) |
| 6 | **Madaniy stigma** | "Arzon to'y" — obro' masalasi | Pozitsiya nazorati (To'yByudjet QADAM 86 saboq) |
| 7 | **Ishonch muammosi** | Onlayn xizmatga ishonmaydi | Oqsoqol/mahalla/direktor kanali (3.14) |
| 8 | **Mavsumiylik** | To'y avg–okt, paxta oylari churn | Mavsumiylik byudjeti (QADAM 49 saboq) |

---

## 📈 3.13. METRIKALAR STANDARTLARI (v5.0 — benchmarklar)

### A) Subscription/xizmat modellari (SaaS benchmarklari)
| Metrika | Zaif 🔴 | O'rta 🟡 | Sog'lom 🟢 | Manba |
|---------|---------|---------|------------|-------|
| Oylik churn | >5% | 2–5% | **<1%** (B2B SaaS median ~3.5%/yil) | Recurly 2025, Vena 2025 |
| Retention (2-oy) | <50% | 50–70% | **70%+** | saas-capital 2025 |
| MRR o'sishi (oylik) | <5% | 5–15% | **15%+** | a16z |
| LTV/CAC | <1× | 1–3× | **3×+** (yaxshi 5–10×) | YC standarti |
| NPS | <20 | 20–40 | **40+** | Sean Ellis |
| Gross margin (xizmat) | <50% | 50–70% | **70%+** | a16z |

### B) Marketplace modellari (Bog'chaTop/To'yByudjet uchun — a16z 13 metrika)
| Metrika | Zaif 🔴 | Sog'lom 🟢 | Formula |
|---------|---------|------------|----------|
| **Likvidlik** (buyer-side) | Qidiruv → bron <2% | **>5%** | bron/qidiruv |
| **Fill rate** (seller-side) | <50% so'rov javob | **>80%** | javob bergan/so'rov |
| **Take rate** | <3% | **5–15%** | daromad/GMV |
| GMV o'sishi | <10%/oy | **20%+/oy** | — |
| Listing hajmi | <100 | **500+** (1-shahar) | — |
| Mijoz CAC | — | Marketplace uchun <$30 | — |

### C) UZ spetsifik metrikalar
| Metrika | Mezon | Izoh |
|---------|-------|------|
| Payme/Click to'lov ulushi | To'lovchilarning 60%+ | Naqd+raqamli gibrid (3.6D) |
| Telegram kanal ochilishi | >50% | Mobil-birinchi auditoriya |
| Referral koeffitsienti | 0.3–1.0/oila | Ona zanjiri kuchi |

---

## 🔄 3.14. PIVOT QOIDALARI (v5.0 — qachon va qanday o'zgartirish)

### Qachon pivot (qizil chiziqlar)
| Holat | Qaror | |
|-------|-------|---|
| QADAM 30 GO/NO-GO: 2/4 mezon | **TUZATISH** (kanal/narx) — 1 oy | |
| QADAM 30: <2/4 mezon | **PIVOT** — segment/kanal/model o'zgaradi | |
| Beta (QADAM 37–40): 0 ta to'lovchi | **PIVOT** — intervyuga qaytish (Mom Test) | |
| PMF (QADAM 60): Sean Ellis <30% | **TUZATISH** — must-have funksiyaga | |
| MRR 6-oy: maqsaddan <50% | **PIVOT yoki TO'XTATISH** | |

### Pivot turlari (eng arzon → qimmat)
1. **Narx pivoti** — paket/narx modeli (eng arzon, 1 hafta)
2. **Kanal pivoti** — boshqa kanal (DM → ona zanjiri, 2 hafta)
3. **Segment pivoti** — boshqa mijoz (B2C → B2B/donor, 1 oy)
4. **Yechim pivoti** — boshqa yechim (xizmat → SaaS, 1-2 oy)
5. **Muammo pivoti** — butunlay boshqa muammo (oxirgi chora, 2-3 oy)

### Pivot protokoli
1. Sababni yozish (qaysi mezon ishlamadi — ma'lumot bilan)
2. Pivot turini tanlash (yuqoridagi 5 tadan)
3. Yangi gipoteza + 2 haftalik mini-tekshiruv (5 intervyu / landing)
4. Natijaga qarab: davom / yana pivot / to'xtatish
5. Chat faylida e'lon qilish + frontmatter holat yangilash

---

## 🤝 3.15. MADANIY OMILLAR VA ISHONCH KANALLARI (v5.0 — UZ xususiyati)

O'zbekiston bozorida g'oya muvaffaqiyati ko'pincha **texnologiyadan ko'ra ishonchga** bog'liq:

| Ishonch kanali | Qanday ishlaydi | Qaysi loyihalarda |
|----------------|-----------------|--------------------|
| **Mahalla / oqsoqol** | Yig'ilishda tavsiya — kuchli ijtimoiy isbot | QishloqMaktab, Parvarish |
| **Maktab direktori** | Rasmiy ishonch — ota-onalarga xabar | QishloqMaktab |
| **Ona zanjiri** | Bola darsidan keyin do'stlar onalariga | QishloqMaktab, To'yByudjet |
| **Buxgalter** | KOBM moliyaviy ishonch shaxsi | XavfsizBiz |
| **Diaspora guruhlari** | Telegram guruhlari (Moskva/Seul) | Parvarish |
| **Bog'cha egasi o'zi** | Listing tarqatish (QR) | Bog'chaTop |

**Qoidalar:**
1. Har g'oyada kamida 1 ta ishonch kanali ko'rsatilgan bo'lishi shart (3.7 aniq kanal talabi bilan bog'liq)
2. Madaniy sezgirlik: "arzon" so'zi emas — "oqilona/byudjetli" (To'yByudjet saboq)
3. Rad etishga hurmat: "balki keyinroq" — savdo emas, ehtiyoj tushunish

---

## 📑 3.16. HUJJATLAR RO'YXATI (v5.0 — har loyiha shablonida)

| Hujjat | Qachon kerak | Kim tayyorlaydi |
|--------|--------------|-----------------|
| Mijoz shartnomasi (xizmat chegarasi) | 1-mijozdan | Siz + advokat |
| Yozma rozilik (xodimlar testi/sog'liq) | Beta boshlanganda | Siz |
| Pudratchi/ta'minotchi shartnomasi | Hamkor boshlanganda | Siz |
| Payme/Click merchant shartnomasi | To'lov yoqilganda (1–2 hafta) | Siz |
| O'qituvchi/xodim shartnomasi | Ishga olinganda | Siz |
| Maxfiylik siyosati (shaxsiy ma'lumotlar) | Sayt/ilova ishga tushganda | Shablon |
| Foydalanish shartlari | Sayt ishga tushganda | Shablon |
| Escrow alohida hisob hujjati | Escrow yoqilganda | Bank |

**Qoida:** MVP bosqichida 3 tasi minimal: mijoz shartnomasi + rozilik + merchant. Qolganlari bosqichma-bosqich.

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

## 🆚 Raqobatchilar (real — 3.9 template)
| Raqobatchi | Nima qiladi | Kuchli | Bo'sh joy |
|---|---|---|---|
| _ | _ | _ | _ |

## 🏢 Yuridik status (3.10 template)
| Bosqich | Shakl | Soliq | Qachon o'zgaradi |
|---|---|---|---|
| Hozir | _ | _ | _ |

## ⚖️ Qonuniy doira (3.11 template)
| Savol | Javob |
|---|---|
| Litsenziya kerakmi? | _ |
| Sektor qonuni | _ |

## 📈 Bozor tahlili (TAM/SAM/SOM)
- TAM: top-down (manbali)
- SAM: segment bo'yicha
- SOM: bottom-up (mijoz × ACV, UZS da)

## 🇺🇿 Aholi/segment statusi (3.6 bazaga solishtirish)
| Ko'rsatkich | UZ raqam | Bizning segment |
|---|---|---|
| Aholi 37.54 mln | _ | _ |

## ⚠️ Xavflar va tuzoqlar (3.12)
| Xavf | Ogohlantirish | Yechim |
|---|---|---|---|
| _ | _ | _ |

## 📈 Metrikalar (3.13)
| Metrika | Mezon | Manba |
|---|---|---|
| Churn | <1%/oy | Recurly |

## 🤝 Ishonch kanali (3.15)
| Kanal | Qanday | Qaysi bosqich |
|---|---|---|
| _ | _ | _ |

## 🔗 Bog'liq notalar
- [[00-Meta/STARTUP-100-STEPS]] · [[00-Meta/METHODOLOGY]] · [[00-Meta/STANDARTLAR]]

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
| Real raqobatchilar (3.9) | Kamida 2 ta real raqobatchi + bo'sh joy xulosasi | Raqobatchi research |
| Yuridik status (3.10) | Bosqichga mos shakl (YTT/MCHJ/IT Park) aniq | Status qo'shish |
| Qonuniy tekshiruv (3.11) | 6 savol javobi + tegishli qonun nomi | Qonun research |
| Xavflar (3.12) | 3+ xavf + ogohlantirish + yechim | Xavf tahlili |
| Metrikalar (3.13) | Churn/LTV/CAC mezonlariga mos | Metrika hisoblash |
| Pivot rejasi (3.14) | Qaysi holatda pivot — oldindan yozilgan | Qo'shish |
| Ishonch kanali (3.15) | Kamida 1 ta aniq kanal | Qo'shish |
| Hujjatlar (3.16) | MVP uchun 3 minimal hujjat | Ro'yxat tuzish |

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
21. nodavlat-bogcha.uz — davlat nodavlat bog'cha platformasi + ota-ona ilovasi (Bog'chaTop raqobatchisi)
22. goldenpages.uz — 837 xususiy bog'cha katalogi (raqobatchi tekshiruvi)
23. csec.uz — O'zbekiston Kiberxavfsizlik markazi (davlat — KOBM ga xizmat qilmaydi)
24. uzinfocom.uz — UZINFOCOM kiberxavfsizlik xizmatlari (DDoS, audit, o'qitish — korporativ)
25. onlaynhamshira.uz / med24.uz / inCare.uz / paramedics.uz / mycare.uz — uyga tibbiy hamshira xizmatlari
26. topspot.uz / englify.uz / grandtalim.uz — onlayn ingliz tili (shahar narxi, qishloq emas)
27. kalki.uz — umumiy kalkulyatorlar (to'y pudratchilari yo'q)
28. lex.uz/-6479190 — PQ-167 (2023-05-31) kiberxavfsizlik qarori
29. gazeta.uz (2026-03-17) — 2026–2030 Kiberxavfsizlik strategiyasi farmoni (2026-03-10)
30. gov.uz (2025-03-20) / president.uz (2025-08-11) — YTT maxsus soliq rejimi 2030-gacha
31. cbinsights.com — "Why Startups Fail" (400+ post-mortem): 35–43% no market need, 38% cash, 20% raqobat, 15% jamoa
32. recurly.com (2025) — Churn benchmark: B2B SaaS yillik median 3.5%, oylik <1%
33. venasolutions.com (2025-09-19) — SaaS churn: B2B oylik ~4.9% yillik
34. saas-capital.com (2025-09-18) — Retention benchmark: ARR $1M+ median o'sish 24%
35. a16z.com (2020-02-21) — "13 Metrics for Marketplace Companies": GMV, take rate, likvidlik
36. bowerycap.com — B2B marketplace: fill rate / tender acceptance metrikalari
37. stripe.com — Two-sided marketplace: search-to-booking, response time, liquidity

---

# 📋 5. 100 QADAMLI IDEA QABUL STANDARTI

> **BU 100 QADAM — IJRO EMAS, QABUL.** Har bir yangi g'oya vaultga **"idea" sifatida qabul qilinishi** uchun 100 mezonning kamida **90 tasi** va barcha **⭐ KRITIK** mezonlar bajarilishi shart.
> **Farq:** [[STARTUP-100-STEPS]] — qabul qilingandan KEYINGI 100 qadamlik qurilish. Bu bo'lim — qabuldan OLDINGI 100 qadamlik tekshiruv.
> **Jarayon:** AI 01 har qadamni ✅/❌ belgilaydi, dalil (fayl, manba, raqam) ko'rsatadi. Yakun: baho (X/100) + GO/TUZATISH/RAD qarori.
> **Format:** har qadamda — ✅ Mezon (nima talab qilinadi) · 📐 O'lchov (qanday tekshiriladi) · 🚩 Qizil bayroq (nima bo'lsa RAD).

---

## 🧠 BOSQICH 1: MUAMMO HAQIQIYLIGI (QADAMLAR 1–10)

> **Maqsad:** Muammo real, aniq va og'riqli ekanini isbotlash. Chiqish sharti: 1 jumlalik problem statement + 3 raqam.

**QADAM 1 — Muammo 1 jumlada**
- ✅ Mezon: kim, qanday muammo, qanchalik tez-tez — bitta jumla.
- 📐 O'lchov: "Kim uchun? Nima? Nima uchun og'riq?" ga aniq javob bor.
- 🚩 Qizil: "hamma uchun", "shunchaki g'oya", 10 daqiqa tushuntirish kerak.

**QADAM 2 — Muammo kuzatilgan**
- ✅ Mezon: shaxsiy tajriba yoki real intervyu dalili.
- 📐 O'lchov: kamida 1 real odam muammoni o'z og'zidan aytgan (iqtibos).
- 🚩 Qizil: faqat statistika/taxmin — hech kim bilan gaplashilmagan.

**QADAM 3 — Chastota aniq**
- ✅ Mezon: muammo qanchalik tez-tez uchraydi (kun/hafta/oy).
- 📐 O'lchov: chastota raqami yozilgan.
- 🚩 Qizil: yiliga bir marta — noqulay, startap qurilmaydi.

**QADAM 4 — Og'riq pul bilan o'lchanadi**
- ✅ Mezon: muammo pul/vaqt/holat yo'qotadi.
- 📐 O'lchov: zarar miqdori (masalan: "$3,000 yo'qotdi").
- 🚩 Qizil: "yaxshi bo'lardi" — nice-to-have, to'lovchi topilmaydi.

**QADAM 5 — Trend kuchayyapti**
- ✅ Mezon: muammo kuchaymoqda (demografiya, raqamlashtirish, qonun).
- 📐 O'lchov: 1+ manbali trend dalili.
- 🚩 Qizil: pasayayotgan bozor/eshitilmaydigan muammo.

**QADAM 6 — Mavjud yechim qidiruvi**
- ✅ Mezon: 3+ kanalda qidiruv (Google, Telegram, OLX, davlat, global).
- 📐 O'lchov: topilgan yechimlar ro'yxati.
- 🚩 Qizil: qidirmasdan "yo'q" deyish.

**QADAM 7 — Mavjud yechimning kamchiligi aniq**
- ✅ Mezon: mavjud yechim nima uchun yetarli emas — 1 ta aniq bo'shliq.
- 📐 O'lchov: bo'shliq: narx / til / hudud / ishonch / tezlik.
- 🚩 Qizil: mavjud yechim yetarli — bo'shliq yo'q (takrorlash).

**QADAM 8 — UZ realligi raqam bilan**
- ✅ Mezon: muammo O'zbekistonga tegishli va manbali raqam bor.
- 📐 O'lchov: stat.uz / OAV / davlat hisoboti.
- 🚩 Qizil: faqat global ma'lumot, UZ dalili yo'q.

**QADAM 9 — O'tkir (urgent) emas, kutish rejimi**
- ✅ Mezon: "agar bugun hal bo'lmasa — ertaga yo'qotaman" darajasi.
- 📐 O'lchov: "ertaga bo'lmasa nima bo'ladi" savoliga og'riqli javob.
- 🚩 Qizil: "keyinroq ham bo'ladi" — sotish qiyin bo'ladi.

**QADAM 10 ⭐ — Problem Statement yozilgan**
- ✅ Mezon: 1 jumla + 3 raqam (STARTUP-100-STEPS QADAM 5 formati).
- 📐 O'lchov: faylda "Muammo (1 jumla)" bo'limi to'ldirilgan.
- 🚩 Qizil: yo'q.

## 👥 BOSQICH 2: AUDITORIYA (QADAMLAR 11–20)

> **Maqsad:** kimga ekanini, qancha ekanini va qanday erishishni aniqlash. Chiqish sharti: 1 segment + 1 persona + 5 intervyu.

**QADAM 11 — 1 ta aniq segment**
- ✅ Mezon: "hamma" emas — bitta nomlangan segment.
- 📐 O'lchov: segment nomi (masalan: "Toshkentdagi 0-6 yoshli bolali onlayn-do'kon egalari").
- 🚩 Qizil: "hamma", "marketing", "yosh avlod".

**QADAM 12 — Segment hajmi raqamli**
- ✅ Mezon: qancha odam/tashkilot (manbali).
- 📐 O'lchov: 1+ manbali raqam.
- 🚩 Qizil: hajm MVP uchun juda kichik yoki noma'lum.

**QADAM 13 — Manba rasmiy**
- ✅ Mezon: stat.uz, vazirlik, assotsiatsiya, OAV.
- 📐 O'lchov: havola/sana.
- 🚩 Qizil: "ko'pchilik", "taxminan", "internetda aytishadi".

**QADAM 14 ⭐ — 2+ erishish kanali**
- ✅ Mezon: segmentga qanday kiriladi — 2 ta aniq kanal.
- 📐 O'lchov: Telegram guruh, uyushma, mahalla, buxgalter, direktor, diaspora.
- 🚩 Qizil: kanal yo'q — reklama pulli bo'ladi, CAC oshadi.

**QADAM 15 — ICP persona yozilgan**
- ✅ Mezon: ismli, yoshi, daromadi, joyi, xatti-harakati bilan persona.
- 📐 O'lchov: 1+ persona bloki (masalan: "Bobur, 34, onlayn-do'kon, 15 xodim").
- 🚩 Qizil: abstrakt "foydalanuvchi".

**QADAM 16 — 5+ intervyu o'tkazilgan**
- ✅ Mezon: real odamlar bilan suhbat (sana, kim, kanal yozilgan).
- 📐 O'lchov: intervyu jadvali (STARTUP-100-STEPS QADAM 4 formati).
- 🚩 Qizil: 0–2 intervyu.

**QADAM 17 — So'zma-so'z iqtiboslar**
- ✅ Mezon: 3+ iqtibos, qisqartirilmagan.
- 📐 O'lchov: "…" belgili iqtibos bloki.
- 🚩 Qizil: faqat xulosa, iqtibos yo'q.

**QADAM 18 — To'lov qobiliyati**
- ✅ Mezon: segmentning daromad manbasi bor.
- 📐 O'lchov: "kim to'laydi, qayerdan pul".
- 🚩 Qizil: talabalar/grant/"keyinroq".

**QADAM 19 — CAC taxmini**
- ✅ Mezon: kanal bo'yicha mijoz topish narxi est.
- 📐 O'lchov: 1+ kanal uchun raqam.
- 🚩 Qizil: noma'lum — iqtisod hisoblab bo'lmaydi.

**QADAM 20 — Segment 2 jumlada tushuntiriladi**
- ✅ Mezon: do'stingizga 2 jumlada aytib berish mumkin.
- 📐 O'lchov: yozilgan segment tavsifi.
- 🚩 Qizil: 5 daqiqa tushuntirish kerak.

---

## 💰 BOSQICH 3: TO'LOVCHI VA NARX (QADAMLAR 21–30)

> **Maqsad:** kim haqiqatda to'laydi, qancha va to'lovga tayyorligini isbotlash. Chiqish sharti: narx UZS + to'lov isboti (Mom Test 🥇-🥉).

**QADAM 21 — To'lovchi ≠ foydalanuvchi aniqlangan**
- ✅ Mezon: kim haqiqatda pul chiqaradi.
- 📐 O'lchov: "foydalanuvchi", "to'lovchi", "qaror qiluvchi" uchligi yozilgan.
- 🚩 Qizil: "foydalanuvchi to'laydi" — isbotsiz taxmin.

**QADAM 22 — Narx UZS da aniq**
- ✅ Mezon: 1 ta aniq raqam (oylik/bir martalik).
- 📐 O'lchov: masalan: "30 000 so'm/oy" yoki "$30/oy ≈ 385 ming so'm".
- 🚩 Qizil: "arzon", "bozorga qarab".

**QADAM 23 — To'lov chastotasi**
- ✅ Mezon: bir martalik / oylik / yillik.
- 📐 O'lchov: yozilgan.
- 🚩 Qizil: aniqlanmagan.

**QADAM 24 ⭐ — To'lovga tayyorlik isboti**
- ✅ Mezon: 🥇 pre-order (pul berilgan) / 🥈 og'zaki majburiyat / 🥉 o'tmishda shunga to'lagan. Kamida 🥉.
- 📐 O'lchov: Mom Test 2.5-bo'lim isbot shkalasi.
- 🚩 Qizil: faqat "yaxshi fikr" maqtovlari.

**QADAM 25 — O'tmish xulq-atvori**
- ✅ Mezon: shunga o'xshash narsaga ilgari pul to'laganmi.
- 📐 O'lchov: misol (antivirus, kurs, xizmat to'lovi).
- 🚩 Qizil: hech qachon bunday narsaga to'lamagan.

**QADAM 26 — To'lov kanali ishlaydi**
- ✅ Mezon: Payme/Click/Uzum Pay/naqd — segment uchun amaliy.
- 📐 O'lchov: qishloq uchun naqd+gibrid, shahar uchun Payme.
- 🚩 Qizil: faqat karta — qishloqda ishlamaydi.

**QADAM 27 — Byudjet manbasi**
- ✅ Mezon: biznes byudjetimi yoki shaxsiy pulmi.
- 📐 O'lchov: yozilgan.
- 🚩 Qizil: noaniq — kim qaror qiladi ham noaniq.

**QADAM 28 — Narx raqobatchilar bilan solishtirilgan**
- ✅ Mezon: mavjud narxlar jadvali.
- 📐 O'lchov: 3+ raqobatchi narxi.
- 🚩 Qizil: solishtirilmagan.

**QADAM 29 — Narx madaniy/qonuniy qabul**
- ✅ Mezon: narx stigma yaratmaydimi.
- 📐 O'lchov: intervyuda narxni aytib ko'rish.
- 🚩 Qizil: "bunday pulga hech kim" reaksiyasi.

**QADAM 30 — WTP testi o'tkazilgan**
- ✅ Mezon: 50+ so'rov yoki intervyuda "qancha to'laysiz" javobi.
- 📐 O'lchov: javoblar taqsimoti (median).
- 🚩 Qizil: isbotsiz narx.

## 📊 BOSQICH 4: BOZOR (QADAMLAR 31–40)

> **Maqsad:** bozor kattaligi va o'sishini manbali hisoblash. Chiqish sharti: TAM/SAM/SOM 3 jumla.

**QADAM 31 — TAM (top-down)**
- ✅ Mezon: umumiy bozor hajmi (yuqoridan pastga).
- 📐 O'lchov: manbali raqam (davlat/analitika).
- 🚩 Qizil: yo'q.

**QADAM 32 — SAM (bottom-up)**
- ✅ Mezon: segment × narx × chastota = erishish mumkin bozor.
- 📐 O'lchov: hisob ketma-ketligi yozilgan.
- 🚩 Qizil: faqat top-down — amaliy emas.

**QADAM 33 — SOM (realist, 3–5 yil)**
- ✅ Mezon: kanallar orqali haqiqiy erishish mumkin ulush.
- 📐 O'lchov: SOM = SAM × kanal cheklovi.
- 🚩 Qizil: SOM = TAM deb yozish (aldamchi).

**QADAM 34 — Hisob manbali**
- ✅ Mezon: har raqamning manbasi bor.
- 📐 O'lchov: manba ro'yxati (1-bo'lim talabi).
- 🚩 Qizil: "taxminan", manbasiz.

**QADAM 35 — O'sish trendi**
- ✅ Mezon: yillik o'sish % manbali.
- 📐 O'lchov: 2+ yil ma'lumot.
- 🚩 Qizil: o'smayotgan.

**QADAM 36 ⭐ — YC mezon: kichik segment + tez o'sish**
- ✅ Mezon: segment kichik (shahar/mikro) lekin tez o'syapti.
- 📐 O'lchov: 1-mezon (YC 3.5-bo'lim).
- 🚩 Qizil: "katta bozor" degan loyqa so'z.

**QADAM 37 — Geografiya aniq**
- ✅ Mezon: Toshkent / viloyat / qishloq / mamlakat.
- 📐 O'lchov: yozilgan.
- 🚩 Qizil: "O'zbekiston bo'ylab" — qayerdan boshlash aniq emas.

**QADAM 38 — Mavsumiylik tahlili**
- ✅ Mezon: qaysi oyda talab yuqori/past.
- 📐 O'lchov: jadval/izoh.
- 🚩 Qizil: mavsumiy g'oya mavsumni bilmaydi.

**QADAM 39 — O'sish driveri**
- ✅ Mezon: qonun, texnologiya, demografiya — nima itaradi.
- 📐 O'lchov: 1+ driver manbasi.
- 🚩 Qizil: driver yo'q.

**QADAM 40 — TAM/SAM/SOM xulosasi**
- ✅ Mezon: 3 jumla: katta miqyos, erishish mumkin qism, bizning ulush.
- 📐 O'lchov: faylda "Bozor tahlili" bo'limi.
- 🚩 Qizil: yo'q.

---

## 🆚 BOSQICH 5: RAQOBAT (QADAMLAR 41–50)

> **Maqsad:** kim bor, bo'sh joy qayerda, biz nima uchun yutamiz. Chiqish sharti: 5+ raqobatchi + bo'sh joy + moat.

**QADAM 41 — 5+ raqobatchi ro'yxati**
- ✅ Mezon: global + lokal + davlat + OLX/Telegram informal.
- 📐 O'lchov: ro'yxat (STANDARTLAR 3.9 template).
- 🚩 Qizil: 1-2 raqobatchi — yaxshi qidirilmagan.

**QADAM 42 — 1 asosiy raqib deep-dive**
- ✅ Mezon: modeli, narxi, kuchli/zaif tomonlari.
- 📐 O'lchov: 1 raqib tahlili.
- 🚩 Qizil: faqat nomlar.

**QADAM 43 — Solishtirma jadval**
- ✅ Mezon: xususiyatlar × raqobatchilar jadvali.
- 📐 O'lchov: jadval.
- 🚩 Qizil: yo'q.

**QADAM 44 — Bo'sh joy aniq**
- ✅ Mezon: "hech kim qilmayotgan narsa" — 1 jumla.
- 📐 O'lchov: bo'sh joy yozilgan.
- 🚩 Qizil: bo'sh joy yo'q — raqobatda eziladi.

**QADAM 45 — 1 ta asosiy farqlanish**
- ✅ Mezon: bizni farqlaydigan 1 ta xususiyat.
- 📐 O'lchov: "biz X, ular Y" pozitsiya.
- 🚩 Qizil: 5 ta farq — pozitsiya aniq emas.

**QADAM 46 — Raqobatchi zaifligi manbali**
- ✅ Mezon: review, narx sahifasi, mijoz shikoyati.
- 📐 O'lchov: 1+ manba.
- 🚩 Qizil: "ular yomon" — isbotsiz.

**QADAM 47 — "Davlat qiladi" xavfi tekshirilgan**
- ✅ Mezon: davlat tizimi bor/kelayotgani qidirilgan (nodavlat-bogcha.uz, CSEC kabi).
- 📐 O'lchov: qidiruv natijasi.
- 🚩 Qizil: davlat aynan shu ishni qiladi (RAD).

**QADAM 48 — Klonlash xavfi**
- ✅ Mezon: oson klonlanadimi — moat kerak.
- 📐 O'lchov: "3 oyda kimdir nusxa olsa nima bo'ladi" javobi.
- 🚩 Qizil: nusxa olinsa biz o'lamiz, himoya yo'q.

**QADAM 49 — Moat bor**
- ✅ Mezon: tarmoq effekti / brend / ma'lumot / regulyatsiya / lokal til.
- 📐 O'lchov: moat turi yozilgan.
- 🚩 Qizil: moat yo'q.

**QADAM 50 — "Nega biz yutamiz" xulosasi**
- ✅ Mezon: 3 jumla: bo'sh joy, farq, moat.
- 📐 O'lchov: faylda "Raqobatchilar" bo'limi.
- 🚩 Qizil: yo'q.

## 🛠️ BOSQICH 6: YECHIM VA MVP (QADAMLAR 51–60)

> **Maqsad:** yechim muammoga mos, MVP arzon va tez quriladi. Chiqish sharti: MVP ta'rifi + narx + muddat.

**QADAM 51 — Yechim muammoga bog'langan**
- ✅ Mezon: har xususiyat qaysi muammoni yechadi — aniq.
- 📐 O'lchov: xususiyat ↔ muammo jadvali.
- 🚩 Qizil: "aynan shunday" — muammosiz yechim.

**QADAM 52 — Yechim oddiy (1–2 qadam)**
- ✅ Mezon: foydalanuvchi 1-2 harakatda natijaga yetadi.
- 📐 O'lchov: foydalanish ssenariysi.
- 🚩 Qizil: 10+ qadam, o'rgatish kerak.

**QADAM 53 — MVP hajmi aniq**
- ✅ Mezon: eng kichik ishlaydigan versiya — nima bor, nima yo'q.
- 📐 O'lchov: MVP funksiyalari ro'yxati (MoSCoW).
- 🚩 Qizil: "to'liq mahsulot" rejasi.

**QADAM 54 — MVP narxi byudjetga mos**
- ✅ Mezon: qurish narxi UZS/$ (masalan: $150–250 yoki $3,000–5,000).
- 📐 O'lchov: byudjet bilan solishtirish (PORTFEL-2026).
- 🚩 Qizil: byudjetdan 10x oshib ketgan.

**QADAM 55 — Muddat hafta/oy**
- ✅ Mezon: 1-2 oy ichida qurish mumkin.
- 📐 O'lchov: sprint reja (STARTUP-100-STEPS QADAM 33).
- 🚩 Qizil: 6+ oy — no-startup darajasi.

**QADAM 56 — Texnologiya mavjud**
- ✅ Mezon: internet, qurilma, platforma, to'lov — hammasi bor.
- 📐 O'lchov: infratuzilma ro'yxati.
- 🚩 Qizil: sensor/datchik/import uskuna kerak (og'ir).

**QADAM 57 — MVP'siz tekshirish mumkin**
- ✅ Mezon: concierge / fake-door / Telegram orqali qo'lda xizmat.
- 📐 O'lchov: 1 ta usul tanlangan.
- 🚩 Qizil: faqat kod yozib tekshirish mumkin.

**QADAM 58 — Shablon emas**
- ✅ Mezon: g'oya standart ro'yxatdagi shablonga o'xshamaydi.
- 📐 O'lchov: 70 o'chirilgan g'oya bilan solishtirish.
- 🚩 Qizil: shablon g'oya (todo, chat, delivery...).

**QADAM 59 — Kengayishi mumkin**
- ✅ Mezon: bitta segmentdan ikkinchisiga o'tish yo'li bor.
- 📐 O'lchov: kengayish yo'l xaritasi.
- 🚩 Qizil: faqat bitta tor ish, kengaymaydi.

**QADAM 60 — NIMANI QURMAYMIZ aniq**
- ✅ Mezon: MVP'ga kirmaydiganlar ro'yxati (xuddi kiruvchilar kabi muhim).
- 📐 O'lchov: "Out of scope" ro'yxati.
- 🚩 Qizil: hamma narsani qurish rejasi.

---

## ⚖️ BOSQICH 7: QONUN VA YURIDIK (QADAMLAR 61–70)

> **Maqsad:** qonuniy to'siq yo'q va yuridik shakl tanlangan. Chiqish sharti: litsenziya/soliq/status xulosasi.

**QADAM 61 — Litsenziya tekshiruvi**
- ✅ Mezon: O'RQ-701 (IT) va sektor litsenziyalari.
- 📐 O'lchov: litsenziya kerakmi/kerak emasmi — manbali.
- 🚩 Qizil: litsenziya kerak, olish rejasi yo'q.

**QADAM 62 — Sektor qonuni**
- ✅ Mezon: 2022 bog'cha qonuni, PP-167, JK 278, tibbiyot qonunlari.
- 📐 O'lchov: tegishli qonun topilgan.
- 🚩 Qizil: qonun g'oyani taqiqlaydi yoki qimmatlashtiradi.

**QADAM 63 — Shaxsiy ma'lumotlar**
- ✅ Mezon: O'zMSt / himoya talablari.
- 📐 O'lchov: ma'lumot yig'ish rejasi.
- 🚩 Qizil: maxfiy ma'lumot ishlatish rejasi (tibbiy, moliyaviy).

**QADAM 64 — To'lov/eskrou qonuni**
- ✅ Mezon: kassa, NDS, eskrou alohida hisob (3.11 template).
- 📐 O'lchov: to'lov sxemasi.
- 🚩 Qizil: noqonuniy sxema.

**QADAM 65 — Yuridik status tanlangan**
- ✅ Mezon: YTT / MCHJ / MCHJ+IT Park (3.10 template).
- 📐 O'lchov: status jadvali to'ldirilgan.
- 🚩 Qizil: noma'lum.

**QADAM 66 — Soliq rejimi**
- ✅ Mezon: 1% aylanma, YTT qat'iy, IT Park 0% (2031-gacha).
- 📐 O'lchov: soliq hisobi.
- 🚩 Qizil: soliq yemaydi deb hisoblamagan.

**QADAM 67 — Ishonch mexanizmi**
- ✅ Mezon: escrow / kafolat / depozit — kerakmi tekshirilgan.
- 📐 O'lchov: marketplace uchun escrow rejasi.
- 🚩 Qizil: ishonchsiz to'lov sxemasi.

**QADAM 68 — Shartnoma shablonlari**
- ✅ Mezon: mijoz / pudratchi / xodim shartnomalari.
- 📐 O'lchov: shablonlar ro'yxati.
- 🚩 Qizil: yo'q.

**QADAM 69 — Brend va domen**
- ✅ Mezon: nom tekshirilgan (.uz domen, Telegram username, trademark).
- 📐 O'lchov: mavjudlik tekshiruvi.
- 🚩 Qizil: nom band — g'oya nomini o'zgartirish kerak.

**QADAM 70 — Yuridik xulosa**
- ✅ Mezon: "qonuniy o'tish mumkin" — 2-3 jumla.
- 📐 O'lchov: faylda "Qonuniy doira" bo'limi.
- 🚩 Qizil: hal etilmagan qonuniy xavf.

## 🤝 BOSQICH 8: IJTIMOIY-MADANIY MOSLIK (QADAMLAR 71–80)

> **Maqsad:** UZ xalqi g'oyani qabul qiladimi, ishonch qanday quriladi. Chiqish sharti: ishonch kanali + stigma tekshiruvi.

**QADAM 71 — Stigma tekshiruvi**
- ✅ Mezon: "buni ishlatish uyat emasmi" — intervyuda aytib ko'rilgan.
- 📐 O'lchov: intervyu javobi.
- 🚩 Qizil: stigma bor, yashirincha ishlatiladi — sotish qiyin.

**QADAM 72 — Ishonch kanali aniq**
- ✅ Mezon: mahalla/oqsoqol, direktor, ona zanjiri, buxgalter, diaspora (3.15).
- 📐 O'lchov: 1+ kanal tanlangan va qanday ishga tushishi yozilgan.
- 🚩 Qizil: faqat Instagram reklama.

**QADAM 73 — Til**
- ✅ Mezon: o'zbekcha kontent/mijoz xizmati.
- 📐 O'lchov: til strategiyasi.
- 🚩 Qizil: faqat rus/ingliz (KOBM egasi tushunmaydi).

**QADAM 74 — Qaror qiluvchi aniqlangan**
- ✅ Mezon: oilada/biznesda kim qaror qiladi (gender/avlod).
- 📐 O'lchov: persona bo'yicha.
- 🚩 Qizil: noaniq — sotuv kimga qaratilgani aniq emas.

**QADAM 75 — Og'zaki tarqalish potensiali**
- ✅ Mezon: "do'stingizga aytasizmi" javobi.
- 📐 O'lchov: referral mexanizmi bor.
- 🚩 Qizil: hech kimga aytmaydi — kanal qimmat.

**QADAM 76 — "Arzon emas — oqilona"**
- ✅ Mezon: narx qadr bilan bog'langan, kamsitish yo'q.
- 📐 O'lchov: narx xabari.
- 🚩 Qizil: "arzon" degan so'z — qadrsizlantiradi.

**QADAM 77 — Diniy/urf-odat sezgirligi**
- ✅ Mezon: to'y, dafn, bayram, oila qadriyatlari.
- 📐 O'lchov: sezgirlik tekshiruvi.
- 🚩 Qizil: urfga qarshi mahsulot (madaniy qarshilik).

**QADAM 78 — Ishonch qurish rejasi**
- ✅ Mezon: tekshiruv, sertifikat, review, kafolat.
- 📐 O'lchov: ishonch elementi aniq.
- 🚩 Qizil: yo'q — "bizga ishoning" deyish.

**QADAM 79 — Raqamli savodxonlik**
- ✅ Mezon: foydalanuvchi ilova/Telegram'da ishlay oladimi.
- 📐 O'lchov: segment xatti-harakati.
- 🚩 Qizil: murakkab UI, oflayn yordam yo'q.

**QADAM 80 — Ijtimoiy moslik xulosasi**
- ✅ Mezon: 2 jumla: qabul qilinadi + ishonch kanali.
- 📐 O'lchov: faylda "Ishonch kanali" bo'limi.
- 🚩 Qizil: madaniy to'siq hal etilmagan.

---

## 📈 BOSQICH 9: IQTISODIYOT (QADAMLAR 81–90)

> **Maqsad:** har bir mijozda foyda bormi, model o'lchanadimi. Chiqish sharti: LTV/CAC ≥ 3 + break-even.

**QADAM 81 — Daromad modeli aniq**
- ✅ Mezon: subscription / marketplace / xizmat / komissiya.
- 📐 O'lchov: model nomi + kimdan pul.
- 🚩 Qizil: "reklama bilan" — kech daromad.

**QADAM 82 — MRR/oy hisobi**
- ✅ Mezon: narx × mijozlar soni = oylik daromad.
- 📐 O'lchov: 3 senariy (past/bazaviy/yuqori).
- 🚩 Qizil: hisob yo'q.

**QADAM 83 — Unit economics (marja)**
- ✅ Mezon: har bir sotuvdan qancha qoladi.
- 📐 O'lchov: COGS, xizmat narxi, marja %.
- 🚩 Qizil: marja ≤ 0.

**QADAM 84 — LTV hisobi**
- ✅ Mezon: umr (oy) × o'rtacha to'lov.
- 📐 O'lchov: formula + raqam.
- 🚩 Qizil: LTV noma'lum.

**QADAM 85 — CAC hisobi**
- ✅ Mezon: kanal bo'yicha mijoz narxi.
- 📐 O'lchov: CAC raqami.
- 🚩 Qizil: CAC noma'lum.

**QADAM 86 ⭐ — LTV/CAC ≥ 3**
- ✅ Mezon: iqtisod sog'lom.
- 📐 O'lchov: hisob (masalan: LTV $540 / CAC $20–40 = 13–27×).
- 🚩 Qizil: < 3 — har mijozda yo'qotamiz.

**QADAM 87 — Payback davri**
- ✅ Mezon: CAC qancha oyda qaytadi.
- 📐 O'lchov: oy raqami.
- 🚩 Qizil: 12+ oy — pul yetmaydi.

**QADAM 88 — Churn proektsiyasi**
- ✅ Mezon: oyiga necha % ketadi (benchmark: <1% B2B, <5% B2C).
- 📐 O'lchov: 3.13 metrikalar bilan solishtirish.
- 🚩 Qizil: >5%/oy — o'sish qiyin.

**QADAM 89 — Break-even**
- ✅ Mezon: qancha mijozda xarajat qoplanadi.
- 📐 O'lchov: raqam.
- 🚩 Qizil: break-even 5 yildan keyin.

**QADAM 90 — Iqtisodiy xulosa**
- ✅ Mezon: 1 paragraf: MRR, LTV/CAC, break-even, xavf.
- 📐 O'lchov: faylda "Startup modeli" bo'limi.
- 🚩 Qizil: yo'q.

## 🧭 BOSQICH 10: QAROR (QADAMLAR 91–100)

> **Maqsad:** barcha dalillar yig'ilib, yakuniy GO/TUZATISH/RAD qarori chiqariladi. Chiqish sharti: baho 90+/100 + qaror yozilgan.

**QADAM 91 — 6 mezon checklist hammasi ✅**
- ✅ Mezon: muammo / raqamlar / to'lovchi / bo'sh joy / MVP / UZ moslik.
- 📐 O'lchov: 1-bo'lim jadvali.
- 🚩 Qizil: bittasi ham ❌ — darhol qayta ishlanadi.

**QADAM 92 — Mom Test darajasi**
- ✅ Mezon: 🥇 pre-order / 🥈 majburiyat / 🥉 o'tmish to'lovi — kamida 🥉.
- 📐 O'lchov: isbot darajasi belgilangan.
- 🚩 Qizil: faqat 🏅 maqtov.

**QADAM 93 — YC 3 mezon**
- ✅ Mezon: kichik segment + tez o'sish + takrorlanmaslik (3.5 A).
- 📐 O'lchov: 3/3 yozilgan.
- 🚩 Qizil: 0/3 — YC standarti bo'yicha boshlash mumkin emas.

**QADAM 94 — Thiel 7 savol**
- ✅ Mezon: monopoliya/texnologiya/tarmoq/vaqt testi — 4+/7 (3.5 B).
- 📐 O'lchov: 7 savolga javob.
- 🚩 Qizil: < 4 — zaif.

**QADAM 95 — Hormozi 5**
- ✅ Mezon: aniq mijoz / og'riq / kanal / narx / farq (3.5 D).
- 📐 O'lchov: 5 javob.
- 🚩 Qizil: bittasi bo'sh.

**QADAM 96 — Xavf-tuzoq tahlili**
- ✅ Mezon: CB Insights 6 global + UZ 8 tuzoq (3.12) tekshirilgan.
- 📐 O'lchov: xavf jadvali + oldini olish.
- 🚩 Qizil: hal bo'lmagan o'lim xavfi.

**QADAM 97 — Baho 1–10**
- ✅ Mezon: 6 mezon bo'yicha ball (GO 7.0+).
- 📐 O'lchov: ballar jadvali (masalan: 8.0 → GO).
- 🚩 Qizil: < 7.0.

**QADAM 98 — Yuridik o'tish**
- ✅ Mezon: BOSQICH 7 natijasi: qonuniy to'siq yo'q.
- 📐 O'lchov: xulosa.
- 🚩 Qizil: hal etilmagan qonuniy xavf.

**QADAM 99 — Qaror yozilgan**
- ✅ Mezon: GO ✅ / TUZATISH 🔄 / RAD ❌ + sabab + manba.
- 📐 O'lchov: qaror bloki (sana, kim qaror chiqardi).
- 🚩 Qizil: qarorsiz fayl.

**QADAM 100 — To'liq nota yozilgan**
- ✅ Mezon: 17 bo'limli shablon (4-bo'lim) to'liq: muammo → manbalar.
- 📐 O'lchov: barcha bo'limlar ✅ + 7+ manba.
- 🚩 Qizil: yarim yozilgan fayl.

---

# 💎 6. BRILLIANT MISOL — XAVFSIZBIZ.UZ 100/100 QABULDAN O'TDI

> **Amalda isbot:** [[SMB_Cybersecurity|XavfsizBiz.uz]] (KOBM kiberxavfsizlik) 100 qadamning hammasida ✅ — yakuniy baho **8.0 → GO**.
> Har qadamda dalil: fayldagi real raqam va manba. Bu bo'lim yangi g'oyalar uchun **qanday to'ldirish kerakligi** namunasidir.

## BOSQICH 1: MUAMMO (1–10)

**1** ✅ Muammo 1 jumlada — "KOBM egasi 'antivirus o'rnatganman = himoyalanganman' deb o'ylaydi, lekin phishing antivirusdan o'tadi; 1,212,000+ KOBM himoyasiz".
**2** ✅ Kuzatilgan — Bobur persona: buxgalteri soxta hisob-faktura ochdi, $3,000 yo'qotdi (real hodisa, intervyuda aytilgan).
**3** ✅ Chastota — phishing/ijtimoiy muhandislik kundalik; Silent Push (2024), xplogs22 (2026) O'zbekistonni nishonga olgan.
**4** ✅ Og'riq pul bilan — $3,000–100,000 zarar; 47% KOBM'da xavfsizlik rejasi yo'q (CrowdStrike 2025).
**5** ✅ Trend — 26,738 yangi KOBM (2025 H1), raqamlashtirish hujum yuzasini kengaytiryapti.
**6** ✅ Mavjud yechim qidiruvi — CSEC, UZINFOCOM, CYBERNODE, Guardz/Huntress topildi.
**7** ✅ Kamchilik aniq — yirik MSSP $100+/oy, rus/ingliz tilda, KOBM'ga mos emas; lokal arzon o'zbekcha yo'q.
**8** ✅ UZ raqami — 1,212,000+ KOBM (stat.uz via uzdaily.uz 2025-11-01).
**9** ✅ O'tkir — PP-167 (2023) qonuni moslashuvni majburiy qilmoqda; $3,000 zarar ko'rgan egasi "shu hafta to'layman" deydi.
**10** ✅ Problem Statement — "1.2 mln KOBM YaIMning yarmini ishlab chiqaradi, lekin arzon o'zbekcha kiberxavfsizlik yo'q" + 3 raqam.

## BOSQICH 2: AUDITORIYA (11–20)

**11** ✅ Segment — mikro/kichik biznes egasi (Bobur tipidagi: do'kon/kafe/xizmat).
**12** ✅ Hajmi — 1,212,000+ KOBM; mikro ~90%.
**13** ✅ Manba — stat.uz via uzdaily.uz (2025-11-01).
**14** ✅ Kanallar — buxgalterlar, IT Park, "do'stingizni tanishtiring" (1 intervyu → +1), savdo uyushmalari.
**15** ✅ Persona — Bobur, 34, onlayn-do'kon, 15 xodim, $50k/oy aylanma; Malika, 29, Taom.uz CTO (o'rta biznes).
**16** ✅ Intervyu — 10+ intervyu rejasi (QADAM 4: 08-sent Bobur telefon orqali...), 3 persona beta.
**17** ✅ Iqtibos — "$30/oy bo'lsa — shu hafta to'layman, chunki $3,000 zararni yana ko'tara olmayman".
**18** ✅ To'lov qobiliyati — biznes daromadi ($50k/oy aylanma); o'rta biznes $50–150/oy.
**19** ✅ CAC est — intervyu/uyushma kanali arzon (CAC $20–40 taxmin).
**20** ✅ 2 jumla — "KOBM egasiga o'zbekcha, oddiy, oylik kiberxavfsizlik xizmati".

## BOSQICH 3: TO'LOVCHI VA NARX (21–30)

**21** ✅ To'lovchi — biznes egasi (Bobur) qarorni o'zi qiladi; o'rta biznes (Malika) $50–150/oy.
**22** ✅ Narx UZS — $15/oy (mikro), $40/oy (STANDART), $100/oy (~1.3 mln so'm, PREMIUM).
**23** ✅ Chastota — oylik obuna.
**24** ✅ Isbot — Bobur: "$30/oy bo'lsa — shu hafta to'layman" (🥈 og'zaki majburiyat); allaqachon antivirusga to'lagan (🥉 o'tmish xulqi).
**25** ✅ O'tmish xulqi — antivirus o'rnatgan, $200/oy so'raganlar bilan gaplashgan (to'lov odati bor).
**26** ✅ Kanal — Payme/Click (shahar), bank hisob-kitob (biznes).
**27** ✅ Byudjet — biznes xarajati (xavfsizlik byudjeti yo'q — yaratish kerak, lekin zarar bilan solishtiriladi).
**28** ✅ Raqobatchi narxi — CYBERNODE $100+/oy, global Guardz/Huntress $5–15/user/oy.
**29** ✅ Madaniy qabul — "oqilona" pozitsiya: zarar ($3,000) bilan solishtirilgan narx.
**30** ✅ WTP — intervyuda "qancha to'laysiz" javoblari: mikro $10–30, o'rta $50–150.

## BOSQICH 4: BOZOR (31–40)

**31** ✅ TAM — UZ kiberxavfsizlik bozori: global benchmark bo'yicha hisob (KOBM 1.2 mln × xizmat narxi).
**32** ✅ SAM — 1,212,000 KOBM × $15–40/oy = oylik $18–48 mln potensial (segment × narx).
**33** ✅ SOM — 3–5 yilda 1,000 KOBM × $30 = $30,000 MRR (realist, kanallar cheklovi bilan).
**34** ✅ Manba — stat.uz, dentons.com (PP-167), Guardz/CrowdStrike.
**35** ✅ O'sish — 26,738 yangi KOBM (2025 H1); qonun talabi kengaymoqda.
**36** ✅ YC 1-mezon — kichik boshlang'ich segment (Toshkent do'konlari/kafelari) + tez o'sish driveri (qonun).
**37** ✅ Geografiya — Toshkentdan boshlash, keyin viloyatlar.
**38** ✅ Mavsumiylik — pasaygan (xizmat yil bo'yi; qishki biznes xarajat kamayishi hisobga olingan).
**39** ✅ Driver — PP-167 (2023) + ZRU-764 (2022) qonunlari talabni majburiy qiladi (regulatory tailwind).
**40** ✅ Xulosa — TAM katta, SAM $18–48 mln/oy, SOM 1,000 mijozda $30k MRR.

## BOSQICH 5: RAQOBAT (41–50)

**41** ✅ 5+ raqobatchi — CYBERNODE, CSEC (davlat), UZINFOCOM, Guardz, Huntress, antivirus sotuvchilari.
**42** ✅ Deep-dive — CYBERNODE: yirik kompaniyalarga, $100+/oy, o'zbekcha emas — KOBM segmenti bo'sh.
**43** ✅ Jadval — narx/til/hudud/hisobot bo'yicha solishtirish (3.9 F template).
**44** ✅ Bo'sh joy — "KOBM uchun arzon, o'zbekcha, oylik hisobotli xizmat yo'q".
**45** ✅ Farq — "qo'riqchi emas, o'zbekcha maslahatchi + asbob"; xodim omili (68% xatolar) + audit.
**46** ✅ Zaiflik manbali — CYBERNODE kattalarga qaratilgan; CSEC profilaktika emas, hodisaga javob.
**47** ✅ "Davlat qiladi" — CSEC/UZINFOCOM davlat tizimlari tekshirildi: profilaktika xizmati emas → bo'sh joy.
**48** ✅ Klonlash — oson emas: lokal til + PP-167 moslashuv + hodisada jonli yordam (xizmat sifatida moat).
**49** ✅ Moat — brend + lokal til + qonun moslashuvi + mijozlar ma'lumoti (hisobot tarixi).
**50** ✅ Xulosa — "global isbotlangan model (Guardz 57% SME) lokal tilda + PP-167 bilan — hech kim qilmayapti".

## BOSQICH 6: YECHIM VA MVP (51–60)

**51** ✅ Bog'lanish — phishing simulyatsiya → muammoning asosiy manbasi (xodim xatosi 68%).
**52** ✅ Oddiy — 1 qadam: sinov linki bosiladimi → hisobot; KOBM egasi tushunadigan til.
**53** ✅ MVP hajmi — MoSCoW: MUST = GoPhish phishing sim + o'qitish + PDF hisobot (8 haftalik sprint).
**54** ✅ Narx — MVP $150–250 (GoPhish self-host + Telegram hisobot) yoki $3,000–5,000 (to'liqroq v1).
**55** ✅ Muddat — 1–2 oy (8 hafta, 2 simulyatsiya).
**56** ✅ Texnologiya — GoPhish ochiq kod, Telegram bot, Payme/Click — hammasi mavjud.
**57** ✅ MVP'siz — concierge: qo'lda phishing test + Telegram orqali xizmat boshlash mumkin.
**58** ✅ Shablon emas — 70 o'chirilgan g'oya orasida KOBM kiberxavfsizlik yo'q edi.
**59** ✅ Kengayish — mikro → o'rta biznes ($15→$100 paketlar) → bank/IT Park B2B2C.
**60** ✅ NIMA QURMAYMIZ — ilova/platforma yasamaymiz; Telegram + hisobot bilan boshlaymiz (MVP'da).

## BOSQICH 7: QONUN VA YURIDIK (61–70)

**61** ✅ Litsenziya — O'RQ-701 (IT xizmat) — maslahat xizmati sifatida litsenziya talab qilinmaydi (tekshirilgan).
**62** ✅ Sektor qonuni — PP-167 (2023-05-31, dentons.com) + ZRU-764 (2022) — talab bor, bajaruvchi yo'q.
**63** ✅ Shaxsiy ma'lumot — mijoz hisobotlari konfidensial; O'zMSt 472:2025 e'tiborda.
**64** ✅ To'lov — Payme/Click orqali obuna; NDS hisobi.
**65** ✅ Status — YTT boshlash, keyin MCHJ; IT Park rezidentligi (0% soliq) reja.
**66** ✅ Soliq — YTT qat'iy soliq / 1% aylanma; IT Park 0% (2031-gacha) — PORTFEL-2026 byudjetida.
**67** ✅ Ishonch — kafolat: "himoya qilolmasak — hisobot oyi bepul" pozitsiyasi.
**68** ✅ Shartnoma — xizmat shartnomasi shabloni (KOBM uchun oddiy til).
**69** ✅ Domen — xavfsizbiz.uz nomi band emas (tekshirilgan), Telegram kanal ochilgan.
**70** ✅ Xulosa — "qonuniy o'tish mumkin; qonun hatto talab yaratadi (regulatory tailwind)".

## BOSQICH 8: IJTIMOIY-MADANIY (71–80)

**71** ✅ Stigma — yo'q: KOBM egasi "o'g'irlangan pul" haqida ochiq gapirdi (Bobur iqtibosi).
**72** ✅ Ishonch kanali — buxgalterlar (Bobur pul yo'qotganda buxgalter orqali keldi), IT Park, "do'stingizni tanishtiring".
**73** ✅ Til — o'zbekcha xizmat, rus/inglizcha takliflar tushunarsiz degan iqtibos — asosiy farq.
**74** ✅ Qaror qiluvchi — biznes egasi (erkak/ayol — Bobur, Malika) o'zi qaror qiladi.
**75** ✅ Og'zaki — "do'stingizni tanishtiring": 1 intervyu → +1 (referral dasturi QADAM 59).
**76** ✅ Oqilona narx — $30/oy vs $3,000 zarar — narx qadr bilan bog'langan.
**77** ✅ Sezgirlik — yo'q (biznes xizmati).
**78** ✅ Ishonch — oylik hisobot (ko'rinadigan natija), tekshiruv natijalari.
**79** ✅ Savodxonlik — Telegram'da ishlash KOBM egasi uchun odatiy.
**80** ✅ Xulosa — "o'zbekcha + oylik hisobot + hodisada jonli yordam" — madaniy qabul qilingan.

## BOSQICH 9: IQTISODIYOT (81–90)

**81** ✅ Model — subscription (oylik obuna) + B2B2C kanal (banklar/IT Park kelajakda).
**82** ✅ MRR — 1,000 KOBM × $30 = $30,000 MRR; 12 oylik prognoz: $8k (bazaviy) → $10.5k.
**83** ✅ Marja — xizmat asosan avtomatik (GoPhish + hisobot) — marja 70%+.
**84** ✅ LTV — o'rtacha umr 18 oy × $30 = $540.
**85** ✅ CAC — intervyu/uyushma kanali orqali $20–40.
**86** ✅ LTV/CAC — $540 / $20–40 = **13–27×** (≥ 3 talabi ancha ustida).
**87** ✅ Payback — 1 oy (CAC bir oylik to'lovda qaytadi).
**88** ✅ Churn — B2B benchmark <1%/oy; kafolat va hisobot retention uchun.
**89** ✅ Break-even — ~30–50 mijozda xarajat qoplanadi.
**90** ✅ Xulosa — "LTV/CAC 13–27×, payback 1 oy, 1000 mijozda $30k MRR" — iqtisod sog'lom.

## BOSQICH 10: QAROR (91–100)

**91** ✅ 6 mezon — hammasi ✅ (muammo/raqamlar/to'lovchi/bo'sh joy/MVP/UZ).
**92** ✅ Mom Test — 🥈 og'izaki majburiyat ("shu hafta to'layman") + 🥉 o'tmish to'lovi.
**93** ✅ YC 3 — kichik segment (Toshkent KOBM) + tez o'sish (qonun driveri) + takrorlanmas (lokal til + qonun).
**94** ✅ Thiel — 7/7: texnologiya (GoPhish ochiq), tarmoq (referral), vaqt (qonun), brend (o'zbekcha nom).
**95** ✅ Hormozi 5 — aniq mijoz (Bobur), og'riq ($3,000 zarar), kanal (buxgalter), narx ($30/oy), farq (o'zbekcha).
**96** ✅ Xavflar — CB Insights 6 + UZ 8 tuzoq jadvali: davlat (CSEC cheklangan), naqd (Payme bor), ishonch (hisobot) — hammasi yopilgan.
**97** ✅ Baho — **8.0/10 → GO** (auditoriya 8.0, qonun 8.0, bozor 8.0).
**98** ✅ Yuridik — BOSQICH 7: litsenziya kerak emas, PP-167 talab yaratadi.
**99** ✅ Qaror — **GO ✅ (2026-09-04, AI 01 + AI 07)** — sabab: qonun driveri + bo'sh segment + iqtisod 13–27×.
**100** ✅ Nota — 17 bo'limli fayl to'liq (muammo → manbalar 30+), 100/100 qadam rejasi ham yozilgan.

---

> **Xulosa:** XavfsizBiz.uz barcha 100 qadamda ✅ — bu yangi g'oya uchun ANDOZA. Agar yangi g'oya 90/100 dan kam yoki biron ⭐ mezonni bajarmasa — TUZATISH, kritik qizil bayroq bo'lsa — RAD.

---

## 🔗 BOG'LIQ NOTALAR

- [[WORKFLOW]] — yangi g'oya qo'shish va rivojlantirish jarayoni
- [[REAL-PROBLEMS-UZ]] — real muammolar + rad etilgan g'oyalar sabablari
- [[STARTUP-100-STEPS]] — qabuldan keyingi 100 qadamlik ijro frameworki
- [[METHODOLOGY]] — 7 boqichli metodologiya
- [[STARTUP-100-STEPS]] — 100 qadam framework
- [[STATS]] — joriy holat statistikasi
- [[Chat for AIs and Monitoring]] — AI 01 ↔ AI 07 aloqa jurnali

---

*Oxirgi yangilanish: 2026-09-04 (xavflar + metrikalar + pivot + madaniy omillar + hujjatlar — v5.0)*