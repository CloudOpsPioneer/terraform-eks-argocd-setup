resource "null_resource" "update_kubeconfig" {
  depends_on = [aws_eks_node_group.node_1]

  provisioner "local-exec" {
    command = "aws eks update-kubeconfig --region ${var.region} --name ${aws_eks_cluster.eks_cluster.name}"
  }

}

