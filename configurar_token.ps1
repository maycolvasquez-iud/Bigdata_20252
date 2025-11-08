# Script para configurar autenticación con GitHub usando Personal Access Token
# Ejecutar este script desde PowerShell

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Configuración de Token de GitHub" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Este script te ayudará a configurar tu Personal Access Token para GitHub." -ForegroundColor Yellow
Write-Host ""

Write-Host "PASO 1: Crear un Personal Access Token" -ForegroundColor Green
Write-Host "1. Ve a: https://github.com/settings/tokens" -ForegroundColor White
Write-Host "2. Haz clic en 'Generate new token' -> 'Generate new token (classic)'" -ForegroundColor White
Write-Host "3. Dale un nombre: Bigdata_20252_Actividad_1" -ForegroundColor White
Write-Host "4. Selecciona el scope 'repo' (marca la casilla)" -ForegroundColor White
Write-Host "5. Haz clic en 'Generate token'" -ForegroundColor White
Write-Host "6. COPIA el token (no podrás verlo de nuevo)" -ForegroundColor Red
Write-Host ""

$continuar = Read-Host "¿Ya tienes tu token copiado? (S/N)"

if ($continuar -ne "S" -and $continuar -ne "s") {
    Write-Host "Por favor, crea el token primero y luego ejecuta este script nuevamente." -ForegroundColor Yellow
    Write-Host "Presiona Enter para abrir GitHub en tu navegador..."
    Read-Host
    Start-Process "https://github.com/settings/tokens"
    exit
}

Write-Host ""
Write-Host "PASO 2: Configurar el token" -ForegroundColor Green
Write-Host ""

# Pedir el token de forma segura
$token = Read-Host "Pega tu Personal Access Token aquí" -AsSecureString
$tokenPlain = [Runtime.InteropServices.Marshal]::PtrToStringAuto(
    [Runtime.InteropServices.Marshal]::SecureStringToBSTR($token)
)

if ([string]::IsNullOrWhiteSpace($tokenPlain)) {
    Write-Host "Error: El token no puede estar vacío." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Configurando el remoto con el token..." -ForegroundColor Yellow

# Configurar la URL del remoto con el token
$remoteUrl = "https://${tokenPlain}@github.com/maycolvasquez-iud/Bigdata_20252.git"
git remote set-url origin $remoteUrl

Write-Host "✓ Remoto configurado exitosamente" -ForegroundColor Green
Write-Host ""

Write-Host "Intentando hacer push al repositorio..." -ForegroundColor Yellow
Write-Host ""

# Intentar hacer push
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "¡Éxito! El proyecto se ha subido a GitHub" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Puedes verificar en: https://github.com/maycolvasquez-iud/Bigdata_20252" -ForegroundColor Cyan
    Write-Host ""
    
    # Limpiar el token de la URL por seguridad (opcional)
    Write-Host "Nota: Por seguridad, se recomienda usar Git Credential Manager" -ForegroundColor Yellow
    Write-Host "en lugar de guardar el token en la URL." -ForegroundColor Yellow
    Write-Host ""
    $limpiar = Read-Host "¿Quieres limpiar el token de la URL y usar Credential Manager? (S/N)"
    
    if ($limpiar -eq "S" -or $limpiar -eq "s") {
        git remote set-url origin https://github.com/maycolvasquez-iud/Bigdata_20252.git
        Write-Host "✓ URL limpiada. Usa tu token cuando Git lo solicite." -ForegroundColor Green
    }
} else {
    Write-Host ""
    Write-Host "Error al hacer push. Verifica:" -ForegroundColor Red
    Write-Host "1. Que el token sea correcto" -ForegroundColor Red
    Write-Host "2. Que el token tenga permisos 'repo'" -ForegroundColor Red
    Write-Host "3. Que tengas acceso al repositorio" -ForegroundColor Red
    Write-Host ""
    Write-Host "Ver más ayuda en: GUIA_AUTENTICACION_GITHUB.md" -ForegroundColor Yellow
}

# Limpiar el token de la memoria
$tokenPlain = $null
$token = $null

