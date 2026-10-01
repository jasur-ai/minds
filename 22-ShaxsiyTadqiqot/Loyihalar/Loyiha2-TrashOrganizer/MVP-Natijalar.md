---
aliases: [Loyiha 2 MVP natijalari, Ochiq-Eko-Ledger MVP]
tags: [shaxsiy-tadqiqot, loyiha2, mvp]
created: 2026-09-29
updated: 2026-10-01
sektor: 22-ShaxsiyTadqiqot | Loyiha2
tur: natija
holat: faol
sarlavha: MVP — Ochiq-Eko-Ledger natijalari (S0–S7)
qisqacha: To'liq prototip (S0–S7): zona dvigateli, murojaat SLA, JONLI bot @ecoledg_bot, push-eslatmalar, deploy paketi (compose+backup+nginx), CI yashil; adolat paketi (karta HTML/PDF, precision 8-holat); 193 test
manba: workspace/02-Loyiha2-Trash-Organizer/MVP-NATIJALAR.md
---

# LOYIHA 2 — MVP NATIJALARI (OCHIQ-EKO-LEDGER, S0–S7 bajarildi)

**Sana:** 2026-09-29 · **Holat:** ✅ ishlaydigan prototip (+ jonli xarita va API) · **Kod:** `02-Loyiha2-Trash-Organizer/MVP/`
**TZ:** `TZ/Loyiha2_Ochiq_Eko_Ledger_MVP_TZ.md` (v1.3).

---

### 8. Adolat paketi — tushuntirish kartasi va aniqlik hisoboti (R41)

`Tadqiqot_1C_Adolat_Paketi.md` qoidalari ishlaydigan modulga aylandi (`src/adolat.py`):

| Nima | Implementatsiya | Natija (jonli misol E-1001) |
|---|---|---|
| **Tushuntirish kartasi (12 maydon)** — 1C §C.2 | `explain_card()` · `GET /v1/adolat/karta/{eco_id}` | 12/12 maydon; 7 tasi to'ldirilgan, 5 tasi **sabab bilan ochiq** («0» bilan yashirilmaydi) |
| **Uch savol bir sahifada** (uz + ru) | `objection_text()` → `etiroz_matni.uz/.ru` | «nima o'lchandi · nega shunday qaror · qanday e'tiroz» |
| **Apellyatsiya oynasi** — 1C §D | `appeal_window()` · `GET /v1/adolat/oyna` | javob 10 kun · oyna 30 ish kuni (O'RQ-457); dam olish kunlari hisobga olinadi |
| **Aniqlik hisoboti (5 metrika)** — 1C §E.2 | `accuracy_report()` · `GET /v1/adolat/hisobot` | signallar 8 · sariq 50% · o'zgargan qarorlar 0% · precision va U/L — «mavjud emas» + sabab |
| **Fuqaro kanali** | Bot: `/tushuntirish <eco_id>` | Uch savol + to'lmagan maydonlar soni |
| **Karta — chop etiladigan shakl** (R46) | `card_html()` + `qr_svg()` · `GET /v1/adolat/karta/{eco_id}/html` · `scripts/build_card.py` | A4 HTML (10 983 B, tashqi resurs yo'q) va **PDF 1 varaq** (37 581 B); QR orqali botga havola; uz+ru |
| **Aniqlik — precision 8-holatga ulandi** (R46) | `_insp_result()` → `accuracy_report()` 3-metrikasi | `appeal_events.evidence` ichidan `natija=` o'qiladi; `qisman` maxrajga kirmaydi; hozircha «mavjud emas» (insp yozuvi yo'q) |

Ochiq maydonlar (halol): **U (noaniqlik)** va **kalibrovka jurnali** — TZ-1 piloti to'ldiradi;
**precision** — kod tayyor (R46, 8-holat `yakunlandi_tekshiruv`), qiymat esa inspeksiya natijasi yozilgach chiqadi; **koeffitsient/summa** — platforma
jarima hisoblamaydi, «qo'llanilmaydi» deb belgilanadi. Batafsil: `YAKUNIY/11-APELLYATSIYA-PAKETI.md`.

**Jonli nashr:** zonalar xaritasi <https://egaz-audit.pages.dev/map.html> manzilida ochiq (Cloudflare Pages); bot `/start` ham shu havolani beradi.

## 1. Nima qurildi (TZ bosqichlari ↔ kod)

| TZ bosqichi | Deliverable | Bajarildi |
|---|---|---|
| **S0** Ma'lumot modeli, 3 indikator | korxona kartochkasi, 5 oqim | ✅ `db/schema_sqlite.sql` (+ `schema_postgis.sql`), `src/seed.py` |
| **S1** Backend va baza | API + migratsiya + seed + 15 test | ✅ `src/db.py`, `src/api/app.py` |
| **S2** Zona-rang algoritmi | engine + rules.md + 100 test | ✅ `src/zoning/engine.py`, `src/zoning/rules.md`, **193 test** (zona: 48) |
| **S3** Xarita va dashboard | `web/map.html`, mobil | ✅ `web/map.html` (o'z-o'zini ta'minlaydi; `/` da jonli) |
| **S4** LLM matn generatori | prompt_v1.md + verify.py + 100 test-matn | ✅ `src/llm/generate.py` (6 qavat), `src/llm/prompt_v1.md` |
| **S5** Telegram bot (aiogram) | 6 ssenariy | ✅ **JONLI ISHLAYAPTI: [@ecoledg_bot](https://t.me/ecoledg_bot)** (2026-09-30 dan, polling) · 16 handler testi |
| **S6** Murojaat moduli | 7 holat, SLA, 25+ test | ✅ `src/murojaat/service.py` |
| **S7** Test/demo/hujjat | CI, demo, hisobot | ✅ `Dockerfile` · `docker-compose.yml` (bot profili) · `.github/workflows/ci.yml` · `docs/architecture.md` · `docs/limitations.md` · `docs/DEMO-SSENARIYLAR.md` (3 video skript) |

## 2. Zona dvigateli — demo natijasi (TZ §5, rule_version 1.0)

- **78 sintetik obyekt**, 6 tuman; har 4 rang demo'da ko'rinadi:

| Zona | Rang | Qamrov | Nima ko'rsatadi |
|---|---|---|---|
| Yunusobod | 🔴 qizil | 100% | ekstremal (R=6,2, O3) + tabiiy manba (O5) + mavsumiy (O4) |
| Chilonzor | 🔴 qizil | 100% | 2 ta sariq korxona → agregatsiya qoidasi |
| Mirzo Ulug'bek | 🟡 sariq | 100% | sariq korxona; ko'k+C<0,5 holati |
| Yakkasaroy | 🟢 yashil | 100% | norma ichida, ishonchli ma'lumot |
| Olmazor | 🔵 ko'k | **46%** | qamrov <70% → «ko'r zona», «toza» EMAS |
| Sergeli | 🟢 yashil | 100% | C−0,2 testi (stansiya uzoqda) |

- Klass taqsimoti: red 4 · yellow 4 · green 62 · blue 8 · «tekshiruv kutilmoqda» 1
- **Override qoidalari O1–O6 va severity 1–3** — barchasi test bilan qoplangan

## 3. Murojaat moduli (TZ §6) — demo

- 8 murojaat, **7 holatning barchasi** ko'rsatilgan; SLA hisoboti: median javob **4,0 kun**, muddatga rioya **100%**, muddati o'tgan 1 (jurnalist murojaati — 5 kunlik rejim)
- Dublikat: aynan o'xshash (≥0,85) → **birlashtirildi** (`supporters_count` oshadi, murojaat yo'qolmaydi); 0,55–0,85 → «o'xshash murojaatlar» guruhi
- Anti-spam: 1 telefon → ≤5/kun; **o'chirish taqiqlangan** (append-only audit) — test bilan tasdiqlangan
- KPI paneli ochiq: `/v1/kpi/sla`

## 4. LLM qatlami (TZ §8)

- Oltin qoida: **raqam registrdan, matn shablondan**; 6 qavat verifikatsiya (V1 faktlar ↔ registr, V2 raqamlar, V3 taqiqlangan so'zlar, V4 manba, V5 format, V6 namuna nazorati)
- Demo: 3 matn — barchasi **PASS**; uydirma raqam testi va "ko'k zona hech qachon «toza» deb atalmaydi" testi o'tadi
- API kaliti bo'lmasa ham ishlaydi (deterministik rejim); kalit bilan LLM rejimiga o'tadi (prompt `prompt_v1.md`)


**Taqdimot:** `YAKUNIY/00-MVP-TAQDIMOT.pptx` — 22 slayd (ikkala loyiha, huquqiy asos, CI/testlar).

## 5. Artefaktlar va ochiq endpointlar

| Fayl / endpoint | Nima |
|---|---|
| `/` (server) → `web/map.html` | jonli xarita (SVG, CDN'siz, mobil moslashuv) |
| `/v1/geo/zones.geojson` | zona qatlami (rang, qamrov, rule_version) |
| `/v1/export/measurements.csv` | ochiq ma'lumot eksporti (Aarhus 4-modda) |
| `/v1/appeals` · `/v1/appeals/{code}` · `/transitions` | murojaat sikli |
| `/v1/adolat/karta/{eco_id}` · `/hisobot` · `/oyna` | adolat paketi (12 maydon · 5 metrika · apellyatsiya oynasi) |
| `/v1/adolat/karta/{eco_id}/html` | **chop etiladigan A4 karta** (QR + uz/ru e'tiroz, tashqi resurs yo'q) |
| `/v1/kpi/sla` | ochiq KPI |
| `reports/DEMO-NATIJA.md` | to'liq demo hisoboti |
| `tests/` (7 fayl) | **193 test — barchasi o'tadi** (adolat 25 · murojaat 35) |

## 5.1. Bot jonli ishga tushirildi (2026-09-30)

- **[@ecoledg_bot](https://t.me/ecoledg_bot)** → nomi «Ochiq-Eko-Ledger», tavsif va **7 buyruq menyusi** ro'yxatga olindi.
- Bot jarayoni: `Bot ishga tushdi: @ecoledg_bot · API: http://127.0.0.1:8000` (polling rejimi).
- `scripts/bot_healthcheck.sh` — 4 nuqtali tekshiruv (API · GeoJSON · Telegram getMe/webhook · bot jarayoni): **hammasi ✅**.
- Testlar: `pytest -q tests/` → **141** (16 tasi bot handlerlari, token talab qilmaydi — mock rejim).
- Hujjatlar: `docs/BOT-ISHLATISH.md` (operator qo'llanmasi: ishga tushirish, cron, token xavfsizligi).

## 5.2. Push-eslatmalar (7/10/15-kun) — jonli

- `src/notify/scheduler.py` + `scripts/sla_scheduler.py`: 7-kun ogohlantirish, 10-kun muddati o'tdi,
  15-kun eskalatsiya (operator chat'iga ham). **Dedupe** — bitta hodisa bir marta (`notification_log`).
- **Real yetkazish:** 2026-09-30 da 6 xabar Telegram'ga yuborildi (**xato 0**) — foydalanuvchi chat'i faol.
- Yangi API: `GET /v1/appeals/due`, `POST /v1/bot/subscribe`, `GET /v1/bot/subscriptions`.
- Yangi bot buyrug'i: `/eslatmalar` (kuzatilayotgan murojaatlar ro'yxati); murojaat yuborilganda
  obuna avtomatik yoqiladi.
- **Testlar:** 193 (16 bot + 17 push + 160 asosiy) — R46 dan keyin. Yo'lda topilgan nuqson tuzatildi:
  testlararo baza almashinuvi (config.DB_PATH global) — endi har modul `monkeypatch` bilan izolyatsiya qiladi.

## 5.3. Ochiq repo va CI (JONLI ✅)

**Repo:** https://github.com/jasur-ai/eco-ledger-mvp · **CI:** ✅ yashil
(run #9 · 2026-10-01 · yashil · qadamlar: bog'liqliklar → testlar → demo smoke; har push'da avtomatik)
Badge README'da: `![CI](https://github.com/jasur-ai/eco-ledger-mvp/actions/workflows/ci.yml/badge.svg)`

## 5.4. Ishlab chiqarishga ko'chirish paketi (deploy/)

| Fayl | Vazifa |
|---|---|
| `deploy/docker-compose.prod.yml` | 3 servis: api (2 worker, healthcheck) + bot + scheduler (30 daqiqalik sikl); portlar faqat localhost |
| `deploy/backup.sh` | Kunlik zaxira: python sqlite3 `.backup` → butunlik tekshiruvi → gzip → 14 kunlik saqlash. **Sinovdan o'tdi**: 78 obyekt/8 murojaat/8 obuna tiklandi, nuqson (takroriy sikl) tuzatildi |
| `deploy/nginx.conf` | Teskari proksi + rate-limit (30 r/s) + TLS (certbot) tayyor konfiguratsiya |
| `deploy/.env.example` | Tokenlar namunasi (huquq 600; `.env` repoga tushmaydi) |
| `deploy/README.md` | 9 bo'limli qo'llanma: tayyorlash → joylash → ishga tushirish → TLS → zaxira → ekspluatatsiya → xavfsizlik nazorati → troubleshooting jadvali |

## 5.5. Demo video storyboard (`docs/DEMO-VIDEO-STORYBOARD.md`)

4 video (~8 daqiqa) kadr-kadr: vaqt · ekran · harakat · **ovoz matni** (o'qishga tayyor) + yozish buyruqlari
(`ffmpeg`) va `demo1-xarita.srt` subtitr na'munasi. Har video yakunida jonli tekshiruv kadri bor.

## 5.6. Demo videolar (generatsiya qilingan)

| Video | Fayl | Davomiylik | Sahnа | Mazmun |
|---|---|---|---|---|
| 1 | `demo-xarita.gif` | 47,4 s · 0,86 MB | 8 | run_demo → zona jadvali → xarita → **jonli GeoJSON API** → norma chegaralari → healthcheck 4/4 |
| 2 | `demo-murojaat.gif` | 25,8 s · 0,61 MB | 4 | holat zanjiri → SLA paneli (jonli API) → **dublikat birlashtirish** → append-only rad etish → 45 test |
| 3 | `demo-llm.gif` | 25,8 s · 0,57 MB | 4 | registrdan matn → 6 qavat PASS → **taqiqlangan gap FAIL:V3** → 10 test |
| 4 | `demo-model.gif` | 45,4 s · 0,68 MB | 8 | model jadvali → PR/ROC · PSI · FPR trendi (statik vs median-slide) → dayjest → 72 test |

**Jonli yozuv (yangi):** `scripts/record_all.sh` — 4 ssenariyni bir buyruq bilan yozadi (`--list` · `--dry-run` · `--demo <nom>` · `--all`), subtitrni kuydiradi (`--subs burn|soft|none`), ffmpeg bo'lmasa GIF variantga yo'naltiradi. Repo-safe: klonda `ECO_L1=…` bilan ishlaydi.

Jami **4 video · 2 daqiqa 24 soniya · 24 sahna**; har biriga `.srt` subtitr va 2×2 tekshiruv varaqi
(`-kadrlar.png` namuna, `-sahnalar.png` har sahna oxiri). Barcha terminal sahnalar — **haqiqiy buyruq chiqishi**. QA jarayonida **6 nuqson sinfi** topilib tuzatildi: Traceback sahnalar, emoji o'rniga bo'sh kataklar,
sarlavhaning kesilishi, xom markdown belgilari (`**`, `|---|`), jadvalning o'rtasidan qisqartirilishi va
matn bo'shlig'i (sabab jumlasidan keyin nuqta). Buning uchun generator ikki qavatli tekshiruv beradi:
`-kadrlar.png` (namuna) va `-sahnalar.png` (har sahnaning oxirgi kadri — chiqish to'liq ko'rinadi).

Video 2 va 3'dagi dublikat hamda LLM sinovlari **bazaning nusxasida** bajariladi — asl `data/eco_ledger.db`
daxlsiz qoladi (`_l2_demo_conn()`).

## 6. S5/S7 yakuni (professional paket)

- **S5 bot — to'liq kod** (`scripts/bot.py`, aiogram 3): 6 ssenariy — `/start`, `/holat`, `/xarita`,
  `/murojaat` (FSM: kategoriya → tavsif 30+ → lokatsiya → telefon), `/kuzatish`, `/sla`;
  dublikat birlashganda foydalanuvchiga tushunarli javob beradi. Bot — yupqa klient, DB'ga tegmaydi.
  Ishga tushirish: `export ECO_BOT_TOKEN=... && make bot` (yoki `docker compose --profile bot up`).
- **S7 paketi:** Docker (healthcheck bilan), CI (193 test + demo smoke), `docs/architecture.md`
  (5 qatlam ↔ fayl xaritasi + 5 dizayn qarori), `docs/limitations.md` (7 band), 3 demo-video skripti.

### 6.1. Huquqiy bog'lanish (har bir mexanizm qaysi hujjatga xizmat qiladi)

| Mexanizm | Prezident hujjati | Nima beradi |
|---|---|---|
| Ochiq e'lon (xarita + 5 kanal) | **PQ-184** (15.05.2025 — 01.12.2025 dan baza ochiq), **PF-149** (26.09.2024) | e'lon ixtiyor emas, talab — loyiha uni bajaradigan qatlam |
| Hisob va manba | **PF-5** (04.01.2024), **PF-56** (24.03.2025 — yagona elektron hisob), **PQ-4291** | ma'lumot oqimi davlat tizimidan keladi |
| Murojaat va SLA | **PF-217** (18.11.2025 — aholi talablariga tezkor javob), **O'RQ-457** (30 ish kuni) | 10 kunlik standart ikkalasidan qat'iyroq — islohotning ko'rinadigan natijasi |
| Zona/severity va sanksiya uyg'unligi | **PF-217** (01.04.2026 sanksiya tartibi), **202-son Nizom** | «sezilarli oshib ketish» mezoni jazo amaliyotiga mos |
| LLM qatlami | **PQ-358** (14.10.2024), **PF-189**/**PQ-320** (2025), **VM-425** (10.07.2025) | LLM institutsional qo'llab-quvvatlash doirasida; 6 qavat verifikatsiya |
| Platforma handover | **PQ-343** (18.11.2025 — platforma 01.09.2026ga qadar; kechiktirishga 5×) | MVP tayyor bo'lganda yagona ekologik onlayn platformaga ko'chiriladi |
| Xavfli chiqindi (kelajak moduli) | **Prezident qarori 2026-08** (01.10.2026 hisobot; 01.01.2027 raqamli pasport) | yangi majburiyatlar MVP naqshiga bevosita qo'shiladi |

## 7. Cheklovlar va keyingi qadam

- Ma'lumotlar **sintetik** (real korxona nomlari yo'q — TZ §1 anti-da'vosi).
- S5 (real Telegram bot) — bot tokeni kutilmoqda; ulash yo'li hujjatlashtirilgan.
- Keyingi: CI badge (GitHub Actions), 3 demo video, `zoning/rules.md` versiyasini imzolash (S1 oldi sharti).

## 7. Ishga tushirish

```bash
cd 02-Loyiha2-Trash-Organizer/MVP
pip install -r requirements.txt
python3 scripts/run_demo.py     # DB seed + hisob + hisobot + xarita
pytest -q tests/                # 193 test
uvicorn src.api.app:app --port 8000   # / → xarita
```
