# Como contribuir

Obrigado por quereres ajudar o **Eu Sou o Melhor — Agenda Android**! 🚀
Toda a ajuda é bem-vinda: correções de bugs, melhorias nos alarmes e notificações, design, testes em diferentes telemóveis e novas ideias.

## Formas de contribuir

- **Reportar bugs**, sobretudo alarmes que não disparam ou notificações que falham
- **Testar em diferentes marcas e versões de Android** (Xiaomi, Samsung, Tecno, Infinix, etc. gerem a bateria de formas diferentes)
- **Melhorar o código** da agenda, dos alarmes, dos lembretes e da reprodução de música
- **Melhorar o design** e a usabilidade da interface
- **Corrigir ou melhorar a documentação** (README, instruções de compilação)
- **Sugerir funcionalidades novas** através das [Issues](../../issues)

## Primeiros passos

1. Faz **Fork** do repositório.
2. Clona o teu fork:
   ```bash
   git clone https://github.com/SEU_USUARIO/AgendaTHEBEST.git
   cd AgendaTHEBEST
   ```
3. Cria uma branch para a tua alteração:
   ```bash
   git checkout -b tipo/descricao-curta
   ```
   Exemplos: `fix/alarme-reinicio`, `feat/repetir-alarme`, `docs/readme`.

## Compilar e testar

Podes compilar o APK de duas formas.

**Opção A: GitHub Actions (sem instalar nada)**

1. No teu fork, abre o separador **Actions** > **Gerar APK** > **Run workflow**.
2. Espera 3 a 6 minutos e descarrega o artefacto **`agenda-melhor-apk`**.
3. Instala o `app-debug.apk` no telemóvel.

**Opção B: compilação local**

Pré-requisitos: **Node.js 18+**, **JDK 17** e **Android SDK** (Android Studio).

```bash
npm install
npx cap add android
bash patch-manifest.sh
npx cap sync android
cd android && ./gradlew assembleDebug
```

O APK fica em `android/app/build/outputs/apk/debug/app-debug.apk`.

> Para os alarmes funcionarem bem nos testes, define a bateria da app como **Sem restrições** e concede as permissões de **Notificações** e **Alarmes Exatos**.

## Estrutura do projeto

```
AgendaTHEBEST/
├── .github/workflows/     # Compilação automática do APK
├── www/                   # Código da aplicação (HTML, CSS, JS)
├── capacitor.config.json  # Configuração do Capacitor
├── package.json
├── patch-manifest.sh      # Correções aplicadas ao AndroidManifest
└── README.md
```

## Antes de enviar o Pull Request

- [ ] Testei no telemóvel (ou emulador) e funciona
- [ ] Os alarmes disparam com a app **aberta** e **fechada**
- [ ] O lembrete de **10 minutos antes** continua a funcionar
- [ ] Os alarmes são reagendados depois de **reiniciar** o telemóvel
- [ ] A música dos alarmes toca e para corretamente
- [ ] Não adicionei dados pessoais, chaves ou ficheiros de áudio ao repositório
- [ ] Atualizei o README, se a alteração mudar o uso da app

## Padrões

- Segue o estilo do código existente (indentação, nomes e comentários).
- Os dados ficam **apenas no dispositivo**. Não adiciones envio de dados para servidores nem rastreamento.
- Mantém cada PR **pequeno e focado** numa só coisa.
- Se mexeres em permissões ou no `patch-manifest.sh`, explica o motivo no PR.

## Mensagens de commit

Usa mensagens curtas e claras, no imperativo:

```
Corrige alarme que não dispara após reinício
Adiciona botão de repetir alarme
Atualiza instruções de bateria no README
```

## Enviar um Pull Request

1. Faz push da tua branch para o teu fork.
2. Abre um **Pull Request** para a branch `main`.
3. Descreve o que mudou e porquê. Para alterações visuais, junta uma captura de ecrã.
4. Espera pela revisão. Podem ser pedidos ajustes.

## Reportar bugs

Abre uma [Issue](../../issues) e inclui:

- O que aconteceu e o que esperavas que acontecesse
- Passos para reproduzir
- Marca, modelo e versão do Android
- Se a bateria da app está em **Sem restrições**
- Capturas de ecrã, se ajudarem

## Código de conduta

Sê respeitoso e acolhedor. Trata todos com cortesia, dá feedback construtivo e aceita-o com abertura. Não toleramos assédio, discriminação nem linguagem ofensiva.

## Licença

Este repositório ainda não tem um ficheiro de licença. Antes de aceitar contribuições externas, o autor deve adicionar uma (por exemplo, MIT) para deixar claro como o código pode ser usado e distribuído.

---

Feito por Manuel Sadi Kufika · Obrigado por contribuires!
