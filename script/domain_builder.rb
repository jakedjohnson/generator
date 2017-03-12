# Top level module acts as a wrapper/access point
# Much cleaner to call DomainBuilder.call(data) instead of
# DomainBuilder::Domain.new(domain_data).build on the script
module DomainBuilder
  def self.call(domain_data)
    domain = DomainBuilder::Domain.new(domain_data)
    domain.build
    domain
  end
end