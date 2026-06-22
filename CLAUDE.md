# Portfolio — CLAUDE.md

## Qué es este proyecto
Portfolio personal de Mendi (inigomendizabal.com). Sitio estático HTML/CSS/JS con Tailwind CDN.

## Stack
- HTML, CSS, JavaScript vanilla
- Tailwind CSS (CDN)
- Sin framework, sin build step

## Design System

### Tipografía
- Títulos: Space Grotesk (400, 500, 600, 700) — clase `font-display`
- Cuerpo y UI: DM Sans (400, 500, 600)

### Color
- Acento principal: `#2DD4BF` (teal-400) / hover: `primary-dark`
- Surface light: `#F8FAFC` / dark: `#1E293B`
- Muted light: `#64748B` / dark: `#94A3B8`
- Border light: `#E2E8F0` / dark: `#334155`
- Dark mode activo por defecto

### Bordes
- `rounded-xl` — nav links, botones icono
- `rounded-2xl` — botones CTA
- `rounded-3xl`, `rounded-4xl` — cards

### Espaciado
- Contenedor: `max-w-6xl mx-auto px-4 sm:px-6 lg:px-8`
- Secciones: `py-24 lg:py-32`

### Animaciones
- `.reveal` + `.stagger-1` a `.stagger-5` — fade + slide up al entrar en viewport, delays de 0.1s a 0.5s
- `.btn-press` — scale down al hacer click
- `.focus-ring` — ring de foco accesible con opacidad
- `.project-card::before` — glow overlay en hover
- Acordeón: `max-height` animado con transition 0.3s
- `reduced-motion`: todas las animaciones se desactivan si el usuario lo tiene configurado

### Componentes
- Badge disponible: emerald con punto pulsante
- CTA primario: `bg-primary` + `btn-press` + `focus-ring`
- CTA secundario: `bg-card` + border + `btn-press` + `focus-ring`

## Internacionalización (i18n)
- Idiomas activos: ES (por defecto) y EN
- Sistema: objeto `i18n` en el propio HTML, sin librerías externas
- Para añadir un idioma nuevo: añadir bloque en el objeto `i18n` y actualizar el toggle de idioma en la nav
- Pendiente: valorar añadir un tercer idioma (pendiente de decidir cuál)

## Audiencia objetivo

- **A quién va dirigido:** empresas corporativas medianas y grandes (banca, tech, fintech, seguros, telco)
- **Perfil del lector:** recruiter senior, head of design, o hiring manager con criterio técnico
- **Qué buscan:** un diseñador que entienda el negocio, trabaje con equipos grandes y entregue resultados medibles
- **Lenguaje apropiado:** profesional, sin informalidades, sin jerga de startup. Directo y con evidencia.
- **Lo que les convence:** logros concretos y métricas, no procesos ni herramientas

## Copy y tono

### Posicionamiento
- Título: "Product Designer"
- Diferencial: investigación, datos e IA para sistemas complejos
- Voz: primera persona, activa, directa

### Tono
- Directo y sin fluff. Sin jerga de marketing ni exclamaciones.
- Profesional pero no corporativo. Como hablas, no como una agencia.
- Sin artificios. Si necesita adjetivo para sostenerse, el copy es débil.

### Palabras que NO usar
- Freelance
- Working globally / trabajando globalmente
- Crafting (en titulares)
- Builder (inflado)
- Combine / No handoff
- Auditoría UX y sistemas de diseño como única especialización

### Palabras que SÍ
- Investigación, datos, IA
- Estrategia de producto
- Sistemas complejos
- Guiar proyectos
- Experiencias digitales

## Case Studies — criterio de copy

### Lo que debe pesar
- Qué se consiguió, no cómo se hizo
- Contribuciones concretas: qué cambió gracias a ti
- Problemas reales resueltos, con contexto de negocio

### Lo que no debe dominar
- El proceso por el proceso (metodología sin resultado)
- Descripción de pasos sin impacto
- Pantallas sin decisión detrás

### Preguntas que debe responder cada case study
- ¿Cuál era el problema real, no el síntoma?
- ¿Qué decidí yo y por qué?
- ¿Qué cambió después de mi intervención?

## Convenciones

### Commits
- NUNCA hacer commit ni push sin que Mendi lo diga explícitamente. No preguntar si hacemos commit. Esperar a que él lo indique.

### Texto y copy
- No usar guiones dobles (—) en ningún texto. Usar coma, punto o reformular.
- El copy se trabaja en conversación hasta que Mendi diga que está cerrado. No aplicar cambios de texto sin consenso explícito.

### Flujo de trabajo
- Cuando se abre el proyecto sin contexto previo, leer primero el changelog más reciente en `/dev/proyectos/Documentos/portfolio/changelogs/` para saber qué está hecho y qué falta.

### Rol de Claude en este proyecto
- Aportar criterio de diseño de forma proactiva: si algo no funciona visualmente, si un elemento pierde peso o si hay una forma mejor de contarlo, decirlo sin esperar a que Mendi lo pregunte.
- El objetivo es hacer el mejor portfolio posible para que Mendi consiga trabajo. Trabajar juntos para conseguirlo, no para fiscalizar.
- Proponer alternativas mejores cuando algo se puede mejorar, basándose en principios de diseño, experiencia y lo que funciona para la audiencia objetivo.
- No limitarse a ejecutar cambios: aportar criterio y sugerir.
