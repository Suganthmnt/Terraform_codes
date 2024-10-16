variable client_id {

type = string 

}

variable client_secret {

type = string 

}

variable tenant_id {

type = string 

}

variable  subscription_id {

type = string 

}

variable RG_name {

type = list(string) 

}

variable RG_location {

type = string 


}

variable VNET_name {

type = string 


}

variable VNET_Address {

type = list(string) 


}

variable VNET_RG_name {

type = string 


}

#variable SNET_Address {

#type = list(string) 


#}

#variable SNET_name {

#type = string 


#}

variable subnet_config {

    type = list(object(

        {
         name = string
        SNET_Address = string
        
        }
    )
    
    )
}