module Foobara
  module Generators
    module RackConnectorGenerator
      module Generators
        class RackConnectorGenerator < Foobara::FilesGenerator
          class << self
            def manifest_to_generator_classes(manifest)
              case manifest
              when RackConnectorConfig
                [
                  Generators::GemfileGenerator
                ]
              else
                # simplecov:disable
                raise "Not sure how build a generator for a #{manifest}"
                # simplecov:enable
              end
            end
          end

          alias rack_connector_config relevant_manifest

          def templates_dir
            # simplecov:disable
            "#{__dir__}/../../templates"
            # simplecov:enable
          end

          # TODO: promote this up to base project
          def ==(other)
            # simplecov:disable
            self.class == other.class && rack_connector_config == other.rack_connector_config
            # simplecov:enable
          end

          def hash
            rack_connector_config.hash
          end
        end
      end
    end
  end
end
