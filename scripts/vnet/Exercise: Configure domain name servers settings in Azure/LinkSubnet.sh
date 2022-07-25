rg='ContosoResourceGroup'
zn='Contoso.com'

az network private-dns link vnet create \
  -n CoreServicesVnetLink \
  --registration-enabled true \
  -g $rg \
  --virtual-network CoreServicesVnet \
  --zone-name $zn

az network private-dns link vnet create \
  -n ManufacturingVnetLink \
  --registration-enabled true \
  -g $rg \
  --virtual-network ManufacturingVnet \
  --zone-name $zn

az network private-dns link vnet create \
  -n ResearchVnetLink \
  --registration-enabled true \
  -g $rg \
  --virtual-network ResearchVnet \
  --zone-name $zn
