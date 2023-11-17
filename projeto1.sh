#!/bin/bash

# Projeto1: Script para criação de estrutura de usuários, diretórios e permissões
# AUTOR:Eduardo Ururahy
# Curso Linux Fundamentals Dio.Me

echo "Criando diretorios....."
echo "...."
echo "........"
echo "..............."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios....."
echo "...."
echo "........"
echo "..............."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios....."
echo "...."
echo "........"
echo "..............."


useradd carlos -c "Carlos Castro" -m -s /bin/bash -p $(openssl passwd -crypt sx2020) -G GRP_ADM

useradd maria -c "Maria Candida" -m -s /bin/bash -p $(openssl passwd -crypt sx2020) -G GRP_ADM

useradd joao  -c "Joao Pereira" -m -s /bin/bash -p $(openssl passwd -crypt sx2020) -G GRP_ADM

useradd debora -c "Debora Martins" -m -s /bin/bash -p $(openssl passwd -crypt sx2020) -G GRP_VEN

useradd sebastiana -c "Sebastiana Costa" -m -s /bin/bash -p $(openssl passwd -crypt sx2020) -G GRP_VEN

useradd roberto -c "Roberto Marques" -m -s /bin/bash -p $(openssl passwd -crypt sx2020) -G GRP_VEN

useradd josefina -c "Josefina Dummont" -m -s /bin/bash -p $(openssl passwd -crypt sx2020) -G GRP_SEC

useradd amanda -c "Amanda Ribas" -m -s /bin/bash -p $(openssl passwd -crypt sx2020) -G GRP_SEC

useradd rogerio -c "Rogerio Torres" -m -s /bin/bash -p $(openssl passwd -crypt sx2020) -G GRP_SEC


echo "Especificando permissoes dos diretorios....."
echo "...."
echo "........"
echo "..............."

chown root: GRP_ADM /adm

chown root: GRP_VEN /ven

chown root: GRP_SEC /sec

chmod 770 /adm

chmod 770 /ven

chmod 770 /sec

chmod 777 /publico

echo "Finalizando processo....."
