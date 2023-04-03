provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "sa"
  region = "sa-east-1"
}

provider "aws" {
  alias  = "us2"
  region = "us-east-2"
}