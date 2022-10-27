#!/bin/bash

echo "Criando usuários do sistema...."

useradd guest10 -c "Usuario convidado" -s /bin/bash -m -p Senha123
passwd guest10 -euseradd guest10 -c "Usuario convidado" -s /bin/bash -m -p Senha123

useradd guest11 -c "Usuario convidado" -s /bin/bash -m -p Senha123
passwd guest11 -euseradd guest10 -c "Usuario convidado" -s /bin/bash -m -p Senha123

useradd guest12 -c "Usuario convidado" -s /bin/bash -m -p Senha123
passwd guest12 -euseradd guest10 -c "Usuario convidado" -s /bin/bash -m -p Senha123

useradd guest13 -c "Usuario convidado" -s /bin/bash -m -p Senha123
passwd guest13 -euseradd guest10 -c "Usuario convidado" -s /bin/bash -m -p Senha123

echo "Finalizado!!"
