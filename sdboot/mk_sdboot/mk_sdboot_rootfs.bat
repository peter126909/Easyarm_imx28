@echo off
echo. 
echo EasyARM-iMX28x ����SD����������
echo. 
echo ������SD���̷���
set  diskpath=h
set cmdpath=%~dp0
echo ע��:
echo �ļ��ᱻ��д�� %diskpath% ��
echo. 
rem ---------------------------------------------------------------------------------------------
rem %cmdpath%cfimager.exe -a -f %cmdpath%imx28_ivt_uboot.sb -d %diskpath%
%cmdpath%cfimager.exe -a  -e %cmdpath%rootfs.full.img -d %diskpath%
rem%cmdpath%cfimager.exe  -f %cmdpath%u-boot.sb -d %diskpath%
rem ---------------------------------------------------------------------------------------------
rem ��copy��uImage������FAT32������,����ֱ����д���FAT32������Ϣ���ƻ�.
rem ����uboot֧�ֶ�fat32�ļ�ϵͳ�Ķ�д,���Կ���ֱ��ʹ��uboot��fatload�����
rem uImage���ص��ڴ��в�����. ����Ϊ:"fatload mmc 0:1 $(loadaddr) uImage;bootm"
rem copy %cmdpath%uImage %diskpath%: /y
rem copy %cmdpath%imx28-evk.dtb %diskpath%: /y
echo ��д��ϣ������˳�
echo.
pause>nul