module "s8-mgmt-project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "10.2.2"
  # insert the 6 required variables here
  name = "s8-mgmt"
  org_id = "100717491706"
  billing_account ="01128B-9D6E9D-A24858"
  svpc_host_project_id = "s8-network"
  folder_id = "343239494171"
  shared_vpc_subnets = [ 
      "projects/s8-network/regions/northamerica-northeast1/subnetworks/s8-mgmt-gke-subnet",
      "projects/s8-network/regions/northamerica-northeast1/subnetworks/s8-mgmt-vm-subnet" 
  ]  
 activate_apis = [
       "compute.googleapis.com",
       "container.googleapis.com"
 ]

}