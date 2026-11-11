Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_mv-284af5adeefb2277.uu_mv.aa9a6e8a58e22077-cgu.0?download=true
inline.NumInlined: 1919
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv:bb.a
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i = load i32, ptr %i.an, align 1, !alias.scope !1074, !noalias !1073
  %.sroa.032.0.copyload.i.i.i.i.i = load i32, ptr %i.k, align 1, !alias.scope !1074, !noalias !1073
  %i.ao = zext i32 %.sroa.032.0.copyload.i.i.i.i.i to i64
  %i.ap = xor i64 %i.ao, 2611923443488327891
  %i.aq = zext i32 %.sroa.033.0.copyload.i.i.i.i.i to i64
  %i.ar = xor i64 %i.aq, 1376283091369227076
  br label %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.as = load i8, ptr %i.k, align 1, !alias.scope !1074, !noalias !1073, !noundef !7
  %i.at = lshr i64 %i.j, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !1074, !noalias !1073, !noundef !7
  %i.aw = getelementptr i8, ptr %.val.i, i64 %.val1.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !1074, !noalias !1073, !noundef !7
  %i.az = zext i8 %i.as to i64
  %i.ba = xor i64 %i.az, 2611923443488327891
  %i.bb = zext i8 %i.ay to i64
  %i.bc = shl nuw nsw i64 %i.bb, 8
  %i.bd = zext i8 %i.av to i64
  %i.be = or disjoint i64 %i.bc, %i.bd
  %i.bf = xor i64 %i.be, 1376283091369227076
  br label %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit.i.i.i

_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit.i.i.i: ; preds = %bb.e, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit70.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i = phi i64 [ %i.al, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i ], [ %i.ar, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i ], [ %i.bf, %bb.e ], [ %i.ag, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit70.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.ai, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i ], [ %i.ap, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i ], [ %i.ba, %bb.e ], [ %i.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit70.i.i.i.i.i ]
  %i.bg = zext i64 %.sroa.0.1.i.i.i.i.i to i128
  %i.bh = zext i64 %.sroa.06.1.i.i.i.i.i to i128
  %i.bi = mul nuw i128 %i.bg, %i.bh               ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.bj, %i.bi
  %i.bl = trunc i128 %i.bk to i64
  %i.bm = xor i64 %i.j, %i.bl
  %i.bn = add i64 %i.bm, %i.c
  %i.bo = mul i64 %i.bn, -1065810590584100411
  br label %_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv.exit

bb.f:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %i.bp = phi i64 [ %i.br, %bb.p ], [ %i.e, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.012.2.i.i.i = phi i64 [ %.sroa.012.3.i.i.i, %bb.p ], [ %.sroa.012.054.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.dz, %bb.p ], [ %.sroa.0.055.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.f, %.val1.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = icmp ugt i64 %.sroa.019.053.i.i.i, %.sroa.0.055.i.i.i
  br i1 %i.bq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit48.i.i.i, %bb.g
  %i.br = phi i64 [ %i.dw, %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit48.i.i.i ], [ %i.e, %bb.g ]
  %.sroa.012.3.i.i.i = phi i64 [ %i.by, %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit48.i.i.i ], [ %.sroa.012.054.i.i.i, %bb.g ]
  %i.bs = sub nuw i64 %.val1.i, %i.f
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.f ; 3 uses
  %i.bu = icmp eq i64 %i.bs, 1
  br i1 %i.bu, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bv = sub nuw i64 %.sroa.019.053.i.i.i, %.sroa.0.055.i.i.i ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.055.i.i.i ; 5 uses
  %i.bx = add i64 %i.bv, %.sroa.012.054.i.i.i     ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 62)
  %i.bz = icmp samesign ult i64 %i.bv, 17
  br i1 %i.bz, label %bb.j, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i28.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ca = icmp samesign ugt i64 %i.bv, 7
  br i1 %i.ca, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i45.i.i.i, label %bb.k

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i28.i.i.i: ; preds = %bb.i
  %i.cb = add nsw i64 %i.bv, -1
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i29.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i29.i.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i29.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i28.i.i.i
  %.sroa.0.090.i.i30.i.i.i = phi i64 [ %.sroa.06.089.i.i31.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i29.i.i.i ], [ 2611923443488327891, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i28.i.i.i ]
  %.sroa.06.089.i.i31.i.i.i = phi i64 [ %i.cm, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i29.i.i.i ], [ 1376283091369227076, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i28.i.i.i ] ; 2 uses
  %.sroa.018.088.i.i32.i.i.i = phi ptr [ %i.cc, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i29.i.i.i ], [ %i.bw, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i28.i.i.i ] ; 3 uses
  %.sroa.420.087.i.i33.i.i.i = phi i64 [ %i.cd, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i29.i.i.i ], [ %i.cb, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i28.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i32.i.i.i, i64 16
  %i.cd = add nsw i64 %.sroa.420.087.i.i33.i.i.i, -16 ; 2 uses
  %.sroa.037.0.copyload.i.i34.i.i.i = load i64, ptr %.sroa.018.088.i.i32.i.i.i, align 1, !alias.scope !1075, !noalias !1073
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i32.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i35.i.i.i = load i64, ptr %i.ce, align 1, !alias.scope !1075, !noalias !1073
  %i.cf = xor i64 %.sroa.037.0.copyload.i.i34.i.i.i, %.sroa.0.090.i.i30.i.i.i
  %i.cg = xor i64 %.sroa.039.0.copyload.i.i35.i.i.i, -6626703657320631856
  %i.ch = zext i64 %i.cf to i128
  %i.ci = zext i64 %i.cg to i128
  %i.cj = mul nuw i128 %i.ci, %i.ch               ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = xor i128 %i.ck, %i.cj
  %i.cm = trunc i128 %i.cl to i64                 ; 2 uses
  %i.cn = icmp ugt i64 %i.cd, 15
  br i1 %i.cn, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i29.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit70.i.i36.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit70.i.i36.i.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i29.i.i.i
  %i.co = getelementptr i8, ptr %i.g, i64 -16
  %.sroa.041.0.copyload.i.i37.i.i.i = load i64, ptr %i.co, align 1, !alias.scope !1075, !noalias !1073
  %i.cp = xor i64 %.sroa.041.0.copyload.i.i37.i.i.i, %.sroa.06.089.i.i31.i.i.i
  %i.cq = getelementptr i8, ptr %i.g, i64 -8
  %.sroa.043.0.copyload.i.i38.i.i.i = load i64, ptr %i.cq, align 1, !alias.scope !1075, !noalias !1073
  %i.cr = xor i64 %.sroa.043.0.copyload.i.i38.i.i.i, %i.cm
  br label %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit48.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.cs = icmp samesign ugt i64 %i.bv, 3
  br i1 %i.cs, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i42.i.i.i, label %bb.l

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i45.i.i.i: ; preds = %bb.j
  %.sroa.028.0.copyload.i.i46.i.i.i = load i64, ptr %i.bw, align 1, !alias.scope !1075, !noalias !1073
  %i.ct = xor i64 %.sroa.028.0.copyload.i.i46.i.i.i, 2611923443488327891
  %i.cu = getelementptr i8, ptr %i.g, i64 -8
  %.sroa.030.0.copyload.i.i47.i.i.i = load i64, ptr %i.cu, align 1, !alias.scope !1075, !noalias !1073
  %i.cv = xor i64 %.sroa.030.0.copyload.i.i47.i.i.i, 1376283091369227076
  br label %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit48.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cw = load i8, ptr %i.bw, align 1, !alias.scope !1075, !noalias !1073, !noundef !7
  %i.cx = lshr i64 %i.bv, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !1075, !noalias !1073, !noundef !7
  %i.da = getelementptr i8, ptr %i.g, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !1075, !noalias !1073, !noundef !7
  %i.dc = zext i8 %i.cw to i64
  %i.dd = xor i64 %i.dc, 2611923443488327891
  %i.de = zext i8 %i.db to i64
  %i.df = shl nuw nsw i64 %i.de, 8
  %i.dg = zext i8 %i.cz to i64
  %i.dh = or disjoint i64 %i.df, %i.dg
  %i.di = xor i64 %i.dh, 1376283091369227076
  br label %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit48.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i42.i.i.i: ; preds = %bb.k
  %i.dj = getelementptr i8, ptr %i.g, i64 -4
  %.sroa.033.0.copyload.i.i43.i.i.i = load i32, ptr %i.dj, align 1, !alias.scope !1075, !noalias !1073
  %.sroa.032.0.copyload.i.i44.i.i.i = load i32, ptr %i.bw, align 1, !alias.scope !1075, !noalias !1073
  %i.dk = zext i32 %.sroa.032.0.copyload.i.i44.i.i.i to i64
  %i.dl = xor i64 %i.dk, 2611923443488327891
  %i.dm = zext i32 %.sroa.033.0.copyload.i.i43.i.i.i to i64
  %i.dn = xor i64 %i.dm, 1376283091369227076
  br label %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit48.i.i.i

_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit48.i.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i42.i.i.i, %bb.l, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i45.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit70.i.i36.i.i.i
  %.sroa.06.1.i.i39.i.i.i = phi i64 [ %i.cv, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i45.i.i.i ], [ %i.dn, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i42.i.i.i ], [ %i.di, %bb.l ], [ %i.cr, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit70.i.i36.i.i.i ]
  %.sroa.0.1.i.i40.i.i.i = phi i64 [ %i.ct, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i45.i.i.i ], [ %i.dl, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i42.i.i.i ], [ %i.dd, %bb.l ], [ %i.cp, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit70.i.i36.i.i.i ]
  %i.do = zext i64 %.sroa.0.1.i.i40.i.i.i to i128
  %i.dp = zext i64 %.sroa.06.1.i.i39.i.i.i to i128
  %i.dq = mul nuw i128 %i.do, %i.dp               ; 2 uses
  %i.dr = lshr i128 %i.dq, 64
  %i.ds = xor i128 %i.dr, %i.dq
  %i.dt = trunc i128 %i.ds to i64
  %i.du = xor i64 %i.bv, %i.dt
  %i.dv = add i64 %i.du, %i.e
  %i.dw = mul i64 %i.dv, -1065810590584100411
  br label %bb.h

bb.m:                                             ; preds = %bb.h
  %i.dx = load i8, ptr %i.bt, align 1, !alias.scope !1072, !noalias !1073, !noundef !7
  %i.dy = icmp eq i8 %i.dx, 46
  br i1 %i.dy, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.h
  %.not27.i.i.i = icmp eq i64 %.val1.i, %i.f
  br i1 %.not27.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.r, %bb.q, %bb.n, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o, %bb.m
  %.sroa.024.0.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %bb.o ], [ 1, %bb.r ]
  %i.dz = add i64 %.sroa.024.0.i.i.i, %i.f
  br label %bb.f

bb.q:                                             ; preds = %bb.n
  %i.ea = load i8, ptr %i.bt, align 1, !alias.scope !1072, !noalias !1073, !noundef !7
  %i.eb = icmp eq i8 %i.ea, 46
  br i1 %i.eb, label %bb.r, label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !1072, !noalias !1073, !noundef !7
  %i.ee = icmp eq i8 %i.ed, 47
  br i1 %i.ee, label %bb.p, label %bb.o

_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv.exit: ; preds = %._crit_edge.i.i.i, %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit.i.i.i
  %i.ef = phi i64 [ %i.bo, %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit.i.i.i ], [ %i.c, %._crit_edge.i.i.i ]
  %.sroa.012.1.i.i.i = phi i64 [ %i.m, %_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write.exit.i.i.i ], [ %.sroa.012.0.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.eg = add i64 %.sroa.012.1.i.i.i, %i.ef
  %i.eh = mul i64 %i.eg, -1065810590584100411     ; 2 uses
  %i.ei = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 26)
  ret i64 %i.ei
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECseE7g6nXQLt3_5uu_mv(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = xor i64 %.0.val, 8317987319222330741
  %i.f = xor i64 %.8.val, 7237128888997146477
  %i.g = xor i64 %.0.val, 7816392313619706465
  %i.h = xor i64 %.8.val, 8387220255154660723
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !1101
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.g, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1101
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %i.f, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1101
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 %i.h, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1101
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !1101
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !1101
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !1101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !1102, !noalias !1103, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.i, align 8, !alias.scope !1102, !noalias !1103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1104
  store i64 %.val.i.i, ptr %i.c, align 8, !noalias !1104
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #36, !noalias !1102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1105
  store i64 %.val1.i.i, ptr %i.b, align 8, !noalias !1105
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #36, !noalias !1102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1105
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val2.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1102, !noalias !1103, !nonnull !7, !noundef !7 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3.i.i = load i64, ptr %i.k, align 8, !alias.scope !1102, !noalias !1103, !noundef !7 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  switch i64 %.val3.i.i, label %.lr.ph.preheader.split.i.split.i.i.i [
    i64 0, label %._crit_edge.i.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i.i.i.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i
  ]

.lr.ph.preheader.split.i.split.i.i.i:             ; preds = %bb.a
  %i.l = add i64 %.val3.i.i, -3                   ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i: ; preds = %bb.e
  %1 = add i64 %.val3.i.i, -1                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %i.u
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %i.o = icmp eq i8 %i.n, 47
  br i1 %i.o, label %bb.b, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i: ; preds = %bb.a
  %2 = load i8, ptr %.val2.i.i, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %3 = icmp eq i8 %2, 47
  br i1 %3, label %.thread.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i
  %4 = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i ], [ %1, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i ] ; 2 uses
  %5 = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i ], [ %i.u, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i ]
  %6 = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i ], [ %.sroa.012.2.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i ]
  %7 = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i ], [ %.sroa.0.1.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i ]
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %4
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !alias.scope !1106, !noalias !1107
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i

bb.b:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i
  %.not.i.i.i = icmp ult i64 %i.l, %.sroa.0.1.i.i.i.i
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub nuw i64 %i.u, %.sroa.0.1.i.i.i.i     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.sroa.0.1.i.i.i.i
  %i.r = add i64 %i.p, %.sroa.012.2.i.i.i.i       ; 2 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.p) #36, !noalias !1102
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.c, %bb.b, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i
  %8 = phi i64 [ %i.u, %bb.c ], [ %i.u, %bb.b ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i ]
  %i.t = phi i64 [ %1, %bb.c ], [ %1, %bb.b ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i ] ; 4 uses
  %.sroa.012.3.i.peel.i.i.i = phi i64 [ %i.s, %bb.c ], [ %.sroa.012.2.i.i.i.i, %bb.b ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i ]
  %9 = sub nuw i64 %.val3.i.i, %i.t
  %10 = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %i.t ; 2 uses
  %11 = icmp eq i64 %9, 1
  %12 = load i8, ptr %10, align 1, !alias.scope !1106, !noalias !1107, !noundef !7 ; 2 uses
  %13 = icmp eq i8 %12, 46                        ; 2 uses
  br i1 %11, label %19, label %14

14:                                               ; preds = %.thread.i.i.i
  br i1 %13, label %15, label %20

15:                                               ; preds = %14
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 1
  %17 = load i8, ptr %16, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %18 = icmp eq i8 %17, 47
  br i1 %18, label %21, label %20

19:                                               ; preds = %.thread.i.i.i
  br i1 %13, label %21, label %20

20:                                               ; preds = %19, %15, %14
  br label %21

21:                                               ; preds = %20, %19, %15
  %.sroa.024.0.i.peel.i.i.i = phi i64 [ 1, %19 ], [ 0, %20 ], [ 1, %15 ]
  %22 = add i64 %.sroa.024.0.i.peel.i.i.i, %i.t
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i: ; preds = %21, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i
  %23 = phi i64 [ %i.t, %21 ], [ %4, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i ]
  %24 = phi i64 [ %8, %21 ], [ %5, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i ] ; 2 uses
  %25 = phi i8 [ %12, %21 ], [ %.pre.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i ]
  %.sroa.012.2.i.peel.i.i.i = phi i64 [ %.sroa.012.3.i.peel.i.i.i, %21 ], [ %6, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i ] ; 3 uses
  %.sroa.0.1.i.peel.i.i.i = phi i64 [ %22, %21 ], [ %7, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i ] ; 4 uses
  %26 = add nuw i64 %24, 2                        ; 8 uses
  %27 = icmp eq i8 %25, 47
  br i1 %27, label %30, label %._crit_edge.i.i.i.i

._crit_edge.loopexit.peel.begin.thread.i.i.i.i:   ; preds = %bb.a
  %28 = load i8, ptr %.val2.i.i, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %29 = icmp eq i8 %28, 47
  br i1 %29, label %.thread48.i.i.i.i, label %._crit_edge.i.i.i.i

30:                                               ; preds = %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i
  %.not.i.i.i.i = icmp ult i64 %24, %.sroa.0.1.i.peel.i.i.i
  br i1 %.not.i.i.i.i, label %36, label %31

31:                                               ; preds = %30
  %32 = sub nuw i64 %23, %.sroa.0.1.i.peel.i.i.i  ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.sroa.0.1.i.peel.i.i.i
  %34 = add i64 %32, %.sroa.012.2.i.peel.i.i.i    ; 2 uses
  %35 = tail call noundef i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %33, i64 noundef %32) #36, !noalias !1102
  br label %36

36:                                               ; preds = %31, %30
  %.sroa.012.3.peel.i.i.i.i = phi i64 [ %35, %31 ], [ %.sroa.012.2.i.peel.i.i.i, %30 ] ; 6 uses
  %37 = sub nuw i64 %.val3.i.i, %26
  %38 = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %26 ; 3 uses
  %39 = icmp eq i64 %37, 1
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %.not27.peel.i.i.i.i = icmp eq i64 %.val3.i.i, %26
  br i1 %.not27.peel.i.i.i.i, label %.thread48.i.i.i.i, label %41

41:                                               ; preds = %40
  %42 = load i8, ptr %38, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %43 = icmp eq i8 %42, 46
  br i1 %43, label %44, label %.thread48.i.i.i.i

44:                                               ; preds = %41
  %45 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %46 = load i8, ptr %45, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %47 = icmp eq i8 %46, 47
  br i1 %47, label %52, label %.thread48.i.i.i.i

48:                                               ; preds = %36
  %49 = load i8, ptr %38, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %50 = icmp eq i8 %49, 46
  br i1 %50, label %52, label %.thread48.i.i.i.i

.thread48.i.i.i.i:                                ; preds = %48, %44, %41, %40, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i
  %.sroa.012.3.peel45.i.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i.i, %48 ], [ %.sroa.012.3.peel.i.i.i.i, %44 ], [ %.sroa.012.3.peel.i.i.i.i, %41 ], [ %.sroa.012.3.peel.i.i.i.i, %40 ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i ]
  %51 = phi i64 [ %26, %48 ], [ %26, %44 ], [ %26, %41 ], [ %.val3.i.i, %40 ], [ 1, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i ]
  br label %52

52:                                               ; preds = %.thread48.i.i.i.i, %48, %44
  %.sroa.012.3.peel44.i.i.i.i = phi i64 [ %.sroa.012.3.peel.i.i.i.i, %48 ], [ %.sroa.012.3.peel45.i.i.i.i, %.thread48.i.i.i.i ], [ %.sroa.012.3.peel.i.i.i.i, %44 ]
  %53 = phi i64 [ %26, %48 ], [ %51, %.thread48.i.i.i.i ], [ %26, %44 ]
  %.sroa.024.0.peel.i.i.i.i = phi i64 [ 1, %48 ], [ 0, %.thread48.i.i.i.i ], [ 1, %44 ]
  %54 = add i64 %.sroa.024.0.peel.i.i.i.i, %53
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %52, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i, %bb.a
  %.sroa.012.0.lcssa.i.i.i.i = phi i64 [ %.val3.i.i, %bb.a ], [ %.sroa.012.3.peel44.i.i.i.i, %52 ], [ %.sroa.012.2.i.peel.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.val3.i.i, %bb.a ], [ %54, %52 ], [ %.sroa.0.1.i.peel.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i ], [ 0, %._crit_edge.loopexit.peel.begin.thread.i.i.i.i ] ; 3 uses
  %55 = icmp ult i64 %.sroa.0.0.lcssa.i.i.i.i, %.val3.i.i
  br i1 %55, label %bb.d, label %_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.split.i.split.i.i.i
  %.sroa.0.032.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i ] ; 4 uses
  %.sroa.012.031.i.i.i.i = phi i64 [ %.sroa.012.2.i.i.i.i, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i ] ; 3 uses
  %.sroa.019.030.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split.i.i.i ] ; 5 uses
  %i.u = add nuw i64 %.sroa.019.030.i.i.i.i, 1    ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.sroa.019.030.i.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %i.x = icmp eq i8 %i.w, 47
  br i1 %i.x, label %bb.f, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = sub nuw i64 %.val3.i.i, %.sroa.0.0.lcssa.i.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.sroa.0.0.lcssa.i.i.i.i
  %i.aa = add i64 %i.y, %.sroa.012.0.lcssa.i.i.i.i ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.y) #36, !noalias !1102
  br label %_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv.exit

bb.e:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i
  %.sroa.012.2.i.i.i.i = phi i64 [ %.sroa.012.3.i.i.i.i, %bb.k ], [ %.sroa.012.031.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.am, %bb.k ], [ %.sroa.0.032.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.019.030.i.i.i.i, %i.l
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1093

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = icmp ugt i64 %.sroa.019.030.i.i.i.i, %.sroa.0.032.i.i.i.i
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.012.3.i.i.i.i = phi i64 [ %i.al, %bb.h ], [ %.sroa.012.031.i.i.i.i, %bb.f ]
  %i.ad = sub nuw i64 %.val3.i.i, %i.u
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %i.u ; 2 uses
  %i.af = icmp eq i64 %i.ad, 1
  %i.ag = load i8, ptr %i.ae, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %i.ah = icmp eq i8 %i.ag, 46                    ; 2 uses
  br i1 %i.af, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ai = sub nuw i64 %.sroa.019.030.i.i.i.i, %.sroa.0.032.i.i.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.sroa.0.032.i.i.i.i
  %i.ak = add i64 %i.ai, %.sroa.012.031.i.i.i.i   ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ai) #36, !noalias !1102
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j, %bb.i
  %.sroa.024.0.i.i.i.i = phi i64 [ 1, %bb.i ], [ 0, %bb.j ], [ 1, %bb.m ]
  %i.am = add i64 %.sroa.024.0.i.i.i.i, %i.u
  br label %bb.e

bb.l:                                             ; preds = %bb.g
  br i1 %i.ah, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !1106, !noalias !1107, !noundef !7
  %i.ap = icmp eq i8 %i.ao, 47
  br i1 %i.ap, label %bb.k, label %bb.j

_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d
  %.sroa.012.1.i.i.i.i = phi i64 [ %i.ab, %bb.d ], [ %.sroa.012.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1109
  store i64 %.sroa.012.1.i.i.i.i, ptr %i.a, align 8, !noalias !1109
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #36, !noalias !1110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1109
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !alias.scope !1111
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1111
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1111 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1111
  %i.aq = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !1111, !noundef !7
  %i.ar = shl i64 %i.aq, 56
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1111, !noundef !7
  %i.au = or i64 %i.ar, %i.at                     ; 2 uses
  %i.av = xor i64 %i.au, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.aw = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.ax = add i64 %i.av, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.az = xor i64 %i.ay, %i.aw                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 16)
  %i.bb = xor i64 %i.ba, %i.ax                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 32)
  %i.bd = add i64 %i.ax, %i.az                    ; 3 uses
  %i.be = add i64 %i.bb, %i.bc                    ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 17)
  %i.bg = xor i64 %i.bd, %i.bf                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 21)
  %i.bi = xor i64 %i.bh, %i.be                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 32)
  %i.bk = xor i64 %i.be, %i.au
  %i.bl = xor i64 %i.bj, 255
  %i.bm = add i64 %i.bk, %i.bg                    ; 3 uses
  %i.bn = add i64 %i.bi, %i.bl                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 13)
  %i.bp = xor i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.br = xor i64 %i.bq, %i.bn                    ; 3 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bt = add i64 %i.bp, %i.bn                    ; 3 uses
  %i.bu = add i64 %i.br, %i.bs                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 17)
  %i.bw = xor i64 %i.bt, %i.bv                    ; 3 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 21)
  %i.by = xor i64 %i.bx, %i.bu                    ; 3 uses
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32)
  %i.ca = add i64 %i.bw, %i.bu                    ; 3 uses
  %i.cb = add i64 %i.by, %i.bz                    ; 2 uses
  %i.cc = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 13)
  %i.cd = xor i64 %i.cc, %i.ca                    ; 3 uses
  %i.ce = tail call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 16)
  %i.cf = xor i64 %i.ce, %i.cb                    ; 3 uses
  %i.cg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ch = add i64 %i.cd, %i.cb                    ; 3 uses
  %i.ci = add i64 %i.cf, %i.cg                    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 17)
  %i.ck = xor i64 %i.cj, %i.ch                    ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 21)
  %i.cm = xor i64 %i.cl, %i.ci                    ; 3 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 32)
  %i.co = add i64 %i.ck, %i.ci
  %i.cp = add i64 %i.cm, %i.cn                    ; 2 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 13)
  %i.cr = xor i64 %i.cq, %i.co                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 16)
  %i.ct = xor i64 %i.cs, %i.cp                    ; 2 uses
  %i.cu = add i64 %i.cr, %i.cp                    ; 3 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 17)
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 21)
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 32)
  %i.cy = xor i64 %i.cw, %i.cv
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = xor i64 %i.cz, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.da
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtBc_2io4pipe10PipeReaderNtB2l_10PipeWriterEEE10initializeNCINvB1a_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoRNtNtBc_2fs4FileB4M_E0E0zE0E0CseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !align !13, !noundef !7 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !align !30, !noundef !7 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1122
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys4pipe4unix4pipe(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b) #33, !noalias !1122
  %i.f = load i32, ptr %i.b, align 8, !range !35, !noalias !1122, !noundef !7
  %i.g = trunc nuw i32 %i.f to i1
  br i1 %i.g, label %bb.c, label %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i

_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !24, !noalias !1122, !noundef !7 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !24, !noalias !1122, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1122
  store i32 %i.i, ptr %i.c, align 4, !noalias !1122
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.k, ptr %i.l, align 4, !noalias !1122
  %i.m = call noundef i32 @_RNvXsy_NtNtNtCs2vKOLqTMYjT_3std2os2fd5ownedNtNtNtBb_2io4pipe10PipeReaderNtB5_4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c) #33, !noalias !1122
  %i.n = zext i32 %i.m to i64
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 72 to ptr), ptr %i.o, ptr nonnull inttoptr (i64 1031 to ptr), ptr nonnull inttoptr (i64 1048576 to ptr)) #38, !noalias !1123, !srcloc !25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1122
  br label %_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB9_2io4pipe10PipeReaderNtB1A_10PipeWriterEEE10initializeNCINvB4_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoRNtNtB9_2fs4FileB40_E0E0zE0CseE7g6nXQLt3_5uu_mv.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1122, !nonnull !7, !noundef !7 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1122
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %.sroa.9.8.extract.trunc9.i.i.i = trunc i64 %i.s to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1124
  %i.t = and i64 %i.s, 3
  switch i64 %i.t, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i.i
    i64 1, label %bb.e
  ], !prof !16

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult ptr %i.r, inttoptr (i64 188978561024 to ptr)
  %i.v = and i64 %i.s, 1095216660480
  %i.w = icmp ne i64 %i.v, 1095216660480
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.w)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.r, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !1125, !noalias !1124
  store i8 3, ptr %i.a, align 8, !alias.scope !1125, !noalias !1124
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #33, !noalias !1124
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1124
  br label %_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB9_2io4pipe10PipeReaderNtB1A_10PipeWriterEEE10initializeNCINvB4_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoRNtNtB9_2fs4FileB40_E0E0zE0CseE7g6nXQLt3_5uu_mv.exit

_RNCINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB5_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionTNtNtNtB9_2io4pipe10PipeReaderNtB1A_10PipeWriterEEE10initializeNCINvB4_11get_or_initNCINvNtNtCsh036I4OHgIr_6uucore8features5pipes21splice_unbounded_autoRNtNtB9_2fs4FileB40_E0E0zE0CseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i.i
  %.sroa.0.015.i.i.i = phi i32 [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i.i ], [ %i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i ]
  %.sroa.9.8.extract.trunc13.i.i.i = phi i32 [ %.sroa.9.8.extract.trunc9.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i.i ], [ %i.k, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i ]
  store i32 %.sroa.0.015.i.i.i, ptr %i.e, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.9.8.extract.trunc13.i.i.i, ptr %i.z, align 4
  ret void

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #35
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs2vKOLqTMYjT_3std4path7PathBufuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0CseE7g6nXQLt3_5uu_mv(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.e = tail call fastcc noundef i64 @_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #33
  ret i64 %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1A_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0CseE7g6nXQLt3_5uu_mv(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.b = sub nsw i64 0, %2
  %i.c = getelementptr inbounds [48 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -40
  %.val = load ptr, ptr %i.d, align 8, !alias.scope !1142, !noalias !1143, !nonnull !7, !noundef !7 ; 10 uses
  %i.e = getelementptr i8, ptr %i.c, i64 -32
  %.val2 = load i64, ptr %i.e, align 8, !alias.scope !1142, !noalias !1143, !noundef !7 ; 12 uses
  %i.f = icmp samesign ult i64 %.val2, 17
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i64 %.val2, 7
  br i1 %i.g, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i, label %bb.c

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = add i64 %.val2, -17                      ; 2 uses
  %i.i = lshr i64 %i.h, 4                         ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.i.i.i.i.i.i.i.epil.preheader, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i.i.i.i.i.i.new

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i.i.i.i.i.i.new: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseE7g6nXQLt3_5uu_mv.exit74.preheader.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i64
!908 = distinct !{!908, i1 true, !"_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv"}
!909 = distinct !{!909, !908, !"_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv: argument 0"}
!910 = distinct !{!910, i1 true, !"_RINvNtCs2vKOLqTMYjT_3std2fs8read_dirRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv"}
!911 = distinct !{!911, !910, !"_RINvNtCs2vKOLqTMYjT_3std2fs8read_dirRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!912 = distinct !{!912, !910, !"_RINvNtCs2vKOLqTMYjT_3std2fs8read_dirRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!913 = distinct !{!913, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs7ReadDirECseE7g6nXQLt3_5uu_mv"}
!914 = distinct !{!914, !913, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs7ReadDirECseE7g6nXQLt3_5uu_mv: argument 0"}
!915 = distinct !{!915, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix7ReadDirECseE7g6nXQLt3_5uu_mv"}
!916 = distinct !{!916, !915, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix7ReadDirECseE7g6nXQLt3_5uu_mv: argument 0"}
!917 = distinct !{!917, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv"}
!918 = distinct !{!918, !917, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv: argument 0"}
!919 = distinct !{!919, i1 true, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv"}
!920 = distinct !{!920, !919, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv: argument 0"}
!921 = !{!816}
!922 = !{!824, !822, !820, !818}
!923 = !{!818}
!924 = !{!826, !818}
!925 = !{!828}
!926 = !{!831, !830}
!927 = !{!831}
!928 = !{!833}
!929 = !{!835}
!930 = !{!837}
!931 = !{!839}
!932 = !{!843, !842, !840, !839}
!933 = !{!843, !842}
!934 = !{!842, !840, !839}
!935 = !{!840, !839}
!936 = !{!845, !840, !839}
!937 = !{!847}
!938 = !{!848}
!939 = !{!854, !853, !851, !850}
!940 = !{!854, !851}
!941 = !{!851}
!942 = !{!851, !850}
!943 = !{!860, !859, !857, !856, !854, !853, !851, !850}
!944 = !{!860, !857, !854, !853, !851, !850}
!945 = !{!863, !862}
!946 = !{!850}
!947 = !{!865}
!948 = !{!867}
!949 = !{!869}
!950 = !{!871}
!951 = !{!873}
!952 = !{!875}
!953 = !{!877}
!954 = !{!879}
!955 = !{!879, !877, !875, !873, !871, !869}
!956 = !{!881}
!957 = !{!881, !879, !877, !875, !873, !871, !869}
!958 = !{!883, !881, !879, !877, !875, !873, !871, !869}
!959 = !{!885, !881, !879, !877, !875, !873, !871, !869}
!960 = !{!887}
!961 = !{!889}
!962 = !{!891}
!963 = !{!893}
!964 = !{!895}
!965 = !{!897}
!966 = !{!899}
!967 = !{!901}
!968 = !{!903}
!969 = !{!903, !901, !899, !897, !895, !893}
!970 = !{!905}
!971 = !{!905, !903, !901, !899, !897, !895, !893}
!972 = !{!907, !905, !903, !901, !899, !897, !895, !893}
!973 = !{!909, !905, !903, !901, !899, !897, !895, !893}
!974 = !{!912, !911}
!975 = !{!912}
!976 = !{!920, !918, !916, !914}
!977 = distinct !{!977, i1 true, !"_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr11copy_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv"}
!978 = distinct !{!978, !977, !"_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr11copy_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!979 = distinct !{!979, !977, !"_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr11copy_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!980 = distinct !{!980, i1 true, !"_RINvCsiNTfMYMREvh_5xattr4listRRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv"}
!981 = distinct !{!981, !980, !"_RINvCsiNTfMYMREvh_5xattr4listRRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!982 = distinct !{!982, i1 true, !"_RINvCsiNTfMYMREvh_5xattr3getRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv"}
!983 = distinct !{!983, !982, !"_RINvCsiNTfMYMREvh_5xattr3getRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv: argument 2"}
!984 = distinct !{!984, !982, !"_RINvCsiNTfMYMREvh_5xattr3getRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!985 = distinct !{!985, !982, !"_RINvCsiNTfMYMREvh_5xattr3getRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!986 = distinct !{!986, i1 true, !"_RINvCsiNTfMYMREvh_5xattr3setRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv"}
!987 = distinct !{!987, !986, !"_RINvCsiNTfMYMREvh_5xattr3setRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!988 = distinct !{!988, !986, !"_RINvCsiNTfMYMREvh_5xattr3setRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!989 = distinct !{!989, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv"}
!990 = distinct !{!990, !989, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv: argument 0"}
!991 = distinct !{!991, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv"}
!992 = distinct !{!992, !991, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv: argument 0"}
!993 = !{!979, !978}
!994 = !{!981, !978}
!995 = !{!978}
!996 = !{!985, !984, !983, !979, !978}
!997 = !{!985, !984, !983}
!998 = !{!984, !983}
!999 = !{!988, !987}
!1000 = !{!990}
!1001 = !{!992}
!1002 = distinct !{!1002, i1 true, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseE7g6nXQLt3_5uu_mv"}
!1003 = distinct !{!1003, !1002, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCseE7g6nXQLt3_5uu_mv: argument 0"}
!1004 = !{!1003}
!1005 = distinct !{!1005, i1 true, !"_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read4readCseE7g6nXQLt3_5uu_mv"}
!1006 = distinct !{!1006, !1005, !"_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeRNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderENtNtB7_4read4Read4readCseE7g6nXQLt3_5uu_mv: argument 0"}
!1007 = distinct !{null}
!1008 = distinct !{!1008, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCseE7g6nXQLt3_5uu_mv"}
!1009 = distinct !{!1009, !1008, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCseE7g6nXQLt3_5uu_mv: argument 0:thread"}
!1010 = distinct !{!1010, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCseE7g6nXQLt3_5uu_mv"}
!1011 = distinct !{!1011, !1010, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCseE7g6nXQLt3_5uu_mv: argument 0"}
!1012 = distinct !{!1012, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCseE7g6nXQLt3_5uu_mv"}
!1013 = distinct !{!1013, !1012, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCseE7g6nXQLt3_5uu_mv: argument 0"}
!1014 = distinct !{!1014, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv"}
!1015 = distinct !{!1015, !1014, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv: argument 0"}
!1016 = distinct !{!1016, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv"}
!1017 = distinct !{!1017, !1016, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1018 = !{!1006}
!1019 = !{!1011, !1009}
!1020 = !{!"branch_weights", i32 2139577918, i32 7905730}
!1021 = !{!1013}
!1022 = !{!1011, !1013}
!1023 = !{!"branch_weights", !"expected", i32 3964497, i32 2143519151}
!1024 = !{!1015}
!1025 = !{!1017}
!1026 = distinct !{!1026, i1 true, !"_RNCNvCseE7g6nXQLt3_5uu_mv16handle_two_pathss_0B3_"}
!1027 = distinct !{!1027, !1026, !"_RNCNvCseE7g6nXQLt3_5uu_mv16handle_two_pathss_0B3_: argument 1"}
!1028 = distinct !{!1028, !1026, !"_RNCNvCseE7g6nXQLt3_5uu_mv16handle_two_pathss_0B3_: argument 0"}
!1029 = distinct !{!1029, i1 true, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCseE7g6nXQLt3_5uu_mv"}
!1030 = distinct !{!1030, !1029, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCseE7g6nXQLt3_5uu_mv: argument 1"}
!1031 = distinct !{!1031, !1029, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCseE7g6nXQLt3_5uu_mv: argument 0"}
!1032 = distinct !{!1032, i1 true, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!1033 = distinct !{!1033, !1032, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!1034 = distinct !{!1034, i1 true, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCseE7g6nXQLt3_5uu_mv"}
!1035 = distinct !{!1035, !1034, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCseE7g6nXQLt3_5uu_mv: argument 1"}
!1036 = distinct !{!1036, !1034, !"_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCseE7g6nXQLt3_5uu_mv: argument 0"}
!1037 = distinct !{!1037, i1 true, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl"}
!1038 = distinct !{!1038, !1037, !"_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl: argument 1"}
!1039 = distinct !{!1039, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECseE7g6nXQLt3_5uu_mv"}
!1040 = distinct !{!1040, !1039, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECseE7g6nXQLt3_5uu_mv: argument 0"}
!1041 = distinct !{!1041, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECseE7g6nXQLt3_5uu_mv"}
!1042 = distinct !{!1042, !1041, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECseE7g6nXQLt3_5uu_mv: argument 0"}
!1043 = distinct !{!1043, i1 true, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorE3newCseE7g6nXQLt3_5uu_mv"}
!1044 = distinct !{!1044, !1043, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorE3newCseE7g6nXQLt3_5uu_mv: argument 0"}
!1045 = !{!1028, !1027}
!1046 = !{!1031, !1030, !1028, !1027}
!1047 = !{!1031, !1028, !1027}
!1048 = !{!1030, !1028, !1027}
!1049 = !{!1033}
!1050 = !{!1036, !1035, !1028, !1027}
!1051 = !{!1036, !1028, !1027}
!1052 = !{!1035, !1028, !1027}
!1053 = !{!1038}
!1054 = !{!1040, !1028, !1027}
!1055 = !{!1042, !1028, !1027}
!1056 = !{!1044}
!1057 = distinct !{!1057, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1058 = distinct !{!1058, !1057, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1059 = distinct !{!1059, i1 true, !"_RINvXs1h_NtCs2vKOLqTMYjT_3std4pathNtB7_4PathNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1060 = distinct !{!1060, !1059, !"_RINvXs1h_NtCs2vKOLqTMYjT_3std4pathNtB7_4PathNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1061 = distinct !{!1061, i1 true, !"_RINvXs11_NtCs2vKOLqTMYjT_3std4pathNtB7_7PathBufNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1062 = distinct !{!1062, !1061, !"_RINvXs11_NtCs2vKOLqTMYjT_3std4pathNtB7_7PathBufNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1063 = distinct !{!1063, i1 true, !"_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write"}
!1064 = distinct !{!1064, !1063, !"_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write: argument 1"}
!1065 = distinct !{!1065, i1 true, !"_RNvCs4jvHr4X8PhZ_10rustc_hash10hash_bytes"}
!1066 = distinct !{!1066, !1065, !"_RNvCs4jvHr4X8PhZ_10rustc_hash10hash_bytes: argument 0"}
!1067 = distinct !{!1067, i1 true, !"_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write"}
!1068 = distinct !{!1068, !1067, !"_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write: argument 1"}
!1069 = distinct !{!1069, i1 true, !"_RNvCs4jvHr4X8PhZ_10rustc_hash10hash_bytes"}
!1070 = distinct !{!1070, !1069, !"_RNvCs4jvHr4X8PhZ_10rustc_hash10hash_bytes: argument 0"}
!1071 = !{!1058}
!1072 = !{!1060}
!1073 = !{!1062, !1058}
!1074 = !{!1066, !1064, !1060}
!1075 = !{!1070, !1068, !1060}
!1076 = distinct !{!1076, i1 true, !"_RNvXs_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB4_11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher12build_hasher"}
!1077 = distinct !{!1077, !1076, !"_RNvXs_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB4_11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher12build_hasher: argument 0"}
!1078 = distinct !{!1078, i1 true, !"_RINvXsl_NtNtCs6JMX4GRUq9U_4core4hash5implsTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1D_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv"}
!1079 = distinct !{!1079, !1078, !"_RINvXsl_NtNtCs6JMX4GRUq9U_4core4hash5implsTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1D_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1080 = distinct !{!1080, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv"}
!1081 = distinct !{!1081, !1080, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1082 = distinct !{!1082, !1078, !"_RINvXsl_NtNtCs6JMX4GRUq9U_4core4hash5implsTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1D_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv: argument 1"}
!1083 = distinct !{!1083, i1 true, !"_RINvXs1_NtNtCsh036I4OHgIr_6uucore8features2fsNtB6_15FileInformationNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv"}
!1084 = distinct !{!1084, !1083, !"_RINvXs1_NtNtCsh036I4OHgIr_6uucore8features2fsNtB6_15FileInformationNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1085 = distinct !{!1085, i1 true, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64CseE7g6nXQLt3_5uu_mv"}
!1086 = distinct !{!1086, !1085, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64CseE7g6nXQLt3_5uu_mv: argument 0"}
!1087 = distinct !{!1087, i1 true, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64CseE7g6nXQLt3_5uu_mv"}
!1088 = distinct !{!1088, !1087, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher9write_u64CseE7g6nXQLt3_5uu_mv: argument 0"}
!1089 = distinct !{!1089, i1 true, !"_RINvXs1h_NtCs2vKOLqTMYjT_3std4pathNtB7_4PathNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv"}
!1090 = distinct !{!1090, !1089, !"_RINvXs1h_NtCs2vKOLqTMYjT_3std4pathNtB7_4PathNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1091 = distinct !{!1091, i1 true, !"_RINvXs11_NtCs2vKOLqTMYjT_3std4pathNtB7_7PathBufNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv"}
!1092 = distinct !{!1092, !1091, !"_RINvXs11_NtCs2vKOLqTMYjT_3std4pathNtB7_7PathBufNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1093 = distinct !{!1093, !1108}
!1094 = distinct !{!1094, !1089, !"_RINvXs1h_NtCs2vKOLqTMYjT_3std4pathNtB7_4PathNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECseE7g6nXQLt3_5uu_mv: argument 1"}
!1095 = distinct !{!1095, i1 true, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher11write_usizeCseE7g6nXQLt3_5uu_mv"}
!1096 = distinct !{!1096, !1095, !"_RNvYNtNtNtCs2vKOLqTMYjT_3std4hash6random13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher11write_usizeCseE7g6nXQLt3_5uu_mv: argument 0"}
!1097 = distinct !{!1097, i1 true, !"_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish"}
!1098 = distinct !{!1098, !1097, !"_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher6finish: argument 0"}
!1099 = distinct !{!1099, i1 true, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCseE7g6nXQLt3_5uu_mv"}
!1100 = distinct !{!1100, !1099, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCseE7g6nXQLt3_5uu_mv: argument 0"}
!1101 = !{!1077}
!1102 = !{!1079}
!1103 = !{!1081}
!1104 = !{!1086, !1084, !1079, !1082, !1081}
!1105 = !{!1088, !1084, !1079, !1082, !1081}
!1106 = !{!1090}
!1107 = !{!1092, !1079, !1082, !1081}
!1108 = !{!"llvm.loop.peeled.count", i32 2}
!1109 = !{!1096, !1090, !1094, !1092, !1079, !1082, !1081}
!1110 = !{!1090, !1079}
!1111 = !{!1100, !1098}
!1112 = distinct !{!1112, i1 true, !"_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECseE7g6nXQLt3_5uu_mv"}
!1113 = distinct !{!1113, !1112, !"_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes4pipeKb0_ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1114 = distinct !{!1114, i1 true, !"_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size"}
!1115 = distinct !{!1115, !1114, !"_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size: argument 0"}
!1116 = distinct !{!1116, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv"}
!1117 = distinct !{!1117, !1116, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs2vKOLqTMYjT_3std2io4pipe10PipeReaderNtB10_10PipeWriterENtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1118 = distinct !{!1118, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv"}
!1119 = distinct !{!1119, !1118, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv: argument 0"}
!1120 = distinct !{!1120, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv"}
!1121 = distinct !{!1121, !1120, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1122 = !{!1113}
!1123 = !{!1115, !1113}
!1124 = !{!1119, !1117}
!1125 = !{!1121}
!1126 = distinct !{!1126, i1 true, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv"}
!1127 = distinct !{!1127, !1126, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv: argument 0"}
!1128 = distinct !{!1128, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1129 = distinct !{!1129, !1128, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1130 = distinct !{!1130, i1 true, !"_RINvXsL_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB6_5OsStrNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1131 = distinct !{!1131, !1130, !"_RINvXsL_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB6_5OsStrNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1132 = distinct !{!1132, i1 true, !"_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write"}
!1133 = distinct !{!1133, !1132, !"_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write: argument 1"}
!1134 = distinct !{!1134, i1 true, !"_RNvCs4jvHr4X8PhZ_10rustc_hash10hash_bytes"}
!1135 = distinct !{!1135, !1134, !"_RNvCs4jvHr4X8PhZ_10rustc_hash10hash_bytes: argument 0"}
!1136 = distinct !{!1136, i1 true, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv"}
!1137 = distinct !{!1137, !1136, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv: argument 0"}
!1138 = distinct !{!1138, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1139 = distinct !{!1139, !1138, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1140 = distinct !{!1140, i1 true, !"_RINvXsh_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB6_8OsStringNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1141 = distinct !{!1141, !1140, !"_RINvXsh_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB6_8OsStringNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1142 = !{!1127}
!1143 = !{!1129}
!1144 = !{!1135, !1133, !1131}
!1145 = !{!1141, !1139, !1137}
!1146 = distinct !{!1146, i1 true, !"_RNCINvNtCs7GWc7oqutCf_9hashbrown3map11make_hasherTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuNtNtNtB1K_4hash6random11RandomStateE0CseE7g6nXQLt3_5uu_mv"}
!1147 = distinct !{!1147, !1146, !"_RNCINvNtCs7GWc7oqutCf_9hashbrown3map11make_hasherTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuNtNtNtB1K_4hash6random11RandomStateE0CseE7g6nXQLt3_5uu_mv: argument 0"}
!1148 = !{!1147}
!1149 = distinct !{!1149, i1 true, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTyyEECseE7g6nXQLt3_5uu_mv"}
!1150 = distinct !{!1150, !1149, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTyyEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1151 = distinct !{!1151, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTyyENtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1152 = distinct !{!1152, !1151, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTyyENtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1153 = !{!1150}
!1154 = !{!1152}
!1155 = distinct !{!1155, i1 true, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTyyEECseE7g6nXQLt3_5uu_mv"}
!1156 = distinct !{!1156, !1155, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTyyEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1157 = distinct !{!1157, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTyyENtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1158 = distinct !{!1158, !1157, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTyyENtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1159 = !{!1156}
!1160 = !{!1158}
!1161 = distinct !{!1161, i1 true, !"_RNvCseE7g6nXQLt3_5uu_mv19rename_dir_fallback"}
!1162 = distinct !{!1162, !1161, !"_RNvCseE7g6nXQLt3_5uu_mv19rename_dir_fallback: argument 4"}
!1163 = distinct !{!1163, !1161, !"_RNvCseE7g6nXQLt3_5uu_mv19rename_dir_fallback: argument 3"}
!1164 = distinct !{!1164, !1161, !"_RNvCseE7g6nXQLt3_5uu_mv19rename_dir_fallback: argument 2"}
!1165 = distinct !{!1165, !1161, !"_RNvCseE7g6nXQLt3_5uu_mv19rename_dir_fallback: argument 1"}
!1166 = distinct !{!1166, !1161, !"_RNvCseE7g6nXQLt3_5uu_mv19rename_dir_fallback: argument 0"}
!1167 = distinct !{!1167, i1 true, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv"}
!1168 = distinct !{!1168, !1167, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!1169 = distinct !{!1169, !1167, !"_RINvNtCs2vKOLqTMYjT_3std2fs8metadataRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!1170 = distinct !{!1170, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv"}
!1171 = distinct !{!1171, !1170, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv: argument 0"}
!1172 = distinct !{!1172, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv"}
!1173 = distinct !{!1173, !1172, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1174 = distinct !{!1174, i1 true, !"_RINvNtCsccOTLrEdJoZ_8fs_extra3dir8get_sizeRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv"}
!1175 = distinct !{!1175, !1174, !"_RINvNtCsccOTLrEdJoZ_8fs_extra3dir8get_sizeRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!1176 = distinct !{!1176, !1174, !"_RINvNtCsccOTLrEdJoZ_8fs_extra3dir8get_sizeRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!1177 = distinct !{!1177, i1 true, !"_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv"}
!1178 = distinct !{!1178, !1177, !"_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!1179 = distinct !{!1179, !1177, !"_RINvNtCs2vKOLqTMYjT_3std2fs16symlink_metadataRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!1180 = distinct !{!1180, i1 true, !"_RINvNtCs2vKOLqTMYjT_3std2fs8read_dirRRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv"}
!1181 = distinct !{!1181, !1180, !"_RINvNtCs2vKOLqTMYjT_3std2fs8read_dirRRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!1182 = distinct !{!1182, !1180, !"_RINvNtCs2vKOLqTMYjT_3std2fs8read_dirRRNtNtB4_4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!1183 = distinct !{!1183, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs7ReadDirECseE7g6nXQLt3_5uu_mv"}
!1184 = distinct !{!1184, !1183, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs7ReadDirECseE7g6nXQLt3_5uu_mv: argument 0"}
!1185 = distinct !{!1185, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix7ReadDirECseE7g6nXQLt3_5uu_mv"}
!1186 = distinct !{!1186, !1185, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix7ReadDirECseE7g6nXQLt3_5uu_mv: argument 0"}
!1187 = distinct !{!1187, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv"}
!1188 = distinct !{!1188, !1187, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1189 = distinct !{!1189, i1 true, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv"}
!1190 = distinct !{!1190, !1189, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv: argument 0"}
!1191 = distinct !{!1191, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs8DirEntryECseE7g6nXQLt3_5uu_mv"}
!1192 = distinct !{!1192, !1191, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs8DirEntryECseE7g6nXQLt3_5uu_mv: argument 0"}
!1193 = distinct !{!1193, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix8DirEntryECseE7g6nXQLt3_5uu_mv"}
!1194 = distinct !{!1194, !1193, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix8DirEntryECseE7g6nXQLt3_5uu_mv: argument 0"}
!1195 = distinct !{!1195, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv"}
!1196 = distinct !{!1196, !1195, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1197 = distinct !{!1197, i1 true, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv"}
!1198 = distinct !{!1198, !1197, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv: argument 0"}
!1199 = distinct !{!1199, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs8DirEntryECseE7g6nXQLt3_5uu_mv"}
!1200 = distinct !{!1200, !1199, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs8DirEntryECseE7g6nXQLt3_5uu_mv: argument 0"}
!1201 = distinct !{!1201, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix8DirEntryECseE7g6nXQLt3_5uu_mv"}
!1202 = distinct !{!1202, !1201, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix8DirEntryECseE7g6nXQLt3_5uu_mv: argument 0"}
!1203 = distinct !{!1203, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv"}
!1204 = distinct !{!1204, !1203, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1205 = distinct !{!1205, i1 true, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv"}
!1206 = distinct !{!1206, !1205, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv: argument 0"}
!1207 = distinct !{!1207, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs7ReadDirECseE7g6nXQLt3_5uu_mv"}
!1208 = distinct !{!1208, !1207, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs7ReadDirECseE7g6nXQLt3_5uu_mv: argument 0"}
!1209 = distinct !{!1209, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix7ReadDirECseE7g6nXQLt3_5uu_mv"}
!1210 = distinct !{!1210, !1209, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix7ReadDirECseE7g6nXQLt3_5uu_mv: argument 0"}
!1211 = distinct !{!1211, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv"}
!1212 = distinct !{!1212, !1211, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1213 = distinct !{!1213, i1 true, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv"}
!1214 = distinct !{!1214, !1213, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv: argument 0"}
!1215 = distinct !{!1215, i1 true, !"_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs6Mg6kPLyuSp_9indicatif5style13ProgressStyleNtBJ_13TemplateErrorE6unwrapCseE7g6nXQLt3_5uu_mv"}
!1216 = distinct !{!1216, !1215, !"_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs6Mg6kPLyuSp_9indicatif5style13ProgressStyleNtBJ_13TemplateErrorE6unwrapCseE7g6nXQLt3_5uu_mv: argument 0"}
!1217 = distinct !{!1217, !1215, !"_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs6Mg6kPLyuSp_9indicatif5style13ProgressStyleNtBJ_13TemplateErrorE6unwrapCseE7g6nXQLt3_5uu_mv: argument 1"}
!1218 = distinct !{!1218, !1215, !"_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtCs6Mg6kPLyuSp_9indicatif5style13ProgressStyleNtBJ_13TemplateErrorE6unwrapCseE7g6nXQLt3_5uu_mv: argument 2"}
!1219 = distinct !{!1219, i1 true, !"_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv"}
!1220 = distinct !{!1220, !1219, !"_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!1221 = distinct !{!1221, !1219, !"_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!1222 = distinct !{!1222, i1 true, !"_RINvCsiNTfMYMREvh_5xattr4listRRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv"}
!1223 = distinct !{!1223, !1222, !"_RINvCsiNTfMYMREvh_5xattr4listRRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!1224 = distinct !{!1224, i1 true, !"_RINvCsiNTfMYMREvh_5xattr3getRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv"}
!1225 = distinct !{!1225, !1224, !"_RINvCsiNTfMYMREvh_5xattr3getRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv: argument 2"}
!1226 = distinct !{!1226, !1224, !"_RINvCsiNTfMYMREvh_5xattr3getRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!1227 = distinct !{!1227, !1224, !"_RINvCsiNTfMYMREvh_5xattr3getRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringRRNtNtBx_4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!1228 = distinct !{!1228, i1 true, !"_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCseE7g6nXQLt3_5uu_mv"}
!1229 = distinct !{!1229, !1228, !"_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCseE7g6nXQLt3_5uu_mv: argument 1"}
!1230 = distinct !{!1230, i1 true, !"_RINvXsL_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB6_5OsStrNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1231 = distinct !{!1231, !1230, !"_RINvXsL_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB6_5OsStrNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1232 = distinct !{!1232, i1 true, !"_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write"}
!1233 = distinct !{!1233, !1232, !"_RNvXs0_Cs4jvHr4X8PhZ_10rustc_hashNtB5_8FxHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write: argument 1"}
!1234 = distinct !{!1234, i1 true, !"_RNvCs4jvHr4X8PhZ_10rustc_hash10hash_bytes"}
!1235 = distinct !{!1235, !1234, !"_RNvCs4jvHr4X8PhZ_10rustc_hash10hash_bytes: argument 0"}
!1236 = distinct !{!1236, !1228, !"_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCseE7g6nXQLt3_5uu_mv: argument 3"}
!1237 = distinct !{!1237, !1228, !"_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCseE7g6nXQLt3_5uu_mv: argument 2"}
!1238 = distinct !{!1238, !1228, !"_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertCseE7g6nXQLt3_5uu_mv: argument 0"}
!1239 = distinct !{!1239, i1 true, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv"}
!1240 = distinct !{!1240, !1239, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv: argument 0"}
!1241 = distinct !{!1241, i1 true, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1242 = distinct !{!1242, !1241, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1243 = distinct !{!1243, i1 true, !"_RINvXsh_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB6_8OsStringNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv"}
!1244 = distinct !{!1244, !1243, !"_RINvXsh_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB6_8OsStringNtNtCs6JMX4GRUq9U_4core4hash4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECseE7g6nXQLt3_5uu_mv: argument 0"}
!1245 = distinct !{!1245, i1 true, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1y_E0NCINvB2F_11make_hasherBQ_B1y_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECseE7g6nXQLt3_5uu_mv"}
!1246 = distinct !{!1246, !1245, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1y_E0NCINvB2F_11make_hasherBQ_B1y_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1247 = distinct !{!1247, i1 true, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1y_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECseE7g6nXQLt3_5uu_mv"}
!1248 = distinct !{!1248, !1247, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1y_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1249 = distinct !{!1249, !1245, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1y_E0NCINvB2F_11make_hasherBQ_B1y_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0ECseE7g6nXQLt3_5uu_mv: argument 1"}
!1250 = distinct !{!1250, i1 true, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!1251 = distinct !{!1251, !1250, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!1252 = distinct !{!1252, i1 true, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1A_E0NCINvB2H_11make_hasherBS_B1A_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0CseE7g6nXQLt3_5uu_mv"}
!1253 = distinct !{!1253, !1252, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1A_E0NCINvB2H_11make_hasherBS_B1A_NtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0CseE7g6nXQLt3_5uu_mv: argument 0"}
!1254 = distinct !{!1254, i1 true, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE22insert_tagged_at_indexCseE7g6nXQLt3_5uu_mv"}
!1255 = distinct !{!1255, !1254, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE22insert_tagged_at_indexCseE7g6nXQLt3_5uu_mv: argument 1"}
!1256 = distinct !{!1256, !1254, !"_RNvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE22insert_tagged_at_indexCseE7g6nXQLt3_5uu_mv: argument 0"}
!1257 = distinct !{!1257, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECseE7g6nXQLt3_5uu_mv"}
!1258 = distinct !{!1258, !1257, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1259 = distinct !{!1259, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown3map7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECseE7g6nXQLt3_5uu_mv"}
!1260 = distinct !{!1260, !1259, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown3map7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1261 = distinct !{!1261, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown3raw8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEEECseE7g6nXQLt3_5uu_mv"}
!1262 = distinct !{!1262, !1261, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown3raw8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1263 = distinct !{!1263, i1 true, !"_RNvXsg_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv"}
!1264 = distinct !{!1264, !1263, !"_RNvXsg_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCseE7g6nXQLt3_5uu_mv: argument 0"}
!1265 = distinct !{!1265, i1 true, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEENtNtB20_5alloc6GlobalECseE7g6nXQLt3_5uu_mv"}
!1266 = distinct !{!1266, !1265, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEENtNtB20_5alloc6GlobalECseE7g6nXQLt3_5uu_mv: argument 0"}
!1267 = distinct !{!1267, i1 true, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv"}
!1268 = distinct !{!1268, !1267, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1269 = distinct !{!1269, i1 true, !"_RNvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE3newCseE7g6nXQLt3_5uu_mv"}
!1270 = distinct !{!1270, !1269, !"_RNvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE3newCseE7g6nXQLt3_5uu_mv: argument 0"}
!1271 = distinct !{!1271, i1 true, !"_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv"}
!1272 = distinct !{!1272, !1271, !"_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1273 = distinct !{!1273, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv"}
!1274 = distinct !{!1274, !1273, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1275 = distinct !{!1275, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsccOTLrEdJoZ_8fs_extra5error5ErrorEECseE7g6nXQLt3_5uu_mv"}
!1276 = distinct !{!1276, !1275, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsccOTLrEdJoZ_8fs_extra5error5ErrorEECseE7g6nXQLt3_5uu_mv: argument 0"}
!1277 = distinct !{!1277, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsccOTLrEdJoZ_8fs_extra5error5ErrorECseE7g6nXQLt3_5uu_mv"}
!1278 = distinct !{!1278, !1277, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsccOTLrEdJoZ_8fs_extra5error5ErrorECseE7g6nXQLt3_5uu_mv: argument 0"}
!1279 = distinct !{!1279, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv"}
!1280 = distinct !{!1280, !1279, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv: argument 0"}
!1281 = distinct !{!1281, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv"}
!1282 = distinct !{!1282, !1281, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1283 = distinct !{!1283, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECseE7g6nXQLt3_5uu_mv"}
!1284 = distinct !{!1284, !1283, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECseE7g6nXQLt3_5uu_mv: argument 0"}
!1285 = distinct !{!1285, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv"}
!1286 = distinct !{!1286, !1285, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv: argument 0"}
!1287 = distinct !{!1287, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv"}
!1288 = distinct !{!1288, !1287, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1289 = distinct !{!1289, i1 true, !"_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents"}
!1290 = distinct !{!1290, !1289, !"_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents: argument 5"}
!1291 = distinct !{!1291, !1289, !"_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents: argument 4"}
!1292 = distinct !{!1292, !1289, !"_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents: argument 3"}
!1293 = distinct !{!1293, !1289, !"_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents: argument 2"}
!1294 = distinct !{!1294, !1289, !"_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents: argument 0"}
!1295 = distinct !{!1295, !1289, !"_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents: argument 1"}
!1296 = distinct !{!1296, i1 true, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv"}
!1297 = distinct !{!1297, !1296, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv: argument 0"}
!1298 = distinct !{!1298, i1 true, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv"}
!1299 = distinct !{!1299, !1298, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECseE7g6nXQLt3_5uu_mv: argument 0"}
!1300 = distinct !{!1300, i1 true, !"_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr12apply_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv"}
!1301 = distinct !{!1301, !1300, !"_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr12apply_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 1"}
!1302 = distinct !{!1302, !1300, !"_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr12apply_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv: argument 0"}
!1303 = distinct !{!1303, i1 true, !"_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv"}
!1304 = distinct !{!1304, !1303, !"_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv: argument 1"}
!1305 = distinct !{!1305, !1303, !"_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv: argument 0"}
!1306 = distinct !{!1306, i1 true, !"_RNvXsh_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv"}
!1307 = distinct !{!1307, !1306, !"_RNvXsh_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv: argument 1"}
!1308 = distinct !{!1308, !1306, !"_RNvXsh_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv: argument 0"}
end_hunk_1
