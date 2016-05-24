module Mutant
  class Mutator
    class Node
      module Regexp
        # Generic regexp mutator
        class Generic < Node
          unhandled = AST::Types::REGEXP - %i[
            regexp_root_expression
            regexp_bol_anchor
            regexp_word_type
            regexp_nonword_type
            regexp_digit_type
            regexp_nondigit_type
            regexp_space_type
            regexp_nonspace_type
            regexp_word_boundary_anchor
            regexp_nonword_boundary_anchor
          ]

          handle(*unhandled)

          # Noop dispatch
          #
          # @return [undefined]
          def dispatch
          end
        end # Generic

        # Mutator for root expression regexp wrapper
        class RootExpression < Node
          handle(:regexp_root_expression)

          # Emit mutations for children of root node
          #
          # @return [undefined]
          def dispatch
            children.each_index(&method(:mutate_child))
          end
        end # RootExpression

        # Mutator for beginning of line anchor `^`
        class BeginningOfLineAnchor < Node
          handle(:regexp_bol_anchor)

          # Emit mutations
          #
          # Replace `^` with `\A`
          #
          # @return [undefined]
          def dispatch
            emit(s(:regexp_bos_anchor))
          end
        end # BeginningOfLineAnchor
      end # Regexp
    end # Node
  end # Mutator
end # Mutant
