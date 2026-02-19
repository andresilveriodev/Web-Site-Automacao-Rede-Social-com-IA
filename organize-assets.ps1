# Script de organizacao: move JS, fontes e imagens para subpastas de assets/
# Executar na pasta do projeto. Usa $PSScriptRoot para evitar problema de encoding (Andre/Andre).
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$root = $PSScriptRoot
$assets = Join-Path $root "assets"

$jsDir = Join-Path $assets "js"
$fontsDir = Join-Path $assets "fonts"
$imagesDir = Join-Path $assets "images"

New-Item -ItemType Directory -Force -Path $jsDir, $fontsDir, $imagesDir | Out-Null

Copy-Item (Join-Path $assets "lucide_latest_2eebd0ebe8c2.js") -Destination $jsDir -Force
Copy-Item (Join-Path $assets "resource_3fa48481346f.js") -Destination $jsDir -Force
Copy-Item (Join-Path $assets "3y9H6as8bTXq_nANBjzKo3IeZx8z6u_6116525b0260.woff2") -Destination $fontsDir -Force
Copy-Item (Join-Path $assets "3y9H6as8bTXq_nANBjzKo3IeZx8z6u_9101bee3a1a2.woff2") -Destination $fontsDir -Force
Copy-Item (Join-Path $assets "3y9H6as8bTXq_nANBjzKo3IeZx8z6u_2064f7d0da5b.woff2") -Destination $fontsDir -Force
Copy-Item (Join-Path $assets "649a17f7-ce90-412e-bc8c-622795_e6837615b7ae.webp") -Destination $imagesDir -Force

Write-Host "Arquivos copiados: assets/js, assets/fonts, assets/images"
