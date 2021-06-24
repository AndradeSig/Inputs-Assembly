# Assembly
ASM
####
📀 Inputs em Assembly 📀
-------
***COMPILAÇÃO***
<br/>
Para compilar o programa, você deverá instalar o **NASM**
<br/>
Para instalar é bem simples. Se você estiver usando alguma Distro Linux baseada em Debian, é só fazer:
<br/>
```
sudo apt-get update
sudo apt-get install -y nasm
```
####
Quando você fizer isso, o **NASM** já vai estar instalado!
####
Agora, sem muita enrrolação, vamos compilar o código!
<br/>
Para compilar, abra o projeto no Terminal, e digite:
<br/>
```
nasm -f elf64 input.asm
```
####
Após isso, coloque:
<br/>
```
ld -s -e start -o input input.o
```
####
Pronto! Se não ter dado nenhum erro neste processo, você já poderá abrir o arquivo compilado
<br/>
```
./input
```
####
Agora, no Terminal, aparecerá para você digitar um nome. Basta digitar o nome, que aparecerá a saída com o nome digitado!
