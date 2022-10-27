#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando grupos de úsuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando úsuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_VEN
useradd sebastião -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_VEN
useradd pedro -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_VEN

useradd gisele -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_SEC
useradd abraham -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_SEC
useradd tiago -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado."



