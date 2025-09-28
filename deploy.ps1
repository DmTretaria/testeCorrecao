# SCRIPT DE AUTOMATIZAÇÃO FIREBASE HOSTING PARA WINDOWS POWERSHELL

# Defina a pasta do seu site (o diretório atual onde este script está)
$ProjectPath = $PSScriptRoot

# --- FUNÇÕES ---

function CheckAndInstallNode() {
    Write-Host "Verificando instalação do Node.js..."
    try {
        # Tenta executar o node para ver se está instalado
        $nodeVersion = node -v
        Write-Host "Node.js encontrado: $nodeVersion" -ForegroundColor Green
        return $true
    } catch {
        Write-Host "Node.js não encontrado. Por favor, baixe e instale a versão LTS em https://nodejs.org/" -ForegroundColor Yellow
        Write-Host "Após a instalação, tente rodar este script novamente." -ForegroundColor Yellow
        return $false
    }
}

function InstallFirebaseCLI() {
    Write-Host "`nVerificando instalação do Firebase CLI..."
    try {
        # Tenta executar o firebase para ver se está instalado
        firebase -V | Out-Null
        Write-Host "Firebase CLI já está instalado." -ForegroundColor Green
    } catch {
        Write-Host "Instalando Firebase CLI globalmente..." -ForegroundColor Cyan
        # O 'npm install' exige permissões elevadas, então tentamos executar com elevação.
        npm install -g firebase-tools
        if ($LASTEXITCODE -ne 0) {
            Write-Host "`nERRO: A instalação do Firebase Tools falhou. Tente rodar o PowerShell como ADMINISTRADOR." -ForegroundColor Red
            exit 1
        }
        Write-Host "Firebase CLI instalado com sucesso!" -ForegroundColor Green
    }
}

function InitialSetup() {
    Write-Host "`n--- CONFIGURAÇÃO INICIAL (PASSO A PASSO MANUAL) ---" -ForegroundColor Yellow
    Write-Host "1. Fazer LOGIN (firebase login)"
    # O comando 'firebase login' abrirá o navegador para a autenticação, o que exige interação.
    firebase login
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Login falhou. Por favor, tente novamente." -ForegroundColor Red
        exit 1
    }
    Write-Host "Login no Firebase realizado com sucesso!" -ForegroundColor Green

    Write-Host "`n2. INICIALIZAR o Projeto (firebase init hosting)"
    Write-Host "A CLI irá perguntar: 1) Qual projeto usar; 2) Qual pasta é pública (geralmente '.' ou 'public')."
    Write-Host "Configure e selecione a pasta correta manualmente." -ForegroundColor Cyan

    # O comando 'firebase init' exige interação para escolher o projeto e a pasta pública.
    firebase init hosting
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Inicialização do Firebase falhou. Verifique se o projeto existe." -ForegroundColor Red
        exit 1
    }
    Write-Host "Configuração do Firebase concluída. Os arquivos 'firebase.json' e '.firebaserc' foram criados." -ForegroundColor Green
}

function DeployWebsite() {
    Write-Host "`n--- INICIANDO DEPLOY ---" -ForegroundColor Cyan

    # Verifica se os arquivos de configuração existem antes de tentar o deploy
    if (-not (Test-Path "$ProjectPath\firebase.json")) {
        Write-Host "`nERRO: Arquivo 'firebase.json' não encontrado. Execute a CONFIGURAÇÃO INICIAL (Etapa 3) primeiro!" -ForegroundColor Red
        exit 1
    }

    Write-Host "Publicando arquivos no Firebase Hosting..."

    # Executa o comando de deploy.
    # O parâmetro --only hosting garante que apenas o site seja publicado.
    firebase deploy --only hosting

    if ($LASTEXITCODE -eq 0) {
        Write-Host "`n✅ DEPLOY CONCLUÍDO COM SUCESSO!" -ForegroundColor Green
        # Tenta mostrar o URL de hospedagem
        $hostingUrl = (firebase hosting:sites:list | Select-String "Site URL").Trim().Split()[-1]
        if ($hostingUrl) {
            Write-Host "Seu site está em: $hostingUrl" -ForegroundColor Green
        }
    } else {
        Write-Host "`n❌ ERRO NO DEPLOY. Verifique as mensagens de erro acima." -ForegroundColor Red
    }
}

# --- EXECUÇÃO PRINCIPAL ---

# 1. Checa a dependência do Node
if (-not (CheckAndInstallNode)) {
    exit 1
}

# 2. Instala/Verifica o Firebase CLI
InstallFirebaseCLI

# 3. Verifica se o projeto está inicializado
if (-not (Test-Path "$ProjectPath\firebase.json")) {
    InitialSetup
}

# 4. Faz o Deploy
DeployWebsite