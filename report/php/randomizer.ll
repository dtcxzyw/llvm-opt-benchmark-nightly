Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/randomizer?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0_@zim_Random_Randomizer_getInt:bb.a
  %i.j = load i8, ptr %i.i, align 8, !tbaa !12
  %i.k = icmp eq i8 %i.j, 4
  br i1 %i.k, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !17

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.c
  %i.l = load i64, ptr %i.h, align 8, !tbaa !12
  store i64 %i.l, ptr %i.a, align 8, !tbaa !87
  br label %bb.d

zend_parse_arg_long_ex.exit:                      ; preds = %bb.c
  %i.m = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 1) #7
  br i1 %i.m, label %bb.d, label %.thread, !prof !84

bb.d:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !12
  %i.q = icmp eq i8 %i.p, 4
  br i1 %i.q, label %.thread82, label %zend_parse_arg_long_ex.exit69, !prof !17

.thread82:                                        ; preds = %bb.d
  %i.r = load i64, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !87
  br label %.critedge

zend_parse_arg_long_ex.exit69:                    ; preds = %bb.d
  %i.s = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.n, ptr noundef nonnull %i.b, i32 noundef 2) #7
  br i1 %i.s, label %zend_parse_arg_long_ex.exit69..critedge_crit_edge, label %.thread, !prof !88

zend_parse_arg_long_ex.exit69..critedge_crit_edge: ; preds = %zend_parse_arg_long_ex.exit69
  %.pre = load i64, ptr %i.b, align 8, !tbaa !87
  br label %.critedge

.thread:                                          ; preds = %zend_parse_arg_long_ex.exit69, %zend_parse_arg_long_ex.exit, %bb.b
  %.05881 = phi i32 [ 9, %zend_parse_arg_long_ex.exit69 ], [ 1, %bb.b ], [ 9, %zend_parse_arg_long_ex.exit ]
  %.06080 = phi ptr [ %i.n, %zend_parse_arg_long_ex.exit69 ], [ null, %bb.b ], [ %i.h, %zend_parse_arg_long_ex.exit ]
  %.06179 = phi i32 [ 2, %zend_parse_arg_long_ex.exit69 ], [ 0, %bb.b ], [ 1, %zend_parse_arg_long_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.05881, i32 noundef %.06179, ptr noundef null, i32 noundef 0, ptr noundef %.06080) #7
  br label %bb.k

.critedge:                                        ; preds = %zend_parse_arg_long_ex.exit69..critedge_crit_edge, %.thread82
  %i.t = phi i64 [ %.pre, %zend_parse_arg_long_ex.exit69..critedge_crit_edge ], [ %i.r, %.thread82 ] ; 2 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %.critedge
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 2, ptr noundef nonnull @.str.3) #7
  br label %bb.k

bb.f:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.048.0.copyload, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89   ; 2 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @php_random_algo_mt19937, i64 16), align 8, !tbaa !89
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.g, label %.critedge67

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !96
  %.not87 = icmp eq i32 %i.ab, 0
  br i1 %.not87, label %.critedge67, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @php_random_algo_mt19937, i64 8), align 8, !tbaa !81
  %i.ad = call { i64, i64 } %i.ac(ptr noundef nonnull %.sroa.5.0.copyload) #7
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = lshr i64 %i.ae, 1
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !87
  %i.ah = sitofp i64 %i.ag to double
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %i.aj = sitofp i64 %i.ai to double
  %i.ak = fsub nnan double %i.ah, %i.aj
  %i.al = fadd nnan double %i.ak, 1.000000e+00
  %i.am = uitofp nneg i64 %i.af to double
  %i.an = fmul nnan double %i.am, f0x3E00000000000000
  %i.ao = fmul double %i.an, %i.al
  %i.ap = fptoui double %i.ao to i64
  %i.aq = add i64 %i.ai, %i.ap
  br label %bb.i

.critedge67:                                      ; preds = %bb.f, %bb.g
  %i.ar = call i64 %i.x(ptr noundef %.sroa.5.0.copyload, i64 noundef %i.u, i64 noundef %i.t) #7
  br label %bb.i

bb.i:                                             ; preds = %.critedge67, %bb.h
  %.0 = phi i64 [ %i.aq, %bb.h ], [ %i.ar, %.critedge67 ]
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !67
  %.not64 = icmp eq ptr %i.as, null
  br i1 %.not64, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %.0, ptr %1, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.at, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_Random_Randomizer_getBytes(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -24
  %.sroa.056.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !70 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !71 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %cond = icmp eq i32 %i.f, 1
  br i1 %cond, label %bb.b, label %.thread91, !prof !83

.thread91:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !12
  %i.j = icmp eq i8 %i.i, 4
  br i1 %i.j, label %.thread, label %zend_parse_arg_long_ex.exit, !prof !17

.thread:                                          ; preds = %bb.b
  %i.k = load i64, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !tbaa !87
  br label %.critedge

zend_parse_arg_long_ex.exit:                      ; preds = %bb.b
  %i.l = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i32 noundef 1) #7
  br i1 %i.l, label %.critedgethread-pre-split, label %bb.c, !prof !88

bb.c:                                             ; preds = %zend_parse_arg_long_ex.exit, %.thread91
  %.06698 = phi i32 [ 1, %.thread91 ], [ 9, %zend_parse_arg_long_ex.exit ]
  %.06897 = phi ptr [ null, %.thread91 ], [ %i.g, %zend_parse_arg_long_ex.exit ]
  %.06996 = phi i32 [ 0, %.thread91 ], [ 1, %zend_parse_arg_long_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.06698, i32 noundef %.06996, ptr noundef null, i32 noundef 0, ptr noundef %.06897) #7
  br label %bb.n

.critedgethread-pre-split:                        ; preds = %zend_parse_arg_long_ex.exit
  %.pr = load i64, ptr %i.a, align 8, !tbaa !87
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %.thread
  %i.m = phi i64 [ %.pr, %.critedgethread-pre-split ], [ %i.k, %.thread ] ; 8 uses
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %zend_string_alloc.exit

bb.d:                                             ; preds = %.critedge
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 1, ptr noundef nonnull @.str.6) #7
  br label %bb.n

zend_string_alloc.exit:                           ; preds = %.critedge
  %i.o = and i64 %i.m, 9223372036854775800
  %i.p = add nuw i64 %i.o, 32
  %i.q = call noalias ptr @_emalloc(i64 noundef %i.p) #8 ; 10 uses
  store i32 1, ptr %i.q, align 4, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 22, ptr %i.r, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.m, ptr %i.t, align 8, !tbaa !86
  %.not77104 = icmp samesign ult i64 %i.m, 8
  br i1 %.not77104, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %zend_string_alloc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.w = phi i64 [ 8, %.lr.ph ], [ %i.ad, %bb.h ] ; 3 uses
  %.064105 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.h ] ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.y = call { i64, i64 } %i.x(ptr noundef %.sroa.5.0.copyload) #7 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0        ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !67
  %.not78 = icmp eq ptr %i.aa, null
  br i1 %.not78, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_efree(ptr noundef nonnull %i.q) #7
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.ab = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %.not79 = icmp eq i64 %i.ab, 8
  br i1 %.not79, label %bb.h, label %.loopexit99

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %.064105
  store i64 %i.z, ptr %i.ac, align 1
  %i.ad = add i64 %i.w, 8                         ; 2 uses
  %.not77 = icmp ugt i64 %i.ad, %i.m
  br i1 %.not77, label %.loopexit, label %bb.e, !llvm.loop !97

.loopexit:                                        ; preds = %bb.h, %zend_string_alloc.exit, %._crit_edge
  %.1 = phi i64 [ %.4, %._crit_edge ], [ 0, %zend_string_alloc.exit ], [ %i.w, %bb.h ] ; 2 uses
  %i.ae = icmp ult i64 %.1, %i.m
  br i1 %i.ae, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.ah = call { i64, i64 } %i.ag(ptr noundef %.sroa.5.0.copyload) #7 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !67
  %.not81 = icmp eq ptr %i.ak, null
  br i1 %.not81, label %.loopexit99, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_efree(ptr noundef nonnull %i.q) #7
  br label %bb.n

.loopexit99:                                      ; preds = %bb.g, %bb.i
  %.sroa.8.0 = phi i64 [ %i.aj, %bb.i ], [ %i.ab, %bb.g ] ; 2 uses
  %.sroa.06.0 = phi i64 [ %i.ai, %bb.i ], [ %i.z, %bb.g ]
  %.2 = phi i64 [ %.1, %bb.i ], [ %.064105, %bb.g ] ; 2 uses
  %.not = icmp eq i64 %.sroa.8.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.loopexit99
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph109, %bb.l
  %.0108 = phi i64 [ 0, %.lr.ph109 ], [ %i.aq, %bb.l ]
  %.3107 = phi i64 [ %.2, %.lr.ph109 ], [ %i.an, %bb.l ] ; 2 uses
  %.sroa.06.1106 = phi i64 [ %.sroa.06.0, %.lr.ph109 ], [ %i.ap, %bb.l ] ; 2 uses
  %i.am = trunc i64 %.sroa.06.1106 to i8
  %i.an = add i64 %.3107, 1                       ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.3107
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !12
  %.not80 = icmp ult i64 %i.an, %i.m
  br i1 %.not80, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %bb.k
  %i.ap = lshr i64 %.sroa.06.1106, 8
  %i.aq = add nuw i64 %.0108, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %.sroa.8.0
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.l, %bb.k, %.loopexit99
  %.4 = phi i64 [ %.2, %.loopexit99 ], [ %i.an, %bb.k ], [ %i.an, %bb.l ]
  br label %.loopexit, !llvm.loop !99

bb.m:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.m
  store i8 0, ptr %i.as, align 1, !tbaa !12
  store ptr %i.q, ptr %1, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.at, align 8, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.f, %bb.j, %bb.m, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_Random_Randomizer_shuffleArray(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %cond = icmp eq i32 %i.e, 1
  br i1 %cond, label %bb.b, label %.thread, !prof !83

.thread:                                          ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !12
  %i.i = icmp eq i8 %i.h, 7
  br i1 %i.i, label %.critedge, label %bb.c, !prof !88

bb.c:                                             ; preds = %.thread, %bb.b
  %.03754 = phi i32 [ 1, %.thread ], [ 9, %bb.b ]
  %.03853 = phi i32 [ 0, %.thread ], [ 6, %bb.b ]
  %.03952 = phi ptr [ null, %.thread ], [ %i.f, %bb.b ]
  %.04051 = phi i32 [ 0, %.thread ], [ 1, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.03754, i32 noundef %.04051, ptr noundef null, i32 noundef %.03853, ptr noundef %.03952) #7
  br label %bb.d

.critedge:                                        ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.k = tail call ptr @zend_array_dup(ptr noundef %i.j) #7
  store ptr %i.k, ptr %1, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.l, align 8, !tbaa !12
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call zeroext i1 @php_array_data_shuffle(ptr %i.m, ptr %i.o, ptr noundef nonnull %1) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  ret void
}

declare ptr @zend_array_dup(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @php_array_data_shuffle(ptr, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_Random_Randomizer_shuffleBytes(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %cond = icmp eq i32 %i.f, 1
  br i1 %cond, label %bb.b, label %.thread66, !prof !83

.thread66:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !12
  %i.j = icmp eq i8 %i.i, 6
  br i1 %i.j, label %.split76.thread, label %zend_parse_arg_str_ex.exit, !prof !17

.split76.thread:                                  ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !91
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.l = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i32 noundef 1) #7
  %cond.fr56 = freeze i1 %i.l
  br i1 %cond.fr56, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !84

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !91
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread66
  %.04675 = phi i32 [ 1, %.thread66 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.04774 = phi i32 [ 0, %.thread66 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.04873 = phi ptr [ null, %.thread66 ], [ %i.g, %zend_parse_arg_str_ex.exit ]
  %.04972 = phi i32 [ 0, %.thread66 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.04675, i32 noundef %.04972, ptr noundef null, i32 noundef %.04774, ptr noundef %.04873) #7
  br label %bb.g

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split76.thread
  %i.m = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.k, %.split76.thread ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !86   ; 6 uses
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.d, label %zend_string_init.exit

bb.d:                                             ; preds = %.critedge
  store ptr %i.m, ptr %1, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12
  %i.s = and i32 %i.r, 64
  %.not53 = icmp eq i32 %i.s, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 6, ptr %i.t, align 8, !tbaa !12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.m, align 8, !tbaa !40
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.m, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.w, align 8, !tbaa !12
  br label %bb.g

zend_string_init.exit:                            ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.y = and i64 %i.o, -8
  %i.z = add i64 %i.y, 32
  %i.aa = call noalias ptr @_emalloc(i64 noundef %i.z) #8 ; 6 uses
  store i32 1, ptr %i.aa, align 4, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 22, ptr %i.ab, align 4, !tbaa !12
end_hunk_0
