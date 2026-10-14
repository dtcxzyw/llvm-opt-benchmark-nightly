Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_date?download=true
inline.NumInlined: 259
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@php_date_initialize:bb.a
  %spec.select107 = sext i8 %narrow to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !134
  %i.ad = call ptr (ptr, i64, ptr, ...) @zend_throw_exception_ex(ptr noundef %i.v, i64 noundef 0, ptr noundef nonnull @.str.39, ptr noundef %.280, i32 noundef %i.y, i32 noundef %spec.select107, ptr noundef %i.ac) #21 ; 0 uses
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %.not99 = icmp eq ptr %.pr.pre, null
  br i1 %.not99, label %thread-pre-split.thread143, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.p, %update_errors_warnings.exit, %thread-pre-split
  %i.ae = phi ptr [ %.pr.pre, %thread-pre-split ], [ %i.m, %update_errors_warnings.exit ], [ %i.m, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !124
  %.not100 = icmp eq i32 %i.ag, 0
  br i1 %.not100, label %thread-pre-split.thread143, label %bb.q

bb.q:                                             ; preds = %thread-pre-split.thread
  %i.ah = load ptr, ptr %0, align 8, !tbaa !75
  call void @timelib_time_dtor(ptr noundef %i.ah) #21
  store ptr null, ptr %0, align 8, !tbaa !75
  br label %bb.ac

thread-pre-split.thread143:                       ; preds = %bb.l, %bb.o, %thread-pre-split.thread, %thread-pre-split
  %.not101 = icmp eq ptr %4, null
  br i1 %.not101, label %bb.s, label %bb.r

bb.r:                                             ; preds = %thread-pre-split.thread143
  %i.ai = load ptr, ptr %4, align 8, !tbaa !30    ; 6 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -28 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !136
  switch i32 %i.ak, label %.critedge [
    i32 3, label %.thread118
    i32 1, label %.thread123
    i32 2, label %bb.u
  ]

.thread118:                                       ; preds = %bb.r
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  br label %.sink.split

.thread123:                                       ; preds = %bb.r
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !30
  %i.ap = call ptr @timelib_time_ctor() #21       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  store i32 1, ptr %i.aq, align 8, !tbaa !82
  br label %bb.w

.critedge:                                        ; preds = %bb.r
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.40) #21
  br label %bb.ac

bb.s:                                             ; preds = %thread-pre-split.thread143
  %i.ar = load ptr, ptr %0, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92 ; 2 uses
  %.not102 = icmp eq ptr %i.at, null
  br i1 %.not102, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %bb.s
  %i.au = call ptr @get_timezone_info()           ; 2 uses
  %.not103 = icmp eq ptr %i.au, null
  br i1 %.not103, label %bb.ac, label %.sink.split

bb.u:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !30 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !30
  %i.az = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.bb = call noalias ptr @_estrdup(ptr noundef %i.ba) #21
  %.pr117 = load i32, ptr %i.aj, align 4, !tbaa !136 ; 2 uses
  %i.bc = call ptr @timelib_time_ctor() #21       ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 232
  store i32 %.pr117, ptr %i.bd, align 8, !tbaa !82
  switch i32 %.pr117, label %bb.y [
    i32 3, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

.sink.split:                                      ; preds = %bb.s, %bb.t, %.thread118
  %.275115.ph = phi ptr [ %i.am, %.thread118 ], [ %i.at, %bb.s ], [ %i.au, %bb.t ]
  %i.be = call ptr @timelib_time_ctor() #21       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 232
  store i32 3, ptr %i.bf, align 8, !tbaa !82
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.u
  %i.bg = phi ptr [ %i.bc, %bb.u ], [ %i.be, %.sink.split ] ; 2 uses
  %.275115 = phi ptr [ null, %bb.u ], [ %.275115.ph, %.sink.split ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  store ptr %.275115, ptr %i.bh, align 8, !tbaa !92
  br label %bb.y

bb.w:                                             ; preds = %.thread123, %bb.u
  %i.bi = phi ptr [ %i.ap, %.thread123 ], [ %i.bc, %bb.u ] ; 2 uses
  %.064129 = phi i64 [ %i.ao, %.thread123 ], [ %i.aw, %bb.u ]
  %i.bj = trunc i64 %.064129 to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !83
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bl = trunc i64 %i.aw to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !83
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  store i32 %i.ay, ptr %i.bn, align 8, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store ptr %i.bb, ptr %i.bo, align 8, !tbaa !89
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.bp = phi ptr [ %i.bc, %bb.x ], [ %i.bi, %bb.w ], [ %i.bg, %bb.v ], [ %i.bc, %bb.u ] ; 5 uses
  %.275116 = phi ptr [ null, %bb.x ], [ null, %bb.w ], [ %.275115, %bb.v ], [ null, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bq = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #21 ; 0 uses
  %i.br = load i64, ptr %6, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @timelib_unixtime2local(ptr noundef nonnull %i.bp, i64 noundef %i.br) #21
  %i.bu = shl i64 %i.bt, 32
  %i.bv = ashr exact i64 %i.bu, 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !101
  %i.bx = icmp eq i64 %.182, 3
  %or.cond3 = and i1 %.not94, %i.bx
  br i1 %or.cond3, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.by = load i16, ptr %.280, align 1
  %i.bz = xor i16 %i.by, 28526
  %i.ca = getelementptr i8, ptr %.280, i64 2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i16
  %i.cd = xor i16 %i.cc, 119
  %i.ce = or i16 %i.bz, %i.cd
  %i.cf = icmp ne i16 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = load ptr, ptr %0, align 8, !tbaa !75
  call void @timelib_time_dtor(ptr noundef %i.ci) #21
  store ptr %i.bp, ptr %0, align 8, !tbaa !75
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.cj = and i32 %5, 2
  %.not104 = icmp eq i32 %i.cj, 0
  %spec.select108 = select i1 %.not104, i32 2, i32 3
  %i.ck = load ptr, ptr %0, align 8, !tbaa !75
  call void @timelib_fill_holes(ptr noundef %i.ck, ptr noundef nonnull %i.bp, i32 noundef %spec.select108) #21
  %i.cl = load ptr, ptr %0, align 8, !tbaa !75
  call void @timelib_update_ts(ptr noundef %i.cl, ptr noundef %.275116) #21
  %i.cm = load ptr, ptr %0, align 8, !tbaa !75
  call void @timelib_update_from_sse(ptr noundef %i.cm) #21
  %i.cn = load ptr, ptr %0, align 8, !tbaa !75
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 212
  store i32 0, ptr %i.co, align 4, !tbaa !137
  call void @timelib_time_dtor(ptr noundef nonnull %i.bp) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.t, %.critedge, %bb.ab, %bb.aa, %bb.q
  %.177 = phi i1 [ false, %bb.q ], [ true, %bb.aa ], [ true, %bb.ab ], [ false, %.critedge ], [ false, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.177
}

declare ptr @timelib_parse_from_format(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @zend_throw_exception_ex(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @timelib_update_from_sse(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @php_date_initialize_from_ts_long(ptr nofree noundef captures(none) initializes((0, 8)) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @timelib_time_ctor() #21   ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 1, ptr %i.b, align 8, !tbaa !82
  tail call void @timelib_unixtime2gmt(ptr noundef %i.a, i64 noundef %1) #21
  %i.c = load ptr, ptr %0, align 8, !tbaa !75
  tail call void @timelib_update_ts(ptr noundef %i.c, ptr noundef null) #21
  %i.d = load ptr, ptr %0, align 8, !tbaa !75
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.e, ptr %i.f, align 8, !tbaa !101
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @php_date_initialize_from_ts_double(ptr nofree noundef captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.trunc.f64(double %1) ; 4 uses
  %i.b = fcmp uno double %i.a, 0.000000e+00
  %i.c = fcmp oge double %i.a, f0x43E0000000000000
  %i.d = fcmp olt double %i.a, f0xC3E0000000000000
  %i.e = or i1 %i.c, %i.d
  %i.f = or i1 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @date_ce_date_range_error, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @zend_argument_error(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.41, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, double noundef %1) #21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = fptosi double %i.a to i64                ; 4 uses
  %i.i = tail call double @fmod(double noundef %1, double noundef 1.000000e+00) #21
  %i.j = fmul double %i.i, 1.000000e+06
  %i.k = tail call double @llvm.round.f64(double %i.j)
  %i.l = fptosi double %i.k to i32                ; 5 uses
  %i.m = tail call i32 @llvm.abs.i32(i32 %i.l, i1 true)
  %i.n = icmp eq i32 %i.m, 1000000
  br i1 %i.n, label %.thread, label %bb.d, !prof !114

.thread:                                          ; preds = %bb.c
  %.inv = icmp slt i32 %i.l, 1
  %i.o = select i1 %.inv, i64 -1, i64 1
  %i.p = add nsw i64 %i.o, %i.h
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %i.l, 0
  br i1 %i.q, label %bb.e, label %bb.h, !prof !253

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.r, label %bb.f, label %bb.g, !prof !114

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @date_ce_date_range_error, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @zend_argument_error(ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull @.str.41, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, double noundef %1) #21
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.t = add nsw i64 %i.h, -1
  %i.u = add nsw i32 %i.l, 1000000
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.d
  %.119 = phi i64 [ %i.t, %bb.g ], [ %i.h, %bb.d ], [ %i.p, %.thread ]
  %.1 = phi i32 [ %i.u, %bb.g ], [ %i.l, %bb.d ], [ 0, %.thread ]
  %i.v = tail call ptr @timelib_time_ctor() #21   ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 232
  store i32 1, ptr %i.w, align 8, !tbaa !82
  tail call void @timelib_unixtime2gmt(ptr noundef %i.v, i64 noundef %.119) #21
  %i.x = load ptr, ptr %0, align 8, !tbaa !75
  tail call void @timelib_update_ts(ptr noundef %i.x, ptr noundef null) #21
  %i.y = load ptr, ptr %0, align 8, !tbaa !75
  %i.z = sext i32 %.1 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !101
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.b
  %.020 = phi i1 [ false, %bb.b ], [ false, %bb.f ], [ true, %bb.h ]
  ret i1 %.020
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #10

declare void @zend_argument_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #10

; Function Attrs: nounwind uwtable
define hidden void @zif_date_create(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 3 uses
  %i.d = icmp ugt i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 0, i32 noundef 2) #21
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %.critedge, label %bb.d, !prof !114

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !16

zend_parse_arg_str_ex.exit:                       ; preds = %bb.d
  %i.j = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 1) #21
  br i1 %i.j, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_string.exit

zend_parse_arg_string.exit:                       ; preds = %zend_parse_arg_str_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.j

zend_parse_arg_str_ex.exit.thread:                ; preds = %zend_parse_arg_str_ex.exit, %bb.d
  %.in = phi ptr [ %i.f, %bb.d ], [ %i.a, %zend_parse_arg_str_ex.exit ]
  %i.k = load ptr, ptr %.in, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41   ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.e, label %.critedge, !prof !16

bb.e:                                             ; preds = %zend_parse_arg_str_ex.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.p = load ptr, ptr @date_ce_timezone, align 8, !tbaa !22 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !30    ; 2 uses
  %i.s = icmp eq i8 %i.r, 8
  br i1 %i.s, label %bb.f, label %bb.h, !prof !16

bb.f:                                             ; preds = %bb.e
  %.not.i58 = icmp eq ptr %i.p, null
  br i1 %.not.i58, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !138  ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %.critedge, label %instanceof_function.exit

instanceof_function.exit:                         ; preds = %bb.g
  %i.x = call zeroext i1 @instanceof_function_slow(ptr noundef %i.v, ptr noundef nonnull %i.p) #21
  br i1 %i.x, label %.critedge, label %thread-pre-split, !prof !139

thread-pre-split:                                 ; preds = %instanceof_function.exit
  %.pr = load i8, ptr %i.q, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.e
  %i.y = phi i8 [ %.pr, %thread-pre-split ], [ %i.r, %bb.e ]
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %.critedge, label %zend_parse_arg_object.exit, !prof !16

zend_parse_arg_object.exit:                       ; preds = %bb.h
  %i.aa = load ptr, ptr @date_ce_timezone, align 8, !tbaa !22 ; 2 uses
  %.not55 = icmp eq ptr %i.aa, null
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %zend_parse_arg_object.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %bb.j

bb.j:                                             ; preds = %zend_parse_arg_string.exit, %bb.b, %bb.i, %zend_parse_arg_object.exit
  %.052 = phi i32 [ 0, %bb.b ], [ 2, %bb.i ], [ 2, %zend_parse_arg_object.exit ], [ 1, %zend_parse_arg_string.exit ]
  %.051 = phi ptr [ null, %bb.b ], [ %i.o, %bb.i ], [ %i.o, %zend_parse_arg_object.exit ], [ %i.f, %zend_parse_arg_string.exit ]
  %.050 = phi i32 [ 0, %bb.b ], [ 0, %bb.i ], [ 19, %zend_parse_arg_object.exit ], [ 4, %zend_parse_arg_string.exit ]
  %.049 = phi ptr [ null, %bb.b ], [ %i.ad, %bb.i ], [ null, %zend_parse_arg_object.exit ], [ null, %zend_parse_arg_string.exit ]
  %.048 = phi i32 [ 1, %bb.b ], [ 4, %bb.i ], [ 9, %zend_parse_arg_object.exit ], [ 9, %zend_parse_arg_string.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.048, i32 noundef %.052, ptr noundef %.049, i32 noundef %.050, ptr noundef %.051) #21
  br label %bb.l

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.f, %instanceof_function.exit, %zend_parse_arg_str_ex.exit.thread, %bb.c
  %.064 = phi ptr [ null, %bb.c ], [ null, %zend_parse_arg_str_ex.exit.thread ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.o, %instanceof_function.exit ], [ null, %bb.h ]
  %.062 = phi ptr [ null, %bb.c ], [ %i.l, %zend_parse_arg_str_ex.exit.thread ], [ %i.l, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %instanceof_function.exit ], [ %i.l, %bb.h ]
  %.0 = phi i64 [ 0, %bb.c ], [ %i.n, %zend_parse_arg_str_ex.exit.thread ], [ %i.n, %bb.g ], [ %i.n, %bb.f ], [ %i.n, %instanceof_function.exit ], [ %i.n, %bb.h ]
  %i.ae = load ptr, ptr @date_ce_date, align 8, !tbaa !22
  %i.af = call i32 @object_init_ex(ptr noundef %1, ptr noundef %i.ae) #21 ; 0 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !30
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ai = call zeroext i1 @php_date_initialize(ptr noundef nonnull %i.ah, ptr noundef %.062, i64 noundef %.0, ptr noundef null, ptr noundef %.064, i32 noundef 0)
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.aj, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %.critedge, %bb.k
  ret void
}

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @zif_date_create_immutable(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 3 uses
  %i.d = icmp ugt i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c, !prof !114

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 0, i32 noundef 2) #21
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %.critedge, label %bb.d, !prof !114

bb.d:                                             ; preds = %bb.c
end_hunk_0
