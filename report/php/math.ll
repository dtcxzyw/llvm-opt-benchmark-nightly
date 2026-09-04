Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/math?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@zif_abs:bb.a
  %.04365 = phi i32 [ 0, %.thread59 ], [ 1, %zend_parse_arg_number.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.04068, i32 noundef %.04365, ptr noundef null, i32 noundef %.04167, ptr noundef %.04266) #13
  br label %bb.h

.critedge:                                        ; preds = %zend_parse_arg_number.exit..critedge_crit_edge, %.split69.thread
  %i.i = phi ptr [ %.pre, %zend_parse_arg_number.exit..critedge_crit_edge ], [ %i.d, %.split69.thread ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !17
  %i.l = icmp eq i8 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.critedge
  %i.m = load i64, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  store double f0x43E0000000000000, ptr %1, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 5, ptr %i.o, align 8, !tbaa !17
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = call i64 @llvm.abs.i64(i64 %i.m, i1 true)
  store i64 %i.p, ptr %1, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.q, align 8, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.r = load double, ptr %i.i, align 8, !tbaa !17
  %i.s = call double @llvm.fabs.f64(double %i.r)
  store double %i.s, ptr %1, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 5, ptr %i.t, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @zif_ceil(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread55, !prof !18

.thread55:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !17
  %i.g = and i8 %i.f, -2
  %switch = icmp eq i8 %i.g, 4
  br i1 %switch, label %.split65.thread, label %zend_parse_arg_number.exit, !prof !19

.split65.thread:                                  ; preds = %bb.b
  store ptr %i.d, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

zend_parse_arg_number.exit:                       ; preds = %bb.b
  %i.h = call zeroext i1 @zend_parse_arg_number_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %cond.fr = freeze i1 %i.h
  br i1 %cond.fr, label %zend_parse_arg_number.exit..critedge_crit_edge, label %bb.c, !prof !23

zend_parse_arg_number.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_number.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_number.exit, %.thread55
  %.03764 = phi i32 [ 1, %.thread55 ], [ 9, %zend_parse_arg_number.exit ]
  %.03863 = phi i32 [ 0, %.thread55 ], [ 22, %zend_parse_arg_number.exit ]
  %.03962 = phi ptr [ null, %.thread55 ], [ %i.d, %zend_parse_arg_number.exit ]
  %.04061 = phi i32 [ 0, %.thread55 ], [ 1, %zend_parse_arg_number.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03764, i32 noundef %.04061, ptr noundef null, i32 noundef %.03863, ptr noundef %.03962) #13
  br label %bb.e

.critedge:                                        ; preds = %zend_parse_arg_number.exit..critedge_crit_edge, %.split65.thread
  %i.i = phi ptr [ %.pre, %zend_parse_arg_number.exit..critedge_crit_edge ], [ %i.d, %.split65.thread ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !17
  %i.l = icmp eq i8 %i.k, 4
  br i1 %i.l, label %zval_get_double.exit, label %bb.d

zval_get_double.exit:                             ; preds = %.critedge
  %i.m = call double @zval_get_double_func(ptr noundef nonnull %i.i) #13
  store double %i.m, ptr %1, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 5, ptr %i.n, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.o = load double, ptr %i.i, align 8, !tbaa !17
  %i.p = call double @llvm.ceil.f64(double %i.o)
  store double %i.p, ptr %1, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 5, ptr %i.q, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %zval_get_double.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_floor(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread55, !prof !18

.thread55:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !17
  %i.g = and i8 %i.f, -2
  %switch = icmp eq i8 %i.g, 4
  br i1 %switch, label %.split65.thread, label %zend_parse_arg_number.exit, !prof !19

.split65.thread:                                  ; preds = %bb.b
  store ptr %i.d, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

zend_parse_arg_number.exit:                       ; preds = %bb.b
  %i.h = call zeroext i1 @zend_parse_arg_number_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %cond.fr = freeze i1 %i.h
  br i1 %cond.fr, label %zend_parse_arg_number.exit..critedge_crit_edge, label %bb.c, !prof !23

zend_parse_arg_number.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_number.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_number.exit, %.thread55
  %.03764 = phi i32 [ 1, %.thread55 ], [ 9, %zend_parse_arg_number.exit ]
  %.03863 = phi i32 [ 0, %.thread55 ], [ 22, %zend_parse_arg_number.exit ]
  %.03962 = phi ptr [ null, %.thread55 ], [ %i.d, %zend_parse_arg_number.exit ]
  %.04061 = phi i32 [ 0, %.thread55 ], [ 1, %zend_parse_arg_number.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03764, i32 noundef %.04061, ptr noundef null, i32 noundef %.03863, ptr noundef %.03962) #13
  br label %bb.e

.critedge:                                        ; preds = %zend_parse_arg_number.exit..critedge_crit_edge, %.split65.thread
  %i.i = phi ptr [ %.pre, %zend_parse_arg_number.exit..critedge_crit_edge ], [ %i.d, %.split65.thread ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !17
  %i.l = icmp eq i8 %i.k, 4
  br i1 %i.l, label %zval_get_double.exit, label %bb.d

zval_get_double.exit:                             ; preds = %.critedge
  %i.m = call double @zval_get_double_func(ptr noundef nonnull %i.i) #13
  store double %i.m, ptr %1, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 5, ptr %i.n, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.o = load double, ptr %i.i, align 8, !tbaa !17
  %i.p = call double @llvm.floor.f64(double %i.o)
  store double %i.p, ptr %1, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 5, ptr %i.q, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %zval_get_double.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 1, 9) i32 @php_math_round_mode_from_enum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !17
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.g = load i8, ptr %i.f, align 4, !tbaa !17
  %i.h = sext i8 %i.g to i64
  %1 = add nsw i64 %i.h, %i.e
  %switch.tableidx = add nsw i64 %1, 4294967161
  %2 = and i64 %switch.tableidx, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.php_math_round_mode_from_enum, i64 %2
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: nounwind uwtable
define hidden void @zif_round(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 1, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17   ; 3 uses
  %i.f = add i32 %i.e, -4
  %or.cond = icmp ult i32 %i.f, -3
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 3) #13
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !17
  %i.j = and i8 %i.i, -2
  %switch90 = icmp eq i8 %i.j, 4
  br i1 %switch90, label %zend_parse_arg_number.exit.thread, label %zend_parse_arg_number.exit, !prof !19

zend_parse_arg_number.exit.thread:                ; preds = %bb.c
  store ptr %i.g, ptr %i.a, align 8, !tbaa !22
  br label %bb.d

zend_parse_arg_number.exit:                       ; preds = %bb.c
  %i.k = call zeroext i1 @zend_parse_arg_number_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i32 noundef 1) #13
  br i1 %i.k, label %bb.d, label %bb.l, !prof !23

bb.d:                                             ; preds = %zend_parse_arg_number.exit.thread, %zend_parse_arg_number.exit
  %i.l = icmp eq i32 %i.e, 1
  br i1 %i.l, label %.critedge, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !tbaa !17
  %i.p = icmp eq i8 %i.o, 4
  br i1 %i.p, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !27

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.e
  %i.q = load i64, ptr %i.m, align 8, !tbaa !17
  store i64 %i.q, ptr %i.b, align 8, !tbaa !25
  br label %bb.f

zend_parse_arg_long_ex.exit:                      ; preds = %bb.e
  %i.r = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i32 noundef 2) #13
  br i1 %i.r, label %bb.f, label %bb.l, !prof !23

bb.f:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %.not = icmp eq i32 %i.e, 3
  br i1 %.not, label %bb.g, label %.critedge, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.t = load ptr, ptr @rounding_mode_ce, align 8, !tbaa !29 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !17    ; 2 uses
  %i.w = icmp eq i8 %i.v, 8
  br i1 %i.w, label %bb.h, label %bb.i, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.t
  br i1 %i.aa, label %.critedge, label %instanceof_function.exit

instanceof_function.exit:                         ; preds = %bb.h
  %i.ab = call zeroext i1 @instanceof_function_slow(ptr noundef %i.z, ptr noundef %i.t) #13
  br i1 %i.ab, label %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, label %thread-pre-split, !prof !48

instanceof_function.exit.instanceof_function.exit.thread_crit_edge: ; preds = %instanceof_function.exit
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !17
  br label %.critedge

thread-pre-split:                                 ; preds = %instanceof_function.exit
  %.pr = load i8, ptr %i.u, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.g
  %i.ac = phi i8 [ %.pr, %thread-pre-split ], [ %i.v, %bb.g ]
  %i.ad = icmp eq i8 %i.ac, 4
  br i1 %i.ad, label %bb.j, label %zend_parse_arg_obj_or_long.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !17
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !25
  br label %.critedge

zend_parse_arg_obj_or_long.exit:                  ; preds = %bb.i
  %i.af = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, i32 noundef 3) #13
  br i1 %i.af, label %.critedge, label %bb.k, !prof !23

bb.k:                                             ; preds = %zend_parse_arg_obj_or_long.exit
  %i.ag = load ptr, ptr @rounding_mode_ce, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k, %zend_parse_arg_number.exit, %zend_parse_arg_long_ex.exit
  %.073 = phi i32 [ 0, %bb.b ], [ 2, %zend_parse_arg_long_ex.exit ], [ 3, %bb.k ], [ 1, %zend_parse_arg_number.exit ]
  %.072 = phi ptr [ null, %bb.b ], [ %i.m, %zend_parse_arg_long_ex.exit ], [ %i.s, %bb.k ], [ %i.g, %zend_parse_arg_number.exit ]
  %.071 = phi i32 [ 0, %bb.b ], [ 0, %zend_parse_arg_long_ex.exit ], [ 0, %bb.k ], [ 22, %zend_parse_arg_number.exit ]
  %.070 = phi ptr [ null, %bb.b ], [ null, %zend_parse_arg_long_ex.exit ], [ %i.aj, %bb.k ], [ null, %zend_parse_arg_number.exit ]
  %.069 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_long_ex.exit ], [ 7, %bb.k ], [ 9, %zend_parse_arg_number.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.069, i32 noundef %.073, ptr noundef %.070, i32 noundef %.071, ptr noundef %.072) #13
  br label %bb.x

.critedge:                                        ; preds = %bb.h, %instanceof_function.exit.instanceof_function.exit.thread_crit_edge, %bb.j, %bb.d, %bb.f, %zend_parse_arg_obj_or_long.exit
  %.084 = phi ptr [ null, %bb.d ], [ null, %zend_parse_arg_obj_or_long.exit ], [ null, %bb.f ], [ null, %bb.j ], [ %.pre, %instanceof_function.exit.instanceof_function.exit.thread_crit_edge ], [ %i.x, %bb.h ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !17
  %i.al = icmp ugt i32 %i.ak, 1
  br i1 %i.al, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.critedge
  %i.am = load i64, ptr %i.b, align 8, !tbaa !25  ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 2147483647)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aq = call i64 @llvm.umax.i64(i64 %i.am, i64 -2147483648)
  %i.ar = trunc nsw i64 %i.aq to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %.critedge
  %.0 = phi i32 [ %i.ap, %bb.n ], [ %i.ar, %bb.o ], [ 0, %.critedge ] ; 2 uses
  %.not78 = icmp eq ptr %.084, null
  br i1 %.not78, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %bb.p
  %.pre91 = load i64, ptr %i.c, align 8, !tbaa !25
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = call i32 @php_math_round_mode_from_enum(ptr noundef nonnull %.084)
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  store i64 %i.at, ptr %i.c, align 8, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %i.au = phi i64 [ %.pre91, %._crit_edge ], [ %i.at, %bb.q ] ; 2 uses
  %.off = add i64 %i.au, -1
  %switch = icmp ult i64 %.off, 8
  br i1 %switch, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 3, ptr noundef nonnull @.str.1) #13
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !22  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !17  ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 4
  %i.az = icmp sgt i32 %.0, -1
  %or.cond79 = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond79, label %zval_get_double.exit81, label %bb.u

zval_get_double.exit81:                           ; preds = %bb.t
  %i.ba = call double @zval_get_double_func(ptr noundef nonnull %i.av) #13
  store double %i.ba, ptr %1, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 5, ptr %i.bb, align 8, !tbaa !17
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bc = icmp eq i8 %i.ax, 5
  br i1 %i.bc, label %bb.v, label %bb.w, !prof !27

bb.v:                                             ; preds = %bb.u
  %i.bd = load double, ptr %i.av, align 8, !tbaa !17
  br label %zval_get_double.exit

bb.w:                                             ; preds = %bb.u
  %i.be = call double @zval_get_double_func(ptr noundef nonnull %i.av) #13
  %.pre92 = load i64, ptr %i.c, align 8, !tbaa !25
  br label %zval_get_double.exit

zval_get_double.exit:                             ; preds = %bb.v, %bb.w
  %i.bf = phi i64 [ %i.au, %bb.v ], [ %.pre92, %bb.w ]
end_hunk_0
