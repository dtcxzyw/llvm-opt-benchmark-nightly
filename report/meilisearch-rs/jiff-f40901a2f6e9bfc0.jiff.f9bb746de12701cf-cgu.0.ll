Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4jiff5civil8datetime18DateTimeArithmetic11checked_add17had1ab0e18dcef9d4E:bb.a
  %.sink.i = phi i32 [ 1, %bb.n ], [ 1, %bb.p ], [ 0, %bb.q ]
  store i32 %.sink.i, ptr %0, align 8, !alias.scope !10331
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10339)
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.023.0.copyload.i = load i32, ptr %i.br, align 4, !alias.scope !10338, !noalias !10340 ; 2 uses
  %.sroa.026.0.copyload.i = load i64, ptr %2, align 4, !alias.scope !10338, !noalias !10340 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load i16, ptr %i.bs, align 8, !alias.scope !10339, !noalias !10341, !noundef !11 ; 2 uses
  %i.bu = and i16 %i.bt, 960
  %i.bv = and i16 %i.bt, 63
  %i.bw = icmp eq i16 %i.bv, 0                    ; 2 uses
  %i.bx = icmp eq i16 %i.bu, 0
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.bw, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  br i1 %i.bw, label %bb.ab, label %bb.aa, !prof !16

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10342
  call fastcc void @_ZN4jiff5civil4time4Time15overflowing_add17h5d13792563477874E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, i64 %.sroa.026.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !10341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10343)
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.bz = load i8, ptr %i.by, align 4, !range !59, !alias.scope !10344, !noalias !10345, !noundef !11 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 2
  %i.cb = load ptr, ptr %i.c, align 8, !alias.scope !10346, !noalias !10342 ; 2 uses
  br i1 %i.ca, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cc, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false), !alias.scope !10341, !noalias !10339
  store i32 0, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.w:                                             ; preds = %bb.u
  %i.cd = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h94c9f5eadfcf7d2eE"(ptr noundef %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10342
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !alias.scope !10337, !noalias !10347
  store i32 1, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.x:                                             ; preds = %bb.u
  %.sroa.741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr noundef nonnull align 8 dereferenceable(60) %.sroa.741.0..sroa_idx.i, i64 60, i1 false), !noalias !10342
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 69
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.532.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.11.0..sroa_idx.i, i64 3, i1 false), !noalias !10342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10342
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i8 %i.bz, ptr %.sroa.431.0..sroa_idx.i, align 4, !noalias !10342
  call fastcc void @_ZN4jiff5civil4date14DateArithmetic11checked_add17h0d983f9344ba4ef7E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.a, i32 %.sroa.023.0.copyload.i), !noalias !10342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10342
  call void @llvm.experimental.noalias.scope.decl(metadata !10348)
  %i.cf = load i16, ptr %i.b, align 8, !range !62, !alias.scope !10348, !noalias !10349, !noundef !11
  %i.cg = trunc nuw i16 %i.cf to i1
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !10348, !noalias !10349, !noundef !11
  %i.cj = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 3, ptr noundef %i.ci), !noalias !10350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10342
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !alias.scope !10337, !noalias !10347
  store i32 1, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.z:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.0.0.copyload.i.i13 = load i32, ptr %i.cl, align 2, !alias.scope !10348, !noalias !10349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10342
  %i.cm = ptrtoint ptr %i.cb to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.cm, ptr %i.cn, align 4, !alias.scope !10337, !noalias !10347
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.copyload.i.i13, ptr %.sroa.417.0..sroa_idx.i, align 4, !alias.scope !10337, !noalias !10347
  store i32 0, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.aa:                                            ; preds = %bb.t
  tail call void @_ZN4jiff5civil8datetime8DateTime24checked_add_span_general17h4df33807ad2f7b5cE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.ab:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10342
  call fastcc void @_ZN4jiff5civil4date14DateArithmetic11checked_add17h0d983f9344ba4ef7E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1, i32 %.sroa.023.0.copyload.i), !noalias !10341
  call void @llvm.experimental.noalias.scope.decl(metadata !10351)
  %i.co = load i16, ptr %i.d, align 8, !range !62, !alias.scope !10351, !noalias !10352, !noundef !11
  %i.cp = trunc nuw i16 %i.co to i1
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !10351, !noalias !10352, !noundef !11
  %i.cs = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 2, ptr noundef %i.cr), !noalias !10353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10342
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !10337, !noalias !10347
  store i32 1, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.0.0.copyload.i36.i = load i32, ptr %i.cu, align 2, !alias.scope !10351, !noalias !10352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10342
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.026.0.copyload.i, ptr %i.cv, align 4, !alias.scope !10337, !noalias !10347
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.copyload.i36.i, ptr %.sroa.4.0..sroa_idx.i12, align 4, !alias.scope !10337, !noalias !10347
  store i32 0, ptr %0, align 8, !alias.scope !10337, !noalias !10347
  br label %_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit

_ZN4jiff5civil8datetime8DateTime16checked_add_span17h74f3e44294679493E.exit: ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %_ZN4jiff5civil8datetime8DateTime20checked_add_duration17hced8427afbf789adE.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i32 } @_ZN4jiff5civil8datetime8DateTime11to_duration17h93e0596288ada61dE(i64 %.0.val, i32 %.8.val) unnamed_addr #5 {
bb.a:
  %.sroa.4.0.extract.shift.i = lshr i32 %.8.val, 16 ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  %sext.i = shl i32 %.sroa.4.0.extract.shift.i, 24
  %i.a = ashr exact i32 %sext.i, 24               ; 2 uses
  %i.b = icmp ult i8 %.sroa.4.0.extract.trunc.i, 3 ; 2 uses
  %i.c = or disjoint i32 %i.a, 12
  %.sroa.0.0.i.i = select i1 %i.b, i32 %i.c, i32 %i.a
  %sext2.i = shl i32 %.8.val, 16
  %i.d = ashr exact i32 %sext2.i, 16
  %i.e = add nsw i32 %i.d, 32800
  %.neg.i.i = sext i1 %i.b to i32
  %i.f = add nsw i32 %i.e, %.neg.i.i              ; 3 uses
  %i.g = ashr i32 %.8.val, 24
  %i.h = udiv i32 %i.f, 100
  %i.i = mul nuw nsw i32 %i.f, 1461
  %i.j = lshr i32 %i.i, 2
  %i.k = udiv i32 %i.f, 400
  %i.l = mul nsw i32 %.sroa.0.0.i.i, 979
  %i.m = add nsw i32 %i.l, -2919
  %i.n = lshr i32 %i.m, 5
  %i.o = add nsw i32 %i.g, -12699423
  %i.p = sub nuw nsw i32 %i.o, %i.h
  %i.q = add nuw nsw i32 %i.p, %i.k
  %i.r = add nsw i32 %i.q, %i.j
  %i.s = add nsw i32 %i.r, %i.n
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 86400                  ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.0.val to i32 ; 12 uses
  %i.v = shl i64 %.0.val, 24
  %i.w = ashr i64 %i.v, 56
  %i.x = mul nsw i64 %i.w, 3600
  %i.y = shl i64 %.0.val, 16
  %i.z = ashr i64 %i.y, 56
  %i.aa = mul nsw i64 %i.z, 60
  %i.ab = shl i64 %.0.val, 8
  %i.ac = ashr i64 %i.ab, 56
  %i.ad = add nsw i64 %i.x, %i.ac
  %i.ae = add nsw i64 %i.ad, %i.aa                ; 8 uses
  %i.af = icmp slt i32 %.sroa.0.0.extract.trunc, 1000000000
  br i1 %i.af, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #45, !noalias !10356
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ag = icmp sgt i32 %.sroa.0.0.extract.trunc, -1000000000
  br i1 %i.ag, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #45, !noalias !10356
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.ah, label %_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %i.ae, 0
  br i1 %i.ai, label %.thread23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call i64 @llvm.scmp.i64.i64(i64 %i.ae, i64 0)
  %i.ak = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.0.0.extract.trunc, i32 0)
  %.not.i13.i = icmp eq i64 %i.aj, %i.ak
  br i1 %.not.i13.i, label %.thread23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp slt i64 %i.ae, 0
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = add nsw i32 %.sroa.0.0.extract.trunc, 1000000000
  %i.an = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %spec.select = select i1 %i.an, i32 %i.am, i32 %.sroa.0.0.extract.trunc
  %i.ao = shl i64 %.0.val, 32
  %i.ap = ashr i64 %i.ao, 63
  %spec.select25 = add nsw i64 %i.ae, %i.ap
  br label %.thread23

_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread: ; preds = %bb.e
  %0 = add nsw i64 %i.u, %i.ae
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.aq = add nsw i32 %.sroa.0.0.extract.trunc, -1000000000
  %i.ar = icmp sgt i32 %.sroa.0.0.extract.trunc, 0 ; 2 uses
  %spec.select26 = select i1 %i.ar, i32 %i.aq, i32 %.sroa.0.0.extract.trunc
  %i.as = zext i1 %i.ar to i64
  %spec.select27 = add nsw i64 %i.ae, %i.as
  br label %.thread23

.thread23:                                        ; preds = %bb.j, %bb.i, %bb.f, %bb.g
  %.sroa.010.1.i = phi i32 [ %.sroa.0.0.extract.trunc, %bb.g ], [ %.sroa.0.0.extract.trunc, %bb.f ], [ %spec.select26, %bb.j ], [ %spec.select, %bb.i ] ; 5 uses
  %.pn = phi i64 [ %i.ae, %bb.g ], [ %i.ae, %bb.f ], [ %spec.select27, %bb.j ], [ %spec.select25, %bb.i ]
  %.sroa.0.1.i = add nsw i64 %.pn, %i.u           ; 7 uses
  %i.at = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %i.at, label %.thread, label %bb.k

bb.k:                                             ; preds = %.thread23
  %i.au = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i, i64 0)
  %i.av = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i, i32 0)
  %.not.i = icmp eq i64 %i.au, %i.av
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp slt i64 %.sroa.0.1.i, 0
  br i1 %i.aw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i64 %.sroa.0.1.i, -1
  %i.ay = add nsw i32 %.sroa.010.1.i, 1000000000
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.az = add nsw i64 %.sroa.0.1.i, 1
  %i.ba = add nsw i32 %.sroa.010.1.i, -1000000000
  br label %.thread

.thread:                                          ; preds = %_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread, %bb.n, %bb.m, %bb.k, %.thread23
  %.sroa.63.0.ph = phi i32 [ 0, %_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread ], [ %.sroa.010.1.i, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.n ], [ %.sroa.010.1.i, %.thread23 ]
  %.sroa.42.0.ph = phi i64 [ %0, %_ZN4jiff5civil4time4Time11to_duration17hacc1d49d9bc9847eE.exit.thread ], [ %.sroa.0.1.i, %bb.k ], [ %i.ax, %bb.m ], [ %i.az, %bb.n ], [ %.sroa.0.1.i, %.thread23 ]
  %i.bb = insertvalue { i64, i32 } poison, i64 %.sroa.42.0.ph, 0
  %i.bc = insertvalue { i64, i32 } %i.bb, i32 %.sroa.63.0.ph, 1
  ret { i64, i32 } %i.bc
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_ZN4jiff5civil8datetime8DateTime24checked_add_span_general17h4df33807ad2f7b5cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #2 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10366)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.i = load i8, ptr %i.h, align 4, !range !59, !alias.scope !10367, !noalias !10366, !noundef !11 ; 2 uses
  %i.j = icmp eq i8 %i.i, 2
  %i.k = load ptr, ptr %i.e, align 8, !alias.scope !10368 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !10369)
  %i.o = load i16, ptr %i.d, align 8, !range !62, !alias.scope !10369, !noalias !10370, !noundef !11
  %i.p = trunc nuw i16 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10369, !noalias !10370, !noundef !11
  %i.s = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 2, ptr noundef %i.r), !noalias !10371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.0.0.copyload.i = load i32, ptr %i.u, align 2, !alias.scope !10369, !noalias !10370
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
  call void @llvm.experimental.noalias.scope.decl(metadata !10372)
  %i.v = load i16, ptr %i.c, align 8, !range !62, !alias.scope !10372, !noalias !10373, !noundef !11
  %i.w = trunc nuw i16 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !10372, !noalias !10373, !noundef !11
  %i.z = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31f2028364fac28dE"(i8 noundef 3, ptr noundef %i.y), !noalias !10374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.ab, align 2, !alias.scope !10372, !noalias !10373
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
define internal fastcc void @_ZN4jiff5civil8datetime8DateTime5until17hf87e87844404c242E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, i64 %.0.val, i32 %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10491)
  %i.k = load i8, ptr %1, align 4, !range !30, !alias.scope !10492, !noalias !10493, !noundef !11 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.16.sroa.3.5.copyload = load i64, ptr %i.l, align 4, !alias.scope !10494 ; 5 uses
  %.sroa.16.sroa.5.5..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.16.sroa.5.5.copyload = load i32, ptr %.sroa.16.sroa.5.5..sroa_idx, align 4, !alias.scope !10494 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = icmp samesign ult i8 %i.k, 7
  br i1 %i.m, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.16.sroa.5.5.copyload to i16 ; 8 uses
  %.sroa.2.0.extract.shift.i = lshr i32 %.sroa.16.sroa.5.5.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8 ; 8 uses
  %.sroa.3.0.extract.shift.i = lshr i32 %.sroa.16.sroa.5.5.copyload, 24 ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc nuw i32 %.sroa.3.0.extract.shift.i to i8 ; 4 uses
  %.sroa.04.0.extract.trunc.i116 = trunc i32 %.8.val to i16 ; 2 uses
  %.sroa.25.0.extract.shift.i = lshr i32 %.8.val, 16
  %.sroa.25.0.extract.trunc.i = trunc i32 %.sroa.25.0.extract.shift.i to i8 ; 2 uses
  %.sroa.36.0.extract.shift.i = lshr i32 %.8.val, 24
  %.sroa.36.0.extract.trunc.i = trunc nuw i32 %.sroa.36.0.extract.shift.i to i8
  %i.n = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.04.0.extract.trunc.i116
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %.sroa.2.0.extract.trunc.i, %.sroa.25.0.extract.trunc.i
  br i1 %i.o, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.p = tail call i8 @llvm.scmp.i8.i16(i16 %.sroa.0.0.extract.trunc.i, i16 %.sroa.04.0.extract.trunc.i116)
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
  %sext.i = shl i64 %.sroa.16.sroa.3.5.copyload, 32
  %i.y = ashr exact i64 %sext.i, 32
  %i.z = shl i64 %.0.val, 24
  %i.aa = ashr i64 %i.z, 56
  %i.ab = shl i64 %.0.val, 16
  %i.ac = ashr i64 %i.ab, 56
  %i.ad = shl i64 %.0.val, 8
  %i.ae = ashr i64 %i.ad, 56
  %sext27.i = shl i64 %.0.val, 32
end_hunk_0
