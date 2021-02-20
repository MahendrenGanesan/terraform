variable "env" {
  description = "dev"
  type        = string
}
variable "dataset_name" {
  description = "dataset"
  type        = string
}

variable "location" {
  description = "US"
  type        = string
}
variable "expiration_time_in_ms" {
  type = number
  description = "1000"  
}
