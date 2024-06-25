//VPC ID
output "vpc_id" {
  value = aws_vpc.myown.id
}

/*
//EBS ATTACHMENT
output "vpc_attachment" {
  value = aws_ebs_volume.myown-storage.id
}
*/

//PUBLIC-SUBNET-1
output "public_subnet_id" {
  value = aws_subnet.public0.id
}

//PUBLIC-SUBNET-2
output "public_subnet_id-1" {
  value = aws_subnet.public1.id
}

//PRIVATE-SUBNET-1
output "private_subnet_id" {
  value = aws_subnet.private0.id
}

//PRIVATE-SUBNET-2
output "private_subnet_id-1" {
  value = aws_subnet.private1.id
}