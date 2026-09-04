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

---

## 🔗 BOG'LIQ NOTALAR

- [[WORKFLOW]] — yangi g'oya qo'shish va rivojlantirish jarayoni
- [[STARTUP-MUAMMOLAR]] — rad etilgan g'oyalar va sabablari
- [[METHODOLOGY]] — 7 boqichli metodologiya
- [[STARTUP-100-STEPS]] — 100 qadam framework
- [[STATS]] — joriy holat statistikasi
- [[Chat for AIs and Monitoring]] — AI 01 ↔ AI 07 aloqa jurnali

---

*Oxirgi yangilanish: 2026-09-04 (5 loyiha 100/100 dan so'ng standartlar qayta tasdiqlandi)*