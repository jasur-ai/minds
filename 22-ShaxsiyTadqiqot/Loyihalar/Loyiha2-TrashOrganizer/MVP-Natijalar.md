---
aliases: [Loyiha 2 MVP natijalari, Ochiq-Eko-Ledger MVP]
tags: [shaxsiy-tadqiqot, loyiha2, mvp]
created: 2026-09-29
updated: 2026-09-30
sektor: 22-ShaxsiyTadqiqot | Loyiha2
tur: natija
holat: faol
sarlavha: MVP — Ochiq-Eko-Ledger natijalari (S0–S7)
qisqacha: To'liq prototip (S0–S7): zona dvigateli, murojaat SLA, JONLI bot @ecoledg_bot, push-eslatmalar (6 real xabar), CI yashil (github.com/jasur-ai/eco-ledger-mvp); 158 test
manba: workspace/02-Loyiha2-Trash-Organizer/MVP-NATIJALAR.md
---

# LOYIHA 2 — MVP NATIJALARI (OCHIQ-EKO-LEDGER, S0–S7 bajarildi)

**Sana:** 2026-09-29 · **Holat:** ✅ ishlaydigan prototip (+ jonli xarita va API) · **Kod:** `02-Loyiha2-Trash-Organizer/MVP/`
**TZ:** `TZ/Loyiha2_Ochiq_Eko_Ledger_MVP_TZ.md` (v1.3).

---

## 1. Nima qurildi (TZ bosqichlari ↔ kod)

| TZ bosqichi | Deliverable | Bajarildi |
|---|---|---|
| **S0** Ma'lumot modeli, 3 indikator | korxona kartochkasi, 5 oqim | ✅ `db/schema_sqlite.sql` (+ `schema_postgis.sql`), `src/seed.py` |
| **S1** Backend va baza | API + migratsiya + seed + 15 test | ✅ `src/db.py`, `src/api/app.py` |
| **S2** Zona-rang algoritmi | engine + rules.md + 100 test | ✅ `src/zoning/engine.py`, `src/zoning/rules.md`, **125 test** (zona: 48) |
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

## 5. Artefaktlar va ochiq endpointlar

| Fayl / endpoint | Nima |
|---|---|
| `/` (server) → `web/map.html` | jonli xarita (SVG, CDN'siz, mobil moslashuv) |
| `/v1/geo/zones.geojson` | zona qatlami (rang, qamrov, rule_version) |
| `/v1/export/measurements.csv` | ochiq ma'lumot eksporti (Aarhus 4-modda) |
| `/v1/appeals` · `/v1/appeals/{code}` · `/transitions` | murojaat sikli |
| `/v1/kpi/sla` | ochiq KPI |
| `reports/DEMO-NATIJA.md` | to'liq demo hisoboti |
| `tests/` (4 fayl) | **125 test — barchasi o'tadi** |

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
- **Testlar:** 158 (16 bot + 17 push + 125 asosiy). Yo'lda topilgan nuqson tuzatildi:
  testlararo baza almashinuvi (config.DB_PATH global) — endi har modul `monkeypatch` bilan izolyatsiya qiladi.

## 5.3. Ochiq repo va CI (JONLI ✅)

**Repo:** https://github.com/jasur-ai/eco-ledger-mvp · **CI:** ✅ yashil
(run #2 · 2026-09-30 · 22 s · qadamlar: bog'liqliklar → 158 test → demo smoke)
Badge README'da: `![CI](https://github.com/jasur-ai/eco-ledger-mvp/actions/workflows/ci.yml/badge.svg)`

## 6. S5/S7 yakuni (professional paket)

- **S5 bot — to'liq kod** (`scripts/bot.py`, aiogram 3): 6 ssenariy — `/start`, `/holat`, `/xarita`,
  `/murojaat` (FSM: kategoriya → tavsif 30+ → lokatsiya → telefon), `/kuzatish`, `/sla`;
  dublikat birlashganda foydalanuvchiga tushunarli javob beradi. Bot — yupqa klient, DB'ga tegmaydi.
  Ishga tushirish: `export ECO_BOT_TOKEN=... && make bot` (yoki `docker compose --profile bot up`).
- **S7 paketi:** Docker (healthcheck bilan), CI (125 test + demo smoke), `docs/architecture.md`
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
pytest -q tests/                # 125 test
uvicorn src.api.app:app --port 8000   # / → xarita
```
