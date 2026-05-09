inline.NumInlined: 260
inline.NumDeleted: 91
begin_hunk_0_@rb_load_file:bb.a
  %i.e = tail call i32 @geteuid() #23
  %i.f = tail call i32 @getgid() #23
  %i.g = tail call i32 @getegid() #23
  %.not.i.i.i.i = icmp eq i32 %i.d, %i.e
  %spec.select.i.i = select i1 %.not.i.i.i.i, i16 0, i16 1024 ; 2 uses
  %.not5.i.i.i.i = icmp eq i32 %i.g, %i.f
  %3 = or disjoint i16 %spec.select.i.i, 2048
  %i.h = select i1 %.not5.i.i.i.i, i16 %spec.select.i.i, i16 %3
  %i.i = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26
  %i.j = getelementptr i8, ptr %i.i, i64 1144
end_hunk_0
begin_hunk_1_@rb_load_file_str:bb.a
  %i.d = tail call i32 @geteuid() #23
  %i.e = tail call i32 @getgid() #23
  %i.f = tail call i32 @getegid() #23
  %.not.i.i.i = icmp eq i32 %i.c, %i.d
  %spec.select.i = select i1 %.not.i.i.i, i16 0, i16 1024 ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.f, %i.e
  %3 = or disjoint i16 %spec.select.i, 2048
  %i.g = select i1 %.not5.i.i.i, i16 %spec.select.i, i16 %3
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %i.h, i64 1144
end_hunk_1
begin_hunk_2_@rb_parser_load_file:cmdline_options_init.exit
  %i.c = tail call i32 @geteuid() #23
  %i.d = tail call i32 @getgid() #23
  %i.e = tail call i32 @getegid() #23
  %.not.i.i = icmp eq i32 %i.b, %i.c
  %spec.select = select i1 %.not.i.i, i16 0, i16 1024 ; 2 uses
  %.not5.i.i = icmp eq i32 %i.e, %i.d
  %4 = or disjoint i16 %spec.select, 2048
  %i.f = select i1 %.not5.i.i, i16 %spec.select, i16 %4
  %i.g = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26
  %i.h = getelementptr i8, ptr %i.g, i64 1144
end_hunk_2
