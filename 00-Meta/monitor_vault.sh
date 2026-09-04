#!/usr/bin/env bash
# =============================================================================
#  monitor_vault.sh — ECOSYSTEM VAULT MONITORI
# =============================================================================
#  Manba: 00-Meta/Chat for AIs and Monitoring.md → "🎯 KEYINGI QADAMLAR"
#
#    1. TEKSHIRISH  → papkalar, frontmatter, bo'limlar, ichki linklar
#    2. TUZATISH    → Kirill sarlavhalarni lotinga o'tkazish, redirectlar
#    3. YANGILASH   → statistikani "Chat for AIs and Monitoring.md" ga yozish
#    4. HISOBOT     → MONITORING-REPORT.md + monitoring-report.json yaratish
#
#  Ishlatish:
#    monitor_vault.sh [OPTS] [VAULT_YO'LI]
#    monitor_vault.sh --check
#    monitor_vault.sh --fix --report --json --update-status
# =============================================================================

set -euo pipefail

# =============================================================================
# KONFIGURATSIYA
# =============================================================================

# Hisobot fayllari (vault ichida)
REPORT_REL="00-Meta/MONITORING-REPORT.md"
JSON_REL="00-Meta/monitoring-report.json"
CHAT_REL="00-Meta/Chat for AIs and Monitoring.md"
CANVAS_REL="Ecosystem.canvas"

# Har bir kategoriya notasida bo'lishi kerak bo'lgan bo'limlar (kichik harf)
REQUIRED_SECTIONS=("manbalar" "bog'liq")

# Buzilgan linklar uchun qayta yo'naltirishlar: "ESKI|YANGI"
# (Chat faylidagi "Buzilgan linklar tuzatildi" ro'yxatiga mos)
REDIRECTS=(
  "12-Entertainment/Metaverse|12-Entertainment/Streaming"
  "16-Culture/NFTs|16-Culture/DigitalArt"
  "19-Space/Exploration|19-Space/Satellite"
  "16-Culture/Wellbeing|20-Society/Wellbeing"
)

# Link tekshiruvidan chetlatiladigan fayllar (hujjat namunalari saqlaydi)
LINK_IGNORE_FILES=("Chat for AIs and Monitoring.md")

# Meta papka — bu yerdagi fayllarga faqat link tekshiruvi o'tkaziladi
META_DIR="00-Meta"

# Ranglar (faqat terminal bo'lsa)
if [ -t 1 ]; then
  C_RED=$'\033[31m'; C_GRN=$'\033[32m'; C_YEL=$'\033[33m'
  C_BLU=$'\033[34m'; C_BLD=$'\033[1m'; C_RST=$'\033[0m'
else
  C_RED=""; C_GRN=""; C_YEL=""; C_BLU=""; C_BLD=""; C_RST=""
fi

# =============================================================================
# YORDAMCHI FUNKSIYALAR
# =============================================================================

usage() {
  cat <<EOF
${C_BLD}monitor_vault.sh — Ecosystem vault monitori${C_RST}

TOPSHIRIQ (Chat for AIs and Monitoring.md):
  Tekshirish → Tuzatish → Yangilash → Hisobot

ISHLATISH:
  $0 [OPTS] [VAULT_YO'LI]

OPTS:
  -c, --check           Faqat tekshirish (standart, fayllarni o'zgartirmaydi)
  -f, --fix             Tuzatish: Kirill sarlavhalar → lotin; redirectlar
  -r, --report          MONITORING-REPORT.md yozish
  -j, --json            monitoring-report.json yozish
  -s, --update-status   "Chat for AIs and Monitoring.md" statistikasini yangilash
      --canvas          Ecosystem.canvas statistikasini yangilash (jq kerak)
  -q, --quiet           Faqat muammolarni ko'rsatish
  -v, --verbose         Har bir fayl haqida batafsil
  -h, --help            Yordam

CHIQISH KODI:
  0 — hammasi joyida     1 — muammolar topildi
  2 — noto'g'ri argument  3 — vault topilmadi

MISOL:
  $0 --check
  $0 --fix --report --json --update-status
EOF
}

log()  { printf '%s\n' "$*"; }
info() { printf '%s%s%s\n' "$C_BLU" "$*" "$C_RST"; }
ok()   { printf '%s✅ %s%s\n' "$C_GRN" "$*" "$C_RST"; }
warn() { printf '%s⚠️  %s%s\n' "$C_YEL" "$*" "$C_RST"; }
err()  { printf '%s❌ %s%s\n' "$C_RED" "$*" "$C_RST"; }
die()  { err "$1"; exit "${2:-1}"; }

# Real path (readlink -f bo'lmasa oddiy qaytaradi)
abspath() {
  local p="$1"
  readlink -f "$p" 2>/dev/null || printf '%s\n' "$p"
}

# Kirill belgilarini aniqlash (PCRE yo'q bo'lsa sinfga tayanadi)
cyr_detect() {
  if [ "$HAS_PCRE" = "1" ]; then
    grep -P '[\x{0400}-\x{04FF}]'
  else
    grep -E '[А-Яа-яЁёҚқҒғҲҳЎў]'
  fi
}

# Kirill → Lotin transliteratsiya (o'zbek alifbosi)
cyr2lat() {
  local s="$1"
  # Uch va ikki harflilar avval
  s="${s//Ё/YO}";  s="${s//ё/yo}"
  s="${s//Ц/TS}";  s="${s//ц/ts}"
  s="${s//Ч/CH}";  s="${s//ч/ch}"
  s="${s//Ш/SH}";  s="${s//ш/sh}"
  s="${s//Щ/SH}";  s="${s//щ/sh}"
  s="${s//Ю/YU}";  s="${s//ю/yu}"
  s="${s//Я/YA}";  s="${s//я/ya}"
  s="${s//Ғ/G'}";  s="${s//ғ/g'}"
  s="${s//Ҳ/H}";   s="${s//ҳ/h}"
  s="${s//Қ/Q}";   s="${s//қ/q}"
  s="${s//Ў/O'}";  s="${s//ў/o'}"
  # Bir harflilar
  s="${s//А/A}";   s="${s//а/a}"
  s="${s//Б/B}";   s="${s//б/b}"
  s="${s//В/V}";   s="${s//в/v}"
  s="${s//Г/G}";   s="${s//г/g}"
  s="${s//Д/D}";   s="${s//д/d}"
  s="${s//Е/E}";   s="${s//е/e}"
  s="${s//Ж/J}";   s="${s//ж/j}"
  s="${s//З/Z}";   s="${s//з/z}"
  s="${s//И/I}";   s="${s//и/i}"
  s="${s//Й/Y}";   s="${s//й/y}"
  s="${s//К/K}";   s="${s//к/k}"
  s="${s//Л/L}";   s="${s//л/l}"
  s="${s//М/M}";   s="${s//м/m}"
  s="${s//Н/N}";   s="${s//н/n}"
  s="${s//О/O}";   s="${s//о/o}"
  s="${s//П/P}";   s="${s//п/p}"
  s="${s//Р/R}";   s="${s//р/r}"
  s="${s//С/S}";   s="${s//с/s}"
  s="${s//Т/T}";   s="${s//т/t}"
  s="${s//У/U}";   s="${s//у/u}"
  s="${s//Ф/F}";   s="${s//ф/f}"
  s="${s//Х/X}";   s="${s//х/x}"
  s="${s//Ъ/'}";   s="${s//ъ/'}"
  s="${s//Ы/I}";   s="${s//ы/i}"
  s="${s//Ь/'}";   s="${s//ь/'}"
  s="${s//Э/E}";   s="${s//э/e}"
  printf '%s\n' "$s"
}

# Ichki linklarni ajratib olish (kod bloklarini tashlab)
extract_links() {
  awk '
    BEGIN { fence = 0 }
    /^```/ { fence = !fence; next }
    fence { next }
    {
      gsub(/`[^`]*`/, "", $0)   # inline kodni olib tashlash
      s = $0
      while (match(s, /\[\[[^]]*\]\]/)) {
        l = substr(s, RSTART + 2, RLENGTH - 4)
        if (l != "") print l
        s = substr(s, RSTART + RLENGTH)
      }
    }' "$1"
}

# Linkni normallashtirish: alias, sarlavha, yo'l olib tashlash
normalize_link() {
  local l="$1"
  l="${l%%|*}"   # [[Note|alias]] → Note
  l="${l%%#*}"   # [[Note#Sarlavha]] → Note
  l="${l##*/}"   # [[papka/Note]] → Note
  printf '%s' "$l"
}

# JSON uchun qochirish
json_esc() { printf '%s' "$1" | sed 's/\\/\\\\/g; s/"/\\"/g'; }

# Fayldagi qatorlar soni
count_lines() { wc -l < "$1" | tr -d ' '; }

# =============================================================================
# ASOSIY TEKSHIRUVLAR
# =============================================================================

run_checks() {
  : > "$TMP/broken.lst"
  : > "$TMP/nofm.lst"
  : > "$TMP/nosection.lst"
  : > "$TMP/cyr.lst"
  : > "$TMP/folder_rows.txt"

  total_notes=0; total_words=0; total_links=0; cat_notes=0; ready_notes=0

  # --- Papka tahlili ---
  shopt -s nullglob
  folder_dirs=("$VAULT"/[0-9][0-9]-*/)
  shopt -u nullglob
  n_folders=${#folder_dirs[@]}
  : > "$TMP/folders.txt"
  for d in "${folder_dirs[@]}"; do
    name="${d%/}"; name="${name##*/}"
    cnt=$(find "$d" -maxdepth 1 -name '*.md' ! -name "$(basename "$REPORT_PATH")" | wc -l | tr -d ' ')
    printf '%s %s\n' "$cnt" "$name" >> "$TMP/folders.txt"
    if [ "$cnt" -eq 0 ]; then
      printf '%s\n' "$name" >> "$TMP/empty.lst" 2>/dev/null || true
    fi
  done

  # --- Fayl bo'yicha tekshiruvlar ---
  while IFS= read -r -d '' f; do
    rel="${f#"$VAULT"/}"
    base=""
    # O'z hisobotlarini hisobga olmaslik
    [ "$f" = "$REPORT_PATH" ] && continue
    [ "$f" = "$JSON_PATH" ] && continue
    total_notes=$((total_notes + 1))
    w=$(wc -w < "$f" | tr -d ' ')
    total_words=$((total_words + w))
    is_meta=0
    case "$rel" in
      "$META_DIR"/*) is_meta=1 ;;
    esac

    # Linklar (kod bloklarisiz)
    if [ "$is_meta" = "1" ]; then
      base="$(basename "$rel")"
      for ig in "${LINK_IGNORE_FILES[@]}"; do
        if [ "$base" = "$ig" ]; then
          base="__IGNORED__"; break
        fi
      done
    fi
    if [ "${base:-}" != "__IGNORED__" ]; then
      while IFS= read -r raw; do
        tgt="$(normalize_link "$raw")"
        [ -z "$tgt" ] && continue
        total_links=$((total_links + 1))
        if ! grep -Fxq "$tgt" "$TMP/names_md.txt" && ! grep -Fxq "${tgt}.md" "$TMP/names_md.txt"; then
          ln=$(grep -nF "[[$raw" "$f" | head -1 | cut -d: -f1 || true)
          printf '%s:%s: %s\n' "$rel" "${ln:-?}" "$tgt" >> "$TMP/broken.lst"
        fi
      done < <(extract_links "$f")
    fi

    # Meta fayllar: faqat link tekshiruvi
    [ "$is_meta" = "1" ] && continue
    cat_notes=$((cat_notes + 1))

    # Frontmatter
    fm_ok=1
    if ! head -1 "$f" | grep -q '^---$'; then
      printf '%s\n' "$rel" >> "$TMP/nofm.lst"; fm_ok=0
    else
      body="$(tail -n +2 "$f")"
      if ! printf '%s' "$body" | sed -n '1,/^---$/p' | grep -q 'tags:'; then
        printf '%s\n' "$rel" >> "$TMP/nofm.lst"; fm_ok=0
      fi
    fi

    # Sarlavha
    has_title=0
    grep -q '^# ' "$f" && has_title=1

    # Bo'limlar (Lotin va Kirill variantlari alohida aniqlanadi)
    sec_missing=""
    for sec in "${REQUIRED_SECTIONS[@]}"; do
      if ! grep -qi "$sec" "$f"; then
        if grep -qiP '[\x{0400}-\x{04FF}]' <(grep '^## ' "$f" 2>/dev/null); then
          printf '%s: %s (KIRILL yozuvda)\n' "$rel" "$sec" >> "$TMP/nosection.lst"
        else
          printf '%s: %s\n' "$rel" "$sec" >> "$TMP/nosection.lst"
        fi
        sec_missing="$sec_missing $sec"
      fi
    done

    # Kirill sarlavhalar
    cyr_count=$(grep '^## ' "$f" 2>/dev/null | cyr_detect | wc -l | tr -d ' ' || true)
    if [ "$cyr_count" -gt 0 ]; then
      grep '^## ' "$f" | cyr_detect | while IFS= read -r line; do
        printf '%s: %s\n' "$rel" "$line" >> "$TMP/cyr.lst"
      done
    fi

    # "Tayyor" — barcha talablar bajarilgan nota
    if [ "$fm_ok" = "1" ] && [ "$has_title" = "1" ] && [ -z "$sec_missing" ] && [ "$cyr_count" -eq 0 ] \
       && ! grep -q "^${rel}:" "$TMP/broken.lst"; then
      ready_notes=$((ready_notes + 1))
    fi
  done < <(find "$VAULT" -name '*.md' -print0)

  # --- Canvas ichidagi havolalar ---
  canvas_broken=0
  if [ -f "$VAULT/$CANVAS_REL" ]; then
    while IFS= read -r cf; do
      cf="${cf#./}"
      if [ ! -f "$VAULT/$cf" ]; then
        printf '%s (canvas)\n' "$cf" >> "$TMP/broken.lst"
        canvas_broken=1
      fi
    done < <(grep -o '"file":"[^"]*"' "$VAULT/$CANVAS_REL" | sed 's/"file":"//; s/"$//')
  fi

  n_broken=$(count_lines "$TMP/broken.lst")
  n_nofm=$(count_lines "$TMP/nofm.lst")
  n_nosec=$(count_lines "$TMP/nosection.lst")
  n_cyr=$(count_lines "$TMP/cyr.lst")
}

# =============================================================================
# TUZATISHLAR (--fix)
# =============================================================================

fix_cyrillic_headers() {
  local fixed=0
  while IFS= read -r -d '' f; do
    rel="${f#"$VAULT"/}"
    tmp="$(mktemp "$TMP/fix.XXXXXX")"
    changed=0
    while IFS= read -r line; do
      case "$line" in
        '## '*)   # faqat "## " sarlavhalar
          if printf '%s\n' "$line" | cyr_detect | grep -q .; then
            cyr2lat "$line" >> "$tmp"
            changed=1
          else
            printf '%s\n' "$line" >> "$tmp"
          fi
          ;;
        *)
          printf '%s\n' "$line" >> "$tmp"
          ;;
      esac
    done < "$f"
    if [ "$changed" = "1" ]; then
      mv "$tmp" "$f"
      printf '%s\n' "$rel" >> "$TMP/fixed_cyr.lst"
      fixed=$((fixed + 1))
    else
      rm -f "$tmp"
    fi
  done < <(find "$VAULT" -name '*.md' -print0)
  return "$fixed"
}

fix_redirects() {
  local fixed=0 pair old new f base skip
  for pair in "${REDIRECTS[@]}"; do
    old="${pair%%|*}"; new="${pair#*|}"
    while IFS= read -r -d '' f; do
      rel="${f#"$VAULT"/}"
      # Hujjat namunalari saqlaydigan fayllarni chetlab o'tish
      base="$(basename "$rel")"
      skip=0
      for ig in "${LINK_IGNORE_FILES[@]}"; do
        if [ "$base" = "$ig" ]; then skip=1; break; fi
      done
      [ "$skip" = "1" ] && continue
      before=$(grep -oF "[[$old" "$f" | wc -l || true)
      if [ "$before" -gt 0 ]; then
        sed -i "s%\[\[${old}%[[${new}%g" "$f"
        printf '%s: %s → %s\n' "$rel" "$old" "$new" >> "$TMP/fixed_redir.lst"
        fixed=$((fixed + before))
      fi
    done < <(find "$VAULT" -name '*.md' -print0)
  done
  return "$fixed"
}

# =============================================================================
# HISOBOTLAR
# =============================================================================

write_report() {
  local now; now="$(date '+%Y-%m-%d %H:%M')"
  {
    cat <<EOF
---
aliases: [Monitoring Hisoboti, Report, Tekshiruv]
tags: [meta, monitoring, report]
created: ${now%% *}
---

# 📊 MONITORING HISOBOTI

> **Avtomatik yaratildi:** \`monitor_vault.sh\` | ${now}
> **Vault:** ${VAULT}

---

## 📈 UMUMIY HOLAT

| Ko'rsatkich | Qiymat |
|-------------|--------|
| **Jami notalar** | ${total_notes} |
| **Kategoriya notalari** | ${cat_notes} |
| **Meta fayllar** | $((total_notes - cat_notes)) |
| **Papkalar** | ${n_folders} |
| **So'zlar** | ${total_words} |
| **Ichki linklar** | ${total_links} |
| **Buzilgan linklar** | ${n_broken} |
| **Frontmatter yo'q** | ${n_nofm} |
| **Bo'lim muammolari** | ${n_nosec} |
| **Kirill sarlavhalar** | ${n_cyr} |
| **Tayyor notalar** | ${ready_notes}/${cat_notes} |

---

## 🗂️ PAPKALAR BO'YICHA

| Notalar | Papka |
|---------|-------|
EOF
    sort -rn "$TMP/folders.txt" | while read -r c n; do
      printf '| %s | %s |\n' "$c" "$n"
    done
    cat <<EOF

---

## 🔗 BUZILGAN LINKLAR (${n_broken})

EOF
    if [ "$n_broken" -gt 0 ]; then
      printf '| Fayl | Qator | Maqsad |\n|---|---|---|\n'
      while IFS= read -r line; do
        f="${line%%:*}"; rest="${line#*:}"; l="${rest%%:*}"; t="${rest#*:}"
        printf '| %s | %s | %s |\n' "$f" "$l" "$t"
      done < "$TMP/broken.lst"
    else
      printf "✅ Barcha ichki linklar to'g'ri.\n"
    fi

    cat <<EOF

---

## 🔤 KIRILL SARLAVHALAR (${n_cyr})

EOF
    if [ "$n_cyr" -gt 0 ]; then
      printf '⚠️  Quyidagi sarlavhalarda Kirill harflar bor — \`--fix\` bilan tuzatiladi:\n\n'
      while IFS= read -r line; do
        printf -- '- %s\n' "$line"
      done < "$TMP/cyr.lst"
    else
      printf '✅ Barcha sarlavhalar Lotin yozuvida.\n'
    fi

    cat <<EOF

---

## 📝 STRUKTURA MUAMMOLARI

### Frontmatter yo'q (${n_nofm})
EOF
    if [ "$n_nofm" -gt 0 ]; then
      while IFS= read -r line; do printf -- '- %s\n' "$line"; done < "$TMP/nofm.lst"
    else
      printf '✅ Hammasi joyida.\n'
    fi
    cat <<EOF

### Bo'limlar yetishmayapti (${n_nosec})
EOF
    if [ "$n_nosec" -gt 0 ]; then
      while IFS= read -r line; do printf -- '- %s\n' "$line"; done < "$TMP/nosection.lst"
    else
      printf '✅ Hammasi joyida.\n'
    fi

    cat <<EOF

---

## ✅ XULOSA

| Holat | Qiymat |
|-------|--------|
| **Tayyor notalar** | ${ready_notes}/${cat_notes} |
| **Buzilgan linklar** | ${n_broken} |
| **Kirill sarlavhalar** | ${n_cyr} |
EOF
    if [ "$n_broken" = "0" ] && [ "$n_cyr" = "0" ] && [ "$n_nosec" = "0" ]; then
      printf '\n🎉 **Vault toza — barcha tekshiruvlar muvaffaqiyatli!**\n'
    else
      printf '\n⚠️ **Muammolar topildi — \`--fix\` rejimini ishga tushiring.**\n'
    fi
    printf '\n---\n\n*Yaratildi: monitor_vault.sh | %s*\n' "$now"
  } > "$REPORT_PATH"
}

write_json() {
  local now; now="$(date '+%Y-%m-%d %H:%M')"
  {
    printf '{\n'
    printf '  "generated": "%s",\n' "$(json_esc "$now")"
    printf '  "vault": "%s",\n' "$(json_esc "$VAULT")"
    printf '  "total_notes": %s,\n' "$total_notes"
    printf '  "category_notes": %s,\n' "$cat_notes"
    printf '  "folders": %s,\n' "$n_folders"
    printf '  "words": %s,\n' "$total_words"
    printf '  "links": %s,\n' "$total_links"
    printf '  "broken_links": %s,\n' "$n_broken"
    printf '  "missing_frontmatter": %s,\n' "$n_nofm"
    printf '  "missing_sections": %s,\n' "$n_nosec"
    printf '  "cyrillic_headers": %s,\n' "$n_cyr"
    printf '  "ready_notes": %s,\n' "$ready_notes"
    printf '  "ok": %s\n' "$([ "$n_broken" = "0" ] && [ "$n_cyr" = "0" ] && [ "$n_nosec" = "0" ] && [ "$n_nofm" = "0" ] && echo true || echo false)"
    printf '}\n'
  } > "$JSON_PATH"
}

update_chat_status() {
  [ -f "$CHAT_PATH" ] || { warn "Chat fayli topilmadi: $CHAT_PATH"; return 1; }
  local now; now="$(date '+%Y-%m-%d %H:%M')"
  local broken_txt
  if [ "$n_broken" = "0" ]; then
    broken_txt="0 (barchasi tuzatildi)"
  else
    broken_txt="${n_broken} (tuzatish kerak!)"
  fi
  sed -i -E "s#^\*\*Oxirgi yangilash:\*\*.*#**Oxirgi yangilash:** ${now}#" "$CHAT_PATH"
  sed -i -E "s#^\*\*Jami notalar:\*\*.*#**Jami notalar:** ${total_notes}#" "$CHAT_PATH"
  sed -i -E "s#^\*\*Tayyor notalar:\*\*.*#**Tayyor notalar:** ${ready_notes}/${cat_notes} ($((ready_notes * 100 / (cat_notes == 0 ? 1 : cat_notes)))%)#" "$CHAT_PATH"
  sed -i -E "s#^\*\*Buzilgan linklar:\*\*.*#**Buzilgan linklar:** ${broken_txt}#" "$CHAT_PATH"
  ok "Chat fayli yangilandi (${now}, ${total_notes} nota, ${n_broken} buzilgan link)"
}

update_canvas() {
  if ! command -v jq >/dev/null 2>&1; then
    warn "Canvas yangilash uchun 'jq' kerak (o'rnatilmagan) — o'tkazib yuborildi"
    return 1
  fi
  [ -f "$CANVAS_PATH" ] || { warn "Canvas topilmadi: $CANVAS_PATH"; return 1; }
  local text pct
  pct=$(( cat_notes == 0 ? 0 : ready_notes * 100 / cat_notes ))
  text="# 🌐 ECOSYSTEM — Startup Ekotizimi\n\n> 20 soha · ${total_notes} nota · ${total_links} link · ${n_broken} buzilgan · ${pct}% tayyor\n\n---\n\n## 📊 STATISTIKA\n\n- 🏢 **${total_notes}** nota (${cat_notes} kategoriya + $((total_notes - cat_notes)) meta)\n- 🗂️ **${n_folders}** soha papkasi · 📝 **${total_words}** so'z\n- 🔗 **${total_links}** ichki link · ✅ **${n_broken}** buzilgan\n- 🎓 **${ready_notes}/${cat_notes}** (${pct}%) tayyor\n\n---\n\n## 🗺️ TUZILISH\n\n- ⬅️ **Meta** — boshqaruv & tadqiqot\n- ➡️ **Sohalar** — 20 ta hub, 4 guruh\n- ⬇️ **Startuplar** — 10 ta haqiqiy (AI 07)\n\n---\n\n## 🎨 RANGLAR\n\n- 🔴 1 — Raqamli iqtisodiyot\n- 🔵 2 — Inson & jamiyat\n- 🟢 3 — Tabiat & qishloq\n- 🟠 4 — Infra & boshqaruv\n- 🟣 6 — Meta & markaz"
  jq --arg t "$text" '(.nodes[] | select(.id == "hub") | .text) = $t' "$CANVAS_PATH" > "$TMP/canvas.new"
  mv "$TMP/canvas.new" "$CANVAS_PATH"
  ok "Canvas markaziy statistikasi yangilandi"
}

# =============================================================================
# NATIJALARNI KO'RSATISH
# =============================================================================

print_summary() {
  local pct
  pct=$(( cat_notes == 0 ? 0 : ready_notes * 100 / cat_notes ))

  log ""
  log "${C_BLD}══════════════════════════════════════════════${C_RST}"
  log "${C_BLD}  📊 ECOSYSTEM VAULT MONITORI${C_RST}"
  log "${C_BLD}══════════════════════════════════════════════${C_RST}"
  log "  Vault: ${VAULT}"
  log "  Sana:  $(date '+%Y-%m-%d %H:%M')"
  log ""
  log "📁 UMUMIY:"
  log "  • Notalar: ${total_notes}  (kategoriya: ${cat_notes}, meta: $((total_notes - cat_notes)))"
  log "  • Papkalar: ${n_folders} | So'zlar: ${total_words} | Ichki linklar: ${total_links}"
  log ""
  log "🗂️ PAPKALAR:"
  sort -rn "$TMP/folders.txt" | while read -r c n; do
    printf '  • %-22s %s\n' "$n" "$c"
  done
  log ""
  log "🔗 LINKLAR:"
  if [ "$n_broken" = "0" ]; then
    ok "Barcha ichki linklar to'g'ri"
  else
    err "${n_broken} ta buzilgan link:"
    while IFS= read -r line; do log "     $line"; done < "$TMP/broken.lst"
  fi
  log ""
  log "🔤 KIRILL SARLAVHALAR:"
  if [ "$n_cyr" = "0" ]; then
    ok "Hammasi Lotin yozuvida"
  else
    warn "${n_cyr} ta sarlavhada Kirill harflar — '--fix' bilan tuzatiladi"
    [ "$VERBOSE" = "1" ] && while IFS= read -r line; do log "     $line"; done < "$TMP/cyr.lst"
  fi
  log ""
  log "📝 STRUKTURA:"
  [ "$n_nofm" = "0" ] && ok "Frontmatter: barchasi joyida" || warn "Frontmatter yo'q: ${n_nofm}"
  [ "$n_nosec" = "0" ] && ok "Bo'limlar: barchasi joyida" || warn "Bo'lim muammolari: ${n_nosec}"
  log ""
  if [ "$n_broken" = "0" ] && [ "$n_cyr" = "0" ] && [ "$n_nosec" = "0" ] && [ "$n_nofm" = "0" ]; then
    ok "XULOSA: Vault toza (${ready_notes}/${cat_notes} tayyor, ${pct}%)"
    log ""
    return 0
  else
    err "XULOSA: ${n_broken} buzilgan link, ${n_cyr} Kirill, ${n_nosec} bo'lim, ${n_nofm} frontmatter"
    warn "Tayyor: ${ready_notes}/${cat_notes} (${pct}%)"
    log ""
    return 1
  fi
}

# =============================================================================
# ASOSIY
# =============================================================================

# --- Argumentlarni tahlil qilish ---
CHECK=1; DO_FIX=0; DO_REPORT=0; DO_JSON=0; DO_STATUS=0; DO_CANVAS=0
QUIET=0; VERBOSE=0; VAULT_ARG=""

while [ $# -gt 0 ]; do
  case "$1" in
    -c|--check)        CHECK=1 ;;
    -f|--fix)          DO_FIX=1 ;;
    -r|--report)       DO_REPORT=1 ;;
    -j|--json)         DO_JSON=1 ;;
    -s|--update-status) DO_STATUS=1 ;;
    --canvas)          DO_CANVAS=1 ;;
    -q|--quiet)        QUIET=1 ;;
    -v|--verbose)      VERBOSE=1 ;;
    -h|--help)         usage; exit 0 ;;
    -*)                die "Noma'lum parametr: $1" 2 ;;
    *)                 VAULT_ARG="$1" ;;
  esac
  shift
done

# --- Vault yo'lini aniqlash ---
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
if [ -n "$VAULT_ARG" ]; then
  VAULT="$(abspath "$VAULT_ARG")"
elif [ -d "$SCRIPT_DIR/.obsidian" ]; then
  VAULT="$SCRIPT_DIR"
elif [ -d "$(dirname -- "$SCRIPT_DIR")/.obsidian" ]; then
  VAULT="$(dirname -- "$SCRIPT_DIR")"
else
  VAULT="$SCRIPT_DIR"
fi

if [ ! -d "$VAULT" ]; then
  die "Vault topilmadi: $VAULT" 3
fi
if [ ! -d "$VAULT/.obsidian" ]; then
  warn "Diqqat: '$VAULT/.obsidian' topilmadi — bu Obsidian vault emasmi?"
fi

REPORT_PATH="$VAULT/$REPORT_REL"
JSON_PATH="$VAULT/$JSON_REL"
CHAT_PATH="$VAULT/$CHAT_REL"
CANVAS_PATH="$VAULT/$CANVAS_REL"

# --- Tayyorgarlik ---
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# Barcha nota nomlari (linklar shu ro'yxatga qarab tekshiriladi)
# .md — nomisiz; .canvas — kengaytmasi bilan ([[Ecosystem.canvas]] kabi)
find "$VAULT" -name '*.md' -printf '%f\n' | sed 's/\.md$//' | sort -u > "$TMP/names_md.txt"
find "$VAULT" -name '*.canvas' -printf '%f\n' >> "$TMP/names_md.txt"

# PCRE mavjudligini tekshirish
if printf 'Қ' | grep -qP '[\x{0400}-\x{04FF}]' 2>/dev/null; then
  HAS_PCRE=1
else
  HAS_PCRE=0
fi

# --- 1. TEKSHIRISH ---
run_checks

# --- 2. TUZATISH ---
if [ "$DO_FIX" = "1" ]; then
  : > "$TMP/fixed_cyr.lst"; : > "$TMP/fixed_redir.lst"
  fix_cyrillic_headers || true
  fix_redirects || true
  n_fixed_cyr=$(count_lines "$TMP/fixed_cyr.lst")
  n_fixed_redir=$(count_lines "$TMP/fixed_redir.lst")
  log ""
  ok "TUZATISH: ${n_fixed_cyr} faylda Kirill sarlavhalar lotinga o'tkazildi, ${n_fixed_redir} redirect qo'llandi"
  [ "$QUIET" = "0" ] && [ "$n_fixed_redir" -gt 0 ] && while IFS= read -r line; do log "     $line"; done < "$TMP/fixed_redir.lst"
  # Tuzatishdan keyin qayta tekshirish
  run_checks
fi

# --- 3. YANGILASH ---
if [ "$DO_STATUS" = "1" ]; then update_chat_status; fi
if [ "$DO_CANVAS" = "1" ]; then update_canvas; fi

# --- 4. HISOBOT ---
if [ "$DO_REPORT" = "1" ]; then write_report; ok "Hisobot yozildi: $REPORT_PATH"; fi
if [ "$DO_JSON" = "1" ]; then write_json;   ok "JSON yozildi: $JSON_PATH"; fi

# --- Natija ---
if [ "$QUIET" = "0" ]; then
  print_summary || true
else
  # Quiet: faqat muammolar
  [ "$n_broken" -gt 0 ] && while IFS= read -r line; do err "$line"; done < "$TMP/broken.lst"
  [ "$n_cyr" -gt 0 ] && warn "${n_cyr} ta Kirill sarlavha"
  [ "$n_nosec" -gt 0 ] && warn "${n_nosec} ta bo'lim muammosi"
  [ "$n_nofm" -gt 0 ] && warn "${n_nofm} ta frontmatter yo'q"
fi

# Chiqish kodi
if [ "$n_broken" = "0" ] && [ "$n_cyr" = "0" ] && [ "$n_nosec" = "0" ] && [ "$n_nofm" = "0" ]; then
  exit 0
fi
exit 1