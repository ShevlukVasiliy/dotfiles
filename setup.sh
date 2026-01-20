#!/bin/bash

echo "🚀 Погнали! Установка начнется через 3 секунды..."
sleep 3

# 1. Homebrew
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# 2. Установка всего из Brewfile
brew bundle --file=./Brewfile

# 3. Настройка Zsh (Oh My Zsh + P10K)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# 4. AI CLI Tools (Aider & Gemini)
pipx install aider-chat

# 5. Yandex Cloud CLI (по твоей доке)
curl -sSL https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash -s -- -n

# Чистим .zshrc от дублей и добавляем настройки YC
sed -i '' '/yandex-cloud/d' ~/.zshrc
echo 'source "$HOME/yandex-cloud/path.bash.inc"' >> ~/.zshrc
echo 'source "$HOME/yandex-cloud/completion.zsh.inc"' >> ~/.zshrc

source ~/.zshrc
