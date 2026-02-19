# Luminous — Automação em Redes Sociais com IA

Landing page estática em português (PT-BR) para o produto Luminous: automação de redes sociais com IA.

## Estrutura do projeto

```
/
├── index.html          # Página principal
├── favicon.svg         # Ícone do site
├── 404.html            # Página de erro (deploy)
├── .gitattributes      # UTF-8 para texto (encoding correto, ex.: André)
├── assets/
│   ├── css/            # Folhas de estilo (inter.css, bricolage.css)
│   ├── js/             # Scripts: lucide.js, tailwind.js
│   ├── fonts/          # Fontes Bricolage: bricolage-vn.woff2, bricolage-latinext.woff2, bricolage-latin.woff2
│   └── *.webp          # Imagens (raiz de assets/)
└── templates/
    └── design-system.html   # Design system (uso interno)
```

### Encoding (UTF-8 e acentos)

O projeto usa **UTF-8** em todos os arquivos de texto. O `.gitattributes` garante que caracteres como **André** (e outros acentos) sejam versionados corretamente. No PowerShell, se o caminho da pasta tiver acento (ex.: `André`), execute scripts a partir da pasta do projeto: `.\organize-assets.ps1` ou `.\rename-assets.ps1` (usam `$PSScriptRoot` para evitar erro de encoding). O `rename-assets.ps1` deixa os arquivos com nomes curtos: **js** `lucide.js`, `tailwind.js`; **fonts** `bricolage-vn.woff2`, `bricolage-latinext.woff2`, `bricolage-latin.woff2`.

## Deploy

O projeto é estático. Basta publicar a pasta raiz em qualquer hospedagem de arquivos estáticos:

- **GitHub Pages**: branch `main`, pasta `/` (root)
- **Netlify / Vercel**: apontar o build para a raiz do projeto (sem build step)
- **Qualquer servidor**: copiar os arquivos para o diretório público

Não é necessário `npm install` nem passo de build.

## Desenvolvimento local

Abra o `index.html` no navegador ou use um servidor local:

```bash
npx serve .
# ou
python -m http.server 8000
```

## Tecnologias

- HTML5, CSS (Tailwind-style), JavaScript
- Fontes: Inter (Google Fonts), Bricolage Grotesque (local)
- Ícones: Lucide

## Licença

Uso conforme definido pelo autor do projeto.
