# Changelog — 22 abril 2026

## Portfolio (index.html)

### Bugs corregidos
- **Cards de proyectos invisibles en móvil** — El contenido (título + descripción) tenía `opacity: 0` y solo se mostraba en `:hover`. En pantallas táctiles nunca era visible. Corregido con `@media (hover: hover)` para aplicar el efecto hover solo en dispositivos con ratón.
- **Placeholders del formulario no cambiaban de idioma** — `updateLang()` solo procesaba `[data-i18n]` pero los inputs usaban `data-i18n-placeholder`. Añadido soporte para `data-i18n-placeholder`, `data-i18n-title` y `data-i18n-aria`.
- **Mensajes de éxito/error del formulario persistían** — Una vez mostrados no desaparecían. Añadido auto-hide a los 5 segundos.

### Accesibilidad
- **Skip-to-content link** añadido (visible solo con Tab).
- **Alt de la foto de perfil** cambiado de `"foto portfolio"` a `"Iñigo Mendizábal"`.
- **Títulos de botones** de tema e idioma ahora se traducen con el idioma activo.
- **Menú móvil** ahora tiene `aria-expanded` que cambia al abrir/cerrar.

### Usabilidad
- **Links muertos del footer** ("Privacidad" y "Términos") convertidos de `<a href="#">` a `<span>` no clicable para evitar confusión.

---

## CV web (cv.html)

### Bugs corregidos
- **Formulario de contacto abría la app de mail** — Usaba `mailto:` en vez de Formspree. Reemplazado por envío async a Formspree (`xojynzvr`) con mensajes de éxito/error y auto-hide a 5s.
- **CTA "Contactar" del header abría el mail** — Cambiado de `href="mailto:..."` a `href="#contact"` para hacer scroll al formulario.
- **Botón "Descargar CV" abría diálogo de imprimir** — Cambiado de `window.print()` a descarga directa del PDF pre-generado, tanto en el header como en el footer.

### Mejoras
- **Descarga de CV según idioma** — Los botones de descarga ahora enlazan al PDF del idioma activo (`cv-esp-inigo-mendizabal.pdf` o `cv-eng-inigo-mendizabal.pdf`), cambiando dinámicamente con el toggle ES/EN.

---

## CV para PDF (cv-print.html) — Nuevo enfoque

### Arquitectura
- **Archivo independiente** — `cv-print.html` es ahora un producto independiente de `cv.html`. Tiene su propia estructura, contenido y estilos optimizados para impresión A4.
- **Bilingüe** — Todo el contenido (bio, experiencia, educación, skills, hobbies) tiene traducciones ES/EN en un objeto JS. Detecta el idioma del portfolio via `localStorage` o acepta `?lang=en` por URL.

### Interfaz
- **Barra de descarga** — Barra fija negra en la parte superior con botón "Descargar PDF" y toggle ES/EN. El botón descarga el PDF del idioma activo. La barra se oculta en `@media print` para no interferir con la generación de PDFs.
- **Vista tipo documento** — En pantalla se muestra como una hoja A4 centrada con sombra y fondo gris, con márgenes internos apropiados.

### Estructura del CV
- Perfil: foto + nombre + tagline + pills de contacto (LinkedIn, Portfolio, email)
- Bio: 3 párrafos con título de sección
- Experiencia: 8 entradas con rol, empresa, fechas y bullets con sangría colgante
- Educación: 7 entradas
- Skills: pills (Figma, Design Systems, Prototyping, etc.)
- Hobbies

### Estilos
- Tipografía: Plus Jakarta Sans, 9pt base
- Jerarquía: sección label 8pt uppercase → rol 10pt bold → bullets 9pt
- Separadores `<hr>` de 1pt visibles entre secciones
- Bullets con marcador `·` y sangría colgante (padding-left: 14pt + 10pt)

---

## Script de generación (generar-cv.sh)

- **Simplificado** — Ya no usa Python para pre-renderizar la versión inglesa de cv.html.
- **Nuevo flujo** — Genera el PDF en español directamente desde `cv-print.html`. Para el inglés, crea un HTML temporal (`cv-print-en.html`) con `lang='en'` forzado en JS, genera el PDF, y borra el temporal.
- **Archivos renombrados** — `cv-esp-inigo-mendizabal.pdf` y `cv-eng-inigo-mendizabal.pdf`.
