inline.NumInlined: 260
inline.NumDeleted: 91
begin_hunk_0_@rb_load_file:bb.a
  store i32 -1, ptr %i.o, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i32 31, ptr %i.p, align 4, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 8, ptr %i.q, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 -9223372036854775808, ptr %i.r, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i16 %i.i, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 %i.b, ptr %1, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.a, ptr %i.t, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %2, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.c, ptr %i.w, align 8, !tbaa !70
  %i.x = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.y = call i64 @rb_ensure(ptr noundef nonnull @load_file_internal, i64 noundef %i.x, ptr noundef nonnull @restore_load_file, i64 noundef %i.x) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.z = call ptr @rb_ruby_ast_data_get(i64 noundef %i.y) #23
  ret ptr %i.z
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_load_file_str(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.load_file_arg, align 8      ; 8 uses
  %2 = alloca %struct.ruby_cmdline_options, align 8 ; 11 uses
  %i.a = tail call i64 @rb_parser_new() #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = tail call fastcc i64 @open_load_file(i64 noundef %0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 noundef 0, i64 noundef 128, i1 noundef false) #23
  %i.c = tail call i32 @getuid() #23
  %i.d = tail call i32 @geteuid() #23
  %i.e = tail call i32 @getgid() #23
  %i.f = tail call i32 @getegid() #23
  %.not.i.i.i = icmp eq i32 %i.c, %i.d
  %spec.select.i = select i1 %.not.i.i.i, i16 0, i16 1024 ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.f, %i.e
  %i.g = or disjoint i16 %spec.select.i, 2048
  %i.h = select i1 %.not5.i.i.i, i16 %spec.select.i, i16 %i.g
  %i.i = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26
  %i.j = getelementptr i8, ptr %i.i, i64 1144
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.k, ptr %i.l, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 -1, ptr %i.m, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 -1, ptr %i.n, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i32 31, ptr %i.o, align 4, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 8, ptr %i.p, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 -9223372036854775808, ptr %i.q, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i16 %i.h, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 %i.a, ptr %1, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %0, ptr %i.s, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %2, ptr %i.u, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.b, ptr %i.v, align 8, !tbaa !70
  %i.w = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.x = call i64 @rb_ensure(ptr noundef nonnull @load_file_internal, i64 noundef %i.w, ptr noundef nonnull @restore_load_file, i64 noundef %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.y = call ptr @rb_ruby_ast_data_get(i64 noundef %i.x) #23
  ret ptr %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_parser_load_file(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
cmdline_options_init.exit:
  %2 = alloca %struct.load_file_arg, align 8      ; 8 uses
  %3 = alloca %struct.ruby_cmdline_options, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = tail call fastcc i64 @open_load_file(i64 noundef %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 noundef 0, i64 noundef 128, i1 noundef false) #23
  %i.b = tail call i32 @getuid() #23
  %i.c = tail call i32 @geteuid() #23
  %i.d = tail call i32 @getgid() #23
  %i.e = tail call i32 @getegid() #23
  %.not.i.i = icmp eq i32 %i.b, %i.c
  %spec.select = select i1 %.not.i.i, i16 0, i16 1024 ; 2 uses
  %.not5.i.i = icmp eq i32 %i.e, %i.d
  %i.f = or disjoint i16 %spec.select, 2048
  %i.g = select i1 %.not5.i.i, i16 %spec.select, i16 %i.f
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %i.h, i64 1144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.j, ptr %i.k, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 -1, ptr %i.l, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 -1, ptr %i.m, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 31, ptr %i.n, align 4, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 8, ptr %i.o, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 -9223372036854775808, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i16 %i.g, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 %0, ptr %2, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.r, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.t, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.a, ptr %i.u, align 8, !tbaa !70
  %i.v = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.w = call i64 @rb_ensure(ptr noundef nonnull @load_file_internal, i64 noundef %i.v, ptr noundef nonnull @restore_load_file, i64 noundef %i.v) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %i.w
}

declare i64 @rb_parser_new() local_unnamed_addr #3

declare ptr @rb_ruby_ast_data_get(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @open_load_file(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = tail call i64 @rb_str_encode_ospath(i64 noundef %0) #23
  store i64 %i.b, ptr %i.a, align 8, !tbaa !24
  %i.c = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #23 ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !24
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !71
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.c, align 1, !tbaa !11
  %i.j = icmp eq i8 %i.i, 45
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @rb_stdin, align 8, !tbaa !24
  br label %bb.n

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = call i32 @rb_cloexec_open(ptr noundef %i.c, i32 noundef 2048, i32 noundef 0) #23 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @rb_errno_ptr() #23
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7    ; 2 uses
  %i.p = call i32 @rb_gc_for_fd(i32 noundef %i.o) #23
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.a, align 8, !tbaa !24
  %i.r = call ptr @strerror(i32 noundef %i.o) #23
  call void @rb_load_fail(i64 noundef %i.q, ptr noundef %i.r) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = call i32 @rb_cloexec_open(ptr noundef %i.c, i32 noundef 2048, i32 noundef 0) #23 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.a, align 8, !tbaa !24
  %i.v = call ptr @rb_errno_ptr() #23
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = call ptr @strerror(i32 noundef %i.w) #23
  call void @rb_load_fail(i64 noundef %i.u, ptr noundef %i.x) #24
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.d
  %.021 = phi i32 [ %i.s, %bb.g ], [ %i.l, %bb.d ] ; 6 uses
  call void @rb_update_max_fd(i32 noundef %.021) #23
  %i.y = call i32 (i32, i32, ...) @fcntl(i32 noundef range(i32 0, -2147483648) %.021, i32 noundef 4, i32 noundef 0) #23
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %select.unfold

bb.j:                                             ; preds = %bb.i
  %i.aa = call ptr @rb_errno_ptr() #23
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %.fr = freeze i32 %i.ab                         ; 3 uses
  %i.ac = icmp ne i32 %.fr, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i32 %.fr, 95
  br i1 %i.ad, label %select.unfold, label %disable_nonblock.exit

disable_nonblock.exit:                            ; preds = %bb.j
  %i.ae = call i32 @close(i32 noundef %.021) #23  ; 0 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !24
  %i.ag = call ptr @strerror(i32 noundef %.fr) #23
  call void @rb_load_fail(i64 noundef %i.af, ptr noundef %i.ag) #24
  unreachable

select.unfold:                                    ; preds = %bb.j, %bb.i
  %i.ah = call i32 @ruby_is_fd_loadable(i32 noundef %.021) #23 ; 2 uses
  %.not27 = icmp eq i32 %i.ah, 0
  br i1 %.not27, label %bb.k, label %bb.l

bb.k:                                             ; preds = %select.unfold
  %i.ai = call ptr @rb_errno_ptr() #23
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = call i32 @close(i32 noundef %.021) #23  ; 0 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !24
  %i.am = call ptr @strerror(i32 noundef %i.aj) #23
  call void @rb_load_fail(i64 noundef %i.al, ptr noundef %i.am) #24
  unreachable

bb.l:                                             ; preds = %select.unfold
  %i.an = call i64 @rb_io_fdopen(i32 noundef %.021, i32 noundef 2048, ptr noundef %i.c) #23 ; 3 uses
  %i.ao = icmp slt i32 %i.ah, 0
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = call i64 @rb_io_wait(i64 noundef %i.an, i64 noundef 3, i64 noundef 4) #23 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.c
  %.0 = phi i64 [ %i.k, %bb.c ], [ %i.an, %bb.m ], [ %i.an, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_script(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @rb_external_str_new_cstr(ptr noundef nonnull %0) #23
  %i.b = tail call i64 @rb_str_freeze(i64 noundef %i.a) #23 ; 3 uses
  %i.c = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1216
  store i64 %i.b, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr i8, ptr %i.c, i64 1208
  store i64 %i.b, ptr %i.e, align 8, !tbaa !74
  tail call void @rb_vm_set_progname(i64 noundef %i.b) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i64 @rb_str_freeze(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_set_script_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new_frozen(i64 noundef %0) #23 ; 3 uses
  %i.b = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1216
  store i64 %i.a, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr i8, ptr %i.b, i64 1208
  store i64 %i.a, ptr %i.d, align 8, !tbaa !74
  tail call void @rb_vm_set_progname(i64 noundef %i.a) #23
  ret void
}

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_prog_init() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.2, ptr noundef nonnull @verbose_getter, ptr noundef nonnull @verbose_setter) #23
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.3, ptr noundef nonnull @verbose_getter, ptr noundef nonnull @verbose_setter) #23
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.4, ptr noundef nonnull @verbose_getter, ptr noundef nonnull @verbose_setter) #23
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.5, ptr noundef nonnull @opt_W_getter, ptr noundef nonnull @rb_gvar_readonly_setter) #23
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.6, ptr noundef nonnull @debug_getter, ptr noundef nonnull @debug_setter) #23
  tail call void @rb_define_virtual_variable(ptr noundef nonnull @.str.7, ptr noundef nonnull @debug_getter, ptr noundef nonnull @debug_setter) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.2) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.3) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.4) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.5) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.6) #23
  tail call void @rb_gvar_ractor_local(ptr noundef nonnull @.str.7) #23
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26
  %i.b = getelementptr i8, ptr %i.a, i64 1216
  tail call void @rb_define_hooked_variable(ptr noundef nonnull @.str.8, ptr noundef %i.b, ptr noundef null, ptr noundef nonnull @set_arg0) #23
  %i.c = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26
  %i.d = getelementptr i8, ptr %i.c, i64 1216
  tail call void @rb_define_hooked_variable(ptr noundef nonnull @.str.9, ptr noundef %i.d, ptr noundef null, ptr noundef nonnull @set_arg0) #23
  %i.e = load i64, ptr @rb_mProcess, align 8, !tbaa !24
  tail call void @rb_define_module_function(i64 noundef %i.e, ptr noundef nonnull @.str.10, ptr noundef nonnull @proc_argv0, i32 noundef 0) #23
  %i.f = load i64, ptr @rb_mProcess, align 8, !tbaa !24
  tail call void @rb_define_module_function(i64 noundef %i.f, ptr noundef nonnull @.str.11, ptr noundef nonnull @proc_setproctitle, i32 noundef 1) #23
  %i.g = tail call i64 @rb_get_argv() #23
  tail call void @rb_define_global_const(ptr noundef nonnull @.str.12, i64 noundef %i.g) #23
  ret void
}

declare void @rb_define_virtual_variable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @verbose_getter(i64 %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @rb_ruby_verbose_ptr() #23
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @verbose_setter(i64 noundef %0, i64 %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = and i64 %0, -5
  %.not = icmp eq i64 %i.a, 0
  %i.b = select i1 %.not, i64 %0, i64 20
  %i.c = tail call ptr @rb_ruby_verbose_ptr() #23
  store i64 %i.b, ptr %i.c, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 6) i64 @opt_W_getter(i64 %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @rb_ruby_verbose_ptr() #23
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  switch i64 %i.b, label %bb.d [
    i64 4, label %bb.e
    i64 0, label %bb.b
    i64 20, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ 4, %bb.d ], [ 5, %bb.c ], [ 3, %bb.b ], [ 1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: noreturn
declare void @rb_gvar_readonly_setter(i64 noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @debug_getter(i64 %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @rb_ruby_debug_ptr() #23
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @debug_setter(i64 noundef %0, i64 %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @rb_ruby_debug_ptr() #23
  store i64 %0, ptr %i.a, align 8, !tbaa !24
  ret void
}

declare void @rb_gvar_ractor_local(ptr noundef) local_unnamed_addr #3

declare void @rb_define_hooked_variable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @set_arg0(i64 noundef %0, i64 %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr @origarg.1, align 8, !tbaa !75
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.140) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !24
  %i.e = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #23
  %i.f = load i64, ptr %i.a, align 8, !tbaa !24
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !71   ; 3 uses
  %i.j = add i64 %i.i, 2147483648
  %.not.i.i.i = icmp ult i64 %i.j, 4294967296
  br i1 %.not.i.i.i, label %ruby_setproctitle.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @rb_out_of_int(i64 noundef %i.i) #25
  unreachable

ruby_setproctitle.exit:                           ; preds = %bb.c
  %i.k = trunc nsw i64 %i.i to i32
  call void (ptr, ...) @setproctitle(ptr noundef nonnull @.str.141, i32 noundef %i.k, ptr noundef %i.e) #23
end_hunk_0
