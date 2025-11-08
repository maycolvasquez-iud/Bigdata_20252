# Guía de Autenticación con GitHub

## Opción 1: Personal Access Token (Recomendado)

### Paso 1: Crear un Personal Access Token en GitHub

1. **Inicia sesión en GitHub** en tu navegador: https://github.com

2. **Ve a la configuración de tokens:**
   - Haz clic en tu foto de perfil (esquina superior derecha)
   - Selecciona **"Settings"** (Configuración)
   - En el menú lateral izquierdo, busca **"Developer settings"** (Configuración de desarrollador)
   - Haz clic en **"Personal access tokens"** → **"Tokens (classic)"**

3. **Genera un nuevo token:**
   - Haz clic en **"Generate new token"** → **"Generate new token (classic)"**
   - Dale un nombre descriptivo: `Bigdata_20252_Actividad_1`
   - Selecciona la expiración (recomendado: 90 días o "No expiration" para proyectos personales)
   - **Selecciona los siguientes permisos (scopes):**
     - ✅ `repo` (acceso completo a repositorios privados)
     - ✅ `workflow` (opcional, si usas GitHub Actions)

4. **Genera y copia el token:**
   - Haz clic en **"Generate token"** al final de la página
   - ⚠️ **IMPORTANTE:** Copia el token inmediatamente. **No podrás verlo nuevamente** después de cerrar esta página.
   - Guárdalo en un lugar seguro (por ejemplo, un gestor de contraseñas)

### Paso 2: Usar el Token para Autenticación

#### Método A: Usar el token directamente en la URL (Temporal)

```powershell
git remote set-url origin https://TU_TOKEN@github.com/maycolvasquez-iud/Bigdata_20252.git
git push -u origin main
```

Reemplaza `TU_TOKEN` con el token que copiaste.

#### Método B: Configurar Git Credential Manager (Recomendado)

1. **Cuando Git pida credenciales:**
   - Usuario: `maycolvasquez-iud`
   - Contraseña: **Pega tu Personal Access Token** (NO uses tu contraseña de GitHub)

2. **Configurar Git para guardar las credenciales:**
   ```powershell
   git config --global credential.helper manager-core
   ```

3. **Intentar el push nuevamente:**
   ```powershell
   git push -u origin main
   ```

### Paso 3: Verificar que el Push fue Exitoso

```powershell
git log --oneline
git branch -vv
```

Luego verifica en tu navegador: https://github.com/maycolvasquez-iud/Bigdata_20252

---

## Opción 2: GitHub CLI (Alternativa)

### Instalar GitHub CLI

1. Descarga e instala GitHub CLI desde: https://cli.github.com/
2. Abre PowerShell y ejecuta:
   ```powershell
   gh auth login
   ```
3. Sigue las instrucciones en pantalla para autenticarte.

### Usar GitHub CLI para Push

```powershell
gh repo sync
```

---

## Opción 3: GitHub Desktop (Más Fácil)

### Instalar y Usar GitHub Desktop

1. **Descarga GitHub Desktop:**
   - Ve a: https://desktop.github.com/
   - Descarga e instala la aplicación

2. **Configurar GitHub Desktop:**
   - Abre GitHub Desktop
   - Inicia sesión con tu cuenta de GitHub
   - Selecciona **"File"** → **"Add Local Repository"**
   - Navega a la carpeta: `G:\Mi unidad\IUDIGITAL\Ingeniería de software y datos\Semestre 1\Bloque 2\Big Data\Actividad_1`
   - Selecciona la carpeta y haz clic en **"Add repository"**

3. **Publicar el repositorio:**
   - En GitHub Desktop, verás todos tus archivos
   - Haz clic en **"Publish repository"** (botón azul en la parte inferior)
   - Asegúrate de que el nombre sea: `Bigdata_20252`
   - Selecciona **"Keep this code private"** si lo deseas
   - Haz clic en **"Publish repository"**

---

## Solución de Problemas

### Error: "remote: Support for password authentication was removed"

**Solución:** Debes usar un Personal Access Token en lugar de tu contraseña.

### Error: "fatal: Authentication failed"

**Solución:** 
1. Verifica que el token tenga los permisos correctos (`repo`)
2. Asegúrate de copiar el token completo (sin espacios)
3. Intenta generar un nuevo token

### Error: "fatal: could not read Username"

**Solución:**
```powershell
git config --global credential.helper manager-core
git push -u origin main
```

### Limpiar credenciales guardadas (si hay problemas)

```powershell
git credential-manager-core erase
```

Luego intenta el push nuevamente.

---

## Comandos Útiles

### Verificar configuración actual
```powershell
git remote -v
git config --list
```

### Cambiar la URL del remoto
```powershell
git remote set-url origin https://github.com/maycolvasquez-iud/Bigdata_20252.git
```

### Verificar estado del repositorio
```powershell
git status
git log --oneline
```

---

## Notas de Seguridad

- ⚠️ **Nunca compartas tu Personal Access Token**
- ⚠️ **No subas tokens a repositorios públicos**
- ⚠️ **Si accidentalmente compartes un token, revócalo inmediatamente en GitHub**
- ✅ Usa tokens con expiración para mayor seguridad
- ✅ Usa permisos mínimos necesarios para el token

---

## Recursos Adicionales

- [Documentación de GitHub sobre Personal Access Tokens](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
- [Git Credential Manager](https://github.com/GitCredentialManager/git-credential-manager)
- [GitHub CLI Documentation](https://cli.github.com/manual/)

