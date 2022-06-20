rg='ContosoResourceGroup'
vn='CoreServicesVnet'

az network vnet create \
  --name $vn \
  --resource-group $rg \
  --address-prefixes 10.20.0.0/16 \
  --subnet-name GatewaySubnet \
  --subnet-prefix 10.20.0.0/27

az network vnet subnet create \
  -g $rg \
  --vnet-name $vn \
  -n SharedServicesSubnet \
  --address-prefixes 10.20.10.0/24

az network vnet subnet create \
  -g $rg \
  --vnet-name $vn \
  -n DatabaseSubnet \
  --address-prefixes 10.20.20.0/24

az network vnet subnet create \
  -g $rg \
  --vnet-name $vn \
  -n PublicWebServiceSubnet \
  --address-prefixes 10.20.30.0/24
