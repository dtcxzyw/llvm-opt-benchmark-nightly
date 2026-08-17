inline.NumInlined: 1824
inline.NumDeleted: 737
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMs2_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_17CheckedDimensions18check_header_color:switch.lookup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr %i.ab, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = icmp samesign ugt i64 %i.aa, 39
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ad, ptr noundef nonnull align 1 dereferenceable(40) @147, i64 40, i1 false)
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.011.sroa.3.0..sroa.4.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %.sroa.4.sroa.011.sroa.3.0..sroa.4.0..sroa_idx6.sroa_idx, align 8
  %.sroa.4.sroa.011.sroa.4.0..sroa.4.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %.sroa.4.sroa.011.sroa.4.0..sroa.4.0..sroa_idx6.sroa_idx, align 8
  %.sroa.4.sroa.011.sroa.5.0..sroa.4.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 40, ptr %.sroa.4.sroa.011.sroa.5.0..sroa.4.0..sroa_idx6.sroa_idx, align 8
  %.sroa.4.sroa.412.0..sroa.4.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.412.0..sroa.4.0..sroa_idx6.sroa_idx, align 8
  br label %bb.ab

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 47, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.af = load i64, ptr %i.b, align 8, !range !2316, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !2746, !noundef !4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ak = load i64, ptr %i.aj, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #26
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = icmp samesign ugt i64 %i.ai, 46
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.al, ptr noundef nonnull align 1 dereferenceable(47) @148, i64 47, i1 false)
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.020.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %.sroa.4.sroa.020.sroa.3.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  %.sroa.4.sroa.020.sroa.4.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %.sroa.4.sroa.020.sroa.4.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  %.sroa.4.sroa.020.sroa.5.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 47, ptr %.sroa.4.sroa.020.sroa.5.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  %.sroa.4.sroa.421.0..sroa.4.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.421.0..sroa.4.0..sroa_idx15.sroa_idx, align 8
  br label %bb.ab

bb.o:                                             ; preds = %bb.d
  switch i8 %2, label %bb.s [
    i8 1, label %bb.t
    i8 14, label %bb.u
    i8 15, label %bb.v
    i8 16, label %bb.w
    i8 17, label %bb.x
    i8 18, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
  ]

bb.p:                                             ; preds = %bb.d
  %i.an = icmp eq i32 %i.n, %switch.ext
  br i1 %i.an, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.s
  %.not92 = icmp eq i32 %i.n, %switch.ext
  br i1 %.not92, label %bb.ac, label %.split

bb.r:                                             ; preds = %bb.s, %bb.p, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.v, %bb.u, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.s:                                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.o
  %i.ao = icmp sgt i64 %i.k, -1
  %i.ap = icmp eq i32 %i.n, %switch.ext
  %or.cond = and i1 %i.ao, %i.ap
  br i1 %or.cond, label %bb.r, label %bb.q

bb.t:                                             ; preds = %bb.o
  %i.aq = xor i64 %i.k, -9223372036854775808
  %i.ar = icmp slt i64 %i.k, 0
  %i.as = select i1 %i.ar, i64 %i.aq, i64 6
  switch i64 %i.as, label %bb.s [
    i64 0, label %bb.r
    i64 2, label %bb.r
  ]

bb.u:                                             ; preds = %bb.o
  %i.at = icmp eq i64 %i.k, -9223372036854775806
  br i1 %i.at, label %bb.r, label %bb.s

bb.v:                                             ; preds = %bb.o
  %i.au = xor i64 %i.k, -9223372036854775808
  %i.av = icmp slt i64 %i.k, 0
  %i.aw = select i1 %i.av, i64 %i.au, i64 6
  switch i64 %i.aw, label %bb.s [
    i64 1, label %bb.r
    i64 3, label %bb.r
  ]

bb.w:                                             ; preds = %bb.o
  %i.ax = icmp eq i64 %i.k, -9223372036854775804
  br i1 %i.ax, label %bb.r, label %bb.s

bb.x:                                             ; preds = %bb.o
  %i.ay = icmp eq i64 %i.k, -9223372036854775803
  br i1 %i.ay, label %bb.r, label %bb.s

bb.y:                                             ; preds = %bb.o
  %i.az = icmp eq i64 %i.k, -9223372036854775806
  br i1 %i.az, label %bb.r, label %bb.s

bb.z:                                             ; preds = %bb.o
  %i.ba = icmp eq i64 %i.k, -9223372036854775804
  br i1 %i.ba, label %bb.r, label %bb.s

bb.aa:                                            ; preds = %bb.o
  %i.bb = icmp eq i64 %i.k, -9223372036854775803
  br i1 %i.bb, label %bb.r, label %bb.s

bb.ab:                                            ; preds = %bb.h, %bb.k, %bb.n, %bb.af, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ac:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 46, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bc = load i64, ptr %i.a, align 8, !range !2316, !noundef !4
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !2746, !noundef !4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.ad, label %bb.ae, !prof !11

.split:                                           ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.029)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.026)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.bh, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs8_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.026, ptr noundef nonnull @150, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.sroa.029.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.029, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.sroa.029.7..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026)
  store i8 6, ptr %0, align 8
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx24, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.029, i64 31, i1 false)
  %.sroa.4.sroa.430.0..sroa.4.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.430.0..sroa.4.0..sroa_idx24.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.029)
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bi = load i64, ptr %i.bg, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bi) #26
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.bj = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bf, 45
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.bj, ptr noundef nonnull align 1 dereferenceable(46) @149, i64 46, i1 false)
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.038.sroa.3.0..sroa.4.0..sroa_idx33.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bf, ptr %.sroa.4.sroa.038.sroa.3.0..sroa.4.0..sroa_idx33.sroa_idx, align 8
  %.sroa.4.sroa.038.sroa.4.0..sroa.4.0..sroa_idx33.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bj, ptr %.sroa.4.sroa.038.sroa.4.0..sroa.4.0..sroa_idx33.sroa_idx, align 8
  %.sroa.4.sroa.038.sroa.5.0..sroa.4.0..sroa_idx33.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 46, ptr %.sroa.4.sroa.038.sroa.5.0..sroa.4.0..sroa_idx33.sroa_idx, align 8
  %.sroa.4.sroa.439.0..sroa.4.0..sroa_idx33.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.439.0..sroa.4.0..sroa_idx33.sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_18CheckedHeaderColor19check_sample_values(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !237, !noundef !4 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !range !3843, !noundef !4 ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 -9223372036854775802, label %bb.d
    i64 -9223372036854775801, label %3
    i64 -9223372036854775800, label %bb.b
  ]

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %5 = load i32, ptr %4, align 8, !noundef !4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %7 = load i32, ptr %6, align 8, !noundef !4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.g = load i32, ptr %i.f, align 4, !noundef !4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b, %3
  %.sroa.0.0 = phi i32 [ %i.g, %bb.c ], [ %5, %3 ], [ %7, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !3844, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  switch i8 %i.i, label %._crit_edge [
    i8 1, label %bb.i
    i8 14, label %bb.f
    i8 15, label %bb.f
    i8 16, label %bb.f
    i8 17, label %bb.f
    i8 18, label %bb.g
    i8 19, label %bb.g
    i8 20, label %bb.g
    i8 21, label %bb.g
    i8 22, label %bb.f
    i8 23, label %bb.f
    i8 28, label %bb.h
  ]

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i8, ptr %i.j, align 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.h
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.m, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.l, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 4, ptr %.sroa.48.0..sroa_idx, align 1
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 4, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.i, ptr %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx, align 1
  %.sroa.610.sroa.5.0..sroa.610.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.k, ptr %.sroa.610.sroa.5.0..sroa.610.0..sroa_idx.sroa_idx, align 2
  store i64 2, ptr %0, align 8
  br label %bb.af

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.j, align 1, !noundef !4  ; 3 uses
  %i.n = icmp ult i8 %i.m, 17
  br i1 %i.n, label %bb.j, label %bb.e

bb.i:                                             ; preds = %bb.d, %bb.j, %bb.g, %bb.f
  %.sroa.02.0 = phi i32 [ %i.q, %bb.j ], [ 65535, %bb.g ], [ 255, %bb.f ], [ 1, %bb.d ]
  %i.o = icmp ult i32 %.sroa.0.0, %.sroa.02.0
  br i1 %i.o, label %bb.k, label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.p = zext nneg i8 %i.m to i32
  %notmask = shl nsw i32 -1, %i.p
  %i.q = xor i32 %notmask, -1
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3845)
  %i.r = load i64, ptr %2, align 8, !range !2316, !alias.scope !3845, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3845, !nonnull !4, !noundef !4 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3845, !noundef !4 ; 4 uses
  br i1 %i.s, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.idx = shl nuw nsw i64 %i.w, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.y = trunc nuw i32 %.sroa.0.0 to i16
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread, label %.lr.ph110

bb.m:                                             ; preds = %.lr.ph110
  %i.aa = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.x
  br i1 %i.ab, label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.l, %bb.m
  %i.ac = phi ptr [ %i.aa, %bb.m ], [ %i.u, %bb.l ] ; 2 uses
  %.val2.i.i = load i16, ptr %i.ac, align 2, !noalias !3848, !noundef !4
  %.not.i.i = icmp ugt i16 %.val2.i.i, %i.y
  br i1 %.not.i.i, label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit, label %bb.m

bb.n:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.ae = icmp samesign eq i64 %i.w, 0
  br i1 %i.ae, label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %i.ah = phi ptr [ %i.af, %bb.o ], [ %i.u, %bb.n ] ; 2 uses
  %.val2.i2.i = load i8, ptr %i.ah, align 1, !noalias !3852, !noundef !4
  %i.ai = zext i8 %.val2.i2.i to i32
  %.not.i3.i = icmp samesign ult i32 %.sroa.0.0, %i.ai
  br i1 %.not.i3.i, label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit, label %bb.o

_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread: ; preds = %bb.o, %bb.m, %bb.n, %bb.l, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3861)
  switch i64 %i.e, label %bb.s [
    i64 -9223372036854775802, label %bb.p
    i64 -9223372036854775801, label %bb.q
    i64 -9223372036854775800, label %bb.r
  ]

bb.p:                                             ; preds = %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ak = load i8, ptr %i.aj, align 8, !range !3841, !alias.scope !3861, !noalias !3863, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.t, label %bb.u

bb.q:                                             ; preds = %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.an = load i8, ptr %i.am, align 4, !range !3841, !alias.scope !3861, !noalias !3863, !noundef !4
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.v, label %bb.w

bb.r:                                             ; preds = %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.aq = load i8, ptr %i.ap, align 4, !range !3841, !alias.scope !3861, !noalias !3863, !noundef !4
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.v, label %bb.w

bb.s:                                             ; preds = %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !alias.scope !3863, !noalias !3861
  %.sroa.13.8..sroa_idx55 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load <2 x i32>, ptr %.sroa.13.8..sroa_idx55, align 8, !alias.scope !3863, !noalias !3861
  br label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples12encoding_for.exit

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !alias.scope !3863, !noalias !3861
  %.sroa.13.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load <2 x i32>, ptr %.sroa.13.8..sroa_idx53, align 8, !alias.scope !3863, !noalias !3861
  br label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples12encoding_for.exit

bb.u:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !3861, !noalias !3863, !noundef !4
  %.sroa.0.0.copyload49 = load i64, ptr %2, align 8, !alias.scope !3863, !noalias !3861
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx50, i64 16, i1 false), !alias.scope !3863, !noalias !3861
  %i.aw = insertelement <2 x i32> <i32 poison, i32 undef>, i32 %i.av, i64 0
  br label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples12encoding_for.exit

bb.v:                                             ; preds = %bb.r, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !alias.scope !3863, !noalias !3861
  %.sroa.13.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load <2 x i32>, ptr %.sroa.13.8..sroa_idx51, align 8, !alias.scope !3863, !noalias !3861
  br label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples12encoding_for.exit

bb.w:                                             ; preds = %bb.r, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !alias.scope !3863, !noalias !3861
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load <2 x i32>, ptr %.sroa.13.8..sroa_idx, align 8, !alias.scope !3863, !noalias !3861
  br label %_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples12encoding_for.exit

_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples12encoding_for.exit: ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.sroa.0.088 = phi i64 [ 3, %bb.s ], [ 2, %bb.t ], [ %.sroa.0.0.copyload49, %bb.u ], [ 2, %bb.v ], [ 3, %bb.w ]
  %i.az = phi <2 x i32> [ %i.as, %bb.s ], [ %i.at, %bb.t ], [ %i.aw, %bb.u ], [ %i.ax, %bb.v ], [ %i.ay, %bb.w ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !4
  %i.be = load i8, ptr %i.j, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3864)
  %i.bf = zext nneg i8 %i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_18CheckedHeaderColor19check_sample_values, i64 %i.bf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %switch.ext, %i.bg
  %i.bi = zext i32 %i.bd to i64                   ; 2 uses
  %i.bj = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bh, i64 %i.bi) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 0
  %i.bl = extractvalue { i64, i1 } %i.bj, 1
  %.sroa.04.0.in.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.04.0.i = load i64, ptr %.sroa.04.0.in.i, align 8, !alias.scope !3867, !noalias !3864
  %.not.i = icmp ne i64 %.sroa.04.0.i, %i.bk
  %or.cond.not.i = select i1 %i.bl, i1 true, i1 %.not.i
  br i1 %or.cond.not.i, label %_RNvMs0_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_18CheckedImageBuffer5check.exit, label %bb.ae, !prof !3869

_RNvMs6_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7encoderNtB5_11FlatSamples11all_smaller.exit: ; preds = %.lr.ph, %.lr.ph110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 4, ptr %i.bm, align 1
  store i8 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 51, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.y unwind label %bb.x

end_hunk_0
