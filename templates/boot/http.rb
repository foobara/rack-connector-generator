require "foobara/rack_connector"

rack_connector = Foobara::CommandConnectors::Http::Rack.new

# rack_connector.connect(SomeCommandOrOrgOrDomain, suffix: "Atom", atomic_entities: true)
# rack_connector.connect(SomeOtherCommand)

RACK_CONNECTOR = rack_connector
