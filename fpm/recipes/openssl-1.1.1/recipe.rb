class Openssl111 < FPM::Cookery::Recipe
  homepage 'https://www.openssl.org/source/'
  name 'openssl-1.1.1'
  version '1'

  source 'https://www.openssl.org/source/openssl-1.1.1o.tar.gz'
  sha256 '2836875a0f89c03d0fdf483941512613a50cfb421d6fd94b9f41d7279d586a3d'

  maintainer 'GOV.UK <govuk-dev@digital.cabinet-office.gov.uk>'
  license 'Openssl'

  description 'Openssl version for use with Ruby >= 3.1'

  def build
    configure prefix: '/usr/lib/openssl/versions/1.1.1'
    make
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
