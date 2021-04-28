# oh-my-zsh-lukerandall-extended

oh-my-zsh lukerandall theme which supports extended features

## Installing

```bash
(
    cd /tmp \
    && curl -LO https://raw.githubusercontent.com/mpyw/oh-my-zsh-lukerandall-extended/master/lukerandall-extended.zsh-theme \
    && mv lukerandall-extended.zsh-theme ~/.oh-my-zsh/themes/
)
perl -pi -e 's/^ZSH_THEME=\K.*$/lukerandall-extended/' ~/.zshrc
```
