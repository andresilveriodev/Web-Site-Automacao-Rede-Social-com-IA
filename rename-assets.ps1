# Renomeia arquivos em assets/js e assets/fonts para nomes curtos e legiveis.
# Executar na pasta do projeto (ex.: .\rename-assets.ps1)
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$root = $PSScriptRoot
$assets = Join-Path $root "assets"
$jsDir = Join-Path $assets "js"
$fontsDir = Join-Path $assets "fonts"

# JS: renomear para nomes curtos
$lucideOld = Join-Path $jsDir "lucide_latest_2eebd0ebe8c2.js"
$lucideNew = Join-Path $jsDir "lucide.js"
if (Test-Path $lucideOld) {
    Rename-Item $lucideOld $lucideNew -Force
    Write-Host "OK: lucide.js"
}

$tailwindOld = Join-Path $jsDir "resource_3fa48481346f.js"
$tailwindNew = Join-Path $jsDir "tailwind.js"
if (Test-Path $tailwindOld) {
    Rename-Item $tailwindOld $tailwindNew -Force
    Write-Host "OK: tailwind.js"
}

# Fontes: criar pasta e copiar com nomes curtos
New-Item -ItemType Directory -Force -Path $fontsDir | Out-Null
$fontMap = @{
    "3y9H6as8bTXq_nANBjzKo3IeZx8z6u_6116525b0260.woff2" = "bricolage-vn.woff2"
    "3y9H6as8bTXq_nANBjzKo3IeZx8z6u_9101bee3a1a2.woff2" = "bricolage-latinext.woff2"
    "3y9H6as8bTXq_nANBjzKo3IeZx8z6u_2064f7d0da5b.woff2" = "bricolage-latin.woff2"
}
foreach ($old in $fontMap.Keys) {
    $src = Join-Path $assets $old
    $dest = Join-Path $fontsDir $fontMap[$old]
    if (Test-Path $src) {
        Copy-Item $src $dest -Force
        Write-Host "OK: $($fontMap[$old])"
    }
}
Write-Host "Concluido. assets/js e assets/fonts com nomes curtos."
