# Eu sou o melhor — projeto APK

Eu sou o melhor: Agenda  Nome: Eu sou o melhor Criador: Manuel Sadi Kufika Versão: 1.0 (APK de depuração, para uso pessoal). O lema da app é: “Eu sou o melhor. Se não pensarmos assim, não temos ambição.”

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
    npx cap sync android
    cd android && ./gradlew assembleDebug
O APK fica em `android/app/build/outputs/apk/debug/app-debug.apk`.

Notas: é um APK de depuração (não serve para a Play Store). Os dados ficam guardados no telemóvel.
