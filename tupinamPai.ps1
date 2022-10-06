##*===============================================
## Váriaveis da aplicação ## 
##*===============================================
	[string]$appVendor = 'Script de ativação do Windows'
	[string]$appName = 'Tupinampai'
	[string]$appVersion = ''
	[string]$appArch = ''
	[string]$appLang = 'PT-BR'
	[string]$appRevision = '01'
	[string]$appScriptVersion = '2.0.0'
	[string]$appScriptDate = '??/??/2022'
	[string]$appScriptAuthor = '<Gustavo, Alef, Matheus Filipe, Matheus R.Ulhoa e João>'


<#
*===============================================
 ##  Comandos de ativação do Windows ## 
*===============================================

*** Realiza a instalação da chave do Windows ***
slmgr /ipk

*** Realiza a ativação do Windows após a chave ser instalada ***
slmgr /ato

*===============================================
 ## Comando de Busca e validação de log ## 
*===============================================

EXEMPLO: Select-String -path C:\Users\User\Desktop\powershell\arq.txt.txt -Pattern 'M i c r o s o f t'

if (gci -path C:\Users\User\Desktop\powershell\arq.txt.txt | sls "Paraguai" ) {"Existe no arquivo de texto"} else {"Não existe no bloco de texto"}
if (gci -path C:\Users\User\Desktop\powershell\arq.txt.txt | sls "M i c r o s o f t") {$true} else {$false}

Clear-Host
$c = Get-Content -path C:\Users\User\Desktop\powershell\arq.txt.txt
slmgr /ato >>$va 

if ($c | sls "a t i v a d o") {$true} else {$false}


*===============================================
 ## Comando de Mudança política de execução de scripts do poweshell ## 
*===============================================
*** Realiza a troca de política atual de execução de scripts do powershell 
para 'ByPass', permitindo execuções sem possíveis restrições. ***

Set-ExecutionPolicy -ExecutionPolicy 'ByPass' -Scope 'Process' -Force -ErrorAction 'Stop' 


*===============================================
 ## Comando de atalho para cópia de variáveis (CTRL V) ## 
*===============================================
*** Realiza a copia das informações e salva direto no CTRL V, sem a necessidade de realizar
essa ação manualmente. *** 

EXEMPLO: $SERIAL = wmic bios get serialnumber
EXEMPLO: $SERIAL  | Set-Clipboard
#>