#!/bin/bash

echo "Criar Direcitorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários"

grupadd ADM_REPO
grupadd VEN_REPO
grupadd SEC_ADD

echo "criando usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM_REPO
useradd maria -m -s /bin/bash -p $(openssl passwd - crypt Senha123) -G ADM_REPO
useradd joao -m -s /bin/bash -p $(openssl passwd - crypt Senha123) -G ADM_REPO

useradd debora -m -s /bin/bash -p $(openssl passwd - crypt Senha123) -G VEN_REPO
useradd sebastiana -m -s /bin/bash -p $(openssl passwd - crypt Senha123) -G VEN_REPO
useradd roberto -m -s /bin/bash -p $(openssl passwd - crypt Senha123) -G VEN_REPO

useradd josefina -m -s /bin/bash -p $(openssl passwd - crypt Senha123) -G SEC_REPO
useradd amanda -m -s /bin/bash -p $(openssl passwd - crypt Senha123) -G SEC_REPO
useradd rogerio -m -s /bin/bash -p $(openssl passwd - crypt Senha123) -G SEC_REPO

echo " especificando permissões dos diretórios"

chown root:ADM_REPO /adm
chown root:VEN_REPO /ven
chown root:SEC_REPO /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM"