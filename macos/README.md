## Setup

### Downloading Tools

- [GoTiengViet](https://www.trankynam.com/gotv/)
- [1password](https://1password.com/downloads/mac/)
- [VSCode](https://code.visualstudio.com/)
- [Go](https://go.dev/doc/install)
- [Terragrunt](https://github.com/gruntwork-io/terragrunt/releases)
- [GCloud cli](https://cloud.google.com/sdk/docs/install#mac)

### Install HomeBrew
```
sudo xcode-select --install
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install iterm2
brew install git
brew install zoxide
brew install fzf
brew install kubectl
brew install tfenv

# Install python ansible
python3 -m pip install --user ansible

# Install helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Completion
mkdir my_completions
kubectl completion zsh 2> /dev/null >| $HOME/my_completions/_kubectl
cp $HOME/google-cloud-sdk/completion.zsh.inc $HOME/my_completions/_gcloud
```
