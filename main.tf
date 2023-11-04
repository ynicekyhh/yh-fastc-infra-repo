module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "yh-fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0a83c632717470d17"

  private_subnets = ["subnet-0e53f029db3f2e12f", "subnet-06b8a9799f0586724"]
  public_subnets  = ["subnet-05cec8db1f18a6b0c", "subnet-0afee4c397c661b15"]
}