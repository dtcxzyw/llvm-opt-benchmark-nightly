Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/object?download=true
inline.NumInlined: 440
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rb_convert_to_integer:bb.a
  %i.cc = icmp eq i64 %i.cb, 10
  br i1 %i.cc, label %rb_integer_type_p.exit51.thread, label %rb_integer_type_p.exit51.thread65

rb_integer_type_p.exit51.thread65:                ; preds = %bb.w, %rb_integer_type_p.exit51
  tail call fastcc void @conversion_mismatch(i64 noundef %.033, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.153, i64 noundef %i.bt) #25
  unreachable

rb_integer_type_p.exit51.thread:                  ; preds = %rb_integer_type_p.exit48.thread, %rb_integer_type_p.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cd = load ptr, ptr %i.bm, align 8, !tbaa !32
  store volatile ptr %i.cd, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..i52 = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = getelementptr i8, ptr %.0..0..0..0..0..0..i52, i64 16
  store ptr %i.bp, ptr %i.ce, align 8, !tbaa !69
  br label %rb_to_integer_with_id_exception.exit

rb_to_integer_with_id_exception.exit:             ; preds = %bb.q, %RB_FLOAT_TYPE_P.exit.thread54, %rb_integer_type_p.exit51.thread, %rb_integer_type_p.exit48, %rb_integer_type_p.exit46, %bb.o, %rb_integer_type_p.exit, %bb.k, %bb.l, %rb_float_value_inline.exit, %bb.c, %bb.u, %bb.s, %bb.n
  %.1 = phi i64 [ %i.bg, %bb.s ], [ 4, %bb.c ], [ 4, %rb_float_value_inline.exit ], [ %i.ar, %bb.n ], [ %.033, %rb_integer_type_p.exit ], [ 4, %bb.o ], [ %.033, %RB_FLOAT_TYPE_P.exit.thread54 ], [ %i.bh, %bb.u ], [ %i.ad, %bb.k ], [ %i.ae, %bb.l ], [ %i.au, %rb_integer_type_p.exit46 ], [ %i.bt, %rb_integer_type_p.exit51.thread ], [ %.033, %rb_integer_type_p.exit48 ], [ %i.au, %bb.q ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_check_integer_type(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = trunc i64 %0 to i1
  br i1 %i.e, label %rb_to_integer_with_id_exception.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %0, 0
  %i.g = and i64 %0, 6
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rb_integer_type_p.exit.thread9, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.b
  %i.j = inttoptr i64 %0 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 10
  br i1 %i.m, label %rb_to_integer_with_id_exception.exit, label %rb_integer_type_p.exit.thread9

rb_integer_type_p.exit.thread9:                   ; preds = %bb.b, %rb_integer_type_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  store volatile ptr %i.o, ptr %i.d, align 8, !tbaa !32
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.p = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile ptr %i.o, ptr %i.c, align 8, !tbaa !32
  %.0..0..0..0..0..0..i2 = load volatile ptr, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = getelementptr i8, ptr %.0..0..0..0..0..0..i2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72
  tail call void @rb_yjit_lazy_push_frame(ptr noundef %i.t) #21
  %i.u = tail call i64 @rb_check_funcall(i64 noundef %0, i64 noundef 3249, i32 noundef 0, ptr noundef null) #21 ; 7 uses
  switch i64 %i.u, label %bb.c [
    i64 36, label %convert_type_with_id.exit.thread
    i64 4, label %convert_type_with_id.exit.thread
  ]

convert_type_with_id.exit.thread:                 ; preds = %rb_integer_type_p.exit.thread9, %rb_integer_type_p.exit.thread9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !32
  store volatile ptr %i.v, ptr %i.b, align 8, !tbaa !32
  %.0..0..0..0..0..0..i4 = load volatile ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %rb_to_integer_with_id_exception.exit.sink.split

bb.c:                                             ; preds = %rb_integer_type_p.exit.thread9
  %i.w = trunc i64 %i.u to i1
  br i1 %i.w, label %rb_integer_type_p.exit6.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %i.u, 0
  %i.y = and i64 %i.u, 6
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rb_integer_type_p.exit6.thread13, label %rb_integer_type_p.exit6

rb_integer_type_p.exit6:                          ; preds = %bb.d
  %i.ab = inttoptr i64 %i.u to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !33
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 10
  br i1 %i.ae, label %rb_integer_type_p.exit6.thread, label %rb_integer_type_p.exit6.thread13

rb_integer_type_p.exit6.thread13:                 ; preds = %bb.d, %rb_integer_type_p.exit6
  tail call fastcc void @conversion_mismatch(i64 noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i64 noundef %i.u) #25
  unreachable

rb_integer_type_p.exit6.thread:                   ; preds = %bb.c, %rb_integer_type_p.exit6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !32
  store volatile ptr %i.af, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..i7 = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %rb_to_integer_with_id_exception.exit.sink.split

rb_to_integer_with_id_exception.exit.sink.split:  ; preds = %rb_integer_type_p.exit6.thread, %convert_type_with_id.exit.thread
  %.0..0..0..0..0..i4.sink = phi ptr [ %.0..0..0..0..0..0..i4, %convert_type_with_id.exit.thread ], [ %.0..0..0..0..0..0..i7, %rb_integer_type_p.exit6.thread ]
  %.0.i.ph = phi i64 [ 4, %convert_type_with_id.exit.thread ], [ %i.u, %rb_integer_type_p.exit6.thread ]
  %i.ag = getelementptr i8, ptr %.0..0..0..0..0..i4.sink, i64 16
  store ptr %i.q, ptr %i.ag, align 8, !tbaa !69
  br label %rb_to_integer_with_id_exception.exit

rb_to_integer_with_id_exception.exit:             ; preds = %rb_to_integer_with_id_exception.exit.sink.split, %bb.a, %rb_integer_type_p.exit
  %.0.i = phi i64 [ %0, %rb_integer_type_p.exit ], [ %0, %bb.a ], [ %.0.i.ph, %rb_to_integer_with_id_exception.exit.sink.split ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_bool_expected(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  switch i64 %0, label %bb.c [
    i64 20, label %bb.f
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @rb_bool_expected.message, ptr noundef %1, i64 noundef %0) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @rb_bool_expected.message, ptr noundef %1, i64 noundef %0) #21
  %i.b = icmp ne i64 %0, 4
  %i.c = zext i1 %i.b to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.b
  %.0 = phi i32 [ %i.c, %bb.e ], [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @rb_opts_exception_p(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call i32 @rb_get_kwargs(i64 noundef %0, ptr noundef nonnull @rb_opts_exception_p.kwds, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) #21
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %rb_bool_expected.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  switch i64 %i.c, label %bb.d [
    i64 20, label %rb_bool_expected.exit
    i64 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %rb_bool_expected.exit

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eArgError, align 8, !tbaa !18
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @rb_bool_expected.message, ptr noundef nonnull @.str.18, i64 noundef %i.c) #22
  unreachable

rb_bool_expected.exit:                            ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @rb_cstr_to_dbl(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc double @rb_cstr_to_dbl_raise(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, i32 noundef 1, ptr noundef null)
  ret double %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @rb_cstr_to_dbl_raise(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca [70 x i8], align 16               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not = icmp eq ptr %0, null
  %.0102.idx.ph.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %.0102.idx.ph.sroa.gep237 = getelementptr inbounds nuw i8, ptr %i.b, i64 69
  br i1 %.not, label %bb.au, label %.preheader187

.preheader187:                                    ; preds = %bb.a, %5
  %.0119 = phi ptr [ %6, %5 ], [ %0, %bb.a ]      ; 11 uses
  %i.c = load i8, ptr %.0119, align 1, !tbaa !38  ; 2 uses
  switch i8 %i.c, label %bb.b [
    i8 32, label %5
    i8 13, label %5
    i8 12, label %5
    i8 11, label %5
    i8 10, label %5
    i8 9, label %5
  ]

5:                                                ; preds = %.preheader187, %.preheader187, %.preheader187, %.preheader187, %.preheader187, %.preheader187
  %6 = getelementptr i8, ptr %.0119, i64 1
  br label %.preheader187, !llvm.loop !95

bb.b:                                             ; preds = %.preheader187
  %.not138 = icmp eq i32 %2, 0                    ; 7 uses
  %i.d = icmp eq i8 %i.c, 48
  %or.cond = and i1 %.not138, %i.d
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %7 = getelementptr i8, ptr %.0119, i64 1
  %i.e = load i8, ptr %7, align 1, !tbaa !38
  switch i8 %i.e, label %bb.d [
    i8 120, label %bb.au
    i8 88, label %bb.au
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = call double @ruby_strtod(ptr noundef nonnull %.0119, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.g = call ptr @rb_errno_ptr() #21
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = icmp eq i32 %i.h, 34
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %.0119 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 20
  %.0114 = select i1 %i.n, ptr @.str.154, ptr @.str.73
  %.0111174 = call i64 @llvm.smin.i64(i64 %i.m, i64 20)
  %.0111 = trunc i64 %.0111174 to i32
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.155, i32 noundef %.0111, ptr noundef nonnull %.0119, ptr noundef nonnull %.0114) #21
  %i.o = call ptr @rb_errno_ptr() #21
  store i32 0, ptr %i.o, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.q = icmp eq ptr %.0119, %i.p
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %.not138, label %bb.au, label %bb.aq

bb.h:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.p, align 1, !tbaa !38
  %.not139 = icmp eq i8 %i.r, 0
  br i1 %.not139, label %bb.ao, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.s = load i8, ptr %.0119, align 1, !tbaa !38  ; 4 uses
  switch i8 %i.s, label %bb.k [
    i8 43, label %bb.j
    i8 45, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %8 = getelementptr i8, ptr %.0119, i64 1        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.s, ptr %i.b, align 16, !tbaa !38
  %.pr = load i8, ptr %8, align 1, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = phi i8 [ %.pr, %bb.j ], [ %i.s, %bb.i ]
  %.1120 = phi ptr [ %8, %bb.j ], [ %.0119, %bb.i ] ; 3 uses
  %.0103 = phi ptr [ %i.t, %bb.j ], [ %i.b, %bb.i ] ; 4 uses
  %.099 = phi i8 [ %i.s, %bb.j ], [ 0, %bb.i ]
  %i.v = icmp eq i8 %i.u, 48
  br i1 %i.v, label %bb.l, label %.loopexit186

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr i8, ptr %.0103, i64 1      ; 3 uses
  store i8 48, ptr %.0103, align 1, !tbaa !38
  %i.x = getelementptr i8, ptr %.1120, i64 1      ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38    ; 2 uses
  switch i8 %i.y, label %.loopexit186 [
    i8 120, label %bb.m
    i8 88, label %bb.m
    i8 48, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.z = getelementptr i8, ptr %.0103, i64 2      ; 2 uses
  store i8 120, ptr %i.w, align 1, !tbaa !38
  %i.aa = getelementptr i8, ptr %.1120, i64 2     ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !38
  %.not140 = icmp eq i8 %i.ab, 48
  br i1 %.not140, label %bb.n, label %.loopexit186

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2121 = phi ptr [ %i.aa, %bb.m ], [ %i.x, %bb.l ]
  %.1104 = phi ptr [ %i.z, %bb.m ], [ %i.w, %bb.l ]
  %.1100 = phi i8 [ 120, %bb.m ], [ %i.y, %bb.l ]
  %.095 = phi i32 [ 16, %bb.m ], [ 10, %bb.l ]
  %.093 = phi i32 [ 112, %bb.m ], [ 101, %bb.l ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.3122 = phi ptr [ %.2121, %bb.n ], [ %i.ac, %bb.o ]
  %i.ac = getelementptr i8, ptr %.3122, i64 1     ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38
  %i.ae = icmp eq i8 %i.ad, 48
  br i1 %i.ae, label %bb.o, label %.loopexit186, !llvm.loop !96

.loopexit186:                                     ; preds = %bb.o, %bb.l, %bb.m, %bb.k
  %.4123 = phi ptr [ %i.x, %bb.l ], [ %i.aa, %bb.m ], [ %.1120, %bb.k ], [ %i.ac, %bb.o ] ; 3 uses
  %.2105 = phi ptr [ %i.w, %bb.l ], [ %i.z, %bb.m ], [ %.0103, %bb.k ], [ %.1104, %bb.o ] ; 3 uses
  %.2101 = phi i8 [ 48, %bb.l ], [ 120, %bb.m ], [ %.099, %bb.k ], [ %.1100, %bb.o ]
  %.196 = phi i32 [ 10, %bb.l ], [ 16, %bb.m ], [ 10, %bb.k ], [ %.095, %bb.o ]
  %.194 = phi i32 [ 101, %bb.l ], [ 112, %bb.m ], [ 101, %bb.k ], [ %.093, %bb.o ]
  %i.af = icmp ult ptr %.4123, %i.p
  %i.ag = icmp ult ptr %.2105, %.0102.idx.ph.sroa.gep
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %.outer.preheader

.lr.ph:                                           ; preds = %.loopexit186, %.lr.ph
  %.3106209 = phi ptr [ %i.ak, %.lr.ph ], [ %.2105, %.loopexit186 ] ; 2 uses
  %.5124208 = phi ptr [ %i.ai, %.lr.ph ], [ %.4123, %.loopexit186 ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.5124208, i64 1  ; 3 uses
  %i.aj = load i8, ptr %.5124208, align 1, !tbaa !38 ; 2 uses
  %i.ak = getelementptr i8, ptr %.3106209, i64 1  ; 3 uses
  store i8 %i.aj, ptr %.3106209, align 1, !tbaa !38
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.am = icmp ult ptr %i.ai, %i.al
  %i.an = icmp ult ptr %i.ak, %.0102.idx.ph.sroa.gep
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %.outer.preheader, !llvm.loop !97

.outer.preheader:                                 ; preds = %.lr.ph, %.loopexit186
  %.6125.ph.ph = phi ptr [ %.4123, %.loopexit186 ], [ %i.ai, %.lr.ph ]
  %.4107.ph.ph = phi ptr [ %.2105, %.loopexit186 ], [ %i.ak, %.lr.ph ]
  %.4.ph.ph = phi i8 [ %.2101, %.loopexit186 ], [ %i.aj, %.lr.ph ]
  br label %.outer

bb.p:                                             ; preds = %.outer294, %bb.af
  %.6125 = phi ptr [ %.13, %bb.af ], [ %.6125.ph295, %.outer294 ] ; 3 uses
  %.4 = phi i8 [ %i.bc, %bb.af ], [ %.4.ph297, %.outer294 ]
  %.097 = phi i32 [ %.198, %bb.af ], [ %.097.ph298, %.outer294 ] ; 4 uses
  %i.ap = load i8, ptr %.6125, align 1, !tbaa !38 ; 2 uses
  switch i8 %i.ap, label %thread-pre-split [
    i8 0, label %bb.ah
    i8 95, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %i.bu, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = zext i8 %.4 to i64
  %i.ar = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !38
  %i.at = sext i8 %i.as to i32
  %i.au = icmp ugt i32 %.2.ph, %i.at
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr i8, ptr %.6125, i64 1     ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !38  ; 2 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !38
  %i.ba = sext i8 %i.az to i32
  %i.bb = icmp ugt i32 %.2.ph, %i.ba
  br i1 %i.bb, label %thread-pre-split, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not138, label %.critedge153, label %.critedge.thread163

thread-pre-split:                                 ; preds = %bb.s, %bb.p
  %i.bc = phi i8 [ %i.ap, %bb.p ], [ %i.aw, %bb.s ] ; 8 uses
  %.8 = phi ptr [ %.6125, %bb.p ], [ %i.av, %bb.s ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.8, i64 1        ; 5 uses
  br i1 %i.bt, label %bb.u, label %10

bb.u:                                             ; preds = %thread-pre-split
  %9 = sext i8 %i.bc to i32                       ; 3 uses
  %i.be = add nsw i32 %9, -91
  %i.bf = icmp ult i32 %i.be, -26
  %i.bg = or i32 %9, 32
  %i.bh = select i1 %i.bf, i32 %9, i32 %i.bg
  %i.bi = icmp eq i32 %i.bh, %.194
  br i1 %i.bi, label %bb.v, label %10

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr i8, ptr %.4107.ph296, i64 1 ; 2 uses
  store i8 %i.bc, ptr %.4107.ph296, align 1, !tbaa !38
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !38  ; 4 uses
  switch i8 %i.bk, label %bb.x [
    i8 43, label %bb.w
    i8 45, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.bl = getelementptr i8, ptr %.8, i64 2        ; 2 uses
  %i.bm = getelementptr i8, ptr %.4107.ph296, i64 2
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !38
  %.pr161 = load i8, ptr %i.bl, align 1, !tbaa !38
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bn = phi i8 [ %.pr161, %bb.w ], [ %i.bk, %bb.v ]
  %.9 = phi ptr [ %i.bl, %bb.w ], [ %i.bd, %bb.v ] ; 2 uses
  %.5108 = phi ptr [ %i.bm, %bb.w ], [ %i.bj, %bb.v ] ; 3 uses
  %.5 = phi i8 [ %i.bk, %bb.w ], [ %i.bc, %bb.v ]
  %i.bo = icmp eq i8 %i.bn, 48
  br i1 %i.bo, label %bb.y, label %.outer.backedge

bb.y:                                             ; preds = %bb.x
  store i8 48, ptr %.5108, align 1, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.10 = phi ptr [ %.9, %bb.y ], [ %i.bp, %bb.z ]
  %i.bp = getelementptr i8, ptr %.10, i64 1       ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.br = icmp eq i8 %i.bq, 48
  br i1 %i.br, label %bb.z, label %.loopexit.loopexit, !llvm.loop !98

.loopexit.loopexit:                               ; preds = %bb.z
  %i.bs = getelementptr i8, ptr %.5108, i64 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.loopexit.loopexit, %bb.x
  %.6125.ph.be = phi ptr [ %.9, %bb.x ], [ %i.bp, %.loopexit.loopexit ]
  %.4107.ph.be = phi ptr [ %.5108, %bb.x ], [ %i.bs, %.loopexit.loopexit ]
  %.4.ph.be = phi i8 [ %.5, %bb.x ], [ 48, %.loopexit.loopexit ]
  br label %.outer, !llvm.loop !99

.outer:                                           ; preds = %.outer.backedge, %.outer.preheader
  %.6125.ph = phi ptr [ %.6125.ph.ph, %.outer.preheader ], [ %.6125.ph.be, %.outer.backedge ]
  %.4107.ph = phi ptr [ %.4107.ph.ph, %.outer.preheader ], [ %.4107.ph.be, %.outer.backedge ]
  %i.bt = phi i1 [ true, %.outer.preheader ], [ false, %.outer.backedge ]
  %.0102.idx.ph.sroa.phi = phi ptr [ %.0102.idx.ph.sroa.gep, %.outer.preheader ], [ %.0102.idx.ph.sroa.gep237, %.outer.backedge ]
  %.4.ph = phi i8 [ %.4.ph.ph, %.outer.preheader ], [ %.4.ph.be, %.outer.backedge ]
  %.097.ph = phi i32 [ 0, %.outer.preheader ], [ %.097, %.outer.backedge ]
  %.2.ph = phi i32 [ %.196, %.outer.preheader ], [ 10, %.outer.backedge ] ; 3 uses
  br label %.outer294

.outer294:                                        ; preds = %bb.ag, %.outer
  %.6125.ph295 = phi ptr [ %.13, %bb.ag ], [ %.6125.ph, %.outer ]
  %.4107.ph296 = phi ptr [ %i.cc, %bb.ag ], [ %.4107.ph, %.outer ] ; 9 uses
  %.4.ph297 = phi i8 [ %i.bc, %bb.ag ], [ %.4.ph, %.outer ]
  %.097.ph298 = phi i32 [ %.198, %bb.ag ], [ %.097.ph, %.outer ]
  %i.bu = icmp eq ptr %.4107.ph296, %i.b
  %i.bv = icmp ult ptr %.4107.ph296, %.0102.idx.ph.sroa.phi
  br label %bb.p

10:                                               ; preds = %bb.u, %thread-pre-split
  switch i8 %i.bc, label %bb.ad [
    i8 32, label %._crit_edge
    i8 13, label %._crit_edge
    i8 12, label %._crit_edge
    i8 11, label %._crit_edge
    i8 10, label %._crit_edge
    i8 9, label %._crit_edge
    i8 46, label %bb.ac
  ]

._crit_edge:                                      ; preds = %10, %10, %10, %10, %10, %10
  br label %.preheader184

.preheader184:                                    ; preds = %._crit_edge, %bb.aa
  %.12 = phi ptr [ %11, %bb.aa ], [ %i.bd, %._crit_edge ] ; 3 uses
  %i.bw = load i8, ptr %.12, align 1, !tbaa !38
  switch i8 %i.bw, label %bb.ab [
    i8 32, label %bb.aa
    i8 13, label %bb.aa
    i8 12, label %bb.aa
    i8 11, label %bb.aa
    i8 10, label %bb.aa
    i8 9, label %bb.aa
    i8 0, label %bb.af
  ]

bb.aa:                                            ; preds = %.preheader184, %.preheader184, %.preheader184, %.preheader184, %.preheader184, %.preheader184
  %11 = getelementptr i8, ptr %.12, i64 1
  br label %.preheader184, !llvm.loop !100

bb.ab:                                            ; preds = %.preheader184
  br i1 %.not138, label %.critedge153, label %.critedge.thread163

bb.ac:                                            ; preds = %10
  %.not143 = icmp eq i32 %.097, 0
  br i1 %.not143, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %10
  %i.bx = zext i8 %i.bc to i64
  %i.by = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !38
  %i.ca = sext i8 %i.bz to i32
  %i.cb = icmp ugt i32 %.2.ph, %i.ca
  br i1 %i.cb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %.not138, label %.critedge153, label %.critedge.thread163

bb.af:                                            ; preds = %.preheader184, %bb.ad, %bb.ac
  %.13 = phi ptr [ %i.bd, %bb.ad ], [ %i.bd, %bb.ac ], [ %.12, %.preheader184 ] ; 2 uses
  %.198 = phi i32 [ %.097, %bb.ad ], [ 1, %bb.ac ], [ %.097, %.preheader184 ] ; 2 uses
  br i1 %i.bv, label %bb.ag, label %bb.p, !llvm.loop !99

bb.ag:                                            ; preds = %bb.af
  %i.cc = getelementptr i8, ptr %.4107.ph296, i64 1
  store i8 %i.bc, ptr %.4107.ph296, align 1, !tbaa !38
  br label %.outer294, !llvm.loop !99

bb.ah:                                            ; preds = %bb.p
  store i8 0, ptr %.4107.ph296, align 1, !tbaa !38
  %i.cd = load i8, ptr %i.b, align 16
  %i.ce = icmp eq i8 %i.cd, 48
  %or.cond155 = select i1 %.not138, i1 %i.ce, i1 false
  br i1 %or.cond155, label %bb.ai, label %bb.aj

.critedge153:                                     ; preds = %bb.t, %bb.ab, %bb.ae
  store i8 0, ptr %.4107.ph296, align 1, !tbaa !38
  %.old = load i8, ptr %i.b, align 16, !tbaa !38
  %.old154 = icmp eq i8 %.old, 48
  br i1 %.old154, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %.critedge153
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !38
  switch i8 %i.cg, label %bb.aj [
    i8 120, label %.critedge
    i8 88, label %.critedge
  ]

bb.aj:                                            ; preds = %bb.ai, %.critedge153, %bb.ah
  %i.ch = call double @ruby_strtod(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #21
  %i.ci = call ptr @rb_errno_ptr() #21
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !16
  %i.ck = icmp eq i32 %i.cj, 34
  br i1 %i.ck, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.b to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 20
  %.1115 = select i1 %i.cp, ptr @.str.154, ptr @.str.73
  %.1112180 = call i64 @llvm.smin.i64(i64 %i.co, i64 20)
  %.1112 = trunc i64 %.1112180 to i32
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.155, i32 noundef %.1112, ptr noundef nonnull %i.b, ptr noundef nonnull %.1115) #21
  %i.cq = call ptr @rb_errno_ptr() #21
  store i32 0, ptr %i.cq, align 4, !tbaa !16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %.not138, label %.critedge.thread168, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !102 ; 3 uses
  %.not146 = icmp eq ptr %i.cr, null
  %i.cs = icmp eq ptr %i.b, %i.cr
  %or.cond157 = or i1 %.not146, %i.cs
  br i1 %or.cond157, label %.critedge.thread163, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.am, %bb.an
  %i.ct = phi ptr [ %i.cu, %bb.an ], [ %i.cr, %bb.am ] ; 2 uses
  %12 = load i8, ptr %i.ct, align 1, !tbaa !38
  switch i8 %12, label %.critedge.thread163 [
    i8 0, label %.critedge.thread168
    i8 32, label %bb.an
    i8 13, label %bb.an
    i8 12, label %bb.an
    i8 11, label %bb.an
    i8 10, label %bb.an
    i8 9, label %bb.an
  ]

bb.an:                                            ; preds = %.lr.ph213, %.lr.ph213, %.lr.ph213, %.lr.ph213, %.lr.ph213, %.lr.ph213
  %i.cu = getelementptr i8, ptr %i.ct, i64 1      ; 2 uses
  store ptr %i.cu, ptr %i.a, align 8, !tbaa !102
  br label %.lr.ph213, !llvm.loop !101

.critedge.thread163:                              ; preds = %.lr.ph213, %bb.ab, %bb.am, %bb.ae, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.aq

.critedge.thread168:                              ; preds = %.lr.ph213, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ao

.critedge:                                        ; preds = %bb.ai, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.au

bb.ao:                                            ; preds = %.critedge.thread168, %bb.h
  %.15 = phi ptr [ %i.b, %.critedge.thread168 ], [ %.0119, %bb.h ]
  %.1118 = phi double [ %i.ch, %.critedge.thread168 ], [ %i.f, %bb.h ]
  %i.cv = call ptr @rb_errno_ptr() #21
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !16
  %i.cx = icmp eq i32 %i.cw, 34
  br i1 %i.cx, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.cy = call ptr @rb_errno_ptr() #21
  store i32 0, ptr %i.cy, align 4, !tbaa !16
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %.15 to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 20
  %.2116 = select i1 %i.dd, ptr @.str.154, ptr @.str.73
  %.2113183 = call i64 @llvm.smin.i64(i64 %i.dc, i64 20)
  %.2113 = trunc i64 %.2113183 to i32
  %i.de = load i64, ptr @rb_eArgError, align 8, !tbaa !18
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.de, ptr noundef nonnull @.str.155, i32 noundef %.2113, ptr noundef nonnull %0, ptr noundef nonnull %.2116) #22
  unreachable

bb.aq:                                            ; preds = %.critedge.thread163, %bb.g
  %.not150 = icmp eq i32 %3, 0
  br i1 %.not150, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.df = call i64 @rb_enc_str_new_cstr(ptr noundef nonnull %0, ptr noundef %1) #21
  %i.dg = load i64, ptr @rb_eArgError, align 8, !tbaa !18
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dg, ptr noundef nonnull @.str.156, i64 noundef %i.df) #22
  unreachable

bb.as:                                            ; preds = %bb.aq
  %.not151 = icmp eq ptr %4, null
  br i1 %.not151, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 1, ptr %4, align 4, !tbaa !16
  br label %bb.au

bb.au:                                            ; preds = %.critedge, %bb.as, %bb.at, %bb.ao, %bb.g, %bb.c, %bb.c, %bb.a
  %.1 = phi double [ %.1118, %bb.ao ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %.critedge ], [ %i.f, %bb.g ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret double %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @rb_str_to_dbl(i64 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc double @rb_str_to_dbl_raise(i64 noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef null)
  ret double %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @rb_str_to_dbl_raise(i64 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !18
  %i.d = call i64 @rb_string_value(ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !18
  call void @rb_must_asciicompat(i64 noundef %i.e) #21
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.j, %bb.a ] ; 5 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77   ; 6 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %.not29 = icmp eq i32 %1, 0
  br i1 %.not29, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @memchr(ptr noundef nonnull %i.l, i32 noundef 0, i64 noundef %i.n) #24
  %.not30 = icmp eq ptr %i.o, null
  br i1 %.not30, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !18
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.157) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !16
  br label %bb.p

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr i8, ptr %i.l, i64 %i.n
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38
  %.not31 = icmp eq i8 %i.r, 0
  br i1 %.not31, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i64 %i.n, 1                          ; 3 uses
  %i.t = icmp ult i64 %i.s, 1024
  br i1 %i.t, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  %i.u = call noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %i.b, i64 noundef %i.s) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.b, align 8, !tbaa !18
  %i.v = alloca i8, i64 %i.s, align 16            ; 2 uses
  %.not.i35 = icmp eq i64 %i.n, 0
  br i1 %.not.i35, label %ruby_nonempty_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.w = phi ptr [ %i.u, %.thread ], [ %i.v, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.w, ptr noundef nonnull readonly align 1 %i.l, i64 noundef range(i64 1, 0) %i.n, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.k, %bb.l
  %i.x = phi ptr [ %i.v, %bb.k ], [ %i.w, %bb.l ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %i.n
  store i8 0, ptr %i.y, align 1, !tbaa !38
  %.pre = load i64, ptr %i.a, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %ruby_nonempty_memcpy.exit, %RSTRING_PTR.exit
  %i.z = phi i64 [ %.pre, %ruby_nonempty_memcpy.exit ], [ %i.f, %bb.i ], [ %i.f, %RSTRING_PTR.exit ]
  %.024 = phi ptr [ %i.x, %ruby_nonempty_memcpy.exit ], [ %i.l, %bb.i ], [ null, %RSTRING_PTR.exit ]
  %i.aa = call ptr @rb_enc_get(i64 noundef %i.z) #21
  %i.ab = call fastcc double @rb_cstr_to_dbl_raise(ptr noundef %.024, ptr noundef %i.aa, i32 noundef %1, i32 noundef %2, ptr noundef %3) ; 2 uses
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !18
  %.not32 = icmp eq i64 %i.ac, 0
  br i1 %.not32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.a, ptr %i.c, align 8, !tbaa !103
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !104
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.ae = load volatile i64, ptr %i.ad, align 8, !tbaa !18 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.g, %bb.h
  %.0 = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.h ], [ %i.ab, %bb.o ], [ %i.ab, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret double %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_Float(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @rb_convert_to_float(i64 noundef %0, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_convert_to_float(i64 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !18
  %i.d = call fastcc i32 @to_float(ptr noundef %i.a, i32 noundef %1)
  switch i32 %i.d, label %bb.p [
    i32 4, label %bb.b
    i32 5, label %bb.c
    i32 0, label %bb.o
  ]

end_hunk_0
