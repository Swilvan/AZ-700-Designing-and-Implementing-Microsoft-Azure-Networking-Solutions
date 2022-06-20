rg='ContosoResourceGroup'
vn='ResearchVnet'

az network vnet create \
  --location southeastasia \
  --name $vn \
  --resource-group $rg \
  --address-prefixes 10.40.0.0/16 \
  --subnet-name ResearchSystemSubnet \
  --subnet-prefix 10.40.0.0/24
