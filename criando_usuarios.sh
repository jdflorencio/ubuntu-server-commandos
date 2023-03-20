ls#!/bin/bash

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


useradd carlos -m -c "Carlos Oliveira" -s /bin/bash -p $(openssl passwd carlos) -g GRP_ADM 
useradd maria -m -c "Maria Joaquina" -s /bin/bash -p $(openssl passwd maria) -g GRP_ADM
useradd joao -c "Joao Carlos" -s /bin/bash -p $(openssl passwd joao) -g GRP_ADM
useradd debora -m -c "Debora Nascimento" -s /bin/bash -p $(openssl passwd debora) -g GRP_VEN 
useradd sebastiana -m -c "Sebastiana Silva" -s /bin/bash -p $(openssl passwd sebastiana) -g GRP_VEN
useradd roberto -m -c "Roberto Silvino" -s /bin/bash -p $(openssl passwd roberto) -g GRP_VEN
useradd josefina -m -c "Josefina Alves" -s /bin/bash -p $(openssl passwd josefina) -g GRP_SEC
useradd amanda -m -c "Amanda Sousa" -s /bin/bash -p $(openssl passwd amanda) -g GRP_SEC
useradd rogerio -m -c "Rogerio Silva" -s /bin/bash -p $(openssl passwd rogerio) -g GRP_SEC

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







