#!/bin/bash

echo "Criando os diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -c "Carlos" -p $(openssl passwd -1 123456) -s /bin/bash
useradd maria -m -c "Maria" -p $(openssl passwd -1 123456) -s /bin/bash
useradd joao -m -c "João" -p $(openssl passwd -1 123456) -s /bin/bash

useradd debora -m -c "Debora" -p $(openssl passwd -1 123456) -s /bin/bash
useradd sebastiana -m -c "sebastiana" -p $(openssl passwd -1 123456) -s /bin/bash
useradd roberto -m -c "Roberto" -p $(openssl passwd -1 123456) -s /bin/bash

useradd josefina -m -c "Josefina" -p $(openssl passwd -1 123456) -s /bin/bash
useradd amanda -m -c "Amanda" -p $(openssl passwd -1 123456) -s /bin/bash
useradd rogerio -m -c "Rogerio" -p $(openssl passwd -1 123456) -s /bin/bash

echo "Adicionando usuários aos grupos..... "

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Especificando permissões dos diretórios..... "

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "Configurações finalizadas!"



