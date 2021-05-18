# oh-my-zsh-lukerandall-extended

oh-my-zsh [lukerandall theme](https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/lukerandall.zsh-theme) which supports extended features

## Installing

```bash
(
    cd /tmp \
    && curl -LO https://raw.githubusercontent.com/mpyw/oh-my-zsh-lukerandall-extended/master/lukerandall-extended.zsh-theme \
    && mv lukerandall-extended.zsh-theme ~/.oh-my-zsh/themes/
)
perl -pi -e 's/^ZSH_THEME=\K.*$/"lukerandall-extended"/' ~/.zshrc
```

## Features

- Display remote-tracking git branches information.

## Screenshoots

<img width="740" alt="Screenshot" src="https://user-images.githubusercontent.com/1351893/118634031-11580980-b80d-11eb-8a1a-38cb4127cbc6.png">

