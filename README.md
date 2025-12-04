# Hello World em Assembly (Linux)🐧

![Language](https://img.shields.io/badge/language-Assembly-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![OS](https://img.shields.io/badge/OS-Linux-orange) 

<pre style="margin:0; padding:0; font-family:monospace;">
📁 HelloWorld-ASM/
├── 📁 32bits/
│   ├── 📄 build32.sh
│   └── 📄 hello32bits.asm
├── 📁 64bits/
│   ├── 📄 build64.sh
│   └── 📄 hello64bits.asm
└── 📄 delete_all.sh
</pre>

 
###  Este repositório contém exemplos simples de Hello World em Assembly para Linux, tanto em 32 bits quanto em 64 bits.

##  32 bits 🗂️

* #### Usa int 0x80 para chamadas de sistema (syscall)

* #### Utiliza registradores de 32 bits

## 64 bits 🗂️

* #### Usa syscall nativo do x86_64

* #### Utiliza registradores de 64 bits

## Descrição 📃

* ### Os exemplos mostram como escrever diretamente na saída padrão (stdout) e encerrar o programa.

## Execute 🦾

```sh
# clone o repositorio
git clone https://github.com/benfector/
HelloWorld-ASM.git
# entre na pasta
cd HelloWorld-ASM/
```
```sh
# entre na pasta da sua escolha
cd 64bits/ 
```

```sh
# execute o bash
chmod +x build64.sh
./build64.sh
```

###  💚 Analise o codigo, modifique e aprenda 👨‍💻
