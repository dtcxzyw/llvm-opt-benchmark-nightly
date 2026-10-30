Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/parsers?download=true
inline.NumInlined: 274
inline.NumDeleted: 10
begin_hunk_0_@_dump_INT64_NO_VAL:bb.a
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.h, align 1
  br label %find_parser_by_type.exit

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.i, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.f, %bb.h, %bb.g
  %i.j = call i32 @dump(ptr noundef nonnull %4, i64 noundef 16, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 72960), ptr noundef %2, ptr noundef nonnull %3) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.d, %find_parser_by_type.exit
  %.0 = phi i32 [ %i.j, %find_parser_by_type.exit ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_INT64_NO_VAL(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %5 = alloca %struct.INT64_NO_VAL_t, align 8     ; 7 uses
  %i.b = tail call i32 @data_get_type(ptr noundef %2) #19
  switch i32 %i.b, label %bb.m [
    i32 1, label %bb.b
    i32 6, label %bb.c
    i32 3, label %find_parser_by_type.exit
    i32 5, label %bb.i
    i32 4, label %find_parser_by_type.exit44
    i32 2, label %bb.k
    i32 7, label %bb.k
    i32 0, label %bb.l
    i32 8, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %1, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call i32 @_parse_FLOAT64_NO_VAL(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not40 = icmp eq i32 %i.c, 0
  br i1 %.not40, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c
  %i.d = load double, ptr %i.a, align 8           ; 3 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d) #20
  %i.f = fcmp oeq double %i.e, +inf
  %i.g = fcmp uno double %i.d, 0.000000e+00
  %i.h = fptosi double %i.d to i64
  %spec.select = select i1 %i.g, i64 -2, i64 %i.h
  %.sink = select i1 %i.f, i64 -1, i64 %spec.select
  store i64 %.sink, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.n

find_parser_by_type.exit:                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.i = call i32 @parse(ptr noundef nonnull %5, i64 noundef 16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 72960), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19 ; 2 uses
  %.not39 = icmp eq i32 %i.i, 0
  br i1 %.not39, label %bb.e, label %bb.h

bb.e:                                             ; preds = %find_parser_by_type.exit
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.sink.split45, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %5, align 8, !range !12, !noundef !13
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %.sink.split45

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i64, ptr %i.o, align 8
  br label %.sink.split45

.sink.split45:                                    ; preds = %bb.f, %bb.e, %bb.g
  %.sink46 = phi i64 [ -1, %bb.e ], [ %i.p, %bb.g ], [ -2, %bb.f ]
  store i64 %.sink46, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split45, %find_parser_by_type.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.q = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 4) #19
  %.not = icmp eq i32 %i.q, 4
  br i1 %.not, label %find_parser_by_type.exit44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_INT64_NO_VAL, ptr noundef nonnull @.str.1123, i32 noundef 9202, ptr noundef nonnull @.str.1114, ptr noundef %2) ; 0 uses
  br label %bb.n

find_parser_by_type.exit44:                       ; preds = %bb.i, %bb.a
  %i.s = tail call i32 @parse(ptr noundef %1, i64 noundef 8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 1536), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %bb.n

bb.k:                                             ; preds = %bb.a, %bb.a
  %i.t = tail call i32 (ptr, ptr, ptr, ptr, ptr, i32, ptr, ...) @_parse_error_funcname(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @__func__._parse_INT64_NO_VAL, ptr noundef nonnull @.str.1124, i32 noundef 9202, ptr noundef nonnull @.str.1114, ptr noundef %2) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1125) #21
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1117) #21
  unreachable

bb.n:                                             ; preds = %bb.k, %find_parser_by_type.exit44, %bb.j, %bb.h, %bb.d, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.d ], [ %i.i, %bb.h ], [ 9202, %bb.j ], [ %i.s, %find_parser_by_type.exit44 ], [ 9202, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_FLOAT128(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %1, align 8
  %i.e = icmp eq i64 %i.d, -1                     ; 2 uses
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %is_overloaded_INFINITE.exit, label %is_overloaded_INFINITE.exit.thread

is_overloaded_INFINITE.exit:                      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %is_overloaded_INFINITE.exit.thread

bb.c:                                             ; preds = %is_overloaded_INFINITE.exit
  %i.i = tail call ptr @data_set_float(ptr noundef %2, double noundef +inf) #19 ; 0 uses
  br label %bb.s

is_overloaded_INFINITE.exit.thread:               ; preds = %bb.b, %is_overloaded_INFINITE.exit
  %i.j = load x86_fp80, ptr %1, align 16          ; 4 uses
  %i.k = fcmp oeq x86_fp80 %i.j, f0x401EFFFFFFFE00000000
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %is_overloaded_INFINITE.exit.thread
  %i.l = tail call ptr @data_set_null(ptr noundef %2) #19 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %is_overloaded_INFINITE.exit.thread
  %i.m = fcmp ogt x86_fp80 %i.j, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @data_set_float(ptr noundef %2, double noundef +inf) #19 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = load x86_fp80, ptr %1, align 16
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.p, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1126, x86_fp80 noundef %i.q) #19
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.r = fcmp olt x86_fp80 %i.j, f0xC3FEFFFFFFFFFFFFF800
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @data_set_float(ptr noundef %2, double noundef -inf) #19 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = load x86_fp80, ptr %1, align 16
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.u, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1127, x86_fp80 noundef %i.v) #19
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.w = fptrunc x86_fp80 %i.j to double
  %i.x = tail call ptr @data_set_float(ptr noundef %2, double noundef %i.w) #19 ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  br i1 %i.e, label %is_overloaded_INFINITE.exit43, label %is_overloaded_INFINITE.exit43.thread

is_overloaded_INFINITE.exit43:                    ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %bb.k, label %is_overloaded_INFINITE.exit43.thread

is_overloaded_INFINITE.exit43.thread:             ; preds = %bb.j, %is_overloaded_INFINITE.exit43
  %i.ab = load x86_fp80, ptr %1, align 16         ; 6 uses
  %i.ac = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.ab) #20
  %i.ad = fcmp oeq x86_fp80 %i.ac, +inf
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %is_overloaded_INFINITE.exit43.thread, %is_overloaded_INFINITE.exit43
  %i.ae = tail call ptr @data_set_float(ptr noundef %2, double noundef f0x43F0000000000000) #19 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.ag, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1100, ptr noundef nonnull @.str.1108) #19
  br label %bb.s

bb.l:                                             ; preds = %is_overloaded_INFINITE.exit43.thread
  %4 = fcmp oeq x86_fp80 %i.ab, f0x401EFFFFFFFE00000000
  %5 = fcmp uno x86_fp80 %i.ab, 0.000000e+00
  %or.cond = or i1 %4, %5
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call ptr @data_set_float(ptr noundef %2, double noundef f0x41EFFFFFFFC00000) #19 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.aj, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1103) #19
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ak = fcmp ogt x86_fp80 %i.ab, f0x43FEFFFFFFFFFFFFF800
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = tail call ptr @data_set_float(ptr noundef %2, double noundef +inf) #19 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = load x86_fp80, ptr %1, align 16
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.an, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1126, x86_fp80 noundef %i.ao) #19
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ap = fcmp olt x86_fp80 %i.ab, f0xC3FEFFFFFFFFFFFFF800
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call ptr @data_set_float(ptr noundef %2, double noundef -inf) #19 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = load x86_fp80, ptr %1, align 16
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.as, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT128, ptr noundef nonnull @.str.1127, x86_fp80 noundef %i.at) #19
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.au = fptrunc x86_fp80 %i.ab to double
  %i.av = tail call ptr @data_set_float(ptr noundef %2, double noundef %i.au) #19 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.o, %bb.r, %bb.q, %bb.m, %bb.c, %bb.f, %bb.i, %bb.h, %bb.d
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9203) i32 @_parse_FLOAT128(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #5 {
bb.a:
  %i.a = tail call i32 @data_get_type(ptr noundef %2) #19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 6) #19
  %i.d = icmp eq i32 %i.c, 6
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call double @data_get_float(ptr noundef %2) #19
  %i.f = fpext double %i.e to x86_fp80
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sink = phi x86_fp80 [ %i.f, %bb.c ], [ f0x401EFFFFFFFE00000000, %bb.a ]
  store x86_fp80 %.sink, ptr %1, align 16
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 9202, %bb.b ], [ 0, %.sink.split ] ; 3 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.h = and i64 %i.g, 256
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @get_log_level() #19
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load x86_fp80, ptr %1, align 16
  %i.l = tail call ptr @slurm_strerror(i32 noundef %.0) #19
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.1128, ptr noundef nonnull @__func__._parse_FLOAT128, x86_fp80 noundef %i.k, i32 noundef %.0, ptr noundef %i.l) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_dump_FLOAT64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i64, ptr %1, align 8                ; 2 uses
  %i.e = icmp eq i64 %i.d, -1                     ; 2 uses
  %i.f = bitcast i64 %i.d to double               ; 6 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @data_set_float(ptr noundef %2, double noundef +inf) #19 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.h = fcmp oeq double %i.f, f0x41EFFFFFFFC00000
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @data_set_null(ptr noundef %2) #19 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.j = tail call ptr @data_set_float(ptr noundef %2, double noundef %i.f) #19 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.k = tail call double @llvm.fabs.f64(double %i.f) #20
  %i.l = fcmp oeq double %i.k, +inf
  %or.cond22 = select i1 %i.e, i1 true, i1 %i.l
  br i1 %or.cond22, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @data_set_float(ptr noundef %2, double noundef f0x43F0000000000000) #19 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.o, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT64, ptr noundef nonnull @.str.1100, ptr noundef nonnull @.str.1108) #19
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %4 = fcmp oeq double %i.f, f0x41EFFFFFFFC00000
  %5 = fcmp uno double %i.f, 0.000000e+00
  %or.cond = or i1 %4, %5
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @data_set_float(ptr noundef %2, double noundef f0x41EFFFFFFFC00000) #19 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8
  tail call void (i32, i32, ptr, ptr, ptr, ptr, ...) @on_warn(i32 noundef 44718, i32 noundef %i.r, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @__func__._dump_FLOAT64, ptr noundef nonnull @.str.1102, ptr noundef nonnull @.str.1103) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.s = tail call ptr @data_set_float(ptr noundef %2, double noundef %i.f) #19 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 9203) i32 @_parse_FLOAT64(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #5 {
bb.a:
  %i.a = tail call i32 @data_get_type(ptr noundef %2) #19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @data_convert_type(ptr noundef %2, i32 noundef 6) #19
  %i.d = icmp eq i32 %i.c, 6
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call double @data_get_float(ptr noundef %2) #19
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sink = phi double [ %i.e, %bb.c ], [ 0.000000e+00, %bb.a ]
  store double %.sink, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 9202, %bb.b ], [ 0, %.sink.split ] ; 3 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.g = and i64 %i.f, 256
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @get_log_level() #19
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load double, ptr %1, align 8
  %i.k = tail call ptr @slurm_strerror(i32 noundef %.0) #19
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.1129, ptr noundef nonnull @__func__._parse_FLOAT64, double noundef %i.j, i32 noundef %.0, ptr noundef %i.k) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_dump_FLOAT64_NO_VAL(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %4 = alloca %struct.FLOAT64_NO_VAL_t, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = load double, ptr %1, align 8             ; 6 uses
  %i.e = fptoui double %i.d to i32                ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  %i.g = tail call double @llvm.fabs.f64(double %i.d) #20
  %i.h = fcmp oeq double %i.g, +inf
  %or.cond22 = or i1 %i.f, %i.h                   ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %or.cond22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @data_set_string(ptr noundef %2, ptr noundef nonnull @.str.1107) #19 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.e, -2
  %i.k = fcmp uno double %i.d, 0.000000e+00
  %or.cond20 = or i1 %i.k, %i.j
  br i1 %or.cond20, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @data_set_null(ptr noundef %2) #19 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr @data_set_float(ptr noundef %2, double noundef %i.d) #19 ; 0 uses
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  br i1 %or.cond22, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.n, align 1
  br label %find_parser_by_type.exit

bb.i:                                             ; preds = %bb.g
  %i.o = icmp eq i32 %i.e, -2
  %i.p = fcmp uno double %i.d, 0.000000e+00
  %or.cond23 = or i1 %i.p, %i.o
  br i1 %or.cond23, label %find_parser_by_type.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.d, ptr %i.q, align 8
  br label %find_parser_by_type.exit

find_parser_by_type.exit:                         ; preds = %bb.j, %bb.i, %bb.h
  %i.r = call i32 @dump(ptr noundef nonnull %4, i64 noundef 16, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 71424), ptr noundef %2, ptr noundef nonnull %3) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.f, %bb.e, %find_parser_by_type.exit
  %.0 = phi i32 [ %i.r, %find_parser_by_type.exit ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_FLOAT64_NO_VAL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.FLOAT64_NO_VAL_t, align 8   ; 7 uses
  %i.b = tail call i32 @data_get_type(ptr noundef %2) #19
  switch i32 %i.b, label %bb.q [
    i32 1, label %bb.b
    i32 4, label %bb.c
    i32 3, label %find_parser_by_type.exit
    i32 5, label %bb.l
    i32 6, label %bb.n
    i32 2, label %bb.o
    i32 7, label %bb.o
    i32 0, label %bb.p
    i32 8, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  store double f0x41EFFFFFFFC00000, ptr %1, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call i32 @_parse_INT64_NO_VAL(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not38 = icmp eq i32 %i.c, 0
  br i1 %.not38, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  switch i64 %i.d, label %bb.f [
    i64 -1, label %.sink.split
    i64 -2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.e = sitofp i64 %i.d to double
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi double [ f0x41EFFFFFFFC00000, %bb.e ], [ %i.e, %bb.f ], [ f0x43F0000000000000, %bb.d ]
  store double %.sink, ptr %1, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.r

find_parser_by_type.exit:                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.f = call i32 @parse(ptr noundef nonnull %5, i64 noundef 16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @parsers, i64 71424), ptr noundef %2, ptr noundef %3, ptr noundef %4) #19 ; 2 uses
  %.not37 = icmp eq i32 %i.f, 0
  br i1 %.not37, label %bb.h, label %bb.k

bb.h:                                             ; preds = %find_parser_by_type.exit
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !12, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.sink.split39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load i8, ptr %5, align 8, !range !12, !noundef !13
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.j, label %.sink.split39

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_0
