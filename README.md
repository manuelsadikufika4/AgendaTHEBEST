# <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/rocket-takeoff-fill.svg" width="30" height="30" /> Eu Sou o Melhor — Agenda Android

[![Autor](https://img.shields.io/badge/Criador-Manuel%20Sadi%20Kufika-blue?style=for-the-badge&logo=person-fill)](https://github.com)
[![Versão](https://img.shields.io/badge/Vers%C3%A3o-1.3%20(APK%20Debug)-green?style=for-the-badge&logo=bootstrap)](https://github.com)
[![Plataforma](https://img.shields.io/badge/Plataforma-Android-3DDC84?style=for-the-badge&logo=android)](https://android.com)
[![Build](https://img.shields.io/badge/Build-GitHub%20Actions-2088FF?style=for-the-badge&logo=github-actions)](https://github.com)

> *"Eu sou o melhor. Se não pensarmos assim, não temos ambição."*
>
> — **Cristiano Ronaldo, 2015**

---

## <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/info-circle-fill.svg" width="22" height="22" /> Sobre o Projeto

O **Eu Sou o Melhor** é uma aplicação de agenda pessoal desenvolvida para Android, com foco em produtividade, gestão de tempo, agendamento de alarmes personalizados e suporte a músicas do dispositivo.

Este projeto foi concetualizado e mantido por **Manuel Sadi Kufika** como um APK de depuração otimizado para uso pessoal e de alta prioridade.

---

## <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/stars.svg" width="22" height="22" /> Funcionalidades Destacadas

### <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/alarm-fill.svg" width="18" height="18" /> Alarmes e Notificações (v1.1)

* **Agendamento Completo:** Criação de alarmes por hora e dias da semana.
* **Lembretes Antecipados:** Notificação automática **10 minutos antes** de cada bloco agendado.
* **Funcionamento em Segundo Plano:** Todos os alarmes e avisos disparam mesmo com a aplicação fechada.
* **Persistência:** Alarmes e lembretes são automaticamente reagendados ao abrir a aplicação e sobrevivem ao reinício do dispositivo Android.
* **Notificações de Alta Prioridade:** Som de notificação padrão do Android com vibração ativada.

### <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/music-note-beamed.svg" width="18" height="18" /> Música nos Alarmes (v1.2)

* **Músicas Pessoais:** Escolha de qualquer ficheiro de áudio do dispositivo para associar aos alarmes.
* **Reprodução Contínua:** Com a aplicação aberta, a música toca em *loop* até ser interrompida pelo botão **Parar**.
* **Modo Notificação Inteligente:** Se o ecrã estiver bloqueado ou a app fechada, a notificação avisa o utilizador. Ao tocar na notificação, a aplicação abre e inicia a música.
* **Botão de Teste (<img src="https://raw.githubusercontent.com/twbs/icons/main/icons/play-fill.svg" width="14" height="14" />):** Permite testar o som do alarme instantaneamente a qualquer momento.

---

## <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/tools.svg" width="22" height="22" /> Como Gerar o APK (`app-debug.apk`)

Podes compilar a aplicação utilizando uma das duas opções abaixo:

### <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/cloud-arrow-up-fill.svg" width="18" height="18" /> Opção A: Via GitHub Actions (Sem instalar nada no computador)

1. Cria uma conta em [github.com](https://github.com) e cria um novo repositório.
2. Envia todos os ficheiros do projeto (incluindo a pasta `.github`).
3. No GitHub, acede ao separador **Actions** > **Gerar APK** > **Run workflow**.
4. Aguarda a conclusão (aproximadamente 3 a 6 minutos).
5. Abre a execução concluída e descarrega o artefacto **`agenda-melhor-apk`** (contém o ficheiro `app-debug.apk`).
6. Transfere o APK para o telemóvel e instala (autoriza a opção *"Instalar aplicações de fontes desconhecidas"* se solicitado).

### <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/laptop-fill.svg" width="18" height="18" /> Opção B: Compilação Local no Computador

#### Pré-requisitos

* **Node.js**: v18+
* **Java**: JDK 17
* **Android SDK**: Android Studio configurado

#### Passos para compilação:

```bash
# 1. Instalar dependências
npm install

# 2. Adicionar a plataforma Android
npx cap add android

# 3. Aplicar correções de manifesto
bash patch-manifest.sh

# 4. Sincronizar o projeto
npx cap sync android

# 5. Compilar o APK de depuração
cd android && ./gradlew assembleDebug
```

<img src="https://raw.githubusercontent.com/twbs/icons/main/icons/geo-alt-fill.svg" width="16" height="16" /> O APK gerado estará disponível em:
`android/app/build/outputs/apk/debug/app-debug.apk`

---

## <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/gear-wide-connected.svg" width="22" height="22" /> Configurações Recomendadas no Android

Para garantir que os alarmes e notificações funcionem sem falhas em segundo plano:

1. Acede a **Definições** > **Aplicações** > **Eu sou o melhor**.
2. Acede à opção **Bateria**.
3. Seleciona a opção **Sem restrições** (Unrestricted).
4. Na primeira inicialização, concede as permissões de **Notificações** e **Alarmes Exatos**.

---

## <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/person-badge-fill.svg" width="22" height="22" /> Autor

**Manuel Sadi Kufika**  
*Criador e Desenvolvedor do Projeto*

> <img src="https://raw.githubusercontent.com/twbs/icons/main/icons/sticky-fill.svg" width="16" height="16" /> **Nota:** Esta é uma versão de depuração (*debug APK*) destinada a uso pessoal. Todos os dados permanecem guardados estritamente de forma local no dispositivo do utilizador.
