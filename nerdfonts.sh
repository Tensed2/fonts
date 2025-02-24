#!/bin/bash
mkdir -p ~/.local/share/fonts

cd /tmp
fonts=( 
"FiraCode"
"UbuntuMono"
"Hack"
"JetBrainsMono"
"RobotoMono"
#"Go-Mono"   
#"Iosevka"  
#"Mononoki" 
#"SourceCodePro"
#"CascadiaCode"
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/$font.zip
	unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
fc-cache
