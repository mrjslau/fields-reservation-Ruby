# frozen_string_literal: true

module RuboCop
  module Cop
    module RSpec
      # Checks for consistent message expectation style.
      #
      # This cop can be configured in your configuration using the
      # `EnforcedStyle` option and supports `--auto-gen-config`.
      #
      # @example `EnforcedStyle: allow`
      #
      #   # bad
      #   expect(foo).to receive(:bar)
      #
      #   # good
      #   allow(foo).to receive(:bar)
      #
      # @example `EnforcedStyle: expect`
      #
      #   # bad
      #   allow(foo).to receive(:bar)
      #
      #   # good
      #   expect(foo).to receive(:bar)
      #
      class MessageExpectation < Cop
        include ConfigurableEnforcedStyle

        MSG = 'Prefer `%s` for setting message expectations.'.freeze

        SUPPORTED_STYLES = %w[allow expect].freeze

        def_node_matcher :message_expectation, <<-PATTERN
          (send $(send nil {:expect :allow} ...) :to #receive_message?)
        PATTERN

        def_node_search :receive_message?, '(send nil :receive ...)'

        def on_send(node)
          message_expectation(node) do |match|
            return correct_style_detected if preferred_style?(match)

            add_offense(match, :selector, MSG % style) do
              opposite_style_detected
            end
          end
        end

        private

        def preferred_style?(expectation)
          expectation.method_name.equal?(style)
        end
      end
    end
  end
end