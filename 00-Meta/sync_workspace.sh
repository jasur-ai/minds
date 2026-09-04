#!/usr/bin/env bash
# ============================================================================
# MINDS — Workspace <-> GitHub sinxronlash skripti
# Lokal AI (AI 01) va AI 07 uchun: HAR QADAM oxirida ishga tushiring.
#
# Ish oqimi DOIM git orqali boradi:
#   1) pull (repo'ni yangilash — bot/AI 07 topshiriqlari ko'rinadi)
#   2) ish bajariladi (fayllar o'zgartiriladi)
#   3) commit + push (natija bot/dashboard'da ko'rinadi)
#
# Ishlatish:
#   ./00-Meta/sync_workspace.sh                          # faqat pull + holat
#   ./00-Meta/sync_workspace.sh "AI 01: qadam 42 — xulosa"  # pull + commit + push
# ============================================================================
set -u

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR" || { echo "❌ Repo topilmadi: $REPO_DIR"; exit 1; }

MSG="${1:-}"
echo "==> Repo: $REPO_DIR  (branch: $(git branch --show-current 2>/dev/null || echo '?'))"

# 1) mahalliy holat
if [ -n "$(git status --short)" ]; then
  echo "==> O'zgarishlar bor:"
  git status --short | head -20
else
  echo "==> Ishchi nusxa toza."
fi

# 2) pull (topshiriqlar / boshqa AI o'zgarishlarini olish)
if git pull --rebase --autostash 2>/dev/null || git pull --rebase 2>/dev/null; then
  echo "==> ✅ Pull OK — repo yangilandi"
else
  echo "❌ Pull muvaffaqiyatsiz (konflikt bo'lishi mumkin). Qo'lda hal qiling."
  exit 1
fi

# 3) commit (MSG berilgan bo'lsa)
if [ -n "$MSG" ]; then
  git add -A
  if git diff --cached --quiet; then
    echo "==> Commit uchun o'zgarish yo'q (allaqachon push qilingan)."
  else
    git commit -m "$MSG"
    echo "==> ✅ Commit OK: $MSG"
  fi
  # 4) push
  if git push; then
    echo "==> ✅ Push OK — natija endi bot/dashboard'da ko'rinadi"
  else
    echo "❌ Push muvaffaqiyatsiz (auth/tarmoq). Keyin qayta ishga tushiring."
    exit 1
  fi
else
  echo "==> Skript faqat pull qildi. Commit+push uchun izoh bilan chaqiring:"
  echo "    ./00-Meta/sync_workspace.sh \"AI 01: nima qilindi\""
fi
echo "==> Tayyor ✅"
