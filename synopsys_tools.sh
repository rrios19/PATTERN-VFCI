#!/usr/bin/env bash


# Direccion de la licencia
SNPSLMD_LICENSE_FILE=27000@172.21.9.211; # Es importante verificar con el tecnico si el archivo 

#Pendiente: definir variable con licencias flotantes

SNPSLMD_QUEUE=TRUE;     # Variable de ambiente para que Synopsys espere la validacion de las 
                        # todas las licencias solicitadas.
export SNPSLMD_QUEUE
export SNPSLMD_LICENSE_FILE 

SYNOPSYS_HOME=/mnt/vol_NFS_rh003/tools
export SYNOPSYS_HOME
##############################################################################
#### Variables de ruta para contenedor de compatibilidad para Synopsys ####
##############################################################################
#PATH=$PATH:${SYNOPSYS_HOME}/singularity-3.1.0/bin
#export PATH
#
##############################################################################
## La siguiente variable es necesaria para la aplicacion Tetramax de Synopsys
#SYNOPSYS=/mnt/vol_NFS_Zener/tools/synopsys/apps/syn2/N-2017.09-SP4
#export SYNOPSYS
##############################################################################
#
########## Variables para el PyCells Studio, OA cell lybrary ######
#CNI_ROOT=$SYNOPSYS_HOME/PyCell_Studio/Q-2020_03-SP2
#export CNI_ROOT
#
##############################################################################
#### Variables de ruta para las aplicaciones de diseño Custom de Synopsys ####
##############################################################################
#
### Custom Compiler
#
#PATH=$PATH:${SYNOPSYS_HOME}/customcompiler/R-2020.12-1/bin
#export PATH
#
### WaveViewer
##PATH=$PATH:${SYNOPSYS_HOME}/wv/Q-2020.03-SP2-2/bin
#PATH=$PATH:${SYNOPSYS_HOME}/wv/R-2020.12-1/bin
#export PATH
#
### ICValidator
#
#ICV_HOME_DIR=${SYNOPSYS_HOME}/icvalidator/Q-2019.12-SP3-6
#export ICV_HOME_DIR
#PATH=$PATH:${ICV_HOME_DIR}/bin/LINUX.64
#export PATH
#
### FineSim
##FINESIM_INST_DIR=${SYNOPSYS_HOME}/finesim/Q-2020.03-SP2-2
#FINESIM_INST_DIR=${SYNOPSYS_HOME}/finesim/R-2020.12-2
#export FINESIM_INST_DIR
##source $FINESIM_INST_DIR/finesim.cshrc
##Al no haber un archivo equivalente basrc, se traduce el contenido del archivo "finesim.cshrc" a continuacion
#export FINESIM_HOME=$FINESIM_INST_DIR
#export FINESIM_64=1
#export FINEWAVE_64=1
#export POWERVIEW_64=1
#PATH=$PATH:${FINESIM_HOME}/bin
#export PATH
#
### HSPICE
#
##PATH=$PATH:${SYNOPSYS_HOME}/hspice/Q-2020.03-SP2-2/hspice/bin
#PATH=$PATH:${SYNOPSYS_HOME}/hspice/R-2020.12-1/hspice/bin
#export PATH
#
#
### StarRC
##PATH=$PATH:${SYNOPSYS_HOME}/starrc/M-2017.06-SP3/bin
#
#export PATH
#
### Hsim (antiguo CustomSim, XA)
##PATH=$PATH:${SYNOPSYS_HOME}/custom_sim/xa/N-2017.12-SP1/bin
#PATH=$PATH:${SYNOPSYS_HOME}/hsim/Q-2020.03-SP5/hsimplus/bin
#export PATH
#
################# Kit xh018 de XFAB, AMS ##################
###   XFAB Liberty Displayer (XLIBD)  v2.0.3 xh018   ##
###########################################################
#XFAB_UTILS=/mnt/vol_NFS_Zener/tools/synopsys/pdks/xh018-ams/XFAB_snps_CustomDesigner_kit_v2_1_0/x_all/utilities
#export XFAB_UTILS
#PATH=$PATH:${XFAB_UTILS}/XLIBD/v2_0/bin/linux_x86_64/v2_0_3
#
################# Kit xh018 de XFAB, AMS ##################
###   Version v2_0_12 Custom Compiler Kit,  v7.0 xh018   ##
###########################################################
#
#FTK_KIT_DIR=/mnt/vol_NFS_Zener/tools/synopsys/pdks/xh018-ams/XFAB_snps_CustomDesigner_kit_v2_1_0
#export FTK_KIT_DIR
#
#
## A continuacion se debe definir la ruta al disenno, dentro del directorio base de su proyecto
## con una variable propia. Luego descomente las siguientes 2 lineas.
#
#DESIGN_HOME=/home/ESTUDIANTES/achacon/imd/tutorial_design
#
#export DESIGN_HOME
#
## Se define un machote de configuracion para las simulaciones de su proyecto. Descomentar
## las siguientes 2 lineas una vez haya definido la variable DESIGN_HOME
#
#SYNOPSYS_SIM_SETUP=$DESIGN_HOME/cells_1/synopsys_sim.setup
#export SYNOPSYS_SIM_SETUP
## Nota: Desactive el siguiente comentario solo cuando ya 
## tenga la biblioteca instalada (haya corrido el proceso de instalacion la primera vez)
#source $CNI_ROOT/quickstart/bashrc
#
## Se define el editor de texto para CustomCompiler. Puede re-emplazarlo por "nano", "vim" o cualquier
## editor de su preferencia.
#
#EDITOR=gedit;
#export EDITOR
#
###################################################################################
#### Variables de ruta para las aplicaciones de disenno Semi-Custom de Synopsys ###
###################################################################################
#
### Design Compiler
#
#PATH=$PATH:$SYNOPSYS_HOME/syn2/R-2020.09-SP1/bin/
#export PATH
#
### IC Compiler
#
#PATH=$PATH:${SYNOPSYS_HOME}/icc2/R-2020.09-SP1/bin
#export PATH
#
### Tetramax | Herramienta para ATPG
#PATH=$PATH:$SYNOPSYS/linux64/syn/bin
#export PATH
#
### Prime Time
#
#PATH=$PATH:${SYNOPSYS_HOME}/pts2/R-2020.09-SP1/bin
#export PATH
#
### Milkyway
#PATH=$PATH:${SYNOPSYS_HOME}/mw2/R-2020.09-SP1/bin
#export PATH
#
#### Library Compiler
#
#PATH=$PATH:$SYNOPSYS_HOME/lc/R-2020.09-SP1/linux64/syn/bin
#export PATH

###  Nueva version de VCS Mixed, 64 bits
VCS_HOME=${SYNOPSYS_HOME}/vcs/R-2020.12-SP2
export VCS_HOME
PATH=$PATH:${VCS_HOME}/bin
export PATH

###  Nueva version de Verdi, 64 bits
VERDI_HOME=${SYNOPSYS_HOME}/verdi/R-2020.12-SP2
export VERDI_HOME

PATH=$PATH:${VERDI_HOME}/bin
export PATH

UVM_HOME=${SYNOPSYS_HOME}/vcs/R-2020.12-SP2/etc/uvm-1.2
export UVM_HOME

SNPS_SIM_DEFAULT_GUI=verdi
export SNPS_SIM_DEFAULT_GUI



