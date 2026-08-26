Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/basic_functions?download=true
inline.NumInlined: 17
inline.NumDeleted: 11
begin_hunk_0_@zm_startup_basic:bb.a
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.b, label %register_class___PHP_Incomplete_Class.exit

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.h, align 4, !tbaa !57   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.h, align 4, !tbaa !57
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %register_class___PHP_Incomplete_Class.exit

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %i.n, 128
  %.not5.i.i = icmp eq i32 %i.t, 0
  br i1 %.not5.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef nonnull %i.h) #16
  br label %register_class___PHP_Incomplete_Class.exit

bb.e:                                             ; preds = %bb.c
  call void @_efree(ptr noundef nonnull %i.h) #16
  br label %register_class___PHP_Incomplete_Class.exit

register_class___PHP_Incomplete_Class.exit:       ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  store ptr %i.f, ptr @php_ce_incomplete_class, align 8, !tbaa !58
  call void @php_register_incomplete_class_handlers() #16
  %i.u = load ptr, ptr @zend_ce_error, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %2, i8 0, i64 520, i1 false)
  %i.v = load ptr, ptr @zend_string_init_interned, align 8, !tbaa !40
  %i.w = call ptr %i.v(ptr noundef nonnull @.str.1461, i64 noundef 14, i1 noundef zeroext true) #16, !inline_history !59
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 360
  store ptr @std_object_handlers, ptr %i.y, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 504
  store ptr null, ptr %i.z, align 8, !tbaa !55
  %i.aa = call ptr @zend_register_internal_class_with_flags(ptr noundef nonnull %2, ptr noundef %i.u, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  store ptr %i.aa, ptr @assertion_error_ce, align 8, !tbaa !58
  %i.ab = call ptr @zend_register_internal_enum(ptr noundef nonnull @.str.1063, i8 noundef zeroext 0, ptr noundef null) #16 ; 9 uses
  call void @zend_enum_add_case_cstr(ptr noundef %i.ab, ptr noundef nonnull @.str.1462, ptr noundef null) #16
  call void @zend_enum_add_case_cstr(ptr noundef %i.ab, ptr noundef nonnull @.str.1463, ptr noundef null) #16
  call void @zend_enum_add_case_cstr(ptr noundef %i.ab, ptr noundef nonnull @.str.1464, ptr noundef null) #16
  call void @zend_enum_add_case_cstr(ptr noundef %i.ab, ptr noundef nonnull @.str.1465, ptr noundef null) #16
  call void @zend_enum_add_case_cstr(ptr noundef %i.ab, ptr noundef nonnull @.str.1466, ptr noundef null) #16
  call void @zend_enum_add_case_cstr(ptr noundef %i.ab, ptr noundef nonnull @.str.1467, ptr noundef null) #16
  call void @zend_enum_add_case_cstr(ptr noundef %i.ab, ptr noundef nonnull @.str.1468, ptr noundef null) #16
  call void @zend_enum_add_case_cstr(ptr noundef %i.ab, ptr noundef nonnull @.str.1469, ptr noundef null) #16
  store ptr %i.ab, ptr @rounding_mode_ce, align 8, !tbaa !58
  %i.ac = call i32 @zm_startup_var(i32 noundef %0, i32 noundef %1) #16
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.f, label %bb.w

bb.f:                                             ; preds = %register_class___PHP_Incomplete_Class.exit
  %i.ad = call i32 @zm_startup_file(i32 noundef %0, i32 noundef %1) #16
  %.not36 = icmp eq i32 %i.ad, 0
  br i1 %.not36, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @zm_startup_browscap(i32 noundef %0, i32 noundef %1) #16
  %.not37 = icmp eq i32 %i.ae, 0
  br i1 %.not37, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.af = call i32 @zm_startup_standard_filters(i32 noundef %0, i32 noundef %1) #16
  %.not38 = icmp eq i32 %i.af, 0
  br i1 %.not38, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.ag = call i32 @zm_startup_user_filters(i32 noundef %0, i32 noundef %1) #16
  %.not39 = icmp eq i32 %i.ag, 0
  br i1 %.not39, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.ah = call i32 @zm_startup_password(i32 noundef %0, i32 noundef %1) #16
  %.not40 = icmp eq i32 %i.ah, 0
  br i1 %.not40, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.ai = call i32 @zm_startup_image(i32 noundef %0, i32 noundef %1) #16
  %.not41 = icmp eq i32 %i.ai, 0
  br i1 %.not41, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.aj = call i32 @zm_startup_crc32_x86_intrin(i32 noundef %0, i32 noundef %1) #16
  %.not42 = icmp eq i32 %i.aj, 0
  br i1 %.not42, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.ak = call i32 @zm_startup_crypt(i32 noundef %0, i32 noundef %1) #16
  %.not43 = icmp eq i32 %i.ak, 0
  br i1 %.not43, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.al = call i32 @zm_startup_dir(i32 noundef %0, i32 noundef %1) #16
  %.not44 = icmp eq i32 %i.al, 0
  br i1 %.not44, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.am = call i32 @zm_startup_syslog(i32 noundef %0, i32 noundef %1) #16
  %.not45 = icmp eq i32 %i.am, 0
  br i1 %.not45, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.an = call i32 @zm_startup_array(i32 noundef %0, i32 noundef %1) #16
  %.not46 = icmp eq i32 %i.an, 0
  br i1 %.not46, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.ao = call i32 @zm_startup_assert(i32 noundef %0, i32 noundef %1) #16
  %.not47 = icmp eq i32 %i.ao, 0
  br i1 %.not47, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ap = call i32 @zm_startup_url_scanner_ex(i32 noundef %0, i32 noundef %1) #16
  %.not48 = icmp eq i32 %i.ap, 0
  br i1 %.not48, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.aq = call i32 @zm_startup_proc_open(i32 noundef %0, i32 noundef %1) #16
  %.not49 = icmp eq i32 %i.aq, 0
  br i1 %.not49, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ar = call i32 @zm_startup_exec(i32 noundef %0, i32 noundef %1) #16
  %.not50 = icmp eq i32 %i.ar, 0
  br i1 %.not50, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.as = call i32 @zm_startup_user_streams(i32 noundef %0, i32 noundef %1) #16
  %.not51 = icmp eq i32 %i.as, 0
  br i1 %.not51, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = call i32 @php_register_url_stream_wrapper(ptr noundef nonnull @.str.3, ptr noundef nonnull @php_stream_php_wrapper) #16 ; 0 uses
  %i.au = call i32 @php_register_url_stream_wrapper(ptr noundef nonnull @.str.4, ptr noundef nonnull @php_plain_files_wrapper) #16 ; 0 uses
  %i.av = call i32 @php_register_url_stream_wrapper(ptr noundef nonnull @.str.5, ptr noundef nonnull @php_glob_stream_wrapper) #16 ; 0 uses
  %i.aw = call i32 @php_register_url_stream_wrapper(ptr noundef nonnull @.str.6, ptr noundef nonnull @php_stream_rfc2397_wrapper) #16 ; 0 uses
  %i.ax = call i32 @php_register_url_stream_wrapper(ptr noundef nonnull @.str.7, ptr noundef nonnull @php_stream_http_wrapper) #16 ; 0 uses
  %i.ay = call i32 @php_register_url_stream_wrapper(ptr noundef nonnull @.str.8, ptr noundef nonnull @php_stream_ftp_wrapper) #16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %register_class___PHP_Incomplete_Class.exit, %bb.v
  %.0 = phi i32 [ 0, %bb.v ], [ -1, %register_class___PHP_Incomplete_Class.exit ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.r ], [ -1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.u ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_shutdown_basic(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1048), align 8, !tbaa !60 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @zend_hash_destroy(ptr noundef nonnull %i.a) #16
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1048), align 8, !tbaa !60
  tail call void @free(ptr noundef %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1272), align 8, !tbaa !61 ; 2 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %basic_globals_dtor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @zend_hash_destroy(ptr noundef nonnull %i.c) #16
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1272), align 8, !tbaa !61
  tail call void @free(ptr noundef %i.d) #16
  br label %basic_globals_dtor.exit

basic_globals_dtor.exit:                          ; preds = %bb.c, %bb.d
  tail call void @zend_hash_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1056)) #16
  tail call void @zend_hash_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1280)) #16
  %i.e = tail call i32 @php_unregister_url_stream_wrapper(ptr noundef nonnull @.str.3) #16 ; 0 uses
  %i.f = tail call i32 @php_unregister_url_stream_wrapper(ptr noundef nonnull @.str.7) #16 ; 0 uses
  %i.g = tail call i32 @php_unregister_url_stream_wrapper(ptr noundef nonnull @.str.8) #16 ; 0 uses
  %i.h = tail call i32 @zm_shutdown_browscap(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.i = tail call i32 @zm_shutdown_array(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.j = tail call i32 @zm_shutdown_assert(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.k = tail call i32 @zm_shutdown_url_scanner_ex(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.l = tail call i32 @zm_shutdown_file(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.m = tail call i32 @zm_shutdown_standard_filters(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.n = tail call i32 @zm_shutdown_crypt(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.o = tail call i32 @zm_shutdown_password(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.p = tail call i32 @zm_shutdown_image(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_activate_basic(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 848), align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) getelementptr inbounds nuw (i8, ptr @basic_globals, i64 64), i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) getelementptr inbounds nuw (i8, ptr @basic_globals, i64 88), i8 0, i64 264, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @basic_globals, i64 856), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) getelementptr inbounds nuw (i8, ptr @basic_globals, i64 360), i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @basic_globals, i64 504), i8 -1, i64 32, i1 false)
  tail call void @_zend_hash_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @basic_globals, i64 8), i32 noundef 1, ptr noundef nonnull @php_putenv_destructor, i1 noundef zeroext false) #16
  store ptr null, ptr @basic_globals, align 8, !tbaa !63
  %i.a = tail call i32 @zm_activate_filestat(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.b = tail call i32 @zm_activate_dir(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.c = tail call i32 @zm_activate_url_scanner_ex(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 496), align 8, !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), i8 0, i64 24, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_deactivate_basic(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 64), align 8, !tbaa !64 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !55   ; 2 uses
  %i.d = and i32 %i.c, 64
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %zend_string_release.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %i.f = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !57
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %zend_string_release.exit

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.c, 128
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %zend_string_release.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_efree(ptr noundef nonnull %i.a) #16
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 64), align 8, !tbaa !64
  br label %bb.g

bb.g:                                             ; preds = %zend_string_release.exit, %bb.a
  tail call void @zend_hash_destroy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @basic_globals, i64 8)) #16
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1344), align 8, !tbaa !12 ; 2 uses
  %.not17 = icmp eq i32 %i.j, -1
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @umask(i32 noundef %i.j) #16 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 80), align 8, !tbaa !65, !range !66, !noundef !67
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.n = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #16 ; 0 uses
  tail call void @zend_reset_lc_ctype_locale() #16
  tail call void @zend_update_current_locale() #16
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 72), align 8, !tbaa !68 ; 5 uses
  %.not18 = icmp eq ptr %i.o, null
  br i1 %.not18, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !55
  %i.r = and i32 %i.q, 64
  %.not.i20 = icmp eq i32 %i.r, 0
  br i1 %.not.i20, label %bb.l, label %zend_string_release_ex.exit

bb.l:                                             ; preds = %bb.k
  %i.s = load i32, ptr %i.o, align 4, !tbaa !57   ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.u, ptr %i.o, align 4, !tbaa !57
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %zend_string_release_ex.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_efree(ptr noundef nonnull %i.o) #16
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.k, %bb.l, %bb.m
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 72), align 8, !tbaa !68
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %zend_string_release_ex.exit, %bb.i
  %i.w = tail call i32 @zm_deactivate_filestat(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.x = tail call i32 @zm_deactivate_syslog(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.y = tail call i32 @zm_deactivate_assert(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.z = tail call i32 @zm_deactivate_url_scanner_ex(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.aa = tail call i32 @zm_deactivate_streams(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 464), align 8, !tbaa !69 ; 2 uses
  %.not19 = icmp eq ptr %i.ab, null
  br i1 %.not19, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @zend_llist_destroy(ptr noundef nonnull %i.ab) #16
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 464), align 8, !tbaa !69
  tail call void @_efree(ptr noundef %i.ac) #16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 464), align 8, !tbaa !69
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ad = tail call i32 @zm_deactivate_user_filters(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  %i.ae = tail call i32 @zm_deactivate_browscap(i32 noundef %0, i32 noundef %1) #16 ; 0 uses
  tail call void @zval_ptr_dtor(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @basic_globals, i64 488)) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @basic_globals, i64 504), i8 -1, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @zm_info_basic(ptr noundef %0) #0 {
bb.a:
  tail call void @php_info_print_table_start() #16
  tail call void @zm_info_dl(ptr noundef %0) #16
  tail call void @zm_info_mail(ptr noundef %0) #16
  tail call void @php_info_print_table_end() #16
  tail call void @zm_info_assert(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @php_get_nan() local_unnamed_addr #1 {
bb.a:
  ret double +qnan
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @php_get_inf() local_unnamed_addr #1 {
bb.a:
  ret double +inf
}

; Function Attrs: nounwind uwtable
define internal fastcc void @register_basic_functions_symbols(i32 noundef %0) unnamed_addr #0 {
zend_hash_str_find_ptr.exit445:
  %i.a = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.638, i64 noundef 14, i64 noundef 0, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.b = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1202, i64 noundef 9, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.c = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1203, i64 noundef 16, i64 noundef 2, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.d = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1204, i64 noundef 15, i64 noundef 3, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.e = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1205, i64 noundef 19, i64 noundef 4, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.f = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1206, i64 noundef 21, i64 noundef 5, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.g = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1207, i64 noundef 14, i64 noundef 6, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.h = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1208, i64 noundef 9, i64 noundef 256, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.i = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1209, i64 noundef 8, i64 noundef 4, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.j = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1210, i64 noundef 9, i64 noundef 3, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.k = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.616, i64 noundef 12, i64 noundef 0, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.l = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1211, i64 noundef 12, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.m = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.677, i64 noundef 11, i64 noundef 2, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.n = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1212, i64 noundef 18, i64 noundef 5, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.o = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1213, i64 noundef 12, i64 noundef 6, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.p = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1214, i64 noundef 14, i64 noundef 8, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.q = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.675, i64 noundef 10, i64 noundef 0, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.r = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1215, i64 noundef 10, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.s = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.620, i64 noundef 12, i64 noundef 0, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.t = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1216, i64 noundef 15, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.u = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1217, i64 noundef 21, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.v = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1218, i64 noundef 20, i64 noundef 2, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.w = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1219, i64 noundef 13, i64 noundef 1, i32 noundef 5, i32 noundef %0) #16 ; 2 uses
  %i.x = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1220, i64 noundef 15, i64 noundef 2, i32 noundef 5, i32 noundef %0) #16 ; 2 uses
  %i.y = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1221, i64 noundef 11, i64 noundef 3, i32 noundef 5, i32 noundef %0) #16 ; 2 uses
  %i.z = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1222, i64 noundef 14, i64 noundef 4, i32 noundef 5, i32 noundef %0) #16 ; 2 uses
  %i.aa = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1223, i64 noundef 16, i64 noundef 5, i32 noundef 5, i32 noundef %0) #16 ; 2 uses
  %i.ab = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1224, i64 noundef 18, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ac = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1225, i64 noundef 17, i64 noundef 0, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ad = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1226, i64 noundef 18, i64 noundef 2, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ae = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1227, i64 noundef 8, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.af = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1228, i64 noundef 10, i64 noundef 2, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ag = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1229, i64 noundef 10, i64 noundef 4, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ah = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1230, i64 noundef 7, i64 noundef 7, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ai = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.761, i64 noundef 18, i64 noundef 0, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.aj = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1231, i64 noundef 15, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ak = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1232, i64 noundef 17, i64 noundef 2, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.al = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1233, i64 noundef 14, i64 noundef 0, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.am = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1234, i64 noundef 12, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.an = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1235, i64 noundef 12, i64 noundef 2, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ao = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1236, i64 noundef 12, i64 noundef 3, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ap = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1237, i64 noundef 12, i64 noundef 4, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.aq = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1238, i64 noundef 12, i64 noundef 5, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ar = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1239, i64 noundef 13, i64 noundef 6, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.as = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1240, i64 noundef 16, i64 noundef 7, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.at = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1027, i64 noundef 17, i64 noundef 1, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.au = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.1241, i64 noundef 17, i64 noundef 2, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.av = tail call ptr @zend_register_double_constant(ptr noundef nonnull @.str.1078, i64 noundef 3, double noundef f0x4005BF0A8B145769, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.aw = tail call ptr @zend_register_double_constant(ptr noundef nonnull @.str.1242, i64 noundef 7, double noundef f0x3FF71547652B82FE, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ax = tail call ptr @zend_register_double_constant(ptr noundef nonnull @.str.1243, i64 noundef 8, double noundef f0x3FDBCB7B1526E50E, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
  %i.ay = tail call ptr @zend_register_double_constant(ptr noundef nonnull @.str.1244, i64 noundef 5, double noundef f0x3FE62E42FEFA39EF, i32 noundef 1, i32 noundef %0) #16 ; 0 uses
end_hunk_0
