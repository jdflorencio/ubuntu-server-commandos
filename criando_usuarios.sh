#!/bin/bash

echo "Gerando diretorios:"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos:"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios:"


useradd carlos -c “Carlos da Silva” -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c “Maria Oliveira” -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c “João Florencio” -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c “Debora da Silva” -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_VEN
useradd sebastiana -c “Sebastiana Ferreira” -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_VEN
useradd roberto -c “Roberto  Silva” -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_VEN

useradd josefina -c “Josefina Silva” -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_SEC
useradd amanda  -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_SEC
useradd rogerio  -m -s /bin/bash -p $(openssl -crypt Senha123) -G GRP_SEC

echo "criando diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "definindo permissões dos diretorios:"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "finalizado"







