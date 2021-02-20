variable "ds-expiration" {
    type="map"
    default = {
        "short" =3600000,
        "medium"=3660000,
        "long"  =7200000,
    }
}

variable "living-time" {
    default = "short"
  
}