Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.10?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 57
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules15native_literalsNtB5_14NativeLiteralsNtNtBd_9violation22AlwaysFixableViolation7message:.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules15native_literals11LiteralTypeNtB6_7Display3fmtBG_, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @371, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules15native_literalsNtB5_14NativeLiteralsNtNtBd_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 !guid !7815 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = load i8, ptr %1, align 1, !range !59, !noundef !12
  switch i8 %i.g, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.a, align 8, !range !18, !noundef !12
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !19, !noundef !12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.h, label %bb.i, !prof !11

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.m = load i64, ptr %i.b, align 8, !range !18, !noundef !12
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !19, !noundef !12 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.n, label %bb.k, label %bb.l, !prof !11

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.r = load i64, ptr %i.c, align 8, !range !18, !noundef !12
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !19, !noundef !12 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.s, label %bb.m, label %bb.n, !prof !11

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.w = load i64, ptr %i.d, align 8, !range !18, !noundef !12
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !19, !noundef !12 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %bb.o, label %bb.p, !prof !11

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ab = load i64, ptr %i.e, align 8, !range !18, !noundef !12
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !19, !noundef !12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.q, label %bb.r, !prof !11

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ag = load i64, ptr %i.f, align 8, !range !18, !noundef !12
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !19, !noundef !12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.s, label %bb.t, !prof !11

bb.h:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.al) #46
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.an = icmp samesign ugt i64 %i.k, 26
  tail call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.am, ptr noundef nonnull align 1 dereferenceable(27) @372, i64 27, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.i
  %.sink18 = phi i64 [ %i.aj, %bb.t ], [ %i.ae, %bb.r ], [ %i.z, %bb.p ], [ %i.u, %bb.n ], [ %i.p, %bb.l ], [ %i.k, %bb.i ]
  %.sink17 = phi ptr [ %i.bb, %bb.t ], [ %i.ay, %bb.r ], [ %i.av, %bb.p ], [ %i.as, %bb.n ], [ %i.ap, %bb.l ], [ %i.am, %bb.i ]
  %.sink = phi i64 [ 28, %bb.t ], [ 28, %bb.r ], [ 26, %bb.p ], [ 28, %bb.n ], [ 26, %bb.l ], [ 27, %bb.i ]
  store i64 %.sink18, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink17, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

bb.k:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.ao) #46
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.q, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.aq = icmp samesign ugt i64 %i.p, 25
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ap, ptr noundef nonnull align 1 dereferenceable(26) @373, i64 26, i1 false)
  br label %bb.j

bb.m:                                             ; preds = %bb.d
  %i.ar = load i64, ptr %i.v, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.ar) #46
  unreachable

bb.n:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.v, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.u, 27
  tail call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.as, ptr noundef nonnull align 1 dereferenceable(28) @374, i64 28, i1 false)
  br label %bb.j

bb.o:                                             ; preds = %bb.e
  %i.au = load i64, ptr %i.aa, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.au) #46
  unreachable

bb.p:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.aa, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.aw = icmp samesign ugt i64 %i.z, 25
  tail call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.av, ptr noundef nonnull align 1 dereferenceable(26) @375, i64 26, i1 false)
  br label %bb.j

bb.q:                                             ; preds = %bb.f
  %i.ax = load i64, ptr %i.af, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ax) #46
  unreachable

bb.r:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.af, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.az = icmp samesign ugt i64 %i.ae, 27
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ay, ptr noundef nonnull align 1 dereferenceable(28) @376, i64 28, i1 false)
  br label %bb.j

bb.s:                                             ; preds = %bb.g
  %i.ba = load i64, ptr %i.ak, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.ba) #46
  unreachable

bb.t:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.aj, 27
  tail call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.bb, ptr noundef nonnull align 1 dereferenceable(28) @377, i64 28, i1 false)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCsEhZmuQNqkz_11ruff_linter7message7groupedNtB5_15RuleCodeAndBodyNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !7816 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = load i8, ptr %i.o, align 2, !range !40, !noundef !12
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %2, label %7

2:                                                ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %4 = load i8, ptr %3, align 1, !range !40, !noundef !12
  %5 = trunc nuw i8 %4 to i1
  %6 = xor i1 %5, true
  br label %7

7:                                                ; preds = %bb.a, %2
  %.sroa.01.0 = phi i1 [ %6, %2 ], [ false, %bb.a ] ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %9 = load i8, ptr %8, align 1, !range !40, !noundef !12
  %10 = trunc nuw i8 %9 to i1
  %.pre.pre = load ptr, ptr %0, align 8           ; 5 uses
  %.pre115.pre = load ptr, ptr %.pre.pre, align 8 ; 11 uses
  br i1 %10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %7
  br i1 %.sroa.01.0, label %bb.g, label %bb.f

bb.c:                                             ; preds = %7
  %i.r = getelementptr inbounds nuw i8, ptr %.pre115.pre, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.pre115.pre, i64 112
  %i.t = load i64, ptr %i.s, align 8, !range !14, !noundef !12
  %.not = icmp eq i64 %i.t, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i8, ptr %i.u, align 8, !range !39, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.pre115.pre, i64 144
  %i.x = load i8, ptr %i.w, align 8, !range !39, !noundef !12
  %.not104 = icmp samesign ult i8 %i.x, %i.v
  br i1 %.not104, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.sroa.01.0, label %bb.am, label %bb.al

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.pre115.pre, i64 152
  %i.z = load i64, ptr %i.y, align 8, !range !14, !noundef !12
  %.not105 = icmp eq i64 %i.z, -1
  br i1 %.not105, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre115.pre, i64 16
  %.sroa.09.0.copyload = load i64, ptr %i.aa, align 8
  switch i64 %.sroa.09.0.copyload, label %bb.o [
    i64 0, label %bb.ae
    i64 1, label %bb.p
    i64 2, label %bb.q
    i64 3, label %bb.r
    i64 4, label %bb.s
    i64 5, label %bb.t
    i64 6, label %bb.u
    i64 7, label %bb.v
    i64 8, label %bb.w
    i64 9, label %bb.x
    i64 10, label %bb.y
    i64 11, label %bb.z
    i64 12, label %bb.aa
    i64 13, label %bb.ab
    i64 14, label %bb.ac
    i64 15, label %bb.ad
  ]

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre115.pre, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre115.pre, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !12
  call void @_RINvXs4_CsgFeZUGsc24U_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae, i32 1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !noundef !12
  %i.ah = or i8 %i.ag, 1
  store i8 %i.ah, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic15concise_message(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.pre.pre)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.h) #49
          to label %common.resume unwind label %bb.n

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs5_CsgFeZUGsc24U_7coloredNtB5_13ColoredStringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.aj, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsn_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_14ConciseMessageNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  %i.ak = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !12, !align !21, !noundef !12
  %i.an = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noundef nonnull @378, ptr noundef nonnull %i.e)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %bb.bo, %bb.bj, %bb.bg, %bb.ai, %bb.i, %bb.af, %bb.bd, %bb.bl, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bp, %bb.bj ], [ %i.ao, %bb.l ], [ %i.ai, %bb.i ], [ %i.ba, %bb.ai ], [ %i.bn, %bb.bg ], [ %i.br, %bb.bl ], [ %i.bm, %bb.bd ], [ %i.au, %bb.af ], [ %i.bu, %bb.bo ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ak

bb.n:                                             ; preds = %bb.bl, %bb.bd, %bb.af, %bb.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.o:                                             ; preds = %bb.am, %bb.g
  unreachable

bb.p:                                             ; preds = %bb.g
  br label %bb.ae

bb.q:                                             ; preds = %bb.g
  br label %bb.ae

bb.r:                                             ; preds = %bb.g
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pre115.pre, i64 32
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pre115.pre, i64 24
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  br label %bb.ae

bb.s:                                             ; preds = %bb.g
  br label %bb.ae

bb.t:                                             ; preds = %bb.g
  br label %bb.ae

bb.u:                                             ; preds = %bb.g
  br label %bb.ae

bb.v:                                             ; preds = %bb.g
  br label %bb.ae

bb.w:                                             ; preds = %bb.g
  br label %bb.ae

bb.x:                                             ; preds = %bb.g
  br label %bb.ae

bb.y:                                             ; preds = %bb.g
  br label %bb.ae

bb.z:                                             ; preds = %bb.g
  br label %bb.ae

bb.aa:                                            ; preds = %bb.g
  br label %bb.ae

bb.ab:                                            ; preds = %bb.g
  br label %bb.ae

bb.ac:                                            ; preds = %bb.g
  br label %bb.ae

bb.ad:                                            ; preds = %bb.g
  br label %bb.ae

bb.ae:                                            ; preds = %bb.g, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.17.0 = phi i64 [ 14, %bb.ad ], [ 2, %bb.p ], [ 14, %bb.q ], [ %.sroa.511.0.copyload, %bb.r ], [ 13, %bb.s ], [ 12, %bb.t ], [ 12, %bb.u ], [ 13, %bb.v ], [ 29, %bb.w ], [ 25, %bb.x ], [ 18, %bb.y ], [ 26, %bb.z ], [ 11, %bb.aa ], [ 18, %bb.ab ], [ 15, %bb.ac ], [ 5, %bb.g ]
  %.sroa.08.0 = phi ptr [ @392, %bb.ad ], [ @103, %bb.p ], [ @380, %bb.q ], [ %.sroa.410.0.copyload, %bb.r ], [ @381, %bb.s ], [ @382, %bb.t ], [ @383, %bb.u ], [ @384, %bb.v ], [ @385, %bb.w ], [ @386, %bb.x ], [ @387, %bb.y ], [ @388, %bb.z ], [ @389, %bb.aa ], [ @390, %bb.ab ], [ @391, %bb.ac ], [ @379, %bb.g ]
  call void @_RINvXs4_CsgFeZUGsc24U_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0, i64 noundef %.sroa.17.0, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !noundef !12
  %i.at = or i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic15concise_message(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.pre.pre)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.d) #49
          to label %common.resume unwind label %bb.n

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_CsgFeZUGsc24U_7coloredNtB5_13ColoredStringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.av, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsn_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_14ConciseMessageNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
end_hunk_0
