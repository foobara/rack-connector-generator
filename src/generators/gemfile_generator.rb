module Foobara
  module Generators
    # TODO: do this in the .gemspec instead...
    module RackConnectorGenerator
      module Generators
        # Kind of tricky... for the first time we will be loading an existing file in the working directory
        # and modifying it.
        class GemfileGenerator < RackConnectorGenerator
          def template_path
            "Gemfile"
          end

          def target_path
            "Gemfile"
          end

          def generate(_elements_to_generate)
            contents = File.read(template_path)

            match = contents.match(/^gem /)

            if match
              new_entry = [
                'gem "foobara-rack-connector", github: "foobara/rack-connector"',
                'gem "rackup"',
                'gem "rerun"'
              ].join("\n")

              "#{match.pre_match}\n#{new_entry}\n#{match}#{match.post_match}"
            else
              # TODO: maybe print a warning and return the original Gemfile
              # :nocov:
              raise "Not sure how to inject rack_connector into the Gemfile"
              # :nocov:
            end
          end
        end
      end
    end
  end
end
