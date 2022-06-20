rg='ContosoResourceGroup'
vn='ManufacturingVnet'

az network vnet create \
  --location westeurope \
  --name $vn \
  --resource-group $rg \
  --address-prefixes 10.30.0.0/16 \
  --subnet-name ManufacturingSystemSubnet \
  --subnet-prefix 10.30.10.0/24

az network vnet subnet create \
  -g $rg \
  --vnet-name $vn \
  -n SensorSubnet1 \
  --address-prefixes 10.30.20.0/24

az network vnet subnet create \
  -g $rg \
  --vnet-name $vn \
  -n SensorSubnet2 \
  --address-prefixes 10.30.21.0/24

az network vnet subnet create \
  -g $rg \
  --vnet-name $vn \
  -n SensorSubnet3 \
  --address-prefixes 10.30.22.0/24
