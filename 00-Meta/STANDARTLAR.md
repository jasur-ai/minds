---
aliases: [Standartlar, Standards, Qabul Mezonlari, Accept Criteria, Checklist]
tags: [meta, standards, quality]
created: 2026-09-04
updated: 2026-09-04
sektor: 00-Meta
tur: meta
holat: faol
sarlavha: Standartlar
qisqacha: Startup g'oyalarni qabul qilish, baholash va sifat nazorati standartlari
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
| 1 | **Aniq muammo** | "Kim uchun? Nima muammo? Qanchalik og'riqli?" — 1 jumlada | 5+ intervyu yozuvi |
| 2 | **Real raqamlar** | Bozor hajmi, foydalanuvchi soni, narxlar — manbali | Manba linki (7+) |
| 3 | **To'lovchi bor** | Kim pul to'laydi? Qancha? (B2C/B2B/B2B2C/donor) | Narx modeli hisobi |
| 4 | **Bo'sh joy** | Mavjud yechim yo'q yoki kuchsiz (raqobatchilar tekshirildi) | Raqobatchilar ro'yxati |
| 5 | **Amalga oshirish mumkin** | MVP $500 dan arzon, 1-2 kishi qura oladi | MVP byudjeti |
| 6 | **UZ bozoriga mos** | Lokal til/infratuzilma/qonuniy doira hisobga olingan | UZ realligi bo'limi |

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

## 🇺🇿 3.6. UZBEKISTON EKOTIZIM KONTEKSTI (standardning UZ qatlami)

G'oyani baholashda global mezonlarga **UZ bozor realiyasi** qo'shiladi:

| Omil | 2025 holati (manbali) | Standartga ta'siri |
|-------|------------------------|---------------------|
| Ekotizim hajmi | **771+ startup**, $489 mln+ jami funding, 96 moliyalashtirilgan kompaniya, 1 unicorn (Uzum) | Raqobat oshmoqda — bo'sh joyni tez egallash kerak |
| Funding o'sishi | 2025 Q1–4: $110 mln (2 round) — 2024 xuddi shu davrdan +111.92% | Investor uchun tayyor loyihalar talab qilinadi |
| IT Park imtiyozlari | 0% daromad solig'i, xarajatning 50% gacha qaytarish ($20k gacha), "1+1" co-invest $100k | Har loyihada IT Park rezidentligi hisobga olinadi |
| StartupBase.uz | Yagona raqamli platforma (startup + investor + hamkor) | Vaultdan tashqari qo'shimcha tasdiq manbai |
| Venture funds | 2025 Q1: 5 ta yangi fond (AloqaVentures, IT Park Ventures, xalqaro) | Exit/investor yo'li real — loyiha tayyor bo'lishi kerak |
| President Tech Award | $1M mukofot fondi | Ma'lumot mahsuloti/PR imkoniyati |

**Qo'shimcha UZ qoidasi:** g'oya xorijiy muvaffaqiyat modelini (Winnie, The Knot, Physics Wallah, Guardz) lokal bo'shliqda takrorlashi mumkin, LEKIN model manbasi ko'rsatilishi va UZ infratuzilmasiga (internet, to'lov tizimi, qonun) mosligi isbotlanishi shart.

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
| Bottom-up hisob | Mijoz × ACV formulasi bor | Hisob qo'shish |
| Mom Test isboti | 🥇-🥉 darajali 2+ intervyu | Intervyu o'tkazish |

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

---

## 🔗 BOG'LIQ NOTALAR

- [[WORKFLOW]] — yangi g'oya qo'shish va rivojlantirish jarayoni
- [[STARTUP-MUAMMOLAR]] — rad etilgan g'oyalar va sabablari
- [[METHODOLOGY]] — 7 boqichli metodologiya
- [[STARTUP-100-STEPS]] — 100 qadam framework
- [[STATS]] — joriy holat statistikasi
- [[Chat for AIs and Monitoring]] — AI 01 ↔ AI 07 aloqa jurnali

---

*Oxirgi yangilanish: 2026-09-04 (global frameworklar integratsiyasi — v2.0)*