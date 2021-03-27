function Create-FunctionApp {
   
    param (
        [Parameter(Mandatory)]
        [string]$RGName,

        [Parameter(Mandatory)]
        [string]$name,

        [Parameter(Mandatory)]
        [string]$storageAccountName

    )

    az group create -n $RGName -l "Australia east"

    az storage account create --name $storageAccountName `
        --resource-group $RGName

    $plan = az functionapp plan create -g $RGName `
        -n $($name + 'plan') `
        --min-instances 1 `
        --max-burst 5 `
        --sku EP1 `
        --is-linux false

    $plan

    az functionapp create -g $RGName `
        -n $name `
        -p $($name + 'plan') `
        -s $storageAccountName `
        --functions-version 2    
}