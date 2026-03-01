resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop
  zone_id = var.zone_id
  # interpolation
  name    = "${each.key}.${var.domain_name}"  # mongodb.akviklabs.online
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  # interpolation
  name    = "roboshop.${var.domain_name}"  # roboshop.akviklabs.online
  type    = "A"
  ttl     = 1
  records = [lookup(aws_instance.roboshop, "frontend").public_ip]
  allow_overwrite = true
}