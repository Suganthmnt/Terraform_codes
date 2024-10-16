client_id       = "6c9546b0-ae07-41b3-858f-cab7215bade9"
client_secret   = "yYM8Q~HhQ4mgRO4U8cH.iO4vlPqwEMTxZ_2kDb.a"
tenant_id       = "9f4bb24a-4340-4689-ac95-fa73b6de38b7"
subscription_id = "dd5a8655-3d2a-4811-842d-3c8d5aa660b3"
RG_location     = "West Europe"
RG_name         = ["VNET-RG-Test-01", "Suganth-RG-Test-02", "Suganth-RG-Test-03","Suganth-RG-Test-04"]
VNET_name       = "Suganth-VNT-Test-01"
VNET_Address    = ["10.0.0.0/16"]
VNET_RG_name    = "VNET-RG-Test-01"
subnet_config = [{
    name = "SNET-RG-Test-01"
    SNET_Address = "10.0.1.0/24"
}
,
{
    name = "SNET-RG-Test-02"
    SNET_Address = "10.0.2.0/24"
}
,
{
    name = "SNET-RG-Test-03"
    SNET_Address = "10.0.3.0/24"

}]

