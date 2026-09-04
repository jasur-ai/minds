---
aliases: [Workflow, Ish Jarayoni, Qo'shish Oqimi, Development Process]
tags: [meta, workflow, process]
created: 2026-09-04
updated: 2026-09-04
sektor: 00-Meta
tur: meta
holat: faol
sarlavha: Workflow
qisqacha: Yangi g'oya qo'shish va loyihani rivojlantirish jarayoni (template)
---

# 🔄 WORKFLOW — Yangi G'oya Qo'shish va Rivojlantirish Jarayoni

> **Maqsad:** Har qanday g'oya (bot orqali, AI 07 dan yoki tadqiqotdan) aniq, takrorlanadigan jarayon bilan vaultga kiradi va 100 qadamgacha rivojlanadi.
> **Standartlar:** [[STANDARTLAR]] — qabul mezonlari · [[STARTUP-100-STEPS]] — qadamlar · [[METHODOLOGY]] — metodologiya
> *2026-09-04: 5 loyiha 100/100 ga yetkazildi — workflow shu jarayondan olingan tajriba asosida rasmiylashtirildi.*

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
│ STEP 1: TEKSHIRUV (AI 01) — [[STANDARTLAR]] 2-bo'lim │
│ 6 mezon + Mom Test + YC/Thiel + bottom-up → QABUL ✅ │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│ STEP 2: FAYL YARATISH — [[STANDARTLAR]] 4-bo'lim     │
│ shablon + frontmatter + 7 manba + UZ realligi        │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│ STEP 3: 100 QADAM RIVOJLANISH — [[STARTUP-100-STEPS]]│
│ 10 bosqich × 10 qadam → har bosqich = commit+push    │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│ STEP 4: YAKUNIY BAHO — [[STANDARTLAR]] 3-bo'lim      │
│ GO ✅ (7.0+) / TUZATISH 🔄 / PIVOT ❌                │
└─────────────────────────────────────────────────────┘
```

---

## 📲 2. YANGI G'OYA QO'SHISH (bot /new yo'li)

### Jarayon:
1. **Bot** `/new` buyrug'i bilan g'oya yozadi → [[Chat for AIs and Monitoring]] ga tushadi
2. **AI 01** g'oyani ko'radi va [[STANDARTLAR]] checklisti bo'yicha tekshiradi — 3 qatlamli tekshiruv:
   - **Qatlam 1 — 6 mezon** ([[STANDARTLAR]] 1-bo'lim): muammo/raqamlar/to'lovchi/bo'sh joy/MVP/UZ
   - **Qatlam 2 — Mom Test** ([[STANDARTLAR]] 2.5-bo'lim): 5+ intervyu, 2+ tasida pul/isbot darajasi 🥇-🥉
   - **Qatlam 3 — Global frameworklar** ([[STANDARTLAR]] 3.5-bo'lim): YC 3 mezon · Thiel 7 savol (4+/7) · bottom-up hisob · Hormozi 5
3. **Qaror** chat faylida e'lon qilinadi:
   - **QABUL ✅** → fayl yaratiladi (4-bo'lim shablon)
   - **RAD ❌** → sabab yoziladi, [[STARTUP-MUAMMOLAR]] ga qo'shiladi (qayta taklif taqiqlanadi)
   - **TUZATISH 🔄** → qaysi qatlamda nima yetishmayapti ko'rsatiladi
4. **Xabar** chatga yoziladi: `AI 01: [g'oya] tekshirildi — QABUL/RAD (sabab, qatlam bo'yicha)`

### Template (chatga yozish):
```markdown
## 📲 BOT G'OYASI TEKSHIRUVI (sana)
G'oya: ___
✅ Qatlam 1 (6 mezon): muammo _ · raqamlar _ · to'lovchi _ · bo'sh joy _ · MVP _ · UZ _
✅ Qatlam 2 (Mom Test): intervyu _/5 · pul isboti _/2 (🥇-🥉)
✅ Qatlam 3 (Global): YC 3 mezon _ · Thiel _/7 · bottom-up $_ · Hormozi _/5
QAROR: QABUL ✅ / RAD ❌ / TUZATISH 🔄 — sabab: ___
```

---

## 🛠️ 3. RIVOJLANTIRISH JARAYONI (100 qadam)

### Qadamlar tartibi (10 bosqich):
| BOSQICH | Qadamlar | Mavzu | Holat mezonlari |
|---------|----------|-------|-----------------|
| 1. G'OYA | 1–10 | Muammo, bozor, xalqaro taqqoslash, TAM/SAM/SOM, GO/NO-GO | 6 mezon, baho 7.0+ |
| 2. TADQIQOT | 11–20 | ICP, deep-dive, raqobatchilar, narx, qonuniy, texnologiya, jamoa, moliya, benchmark | Manbali raqamlar |
| 3. VALIDATION | 21–30 | Landing, waitlist, 50 intervyu, pre-order, fake door, kanallar | Waitlist 50+ |
| 4. MVP | 31–40 | MoSCoW, sprint, wireframe, qurish, beta, KPI | Beta 3–10 mijoz |
| 5. SINOV | 41–50 | Analytics, retention, cohort, unit ekonomika, funnel, A/B, churn | LTV/CAC 3×+ |
| 6. PMF | 51–60 | Sean Ellis 40%+, NPS 40+, must-have, segment | PMF ✅ |
| 7. GTM | 61–70 | Sotuv strategiyasi, narx paketlari, funnel, mijoz xizmati | MRR boshlanishi |
| 8. O'SISH | 71–80 | Viral halqa, SEO, avtomatlashuv, dashboard, 12 oylik yo'l xarita | MRR ×2 |
| 9. SCALE | 81–90 | Jamoa, SOP, 10 shahar, investor tayyorlik | MRR ×3 |
| 10. VOYAGA YETISH | 91–100 | MOAT, exit, 5 yillik reja, yakuniy baho | GO / exit |

### Har bir QADAM uchun standart:
1. `## ✅ QADAM N: SARLAVHA — BAJARILDI (AI 01, sana)`
2. Jadval/raqam/manba (2–4 jumla xulosa)
3. Frontmatter `qadam` yangilanadi
4. Chatga qisqa xabar (agar AI 07 so'ragan bo'lsa)

### Bosqich oxirida:
- **Xulosa formati** (template):
```markdown
```
NATIJA: _ | MEZON: _
QAROR: (davom/pivot/to'xtatish)
KEYINGI: BOSQICH N — ...
```
```
- Frontmatter `bosqich` yangilanadi
- [[00-Meta/HOME]] progress jadvali yangilanadi

---

## 💻 4. GIT ISH OQIMI (har qadamda)

### Qoidalar:
1. **Har blok = alohida commit + push** (AI 07 talabi — konflikt oldini oladi)
2. Commit xabari formati:
   ```
   AI 01: [Loyiha] BOSQICH N — QADAM X-Y (mavzu, vaqt)
   ```
3. **Push qilishdan oldin:** `git fetch origin` → `git rebase origin/main` (AI 07 parallel ishlaydi)
4. `.bot-log.md` ga TEGMAYMAN (vaqtinchalik diagnostika fayli)
5. `.obsidian/` fayllariga tegmayman (Obsidian UI holati)
6. Kalit/token larni yozmayman

### Push (PAT bilan):
```bash
PAT=$(grep "^GITHUB_PAT=" /mnt/c/Users/user/news/.creds/minds-bot.env | cut -d= -f2- | tr -d '"'"'"' \r')
git push "https://x-access-token:${PAT}@github.com/$(git remote get-url origin | sed 's|https://github.com/||')" main
```

---

## 🔍 5. TADQIQOT JARAYONI (manbalar)

| Bosqich | Qanday | Manbalar |
|---------|--------|----------|
| Bozor hajmi | Global manba → UZ raqamga moslash | Fortune BI, Statista, OAV |
| UZ realligi | UZ stat.uz, OAV (Daryo/Kun/Spot), qonunlar (lex.uz) | stat.uz, lex.uz, OAV |
| Raqobatchilar | Google/Yandex qidiruv + goldenpages | goldenpages.uz, yellowpages |
| Xalqaro model | Yetakchi kompaniya hisoboti | Company blog, Crunchbase |

**Qoida:** Har qadamda kamida 1 yangi manba yoki mavjud manbani chuqurlashtirish.

---

## 🤝 6. ROL VA MAS'ULIYATLAR

| Kim | Vazifa | Qachon |
|-----|--------|--------|
| **AI 07** | Topshiriqlar, bot, dashboard, deploy, yakuniy qarorlar | Har topshiriq |
| **AI 01** | Tadqiqot, fayl yozish, qadamlar, tekshiruv, commit+push | Har qadam |
| **Bot** | /new g'oyalar, foydalanuvchi so'rovlari | On-demand |
| **Foydalanuvchi** | Yo'nalish, ustuvorlik, qarorlar | Muhim nuqtalarda |

**AI 01 ish qoidasi:**
- Topshiriq kelganda: o'qi → reja → bajar → chatga hisobot → commit+push
- Topshiriq bo'lmasa: ochiq slotlarni to'ldirish (chuqur mustaqil ish) yoki kutish holatini e'lon qilish

---

## 🧾 7. YANGI G'OYA QO'SHISH SHABLONI (to'liq template)

Foydalanuvchi/AI 07 bot orqali g'oya yuborganida quyidagi shablon to'ldiriladi va [[STANDARTLAR]] 4-bo'limi bo'yicha faylga aylantiriladi:

```markdown
## 🆕 YANGI G'OYA: [NOMI]

### 1. Muammo (1 jumla)
[Kim uchun? Nima muammo? Qanchalik og'riqli?]

### 2. Maqsadli auditoriya
[Kimlar? Nechta? Qayerda?]

### 3. Hozirgi yechim
[Mavjud yechimlar — kim bor, nima qiladi]

### 4. Bizning yechim (1 jumla)
[Nima qilamiz, qanday farq qilamiz]

### 5. To'lovchi
[Kim to'laydi? Qancha? (B2C/B2B/B2B2C/donor)]

### 6. UZ realligi
[Lokal raqamlar, infratuzilma, qonuniy doira]

### 7. Xavflar/tuzoqlar
[Nima noto'g'ri ketishi mumkin]

### 8. Intervyu isboti (Mom Test)
[5+ intervyu; 2+ tasida pul/pre-order darajasi 🥇-🥉 — [[STANDARTLAR]] 2.5]

### 9. Global frameworklar
[YC 3 mezon: kichik segment + o'sish + takrorlanmaslik · Thiel 7 savoldan 4+ "ha" · bottom-up hisob: mijoz × ACV = $_]

### 10. Manbalar (7+)
1. [link — manba]
```

---

## 📊 8. HOLAT KO'RSATKICHLARI (dashboard uchun)

| Ko'rsatkich | Manba | Yangilash |
|-------------|-------|-----------|
| bosqich/qadam | Frontmatter | Har blokda |
| Progress jadvali | [[HOME]] | Har blokda |
| Baholar (1–10) | [[STANDARTLAR]] 3-bo'lim | QADAM 100 da |
| Statistika | [[STATS]] | Blok tugagach |
| Chat jurnali | [[Chat for AIs and Monitoring]] | Har hisobotda |

---

## 🔗 BOG'LIQ NOTALAR

- [[STANDARTLAR]] — qabul mezonlari va sifat nazorati (global frameworklar bilan)
- [[STARTUP-100-STEPS]] — 100 qadam framework
- [[METHODOLOGY]] — 7 boqichli metodologiya
- [[STARTUP-MUAMMOLAR]] — rad etilgan g'oyalar
- [[STATS]] — joriy holat
- [[Chat for AIs and Monitoring]] — aloqa jurnali

---

*Oxirgi yangilanish: 2026-09-04 (3 qatlamli tekshiruv integratsiyasi — v2.0)*