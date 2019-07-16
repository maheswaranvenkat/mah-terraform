locals {
  az_names = "${slice(data.aws_availability_zones.azs.names, 0, 3)}"
}

resource "aws_subnet" "public" {
  count             = "${length(local.az_names)}"
  vpc_id            = "${aws_vpc.my_app.id}"
  cidr_block        = "${var.pub_sub_cidrs[count.index]}"
  availability_zone = "${local.az_names[count.index]}"
  tags = {
    Name = "PublicSubnet - ${count.index + 1}"
  }
}
