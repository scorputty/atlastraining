#
# DO NOT DELETE THESE LINES!
#
# Your DNSimple email is:
#
#     sethvargo+terraform@gmail.com
#
# Your DNSimple token is:
#
#     1Gam3SE2eIwZYtq70H5V5iAXiE9sGPmf
#
# Your Identity is:
#
#     hashiconf-e369853df766fa44e1ed0ff613f563bd
#
# Configure the DNSimple provider
provider "dnsimple" {
    token = "1Gam3SE2eIwZYtq70H5V5iAXiE9sGPmf"
    email = "sethvargo+terraform@gmail.com"
}

# Add a record to the domain
resource "dnsimple_record" "dns_example_scorputty" {
    domain = "terraform.rocks"
    name = "scorputty"
    value = "${aws_instance.web.0.public_ip}"
    type = "A"
    ttl = 3600
}
