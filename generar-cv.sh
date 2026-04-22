#!/bin/bash

PORTFOLIO="/Users/Mendii/Desktop/proyectos/portfolio"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
SERVER_URL="http://localhost:63157"

echo "→ Generando CV en español..."
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PORTFOLIO/cv-esp-inigo-mendizabal.pdf" \
  --virtual-time-budget=5000 \
  "$SERVER_URL/cv-print.html" 2>/dev/null
echo "  ✓ cv-esp-inigo-mendizabal.pdf"

echo "→ Pre-renderizando versión en inglés..."
python3 << 'PYEOF'
import re

PORTFOLIO = "/Users/Mendii/Desktop/proyectos/portfolio"

with open(f'{PORTFOLIO}/cv-print.html', 'r', encoding='utf-8') as f:
    html = f.read()

# Force lang=en by changing the JS default
html = html.replace(
    "let lang = urlLang || localStorage.getItem('lang') || 'es';",
    "let lang = 'en';"
)
html = html.replace('<html lang="es"', '<html lang="en"')

with open(f'{PORTFOLIO}/cv-print-en.html', 'w', encoding='utf-8') as f:
    f.write(html)
PYEOF
echo "  ✓ cv-print-en.html"

echo "→ Generando CV en inglés..."
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PORTFOLIO/cv-eng-inigo-mendizabal.pdf" \
  --virtual-time-budget=5000 \
  "$SERVER_URL/cv-print-en.html" 2>/dev/null
echo "  ✓ cv-eng-inigo-mendizabal.pdf"

rm -f "$PORTFOLIO/cv-print-en.html"

echo ""
echo "Listo. Ambos PDFs actualizados."
