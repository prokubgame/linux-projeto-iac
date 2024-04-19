#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios criados!!!"

echo "Iniciando criação dos grupos de usuários..."

groupadd GRP-ADM
groupadd GRP-VEN
groupadd GRP-SEC

echo "Grupos criados!!"

echo "Iniciando criação dos usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP-ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP-ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP-ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP-VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP-VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP-VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP-SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP-SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP-SEC

echo "Finalizou a criação dos usuários!!"

echo "iniciando a permissões dos diretorios..."

chown root:GRP-ADM /adm
chown root:GRP-VEN /ven
chown root:GRP-SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "REalizada toda a configuração!"

















