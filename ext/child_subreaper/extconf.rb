# frozen_string_literal: true

require "mkmf"

# Makes all symbols private by default to avoid unintended conflict
# with other gems. To explicitly export symbols you can use RUBY_FUNC_EXPORTED
# selectively, or entirely remove this flag.
append_cflags("-fvisibility=hidden")

have_const("PR_SET_CHILD_SUBREAPER", "sys/prctl.h")

create_makefile("child_subreaper/child_subreaper")
