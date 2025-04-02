#include "child_subreaper.h"

VALUE rb_mChildSubreaper;

RUBY_FUNC_EXPORTED void
Init_child_subreaper(void)
{
  rb_mChildSubreaper = rb_define_module("ChildSubreaper");
  rb_define_singleton_method(rb_mChildSubreaper, "enable", child_subreaper_enable, 0);
}
