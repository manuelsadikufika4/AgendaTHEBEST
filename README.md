# Eu sou o melhor — projeto APK

Eu sou o melhor: Agenda  Nome: Eu sou o melhor Criador: Manuel Sadi Kufika Versão: 1.0 (APK de depuração, para uso pessoal).

O lema da app é: “Eu sou o melhor. Se não pensarmos assim, não temos ambição.”

## Opção A: sem instalar nada (GitHub)
1. Cria uma conta gratuita em github.com e um repositório novo.
2. Envia todos os ficheiros desta pasta (incluindo a pasta `.github`).
3. Vai ao separador **Actions** > **Gerar APK** > **Run workflow**.
4. Quando terminar (3-6 min), abre a execução e descarrega **agenda-melhor-apk** (contém `app-debug.apk`).
5. Passa o APK para o telemóvel e instala (permite "instalar apps desconhecidas" quando o Android pedir).

## Opção B: no computador
Precisas de Node 18+, Java 17 e Android SDK (Android Studio).
    npm install
    npx cap add android
    bash patch-manifest.sh
    npx cap sync android
    cd android && ./gradlew assembleDebug
O APK fica em `android/app/build/outputs/apk/debug/app-debug.apk`.

Notas: é um APK de depuração (não serve para a Play Store). Os dados ficam guardados no telemóvel.

## Alarmes e notificações (versão 1.1)
- A aba **Alarmes** cria alarmes por hora e dias da semana. Os lembretes de 10 min antes de cada bloco também são agendados.
- Tudo toca com a app fechada. Na primeira vez, aceita a permissão de notificações e a de alarmes exatos.
- Para não falharem: Definições > Apps > Eu sou o melhor > Bateria > **Sem restrições**.
- O som é o de notificação do Android (alta prioridade, com vibração), não um toque contínuo de despertador.
- Alarmes e lembretes são reagendados quando abres a app e sobrevivem ao reinício do telemóvel.

## Música nos alarmes (versão 1.2)
- Ao criar um alarme, escolhe uma música do telemóvel (campo "Música do telemóvel"). Fica guardada na app.
- Com a app aberta, a música toca em repetição até carregares em **Parar**.
- Com a app fechada, o alarme avisa com o som de notificação. Toca na notificação: a app abre e a música começa. Se o Android bloquear o arranque automático, aparece o botão **Tocar música**.
- O botão ▶ de cada alarme serve para o testar.