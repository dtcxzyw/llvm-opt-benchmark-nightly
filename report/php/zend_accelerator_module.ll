Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_accelerator_module?download=true
inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@zif_opcache_is_script_cached:bb.a
  %.03564 = phi i32 [ 0, %.thread56 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.03663 = phi ptr [ null, %.thread56 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.03762 = phi i32 [ 0, %.thread56 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03465, i32 noundef %.03762, ptr noundef null, i32 noundef %.03564, ptr noundef %.03663) #10
  br label %bb.o

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit, %.split66.thread
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 136), align 8, !tbaa !90 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.k = load i8, ptr %i.j, align 1, !tbaa !48
  %.not8.i = icmp eq i8 %i.k, 0
  br i1 %.not8.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #11 ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !104 ; 3 uses
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #11
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.j, i64 %i.l)
  %.not10.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.196) #10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.p, align 8, !tbaa !48
  br label %bb.o

bb.i:                                             ; preds = %.critedge, %bb.d, %bb.g
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 3), align 1, !tbaa !50, !range !28, !noundef !29
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.s, align 8, !tbaa !48
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.u = call ptr @accel_make_persistent_key(ptr noundef %i.t) #10 ; 2 uses
  %.not.i44 = icmp eq ptr %i.u, null
  br i1 %.not.i44, label %filename_is_in_cache.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr @accel_shared_globals, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = call ptr @zend_accel_hash_find(ptr noundef nonnull %i.w, ptr noundef nonnull %i.u) #10 ; 3 uses
  %.not12.i = icmp eq ptr %i.x, null
  br i1 %.not12.i, label %filename_is_in_cache.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 400
  %i.z = load i8, ptr %i.y, align 8, !tbaa !125, !range !28, !noundef !29
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %filename_is_in_cache.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 50), align 2, !tbaa !120, !range !28, !noundef !29
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %filename_is_in_cache.exit, label %filename_is_in_cache.exit.thread73

filename_is_in_cache.exit:                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @zend_stream_init_filename_ex(ptr noundef nonnull %2, ptr noundef %i.t) #10
  %i.ad = call i32 @validate_timestamp_and_record_ex(ptr noundef nonnull %i.x, ptr noundef nonnull %2) #10
  %.fr = freeze i32 %i.ad
  %.not = icmp eq i32 %.fr, 0
  call void @zend_destroy_file_handle(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br i1 %.not, label %filename_is_in_cache.exit.thread73, label %filename_is_in_cache.exit.thread

filename_is_in_cache.exit.thread:                 ; preds = %bb.l, %bb.m, %bb.k, %filename_is_in_cache.exit
  br label %filename_is_in_cache.exit.thread73

filename_is_in_cache.exit.thread73:               ; preds = %bb.n, %filename_is_in_cache.exit, %filename_is_in_cache.exit.thread
  %i.ae = phi i32 [ 2, %filename_is_in_cache.exit.thread ], [ 3, %filename_is_in_cache.exit ], [ 3, %bb.n ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %filename_is_in_cache.exit.thread73, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zif_opcache_is_script_cached_in_file_cache(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zend_file_handle, align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !48
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread59, !prof !123

.thread59:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #10
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !48
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split69.thread, label %zend_parse_arg_str_ex.exit, !prof !121

.split69.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !48
  store ptr %i.h, ptr %i.a, align 8, !tbaa !119
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #10
  %cond.fr49 = freeze i1 %i.i
  br i1 %cond.fr49, label %.critedge, label %bb.c, !prof !124

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread59
  %.03668 = phi i32 [ 1, %.thread59 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.03767 = phi i32 [ 0, %.thread59 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.03866 = phi ptr [ null, %.thread59 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.03965 = phi i32 [ 0, %.thread59 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03668, i32 noundef %.03965, ptr noundef null, i32 noundef %.03767, ptr noundef %.03866) #10
  br label %bb.o

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit, %.split69.thread
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 136), align 8, !tbaa !90 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.k = load i8, ptr %i.j, align 1, !tbaa !48
  %.not8.i = icmp eq i8 %i.k, 0
  br i1 %.not8.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #11 ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !104 ; 3 uses
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #11
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.j, i64 %i.l)
  %.not10.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.196) #10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.p, align 8, !tbaa !48
  br label %bb.o

bb.i:                                             ; preds = %.critedge, %bb.d, %bb.g
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 3), align 1, !tbaa !50, !range !28, !noundef !29
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 161), align 1, !range !28
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.u, align 8, !tbaa !48
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 152), align 8, !tbaa !51
  %.not43 = icmp eq ptr %i.v, null
  br i1 %.not43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.w, align 8, !tbaa !48
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.y = load ptr, ptr @zend_resolve_path, align 8, !tbaa !49
  %i.z = call ptr %i.y(ptr noundef %i.x) #10, !inline_history !247 ; 2 uses
  %.not.i47 = icmp eq ptr %i.z, null
  br i1 %.not.i47, label %bb.n, label %filename_is_in_file_cache.exit.a

filename_is_in_file_cache.exit.a:                 ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @zend_stream_init_filename_ex(ptr noundef nonnull %2, ptr noundef %i.x) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !248
  %i.ab = call ptr @zend_file_cache_script_load_ex(ptr noundef nonnull %2, i1 noundef zeroext true) #10
  call void @zend_destroy_file_handle(ptr noundef nonnull %2) #10
  %3 = icmp ne ptr %i.ab, null
  %4 = zext i1 %3 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %5 = or disjoint i32 %4, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %filename_is_in_file_cache.exit.a
  %i.ac = phi i32 [ %5, %filename_is_in_file_cache.exit.a ], [ 2, %bb.m ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n, %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @OnEnable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  switch i32 %5, label %bb.c [
    i32 8, label %bb.b
    i32 2, label %bb.b
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.a = tail call i32 @OnUpdateBool(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #10
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.b ; 2 uses
  %i.d = tail call zeroext i1 @zend_ini_parse_bool(ptr noundef %1) #10
  br i1 %i.d, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %i.c, align 1, !tbaa !30, !range !28, !noundef !29
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i32 %5, 4
  br i1 %i.g, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @sapi_module, align 8, !tbaa !127
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(9) @.str.160) #11
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.161) #10
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.162) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.162) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  store i8 0, ptr %i.c, align 1, !tbaa !30
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 3), align 1, !tbaa !50
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d, %bb.g, %bb.h, %bb.i, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.j ], [ 0, %bb.d ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ]
  ret i32 %.1
}

declare void @zend_ini_boolean_displayer_cb(ptr noundef, i32 noundef) #2

declare i32 @OnUpdateBool(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @OnUpdateLong(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @OnUpdateMemoryConsumption(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5) #0 {
bb.a:
  %i.a = load i8, ptr @accel_startup_ok, align 1, !tbaa !30, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @sapi_module, align 8, !tbaa !127
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(9) @.str.160) #11
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.163) #10
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.164) #10
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 10) #10, !inline_history !0 ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.h, 8
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.165) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = ptrtoint ptr %2 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %i.l = shl i64 %i.g, 20
  %i.m = and i64 %i.l, 2251799812636672
  store i64 %i.m, ptr %i.k, align 8, !tbaa !128
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @OnUpdateInternedStringsBuffer(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5) #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !131
  %i.d = tail call i64 @zend_ini_parse_quantity_warn(ptr noundef %1, ptr noundef %i.c) #10 ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.166, i64 noundef %i.d) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.d, 32767
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.167, i64 noundef 32767, i64 noundef %i.d) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.b, align 8, !tbaa !128
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @OnUpdateMaxAcceleratedFiles(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5) #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #10, !inline_history !0 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = and i64 %i.d, 4294967295
  %i.g = icmp slt i32 %i.e, 200
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.168, i32 noundef 200) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = icmp samesign ugt i32 %i.e, 1000000
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.169, i32 noundef 1000000) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.f, ptr %i.b, align 8, !tbaa !128
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @OnUpdateMaxWastedPercentage(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #10, !inline_history !0 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, -51
  %or.cond = icmp ult i32 %i.d, -50
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @zend_accel_error(i32 noundef 2, ptr noundef nonnull @.str.170) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, 4294967295
  %i.f = ptrtoint ptr %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %i.f
  %i.h = uitofp nneg i64 %i.e to double
  %i.i = fdiv double %i.h, 1.000000e+02
end_hunk_0
