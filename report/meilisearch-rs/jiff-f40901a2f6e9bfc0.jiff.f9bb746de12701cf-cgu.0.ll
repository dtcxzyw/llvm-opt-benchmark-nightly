Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN4jiff5civil8datetime8DateTime11to_duration17h93e0596288ada61dE:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #45, !noalias !10121
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.ai, label %_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %.thread23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call i64 @llvm.scmp.i64.i64(i64 %i.af, i64 0)
  %i.al = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.0.0.extract.trunc, i32 0)
  %.not.i13.i = icmp eq i64 %i.ak, %i.al
  br i1 %.not.i13.i, label %.thread23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp slt i64 %i.af, 0
  br i1 %i.am, label %bb.j, label %bb.i

_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread: ; preds = %bb.e
  %i.an = add nsw i64 %i.v, %i.af
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %.sroa.0.0.extract.trunc, 1000000000
  %i.ap = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %spec.select = select i1 %i.ap, i32 %i.ao, i32 %.sroa.0.0.extract.trunc
  %i.aq = shl i64 %.0.val, 32
  %i.ar = ashr i64 %i.aq, 63
  %spec.select25 = add nsw i64 %i.af, %i.ar
  br label %.thread23

bb.j:                                             ; preds = %bb.h
  %i.as = add nsw i32 %.sroa.0.0.extract.trunc, -1000000000
  %i.at = icmp sgt i32 %.sroa.0.0.extract.trunc, 0 ; 2 uses
  %spec.select26 = select i1 %i.at, i32 %i.as, i32 %.sroa.0.0.extract.trunc
  %i.au = zext i1 %i.at to i64
  %spec.select27 = add nsw i64 %i.af, %i.au
  br label %.thread23

.thread23:                                        ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %.sroa.010.1.i = phi i32 [ %.sroa.0.0.extract.trunc, %bb.f ], [ %.sroa.0.0.extract.trunc, %bb.g ], [ %spec.select26, %bb.j ], [ %spec.select, %bb.i ] ; 6 uses
  %.pn = phi i64 [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %spec.select27, %bb.j ], [ %spec.select25, %bb.i ]
  %.sroa.0.1.i = add nsw i64 %.pn, %i.v           ; 7 uses
  %i.av = icmp eq i64 %.sroa.0.1.i, 0
  %i.aw = icmp eq i32 %.sroa.010.1.i, 0
  %or.cond.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %.thread23
  %i.ax = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i, i64 0)
  %i.ay = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i, i32 0)
  %.not.i = icmp eq i64 %i.ax, %i.ay
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp slt i64 %.sroa.0.1.i, 0
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i64 %.sroa.0.1.i, -1
  %i.bb = add nsw i32 %.sroa.010.1.i, 1000000000
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bc = add nsw i64 %.sroa.0.1.i, 1
  %i.bd = add nsw i32 %.sroa.010.1.i, -1000000000
  br label %.thread

.thread:                                          ; preds = %_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread, %bb.n, %bb.m, %bb.k, %.thread23
  %.sroa.63.0.ph = phi i32 [ 0, %_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread ], [ %.sroa.010.1.i, %bb.k ], [ %i.bb, %bb.m ], [ %i.bd, %bb.n ], [ %.sroa.010.1.i, %.thread23 ]
  %.sroa.42.0.ph = phi i64 [ %i.an, %_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread ], [ %.sroa.0.1.i, %bb.k ], [ %i.ba, %bb.m ], [ %i.bc, %bb.n ], [ %.sroa.0.1.i, %.thread23 ]
  %i.be = insertvalue { i64, i32 } poison, i64 %.sroa.42.0.ph, 0
  %i.bf = insertvalue { i64, i32 } %i.be, i32 %.sroa.63.0.ph, 1
  ret { i64, i32 } %i.bf
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_ZN4jiff5civil8datetime8DateTime24checked_add_span_general17h4df33807ad2f7b5cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #2 !guid !10131 {
bb.a:
  %.sroa.025 = alloca [60 x i8], align 8          ; 2 uses
  %.sroa.3 = alloca [3 x i8], align 1             ; 2 uses
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.020.0.copyload = load i32, ptr %i.g, align 4
  %.sroa.022.0.copyload = load i64, ptr %1, align 4
  call fastcc void @_ZN4jiff4span4Span13without_lower17h564853f4000e6c34E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %2, i8 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_ZN4jiff4span4Span10only_lower17h6146395a408d33a3E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %2, i8 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_ZN4jiff5civil4time4Time15overflowing_add17h5d13792563477874E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 %.sroa.022.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10132)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.i = load i8, ptr %i.h, align 4, !range !78, !alias.scope !10133, !noundef !30 ; 2 uses
  %i.j = icmp eq i8 %i.i, 2
  %i.k = load ptr, ptr %i.e, align 8, !alias.scope !10134 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h94c9f5eadfcf7d2eE"(ptr noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.025, ptr noundef nonnull align 8 dereferenceable(60) %.sroa.735.0..sroa_idx, i64 60, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.11.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = ptrtoint ptr %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN4jiff5civil4date14DateArithmetic11checked_add17h0d983f9344ba4ef7E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.b, i32 %.sroa.020.0.copyload)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10135)
  %i.o = load i16, ptr %i.d, align 8, !range !81, !alias.scope !10135, !noundef !30
  %i.p = trunc nuw i16 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10135, !noundef !30
  %i.s = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 2, ptr noundef %i.r), !noalias !10136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 2, !alias.scope !10135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef nonnull align 8 dereferenceable(60) %.sroa.025, i64 60, i1 false)
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.3, i64 3, i1 false)
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i8 %i.i, ptr %.sroa.427.0..sroa_idx, align 4
  call fastcc void @_ZN4jiff5civil4date14DateArithmetic11checked_add17h0d983f9344ba4ef7E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.a, i32 %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10137)
  %i.v = load i16, ptr %i.c, align 8, !range !81, !alias.scope !10137, !noundef !30
  %i.w = trunc nuw i16 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !10137, !noundef !30
  %i.z = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 3, ptr noundef %i.y), !noalias !10138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.ab, align 2, !alias.scope !10137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.n, ptr %i.ac, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.copyload.i32, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.d, %bb.g
  %.sink = phi i32 [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.g ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4jiff5civil8datetime8DateTime5until17hf87e87844404c242E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, i64 %.0.val, i32 %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality !guid !10254 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 14 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [64 x i8], align 8                ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10256)
  %i.k = load i8, ptr %1, align 4, !range !49, !alias.scope !10257, !noundef !30 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.16.sroa.3.5.copyload = load i64, ptr %i.l, align 4, !alias.scope !10258 ; 5 uses
  %.sroa.16.sroa.5.5..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.16.sroa.5.5.copyload = load i32, ptr %.sroa.16.sroa.5.5..sroa_idx, align 4, !alias.scope !10258 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = icmp samesign ult i8 %i.k, 7
  br i1 %i.m, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.16.sroa.5.5.copyload to i16 ; 8 uses
  %.sroa.2.0.extract.shift.i = lshr i32 %.sroa.16.sroa.5.5.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8 ; 8 uses
  %.sroa.3.0.extract.shift.i = lshr i32 %.sroa.16.sroa.5.5.copyload, 24 ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc nuw i32 %.sroa.3.0.extract.shift.i to i8 ; 4 uses
  %.sroa.04.0.extract.trunc.i119 = trunc i32 %.8.val to i16 ; 2 uses
  %.sroa.25.0.extract.shift.i = lshr i32 %.8.val, 16
  %.sroa.25.0.extract.trunc.i = trunc i32 %.sroa.25.0.extract.shift.i to i8 ; 2 uses
  %.sroa.36.0.extract.shift.i = lshr i32 %.8.val, 24
  %.sroa.36.0.extract.trunc.i = trunc nuw i32 %.sroa.36.0.extract.shift.i to i8
  %i.n = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.04.0.extract.trunc.i119
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %.sroa.2.0.extract.trunc.i, %.sroa.25.0.extract.trunc.i
  br i1 %i.o, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.p = tail call i8 @llvm.scmp.i8.i16(i16 %.sroa.0.0.extract.trunc.i, i16 %.sroa.04.0.extract.trunc.i119)
  br label %_ZN4jiff4util1b4Sign13from_ordinals17h6055c47dc81da47aE.exit

bb.e:                                             ; preds = %bb.c
  %i.q = tail call i8 @llvm.scmp.i8.i8(i8 %.sroa.3.0.extract.trunc.i, i8 %.sroa.36.0.extract.trunc.i)
  br label %_ZN4jiff4util1b4Sign13from_ordinals17h6055c47dc81da47aE.exit

bb.f:                                             ; preds = %bb.c
  %i.r = tail call i8 @llvm.scmp.i8.i8(i8 %.sroa.2.0.extract.trunc.i, i8 %.sroa.25.0.extract.trunc.i)
  br label %_ZN4jiff4util1b4Sign13from_ordinals17h6055c47dc81da47aE.exit

_ZN4jiff4util1b4Sign13from_ordinals17h6055c47dc81da47aE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i8 [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.p, %bb.d ] ; 2 uses
  %i.s = shl i64 %.sroa.16.sroa.3.5.copyload, 24
  %i.t = ashr i64 %i.s, 56
  %i.u = shl i64 %.sroa.16.sroa.3.5.copyload, 16
  %i.v = ashr i64 %i.u, 56
  %i.w = shl i64 %.sroa.16.sroa.3.5.copyload, 8
  %i.x = ashr i64 %i.w, 56
  %i.y = shl i64 %.sroa.16.sroa.3.5.copyload, 32
  %i.z = ashr exact i64 %i.y, 32
  %i.aa = shl i64 %.0.val, 24
  %i.ab = ashr i64 %i.aa, 56
  %i.ac = shl i64 %.0.val, 16
  %i.ad = ashr i64 %i.ac, 56
  %i.ae = shl i64 %.0.val, 8
  %i.af = ashr i64 %i.ae, 56
  %i.ag = shl i64 %.0.val, 32
  %i.ah = ashr exact i64 %i.ag, 32
  %reass.add.i = sub nsw i64 %i.x, %i.af
  %reass.mul.i = mul nsw i64 %reass.add.i, 1000000000
  %reass.add39.i = sub nsw i64 %i.t, %i.ab
  %reass.mul40.i = mul nsw i64 %reass.add39.i, 3600000000000
  %reass.add42.i = sub nsw i64 %i.v, %i.ad
  %reass.mul43.i = mul nsw i64 %reass.add42.i, 60000000000
  %i.ai = sub nsw i64 %i.z, %i.ah
  %i.aj = add nsw i64 %i.ai, %reass.mul.i
  %i.ak = add nsw i64 %i.aj, %reass.mul40.i
  %i.al = add nsw i64 %i.ak, %reass.mul43.i       ; 7 uses
  switch i8 %.sroa.0.0.i.i, label %default.unreachable.i [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 -1, label %bb.w
  ]

bb.g:                                             ; preds = %bb.a
  %i.am = tail call fastcc { i64, i32 } @_ZN4jiff5civil8datetime8DateTime11to_duration17h93e0596288ada61dE(i64 %.sroa.16.sroa.3.5.copyload, i32 %.sroa.16.sroa.5.5.copyload), !noalias !10259, !inline_history !10149 ; 2 uses
  %i.an = extractvalue { i64, i32 } %i.am, 1
  %i.ao = tail call fastcc { i64, i32 } @_ZN4jiff5civil8datetime8DateTime11to_duration17h93e0596288ada61dE(i64 %.0.val, i32 %.8.val), !noalias !10259, !inline_history !10149 ; 2 uses
  %i.ap = extractvalue { i64, i32 } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { i64, i32 } %i.ao, 1
  %i.ar = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %i.ar, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.as = extractvalue { i64, i32 } %i.am, 0
  %i.at = sub nsw i64 0, %i.ap
  %i.au = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.as, i64 %i.at) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 0       ; 4 uses
  %i.aw = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.aw, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.ax = sub i32 %i.an, %i.aq                    ; 6 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp sgt i32 %i.ax, 999999999
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp slt i32 %i.ax, -999999999
  br i1 %i.ba, label %bb.m, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bb = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.av, i64 1) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.p, !prof !42

bb.m:                                             ; preds = %bb.k
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.av, i64 -1) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.n, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  %i.bg = add nsw i32 %i.ax, 1000000000
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n, %bb.k
  %.sroa.010.1.i.i = phi i32 [ %i.bk, %bb.p ], [ %i.bg, %bb.n ], [ %i.ax, %bb.k ] ; 6 uses
  %.sroa.0.1.i.i117 = phi i64 [ %i.bj, %bb.p ], [ %i.bf, %bb.n ], [ %i.av, %bb.k ] ; 7 uses
  %i.bh = icmp eq i64 %.sroa.0.1.i.i117, 0
  %i.bi = icmp eq i32 %.sroa.010.1.i.i, 0
  %or.cond.i.i118 = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond.i.i118, label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit", label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bj = extractvalue { i64, i1 } %i.bb, 0
  %i.bk = add nsw i32 %i.ax, -1000000000
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.bl = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i.i117, i64 0)
  %i.bm = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i.i, i32 0)
  %.not.i.i = icmp eq i64 %i.bl, %i.bm
  br i1 %.not.i.i, label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp slt i64 %.sroa.0.1.i.i117, 0
  br i1 %i.bn, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = add nsw i64 %.sroa.0.1.i.i117, -1
  %i.bp = add nsw i32 %.sroa.010.1.i.i, 1000000000
  br label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit"

bb.t:                                             ; preds = %bb.r
  %i.bq = add nsw i64 %.sroa.0.1.i.i117, 1
  %i.br = add nsw i32 %.sroa.010.1.i.i, -1000000000
  br label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit"

_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i: ; preds = %bb.m, %bb.l, %bb.h, %bb.g
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1972, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1973) #45, !noalias !10259
  unreachable

"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit": ; preds = %bb.i, %bb.o, %bb.q, %bb.s, %bb.t
  %.sroa.6.0.ph.i = phi i32 [ %.sroa.010.1.i.i, %bb.q ], [ %i.bp, %bb.s ], [ %i.br, %bb.t ], [ %.sroa.010.1.i.i, %bb.o ], [ 0, %bb.i ]
  %.sroa.4.0.ph.i = phi i64 [ %.sroa.0.1.i.i117, %bb.q ], [ %i.bo, %bb.s ], [ %i.bq, %bb.t ], [ %.sroa.0.1.i.i117, %bb.o ], [ %i.av, %bb.i ]
  call void @_ZN4jiff4span4Span23from_invariant_duration17h4ae53d17c0cbb8f5E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, i8 noundef %i.k, i64 noundef %.sroa.4.0.ph.i, i32 noundef %.sroa.6.0.ph.i), !noalias !10260, !inline_history !10149
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !range !78
  %.pre1.pre = load ptr, ptr %i.j, align 8
  br label %_ZN4jiff5civil8datetime18DateTimeDifference23until_with_largest_unit17hb68211ea1e8b4798E.exit

default.unreachable.i:                            ; preds = %_ZN4jiff4util1b4Sign13from_ordinals17h6055c47dc81da47aE.exit
  unreachable

bb.u:                                             ; preds = %_ZN4jiff4util1b4Sign13from_ordinals17h6055c47dc81da47aE.exit
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i", label %bb.am

bb.v:                                             ; preds = %_ZN4jiff4util1b4Sign13from_ordinals17h6055c47dc81da47aE.exit
  %i.bs = icmp slt i64 %i.al, 0
  br i1 %i.bs, label %bb.x, label %bb.am

bb.w:                                             ; preds = %_ZN4jiff4util1b4Sign13from_ordinals17h6055c47dc81da47aE.exit
  %i.bt = icmp slt i64 %i.al, 1
  br i1 %i.bt, label %bb.am, label %bb.an

bb.x:                                             ; preds = %bb.v
  %i.bu = icmp eq i32 %.sroa.3.0.extract.shift.i, 1
  br i1 %i.bu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bv = icmp eq i8 %.sroa.2.0.extract.trunc.i, 1
  br i1 %i.bv, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %.sroa.4142.5.insert.insert = add i32 %.sroa.16.sroa.5.5.copyload, -16777216
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i"

bb.aa:                                            ; preds = %bb.y
  %i.bw = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.0.0.extract.trunc.i, i16 -1) ; 2 uses
  %i.bx = extractvalue { i16, i1 } %i.bw, 1
  br i1 %i.bx, label %bb.ag, label %_ZN4jiff4util1b4Year11checked_sub17hadbc62a0b4ade9fdE.exit.i

_ZN4jiff4util1b4Year11checked_sub17hadbc62a0b4ade9fdE.exit.i: ; preds = %bb.aa
  %i.by = extractvalue { i16, i1 } %i.bw, 0       ; 2 uses
  %i.bz = add i16 %i.by, -10000
  %narrow.i.i.i.i116 = icmp ult i16 %i.bz, -19999
  br i1 %narrow.i.i.i.i116, label %bb.ag, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.ca = add i8 %.sroa.2.0.extract.trunc.i, -1   ; 4 uses
  %i.cb = icmp eq i8 %i.ca, 2
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %_ZN4jiff4util1b4Year11checked_sub17hadbc62a0b4ade9fdE.exit.i
  %.sroa.4142.2.insert.ext148 = zext i16 %i.by to i32
  %.sroa.4142.5.insert.insert166 = or disjoint i32 %.sroa.4142.2.insert.ext148, 520880128
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i"

bb.ad:                                            ; preds = %bb.ab
  %i.cc = srem i16 %.sroa.0.0.extract.trunc.i, 25
  %i.cd = icmp eq i16 %i.cc, 0
  %..i.i114 = select i1 %i.cd, i16 15, i16 3
  %i.ce = and i16 %..i.i114, %.sroa.0.0.extract.trunc.i
  %i.cf = icmp eq i16 %i.ce, 0
  %..i115 = select i1 %i.cf, i8 29, i8 28
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.cg = ashr i8 %i.ca, 3
  %i.ch = xor i8 %i.cg, %i.ca
  %i.ci = or i8 %i.ch, 30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.017.0.i113 = phi i8 [ %i.ci, %bb.ae ], [ %..i115, %bb.ad ]
  %.sroa.4142.2.insert.ext144 = and i32 %.sroa.16.sroa.5.5.copyload, 65535
  %.sroa.4142.4.insert.ext152 = zext i8 %i.ca to i32
  %.sroa.4142.4.insert.shift153 = shl nuw nsw i32 %.sroa.4142.4.insert.ext152, 16
  %.sroa.4142.4.insert.insert155 = or disjoint i32 %.sroa.4142.4.insert.shift153, %.sroa.4142.2.insert.ext144
  %.sroa.4142.5.insert.ext160 = zext i8 %.sroa.017.0.i113 to i32
  %.sroa.4142.5.insert.shift161 = shl nuw i32 %.sroa.4142.5.insert.ext160, 24
  %.sroa.4142.5.insert.insert163 = or disjoint i32 %.sroa.4142.5.insert.shift161, %.sroa.4142.4.insert.insert155
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i"

bb.ag:                                            ; preds = %_ZN4jiff4util1b4Year11checked_sub17hadbc62a0b4ade9fdE.exit.i, %bb.aa
  %i.cj = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 46), !noalias !10261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10262
  store ptr %i.cj, ptr %i.f, align 8, !noalias !10262
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #45
          to label %bb.ak unwind label %bb.ah, !noalias !10263, !inline_history !10149

bb.ah:                                            ; preds = %bb.ag
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10264)
  %i.cl = load ptr, ptr %i.f, align 8, !alias.scope !10265, !noalias !10263, !noundef !30 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %common.resume, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cn = atomicrmw add ptr %i.cl, i64 -1 release, align 8, !noalias !10266
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.aj, label %common.resume

bb.aj:                                            ; preds = %bb.ai
  fence acquire, !noalias !10263
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %common.resume unwind label %bb.al, !inline_history !10163

bb.ak:                                            ; preds = %bb.ag
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10263, !inline_history !10149
  unreachable

common.resume:                                    ; preds = %bb.cm, %bb.cn, %bb.co, %bb.cd, %bb.ce, %bb.cf, %bb.bu, %bb.bv, %bb.bw, %bb.bl, %bb.bm, %bb.bn, %bb.bc, %bb.bd, %bb.be, %bb.ax, %bb.av, %bb.aw, %bb.aj, %bb.ah, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.ho, %bb.cd ], [ %i.ck, %bb.aj ], [ %i.dn, %bb.ax ], [ %i.eb, %bb.bc ], [ %i.fm, %bb.bl ], [ %i.gp, %bb.bu ], [ %i.ck, %bb.ai ], [ %i.ck, %bb.ah ], [ %i.dn, %bb.aw ], [ %i.dn, %bb.av ], [ %i.eb, %bb.be ], [ %i.eb, %bb.bd ], [ %i.fm, %bb.bn ], [ %i.fm, %bb.bm ], [ %i.gp, %bb.bw ], [ %i.gp, %bb.bv ], [ %i.ho, %bb.cf ], [ %i.ho, %bb.ce ], [ %i.ip, %bb.co ], [ %i.ip, %bb.cn ], [ %i.ip, %bb.cm ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i": ; preds = %bb.ao, %bb.at, %.thread23.i, %bb.z, %bb.ac, %bb.af, %bb.u
  %.sroa.06.0.i = phi i32 [ %.sroa.4142.5.insert.insert166, %bb.ac ], [ %.sroa.16.sroa.5.5.copyload, %bb.u ], [ %.sroa.4142.5.insert.insert, %bb.z ], [ %.sroa.4142.5.insert.insert163, %bb.af ], [ %.sroa.4169.5.insert.insert191, %bb.at ], [ %.sroa.4169.5.insert.insert, %bb.ao ], [ %.sroa.4169.5.insert.insert188, %.thread23.i ]
  %i.cq = sext i8 %.sroa.0.0.i.i to i64
  %i.cr = mul nsw i64 %i.cq, 86400000000000
  %i.cs = add nsw i64 %i.cr, %i.al
  br label %bb.am

bb.am:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i", %bb.w, %bb.v, %bb.u
  %.sroa.014.0.i = phi i64 [ %i.cs, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i" ], [ %i.al, %bb.w ], [ %i.al, %bb.v ], [ %i.al, %bb.u ] ; 2 uses
  %.sroa.06.1.i = phi i32 [ %.sroa.06.0.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i" ], [ %.sroa.16.sroa.5.5.copyload, %bb.w ], [ %.sroa.16.sroa.5.5.copyload, %bb.v ], [ %.sroa.16.sroa.5.5.copyload, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10259
  %.sroa.069.0.insert.ext.i = zext nneg i8 %i.k to i48
  %.sroa.069.2.insert.ext.i = zext i32 %.sroa.06.1.i to i48
  %.sroa.069.2.insert.shift.i = shl nuw i48 %.sroa.069.2.insert.ext.i, 16
  %.sroa.069.2.insert.insert.i = or disjoint i48 %.sroa.069.2.insert.shift.i, %.sroa.069.0.insert.ext.i
  call fastcc void @_ZN4jiff5civil4date4Date5until17h89e4b586c3c21847E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.i, i32 %.8.val, i48 %.sroa.069.2.insert.insert.i), !noalias !10259, !inline_history !10149
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.cu = load i8, ptr %i.ct, align 4, !range !78, !noalias !10259, !noundef !30 ; 3 uses
  %i.cv = icmp eq i8 %i.cu, 2
  br i1 %i.cv, label %_ZN4jiff5civil8datetime18DateTimeDifference23until_with_largest_unit17hb68211ea1e8b4798E.exit.thread, label %bb.ba

bb.an:                                            ; preds = %bb.w
  %i.cw = icmp sgt i8 %.sroa.3.0.extract.trunc.i, 27
  br i1 %i.cw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread.i, %bb.aq, %bb.an
  %.sroa.4169.4.insert.insert = and i32 %.sroa.16.sroa.5.5.copyload, 16777215
  %2 = and i32 %.sroa.16.sroa.5.5.copyload, -16777216
  %.sroa.4169.5.insert.shift = add i32 %2, 16777216
  %.sroa.4169.5.insert.insert = or disjoint i32 %.sroa.4169.5.insert.shift, %.sroa.4169.4.insert.insert
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i"

bb.ap:                                            ; preds = %bb.an
  %i.cx = icmp eq i8 %.sroa.2.0.extract.trunc.i, 2
  br i1 %i.cx, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cy = ashr i8 %.sroa.2.0.extract.trunc.i, 3
  %i.cz = xor i8 %i.cy, %.sroa.2.0.extract.trunc.i
  %i.da = or i8 %i.cz, 30
  %i.db = icmp eq i8 %i.da, %.sroa.3.0.extract.trunc.i
  br i1 %i.db, label %bb.ar, label %bb.ao

.thread.i:                                        ; preds = %bb.ap
  %i.dc = srem i16 %.sroa.0.0.extract.trunc.i, 25
  %i.dd = icmp eq i16 %i.dc, 0
  %..i.i = select i1 %i.dd, i16 15, i16 3
  %i.de = and i16 %..i.i, %.sroa.0.0.extract.trunc.i
  %i.df = icmp eq i16 %i.de, 0
  %..i = select i1 %i.df, i8 29, i8 28
  %i.dg = icmp eq i8 %..i, %.sroa.3.0.extract.trunc.i
  br i1 %i.dg, label %.thread23.i, label %bb.ao

bb.ar:                                            ; preds = %bb.aq
  %i.dh = icmp eq i8 %.sroa.2.0.extract.trunc.i, 12
  br i1 %i.dh, label %bb.as, label %.thread23.i

bb.as:                                            ; preds = %bb.ar
  %i.di = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.0.0.extract.trunc.i, i16 1) ; 2 uses
  %i.dj = extractvalue { i16, i1 } %i.di, 1
  br i1 %i.dj, label %bb.au, label %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.i

_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.i: ; preds = %bb.as
  %i.dk = extractvalue { i16, i1 } %i.di, 0       ; 2 uses
  %i.dl = add i16 %i.dk, -10000
  %narrow.i.i.i.i = icmp ult i16 %i.dl, -19999
  br i1 %narrow.i.i.i.i, label %bb.au, label %bb.at

.thread23.i:                                      ; preds = %bb.ar, %.thread.i
  %.sroa.4169.2.insert.ext171 = and i32 %.sroa.16.sroa.5.5.copyload, 65535
  %.sroa.4169.4.insert.ext179 = add i32 %.sroa.16.sroa.5.5.copyload, 65536
  %.sroa.4169.4.insert.shift180 = and i32 %.sroa.4169.4.insert.ext179, 16711680
  %.sroa.4169.4.insert.insert182 = or disjoint i32 %.sroa.4169.2.insert.ext171, %.sroa.4169.4.insert.shift180
  %.sroa.4169.5.insert.insert188 = or disjoint i32 %.sroa.4169.4.insert.insert182, 16777216
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i"

bb.at:                                            ; preds = %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.i
  %.sroa.4169.2.insert.ext175 = zext i16 %i.dk to i32
  %.sroa.4169.5.insert.insert191 = or disjoint i32 %.sroa.4169.2.insert.ext175, 16842752
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17heaadf476ce029772E.exit73.i"

bb.au:                                            ; preds = %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.i, %bb.as
  %i.dm = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 46), !noalias !10267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10268
  store ptr %i.dm, ptr %i.g, align 8, !noalias !10268
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #45
          to label %bb.ay unwind label %bb.av, !noalias !10269, !inline_history !10149

bb.av:                                            ; preds = %bb.au
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10270)
  %i.do = load ptr, ptr %i.g, align 8, !alias.scope !10271, !noalias !10269, !noundef !30 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %common.resume, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dq = atomicrmw add ptr %i.do, i64 -1 release, align 8, !noalias !10272
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.ax, label %common.resume

bb.ax:                                            ; preds = %bb.aw
  fence acquire, !noalias !10269
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
          to label %common.resume unwind label %bb.az, !inline_history !10163

bb.ay:                                            ; preds = %bb.au
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10269, !inline_history !10149
  unreachable

_ZN4jiff5civil8datetime18DateTimeDifference23until_with_largest_unit17hb68211ea1e8b4798E.exit.thread: ; preds = %bb.am
  %i.dt = load ptr, ptr %i.i, align 8, !noalias !10259, !noundef !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10259
  br label %bb.cs

bb.ba:                                            ; preds = %bb.am
  %.sroa.943.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.943.0.copyload.i = load i32, ptr %.sroa.943.0..sroa_idx.i, align 8, !noalias !10259
  %.sroa.1044.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %.sroa.1044.0.copyload.i = load i32, ptr %.sroa.1044.0..sroa_idx.i, align 4, !noalias !10259
  %.sroa.1145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.1145.0.copyload.i = load i32, ptr %.sroa.1145.0..sroa_idx.i, align 8, !noalias !10259
  %.sroa.1448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %.sroa.1448.0.copyload.i = load i16, ptr %.sroa.1448.0..sroa_idx.i, align 2, !noalias !10259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10259
  %i.du = sdiv i64 %.sroa.014.0.i, 1000000000
  %i.dv = srem i64 %.sroa.014.0.i, 1000000000
  %i.dw = trunc nsw i64 %i.dv to i32
  call void @_ZN4jiff4span4Span23from_invariant_duration17h4ae53d17c0cbb8f5E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, i8 noundef %i.k, i64 noundef %i.du, i32 noundef %i.dw), !noalias !10259, !inline_history !10149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10274)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 60 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 4, !range !78, !alias.scope !10274, !noalias !10259, !noundef !30
  %i.dz = icmp eq i8 %i.dy, 2
  br i1 %i.dz, label %bb.bb, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit109", !prof !42

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10275
  %i.ea = load ptr, ptr %i.h, align 8, !alias.scope !10274, !noalias !10259, !noundef !30
  store ptr %i.ea, ptr %i.a, align 8, !noalias !10275
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @350, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @351) #45
          to label %bb.bf unwind label %bb.bc, !noalias !10276

bb.bc:                                            ; preds = %bb.bb
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10277), !noalias !10259
  %i.ec = load ptr, ptr %i.a, align 8, !alias.scope !10278, !noalias !10275, !noundef !30 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %common.resume, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ee = atomicrmw add ptr %i.ec, i64 -1 release, align 8, !noalias !10279
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.be, label %common.resume

bb.be:                                            ; preds = %bb.bd
  fence acquire, !noalias !10259
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.bg, !noalias !10276, !inline_history !44

bb.bf:                                            ; preds = %bb.bb
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10276
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit109": ; preds = %bb.ba
  %.sroa.0194.0.copyload = load i64, ptr %i.h, align 8, !alias.scope !10280, !noalias !10259 ; 5 uses
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4195.0.copyload = load i64, ptr %.sroa.4195.0..sroa_idx, align 8, !alias.scope !10280, !noalias !10259 ; 4 uses
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5196.0.copyload = load i64, ptr %.sroa.5196.0..sroa_idx, align 8, !alias.scope !10280, !noalias !10259 ; 4 uses
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.6197.0.copyload = load i64, ptr %.sroa.6197.0..sroa_idx, align 8, !alias.scope !10280, !noalias !10259 ; 4 uses
  %.sroa.7198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7198.0.copyload = load i64, ptr %.sroa.7198.0..sroa_idx, align 8, !alias.scope !10280, !noalias !10259 ; 4 uses
  %.sroa.8199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8199.0.copyload = load i32, ptr %.sroa.8199.0..sroa_idx, align 8, !alias.scope !10280, !noalias !10259
  %.sroa.9200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %.sroa.9200.0.copyload = load i32, ptr %.sroa.9200.0..sroa_idx, align 4, !alias.scope !10280, !noalias !10259 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !10280, !noalias !10259 ; 3 uses
  %i.eh = trunc i64 %.sroa.10.0.copyload to i32   ; 2 uses
  %i.ei = lshr i64 %.sroa.10.0.copyload, 32       ; 4 uses
  %i.ej = trunc nuw i64 %i.ei to i32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.12.0.copyload = load i16, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !10280, !noalias !10259
  %.sroa.13202.0.copyload = load i32, ptr %i.dx, align 4, !alias.scope !10280, !noalias !10259 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10259
  %i.ek = sext i8 %i.cu to i16
  %i.el = mul i16 %.sroa.1448.0.copyload.i, %i.ek ; 2 uses
  %i.em = sext i16 %i.el to i64
  %i.en = add nsw i64 %i.em, -19999
  %or.cond.i.i85 = icmp ult i64 %i.en, -39997
  %i.eo = sext i16 %i.el to i32
  %i.ep = shl nsw i32 %i.eo, 16
  %i.eq = or disjoint i32 %i.ep, 6144
  %.sroa.0.0.insert.insert.i.i86 = select i1 %or.cond.i.i85, i32 6145, i32 %i.eq ; 3 uses
  %i.er = trunc i32 %.sroa.0.0.insert.insert.i.i86 to i1
  br i1 %i.er, label %_ZN4jiff4span4Span9try_years17h70d7c51b5bbf33e7E.exit.thread, label %bb.bh

_ZN4jiff4span4Span9try_years17h70d7c51b5bbf33e7E.exit.thread: ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit109"
  %i.es = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 24), !noalias !10281
  %i.et = ptrtoint ptr %i.es to i64
  br label %bb.bk

bb.bh:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit109"
  %.sroa.517.0.extract.shift.i = lshr i32 %.sroa.0.0.insert.insert.i.i86, 16 ; 2 uses
  %.sroa.517.0.extract.trunc.i = trunc nuw i32 %.sroa.517.0.extract.shift.i to i16 ; 2 uses
  %i.eu = icmp slt i32 %.sroa.0.0.insert.insert.i.i86, 0 ; 2 uses
  %i.ev = sub i16 0, %.sroa.517.0.extract.trunc.i
  %.sroa.012.0.i = select i1 %i.eu, i16 %i.ev, i16 %.sroa.517.0.extract.trunc.i
  %i.ew = icmp ne i32 %.sroa.517.0.extract.shift.i, 0 ; 6 uses
  %i.ex = and i16 %.sroa.12.0.copyload, -961
  %masksel.i88 = select i1 %i.ew, i16 512, i16 0
  br i1 %i.eu, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h9dfb881f1a11257bE.exit84", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ew, label %_ZN4jiff4span4Span9try_years17h70d7c51b5bbf33e7E.exit, label %bb.bj

end_hunk_0
begin_hunk_1_@"_ZN4jiff5error8duration104_$LT$impl$u20$core..convert..From$LT$jiff..error..duration..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h2e38461a7771ba71E":bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %bb.e unwind label %bb.d, !noalias !10704

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10704
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !10704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10704
  ret ptr %i.e
}

; Function Attrs: cold noinline nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN4jiff5error9timestamp105_$LT$impl$u20$core..convert..From$LT$jiff..error..timestamp..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h7319ec39f69556bbE"(i1 noundef zeroext %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !10710 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = zext i1 %0 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10711
  store i64 1, ptr %i.a, align 8, !noalias !10711
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8, !noalias !10711
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !noalias !10711
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 31, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %i.b, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10712
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !10712 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit", !prof !42

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i unwind label %bb.c, !noalias !10711

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %bb.e unwind label %bb.d, !noalias !10711

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10711
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !10711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10711
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff5zoned10ZonedRound5round17hd42cf559dce0eca6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !10804 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 4                ; 12 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [12 x i8], align 4                ; 6 uses
  %i.o = alloca [12 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 11 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [12 x i8], align 4                ; 3 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !49, !noundef !30
  %i.x = icmp eq i8 %i.w, 6
  br i1 %i.x, label %bb.b, label %bb.dq

bb.b:                                             ; preds = %bb.a
  %.val18 = load i64, ptr %1, align 8, !noundef !30 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.val19 = load i8, ptr %i.y, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10806)
  %i.z = add i64 %.val18, -1000000001
  %or.cond.i.i69.i = icmp ult i64 %i.z, -1000000000
  br i1 %or.cond.i.i69.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 10), !noalias !10807
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ab = icmp samesign ult i64 %.val18, 2
  br i1 %i.ab, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 396035), !noalias !10807
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.626.0.ph.i = phi ptr [ %i.ac, %bb.e ], [ %i.aa, %bb.c ]
  %i.ad = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h52dcc0fce49e06ceE"(i8 noundef 0, ptr noundef nonnull %.sroa.626.0.ph.i), !noalias !10808
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !10805
  store i64 1, ptr %0, align 8, !alias.scope !10805
  br label %_ZN4jiff5zoned10ZonedRound10round_days17h4f781b7188dcbbedE.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10809
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.028.0.copyload.i = load i32, ptr %i.af, align 8, !alias.scope !10806
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %.sroa.028.0.copyload.i, ptr %i.ag, align 8, !noalias !10809
  store i64 0, ptr %i.o, align 8, !noalias !10809
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val40.i = load ptr, ptr %i.ah, align 8, !alias.scope !10806, !noundef !30 ; 9 uses
  %i.ai = ptrtoint ptr %.val40.i to i64
  %i.aj = and i64 %i.ai, 7                        ; 2 uses
  switch i64 %i.aj, label %bb.h [
    i64 1, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i"
    i64 2, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i"
    i64 3, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i"
    i64 0, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i"
    i64 4, label %bb.i
    i64 5, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %.val40.i, i64 -20
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !noalias !10809
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.j, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i"

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %.val40.i, i64 -21
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !10809
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i"

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i": ; preds = %bb.k, %bb.i, %bb.g, %bb.g, %bb.g, %bb.g
  call fastcc void @_ZN4jiff5civil8datetime8DateTime8to_zoned17h5adb8f7daecf3e79E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.r, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.o, ptr noundef %.val40.i), !noalias !10809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10811)
  %i.aq = load i64, ptr %i.r, align 8, !range !72, !alias.scope !10811, !noalias !10809, !noundef !30
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !10812, !noalias !10809 ; 4 uses
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i"
  %i.au = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17hce1dae6aaf5d3408E"(i8 noundef 17, ptr noundef %i.at), !noalias !10813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10809
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !10805
  store i64 1, ptr %0, align 8, !alias.scope !10805
  br label %_ZN4jiff5zoned10ZonedRound10round_days17h4f781b7188dcbbedE.exit

bb.n:                                             ; preds = %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i"
  %.sroa.910.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.910.sroa.0.0.copyload.i = load i32, ptr %.sroa.910.8..sroa_idx.i, align 8, !alias.scope !10814, !noalias !10809 ; 4 uses
  %.sroa.910.sroa.6.0..sroa.910.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.910.sroa.6.0.copyload.i = load ptr, ptr %.sroa.910.sroa.6.0..sroa.910.8..sroa_idx.sroa_idx.i, align 8, !alias.scope !10814, !noalias !10809 ; 12 uses
  %.sroa.910.sroa.7.0..sroa.910.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.910.sroa.7.0.copyload.i = load i32, ptr %.sroa.910.sroa.7.0..sroa.910.8..sroa_idx.sroa_idx.i, align 8, !alias.scope !10814, !noalias !10809
  %.sroa.910.sroa.8.0..sroa.910.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %.sroa.910.sroa.8.0.copyload.i = load i32, ptr %.sroa.910.sroa.8.0..sroa.910.8..sroa_idx.sroa_idx.i, align 4, !alias.scope !10814, !noalias !10809
  %.sroa.910.sroa.9.0..sroa.910.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.910.sroa.9.0.copyload.i = load i32, ptr %.sroa.910.sroa.9.0..sroa.910.8..sroa_idx.sroa_idx.i, align 8, !alias.scope !10814, !noalias !10809 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10809
  %i.aw = ptrtoint ptr %i.at to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10809
  %.sroa.03.0.extract.trunc.i.i.i = trunc i32 %.sroa.910.sroa.9.0.copyload.i to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.910.sroa.9.0.copyload.i, 16
  %.sroa.4.0.extract.trunc.i.i.i = trunc i32 %.sroa.4.0.extract.shift.i.i.i to i8 ; 4 uses
  %.sroa.54.0.extract.shift.i.i.i = lshr i32 %.sroa.910.sroa.9.0.copyload.i, 24
  %.sroa.54.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.54.0.extract.shift.i.i.i to i8 ; 3 uses
  %i.ax = icmp sgt i8 %.sroa.54.0.extract.trunc.i.i.i, 27
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread.i.i.i, %bb.q, %bb.n
  %.sroa.5.4.insert.insert.i.i = and i32 %.sroa.910.sroa.9.0.copyload.i, 16777215
  %3 = and i32 %.sroa.910.sroa.9.0.copyload.i, -16777216
  %.sroa.5.5.insert.shift.i.i = add i32 %3, 16777216
  %.sroa.5.5.insert.insert.i.i = or disjoint i32 %.sroa.5.5.insert.shift.i.i, %.sroa.5.4.insert.insert.i.i
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.ay = icmp eq i8 %.sroa.4.0.extract.trunc.i.i.i, 2
  br i1 %i.ay, label %.thread.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = ashr i8 %.sroa.4.0.extract.trunc.i.i.i, 3
  %i.ba = xor i8 %i.az, %.sroa.4.0.extract.trunc.i.i.i
  %i.bb = or i8 %i.ba, 30
  %i.bc = icmp eq i8 %i.bb, %.sroa.54.0.extract.trunc.i.i.i
  br i1 %i.bc, label %bb.r, label %bb.o

.thread.i.i.i:                                    ; preds = %bb.p
  %i.bd = srem i16 %.sroa.03.0.extract.trunc.i.i.i, 25
  %i.be = icmp eq i16 %i.bd, 0
  %..i.i.i.i = select i1 %i.be, i16 15, i16 3
  %i.bf = and i16 %..i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i
  %i.bg = icmp eq i16 %i.bf, 0
  %..i.i.i = select i1 %i.bg, i8 29, i8 28
  %i.bh = icmp eq i8 %..i.i.i, %.sroa.54.0.extract.trunc.i.i.i
  br i1 %i.bh, label %.thread23.i.i.i, label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %.sroa.4.0.extract.trunc.i.i.i, 12
  br i1 %i.bi, label %bb.s, label %.thread23.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.03.0.extract.trunc.i.i.i, i16 1) ; 2 uses
  %i.bk = extractvalue { i16, i1 } %i.bj, 1
  br i1 %i.bk, label %bb.u, label %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.i.i.i

_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.i.i.i: ; preds = %bb.s
  %i.bl = extractvalue { i16, i1 } %i.bj, 0       ; 2 uses
  %i.bm = add i16 %i.bl, -10000
  %narrow.i.i.i.i.i.i = icmp ult i16 %i.bm, -19999
  br i1 %narrow.i.i.i.i.i.i, label %bb.u, label %bb.t

.thread23.i.i.i:                                  ; preds = %bb.r, %.thread.i.i.i
  %.sroa.5.2.insert.ext25.i.i = and i32 %.sroa.910.sroa.9.0.copyload.i, 65535
  %.sroa.5.4.insert.ext33.i.i = add i32 %.sroa.910.sroa.9.0.copyload.i, 65536
  %.sroa.5.4.insert.shift34.i.i = and i32 %.sroa.5.4.insert.ext33.i.i, 16711680
  %.sroa.5.4.insert.insert36.i.i = or disjoint i32 %.sroa.5.2.insert.ext25.i.i, %.sroa.5.4.insert.shift34.i.i
  %.sroa.5.5.insert.insert42.i.i = or disjoint i32 %.sroa.5.4.insert.insert36.i.i, 16777216
  br label %bb.v

bb.t:                                             ; preds = %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.i.i.i
  %.sroa.5.2.insert.ext29.i.i = zext i16 %i.bl to i32
  %.sroa.5.5.insert.insert45.i.i = or disjoint i32 %.sroa.5.2.insert.ext29.i.i, 16842752
  br label %bb.v

bb.u:                                             ; preds = %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.i.i.i, %bb.s
  %i.bn = invoke fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 46)
          to label %.thread.i unwind label %bb.ab, !noalias !10809

.thread.i:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10809
  br label %._crit_edge

bb.v:                                             ; preds = %bb.t, %.thread23.i.i.i, %bb.o
  %.sroa.5.0.ph.i.i = phi i32 [ %.sroa.5.5.insert.insert45.i.i, %bb.t ], [ %.sroa.5.5.insert.insert.i.i, %bb.o ], [ %.sroa.5.5.insert.insert42.i.i, %.thread23.i.i.i ]
  %.sroa.511.8.insert.ext.i.i = zext i32 %.sroa.5.0.ph.i.i to i64
  %.sroa.511.8.insert.shift.i.i = shl nuw i64 %.sroa.511.8.insert.ext.i.i, 32
  %.sroa.511.0.insert.ext.i.i = zext i32 %.sroa.910.sroa.8.0.copyload.i to i64
  %.sroa.511.0.insert.insert.i.i = or disjoint i64 %.sroa.511.8.insert.shift.i.i, %.sroa.511.0.insert.ext.i.i
  %i.bo = inttoptr i64 %.sroa.511.0.insert.insert.i.i to ptr
  store i32 %.sroa.910.sroa.7.0.copyload.i, ptr %i.n, align 4, !noalias !10815
  %.sroa.7.4..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store ptr %i.bo, ptr %.sroa.7.4..sroa_idx2.i.i, align 4, !noalias !10815
  %i.bp = ptrtoint ptr %.sroa.910.sroa.6.0.copyload.i to i64
  %i.bq = and i64 %i.bp, 7                        ; 9 uses
  switch i64 %i.bq, label %bb.w [
    i64 1, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i.i"
    i64 2, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i.i"
    i64 3, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i.i"
    i64 0, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i.i"
    i64 4, label %bb.x
    i64 5, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.br = getelementptr i8, ptr %.sroa.910.sroa.6.0.copyload.i, i64 -20
  %i.bs = atomicrmw add ptr %i.br, i64 1 monotonic, align 8, !noalias !10815
  %i.bt = icmp slt i64 %i.bs, 0
  br i1 %i.bt, label %bb.y, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i.i"

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.v
  %i.bu = getelementptr i8, ptr %.sroa.910.sroa.6.0.copyload.i, i64 -21
  %i.bv = atomicrmw add ptr %i.bu, i64 1 monotonic, align 8, !noalias !10815
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.aa, label %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i.i"

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.trap()
  unreachable

"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i.i": ; preds = %bb.z, %bb.x, %bb.v, %bb.v, %bb.v, %bb.v
  invoke fastcc void @_ZN4jiff5civil8datetime8DateTime8to_zoned17h5adb8f7daecf3e79E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.n, ptr noundef %.sroa.910.sroa.6.0.copyload.i)
          to label %bb.ac unwind label %bb.ab, !noalias !10809

bb.ab:                                            ; preds = %._crit_edge, %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i.i", %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.ac:                                            ; preds = %"_ZN69_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..clone..Clone$GT$5clone17h905c311add63ccc5E.exit.i.i"
  %.pre.i = load i64, ptr %i.q, align 8, !range !72, !alias.scope !10816, !noalias !10809
  %i.by = trunc nuw i64 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10817)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre = load ptr, ptr %i.bz, align 8, !alias.scope !10818, !noalias !10809 ; 3 uses
  br i1 %i.by, label %._crit_edge, label %bb.ae

._crit_edge:                                      ; preds = %bb.ac, %.thread.i
  %i.ca = phi ptr [ %i.bn, %.thread.i ], [ %.pre, %bb.ac ]
  %i.cb = invoke fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17hce1dae6aaf5d3408E"(i8 noundef 15, ptr noundef %i.ca)
          to label %bb.ad unwind label %bb.ab, !noalias !10809

bb.ad:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10809
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !alias.scope !10805
  store i64 1, ptr %0, align 8, !alias.scope !10805
  %.pre71 = ptrtoint ptr %.sroa.910.sroa.6.0.copyload.i to i64
  %.pre72 = and i64 %.pre71, 7
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..zoned..Zoned$GT$17h49eaf56c7da8ea19E.exit.i"

bb.ae:                                            ; preds = %bb.ac
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.9.sroa.020.0.copyload.i = load i32, ptr %.sroa.9.8..sroa_idx.i, align 8, !alias.scope !10819, !noalias !10809 ; 2 uses
  %.sroa.9.sroa.622.0..sroa.9.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.9.sroa.622.0.copyload.i = load ptr, ptr %.sroa.9.sroa.622.0..sroa.9.8..sroa_idx.sroa_idx.i, align 8, !alias.scope !10819, !noalias !10809 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10809
  %i.cd = ptrtoint ptr %.pre to i64
  %i.ce = icmp eq ptr %i.at, %.pre
  %i.cf = icmp eq i32 %.sroa.910.sroa.0.0.copyload.i, %.sroa.9.sroa.020.0.copyload.i
  %or.cond.i = and i1 %i.ce, %i.cf
  br i1 %or.cond.i, label %.invoke.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = icmp eq ptr %i.at, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.cg, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i62.invoke.i, label %bb.ag, !prof !42

bb.ag:                                            ; preds = %bb.af
  %i.ch = sub nsw i64 0, %i.aw                    ; 2 uses
  %i.ci = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cd, i64 %i.ch) ; 2 uses
  %i.cj = extractvalue { i64, i1 } %i.ci, 0       ; 4 uses
  %i.ck = extractvalue { i64, i1 } %i.ci, 1
  br i1 %i.ck, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i62.invoke.i, label %bb.ah, !prof !42

bb.ah:                                            ; preds = %bb.ag
  %i.cl = sub i32 %.sroa.9.sroa.020.0.copyload.i, %.sroa.910.sroa.0.0.copyload.i ; 6 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.au, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cn = icmp sgt i32 %i.cl, 999999999
  br i1 %i.cn, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.co = icmp slt i32 %i.cl, -999999999
  br i1 %i.co, label %bb.al, label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.cp = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cj, i64 1) ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  br i1 %i.cq, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i62.invoke.i, label %bb.ao, !prof !42

bb.al:                                            ; preds = %bb.aj
  %i.cr = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cj, i64 -1) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1
  br i1 %i.cs, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i62.invoke.i, label %bb.am, !prof !42

bb.am:                                            ; preds = %bb.al
  %i.ct = extractvalue { i64, i1 } %i.cr, 0
  %i.cu = add nsw i32 %i.cl, 1000000000
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am, %bb.aj
  %.sroa.010.1.i.i.i = phi i32 [ %i.cy, %bb.ao ], [ %i.cu, %bb.am ], [ %i.cl, %bb.aj ] ; 6 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.cx, %bb.ao ], [ %i.ct, %bb.am ], [ %i.cj, %bb.aj ] ; 7 uses
  %i.cv = icmp eq i64 %.sroa.0.1.i.i.i, 0
  %i.cw = icmp eq i32 %.sroa.010.1.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond.i.i.i, label %bb.au, label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.cx = extractvalue { i64, i1 } %i.cp, 0
  %i.cy = add nsw i32 %i.cl, -1000000000
  br label %bb.an

bb.ap:                                            ; preds = %bb.an
  %i.cz = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i.i.i, i64 0)
  %i.da = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i.i.i, i32 0)
  %.not.i.i.i = icmp eq i64 %i.cz, %i.da
  br i1 %.not.i.i.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.db = icmp slt i64 %.sroa.0.1.i.i.i, 0
  br i1 %i.db, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dc = add nsw i64 %.sroa.0.1.i.i.i, -1
  %i.dd = add nsw i32 %.sroa.010.1.i.i.i, 1000000000
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.de = add nsw i64 %.sroa.0.1.i.i.i, 1
  %i.df = add nsw i32 %.sroa.010.1.i.i.i, -1000000000
  br label %bb.au

bb.at:                                            ; preds = %.invoke, %.invoke.i, %bb.bh, %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i62.invoke.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr39drop_in_place$LT$jiff..zoned..Zoned$GT$17h49eaf56c7da8ea19E"(ptr %.sroa.9.sroa.622.0.copyload.i) #47, !noalias !10809
  br label %bb.de

bb.au:                                            ; preds = %bb.as, %bb.ar, %bb.ap, %bb.an, %bb.ah
  %.sroa.6.0.ph.i.i = phi i32 [ %.sroa.010.1.i.i.i, %bb.ap ], [ %i.dd, %bb.ar ], [ %i.df, %bb.as ], [ %.sroa.010.1.i.i.i, %bb.an ], [ 0, %bb.ah ]
  %.sroa.4.0.ph.i.i = phi i64 [ %.sroa.0.1.i.i.i, %bb.ap ], [ %i.dc, %bb.ar ], [ %i.de, %bb.as ], [ %.sroa.0.1.i.i.i, %bb.an ], [ %i.cj, %bb.ah ]
  %i.dh = load i64, ptr %2, align 8, !alias.scope !10806, !noundef !30
  %i.di = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dh, i64 %i.ch) ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 0       ; 4 uses
  %i.dk = extractvalue { i64, i1 } %i.di, 1
  br i1 %i.dk, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i62.invoke.i, label %bb.av, !prof !42

bb.av:                                            ; preds = %bb.au
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !alias.scope !10806, !noundef !30
  %i.dn = sub i32 %i.dm, %.sroa.910.sroa.0.0.copyload.i ; 6 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.bh, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dp = icmp sgt i32 %i.dn, 999999999
  br i1 %i.dp, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dq = icmp slt i32 %i.dn, -999999999
  br i1 %i.dq, label %bb.az, label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.dr = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dj, i64 1) ; 2 uses
  %i.ds = extractvalue { i64, i1 } %i.dr, 1
  br i1 %i.ds, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i62.invoke.i, label %bb.bc, !prof !42

bb.az:                                            ; preds = %bb.ax
  %i.dt = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dj, i64 -1) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  br i1 %i.du, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i62.invoke.i, label %bb.ba, !prof !42

bb.ba:                                            ; preds = %bb.az
  %i.dv = extractvalue { i64, i1 } %i.dt, 0
end_hunk_1
begin_hunk_2_@_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noundef !30 ; 3 uses
  %i.d = sext i32 %2 to i64
  %i.e = add nsw i64 %i.d, 378683424000
  %i.f = add i64 %i.e, %i.a                       ; 2 uses
  %i.g = udiv i64 %i.f, 86400
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = urem i64 %i.f, 86400                     ; 3 uses
  %i.j = icmp slt i32 %i.c, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.i, 0
  %i.k = add nsw i32 %i.c, 1000000000             ; 2 uses
  br i1 %.not, label %.thread44, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.05.0 = phi i32 [ %i.k, %bb.d ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.n, %bb.d ], [ %i.i, %bb.a ] ; 2 uses
  %i.l = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.l, label %bb.f, label %bb.e

.thread44:                                        ; preds = %bb.b
  %i.m = add i32 %i.h, -1
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.n = add nsw i64 %i.i, -1
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = trunc nuw nsw i64 %.sroa.0.0 to i32      ; 2 uses
  %i.p = udiv i32 %i.o, 3600                      ; 2 uses
  %i.q = urem i32 %i.o, 3600                      ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.g
  %.sroa.05.042 = phi i32 [ %.sroa.05.0, %bb.c ], [ %.sroa.05.0, %bb.e ], [ %.sroa.05.04148, %bb.g ]
  %.sroa.09.040 = phi i32 [ %i.h, %bb.c ], [ %i.h, %bb.e ], [ %.sroa.09.03949, %bb.g ]
  %.sroa.426.0 = phi i32 [ 0, %bb.c ], [ %i.p, %bb.e ], [ %.sroa.426.6.insert.insert, %bb.g ]
  %i.s = shl i32 %.sroa.09.040, 2
  %i.t = add i32 %i.s, 33266051                   ; 2 uses
  %i.u = urem i32 %i.t, 146097
  %i.v = or i32 %i.u, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 2939745            ; 2 uses
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = udiv i32 %i.y, 11758980
  %i.aa = mul nuw nsw i32 %i.z, 2141
  %i.ab = add nuw nsw i32 %i.aa, 197913           ; 3 uses
  %.lhs.trunc.i = trunc i32 %i.ab to i16
  %i.ac = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.ac to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.ad = icmp ugt i32 %i.y, -696719417           ; 2 uses
  %i.ae = and i32 %i.ab, 4128768
  %i.af = add nuw nsw i32 %i.ae, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.ad, i32 %i.af, i32 %i.ab
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %i.ag = udiv i32 %i.t, 146097
  %i.ah = mul nuw nsw i32 %i.ag, 100
  %i.ai = add nuw nsw i32 %i.ah, 32736
  %i.aj = lshr i64 %i.x, 32
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ai, %i.ak
  %i.am = zext i1 %i.ad to i32
  %i.an = add nuw nsw i32 %i.al, %i.am
  %.sroa.0.0.insert.ext.i = and i32 %i.an, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.ao, align 4
  store i32 %.sroa.05.042, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.426.0, ptr %.sroa.4.0..sroa_idx, align 4
  ret void

bb.g:                                             ; preds = %.thread44, %bb.e
  %i.ap = phi i32 [ 3599, %.thread44 ], [ %i.q, %bb.e ]
  %i.aq = phi i32 [ 23, %.thread44 ], [ %i.p, %bb.e ]
  %.sroa.09.03949 = phi i32 [ %i.m, %.thread44 ], [ %i.h, %bb.e ]
  %.sroa.05.04148 = phi i32 [ %i.k, %.thread44 ], [ %.sroa.05.0, %bb.e ]
  %.lhs.trunc = trunc nuw nsw i32 %i.ap to i16    ; 2 uses
  %i.ar = udiv i16 %.lhs.trunc, 60
  %i.as = shl nuw nsw i16 %i.ar, 8
  %.sroa.426.5.insert.shift = zext nneg i16 %i.as to i32
  %i.at = urem i16 %.lhs.trunc, 60
  %.zext33 = zext nneg i16 %i.at to i32
  %.sroa.426.6.insert.shift = shl nuw nsw i32 %.zext33, 16
  %i.au = or disjoint i32 %.sroa.426.6.insert.shift, %.sroa.426.5.insert.shift
  %.sroa.426.6.insert.insert = add nuw nsw i32 %i.au, %i.aq
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc range(i48 0, -65534) i48 @_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(4) %0, i32 noundef range(i32 -178956971, 178956971) %1) unnamed_addr #20 !guid !11197 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 -1, label %bb.d
    i32 1, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 2, !alias.scope !11198, !noundef !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 2, !alias.scope !11198, !noundef !30 ; 2 uses
  %i.d = sext i8 %i.c to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !11198, !noundef !30
  %i.g = icmp ult i8 %i.c, 3                      ; 2 uses
  %i.h = or disjoint i32 %i.d, 12
  %.sroa.0.0.i = select i1 %i.g, i32 %i.h, i32 %i.d
  %i.i = sext i16 %i.a to i32
  %i.j = add nsw i32 %i.i, 32800
  %.neg.i = sext i1 %i.g to i32
  %i.k = add nsw i32 %i.j, %.neg.i                ; 3 uses
  %i.l = sext i8 %i.f to i32
  %i.m = udiv i32 %i.k, 100
  %i.n = mul nuw nsw i32 %i.k, 1461
  %i.o = lshr i32 %i.n, 2
  %i.p = udiv i32 %i.k, 400
  %i.q = mul nsw i32 %.sroa.0.0.i, 979
  %i.r = add nsw i32 %i.q, -2919
  %i.s = lshr i32 %i.r, 5
  %i.t = add nsw i32 %1, -12699423
  %i.u = add nsw i32 %i.t, %i.l
  %i.v = sub nsw i32 %i.u, %i.m
  %i.w = add nsw i32 %i.v, %i.p
  %i.x = add nsw i32 %i.w, %i.o
  %i.y = add nsw i32 %i.x, %i.s                   ; 2 uses
  %i.z = add nsw i32 %i.y, 4371587
  %or.cond.i = icmp ult i32 %i.z, 7304484
  br i1 %or.cond.i, label %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit, label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.06.0.copyload = load i32, ptr %0, align 2
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.07.0.copyload = load i32, ptr %0, align 2 ; 5 uses
  %.sroa.04.0.extract.trunc.i = trunc i32 %.sroa.07.0.copyload to i16 ; 3 uses
  %.sroa.45.0.extract.shift.i = lshr i32 %.sroa.07.0.copyload, 16
  %.sroa.45.0.extract.trunc.i = trunc i32 %.sroa.45.0.extract.shift.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.mask.i = and i32 %.sroa.07.0.copyload, -16777216
  %i.aa = icmp eq i32 %.sroa.5.0.extract.shift.mask.i, 16777216
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i8 %.sroa.45.0.extract.trunc.i, 1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %.sroa.020.0.insert.insert.i = add i32 %.sroa.07.0.copyload, -16777216
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = add i16 %.sroa.04.0.extract.trunc.i, -1 ; 2 uses
  %i.ad = icmp slt i16 %i.ac, -9999
  br i1 %i.ad, label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ae = add i8 %.sroa.45.0.extract.trunc.i, -1  ; 4 uses
  %i.af = icmp eq i8 %i.ae, 2
  br i1 %i.af, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.sroa.013.0.insert.ext.i = zext i16 %i.ac to i32
  %.sroa.013.0.insert.insert.i = or disjoint i32 %.sroa.013.0.insert.ext.i, 520880128
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = srem i16 %.sroa.04.0.extract.trunc.i, 25
  %i.ah = icmp eq i16 %i.ag, 0
  %..i.i = select i1 %i.ah, i16 15, i16 3
  %i.ai = and i16 %..i.i, %.sroa.04.0.extract.trunc.i
  %i.aj = icmp eq i16 %i.ai, 0
  %..i = select i1 %i.aj, i32 486539264, i32 469762048
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ak = ashr i8 %i.ae, 3
  %i.al = xor i8 %i.ak, %i.ae
  %i.am = or i8 %i.al, 30
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw i32 %i.an, 24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.016.0.i = phi i32 [ %i.ao, %bb.k ], [ %..i, %bb.j ]
  %.sroa.418.0.insert.ext.i = zext i8 %i.ae to i32
  %.sroa.418.0.insert.shift.i = shl nuw nsw i32 %.sroa.418.0.insert.ext.i, 16
  %.sroa.418.0.insert.insert.i = or disjoint i32 %.sroa.016.0.i, %.sroa.418.0.insert.shift.i
  %.sroa.017.0.insert.ext.i = and i32 %.sroa.07.0.copyload, 65535
  %.sroa.017.0.insert.insert.i = or disjoint i32 %.sroa.418.0.insert.insert.i, %.sroa.017.0.insert.ext.i
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.m:                                             ; preds = %bb.a
  %.sroa.09.0.copyload = load i32, ptr %0, align 2 ; 7 uses
  %.sroa.03.0.extract.trunc.i = trunc i32 %.sroa.09.0.copyload to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.09.0.copyload, 16
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8 ; 4 uses
  %.sroa.54.0.extract.shift.i = lshr i32 %.sroa.09.0.copyload, 24
  %.sroa.54.0.extract.trunc.i = trunc nuw i32 %.sroa.54.0.extract.shift.i to i8 ; 3 uses
  %i.ap = icmp sgt i8 %.sroa.54.0.extract.trunc.i, 27
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread.i, %bb.p, %bb.m
  %2 = and i32 %.sroa.09.0.copyload, -16777216
  %.sroa.521.0.insert.shift.i = add i32 %2, 16777216
  %3 = and i32 %.sroa.09.0.copyload, 16777215
  %.sroa.019.0.insert.insert.i = or disjoint i32 %.sroa.521.0.insert.shift.i, %3
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = icmp eq i8 %.sroa.4.0.extract.trunc.i, 2
  br i1 %i.aq, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = ashr i8 %.sroa.4.0.extract.trunc.i, 3
  %i.as = xor i8 %i.ar, %.sroa.4.0.extract.trunc.i
  %i.at = or i8 %i.as, 30
  %i.au = icmp eq i8 %i.at, %.sroa.54.0.extract.trunc.i
  br i1 %i.au, label %bb.q, label %bb.n

.thread.i:                                        ; preds = %bb.o
  %i.av = srem i16 %.sroa.03.0.extract.trunc.i, 25
  %i.aw = icmp eq i16 %i.av, 0
  %..i.i28 = select i1 %i.aw, i16 15, i16 3
  %i.ax = and i16 %..i.i28, %.sroa.03.0.extract.trunc.i
  %i.ay = icmp eq i16 %i.ax, 0
  %..i29 = select i1 %i.ay, i8 29, i8 28
  %i.az = icmp eq i8 %..i29, %.sroa.54.0.extract.trunc.i
  br i1 %i.az, label %.thread23.i, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp eq i8 %.sroa.4.0.extract.trunc.i, 12
  br i1 %i.ba, label %bb.r, label %.thread23.i

bb.r:                                             ; preds = %bb.q
  %i.bb = add i16 %.sroa.03.0.extract.trunc.i, 1  ; 2 uses
  %i.bc = icmp sgt i16 %i.bb, 9999
  br i1 %i.bc, label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit, label %bb.s

.thread23.i:                                      ; preds = %bb.q, %.thread.i
  %.sroa.417.0.insert.ext.i = add i32 %.sroa.09.0.copyload, 65536
  %.sroa.417.0.insert.shift.i = and i32 %.sroa.417.0.insert.ext.i, 16711680
  %.sroa.016.0.insert.ext.i = and i32 %.sroa.09.0.copyload, 65535
  %.sroa.417.0.insert.insert.i = or disjoint i32 %.sroa.016.0.insert.ext.i, %.sroa.417.0.insert.shift.i
  %.sroa.016.0.insert.insert.i = or disjoint i32 %.sroa.417.0.insert.insert.i, 16777216
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.s:                                             ; preds = %bb.r
  %.sroa.013.0.insert.ext.i26 = zext i16 %i.bb to i32
  %.sroa.013.0.insert.insert.i27 = or disjoint i32 %.sroa.013.0.insert.ext.i26, 16842752
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit: ; preds = %bb.b, %bb.s, %.thread23.i, %bb.r, %bb.n, %bb.l, %bb.i, %bb.g, %bb.f, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit, %bb.c
  %.sroa.6.0 = phi i32 [ 11, %bb.g ], [ %.sroa.06.0.copyload, %bb.c ], [ %.sroa.0.0.insert.insert.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit ], [ 8, %bb.r ], [ %.sroa.020.0.insert.insert.i, %bb.f ], [ %.sroa.013.0.insert.insert.i, %bb.i ], [ %.sroa.017.0.insert.insert.i, %bb.l ], [ %.sroa.019.0.insert.insert.i, %bb.n ], [ %.sroa.013.0.insert.insert.i27, %bb.s ], [ %.sroa.016.0.insert.insert.i, %.thread23.i ], [ 5, %bb.b ]
  %.sroa.0.0 = phi i16 [ 1, %bb.g ], [ 0, %bb.c ], [ 0, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit ], [ 1, %bb.r ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.s ], [ 0, %.thread23.i ], [ 1, %bb.b ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit: ; preds = %bb.b
  %i.bd = shl nsw i32 %i.y, 2
  %i.be = add nsw i32 %i.bd, 50797691             ; 2 uses
  %i.bf = urem i32 %i.be, 146097
  %i.bg = or i32 %i.bf, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = mul nuw nsw i64 %i.bh, 2939745          ; 2 uses
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = udiv i32 %i.bj, 11758980
  %i.bl = mul nuw nsw i32 %i.bk, 2141
  %i.bm = add nuw nsw i32 %i.bl, 197913           ; 3 uses
  %i.bn = and i32 %i.bm, 4128768
  %i.bo = icmp ugt i32 %i.bj, -696719417          ; 2 uses
  %i.bp = udiv i32 %i.be, 146097
  %i.bq = mul nuw nsw i32 %i.bp, 100
  %i.br = lshr i64 %i.bi, 32
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = zext i1 %i.bo to i32
  %i.bu = add nuw nsw i32 %i.bq, 32736
  %i.bv = add nuw nsw i32 %i.bu, %i.bs
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  %.lhs.trunc.i = trunc i32 %i.bm to i16
  %i.bx = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.bx to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.by = add nuw nsw i32 %i.bn, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.bo, i32 %i.by, i32 %i.bm
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.bw, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc range(i48 131072, -16646142) i48 @_ZN4jiff6shared4util5itime5IDate20nth_weekday_of_month17h606984929501b6ceE(i16 %.0.val, i8 %.2.val, i8 noundef range(i8 6, 5) %0, i8 noundef range(i8 1, 8) %1) unnamed_addr #16 !guid !11199 {
bb.a:
  %i.a = icmp ne i8 %0, 0
  %i.b = add i8 %0, 5
  %i.c = icmp ult i8 %i.b, 11
  %or.cond1 = and i1 %i.a, %i.c
  br i1 %or.cond1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i8 %0, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.k, %bb.p, %bb.a, %bb.e, %bb.j
  %.sroa.7.0 = phi i32 [ 7, %bb.a ], [ %.sroa.019.0.insert.insert, %bb.e ], [ %.sroa.09.0.insert.insert, %bb.j ], [ %.sroa.023.0.insert.insert, %bb.p ], [ %.sroa.026.0.insert.insert, %bb.k ]
  %.sroa.0.0 = phi i16 [ 1, %bb.a ], [ 0, %bb.e ], [ 1, %bb.j ], [ 1, %bb.p ], [ 0, %bb.k ]
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i48
  %.sroa.7.0.insert.shift = shl nuw i48 %.sroa.7.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i8 %.2.val, 2                    ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.f = sext i8 %.2.val to i32                   ; 2 uses
  %i.g = icmp ult i8 %.2.val, 3                   ; 2 uses
  %i.h = or disjoint i32 %i.f, 12
  %.sroa.0.0.i = select i1 %i.g, i32 %i.h, i32 %i.f
  %i.i = sext i16 %.0.val to i32
  %i.j = add nsw i32 %i.i, 32800
  %.neg.i = sext i1 %i.g to i32
  %i.k = add nsw i32 %i.j, %.neg.i                ; 3 uses
  %i.l = udiv i32 %i.k, 100
  %i.m = mul nuw nsw i32 %i.k, 1461
  %i.n = lshr i32 %i.m, 2
  %i.o = udiv i32 %i.k, 400
  %i.p = mul nsw i32 %.sroa.0.0.i, 979
  %i.q = add nsw i32 %i.p, -2919
  %i.r = lshr i32 %i.q, 5
  %reass.sub9 = sub nsw i32 %i.o, %i.l
  %i.s = add nsw i32 %reass.sub9, -12699419
  %i.t = add nsw i32 %i.s, %i.n
  %i.u = add nsw i32 %i.t, %i.r
  %i.v = srem i32 %i.u, 7                         ; 2 uses
  %.inv = icmp sgt i32 %i.v, -1
  %i.w = select i1 %.inv, i32 -1, i32 248
  %i.x = sub nsw i32 %i.w, %i.v
  %.neg4 = trunc i32 %i.x to i8
  %i.y = add nsw i8 %1, %.neg4
  %i.z = srem i8 %i.y, 7                          ; 3 uses
  %i.aa = icmp slt i8 %i.z, 0
  %i.ab = add nsw i8 %i.z, 7
  %spec.select.i = select i1 %i.aa, i8 %i.ab, i8 %i.z
  %i.ac = mul nuw nsw i8 %0, 7
  %i.ad = add nsw i8 %i.ac, -6
  %i.ae = add nsw i8 %i.ad, %spec.select.i
  %.sroa.521.0.insert.ext = zext nneg i8 %i.ae to i32
  %.sroa.521.0.insert.shift = shl nuw nsw i32 %.sroa.521.0.insert.ext, 24
  %.sroa.420.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.420.0.insert.shift = shl nuw nsw i32 %.sroa.420.0.insert.ext, 16
  %.sroa.420.0.insert.insert = or disjoint i32 %.sroa.521.0.insert.shift, %.sroa.420.0.insert.shift
  %.sroa.019.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.019.0.insert.insert = or disjoint i32 %.sroa.420.0.insert.insert, %.sroa.019.0.insert.ext
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.af = srem i16 %.0.val, 25
  %i.ag = icmp eq i16 %i.af, 0
  %..i = select i1 %i.ag, i16 15, i16 3
  %i.ah = and i16 %..i, %.0.val
  %i.ai = icmp eq i16 %i.ah, 0
  %. = select i1 %i.ai, i8 29, i8 28
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.aj = ashr i8 %.2.val, 3
  %i.ak = xor i8 %i.aj, %.2.val
  %i.al = or i8 %i.ak, 30
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.014.0 = phi i8 [ %i.al, %bb.g ], [ %., %bb.f ] ; 2 uses
  %i.am = sext i8 %.2.val to i32                  ; 2 uses
  %i.an = icmp ult i8 %.2.val, 3                  ; 2 uses
  %i.ao = or disjoint i32 %i.am, 12
  %.sroa.0.0.i35 = select i1 %i.an, i32 %i.ao, i32 %i.am
  %i.ap = sext i16 %.0.val to i32
  %i.aq = add nsw i32 %i.ap, 32800
  %.neg.i36 = sext i1 %i.an to i32
  %i.ar = add nsw i32 %i.aq, %.neg.i36            ; 3 uses
  %i.as = sext i8 %.sroa.014.0 to i32
  %i.at = udiv i32 %i.ar, 100
  %i.au = mul nuw nsw i32 %i.ar, 1461
  %i.av = lshr i32 %i.au, 2
  %i.aw = udiv i32 %i.ar, 400
  %i.ax = mul nsw i32 %.sroa.0.0.i35, 979
  %i.ay = add nsw i32 %i.ax, -2919
  %i.az = lshr i32 %i.ay, 5
  %reass.sub = sub nsw i32 %i.aw, %i.at
  %i.ba = add nsw i32 %reass.sub, -12699420
  %i.bb = add nsw i32 %i.ba, %i.av
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = add nsw i32 %i.bc, %i.as
  %i.be = srem i32 %i.bd, 7                       ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %i.bg = select i1 %i.bf, i32 7, i32 0
  %spec.select.i.i37 = add nsw i32 %i.bg, %i.be
  %i.bh = trunc nuw nsw i32 %spec.select.i.i37 to i8
  %reass.sub8 = sub nsw i8 %i.bh, %1
  %i.bi = add nsw i8 %reass.sub8, 1
  %i.bj = srem i8 %i.bi, 7                        ; 3 uses
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = add nsw i8 %i.bj, 7
  %spec.select.i38 = select i1 %i.bk, i8 %i.bl, i8 %i.bj
  %i.bm = sub nuw nsw i8 %.sroa.014.0, %spec.select.i38
  %i.bn = xor i8 %0, -1
  %.neg = mul nsw i8 %i.bn, -7
  %i.bo = add i8 %i.bm, %.neg                     ; 4 uses
  %i.bp = icmp slt i8 %i.bo, 1
  br i1 %i.bp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = icmp samesign ugt i8 %i.bo, 28
  br i1 %i.bq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.5.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.5.0.insert.shift = shl nuw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.4.0.insert.ext10 = zext i8 %.2.val to i32
  %.sroa.4.0.insert.shift11 = shl nuw nsw i32 %.sroa.4.0.insert.ext10, 8
  %.sroa.4.0.insert.insert13 = or disjoint i32 %.sroa.4.0.insert.shift11, %.sroa.5.0.insert.shift
  %.sroa.09.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert13, 2
  br label %bb.c

bb.k:                                             ; preds = %bb.o, %bb.i
  %.sroa.528.0.insert.ext = zext nneg i8 %i.bo to i32
  %.sroa.528.0.insert.shift = shl nuw nsw i32 %.sroa.528.0.insert.ext, 24
  %.sroa.427.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.427.0.insert.shift = shl nuw nsw i32 %.sroa.427.0.insert.ext, 16
  %.sroa.427.0.insert.insert = or disjoint i32 %.sroa.528.0.insert.shift, %.sroa.427.0.insert.shift
  %.sroa.026.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.026.0.insert.insert = or disjoint i32 %.sroa.427.0.insert.insert, %.sroa.026.0.insert.ext
  br label %bb.c

bb.l:                                             ; preds = %bb.i
  br i1 %i.e, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = srem i16 %.0.val, 25
  %i.bs = icmp eq i16 %i.br, 0
  %..i39 = select i1 %i.bs, i16 15, i16 3
  %i.bt = and i16 %..i39, %.0.val
  %i.bu = icmp eq i16 %i.bt, 0
  %.34 = select i1 %i.bu, i8 29, i8 28
  br label %bb.o
end_hunk_2
