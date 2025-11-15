<#

.SYNOPSIS
Deploiement de GPO automatisé 

.PARAMETER GPO Name 
Nom du GPO 

.PARAMETER Path
Chemin de l'unité ou du domaine lié a la gpo mise en place 

.PARAMETER TemplateGPO 
GPO à mettre en place 

.PARAMETER Liste
Liste des groupes/Utilisateurs 

.PARAMETER WMI 
Gestion des filtres WMI 

#>

param (
    #Nom de la GPO
    [Parameter(Mandatory=$true)]
    [string]
    $GpoName,

    #Chemin de l'unité ou du domaine
    [Parameter(Mandatory=$true)]
    [string]
    $Path,

    [Parameter(Mandatory=$true)]
    [string]
    $TemplateGPO,

    [Parameter(Mandatory=$false)]
    [array]
    $Liste,

    [Parameter(Mandatory=$false)]
    [string]
    $WMI
)