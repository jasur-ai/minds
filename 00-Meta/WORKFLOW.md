---
aliases: [Workflow, Ish Jarayoni, Qo'shish Oqimi, Development Process, Standard Operating Procedure]
tags: [meta, workflow, process]
created: 2026-09-04
updated: 2026-09-04
sektor: 00-Meta
tur: meta
holat: faol
versiya: "3.0"
sarlavha: Workflow
qisqacha: Yangi g'oya qo'shish va loyihani rivojlantirish jarayoni — to'liq template (YC Order of Operations, haftalik ritmlar, kanban, intervyu pipeline)
---

# 🔄 WORKFLOW — Yangi G'oya Qo'shish va Rivojlantirish Jarayoni (v3.0)

> **Maqsad:** Har qanday g'oya (bot orqali, AI 07 dan yoki tadqiqotdan) aniq, takrorlanadigan, o'lchanadigan jarayon bilan vaultga kiradi va 100 qadamgacha rivojlanadi.
> **Standartlar:** [[STANDARTLAR]] — qabul mezonlari · [[STARTUP-100-STEPS]] — qadamlar · [[METHODOLOGY]] — metodologiya
> **Asos:** YC "Order of Operations" (Michael Seibel) · Agile/Scrum ritmlari · Lean Startup (Build-Measure-Learn) · Mom Test intervyu pipeline'i
> *2026-09-04: 5 loyiha 100/100 ga yetkazildi + web-research (YC/agile/kanban/intervyu) integratsiyasi — v3.0*

---

## 🗺️ 1. UMUMIY XARITA (3 yo'l → vault)

```
┌─────────────┐   ┌──────────────┐   ┌─────────────────┐
│ 📲 Bot /new  │   │ 🤝 AI 07      │   │ 🔍 AI 01 tadqiqot│
│ (foydalanuvchi)│   │ (topshiriq)   │   │ (mustaqil)      │
└──────┬──────┘   └──────┬───────┘   └────────┬────────┘
       │                 │                    │
       ▼                 ▼                    ▼
┌─────────────────────────────────────────────────────┐
│ STEP 1: TEKSHIRUV (AI 01, ≤1 ish kuni)              │
│ [[STANDARTLAR]]: 6 mezon + Mom Test + YC/Thiel +    │
│ bottom-up + UZ raqamlar + raqobatchilar → QABUL ✅  │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│ STEP 2: FAYL YARATISH — 17 bo'limli shablon         │
│ (11-bo'lim) + frontmatter + 7+ manba + UZ realligi  │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│ STEP 3: 100 QADAM RIVOJLANISH — sprintlar bo'yicha  │
│ 10 bosqich × 10 qadam · 2-haftalik sprintlar ·      │
│ har bosqich = commit+push · haftalik hisobot        │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│ STEP 4: YAKUNIY BAHO — [[STANDARTLAR]] 3-bo'lim     │
│ GO ✅ (7.0+) / TUZATISH 🔄 / PIVOT ❌ + ADR yozuvi   │
└─────────────────────────────────────────────────────┘
```

**Asosiy tamoyil (YC):** *"Order of Operations" — ishlarni TO'G'RI TARTIBDA qilish.* Kichik muammo → kichik yechim → tez ishga tushirish → organik o'sish → pul yig'ish → jamoa yollash. Hech qachon bu tartibni buzma: investor qidirishdan oldin o'sish, o'sishdan oldin mahsulot.

---

## 📲 2. YANGI G'OYA QO'SHISH (bot /new yo'li)

### Jarayon:
1. **Bot** `/new` buyrug'i bilan g'oya yozadi → [[Chat for AIs and Monitoring]] ga tushadi
2. **AI 01** g'oyani ko'radi va [[STANDARTLAR]] checklisti bo'yicha tekshiradi — 3 qatlamli tekshiruv:
   - **Qatlam 1 — 6 mezon** ([[STANDARTLAR]] 1-bo'lim): muammo/raqamlar/to'lovchi/bo'sh joy/MVP/UZ
   - **Qatlam 2 — Mom Test** ([[STANDARTLAR]] 2.5-bo'lim): 5+ intervyu, 2+ tasida pul/isbot darajasi 🥇-🥉
   - **Qatlam 3 — Global frameworklar** ([[STANDARTLAR]] 3.5-bo'lim): YC 3 mezon · Thiel 7 savol (4+/7) · bottom-up hisob · Hormozi 5
3. **Qaror** chat faylida e'lon qilinadi (SLA: 1 ish kunida):
   - **QABUL ✅** → fayl yaratiladi (17 bo'limli shablon, 11-bo'lim)
   - **RAD ❌** → sabab yoziladi, [[STARTUP-MUAMMOLAR]] ga qo'shiladi (qayta taklif taqiqlanadi)
   - **TUZATISH 🔄** → qaysi qatlamda nima yetishmayapti ko'rsatiladi
4. **Xabar** chatga yoziladi: `AI 01: [g'oya] tekshirildi — QABUL/RAD (sabab, qatlam bo'yicha)`

### Template (chatga yozish):
```markdown
## 📲 BOT G'OYASI TEKSHIRUVI (sana, vaqt)
G'oya: ___
✅ Qatlam 1 (6 mezon): muammo _ · raqamlar _ · to'lovchi _ · bo'sh joy _ · MVP _ · UZ _
✅ Qatlam 2 (Mom Test): intervyu _/5 · pul isboti _/2 (🥇-🥉)
✅ Qatlam 3 (Global): YC 3 mezon _ · Thiel _/7 · bottom-up $_ · Hormozi _/5
✅ Qatlam 4 (UZ bozor): raqobatchi _ · qonun _ · yuridik status _ · to'lov kanali _
QAROR: QABUL ✅ / RAD ❌ / TUZATISH 🔄 — sabab: ___
```

---

## 🎓 3. YC ORDER OF OPERATIONS (global tartib → bizning 10 bosqich)

Michael Seibel (YC) bo'yicha startup rivojlanish tartibi va uni bizning BOSQICH tuzilishimizga moslash:

| # | YC qadami | Nima qilamiz | Bizning BOSQICH |
|---|-----------|--------------|-----------------|
| 1 | **G'oya (Idea)** | Kichik muammo, tez o'sadigan kichik bozor, takrorlanmas yondashuv | BOSQICH 1–2 (1–20) |
| 2 | **Foydalanuvchilar bilan gaplash** | 50+ intervyu (Mom Test), muammoni o'zlari aytib berishlarini kutish | BOSQICH 3 (21–30) |
| 3 | **Qurish (Build)** | Eng arzon MVP, "xunuk bo'lsa ham ishga tushir" — 1 oy ichida | BOSQICH 4 (31–40) |
| 4 | **Ishga tushirish (Launch)** | Kichik segmentga, kichik shovqin bilan — ertaroq, yaxshiroq emas | BOSQICH 5 (41–50) |
| 5 | **O'lchash (Measure)** | Retention, churn, LTV/CAC — xom MRR emas, sifatiy ko'rsatkichlar | BOSQICH 6 (51–60) |
| 6 | **O'sish (Growth)** | Organik/viral o'sish avval, pullik kanallar keyin | BOSQICH 7–8 (61–80) |
| 7 | **Pul yig'ish (Fundraise)** | Faqat metrikalar so'raydiganlar bor bo'lganda — "growth before fundraising" | BOSQICH 9 (81–90) |
| 8 | **Jamoa (Hire)** | Jarayon SOP bo'lgandan keyin — erta yollash = o'lim | BOSQICH 9–10 (81–100) |

**3 qoida (YC):**
1. **"Kichik baliq, kichik ko'lmakda"** — katta bozorga emas, aniq segmentga qur
2. **"Tez ishga tushir, xunuk bo'lsa ham"** — 30 kunlik MVP qoidasi ([[STANDARTLAR]] 4-bo'lim)
3. **"Metrics over opinions"** — fikr emas, raqam hal qiladi (har qaror = raqam bilan)

---

## 🛠️ 4. RIVOJLANTIRISH JARAYONI (100 qadam, sprint asosida)

### 4.1. Qadamlar tartibi (10 bosqich)
| BOSQICH | Qadamlar | Mavzu | Chiqish mezonlari (definition of done) |
|---------|----------|-------|----------------------------------------|
| 1. G'OYA | 1–10 | Muammo, bozor, xalqaro taqqoslash, TAM/SAM/SOM, GO/NO-GO | 6 mezon, baho 7.0+ |
| 2. TADQIQOT | 11–20 | ICP, deep-dive, raqobatchilar, narx, qonuniy, texnologiya, jamoa, moliya, benchmark | Manbali raqamlar, 20+ manba |
| 3. VALIDATION | 21–30 | Landing, waitlist, 50 intervyu, pre-order, fake door, kanallar | Waitlist 50+ / pre-order 5+ |
| 4. MVP | 31–40 | MoSCoW, sprint, wireframe, qurish, beta, KPI | Beta 3–10 mijoz |
| 5. SINOV | 41–50 | Analytics, retention, cohort, unit ekonomika, funnel, A/B, churn | LTV/CAC 3×+ |
| 6. PMF | 51–60 | Sean Ellis 40%+, NPS 40+, must-have, segment | PMF ✅ (2 metrika) |
| 7. GTM | 61–70 | Sotuv strategiyasi, narx paketlari, funnel, mijoz xizmati | MRR boshlanishi |
| 8. O'SISH | 71–80 | Viral halqa, SEO, avtomatlashuv, dashboard, 12 oylik yo'l xarita | MRR ×2 |
| 9. SCALE | 81–90 | Jamoa, SOP, 10 shahar, investor tayyorlik | MRR ×3, SOP 4+ |
| 10. VOYAGA YETISH | 91–100 | MOAT, exit, 5 yillik reja, yakuniy baho | GO / exit + ADR |

### 4.2. Sprint tuzilishi (2 haftalik)
```
SPRINT (2 hafta) = 5 qadam to'liq yozish + tekshiruv
├── Sprint 1: QADAM 1–5
├── Sprint 2: QADAM 6–10 (+ BOSQICH xulosasi)
└── Har sprint oxirida: commit + push + chat hisoboti
```
- **Sprint davomiyligi:** 2 hafta (10 qadam = 1 BOSQICH = 2 sprint ≈ 1 oy)
- **Sprint plan:** Dushanba — nimani yozamiz, chiqish mezonlari aniq
- **Sprint review:** Juma — nima tugadi, nima o'zgardi, keyingi sprint rejasi
- **Qoida:** sprint ichida fokusni o'zgartirmaymiz (agar AI 07 ustuvorlik bermasa)

### 4.3. Har bir QADAM uchun standart:
1. `## ✅ QADAM N: SARLAVHA — BAJARILDI (AI 01, sana)`
2. Jadval/raqam/manba (2–4 jumla xulosa) — **har doim kamida 1 yangi manba**
3. Frontmatter `qadam` yangilanadi
4. Chatga qisqa xabar (agar AI 07 so'ragan bo'lsa)

### 4.4. Bosqich oxirida:
- **Xulosa formati** (template):
```markdown
## ✅ BOSQICH N XULOSASI (sana)
NATIJA: _ | MEZON: _
METRIKALAR: _ (oldingi → hozirgi)
QAROR: (davom ✅ / pivot 🔄 / to'xtatish ❌)
KEYINGI: BOSQICH N+1 — ...
```
- Frontmatter `bosqich` yangilanadi
- [[00-Meta/HOME]] progress jadvali yangilanadi
- **ADR yozuvi** (Qarorlar jurnali — 6-bo'limga qarang)

---

## 📅 5. HAFTALIK RITMLAR (operating cadence)

| Kun | Ritual | Davomiylik | Nima qilamiz |
|-----|--------|-----------|--------------|
| **Dushanba** | 📊 Metrikalar ko'rib chiqish | 30 daqiqa | Har loyiha uchun 1 asosiy metrika: waitlist / retention / MRR. O'tgan hafta vs reja. "1 raqam = 1 qaror" |
| **Dushanba** | 🎯 Sprint rejasi | 30 daqiqa | Hafta maqsadi (1–2 topshiriq), chiqish mezonlari, kim bajaradi |
| **Chorshanba** | 🛠️ Chuqur ish (deep work) | 2–4 soat | Eng og'ir blok (tadqiqot/qadam yozish) — to'xtovsiz, chat tekshiruvsiz |
| **Juma** | 🔁 Retrospektiv | 30 daqiqa | Nima yaxshi / nima yomon / nima o'zgaradi — 3 tadan ko'p emas |
| **Juma** | 📝 Haftalik hisobot | 15 daqiqa | Chat fayliga yoziladi: tugagan qadamlar, metrikalar, keyingi hafta |

**OYLIK ritm:**
- **OKR** (har oy): 1 maqsad × 2–3 natija — har biri raqam bilan (`waitlist 50+`, `churn <5%`)
- **Boshqaruv audit:** har loyiha frontmatter + HOME jadvali + STATS sinxronligi
- **Portfel qarori:** qaysi loyiha davom etadi, qaysi pivot, qaysi kutish holatiga o'tadi

**KVARTAL ritm:**
- **Yakuniy qarorlar:** BOSQICH 10 qarorlari, investitsiya tayyorligi, exit yo'llari

---

## 📋 6. TASK BOSHQARUV (kanban + qarorlar jurnali)

### 6.1. Kanban taxta (5 ustun)
```
📥 BACKLOG → 🎯 REJA (sprint) → 🔨 BAJARILYAPDI → 🔍 TEKSHIRUV → ✅ TUGADI
   (barcha g'oyalar)  (bu sprintda)     (WIP max 2)    (AI 07/bot)    (commit+push)
```
**Qoidalar:**
- **WIP limit: 2** — bir vaqtda 2 tadan ortiq ochiq ish yo'q (YC: fokus)
- Har bir karta: `loyiha | qadam | chiqish mezoni | egasi`
- "TUGADI" faqat commit+push'dan keyin

### 6.2. Prioritet matritsasi
| Baho | Holat |
|------|-------|
| **9–10** | Darhol bajarish (AI 07 topshirig'i) |
| **7–8** | Bu sprint |
| **5–6** | Keyingi sprint |
| **<5** | Backlog (izoh bilan) |

### 6.3. Qarorlar jurnali (ADR — Architecture Decision Record)
Har bir muhim qaror (GO/PIVOT/STOP, narx o'zgarishi, segment almashinuvi) quyidagi shaklda [[Chat for AIs and Monitoring]] ga yoziladi:
```markdown
### 📌 ADR #N (sana, vaqt)
QAROR: _ (GO / PIVOT / STOP / narx / kanal)
SABAB: _ (raqam/manba bilan)
MUQOBIL: _ (nima ko'rib chiqildi, nega rad etildi)
NATIJA: _ (qaysi qadam/bosqichga ta'sir qildi)
```

---

## 🎤 7. INTERVYU PIPELINE (customer discovery rhythm)

### 7.1. Pipeline (haftalik aylanish)
```
1. OUTREACH (Dushanba) → 2. REJA (Seshanba) → 3. INTERVYU (Chor-Pay) → 4. TAHLIL (Juma)
   Telegram DM / qo'ng'iroq     30 daqiqa/1        15+/oy normasi       Jurnalga yozish
   + qo'ng'iroq skripti         intervyu           Mom Test qoidalari    Isbot darajasi 🥇-🥉
```
- **Norma:** 15+ intervyu/oy (haftasiga 4 ta) — [[STANDARTLAR]] 2.5 talabi
- **Skript qoidasi (Mom Test):** savollar o'tmish haqida, fikr emas — "qanchalik tez-tez?", "oxirgi marta qachon?", "buning uchun pul to'laganmisiz?"

### 7.2. Intervyu kuzatuv jadvali (har loyihada)
| # | Sana | Ism | Segment | Kanal (Telegram/telefon) | Xulosa (1 jumla) | Isbot darajasi 🥇-🥉 | Keyingi qadam |
|---|------|-----|---------|--------------------------|------------------|---------------------|---------------|
| 1 | _ | _ | _ | _ | _ | _ | _ |

**Isbot shkalasi:** 🥇 pre-order / to'lov · 🥈 rasmiy majburiyat · 🥉 o'tmishda to'lagan · 🔻 taxmin · ✖ maqtov (isbot emas)

### 7.3. Intervyu davomida 5 kuchli savol ([[STANDARTLAR]] 2.5)
1. Oxirgi marta qachon _ bilan shug'ullangansiz?
2. Hozir buni qanday hal qilyapsiz? (qancha to'laysiz?)
3. Eng og'riqli jihati nima?
4. Agar ertaga yo'qolib qolsa, nima bo'lardi?
5. Buning uchun pul to'laganmisiz? (qancha?)

---

## 💻 8. GIT ISH OQIMI (har qadamda)

### 8.1. Qoidalar:
1. **Har blok = alohida commit + push** (AI 07 talabi — konflikt oldini oladi)
2. Commit xabari formati:
   ```
   AI 01: [Loyiha] BOSQICH N — QADAM X-Y (mavzu, vaqt)
   ```
3. **Push qilishdan oldin:** `git fetch origin` → `git rebase origin/main` (AI 07 parallel ishlaydi)
4. `.bot-log.md` ga TEGMAYMAN (vaqtinchalik diagnostika fayli)
5. `.obsidian/` fayllariga tegmayman (Obsidian UI holati)
6. Kalit/token larni yozmayman

### 8.2. Konflikt protokoli (rebase rad etilsa):
```
1. git status --short → nima konflikt
2. Agar .obsidian/workspace → git checkout -- .obsidian/ (tashlab yuboriladi)
3. Agar loyiha fayli → AI 07 versiyasini o'qi, o'z blokimni yangi qilib qo'yaman
4. git rebase --continue → push (PAT bilan)
```

### 8.3. Push (PAT bilan):
```bash
PAT=$(grep "^GITHUB_PAT=" /mnt/c/Users/user/news/.creds/minds-bot.env | cut -d= -f2- | tr -d '"'"'"' \r')
git push "https://x-access-token:${PAT}@github.com/$(git remote get-url origin | sed 's|https://github.com/||')" main
```

---

## 🔍 9. TADQIQOT JARAYONI (manbalar)

| Bosqich | Qanday | Manbalar |
|---------|--------|----------|
| Bozor hajmi | Global manba → UZ raqamga moslash | Fortune BI, Statista, OAV |
| UZ realligi | UZ stat.uz, OAV (Daryo/Kun/Spot), qonunlar (lex.uz) | stat.uz, lex.uz, OAV |
| Raqobatchilar | Google/Yandex qidiruv + goldenpages | goldenpages.uz, yellowpages |
| Xalqaro model | Yetakchi kompaniya hisoboti | Company blog, Crunchbase |

**Sifat darvozalari (research):**
1. Har qadamda **kamida 1 yangi manba** yoki mavjud manbani chuqurlashtirish
2. Har bir raqam **sana bilan** yoziladi (masalan: "2025-yilda, stat.uz")
3. Manba fayl oxirida **raqamlangan ro'yxat** (7+ / fayl, [[STANDARTLAR]] 3-bo'lim)
4. Raqobatchi bo'limida **kamida 3 real raqobatchi** (nom + manba bilan)

---

## 🤝 10. ROL VA MAS'ULIYATLAR (RACI)

| Vazifa | Foydalanuvchi | AI 07 | AI 01 | Bot |
|--------|:---:|:---:|:---:|:---:|
| Yo'nalish / ustuvorlik | **A** | C | C | — |
| Topshiriq berish | C | **R** | C | C |
| G'oya qabul qarori | A | C | **R** | I |
| Tadqiqot / fayl / qadamlar | I | C | **R** | — |
| Sifat nazorati ([[STANDARTLAR]]) | C | **R** | **R** | — |
| Commit + push | — | A | **R** | — |
| Metrikalar / dashboard | I | **R** | C | C |
| Yakuniy qarorlar (GO/PIVOT/STOP) | **A** | **R** | C | I |

*R = bajaradi · A = javobgar (tasdiqlaydi) · C = maslahat beradi · I = xabardor qilinadi*

**AI 01 ish qoidasi:**
- Topshiriq kelganda: o'qi → reja → bajar → chatga hisobot → commit+push (SLA: 1 ish kuni)
- Topshiriq bo'lmasa: ochiq slotlarni to'ldirish (chuqur mustaqil ish) yoki kutish holatini e'lon qilish
- **Har hafta juma:** haftalik hisobot chatga (5-bo'lim ritmi)

---

## 🧾 11. YANGI G'OYA QO'SHISH SHABLONI (17 bo'lim — [[STANDARTLAR]] v5.0 bilan sinxron)

Foydalanuvchi/AI 07 bot orqali g'oya yuborganida quyidagi shablon to'ldiriladi va faylga aylantiriladi:

```markdown
## 🆕 YANGI G'OYA: [NOMI]

### 1. Muammo (1 jumla)
[Kim uchun? Nima muammo? Qanchalik og'riqli?]

### 2. Maqsadli auditoriya
[Kimlar? Nechta? Qayerda? — [[STANDARTLAR]] 3.6 UZ bazasiga solishtirish]

### 3. Hozirgi yechim
[Mavjud yechimlar — kim bor, nima qiladi]

### 4. Bizning yechim (1 jumla)
[Nima qilamiz, qanday farq qilamiz]

### 5. To'lovchi
[Kim to'laydi? Qancha? (B2C/B2B/B2B2C/donor)]

### 6. UZ realligi
[Lokal raqamlar, infratuzilma, qonuniy doira]

### 7. Xavflar/tuzoqlar
[Nima noto'g'ri ketishi mumkin — [[STANDARTLAR]] 3.12]

### 8. Intervyu isboti (Mom Test)
[5+ intervyu; 2+ tasida pul/pre-order darajasi 🥇-🥉 — 7-bo'lim jadvali]

### 9. Global frameworklar
[YC 3 mezon · Thiel 7 savoldan 4+ "ha" · bottom-up hisob: mijoz × ACV = $_ · Hormozi 5]

### 10. UZ bozor testi (aniq iqllik)
[Aniq segment · aniq narx (UZS) · aniq kanal · aniq raqam (bottom-up) · aniq qonun — [[STANDARTLAR]] 3.7]

### 11. Raqobatchilar
[Kamida 3 real raqobatchi + ularning bo'sh joyi — [[STANDARTLAR]] 3.9 template]

### 12. Yuridik status
[YTT / MCHJ / MCHJ+IT Park / escrow — bosqichga mos — [[STANDARTLAR]] 3.10]

### 13. Qonuniy doira
[6 savol: litsenziya · sektor qonuni · JK 278 · shaxsiy ma'lumotlar · to'lov · IT Park — [[STANDARTLAR]] 3.11]

### 14. Metrikalar
[Subscription: churn <1% · retention 70%+ · LTV/CAC 3× · Marketplace: likvidlik >5% · fill >80% — [[STANDARTLAR]] 3.13]

### 15. Pivot qoidalari
[Qizil chiziqlar va qachon pivot — [[STANDARTLAR]] 3.14]

### 16. Madaniy omillar
[Ishonch kanallari: mahalla/direktor/ona zanjiri/buxgalter — [[STANDARTLAR]] 3.15]

### 17. Manbalar (7+)
1. [link — manba]
```

---

## 📊 12. HOLAT KO'RSATKICHLARI (dashboard uchun)

| Ko'rsatkich | Manba | Yangilash |
|-------------|-------|-----------|
| bosqich/qadam | Frontmatter | Har blokda |
| Progress jadvali | [[HOME]] | Har blokda |
| Baholar (1–10) | [[STANDARTLAR]] 3-bo'lim | QADAM 100 da |
| Statistika | [[STATS]] | Blok tugagach |
| Chat jurnali | [[Chat for AIs and Monitoring]] | Har hisobotda |
| Intervyu jadvali | Har loyiha faylida (7.2) | Haftalik |
| Qarorlar (ADR) | [[Chat for AIs and Monitoring]] | Har qarorda |

### Haftalik hisobot template (juma):
```markdown
## 📅 HAFTALIK HISOBOT (sana)
✅ TUGAGAN: _ (qadamlar/commitlar)
📈 METRIKALAR: _ (oldingi → hozirgi)
🔄 O'ZGARISHLAR: _ (pivot/ADR)
⚠️ XAVFLAR: _
🎯 KEYINGI HAFTA: _ (1–2 topshiriq)
```

---

## 🔗 BOG'LIQ NOTALAR

- [[STANDARTLAR]] — qabul mezonlari va sifat nazorati (UZ bozori uchun to'liq)
- [[STARTUP-100-STEPS]] — 100 qadam framework
- [[METHODOLOGY]] — 7 boqichli metodologiya
- [[STARTUP-MUAMMOLAR]] — rad etilgan g'oyalar
- [[STATS]] — joriy holat
- [[Chat for AIs and Monitoring]] — aloqa jurnali (ADR + hisobotlar)

---

*Oxirgi yangilanish: 2026-09-04 — v3.0: YC Order of Operations · haftalik ritmlar · kanban (WIP 2) · intervyu pipeline · RACI · ADR jurnali · 17 bo'limli shablon ([[STANDARTLAR]] v5.0 bilan sinxron).*