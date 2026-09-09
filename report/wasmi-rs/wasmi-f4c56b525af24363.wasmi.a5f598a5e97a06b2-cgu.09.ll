Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.09?download=true
inline.NumInlined: 1001
inline.NumDeleted: 588
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack10push_block:bb.a

bb.c:                                             ; preds = %_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB4_11StackHeightINtNtCskKLDkoKarTP_4core7convert4FromjE4from.exit
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8grow_oneBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25, !noalias !970
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit: ; preds = %_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB4_11StackHeightINtNtCskKLDkoKarTP_4core7convert4FromjE4from.exit, %bb.c
  %i.i = trunc nuw i64 %2 to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !969, !noalias !970, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %i.f ; 8 uses
  store i64 2, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %6, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %4, ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i16 %i.i, ptr %.sroa.9.0..sroa_idx6, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 62
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 2
  %i.m = add i64 %i.f, 1
  store i64 %i.m, ptr %i.e, align 8, !alias.scope !969, !noalias !970
  store i64 %5, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %i.n, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack16push_unreachable(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !974, !noalias !975, !noundef !5 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !6, !alias.scope !974, !noalias !975, !noundef !5
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8grow_oneBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25, !noalias !975
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !974, !noalias !975, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw [120 x i8], ptr %i.g, i64 %i.c ; 2 uses
  store i64 6, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = add i64 %i.c, 1
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !974, !noalias !975
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack17pop_else_operands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !982, !noalias !983, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = add nsw i64 %i.b, -1                     ; 4 uses
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !982, !noalias !983
  %i.f = load i64, ptr %i.d, align 8, !range !6, !alias.scope !982, !noalias !983, !noundef !5
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !982, !noalias !983, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %i.b, 1152921504606846977
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.e
  %i.l = load i64, ptr %i.k, align 8, !noalias !984, !noundef !5
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr [8 x i8], ptr %i.i, i64 %i.b
  %i.n = getelementptr i8, ptr %i.m, i64 -16
  %i.o = load i64, ptr %i.n, align 8, !noalias !984, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ %i.o, %bb.c ], [ 0, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !986, !noalias !987, !noundef !5 ; 3 uses
  %i.s = icmp ult i64 %i.r, 384307168202282326
  tail call void @llvm.assume(i1 %i.s)
  %i.t = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsefoF4u9kbII_5wasmi(i64 noundef %.sroa.03.0.i, i64 noundef %i.l, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !988 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.t, 1        ; 3 uses
  store i64 %i.u, ptr %i.q, align 8, !alias.scope !986, !noalias !987
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !986, !noalias !987, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.u
  %i.z = sub i64 %i.r, %i.v
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.v
  store ptr %i.y, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.v, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.z, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.ab, align 8
  ret void

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull inttoptr (i64 47 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.f = icmp ult i64 %i.e, 76861433640456466
  tail call void @llvm.assume(i1 %i.f)
  %.not.i.not = icmp ult i64 %1, %i.e
  br i1 %.not.i.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %i.e
  %i.j = sub nsw i64 0, %1
  %i.k = getelementptr inbounds [120 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.m, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3pop(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = add nsw i64 %i.e, -1                     ; 5 uses
  store i64 %i.h, ptr %i.d, align 8
  %i.i = load i64, ptr %i.g, align 8, !range !6, !noundef !5
  %i.j = icmp samesign ult i64 %i.h, %i.i
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = icmp ult i64 %i.e, 76861433640456467
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.l, i64 %i.h ; 6 uses
  %i.o = load <2 x i64>, ptr %i.n, align 8
  %.sroa.023.0.copyload = load i64, ptr %i.n, align 8 ; 3 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load <2 x i64>, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.525.0.copyload = load i64, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = icmp ne i64 %.sroa.023.0.copyload, 4
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.sroa.023.0.copyload, -2
  %.inv = icmp ult i64 %.sroa.023.0.copyload, 2   ; 2 uses
  %i.s = select i1 %.inv, i64 2, i64 %i.r
  switch i64 %i.s, label %bb.e [
    i64 0, label %bb.i
    i64 4, label %bb.i
  ]

bb.d:                                             ; preds = %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !noalias !993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !993
  store i64 %i.h, ptr %i.b, align 8, !noalias !993
  %.not.i.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not.i.not, label %bb.f, label %_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit, !prof !4

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !993
  store ptr %i.c, ptr %i.a, align 8, !noalias !993
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !993
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.t, align 8, !noalias !993
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !993
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24, !noalias !993
  unreachable

_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.n, i64 -120 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.v = load i64, ptr %i.u, align 8, !range !28, !alias.scope !994, !noundef !5 ; 4 uses
  %i.w = icmp ne i64 %i.v, 4
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nsw i64 %i.v, -2
  %.inv.i = icmp samesign ult i64 %i.v, 2
  %i.y = select i1 %.inv.i, i64 2, i64 %i.x
  switch i64 %i.y, label %bb.g [
    i64 0, label %_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit.sink.split
    i64 1, label %_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit.sink.split
    i64 2, label %_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit
    i64 3, label %_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit.sink.split
    i64 4, label %bb.h
  ], !prof !29

bb.g:                                             ; preds = %_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit
  unreachable

bb.h:                                             ; preds = %_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @168, ptr noundef nonnull inttoptr (i64 139 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #24, !noalias !994
  unreachable

_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit.sink.split: ; preds = %_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit, %_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit, %_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 -112
  %i.aa = load i64, ptr %i.z, align 8, !range !8, !alias.scope !994, !noundef !5
  br label %_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit

_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit: ; preds = %_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit.sink.split, %_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit
  %.sink.i = phi i64 [ 8, %_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit ], [ 16, %_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit.sink.split ]
  %.sroa.0.0.i = phi i64 [ %i.v, %_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get.exit ], [ %i.aa, %_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit.sink.split ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink.i
  %.sroa.5.0.i = load i64, ptr %i.ab, align 8, !alias.scope !994
  store i64 %.sroa.0.0.i, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.5.0.i, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.c, %_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase8fuel_pos.exit
  %2 = icmp eq i64 %.sroa.525.0.copyload, 0
  %narrow = select i1 %.inv, i1 %2, i1 false
  %.sroa.012.0 = zext i1 %narrow to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 %.sroa.012.0, ptr %i.ad, align 8
  store <2 x i64> %i.o, ptr %0, align 8
  %.sroa.34.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.p, ptr %.sroa.34.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.727.0..sroa_idx, i64 88, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack9push_else(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.b = load i16, ptr %i.a, align 4, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 118
  %i.f = load i8, ptr %i.e, align 2, !range !23, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !13, !noundef !5
  switch i64 %i.h, label %default.unreachable11 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable11:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = zext i1 %4 to i8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = zext i1 %4 to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.4.0 = phi i8 [ %i.i, %bb.b ], [ %i.j, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !998, !noalias !999, !noundef !5 ; 3 uses
  %i.n = load i64, ptr %i.k, align 8, !range !6, !alias.scope !998, !noalias !999, !noundef !5
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8grow_oneBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #25, !noalias !999
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit: ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !998, !noalias !999, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.s, i64 %i.m ; 10 uses
  store i64 5, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %3, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 %i.d, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(12) %i.q, i64 12, i1 false)
  %.sroa.9.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  store i8 %.sroa.0.0, ptr %.sroa.9.0..sroa_idx7, align 4
  %.sroa.10.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.t, i64 61
  store i8 %.sroa.4.0, ptr %.sroa.10.0..sroa_idx8, align 1
  %.sroa.11.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.t, i64 62
  store i16 %i.b, ptr %.sroa.11.0..sroa_idx9, align 2
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i8 %i.f, ptr %.sroa.12.0..sroa_idx, align 8
  %i.u = add i64 %i.m, 1
  store i64 %i.u, ptr %i.l, align 8, !alias.scope !998, !noalias !999
  store i64 %2, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.v, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack9push_loop(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %4, i64 noundef %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %3, ptr %i.b, align 8
  %i.c = icmp ugt i64 %3, 65535
  br i1 %i.c, label %bb.b, label %_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB4_11StackHeightINtNtCskKLDkoKarTP_4core7convert4FromjE4from.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #24
  unreachable

_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB4_11StackHeightINtNtCskKLDkoKarTP_4core7convert4FromjE4from.exit: ; preds = %bb.a
  %i.d = trunc nuw i64 %3 to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 %i.d, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 0, ptr %i.h, align 2
  store i64 %6, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %7, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %5, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1003, !noalias !1004, !noundef !5 ; 3 uses
  %i.n = load i64, ptr %i.k, align 8, !range !6, !alias.scope !1003, !noalias !1004, !noundef !5
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit

bb.c:                                             ; preds = %_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB4_11StackHeightINtNtCskKLDkoKarTP_4core7convert4FromjE4from.exit
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8grow_oneBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #25, !noalias !1004
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit: ; preds = %_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB4_11StackHeightINtNtCskKLDkoKarTP_4core7convert4FromjE4from.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1003, !noalias !1004, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %i.m ; 8 uses
  store i64 3, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %6, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %7, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %5, ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  store i16 %i.d, ptr %.sroa.9.0..sroa_idx6, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 62
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 2
  %i.s = add i64 %i.m, 1
  store i64 %i.s, ptr %i.l, align 8, !alias.scope !1003, !noalias !1004
  store i64 %6, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %7, ptr %i.t, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs9_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack14acquire_target(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 6 uses
  %i.i = icmp ult i64 %i.h, 76861433640456466
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5 = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.h, ptr %i.e, align 8
  %.not.i.not.i = icmp ult i64 %1, %i.h
  br i1 %.not.i.not.i, label %bb.e, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.l, align 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #24
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
end_hunk_0
