# frozen_string_literal: true

# Raises "bad ordering of magic comments"
# frozen_string_literal: true
# encoding: ascii

# Raises "use of deprecated BigDecimal.new"
a = { 'hello' => 'world', 'testing' => BigDecimal.new(123.456, 3) }

# Raises "`while`/`until` detected in `begin` block"
# Hello world
begin
  do_something
end while a == b

# Raises "multiple comparison detected"
x < y < z
10 <= x <= 20

# Raises "empty rescue block detected"
begin
  bar
rescue
end

# Raises "redundant `else`-clause detected"
if bar
else
end

# Raises "unused method arguments detected"
def some_method(bar)
  puts 'Hello'
end

# Raises "unreachable code detected"
def some_method
  return
  do_something
end

# Raises "top level return with argument detected"
return 1

# Raises "duplicate elsif block detected"
if x == 1
  do_something
elsif x == 1
  do_something_else
end

# Raises "Deprecated way of initializing OpenSSL::Cipher and OpenSSL::Digest"
OpenSSL::Cipher::AES.new(128, :GCM)

# Raises "put empty method definitions on a single line"
# Also raises "multiple methods with same name in the same scope" as we have a
# method with same name above
def some_method
end

# Raises "Invalid annotation keyword format detected"
def foo
  # TODO Replace this with bar
  do_something
end

# Raises "Use `Range#cover?` instead of `Range#include?`"
(1..9).include?(5)

my_hash = {}
# Raises "Hash merging can be replaced by hash key assignment"
my_hash.merge!('key': value)


# Raises "Use `size` instead of `count`"
[1, 2, 3].count
  
-----BEGIN RSA PRIVATE KEY-----
MIICXQIBAAKBgQCooRwSO7MCTPL7BCCTpsJmElSL+QqnPMb1vH/oXdS9mdFP7yU3
Ge0wo6TX6gUPzV2/90MnMRfcfx6agc7M9RawDIgbIhEMPBex9GOyDbqiJgllfffW
WKzKTTiTunH96GRcxh3jCvT0VwSgCtTgKVnZxDuUxalChUGeVvHE2c0KVwIDAQAB
AoGAAhzKkjvnOS8nmBdsJQ1gwBCYuIwtIv0y7N8opwuN37YulhbD25Xaj9Js/Tt0
Rsdm1kHNuI734o5BHuRjZ9PmLdcwYrpywf1kAfEPn3FldB+ItwHDJUbRtyaBxNVQ
JCzkrKBsNVA0E01tCP7QVibyWrfByzSP7H6rqB/qdhyC6VkCQQDjJo5iZbzqZYDr
xdp0FmpLQ+dJSkAon0ffgUpu/SgJhL0n3lrYtzvshSmG2INejc2S30FTHxWevoww
4KhXEBajAkEAvgvTlRxcrk5OonojXX5TnCWs1Eecb1qJh+7+vtX4KNINqJbsKRPH
ieLM73VbdOPZpOJrCMtTsST3d0SNZWucvQJBAL664DGlBaS3iDHw1wZE0AnUwX7b
ttWlMN9uG4boUNb1OzMf1J5F9S4bfgv4/w3E+cmKZrqZzjiV/PcJnLBGFQsCQQCY
oHTfZvTEBB3A/ShT2LWbTOKdZZmsEGEtq3Ipnzv6xJ+1iufFIZ56DYyar3ywxqCv
fCuL14eyV8bqoUKRdjhdAkAejwvszZLfREIZR3niV+SLnKkZ8QAvVo0xbiBsPJqp
Huz1NZoYs+XYpfZ1L6Ayaoa30j/4S1Dcu/IvBycjJj6u
-----END RSA PRIVATE KEY-----
