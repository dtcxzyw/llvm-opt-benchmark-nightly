Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/repack?download=true
inline.NumInlined: 423
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 70
begin_hunk_0_@ggml_gemv_q2_K_8x8_q8_K:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.si, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.sj = add nuw nsw i64 %.0367, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.loopexit430.unr-lcssa, label %.lr.ph365, !llvm.loop !74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemm_q4_0_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 20 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = alloca [16 x <8 x float>], align 32      ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.e = sdiv i32 %0, 32
  %i.f = sext i32 %i.e to i64                     ; 20 uses
  %i.g = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %6, i64 1
  %i.i = srem <2 x i32> %i.h, splat (i32 16)      ; 2 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = sub nsw i32 %5, %i.j                     ; 2 uses
  %i.l = extractelement <2 x i32> %i.i, i64 1     ; 2 uses
  %i.m = sub nsw i32 %6, %i.l                     ; 5 uses
  %i.n = sdiv i32 %i.k, 4
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = icmp sgt i32 %i.k, 3
  br i1 %i.p, label %.lr.ph1033.i, label %.preheader1019.i

.lr.ph1033.i:                                     ; preds = %bb.a
  %i.q = sdiv i32 %i.m, 8
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp sgt i32 %i.m, 7
  %i.t = icmp sgt i32 %0, 31
  br i1 %i.s, label %.lr.ph1033.split.us.preheader.i, label %.lr.ph1033.split.i.preheader

.lr.ph1033.split.i.preheader:                     ; preds = %.lr.ph1033.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.u = add nsw i64 %smax, -1
  %i.v = and i64 %i.u, -4
  %i.w = add nuw nsw i64 %i.v, 4
  br label %.preheader1019.i

.lr.ph1033.split.us.preheader.i:                  ; preds = %.lr.ph1033.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert1223.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert1225.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert1227.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert1229.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert1231.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert1233.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert1235.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert1237.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert1239.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert1241.i = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.phi.trans.insert1243.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.phi.trans.insert1245.i = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %.phi.trans.insert1247.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %.phi.trans.insert1249.i = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.aa = shl i64 %2, 6
  %i.ab = shl nuw nsw i64 %i.r, 5
  %i.ac = add nsw i64 %i.ab, -32
  %i.ad = and i64 %i.ac, -64
  %i.ae = add nsw i64 %i.ad, 64                   ; 16 uses
  %i.af = shl i64 %2, 2
  %i.ag = shl i64 %2, 3
  %i.ah = mul i64 %2, 12
  %i.ai = shl i64 %2, 4
  %i.aj = mul i64 %2, 20
  %i.ak = mul i64 %2, 24
  %i.al = mul i64 %2, 28
  %i.am = shl i64 %2, 5
  %i.an = mul i64 %2, 36
  %i.ao = mul i64 %2, 40
  %i.ap = mul i64 %2, 44
  %i.aq = mul i64 %2, 48
  %i.ar = mul i64 %2, 52
  %i.as = mul i64 %2, 56
  %i.at = mul i64 %2, 60
  %smax55 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.au = add nsw i64 %smax55, -1
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %1, i64 %i.af
  %i.ax = getelementptr i8, ptr %1, i64 %i.ag
  %i.ay = getelementptr i8, ptr %1, i64 %i.ah
  %i.az = getelementptr i8, ptr %1, i64 %i.ai
  %i.ba = getelementptr i8, ptr %1, i64 %i.aj
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %1, i64 %i.al
  %i.bd = getelementptr i8, ptr %1, i64 %i.am
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.ao
  %i.bg = getelementptr i8, ptr %1, i64 %i.ap
  %i.bh = getelementptr i8, ptr %1, i64 %i.aq
  %i.bi = getelementptr i8, ptr %1, i64 %i.ar
  %i.bj = getelementptr i8, ptr %1, i64 %i.as
  %i.bk = getelementptr i8, ptr %1, i64 %i.at
  br label %.lr.ph1033.split.us.i

.lr.ph1033.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1033.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  %.09861031.us.i = phi i64 [ %i.mv, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !99
  %i.bl = mul nsw i64 %.09861031.us.i, %i.f
  %i.bm = getelementptr inbounds [136 x i8], ptr %4, i64 %i.bl ; 2 uses
  store ptr %i.bm, ptr %i.a, align 16, !tbaa !21, !noalias !99
  %i.bn = getelementptr inbounds [136 x i8], ptr %i.bm, i64 %i.f ; 2 uses
  store ptr %i.bn, ptr %i.x, align 8, !tbaa !21, !noalias !99
  %i.bo = getelementptr inbounds [136 x i8], ptr %i.bn, i64 %i.f ; 2 uses
  store ptr %i.bo, ptr %i.y, align 16, !tbaa !21, !noalias !99
  %i.bp = getelementptr inbounds [136 x i8], ptr %i.bo, i64 %i.f
  store ptr %i.bp, ptr %i.z, align 8, !tbaa !21, !noalias !99
  %i.bq = shl nuw nsw i64 %.09861031.us.i, 2      ; 16 uses
  %i.br = mul i64 %i.bq, %2
  %i.bs = or disjoint i64 %i.bq, 1
  %i.bt = mul i64 %i.bs, %2
  %i.bu = or disjoint i64 %i.bq, 2
  %i.bv = mul i64 %i.bu, %2
  %i.bw = or disjoint i64 %i.bq, 3
  %i.bx = mul i64 %i.bw, %2
  %i.by = or disjoint i64 %i.bq, 4
  %i.bz = mul i64 %i.by, %2
  %i.ca = or disjoint i64 %i.bq, 5
  %i.cb = mul i64 %i.ca, %2
  %i.cc = or disjoint i64 %i.bq, 6
  %i.cd = mul i64 %i.cc, %2
  %i.ce = or disjoint i64 %i.bq, 7
  %i.cf = mul i64 %i.ce, %2
  %i.cg = or disjoint i64 %i.bq, 8
  %i.ch = mul i64 %i.cg, %2
  %i.ci = or disjoint i64 %i.bq, 9
  %i.cj = mul i64 %i.ci, %2
  %i.ck = or disjoint i64 %i.bq, 10
  %i.cl = mul i64 %i.ck, %2
  %i.cm = or disjoint i64 %i.bq, 11
  %i.cn = mul i64 %i.cm, %2
  %i.co = or disjoint i64 %i.bq, 12
  %i.cp = mul i64 %i.co, %2
  %i.cq = or disjoint i64 %i.bq, 13
  %i.cr = mul i64 %i.cq, %2
  %i.cs = or disjoint i64 %i.bq, 14
  %i.ct = mul i64 %i.cs, %2
  %i.cu = or disjoint i64 %i.bq, 15
  %i.cv = mul i64 %i.cu, %2
  br i1 %i.t, label %.preheader1021.us.i.us, label %.preheader1021.us.i.preheader

.preheader1021.us.i.preheader:                    ; preds = %.lr.ph1033.split.us.i
  %i.cw = mul i64 %i.aa, %indvar                  ; 16 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.cw
  %scevgep40 = getelementptr i8, ptr %i.aw, i64 %i.cw
  %scevgep41 = getelementptr i8, ptr %i.ax, i64 %i.cw
  %scevgep42 = getelementptr i8, ptr %i.ay, i64 %i.cw
  %scevgep43 = getelementptr i8, ptr %i.az, i64 %i.cw
  %scevgep44 = getelementptr i8, ptr %i.ba, i64 %i.cw
  %scevgep45 = getelementptr i8, ptr %i.bb, i64 %i.cw
  %scevgep46 = getelementptr i8, ptr %i.bc, i64 %i.cw
  %scevgep47 = getelementptr i8, ptr %i.bd, i64 %i.cw
  %scevgep48 = getelementptr i8, ptr %i.be, i64 %i.cw
  %scevgep49 = getelementptr i8, ptr %i.bf, i64 %i.cw
  %scevgep50 = getelementptr i8, ptr %i.bg, i64 %i.cw
  %scevgep51 = getelementptr i8, ptr %i.bh, i64 %i.cw
  %scevgep52 = getelementptr i8, ptr %i.bi, i64 %i.cw
  %scevgep53 = getelementptr i8, ptr %i.bj, i64 %i.cw
  %scevgep54 = getelementptr i8, ptr %i.bk, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep40, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep41, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep42, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep43, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep44, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep45, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep46, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep47, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep48, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep49, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep50, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep51, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep52, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep54, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !96
  br label %._crit_edge.us.i

.preheader1021.us.i.us:                           ; preds = %.lr.ph1033.split.us.i, %.preheader1020.us.loopexit.i.us
  %.09891029.us.i.us = phi i64 [ %i.mt, %.preheader1020.us.loopexit.i.us ], [ 0, %.lr.ph1033.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9, !noalias !99
  %i.cx = mul nuw nsw i64 %.09891029.us.i.us, %i.f
  %i.cy = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.cx
  %i.cz = or disjoint i64 %.09891029.us.i.us, 1
  %i.da = mul nuw nsw i64 %i.cz, %i.f
  %i.db = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.da
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.preheader1021.us.i.us, %bb.c
  %.09911027.us.i.us = phi i64 [ %i.ms, %bb.c ], [ 0, %.preheader1021.us.i.us ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [144 x i8], ptr %i.cy, i64 %.09911027.us.i.us ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %8 = load <8 x i32>, ptr %7, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %10 = load <8 x i32>, ptr %9, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %11 = load <8 x i32>, ptr %i.dd, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %12 = load <8 x i32>, ptr %i.de, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.df = getelementptr inbounds nuw [144 x i8], ptr %i.db, i64 %.09911027.us.i.us ; 5 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %14 = load <8 x i32>, ptr %13, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %16 = load <8 x i32>, ptr %15, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %17 = load <8 x i32>, ptr %i.dg, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  %18 = load <8 x i32>, ptr %i.dh, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %19 = shufflevector <8 x i32> %8, <8 x i32> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x i32> %14, <8 x i32> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <16 x i32> %19, <16 x i32> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %22 = shufflevector <8 x i32> %8, <8 x i32> %10, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <8 x i32> %14, <8 x i32> %16, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <16 x i32> %22, <16 x i32> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %25 = shufflevector <8 x i32> %11, <8 x i32> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <8 x i32> %17, <8 x i32> %18, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <16 x i32> %25, <16 x i32> %26, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %28 = shufflevector <8 x i32> %11, <8 x i32> %12, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <8 x i32> %17, <8 x i32> %18, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = shufflevector <16 x i32> %28, <16 x i32> %29, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.di = bitcast <16 x i32> %21 to <64 x i8>
  %i.dj = and <64 x i8> %i.di, splat (i8 15)
  %i.dk = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.dj) ; 2 uses
  %i.dl = bitcast <16 x i32> %24 to <64 x i8>
  %i.dm = and <64 x i8> %i.dl, splat (i8 15)
  %i.dn = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.dm) ; 2 uses
  %i.do = bitcast <16 x i32> %27 to <64 x i8>
  %i.dp = and <64 x i8> %i.do, splat (i8 15)
  %i.dq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.dp) ; 2 uses
  %i.dr = bitcast <16 x i32> %30 to <64 x i8>
  %i.ds = and <64 x i8> %i.dr, splat (i8 15)
  %i.dt = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.ds) ; 2 uses
  %i.du = bitcast <16 x i32> %21 to <32 x i16>
  %i.dv = lshr <32 x i16> %i.du, splat (i16 4)
  %i.dw = bitcast <32 x i16> %i.dv to <64 x i8>
  %i.dx = and <64 x i8> %i.dw, splat (i8 15)
  %i.dy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.dx) ; 2 uses
  %i.dz = bitcast <16 x i32> %24 to <32 x i16>
  %i.ea = lshr <32 x i16> %i.dz, splat (i16 4)
  %i.eb = bitcast <32 x i16> %i.ea to <64 x i8>
  %i.ec = and <64 x i8> %i.eb, splat (i8 15)
  %i.ed = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.ec) ; 2 uses
  %i.ee = bitcast <16 x i32> %27 to <32 x i16>
  %i.ef = lshr <32 x i16> %i.ee, splat (i16 4)
  %i.eg = bitcast <32 x i16> %i.ef to <64 x i8>
  %i.eh = and <64 x i8> %i.eg, splat (i8 15)
  %i.ei = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.eh) ; 2 uses
  %i.ej = bitcast <16 x i32> %30 to <32 x i16>
  %i.ek = lshr <32 x i16> %i.ej, splat (i16 4)
  %i.el = bitcast <32 x i16> %i.ek to <64 x i8>
  %i.em = and <64 x i8> %i.el, splat (i8 15)
  %i.en = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.em) ; 2 uses
  %i.eo = load <2 x i64>, ptr %i.df, align 1, !tbaa !9, !alias.scope !97
  %i.ep = load <2 x i64>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !97
  %i.eq = shufflevector <2 x i64> %i.ep, <2 x i64> %i.eo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.er = bitcast <4 x i64> %i.eq to <16 x half>
  %i.es = fpext <16 x half> %i.er to <16 x float> ; 4 uses
  %i.et = shufflevector <64 x i8> %i.ei, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.eu = sub <64 x i8> zeroinitializer, %i.et    ; 2 uses
  %i.ev = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ew = sub <64 x i8> zeroinitializer, %i.ev    ; 2 uses
  %i.ex = shufflevector <64 x i8> %i.dq, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ey = sub <64 x i8> zeroinitializer, %i.ex    ; 2 uses
  %i.ez = shufflevector <64 x i8> %i.dk, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fa = sub <64 x i8> zeroinitializer, %i.ez    ; 2 uses
  %i.fb = shufflevector <64 x i8> %i.en, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fc = sub <64 x i8> zeroinitializer, %i.fb    ; 2 uses
  %i.fd = shufflevector <64 x i8> %i.ed, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fe = sub <64 x i8> zeroinitializer, %i.fd    ; 2 uses
  %i.ff = shufflevector <64 x i8> %i.dt, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fg = sub <64 x i8> zeroinitializer, %i.ff    ; 2 uses
  %i.fh = shufflevector <64 x i8> %i.dn, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fi = sub <64 x i8> zeroinitializer, %i.fh    ; 2 uses
  %i.fj = shufflevector <64 x i8> %i.ei, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fk = sub <64 x i8> zeroinitializer, %i.fj    ; 2 uses
  %i.fl = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fm = sub <64 x i8> zeroinitializer, %i.fl    ; 2 uses
  %i.fn = shufflevector <64 x i8> %i.dq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fo = sub <64 x i8> zeroinitializer, %i.fn    ; 2 uses
  %i.fp = shufflevector <64 x i8> %i.dk, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fq = sub <64 x i8> zeroinitializer, %i.fp    ; 2 uses
  %i.fr = shufflevector <64 x i8> %i.en, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fs = sub <64 x i8> zeroinitializer, %i.fr    ; 2 uses
  %i.ft = shufflevector <64 x i8> %i.ed, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fu = sub <64 x i8> zeroinitializer, %i.ft    ; 2 uses
  %i.fv = shufflevector <64 x i8> %i.dt, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fw = sub <64 x i8> zeroinitializer, %i.fv    ; 2 uses
  %i.fx = shufflevector <64 x i8> %i.dn, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fy = sub <64 x i8> zeroinitializer, %i.fx    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.us.i.us ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !21, !noalias !99
  %i.gb = getelementptr inbounds nuw [136 x i8], ptr %i.ga, i64 %.09911027.us.i.us ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load <8 x i32>, ptr %i.gc, align 1, !tbaa !9, !noalias !100 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gf = load <8 x i32>, ptr %i.ge, align 1, !tbaa !9, !noalias !100 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  %i.gh = load <8 x i32>, ptr %i.gg, align 1, !tbaa !9, !noalias !100 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 104
  %i.gj = load <8 x i32>, ptr %i.gi, align 1, !tbaa !9, !noalias !100 ; 4 uses
  %i.gk = bitcast <8 x i32> %i.gj to <32 x i8>
  %i.gl = shufflevector <32 x i8> %i.gk, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gl, i1 false) ; 2 uses
  %i.gn = icmp slt <64 x i8> %i.gl, zeroinitializer ; 2 uses
  %i.go = select <64 x i1> %i.gn, <64 x i8> %i.eu, <64 x i8> %i.et
  %i.gp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gm, <64 x i8> %i.go)
  %i.gq = bitcast <8 x i32> %i.gh to <32 x i8>
  %i.gr = shufflevector <32 x i8> %i.gq, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gs = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gr, i1 false) ; 2 uses
  %i.gt = icmp slt <64 x i8> %i.gr, zeroinitializer ; 2 uses
  %i.gu = select <64 x i1> %i.gt, <64 x i8> %i.ew, <64 x i8> %i.ev
  %i.gv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gp, <64 x i8> %i.gs, <64 x i8> %i.gu)
  %i.gw = bitcast <8 x i32> %i.gf to <32 x i8>
  %i.gx = shufflevector <32 x i8> %i.gw, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gx, i1 false) ; 2 uses
  %i.gz = icmp slt <64 x i8> %i.gx, zeroinitializer ; 2 uses
  %i.ha = select <64 x i1> %i.gz, <64 x i8> %i.ey, <64 x i8> %i.ex
  %i.hb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gv, <64 x i8> %i.gy, <64 x i8> %i.ha)
  %i.hc = bitcast <8 x i32> %i.gd to <32 x i8>
  %i.hd = shufflevector <32 x i8> %i.hc, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.he = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hd, i1 false) ; 2 uses
  %i.hf = icmp slt <64 x i8> %i.hd, zeroinitializer ; 2 uses
  %i.hg = select <64 x i1> %i.hf, <64 x i8> %i.fa, <64 x i8> %i.ez
  %i.hh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hb, <64 x i8> %i.he, <64 x i8> %i.hg)
  %i.hi = select <64 x i1> %i.gn, <64 x i8> %i.fc, <64 x i8> %i.fb
  %i.hj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gm, <64 x i8> %i.hi)
  %i.hk = select <64 x i1> %i.gt, <64 x i8> %i.fe, <64 x i8> %i.fd
  %i.hl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hj, <64 x i8> %i.gs, <64 x i8> %i.hk)
  %i.hm = select <64 x i1> %i.gz, <64 x i8> %i.fg, <64 x i8> %i.ff
  %i.hn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hl, <64 x i8> %i.gy, <64 x i8> %i.hm)
  %i.ho = select <64 x i1> %i.hf, <64 x i8> %i.fi, <64 x i8> %i.fh
  %i.hp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hn, <64 x i8> %i.he, <64 x i8> %i.ho)
  %i.hq = bitcast <8 x i32> %i.gj to <32 x i8>
  %i.hr = shufflevector <32 x i8> %i.hq, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hs = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hr, i1 false) ; 2 uses
  %i.ht = icmp slt <64 x i8> %i.hr, zeroinitializer ; 2 uses
  %i.hu = select <64 x i1> %i.ht, <64 x i8> %i.eu, <64 x i8> %i.et
  %i.hv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.hs, <64 x i8> %i.hu)
  %i.hw = bitcast <8 x i32> %i.gh to <32 x i8>
  %i.hx = shufflevector <32 x i8> %i.hw, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hx, i1 false) ; 2 uses
  %i.hz = icmp slt <64 x i8> %i.hx, zeroinitializer ; 2 uses
  %i.ia = select <64 x i1> %i.hz, <64 x i8> %i.ew, <64 x i8> %i.ev
  %i.ib = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hv, <64 x i8> %i.hy, <64 x i8> %i.ia)
  %i.ic = bitcast <8 x i32> %i.gf to <32 x i8>
  %i.id = shufflevector <32 x i8> %i.ic, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ie = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.id, i1 false) ; 2 uses
  %i.if = icmp slt <64 x i8> %i.id, zeroinitializer ; 2 uses
  %i.ig = select <64 x i1> %i.if, <64 x i8> %i.ey, <64 x i8> %i.ex
  %i.ih = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ib, <64 x i8> %i.ie, <64 x i8> %i.ig)
  %i.ii = bitcast <8 x i32> %i.gd to <32 x i8>
  %i.ij = shufflevector <32 x i8> %i.ii, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ik = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ij, i1 false) ; 2 uses
  %i.il = icmp slt <64 x i8> %i.ij, zeroinitializer ; 2 uses
  %i.im = select <64 x i1> %i.il, <64 x i8> %i.fa, <64 x i8> %i.ez
  %i.in = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ih, <64 x i8> %i.ik, <64 x i8> %i.im)
  %i.io = select <64 x i1> %i.ht, <64 x i8> %i.fc, <64 x i8> %i.fb
  %i.ip = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.hs, <64 x i8> %i.io)
  %i.iq = select <64 x i1> %i.hz, <64 x i8> %i.fe, <64 x i8> %i.fd
  %i.ir = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ip, <64 x i8> %i.hy, <64 x i8> %i.iq)
  %i.is = select <64 x i1> %i.if, <64 x i8> %i.fg, <64 x i8> %i.ff
  %i.it = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ir, <64 x i8> %i.ie, <64 x i8> %i.is)
  %i.iu = select <64 x i1> %i.il, <64 x i8> %i.fi, <64 x i8> %i.fh
  %i.iv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.it, <64 x i8> %i.ik, <64 x i8> %i.iu)
  %i.iw = bitcast <8 x i32> %i.gj to <32 x i8>
  %i.ix = shufflevector <32 x i8> %i.iw, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.iy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ix, i1 false) ; 2 uses
  %i.iz = icmp slt <64 x i8> %i.ix, zeroinitializer ; 2 uses
  %i.ja = select <64 x i1> %i.iz, <64 x i8> %i.fk, <64 x i8> %i.fj
  %i.jb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.iy, <64 x i8> %i.ja)
  %i.jc = bitcast <8 x i32> %i.gh to <32 x i8>
  %i.jd = shufflevector <32 x i8> %i.jc, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.je = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jd, i1 false) ; 2 uses
  %i.jf = icmp slt <64 x i8> %i.jd, zeroinitializer ; 2 uses
  %i.jg = select <64 x i1> %i.jf, <64 x i8> %i.fm, <64 x i8> %i.fl
  %i.jh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jb, <64 x i8> %i.je, <64 x i8> %i.jg)
  %i.ji = bitcast <8 x i32> %i.gf to <32 x i8>
  %i.jj = shufflevector <32 x i8> %i.ji, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jj, i1 false) ; 2 uses
  %i.jl = icmp slt <64 x i8> %i.jj, zeroinitializer ; 2 uses
  %i.jm = select <64 x i1> %i.jl, <64 x i8> %i.fo, <64 x i8> %i.fn
  %i.jn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jh, <64 x i8> %i.jk, <64 x i8> %i.jm)
  %i.jo = bitcast <8 x i32> %i.gd to <32 x i8>
  %i.jp = shufflevector <32 x i8> %i.jo, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jp, i1 false) ; 2 uses
  %i.jr = icmp slt <64 x i8> %i.jp, zeroinitializer ; 2 uses
  %i.js = select <64 x i1> %i.jr, <64 x i8> %i.fq, <64 x i8> %i.fp
  %i.jt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jn, <64 x i8> %i.jq, <64 x i8> %i.js)
  %i.ju = select <64 x i1> %i.iz, <64 x i8> %i.fs, <64 x i8> %i.fr
  %i.jv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.iy, <64 x i8> %i.ju)
  %i.jw = select <64 x i1> %i.jf, <64 x i8> %i.fu, <64 x i8> %i.ft
  %i.jx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jv, <64 x i8> %i.je, <64 x i8> %i.jw)
  %i.jy = select <64 x i1> %i.jl, <64 x i8> %i.fw, <64 x i8> %i.fv
  %i.jz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jx, <64 x i8> %i.jk, <64 x i8> %i.jy)
  %i.ka = select <64 x i1> %i.jr, <64 x i8> %i.fy, <64 x i8> %i.fx
  %i.kb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jz, <64 x i8> %i.jq, <64 x i8> %i.ka)
  %i.kc = bitcast <8 x i32> %i.gj to <32 x i8>
  %i.kd = shufflevector <32 x i8> %i.kc, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ke = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kd, i1 false) ; 2 uses
  %i.kf = icmp slt <64 x i8> %i.kd, zeroinitializer ; 2 uses
  %i.kg = select <64 x i1> %i.kf, <64 x i8> %i.fk, <64 x i8> %i.fj
  %i.kh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ke, <64 x i8> %i.kg)
  %i.ki = bitcast <8 x i32> %i.gh to <32 x i8>
  %i.kj = shufflevector <32 x i8> %i.ki, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kj, i1 false) ; 2 uses
  %i.kl = icmp slt <64 x i8> %i.kj, zeroinitializer ; 2 uses
  %i.km = select <64 x i1> %i.kl, <64 x i8> %i.fm, <64 x i8> %i.fl
  %i.kn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kh, <64 x i8> %i.kk, <64 x i8> %i.km)
  %i.ko = bitcast <8 x i32> %i.gf to <32 x i8>
  %i.kp = shufflevector <32 x i8> %i.ko, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kp, i1 false) ; 2 uses
  %i.kr = icmp slt <64 x i8> %i.kp, zeroinitializer ; 2 uses
  %i.ks = select <64 x i1> %i.kr, <64 x i8> %i.fo, <64 x i8> %i.fn
  %i.kt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kn, <64 x i8> %i.kq, <64 x i8> %i.ks)
  %i.ku = bitcast <8 x i32> %i.gd to <32 x i8>
  %i.kv = shufflevector <32 x i8> %i.ku, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kv, i1 false) ; 2 uses
  %i.kx = icmp slt <64 x i8> %i.kv, zeroinitializer ; 2 uses
  %i.ky = select <64 x i1> %i.kx, <64 x i8> %i.fq, <64 x i8> %i.fp
  %i.kz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kt, <64 x i8> %i.kw, <64 x i8> %i.ky)
  %i.la = select <64 x i1> %i.kf, <64 x i8> %i.fs, <64 x i8> %i.fr
  %i.lb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ke, <64 x i8> %i.la)
  %i.lc = select <64 x i1> %i.kl, <64 x i8> %i.fu, <64 x i8> %i.ft
  %i.ld = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lb, <64 x i8> %i.kk, <64 x i8> %i.lc)
  %i.le = select <64 x i1> %i.kr, <64 x i8> %i.fw, <64 x i8> %i.fv
  %i.lf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ld, <64 x i8> %i.kq, <64 x i8> %i.le)
  %i.lg = select <64 x i1> %i.kx, <64 x i8> %i.fy, <64 x i8> %i.fx
  %i.lh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lf, <64 x i8> %i.kw, <64 x i8> %i.lg)
  %i.li = add <16 x i32> %i.jt, %i.hh             ; 2 uses
  %i.lj = add <16 x i32> %i.kb, %i.hp             ; 2 uses
  %i.lk = add <16 x i32> %i.kz, %i.in             ; 2 uses
  %i.ll = add <16 x i32> %i.lh, %i.iv             ; 2 uses
  %i.lm = shufflevector <16 x i32> %i.li, <16 x i32> %i.lj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ln = shufflevector <16 x i32> %i.li, <16 x i32> %i.lj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.lo = shufflevector <16 x i32> %i.lk, <16 x i32> %i.ll, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.lp = shufflevector <16 x i32> %i.lk, <16 x i32> %i.ll, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.lq = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.gb, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !100
  %i.lr = bitcast <4 x i32> %i.lq to <8 x half>
  %i.ls = shufflevector <8 x half> %i.lr, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lt = fpext <16 x half> %i.ls to <16 x float> ; 4 uses
  %i.lu = sitofp <16 x i32> %i.lm to <16 x float>
  %i.lv = shufflevector <16 x float> %i.lt, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.lw = fmul <16 x float> %i.lv, %i.es
  %.idx1300.i.us = shl nuw nsw i64 %indvars.iv.i.us, 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx1300.i.us ; 5 uses
  %i.ly = load <16 x float>, ptr %i.lx, align 64, !tbaa !9, !noalias !99
  %i.lz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lu, <16 x float> %i.lw, <16 x float> %i.ly)
  store <16 x float> %i.lz, ptr %i.lx, align 64, !tbaa !9, !noalias !99
  %i.ma = sitofp <16 x i32> %i.ln to <16 x float>
  %i.mb = shufflevector <16 x float> %i.lt, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.mc = fmul <16 x float> %i.mb, %i.es
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 64 ; 2 uses
  %i.me = load <16 x float>, ptr %i.md, align 64, !tbaa !9, !noalias !99
  %i.mf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ma, <16 x float> %i.mc, <16 x float> %i.me)
  store <16 x float> %i.mf, ptr %i.md, align 64, !tbaa !9, !noalias !99
  %i.mg = sitofp <16 x i32> %i.lo to <16 x float>
  %i.mh = shufflevector <16 x float> %i.lt, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.mi = fmul <16 x float> %i.mh, %i.es
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 128 ; 2 uses
  %i.mk = load <16 x float>, ptr %i.mj, align 64, !tbaa !9, !noalias !99
  %i.ml = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mg, <16 x float> %i.mi, <16 x float> %i.mk)
  store <16 x float> %i.ml, ptr %i.mj, align 64, !tbaa !9, !noalias !99
  %i.mm = sitofp <16 x i32> %i.lp to <16 x float>
  %i.mn = shufflevector <16 x float> %i.lt, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.mo = fmul <16 x float> %i.mn, %i.es
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lx, i64 192 ; 2 uses
  %i.mq = load <16 x float>, ptr %i.mp, align 64, !tbaa !9, !noalias !99
  %i.mr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mm, <16 x float> %i.mo, <16 x float> %i.mq)
  store <16 x float> %i.mr, ptr %i.mp, align 64, !tbaa !9, !noalias !99
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 4
  br i1 %exitcond.not.i.us, label %bb.c, label %bb.b, !llvm.loop !80

bb.c:                                             ; preds = %bb.b
  %i.ms = add nuw nsw i64 %.09911027.us.i.us, 1   ; 2 uses
  %exitcond1132.not.i.us = icmp eq i64 %i.ms, %i.f
  br i1 %exitcond1132.not.i.us, label %.preheader1020.us.loopexit.i.us, label %.lr.ph.us.i.us, !llvm.loop !81

.preheader1020.us.loopexit.i.us:                  ; preds = %bb.c
  %.pre.i.us = load <16 x float>, ptr %i.b, align 64, !tbaa !9, !noalias !99
  %.pre1222.i.us = load <16 x float>, ptr %.phi.trans.insert.i, align 64, !tbaa !9, !noalias !99
  %.pre1224.i.us = load <16 x float>, ptr %.phi.trans.insert1223.i, align 64, !tbaa !9, !noalias !99
  %.pre1226.i.us = load <16 x float>, ptr %.phi.trans.insert1225.i, align 64, !tbaa !9, !noalias !99
  %.pre1228.i.us = load <16 x float>, ptr %.phi.trans.insert1227.i, align 64, !tbaa !9, !noalias !99
  %.pre1230.i.us = load <16 x float>, ptr %.phi.trans.insert1229.i, align 64, !tbaa !9, !noalias !99
  %.pre1232.i.us = load <16 x float>, ptr %.phi.trans.insert1231.i, align 64, !tbaa !9, !noalias !99
  %.pre1234.i.us = load <16 x float>, ptr %.phi.trans.insert1233.i, align 64, !tbaa !9, !noalias !99
  %.pre1236.i.us = load <16 x float>, ptr %.phi.trans.insert1235.i, align 64, !tbaa !9, !noalias !99
  %.pre1238.i.us = load <16 x float>, ptr %.phi.trans.insert1237.i, align 64, !tbaa !9, !noalias !99
  %.pre1240.i.us = load <16 x float>, ptr %.phi.trans.insert1239.i, align 64, !tbaa !9, !noalias !99
  %.pre1242.i.us = load <16 x float>, ptr %.phi.trans.insert1241.i, align 64, !tbaa !9, !noalias !99
  %.pre1244.i.us = load <16 x float>, ptr %.phi.trans.insert1243.i, align 64, !tbaa !9, !noalias !99
  %.pre1246.i.us = load <16 x float>, ptr %.phi.trans.insert1245.i, align 64, !tbaa !9, !noalias !99
  %.pre1248.i.us = load <16 x float>, ptr %.phi.trans.insert1247.i, align 64, !tbaa !9, !noalias !99
  %.pre1250.i.us = load <16 x float>, ptr %.phi.trans.insert1249.i, align 64, !tbaa !9, !noalias !99
  %.idx1011.us.i.us = shl nuw nsw i64 %.09891029.us.i.us, 5
  %invariant.gep.us.i.us = getelementptr i8, ptr %1, i64 %.idx1011.us.i.us ; 16 uses
  %gep.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.br
  store <16 x float> %.pre.i.us, ptr %gep.us.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.1.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bt
  store <16 x float> %.pre1222.i.us, ptr %gep.us.1.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.2.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bv
  store <16 x float> %.pre1224.i.us, ptr %gep.us.2.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.3.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bx
  store <16 x float> %.pre1226.i.us, ptr %gep.us.3.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.4.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bz
  store <16 x float> %.pre1228.i.us, ptr %gep.us.4.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.5.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cb
  store <16 x float> %.pre1230.i.us, ptr %gep.us.5.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.6.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cd
  store <16 x float> %.pre1232.i.us, ptr %gep.us.6.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.7.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cf
  store <16 x float> %.pre1234.i.us, ptr %gep.us.7.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.8.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ch
  store <16 x float> %.pre1236.i.us, ptr %gep.us.8.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.9.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cj
  store <16 x float> %.pre1238.i.us, ptr %gep.us.9.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.10.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cl
  store <16 x float> %.pre1240.i.us, ptr %gep.us.10.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.11.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cn
  store <16 x float> %.pre1242.i.us, ptr %gep.us.11.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.12.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cp
  store <16 x float> %.pre1244.i.us, ptr %gep.us.12.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.13.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cr
  store <16 x float> %.pre1246.i.us, ptr %gep.us.13.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.14.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ct
  store <16 x float> %.pre1248.i.us, ptr %gep.us.14.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us.15.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cv
  store <16 x float> %.pre1250.i.us, ptr %gep.us.15.i.us, align 1, !tbaa !9, !alias.scope !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !99
  %i.mt = add nuw nsw i64 %.09891029.us.i.us, 2   ; 2 uses
  %i.mu = icmp slt i64 %i.mt, %i.r
  br i1 %i.mu, label %.preheader1021.us.i.us, label %._crit_edge.us.i, !llvm.loop !82

._crit_edge.us.i:                                 ; preds = %.preheader1020.us.loopexit.i.us, %.preheader1021.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !99
  %i.mv = add nuw nsw i64 %.09861031.us.i, 4      ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar, %i.av
  br i1 %exitcond.not, label %.preheader1019.i, label %.lr.ph1033.split.us.i, !llvm.loop !83

.preheader1019.i:                                 ; preds = %._crit_edge.us.i, %.lr.ph1033.split.i.preheader, %bb.a
  %.0986.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph1033.split.i.preheader ], [ %i.mv, %._crit_edge.us.i ] ; 7 uses
  %i.mw = sdiv i32 %5, 4
  %i.mx = sext i32 %i.mw to i64                   ; 12 uses
  %i.my = icmp slt i64 %.0986.lcssa.i, %i.mx
  br i1 %i.my, label %.lr.ph.i, label %._crit_edge1053.i

.lr.ph.i:                                         ; preds = %.preheader1019.i
  %i.mz = sdiv i32 %i.m, 8
  %i.na = sext i32 %i.mz to i64                   ; 2 uses
  %i.nb = icmp sgt i32 %i.m, 7
  br i1 %i.nb, label %.lr.ph.split.us.i, label %._crit_edge1053.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.nc = icmp sgt i32 %0, 31
  br i1 %i.nc, label %.lr.ph1048.us.us.i, label %.lr.ph1048.us.i.preheader

.lr.ph1048.us.i.preheader:                        ; preds = %.lr.ph.split.us.i
  %i.nd = mul i64 %.0986.lcssa.i, %2
  %i.ne = shl i64 %i.nd, 4
  %i.nf = shl i64 %2, 4                           ; 5 uses
  %i.ng = shl nuw nsw i64 %i.na, 5
  %i.nh = add nsw i64 %i.ng, -32
  %i.ni = and i64 %i.nh, -64
  %i.nj = add nsw i64 %i.ni, 64                   ; 20 uses
  %i.nk = shl i64 %.0986.lcssa.i, 2               ; 3 uses
  %i.nl = or disjoint i64 %i.nk, 1
  %i.nm = mul i64 %2, %i.nl
  %i.nn = shl i64 %i.nm, 2
  %i.no = or disjoint i64 %i.nk, 2
  %i.np = mul i64 %2, %i.no
  %i.nq = shl i64 %i.np, 2
  %i.nr = or disjoint i64 %i.nk, 3
  %i.ns = mul i64 %2, %i.nr
  %i.nt = shl i64 %i.ns, 2
  %i.nu = getelementptr i8, ptr %1, i64 %i.nt     ; 5 uses
  %i.nv = getelementptr i8, ptr %1, i64 %i.nq     ; 5 uses
  %i.nw = getelementptr i8, ptr %1, i64 %i.nn     ; 5 uses
  %i.nx = getelementptr i8, ptr %1, i64 %i.ne     ; 5 uses
  %i.ny = sub i64 %i.mx, %.0986.lcssa.i           ; 2 uses
  %xtraiter = and i64 %i.ny, 3                    ; 3 uses
  %i.nz = sub i64 %.0986.lcssa.i, %i.mx
  %i.oa = icmp ugt i64 %i.nz, -4
  br i1 %i.oa, label %.lr.ph1048.us.i.epil.preheader, label %.lr.ph1048.us.i.preheader.new

.lr.ph1048.us.i.preheader.new:                    ; preds = %.lr.ph1048.us.i.preheader
  %unroll_iter = and i64 %i.ny, -4
  br label %.lr.ph1048.us.i

.lr.ph1048.us.us.i:                               ; preds = %.lr.ph.split.us.i, %._crit_edge.split.us.us.us.i
  %.11052.us.us.i = phi i64 [ %i.yd, %._crit_edge.split.us.us.us.i ], [ %.0986.lcssa.i, %.lr.ph.split.us.i ] ; 3 uses
  %i.ob = mul nsw i64 %.11052.us.us.i, %i.f
  %i.oc = getelementptr inbounds [136 x i8], ptr %4, i64 %i.ob
  %i.od = shl nuw nsw i64 %.11052.us.us.i, 2      ; 4 uses
  %i.oe = mul i64 %i.od, %2
  %i.of = or disjoint i64 %i.od, 1
  %i.og = mul i64 %i.of, %2
  %i.oh = or disjoint i64 %i.od, 2
  %i.oi = mul i64 %i.oh, %2
  %i.oj = or disjoint i64 %i.od, 3
  %i.ok = mul i64 %i.oj, %2
  br label %.preheader1018.us.us.us.i

.preheader1018.us.us.us.i:                        ; preds = %..preheader1017_crit_edge.us.us.us.i, %.lr.ph1048.us.us.i
  %.09941047.us.us.us.i = phi i64 [ 0, %.lr.ph1048.us.us.i ], [ %i.yb, %..preheader1017_crit_edge.us.us.us.i ] ; 4 uses
  %i.ol = mul nuw nsw i64 %.09941047.us.us.us.i, %i.f
  %i.om = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.ol
  %i.on = or disjoint i64 %.09941047.us.us.us.i, 1
  %i.oo = mul nuw nsw i64 %i.on, %i.f
  %i.op = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.oo
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader1018.us.us.us.i
  %i.oq = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.xz, %bb.d ]
  %i.or = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.xv, %bb.d ]
  %i.os = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.xr, %bb.d ]
  %.09961038.us.us.us.i = phi i64 [ 0, %.preheader1018.us.us.us.i ], [ %i.ya, %bb.d ] ; 4 uses
  %i.ot = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.xn, %bb.d ]
  %i.ou = getelementptr inbounds nuw [144 x i8], ptr %i.om, i64 %.09961038.us.us.us.i ; 5 uses
  %31 = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %32 = load <8 x i32>, ptr %31, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %34 = load <8 x i32>, ptr %33, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %35 = load <8 x i32>, ptr %i.ov, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 112
  %36 = load <8 x i32>, ptr %i.ow, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.ox = getelementptr inbounds nuw [144 x i8], ptr %i.op, i64 %.09961038.us.us.us.i ; 5 uses
  %37 = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %38 = load <8 x i32>, ptr %37, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %39 = getelementptr inbounds nuw i8, ptr %i.ox, i64 48
  %40 = load <8 x i32>, ptr %39, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 80
  %41 = load <8 x i32>, ptr %i.oy, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 112
  %42 = load <8 x i32>, ptr %i.oz, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %43 = shufflevector <8 x i32> %32, <8 x i32> %34, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = shufflevector <8 x i32> %38, <8 x i32> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %45 = shufflevector <16 x i32> %43, <16 x i32> %44, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %46 = shufflevector <8 x i32> %32, <8 x i32> %34, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %47 = shufflevector <8 x i32> %38, <8 x i32> %40, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %48 = shufflevector <16 x i32> %46, <16 x i32> %47, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %49 = shufflevector <8 x i32> %35, <8 x i32> %36, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %50 = shufflevector <8 x i32> %41, <8 x i32> %42, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %51 = shufflevector <16 x i32> %49, <16 x i32> %50, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %52 = shufflevector <8 x i32> %35, <8 x i32> %36, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %53 = shufflevector <8 x i32> %41, <8 x i32> %42, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %54 = shufflevector <16 x i32> %52, <16 x i32> %53, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.pa = bitcast <16 x i32> %45 to <64 x i8>
  %i.pb = and <64 x i8> %i.pa, splat (i8 15)
  %i.pc = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.pb) ; 2 uses
  %i.pd = bitcast <16 x i32> %48 to <64 x i8>
  %i.pe = and <64 x i8> %i.pd, splat (i8 15)
  %i.pf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.pe) ; 2 uses
  %i.pg = bitcast <16 x i32> %51 to <64 x i8>
  %i.ph = and <64 x i8> %i.pg, splat (i8 15)
  %i.pi = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.ph) ; 2 uses
  %i.pj = bitcast <16 x i32> %54 to <64 x i8>
  %i.pk = and <64 x i8> %i.pj, splat (i8 15)
  %i.pl = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.pk) ; 2 uses
  %i.pm = bitcast <16 x i32> %45 to <32 x i16>
  %i.pn = lshr <32 x i16> %i.pm, splat (i16 4)
  %i.po = bitcast <32 x i16> %i.pn to <64 x i8>
  %i.pp = and <64 x i8> %i.po, splat (i8 15)
  %i.pq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.pp) ; 2 uses
  %i.pr = bitcast <16 x i32> %48 to <32 x i16>
  %i.ps = lshr <32 x i16> %i.pr, splat (i16 4)
  %i.pt = bitcast <32 x i16> %i.ps to <64 x i8>
  %i.pu = and <64 x i8> %i.pt, splat (i8 15)
  %i.pv = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.pu) ; 2 uses
  %i.pw = bitcast <16 x i32> %51 to <32 x i16>
  %i.px = lshr <32 x i16> %i.pw, splat (i16 4)
  %i.py = bitcast <32 x i16> %i.px to <64 x i8>
  %i.pz = and <64 x i8> %i.py, splat (i8 15)
  %i.qa = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.pz) ; 2 uses
  %i.qb = bitcast <16 x i32> %54 to <32 x i16>
  %i.qc = lshr <32 x i16> %i.qb, splat (i16 4)
  %i.qd = bitcast <32 x i16> %i.qc to <64 x i8>
  %i.qe = and <64 x i8> %i.qd, splat (i8 15)
  %i.qf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.qe) ; 2 uses
  %i.qg = load <2 x i64>, ptr %i.ox, align 1, !tbaa !9, !alias.scope !97
  %i.qh = load <2 x i64>, ptr %i.ou, align 1, !tbaa !9, !alias.scope !97
  %i.qi = shufflevector <2 x i64> %i.qh, <2 x i64> %i.qg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qj = bitcast <4 x i64> %i.qi to <16 x half>
  %i.qk = fpext <16 x half> %i.qj to <16 x float> ; 4 uses
  %i.ql = getelementptr inbounds nuw [136 x i8], ptr %i.oc, i64 %.09961038.us.us.us.i ; 5 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load <8 x i32>, ptr %i.qm, align 1, !tbaa !9, !alias.scope !98 ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 40
  %i.qp = load <8 x i32>, ptr %i.qo, align 1, !tbaa !9, !alias.scope !98 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 72
  %i.qr = load <8 x i32>, ptr %i.qq, align 1, !tbaa !9, !alias.scope !98 ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ql, i64 104
  %i.qt = load <8 x i32>, ptr %i.qs, align 1, !tbaa !9, !alias.scope !98 ; 4 uses
  %i.qu = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.qv = shufflevector <32 x i8> %i.qu, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.qw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.qv, i1 false) ; 2 uses
  %i.qx = icmp slt <64 x i8> %i.qv, zeroinitializer ; 2 uses
  %i.qy = shufflevector <64 x i8> %i.qa, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.qz = sub <64 x i8> zeroinitializer, %i.qy    ; 2 uses
  %i.ra = select <64 x i1> %i.qx, <64 x i8> %i.qz, <64 x i8> %i.qy
  %i.rb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.qw, <64 x i8> %i.ra)
  %i.rc = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.rd = shufflevector <32 x i8> %i.rc, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.re = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.rd, i1 false) ; 2 uses
  %i.rf = icmp slt <64 x i8> %i.rd, zeroinitializer ; 2 uses
  %i.rg = shufflevector <64 x i8> %i.pq, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rh = sub <64 x i8> zeroinitializer, %i.rg    ; 2 uses
  %i.ri = select <64 x i1> %i.rf, <64 x i8> %i.rh, <64 x i8> %i.rg
  %i.rj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rb, <64 x i8> %i.re, <64 x i8> %i.ri)
  %i.rk = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.rl = shufflevector <32 x i8> %i.rk, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.rm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.rl, i1 false) ; 2 uses
  %i.rn = icmp slt <64 x i8> %i.rl, zeroinitializer ; 2 uses
  %i.ro = shufflevector <64 x i8> %i.pi, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rp = sub <64 x i8> zeroinitializer, %i.ro    ; 2 uses
  %i.rq = select <64 x i1> %i.rn, <64 x i8> %i.rp, <64 x i8> %i.ro
  %i.rr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rj, <64 x i8> %i.rm, <64 x i8> %i.rq)
  %i.rs = bitcast <8 x i32> %i.qn to <32 x i8>
  %i.rt = shufflevector <32 x i8> %i.rs, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ru = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.rt, i1 false) ; 2 uses
  %i.rv = icmp slt <64 x i8> %i.rt, zeroinitializer ; 2 uses
  %i.rw = shufflevector <64 x i8> %i.pc, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rx = sub <64 x i8> zeroinitializer, %i.rw    ; 2 uses
  %i.ry = select <64 x i1> %i.rv, <64 x i8> %i.rx, <64 x i8> %i.rw
  %i.rz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rr, <64 x i8> %i.ru, <64 x i8> %i.ry)
  %i.sa = shufflevector <64 x i8> %i.qf, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sb = sub <64 x i8> zeroinitializer, %i.sa    ; 2 uses
  %i.sc = select <64 x i1> %i.qx, <64 x i8> %i.sb, <64 x i8> %i.sa
  %i.sd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.qw, <64 x i8> %i.sc)
  %i.se = shufflevector <64 x i8> %i.pv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sf = sub <64 x i8> zeroinitializer, %i.se    ; 2 uses
  %i.sg = select <64 x i1> %i.rf, <64 x i8> %i.sf, <64 x i8> %i.se
  %i.sh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sd, <64 x i8> %i.re, <64 x i8> %i.sg)
  %i.si = shufflevector <64 x i8> %i.pl, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sj = sub <64 x i8> zeroinitializer, %i.si    ; 2 uses
  %i.sk = select <64 x i1> %i.rn, <64 x i8> %i.sj, <64 x i8> %i.si
  %i.sl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sh, <64 x i8> %i.rm, <64 x i8> %i.sk)
  %i.sm = shufflevector <64 x i8> %i.pf, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sn = sub <64 x i8> zeroinitializer, %i.sm    ; 2 uses
  %i.so = select <64 x i1> %i.rv, <64 x i8> %i.sn, <64 x i8> %i.sm
  %i.sp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sl, <64 x i8> %i.ru, <64 x i8> %i.so)
  %i.sq = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.sr = shufflevector <32 x i8> %i.sq, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ss = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sr, i1 false) ; 2 uses
  %i.st = icmp slt <64 x i8> %i.sr, zeroinitializer ; 2 uses
  %i.su = select <64 x i1> %i.st, <64 x i8> %i.qz, <64 x i8> %i.qy
  %i.sv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ss, <64 x i8> %i.su)
  %i.sw = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.sx = shufflevector <32 x i8> %i.sw, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.sy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sx, i1 false) ; 2 uses
  %i.sz = icmp slt <64 x i8> %i.sx, zeroinitializer ; 2 uses
  %i.ta = select <64 x i1> %i.sz, <64 x i8> %i.rh, <64 x i8> %i.rg
  %i.tb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sv, <64 x i8> %i.sy, <64 x i8> %i.ta)
  %i.tc = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.td = shufflevector <32 x i8> %i.tc, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.te = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.td, i1 false) ; 2 uses
  %i.tf = icmp slt <64 x i8> %i.td, zeroinitializer ; 2 uses
  %i.tg = select <64 x i1> %i.tf, <64 x i8> %i.rp, <64 x i8> %i.ro
  %i.th = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tb, <64 x i8> %i.te, <64 x i8> %i.tg)
  %i.ti = bitcast <8 x i32> %i.qn to <32 x i8>
  %i.tj = shufflevector <32 x i8> %i.ti, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.tk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tj, i1 false) ; 2 uses
  %i.tl = icmp slt <64 x i8> %i.tj, zeroinitializer ; 2 uses
  %i.tm = select <64 x i1> %i.tl, <64 x i8> %i.rx, <64 x i8> %i.rw
  %i.tn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.th, <64 x i8> %i.tk, <64 x i8> %i.tm)
  %i.to = select <64 x i1> %i.st, <64 x i8> %i.sb, <64 x i8> %i.sa
  %i.tp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ss, <64 x i8> %i.to)
  %i.tq = select <64 x i1> %i.sz, <64 x i8> %i.sf, <64 x i8> %i.se
  %i.tr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tp, <64 x i8> %i.sy, <64 x i8> %i.tq)
  %i.ts = select <64 x i1> %i.tf, <64 x i8> %i.sj, <64 x i8> %i.si
  %i.tt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tr, <64 x i8> %i.te, <64 x i8> %i.ts)
  %i.tu = select <64 x i1> %i.tl, <64 x i8> %i.sn, <64 x i8> %i.sm
  %i.tv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tt, <64 x i8> %i.tk, <64 x i8> %i.tu)
  %i.tw = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.tx = shufflevector <32 x i8> %i.tw, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ty = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tx, i1 false) ; 2 uses
  %i.tz = icmp slt <64 x i8> %i.tx, zeroinitializer ; 2 uses
  %i.ua = shufflevector <64 x i8> %i.qa, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ub = sub <64 x i8> zeroinitializer, %i.ua    ; 2 uses
  %i.uc = select <64 x i1> %i.tz, <64 x i8> %i.ub, <64 x i8> %i.ua
  %i.ud = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ty, <64 x i8> %i.uc)
  %i.ue = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.uf = shufflevector <32 x i8> %i.ue, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ug = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uf, i1 false) ; 2 uses
  %i.uh = icmp slt <64 x i8> %i.uf, zeroinitializer ; 2 uses
  %i.ui = shufflevector <64 x i8> %i.pq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.uj = sub <64 x i8> zeroinitializer, %i.ui    ; 2 uses
  %i.uk = select <64 x i1> %i.uh, <64 x i8> %i.uj, <64 x i8> %i.ui
  %i.ul = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ud, <64 x i8> %i.ug, <64 x i8> %i.uk)
  %i.um = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.un = shufflevector <32 x i8> %i.um, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.un, i1 false) ; 2 uses
  %i.up = icmp slt <64 x i8> %i.un, zeroinitializer ; 2 uses
  %i.uq = shufflevector <64 x i8> %i.pi, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ur = sub <64 x i8> zeroinitializer, %i.uq    ; 2 uses
  %i.us = select <64 x i1> %i.up, <64 x i8> %i.ur, <64 x i8> %i.uq
  %i.ut = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ul, <64 x i8> %i.uo, <64 x i8> %i.us)
  %i.uu = bitcast <8 x i32> %i.qn to <32 x i8>
  %i.uv = shufflevector <32 x i8> %i.uu, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uv, i1 false) ; 2 uses
  %i.ux = icmp slt <64 x i8> %i.uv, zeroinitializer ; 2 uses
  %i.uy = shufflevector <64 x i8> %i.pc, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.uz = sub <64 x i8> zeroinitializer, %i.uy    ; 2 uses
  %i.va = select <64 x i1> %i.ux, <64 x i8> %i.uz, <64 x i8> %i.uy
  %i.vb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ut, <64 x i8> %i.uw, <64 x i8> %i.va)
  %i.vc = shufflevector <64 x i8> %i.qf, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vd = sub <64 x i8> zeroinitializer, %i.vc    ; 2 uses
  %i.ve = select <64 x i1> %i.tz, <64 x i8> %i.vd, <64 x i8> %i.vc
  %i.vf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ty, <64 x i8> %i.ve)
  %i.vg = shufflevector <64 x i8> %i.pv, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vh = sub <64 x i8> zeroinitializer, %i.vg    ; 2 uses
  %i.vi = select <64 x i1> %i.uh, <64 x i8> %i.vh, <64 x i8> %i.vg
  %i.vj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vf, <64 x i8> %i.ug, <64 x i8> %i.vi)
  %i.vk = shufflevector <64 x i8> %i.pl, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vl = sub <64 x i8> zeroinitializer, %i.vk    ; 2 uses
  %i.vm = select <64 x i1> %i.up, <64 x i8> %i.vl, <64 x i8> %i.vk
  %i.vn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vj, <64 x i8> %i.uo, <64 x i8> %i.vm)
  %i.vo = shufflevector <64 x i8> %i.pf, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vp = sub <64 x i8> zeroinitializer, %i.vo    ; 2 uses
  %i.vq = select <64 x i1> %i.ux, <64 x i8> %i.vp, <64 x i8> %i.vo
  %i.vr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vn, <64 x i8> %i.uw, <64 x i8> %i.vq)
  %i.vs = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.vt = shufflevector <32 x i8> %i.vs, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.vu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vt, i1 false) ; 2 uses
  %i.vv = icmp slt <64 x i8> %i.vt, zeroinitializer ; 2 uses
  %i.vw = select <64 x i1> %i.vv, <64 x i8> %i.ub, <64 x i8> %i.ua
  %i.vx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.vu, <64 x i8> %i.vw)
  %i.vy = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.vz = shufflevector <32 x i8> %i.vy, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wa = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vz, i1 false) ; 2 uses
  %i.wb = icmp slt <64 x i8> %i.vz, zeroinitializer ; 2 uses
  %i.wc = select <64 x i1> %i.wb, <64 x i8> %i.uj, <64 x i8> %i.ui
  %i.wd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vx, <64 x i8> %i.wa, <64 x i8> %i.wc)
  %i.we = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.wf = shufflevector <32 x i8> %i.we, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wf, i1 false) ; 2 uses
  %i.wh = icmp slt <64 x i8> %i.wf, zeroinitializer ; 2 uses
  %i.wi = select <64 x i1> %i.wh, <64 x i8> %i.ur, <64 x i8> %i.uq
  %i.wj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wd, <64 x i8> %i.wg, <64 x i8> %i.wi)
  %i.wk = bitcast <8 x i32> %i.qn to <32 x i8>
  %i.wl = shufflevector <32 x i8> %i.wk, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wl, i1 false) ; 2 uses
  %i.wn = icmp slt <64 x i8> %i.wl, zeroinitializer ; 2 uses
  %i.wo = select <64 x i1> %i.wn, <64 x i8> %i.uz, <64 x i8> %i.uy
  %i.wp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wj, <64 x i8> %i.wm, <64 x i8> %i.wo)
  %i.wq = select <64 x i1> %i.vv, <64 x i8> %i.vd, <64 x i8> %i.vc
  %i.wr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.vu, <64 x i8> %i.wq)
  %i.ws = select <64 x i1> %i.wb, <64 x i8> %i.vh, <64 x i8> %i.vg
  %i.wt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wr, <64 x i8> %i.wa, <64 x i8> %i.ws)
  %i.wu = select <64 x i1> %i.wh, <64 x i8> %i.vl, <64 x i8> %i.vk
  %i.wv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wt, <64 x i8> %i.wg, <64 x i8> %i.wu)
  %i.ww = select <64 x i1> %i.wn, <64 x i8> %i.vp, <64 x i8> %i.vo
  %i.wx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wv, <64 x i8> %i.wm, <64 x i8> %i.ww)
  %i.wy = add <16 x i32> %i.vb, %i.rz             ; 2 uses
  %i.wz = add <16 x i32> %i.vr, %i.sp             ; 2 uses
  %i.xa = add <16 x i32> %i.wp, %i.tn             ; 2 uses
  %i.xb = add <16 x i32> %i.wx, %i.tv             ; 2 uses
  %i.xc = shufflevector <16 x i32> %i.wy, <16 x i32> %i.wz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xd = shufflevector <16 x i32> %i.wy, <16 x i32> %i.wz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xe = shufflevector <16 x i32> %i.xa, <16 x i32> %i.xb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xf = shufflevector <16 x i32> %i.xa, <16 x i32> %i.xb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xg = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.ql, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !98
  %i.xh = bitcast <4 x i32> %i.xg to <8 x half>
  %i.xi = shufflevector <8 x half> %i.xh, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xj = fpext <16 x half> %i.xi to <16 x float> ; 4 uses
  %i.xk = sitofp <16 x i32> %i.xc to <16 x float>
  %i.xl = shufflevector <16 x float> %i.xj, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.xm = fmul <16 x float> %i.xl, %i.qk
  %i.xn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xk, <16 x float> %i.xm, <16 x float> %i.ot) ; 2 uses
  %i.xo = sitofp <16 x i32> %i.xd to <16 x float>
  %i.xp = shufflevector <16 x float> %i.xj, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.xq = fmul <16 x float> %i.xp, %i.qk
  %i.xr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xo, <16 x float> %i.xq, <16 x float> %i.os) ; 2 uses
  %i.xs = sitofp <16 x i32> %i.xe to <16 x float>
  %i.xt = shufflevector <16 x float> %i.xj, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
end_hunk_0
begin_hunk_1_@ggml_gemm_q4_0_8x8_q8_0:bb.a
  %i.yv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.yx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1252.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1254.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1256.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1258.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1260.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1262.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1264.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1266.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1268.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1270.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1272.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1274.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1276.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1278.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1280.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.yy = mul i64 %.2.i, %2
  %i.yz = shl i64 %i.yy, 4
  %i.za = shl nsw i64 %.0987.i, 5                 ; 16 uses
  %i.zb = shl i64 %2, 6
  %i.zc = sub nsw i64 %i.yn, %.0987.i
  %i.zd = shl nsw i64 %i.zc, 5                    ; 16 uses
  %i.ze = shl nsw i64 %.2.i, 2                    ; 15 uses
  %i.zf = or disjoint i64 %i.ze, 1
  %i.zg = mul i64 %2, %i.zf
  %i.zh = shl i64 %i.zg, 2
  %i.zi = or disjoint i64 %i.ze, 2
  %i.zj = mul i64 %2, %i.zi
  %i.zk = shl i64 %i.zj, 2
  %i.zl = or disjoint i64 %i.ze, 3
  %i.zm = mul i64 %2, %i.zl
  %i.zn = shl i64 %i.zm, 2
  %i.zo = add i64 %i.ze, 4
  %i.zp = mul i64 %2, %i.zo
  %i.zq = shl i64 %i.zp, 2
  %i.zr = add i64 %i.ze, 5
  %i.zs = mul i64 %2, %i.zr
  %i.zt = shl i64 %i.zs, 2
  %i.zu = add i64 %i.ze, 6
  %i.zv = mul i64 %2, %i.zu
  %i.zw = shl i64 %i.zv, 2
  %i.zx = add i64 %i.ze, 7
  %i.zy = mul i64 %2, %i.zx
  %i.zz = shl i64 %i.zy, 2
  %i.aaa = add i64 %i.ze, 8
  %i.aab = mul i64 %2, %i.aaa
  %i.aac = shl i64 %i.aab, 2
  %i.aad = add i64 %i.ze, 9
  %i.aae = mul i64 %2, %i.aad
  %i.aaf = shl i64 %i.aae, 2
  %i.aag = add i64 %i.ze, 10
  %i.aah = mul i64 %2, %i.aag
  %i.aai = shl i64 %i.aah, 2
  %i.aaj = add i64 %i.ze, 11
  %i.aak = mul i64 %2, %i.aaj
  %i.aal = shl i64 %i.aak, 2
  %i.aam = add i64 %i.ze, 12
  %i.aan = mul i64 %2, %i.aam
  %i.aao = shl i64 %i.aan, 2
  %i.aap = add i64 %i.ze, 13
  %i.aaq = mul i64 %2, %i.aap
  %i.aar = shl i64 %i.aaq, 2
  %i.aas = add i64 %i.ze, 14
  %i.aat = mul i64 %2, %i.aas
  %i.aau = shl i64 %i.aat, 2
  %i.aav = add i64 %i.ze, 15
  %i.aaw = mul i64 %2, %i.aav
  %i.aax = shl i64 %i.aaw, 2
  %i.aay = xor i64 %.2.i, -1
  %i.aaz = add i64 %i.aay, %i.o
  %i.aba = lshr i64 %i.aaz, 2
  %i.abb = getelementptr i8, ptr %1, i64 %i.yz
  %i.abc = getelementptr i8, ptr %i.abb, i64 %i.za
  %i.abd = getelementptr i8, ptr %1, i64 %i.zh
  %i.abe = getelementptr i8, ptr %i.abd, i64 %i.za
  %i.abf = getelementptr i8, ptr %1, i64 %i.zk
  %i.abg = getelementptr i8, ptr %i.abf, i64 %i.za
  %i.abh = getelementptr i8, ptr %1, i64 %i.zn
  %i.abi = getelementptr i8, ptr %i.abh, i64 %i.za
  %i.abj = getelementptr i8, ptr %1, i64 %i.zq
  %i.abk = getelementptr i8, ptr %i.abj, i64 %i.za
  %i.abl = getelementptr i8, ptr %1, i64 %i.zt
  %i.abm = getelementptr i8, ptr %i.abl, i64 %i.za
  %i.abn = getelementptr i8, ptr %1, i64 %i.zw
  %i.abo = getelementptr i8, ptr %i.abn, i64 %i.za
  %i.abp = getelementptr i8, ptr %1, i64 %i.zz
  %i.abq = getelementptr i8, ptr %i.abp, i64 %i.za
  %i.abr = getelementptr i8, ptr %1, i64 %i.aac
  %i.abs = getelementptr i8, ptr %i.abr, i64 %i.za
  %i.abt = getelementptr i8, ptr %1, i64 %i.aaf
  %i.abu = getelementptr i8, ptr %i.abt, i64 %i.za
  %i.abv = getelementptr i8, ptr %1, i64 %i.aai
  %i.abw = getelementptr i8, ptr %i.abv, i64 %i.za
  %i.abx = getelementptr i8, ptr %1, i64 %i.aal
  %i.aby = getelementptr i8, ptr %i.abx, i64 %i.za
  %i.abz = getelementptr i8, ptr %1, i64 %i.aao
  %i.aca = getelementptr i8, ptr %i.abz, i64 %i.za
  %i.acb = getelementptr i8, ptr %1, i64 %i.aar
  %i.acc = getelementptr i8, ptr %i.acb, i64 %i.za
  %i.acd = getelementptr i8, ptr %1, i64 %i.aau
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.za
  %i.acf = getelementptr i8, ptr %1, i64 %i.aax
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.za
  br label %.lr.ph1081.split.us.i

.lr.ph1081.split.us.i:                            ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1085.i ], [ 0, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  %.31079.us.i = phi i64 [ %i.amf, %._crit_edge.us1085.i ], [ %.2.i, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !99
  %i.ach = mul nsw i64 %.31079.us.i, %i.f
  %i.aci = getelementptr inbounds [136 x i8], ptr %4, i64 %i.ach ; 2 uses
  store ptr %i.aci, ptr %i.c, align 16, !tbaa !21, !noalias !99
  %i.acj = getelementptr inbounds [136 x i8], ptr %i.aci, i64 %i.f ; 2 uses
  store ptr %i.acj, ptr %i.yv, align 8, !tbaa !21, !noalias !99
  %i.ack = getelementptr inbounds [136 x i8], ptr %i.acj, i64 %i.f ; 2 uses
  store ptr %i.ack, ptr %i.yw, align 16, !tbaa !21, !noalias !99
  %i.acl = getelementptr inbounds [136 x i8], ptr %i.ack, i64 %i.f
  store ptr %i.acl, ptr %i.yx, align 8, !tbaa !21, !noalias !99
  %i.acm = shl nsw i64 %.31079.us.i, 2            ; 16 uses
  %i.acn = mul i64 %i.acm, %2
  %i.aco = or disjoint i64 %i.acm, 1
  %i.acp = mul i64 %i.aco, %2
  %i.acq = or disjoint i64 %i.acm, 2
  %i.acr = mul i64 %i.acq, %2
  %i.acs = or disjoint i64 %i.acm, 3
  %i.act = mul i64 %i.acs, %2
  %i.acu = add nsw i64 %i.acm, 4
  %i.acv = mul i64 %i.acu, %2
  %i.acw = add nsw i64 %i.acm, 5
  %i.acx = mul i64 %i.acw, %2
  %i.acy = add nsw i64 %i.acm, 6
  %i.acz = mul i64 %i.acy, %2
  %i.ada = add nsw i64 %i.acm, 7
  %i.adb = mul i64 %i.ada, %2
  %i.adc = add nsw i64 %i.acm, 8
  %i.add = mul i64 %i.adc, %2
  %i.ade = add nsw i64 %i.acm, 9
  %i.adf = mul i64 %i.ade, %2
  %i.adg = add nsw i64 %i.acm, 10
  %i.adh = mul i64 %i.adg, %2
  %i.adi = add nsw i64 %i.acm, 11
  %i.adj = mul i64 %i.adi, %2
  %i.adk = add nsw i64 %i.acm, 12
  %i.adl = mul i64 %i.adk, %2
  %i.adm = add nsw i64 %i.acm, 13
  %i.adn = mul i64 %i.adm, %2
  %i.ado = add nsw i64 %i.acm, 14
  %i.adp = mul i64 %i.ado, %2
  %i.adq = add nsw i64 %i.acm, 15
  %i.adr = mul i64 %i.adq, %2
  br i1 %i.yp, label %.preheader1015.us.i.us, label %.preheader1015.us.i.preheader

.preheader1015.us.i.preheader:                    ; preds = %.lr.ph1081.split.us.i
  %i.ads = mul i64 %i.zb, %indvar62               ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.abc, i64 %i.ads
  %scevgep65 = getelementptr i8, ptr %i.abe, i64 %i.ads
  %scevgep66 = getelementptr i8, ptr %i.abg, i64 %i.ads
  %scevgep67 = getelementptr i8, ptr %i.abi, i64 %i.ads
  %scevgep68 = getelementptr i8, ptr %i.abk, i64 %i.ads
  %scevgep69 = getelementptr i8, ptr %i.abm, i64 %i.ads
  %scevgep70 = getelementptr i8, ptr %i.abo, i64 %i.ads
  %scevgep71 = getelementptr i8, ptr %i.abq, i64 %i.ads
  %scevgep72 = getelementptr i8, ptr %i.abs, i64 %i.ads
  %scevgep73 = getelementptr i8, ptr %i.abu, i64 %i.ads
  %scevgep74 = getelementptr i8, ptr %i.abw, i64 %i.ads
  %scevgep75 = getelementptr i8, ptr %i.aby, i64 %i.ads
  %scevgep76 = getelementptr i8, ptr %i.aca, i64 %i.ads
  %scevgep77 = getelementptr i8, ptr %i.acc, i64 %i.ads
  %scevgep78 = getelementptr i8, ptr %i.ace, i64 %i.ads
  %scevgep79 = getelementptr i8, ptr %i.acg, i64 %i.ads
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep64, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep65, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep66, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep67, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep68, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep69, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep70, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep71, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep72, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep73, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep74, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep75, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep76, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep77, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep78, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep79, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !96
  br label %._crit_edge.us1085.i

.preheader1015.us.i.us:                           ; preds = %.lr.ph1081.split.us.i, %.preheader1014.us.loopexit.i.us
  %.09991077.us.i.us = phi i64 [ %i.ame, %.preheader1014.us.loopexit.i.us ], [ %.0987.i, %.lr.ph1081.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.d, i8 0, i64 512, i1 false), !tbaa !9, !noalias !99
  %i.adt = mul nsw i64 %.09991077.us.i.us, %i.f
  %i.adu = getelementptr inbounds [144 x i8], ptr %3, i64 %i.adt
  br label %.lr.ph1075.us.i.us

.lr.ph1075.us.i.us:                               ; preds = %bb.h, %.preheader1015.us.i.us
  %.010051074.us.i.us = phi i64 [ %i.amd, %bb.h ], [ 0, %.preheader1015.us.i.us ] ; 3 uses
  %i.adv = getelementptr inbounds nuw [144 x i8], ptr %i.adu, i64 %.010051074.us.i.us ; 5 uses
  %55 = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %56 = load <8 x i32>, ptr %55, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %57 = getelementptr inbounds nuw i8, ptr %i.adv, i64 48
  %58 = load <8 x i32>, ptr %57, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 80
  %59 = load <8 x i32>, ptr %i.adw, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 112
  %60 = load <8 x i32>, ptr %i.adx, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.ady = shufflevector <8 x i32> %56, <8 x i32> %58, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.adz = shufflevector <8 x i32> %56, <8 x i32> %58, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aea = shufflevector <8 x i32> %59, <8 x i32> %60, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aeb = shufflevector <8 x i32> %59, <8 x i32> %60, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aec = bitcast <8 x i32> %i.ady to <32 x i8>
  %i.aed = and <32 x i8> %i.aec, splat (i8 15)
  %i.aee = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aed) ; 2 uses
  %i.aef = bitcast <8 x i32> %i.adz to <32 x i8>
  %i.aeg = and <32 x i8> %i.aef, splat (i8 15)
  %i.aeh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aeg) ; 2 uses
  %i.aei = bitcast <8 x i32> %i.aea to <32 x i8>
  %i.aej = and <32 x i8> %i.aei, splat (i8 15)
  %i.aek = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aej) ; 2 uses
  %i.ael = bitcast <8 x i32> %i.aeb to <32 x i8>
  %i.aem = and <32 x i8> %i.ael, splat (i8 15)
  %i.aen = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aem) ; 2 uses
  %i.aeo = bitcast <8 x i32> %i.ady to <16 x i16>
  %i.aep = lshr <16 x i16> %i.aeo, splat (i16 4)
  %i.aeq = bitcast <16 x i16> %i.aep to <32 x i8>
  %i.aer = and <32 x i8> %i.aeq, splat (i8 15)
  %i.aes = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aer) ; 2 uses
  %i.aet = bitcast <8 x i32> %i.adz to <16 x i16>
  %i.aeu = lshr <16 x i16> %i.aet, splat (i16 4)
  %i.aev = bitcast <16 x i16> %i.aeu to <32 x i8>
  %i.aew = and <32 x i8> %i.aev, splat (i8 15)
  %i.aex = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aew) ; 2 uses
  %i.aey = bitcast <8 x i32> %i.aea to <16 x i16>
  %i.aez = lshr <16 x i16> %i.aey, splat (i16 4)
  %i.afa = bitcast <16 x i16> %i.aez to <32 x i8>
  %i.afb = and <32 x i8> %i.afa, splat (i8 15)
  %i.afc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.afb) ; 2 uses
  %i.afd = bitcast <8 x i32> %i.aeb to <16 x i16>
  %i.afe = lshr <16 x i16> %i.afd, splat (i16 4)
  %i.aff = bitcast <16 x i16> %i.afe to <32 x i8>
  %i.afg = and <32 x i8> %i.aff, splat (i8 15)
  %i.afh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.afg) ; 2 uses
  %i.afi = load <8 x half>, ptr %i.adv, align 1, !tbaa !9, !alias.scope !97
  %i.afj = fpext <8 x half> %i.afi to <8 x float> ; 4 uses
  %i.afk = shufflevector <32 x i8> %i.afc, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afl = shufflevector <32 x i8> %i.aes, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afm = shufflevector <32 x i8> %i.aek, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afn = shufflevector <32 x i8> %i.aee, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afo = shufflevector <32 x i8> %i.afh, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afp = shufflevector <32 x i8> %i.aex, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afq = shufflevector <32 x i8> %i.aen, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afr = shufflevector <32 x i8> %i.aeh, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afs = shufflevector <32 x i8> %i.afc, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aft = shufflevector <32 x i8> %i.aes, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afu = shufflevector <32 x i8> %i.aek, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afv = shufflevector <32 x i8> %i.aee, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afw = shufflevector <32 x i8> %i.afh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afx = shufflevector <32 x i8> %i.aex, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afy = shufflevector <32 x i8> %i.aen, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afz = shufflevector <32 x i8> %i.aeh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph1075.us.i.us
  %indvars.iv1165.i.us = phi i64 [ %indvars.iv.next1166.i.us, %bb.g ], [ 0, %.lr.ph1075.us.i.us ] ; 3 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1165.i.us
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !21, !noalias !99
  %i.agc = getelementptr inbounds nuw [136 x i8], ptr %i.agb, i64 %.010051074.us.i.us ; 5 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %i.age = load <8 x i32>, ptr %i.agd, align 1, !tbaa !9, !noalias !100 ; 4 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 40
  %i.agg = load <8 x i32>, ptr %i.agf, align 1, !tbaa !9, !noalias !100 ; 4 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agc, i64 72
  %i.agi = load <8 x i32>, ptr %i.agh, align 1, !tbaa !9, !noalias !100 ; 4 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agc, i64 104
  %i.agk = load <8 x i32>, ptr %i.agj, align 1, !tbaa !9, !noalias !100 ; 4 uses
  %i.agl = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.agm = shufflevector <32 x i8> %i.agl, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.agn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agm, <32 x i8> %i.agm) ; 2 uses
  %i.ago = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afk, <32 x i8> %i.agm)
  %i.agp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.agn, <32 x i8> %i.ago)
  %i.agq = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.agr = shufflevector <32 x i8> %i.agq, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ags = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agr, <32 x i8> %i.agr) ; 2 uses
  %i.agt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afl, <32 x i8> %i.agr)
  %i.agu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.agp, <32 x i8> %i.ags, <32 x i8> %i.agt)
  %i.agv = bitcast <8 x i32> %i.agg to <32 x i8>
  %i.agw = shufflevector <32 x i8> %i.agv, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.agx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agw, <32 x i8> %i.agw) ; 2 uses
  %i.agy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afm, <32 x i8> %i.agw)
  %i.agz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.agu, <32 x i8> %i.agx, <32 x i8> %i.agy)
  %i.aha = bitcast <8 x i32> %i.age to <32 x i8>
  %i.ahb = shufflevector <32 x i8> %i.aha, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ahc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahb, <32 x i8> %i.ahb) ; 2 uses
  %i.ahd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afn, <32 x i8> %i.ahb)
  %i.ahe = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.agz, <32 x i8> %i.ahc, <32 x i8> %i.ahd)
  %i.ahf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afo, <32 x i8> %i.agm)
  %i.ahg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.agn, <32 x i8> %i.ahf)
  %i.ahh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afp, <32 x i8> %i.agr)
  %i.ahi = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahg, <32 x i8> %i.ags, <32 x i8> %i.ahh)
  %i.ahj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afq, <32 x i8> %i.agw)
  %i.ahk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahi, <32 x i8> %i.agx, <32 x i8> %i.ahj)
  %i.ahl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afr, <32 x i8> %i.ahb)
  %i.ahm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahk, <32 x i8> %i.ahc, <32 x i8> %i.ahl)
  %i.ahn = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.aho = shufflevector <32 x i8> %i.ahn, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ahp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aho, <32 x i8> %i.aho) ; 2 uses
  %i.ahq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afk, <32 x i8> %i.aho)
  %i.ahr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ahp, <32 x i8> %i.ahq)
  %i.ahs = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.aht = shufflevector <32 x i8> %i.ahs, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ahu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aht, <32 x i8> %i.aht) ; 2 uses
  %i.ahv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afl, <32 x i8> %i.aht)
  %i.ahw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahr, <32 x i8> %i.ahu, <32 x i8> %i.ahv)
  %i.ahx = bitcast <8 x i32> %i.agg to <32 x i8>
  %i.ahy = shufflevector <32 x i8> %i.ahx, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ahz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahy, <32 x i8> %i.ahy) ; 2 uses
  %i.aia = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afm, <32 x i8> %i.ahy)
  %i.aib = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahw, <32 x i8> %i.ahz, <32 x i8> %i.aia)
  %i.aic = bitcast <8 x i32> %i.age to <32 x i8>
  %i.aid = shufflevector <32 x i8> %i.aic, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.aie = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aid, <32 x i8> %i.aid) ; 2 uses
  %i.aif = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afn, <32 x i8> %i.aid)
  %i.aig = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aib, <32 x i8> %i.aie, <32 x i8> %i.aif)
  %i.aih = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afo, <32 x i8> %i.aho)
  %i.aii = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ahp, <32 x i8> %i.aih)
  %i.aij = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afp, <32 x i8> %i.aht)
  %i.aik = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aii, <32 x i8> %i.ahu, <32 x i8> %i.aij)
  %i.ail = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afq, <32 x i8> %i.ahy)
  %i.aim = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aik, <32 x i8> %i.ahz, <32 x i8> %i.ail)
  %i.ain = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afr, <32 x i8> %i.aid)
  %i.aio = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aim, <32 x i8> %i.aie, <32 x i8> %i.ain)
  %i.aip = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.aiq = shufflevector <32 x i8> %i.aip, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.air = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiq, <32 x i8> %i.aiq) ; 2 uses
  %i.ais = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afs, <32 x i8> %i.aiq)
  %i.ait = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.air, <32 x i8> %i.ais)
  %i.aiu = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.aiv = shufflevector <32 x i8> %i.aiu, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aiw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiv, <32 x i8> %i.aiv) ; 2 uses
  %i.aix = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aft, <32 x i8> %i.aiv)
  %i.aiy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ait, <32 x i8> %i.aiw, <32 x i8> %i.aix)
  %i.aiz = bitcast <8 x i32> %i.agg to <32 x i8>
  %i.aja = shufflevector <32 x i8> %i.aiz, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ajb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aja, <32 x i8> %i.aja) ; 2 uses
  %i.ajc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afu, <32 x i8> %i.aja)
  %i.ajd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aiy, <32 x i8> %i.ajb, <32 x i8> %i.ajc)
  %i.aje = bitcast <8 x i32> %i.age to <32 x i8>
  %i.ajf = shufflevector <32 x i8> %i.aje, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ajg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajf, <32 x i8> %i.ajf) ; 2 uses
  %i.ajh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afv, <32 x i8> %i.ajf)
  %i.aji = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajd, <32 x i8> %i.ajg, <32 x i8> %i.ajh)
  %i.ajj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afw, <32 x i8> %i.aiq)
  %i.ajk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.air, <32 x i8> %i.ajj)
  %i.ajl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afx, <32 x i8> %i.aiv)
  %i.ajm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajk, <32 x i8> %i.aiw, <32 x i8> %i.ajl)
  %i.ajn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afy, <32 x i8> %i.aja)
  %i.ajo = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajm, <32 x i8> %i.ajb, <32 x i8> %i.ajn)
  %i.ajp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afz, <32 x i8> %i.ajf)
  %i.ajq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajo, <32 x i8> %i.ajg, <32 x i8> %i.ajp)
  %i.ajr = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.ajs = shufflevector <32 x i8> %i.ajr, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.ajt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajs, <32 x i8> %i.ajs) ; 2 uses
  %i.aju = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afs, <32 x i8> %i.ajs)
  %i.ajv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajt, <32 x i8> %i.aju)
  %i.ajw = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.ajx = shufflevector <32 x i8> %i.ajw, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.ajy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajx, <32 x i8> %i.ajx) ; 2 uses
  %i.ajz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aft, <32 x i8> %i.ajx)
  %i.aka = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajv, <32 x i8> %i.ajy, <32 x i8> %i.ajz)
  %i.akb = bitcast <8 x i32> %i.agg to <32 x i8>
  %i.akc = shufflevector <32 x i8> %i.akb, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.akd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akc, <32 x i8> %i.akc) ; 2 uses
  %i.ake = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afu, <32 x i8> %i.akc)
  %i.akf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aka, <32 x i8> %i.akd, <32 x i8> %i.ake)
  %i.akg = bitcast <8 x i32> %i.age to <32 x i8>
  %i.akh = shufflevector <32 x i8> %i.akg, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aki = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akh, <32 x i8> %i.akh) ; 2 uses
  %i.akj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afv, <32 x i8> %i.akh)
  %i.akk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akf, <32 x i8> %i.aki, <32 x i8> %i.akj)
  %i.akl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afw, <32 x i8> %i.ajs)
  %i.akm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajt, <32 x i8> %i.akl)
  %i.akn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afx, <32 x i8> %i.ajx)
  %i.ako = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akm, <32 x i8> %i.ajy, <32 x i8> %i.akn)
  %i.akp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afy, <32 x i8> %i.akc)
  %i.akq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ako, <32 x i8> %i.akd, <32 x i8> %i.akp)
  %i.akr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afz, <32 x i8> %i.akh)
  %i.aks = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akq, <32 x i8> %i.aki, <32 x i8> %i.akr)
  %i.akt = add <8 x i32> %i.aji, %i.ahe           ; 2 uses
  %i.aku = add <8 x i32> %i.ajq, %i.ahm           ; 2 uses
  %i.akv = add <8 x i32> %i.akk, %i.aig           ; 2 uses
  %i.akw = add <8 x i32> %i.aks, %i.aio           ; 2 uses
  %i.akx = shufflevector <8 x i32> %i.akt, <8 x i32> %i.aku, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.aky = shufflevector <8 x i32> %i.akt, <8 x i32> %i.aku, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.akz = shufflevector <8 x i32> %i.akv, <8 x i32> %i.akw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ala = shufflevector <8 x i32> %i.akv, <8 x i32> %i.akw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.alb = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.agc, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !100
  %i.alc = bitcast <4 x i32> %i.alb to <8 x half>
  %i.ald = shufflevector <8 x half> %i.alc, <8 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ale = fpext <8 x half> %i.ald to <8 x float> ; 4 uses
  %i.alf = sitofp <8 x i32> %i.akx to <8 x float>
  %i.alg = shufflevector <8 x float> %i.ale, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.alh = fmul <8 x float> %i.alg, %i.afj
  %.idx1301.i.us = shl nuw nsw i64 %indvars.iv1165.i.us, 7
  %i.ali = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx1301.i.us ; 5 uses
  %i.alj = load <8 x float>, ptr %i.ali, align 32, !tbaa !9, !noalias !99
  %i.alk = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.alf, <8 x float> %i.alh, <8 x float> %i.alj)
  store <8 x float> %i.alk, ptr %i.ali, align 32, !tbaa !9, !noalias !99
  %i.all = sitofp <8 x i32> %i.aky to <8 x float>
  %i.alm = shufflevector <8 x float> %i.ale, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.aln = fmul <8 x float> %i.alm, %i.afj
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ali, i64 32 ; 2 uses
  %i.alp = load <8 x float>, ptr %i.alo, align 32, !tbaa !9, !noalias !99
  %i.alq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.all, <8 x float> %i.aln, <8 x float> %i.alp)
  store <8 x float> %i.alq, ptr %i.alo, align 32, !tbaa !9, !noalias !99
  %i.alr = sitofp <8 x i32> %i.akz to <8 x float>
  %i.als = shufflevector <8 x float> %i.ale, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.alt = fmul <8 x float> %i.als, %i.afj
  %i.alu = getelementptr inbounds nuw i8, ptr %i.ali, i64 64 ; 2 uses
  %i.alv = load <8 x float>, ptr %i.alu, align 32, !tbaa !9, !noalias !99
  %i.alw = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.alr, <8 x float> %i.alt, <8 x float> %i.alv)
  store <8 x float> %i.alw, ptr %i.alu, align 32, !tbaa !9, !noalias !99
  %i.alx = sitofp <8 x i32> %i.ala to <8 x float>
  %i.aly = shufflevector <8 x float> %i.ale, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7>
  %i.alz = fmul <8 x float> %i.aly, %i.afj
  %i.ama = getelementptr inbounds nuw i8, ptr %i.ali, i64 96 ; 2 uses
  %i.amb = load <8 x float>, ptr %i.ama, align 32, !tbaa !9, !noalias !99
  %i.amc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.alx, <8 x float> %i.alz, <8 x float> %i.amb)
  store <8 x float> %i.amc, ptr %i.ama, align 32, !tbaa !9, !noalias !99
  %indvars.iv.next1166.i.us = add nuw nsw i64 %indvars.iv1165.i.us, 1 ; 2 uses
  %exitcond1168.not.i.us = icmp eq i64 %indvars.iv.next1166.i.us, 4
  br i1 %exitcond1168.not.i.us, label %bb.h, label %bb.g, !llvm.loop !88

bb.h:                                             ; preds = %bb.g
  %i.amd = add nuw nsw i64 %.010051074.us.i.us, 1 ; 2 uses
  %exitcond1169.not.i.us = icmp eq i64 %i.amd, %i.f
  br i1 %exitcond1169.not.i.us, label %.preheader1014.us.loopexit.i.us, label %.lr.ph1075.us.i.us, !llvm.loop !89

.preheader1014.us.loopexit.i.us:                  ; preds = %bb.h
  %.pre1251.i.us = load <8 x float>, ptr %i.d, align 32, !tbaa !9, !noalias !99
  %.pre1253.i.us = load <8 x float>, ptr %.phi.trans.insert1252.i, align 32, !tbaa !9, !noalias !99
  %.pre1255.i.us = load <8 x float>, ptr %.phi.trans.insert1254.i, align 32, !tbaa !9, !noalias !99
  %.pre1257.i.us = load <8 x float>, ptr %.phi.trans.insert1256.i, align 32, !tbaa !9, !noalias !99
  %.pre1259.i.us = load <8 x float>, ptr %.phi.trans.insert1258.i, align 32, !tbaa !9, !noalias !99
  %.pre1261.i.us = load <8 x float>, ptr %.phi.trans.insert1260.i, align 32, !tbaa !9, !noalias !99
  %.pre1263.i.us = load <8 x float>, ptr %.phi.trans.insert1262.i, align 32, !tbaa !9, !noalias !99
  %.pre1265.i.us = load <8 x float>, ptr %.phi.trans.insert1264.i, align 32, !tbaa !9, !noalias !99
  %.pre1267.i.us = load <8 x float>, ptr %.phi.trans.insert1266.i, align 32, !tbaa !9, !noalias !99
  %.pre1269.i.us = load <8 x float>, ptr %.phi.trans.insert1268.i, align 32, !tbaa !9, !noalias !99
  %.pre1271.i.us = load <8 x float>, ptr %.phi.trans.insert1270.i, align 32, !tbaa !9, !noalias !99
  %.pre1273.i.us = load <8 x float>, ptr %.phi.trans.insert1272.i, align 32, !tbaa !9, !noalias !99
  %.pre1275.i.us = load <8 x float>, ptr %.phi.trans.insert1274.i, align 32, !tbaa !9, !noalias !99
  %.pre1277.i.us = load <8 x float>, ptr %.phi.trans.insert1276.i, align 32, !tbaa !9, !noalias !99
  %.pre1279.i.us = load <8 x float>, ptr %.phi.trans.insert1278.i, align 32, !tbaa !9, !noalias !99
  %.pre1281.i.us = load <8 x float>, ptr %.phi.trans.insert1280.i, align 32, !tbaa !9, !noalias !99
  %.idx1009.us.i.us = shl i64 %.09991077.us.i.us, 5
  %invariant.gep.us1083.i.us = getelementptr i8, ptr %1, i64 %.idx1009.us.i.us ; 16 uses
  %gep.us1084.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acn
  store <8 x float> %.pre1251.i.us, ptr %gep.us1084.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.1.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acp
  store <8 x float> %.pre1253.i.us, ptr %gep.us1084.1.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.2.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acr
  store <8 x float> %.pre1255.i.us, ptr %gep.us1084.2.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.3.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.act
  store <8 x float> %.pre1257.i.us, ptr %gep.us1084.3.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.4.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acv
  store <8 x float> %.pre1259.i.us, ptr %gep.us1084.4.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.5.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acx
  store <8 x float> %.pre1261.i.us, ptr %gep.us1084.5.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.6.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acz
  store <8 x float> %.pre1263.i.us, ptr %gep.us1084.6.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.7.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adb
  store <8 x float> %.pre1265.i.us, ptr %gep.us1084.7.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.8.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.add
  store <8 x float> %.pre1267.i.us, ptr %gep.us1084.8.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.9.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adf
  store <8 x float> %.pre1269.i.us, ptr %gep.us1084.9.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.10.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adh
  store <8 x float> %.pre1271.i.us, ptr %gep.us1084.10.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.11.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adj
  store <8 x float> %.pre1273.i.us, ptr %gep.us1084.11.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.12.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adl
  store <8 x float> %.pre1275.i.us, ptr %gep.us1084.12.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.13.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adn
  store <8 x float> %.pre1277.i.us, ptr %gep.us1084.13.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.14.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adp
  store <8 x float> %.pre1279.i.us, ptr %gep.us1084.14.i.us, align 1, !tbaa !9, !alias.scope !96
  %gep.us1084.15.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adr
  store <8 x float> %.pre1281.i.us, ptr %gep.us1084.15.i.us, align 1, !tbaa !9, !alias.scope !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13, !noalias !99
  %i.ame = add nsw i64 %.09991077.us.i.us, 1      ; 2 uses
  %exitcond1174.not.i.us = icmp eq i64 %i.ame, %i.yn
  br i1 %exitcond1174.not.i.us, label %._crit_edge.us1085.i, label %.preheader1015.us.i.us, !llvm.loop !90

._crit_edge.us1085.i:                             ; preds = %.preheader1014.us.loopexit.i.us, %.preheader1015.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13, !noalias !99
  %i.amf = add nsw i64 %.31079.us.i, 4            ; 2 uses
  %indvar.next63 = add nuw nsw i64 %indvar62, 1
  %exitcond80.not = icmp eq i64 %indvar62, %i.aba
  br i1 %exitcond80.not, label %.preheader1013.i, label %.lr.ph1081.split.us.i, !llvm.loop !91

.preheader1013.i:                                 ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.i.preheader, %bb.f
  %.3.lcssa.i = phi i64 [ %.2.i, %bb.f ], [ %i.yu, %.lr.ph1081.split.i.preheader ], [ %i.amf, %._crit_edge.us1085.i ] ; 6 uses
  %i.amg = icmp slt i64 %.3.lcssa.i, %i.mx
  br i1 %i.amg, label %.lr.ph1104.i, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit

.lr.ph1104.i:                                     ; preds = %.preheader1013.i
  %i.amh = sdiv i32 %6, 8
  %i.ami = sext i32 %i.amh to i64                 ; 3 uses
  %i.amj = icmp slt i64 %.0987.i, %i.ami
  br i1 %i.amj, label %.lr.ph1104.split.i, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit

.lr.ph1104.split.i:                               ; preds = %.lr.ph1104.i
  %i.amk = icmp sgt i32 %0, 31
  br i1 %i.amk, label %.lr.ph1100.us.i, label %.lr.ph1100.i.preheader

.lr.ph1100.i.preheader:                           ; preds = %.lr.ph1104.split.i
  %i.aml = mul i64 %.3.lcssa.i, %2
  %i.amm = shl i64 %i.aml, 4
  %i.amn = shl nsw i64 %.0987.i, 5                ; 4 uses
  %i.amo = shl i64 %2, 4                          ; 5 uses
  %i.amp = sub nsw i64 %i.ami, %.0987.i
  %i.amq = shl nsw i64 %i.amp, 5                  ; 20 uses
  %i.amr = shl i64 %.3.lcssa.i, 2                 ; 3 uses
  %i.ams = or disjoint i64 %i.amr, 1
  %i.amt = mul i64 %2, %i.ams
  %i.amu = shl i64 %i.amt, 2
  %i.amv = or disjoint i64 %i.amr, 2
  %i.amw = mul i64 %2, %i.amv
  %i.amx = shl i64 %i.amw, 2
  %i.amy = or disjoint i64 %i.amr, 3
  %i.amz = mul i64 %2, %i.amy
  %i.ana = shl i64 %i.amz, 2
  %i.anb = getelementptr i8, ptr %1, i64 %i.ana
  %i.anc = getelementptr i8, ptr %i.anb, i64 %i.amn ; 5 uses
  %i.and = getelementptr i8, ptr %1, i64 %i.amx
  %i.ane = getelementptr i8, ptr %i.and, i64 %i.amn ; 5 uses
  %i.anf = getelementptr i8, ptr %1, i64 %i.amu
  %i.ang = getelementptr i8, ptr %i.anf, i64 %i.amn ; 5 uses
  %i.anh = getelementptr i8, ptr %1, i64 %i.amm
  %i.ani = getelementptr i8, ptr %i.anh, i64 %i.amn ; 5 uses
  %i.anj = sub i64 %i.mx, %.3.lcssa.i             ; 2 uses
  %xtraiter167 = and i64 %i.anj, 3                ; 3 uses
  %i.ank = sub i64 %.3.lcssa.i, %i.mx
  %i.anl = icmp ugt i64 %i.ank, -4
  br i1 %i.anl, label %.lr.ph1100.i.epil.preheader, label %.lr.ph1100.i.preheader.new

.lr.ph1100.i.preheader.new:                       ; preds = %.lr.ph1100.i.preheader
  %unroll_iter171 = and i64 %i.anj, -4
  br label %.lr.ph1100.i

.lr.ph1100.us.i:                                  ; preds = %.lr.ph1104.split.i, %._crit_edge.split.us.us.i
  %.41103.us.i = phi i64 [ %i.awc, %._crit_edge.split.us.us.i ], [ %.3.lcssa.i, %.lr.ph1104.split.i ] ; 3 uses
  %i.anm = mul nsw i64 %.41103.us.i, %i.f
  %i.ann = getelementptr inbounds [136 x i8], ptr %4, i64 %i.anm
  %i.ano = shl nsw i64 %.41103.us.i, 2            ; 4 uses
  %i.anp = mul i64 %i.ano, %2
  %i.anq = or disjoint i64 %i.ano, 1
  %i.anr = mul i64 %i.anq, %2
  %i.ans = or disjoint i64 %i.ano, 2
  %i.ant = mul i64 %i.ans, %2
  %i.anu = or disjoint i64 %i.ano, 3
  %i.anv = mul i64 %i.anu, %2
  br label %.preheader1012.us.us.i

.preheader1012.us.us.i:                           ; preds = %..preheader_crit_edge.us.us.i, %.lr.ph1100.us.i
  %.010031099.us.us.i = phi i64 [ %.0987.i, %.lr.ph1100.us.i ], [ %i.awb, %..preheader_crit_edge.us.us.i ] ; 3 uses
  %i.anw = mul nsw i64 %.010031099.us.us.i, %i.f
  %i.anx = getelementptr inbounds [144 x i8], ptr %3, i64 %i.anw
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader1012.us.us.i
  %i.any = phi <8 x float> [ zeroinitializer, %.preheader1012.us.us.i ], [ %i.avz, %bb.i ]
  %i.anz = phi <8 x float> [ zeroinitializer, %.preheader1012.us.us.i ], [ %i.avv, %bb.i ]
  %i.aoa = phi <8 x float> [ zeroinitializer, %.preheader1012.us.us.i ], [ %i.avr, %bb.i ]
  %.010011089.us.us.i = phi i64 [ 0, %.preheader1012.us.us.i ], [ %i.awa, %bb.i ] ; 3 uses
  %i.aob = phi <8 x float> [ zeroinitializer, %.preheader1012.us.us.i ], [ %i.avn, %bb.i ]
  %i.aoc = getelementptr inbounds nuw [144 x i8], ptr %i.anx, i64 %.010011089.us.us.i ; 5 uses
  %61 = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  %62 = load <8 x i32>, ptr %61, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %63 = getelementptr inbounds nuw i8, ptr %i.aoc, i64 48
  %64 = load <8 x i32>, ptr %63, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 80
  %65 = load <8 x i32>, ptr %i.aod, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aoc, i64 112
  %66 = load <8 x i32>, ptr %i.aoe, align 1, !tbaa !9, !alias.scope !97 ; 2 uses
  %i.aof = shufflevector <8 x i32> %62, <8 x i32> %64, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aog = shufflevector <8 x i32> %62, <8 x i32> %64, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aoh = shufflevector <8 x i32> %65, <8 x i32> %66, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aoi = shufflevector <8 x i32> %65, <8 x i32> %66, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aoj = bitcast <8 x i32> %i.aof to <32 x i8>
  %i.aok = and <32 x i8> %i.aoj, splat (i8 15)
  %i.aol = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aok) ; 2 uses
  %i.aom = bitcast <8 x i32> %i.aog to <32 x i8>
  %i.aon = and <32 x i8> %i.aom, splat (i8 15)
  %i.aoo = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aon) ; 2 uses
  %i.aop = bitcast <8 x i32> %i.aoh to <32 x i8>
  %i.aoq = and <32 x i8> %i.aop, splat (i8 15)
  %i.aor = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aoq) ; 2 uses
  %i.aos = bitcast <8 x i32> %i.aoi to <32 x i8>
  %i.aot = and <32 x i8> %i.aos, splat (i8 15)
  %i.aou = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aot) ; 2 uses
  %i.aov = bitcast <8 x i32> %i.aof to <16 x i16>
  %i.aow = lshr <16 x i16> %i.aov, splat (i16 4)
  %i.aox = bitcast <16 x i16> %i.aow to <32 x i8>
  %i.aoy = and <32 x i8> %i.aox, splat (i8 15)
  %i.aoz = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aoy) ; 2 uses
  %i.apa = bitcast <8 x i32> %i.aog to <16 x i16>
  %i.apb = lshr <16 x i16> %i.apa, splat (i16 4)
  %i.apc = bitcast <16 x i16> %i.apb to <32 x i8>
  %i.apd = and <32 x i8> %i.apc, splat (i8 15)
  %i.ape = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.apd) ; 2 uses
  %i.apf = bitcast <8 x i32> %i.aoh to <16 x i16>
  %i.apg = lshr <16 x i16> %i.apf, splat (i16 4)
  %i.aph = bitcast <16 x i16> %i.apg to <32 x i8>
  %i.api = and <32 x i8> %i.aph, splat (i8 15)
  %i.apj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.api) ; 2 uses
  %i.apk = bitcast <8 x i32> %i.aoi to <16 x i16>
  %i.apl = lshr <16 x i16> %i.apk, splat (i16 4)
  %i.apm = bitcast <16 x i16> %i.apl to <32 x i8>
  %i.apn = and <32 x i8> %i.apm, splat (i8 15)
  %i.apo = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.apn) ; 2 uses
  %i.app = load <8 x half>, ptr %i.aoc, align 1, !tbaa !9, !alias.scope !97
  %i.apq = fpext <8 x half> %i.app to <8 x float> ; 4 uses
  %i.apr = getelementptr inbounds nuw [136 x i8], ptr %i.ann, i64 %.010011089.us.us.i ; 5 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  %i.apt = load <8 x i32>, ptr %i.aps, align 1, !tbaa !9, !alias.scope !98 ; 4 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apr, i64 40
  %i.apv = load <8 x i32>, ptr %i.apu, align 1, !tbaa !9, !alias.scope !98 ; 4 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apr, i64 72
  %i.apx = load <8 x i32>, ptr %i.apw, align 1, !tbaa !9, !alias.scope !98 ; 4 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apr, i64 104
  %i.apz = load <8 x i32>, ptr %i.apy, align 1, !tbaa !9, !alias.scope !98 ; 4 uses
  %i.aqa = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.aqb = shufflevector <32 x i8> %i.aqa, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqb, <32 x i8> %i.aqb) ; 2 uses
  %i.aqd = shufflevector <32 x i8> %i.apj, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqe = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqd, <32 x i8> %i.aqb)
  %i.aqf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aqc, <32 x i8> %i.aqe)
  %i.aqg = bitcast <8 x i32> %i.apx to <32 x i8>
  %i.aqh = shufflevector <32 x i8> %i.aqg, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqi = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqh, <32 x i8> %i.aqh) ; 2 uses
  %i.aqj = shufflevector <32 x i8> %i.aoz, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqj, <32 x i8> %i.aqh)
  %i.aql = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aqf, <32 x i8> %i.aqi, <32 x i8> %i.aqk)
  %i.aqm = bitcast <8 x i32> %i.apv to <32 x i8>
  %i.aqn = shufflevector <32 x i8> %i.aqm, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqn, <32 x i8> %i.aqn) ; 2 uses
  %i.aqp = shufflevector <32 x i8> %i.aor, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqp, <32 x i8> %i.aqn)
  %i.aqr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aql, <32 x i8> %i.aqo, <32 x i8> %i.aqq)
  %i.aqs = bitcast <8 x i32> %i.apt to <32 x i8>
  %i.aqt = shufflevector <32 x i8> %i.aqs, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqt, <32 x i8> %i.aqt) ; 2 uses
  %i.aqv = shufflevector <32 x i8> %i.aol, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqv, <32 x i8> %i.aqt)
  %i.aqx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aqr, <32 x i8> %i.aqu, <32 x i8> %i.aqw)
  %i.aqy = shufflevector <32 x i8> %i.apo, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqy, <32 x i8> %i.aqb)
  %i.ara = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aqc, <32 x i8> %i.aqz)
  %i.arb = shufflevector <32 x i8> %i.ape, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.arc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arb, <32 x i8> %i.aqh)
  %i.ard = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ara, <32 x i8> %i.aqi, <32 x i8> %i.arc)
  %i.are = shufflevector <32 x i8> %i.aou, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.arf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.are, <32 x i8> %i.aqn)
  %i.arg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ard, <32 x i8> %i.aqo, <32 x i8> %i.arf)
  %i.arh = shufflevector <32 x i8> %i.aoo, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ari = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arh, <32 x i8> %i.aqt)
  %i.arj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.arg, <32 x i8> %i.aqu, <32 x i8> %i.ari)
  %i.ark = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.arl = shufflevector <32 x i8> %i.ark, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.arm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arl, <32 x i8> %i.arl) ; 2 uses
  %i.arn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqd, <32 x i8> %i.arl)
  %i.aro = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.arm, <32 x i8> %i.arn)
  %i.arp = bitcast <8 x i32> %i.apx to <32 x i8>
  %i.arq = shufflevector <32 x i8> %i.arp, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.arr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arq, <32 x i8> %i.arq) ; 2 uses
  %i.ars = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqj, <32 x i8> %i.arq)
  %i.art = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aro, <32 x i8> %i.arr, <32 x i8> %i.ars)
  %i.aru = bitcast <8 x i32> %i.apv to <32 x i8>
  %i.arv = shufflevector <32 x i8> %i.aru, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.arw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arv, <32 x i8> %i.arv) ; 2 uses
  %i.arx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqp, <32 x i8> %i.arv)
  %i.ary = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.art, <32 x i8> %i.arw, <32 x i8> %i.arx)
  %i.arz = bitcast <8 x i32> %i.apt to <32 x i8>
  %i.asa = shufflevector <32 x i8> %i.arz, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.asb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asa, <32 x i8> %i.asa) ; 2 uses
  %i.asc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqv, <32 x i8> %i.asa)
  %i.asd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ary, <32 x i8> %i.asb, <32 x i8> %i.asc)
  %i.ase = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqy, <32 x i8> %i.arl)
  %i.asf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.arm, <32 x i8> %i.ase)
  %i.asg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arb, <32 x i8> %i.arq)
  %i.ash = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asf, <32 x i8> %i.arr, <32 x i8> %i.asg)
  %i.asi = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.are, <32 x i8> %i.arv)
  %i.asj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ash, <32 x i8> %i.arw, <32 x i8> %i.asi)
  %i.ask = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arh, <32 x i8> %i.asa)
  %i.asl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asj, <32 x i8> %i.asb, <32 x i8> %i.ask)
  %i.asm = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.asn = shufflevector <32 x i8> %i.asm, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aso = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asn, <32 x i8> %i.asn) ; 2 uses
  %i.asp = shufflevector <32 x i8> %i.apj, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.asq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asp, <32 x i8> %i.asn)
  %i.asr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aso, <32 x i8> %i.asq)
  %i.ass = bitcast <8 x i32> %i.apx to <32 x i8>
  %i.ast = shufflevector <32 x i8> %i.ass, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.asu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ast, <32 x i8> %i.ast) ; 2 uses
  %i.asv = shufflevector <32 x i8> %i.aoz, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.asw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asv, <32 x i8> %i.ast)
  %i.asx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asr, <32 x i8> %i.asu, <32 x i8> %i.asw)
  %i.asy = bitcast <8 x i32> %i.apv to <32 x i8>
  %i.asz = shufflevector <32 x i8> %i.asy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ata = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asz, <32 x i8> %i.asz) ; 2 uses
  %i.atb = shufflevector <32 x i8> %i.aor, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atb, <32 x i8> %i.asz)
  %i.atd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asx, <32 x i8> %i.ata, <32 x i8> %i.atc)
  %i.ate = bitcast <8 x i32> %i.apt to <32 x i8>
  %i.atf = shufflevector <32 x i8> %i.ate, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.atg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atf, <32 x i8> %i.atf) ; 2 uses
  %i.ath = shufflevector <32 x i8> %i.aol, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ati = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ath, <32 x i8> %i.atf)
  %i.atj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.atd, <32 x i8> %i.atg, <32 x i8> %i.ati)
  %i.atk = shufflevector <32 x i8> %i.apo, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atk, <32 x i8> %i.asn)
  %i.atm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aso, <32 x i8> %i.atl)
  %i.atn = shufflevector <32 x i8> %i.ape, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ato = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atn, <32 x i8> %i.ast)
  %i.atp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.atm, <32 x i8> %i.asu, <32 x i8> %i.ato)
  %i.atq = shufflevector <32 x i8> %i.aou, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atq, <32 x i8> %i.asz)
  %i.ats = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.atp, <32 x i8> %i.ata, <32 x i8> %i.atr)
  %i.att = shufflevector <32 x i8> %i.aoo, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.att, <32 x i8> %i.atf)
  %i.atv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ats, <32 x i8> %i.atg, <32 x i8> %i.atu)
  %i.atw = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.atx = shufflevector <32 x i8> %i.atw, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aty = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atx, <32 x i8> %i.atx) ; 2 uses
  %i.atz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asp, <32 x i8> %i.atx)
  %i.aua = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aty, <32 x i8> %i.atz)
  %i.aub = bitcast <8 x i32> %i.apx to <32 x i8>
  %i.auc = shufflevector <32 x i8> %i.aub, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aud = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.auc, <32 x i8> %i.auc) ; 2 uses
  %i.aue = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asv, <32 x i8> %i.auc)
  %i.auf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aua, <32 x i8> %i.aud, <32 x i8> %i.aue)
  %i.aug = bitcast <8 x i32> %i.apv to <32 x i8>
  %i.auh = shufflevector <32 x i8> %i.aug, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aui = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.auh, <32 x i8> %i.auh) ; 2 uses
  %i.auj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atb, <32 x i8> %i.auh)
  %i.auk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.auf, <32 x i8> %i.aui, <32 x i8> %i.auj)
  %i.aul = bitcast <8 x i32> %i.apt to <32 x i8>
  %i.aum = shufflevector <32 x i8> %i.aul, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aun = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aum, <32 x i8> %i.aum) ; 2 uses
  %i.auo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ath, <32 x i8> %i.aum)
  %i.aup = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.auk, <32 x i8> %i.aun, <32 x i8> %i.auo)
  %i.auq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atk, <32 x i8> %i.atx)
  %i.aur = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aty, <32 x i8> %i.auq)
  %i.aus = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atn, <32 x i8> %i.auc)
  %i.aut = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aur, <32 x i8> %i.aud, <32 x i8> %i.aus)
  %i.auu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atq, <32 x i8> %i.auh)
  %i.auv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aut, <32 x i8> %i.aui, <32 x i8> %i.auu)
  %i.auw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.att, <32 x i8> %i.aum)
  %i.aux = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.auv, <32 x i8> %i.aun, <32 x i8> %i.auw)
  %i.auy = add <8 x i32> %i.atj, %i.aqx           ; 2 uses
  %i.auz = add <8 x i32> %i.atv, %i.arj           ; 2 uses
  %i.ava = add <8 x i32> %i.aup, %i.asd           ; 2 uses
  %i.avb = add <8 x i32> %i.aux, %i.asl           ; 2 uses
  %i.avc = shufflevector <8 x i32> %i.auy, <8 x i32> %i.auz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.avd = shufflevector <8 x i32> %i.auy, <8 x i32> %i.auz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ave = shufflevector <8 x i32> %i.ava, <8 x i32> %i.avb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.avf = shufflevector <8 x i32> %i.ava, <8 x i32> %i.avb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.avg = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.apr, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !98
  %i.avh = bitcast <4 x i32> %i.avg to <8 x half>
  %i.avi = shufflevector <8 x half> %i.avh, <8 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.avj = fpext <8 x half> %i.avi to <8 x float> ; 4 uses
  %i.avk = sitofp <8 x i32> %i.avc to <8 x float>
  %i.avl = shufflevector <8 x float> %i.avj, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.avm = fmul <8 x float> %i.avl, %i.apq
  %i.avn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avk, <8 x float> %i.avm, <8 x float> %i.aob) ; 2 uses
  %i.avo = sitofp <8 x i32> %i.avd to <8 x float>
  %i.avp = shufflevector <8 x float> %i.avj, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.avq = fmul <8 x float> %i.avp, %i.apq
  %i.avr = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avo, <8 x float> %i.avq, <8 x float> %i.aoa) ; 2 uses
  %i.avs = sitofp <8 x i32> %i.ave to <8 x float>
  %i.avt = shufflevector <8 x float> %i.avj, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.avu = fmul <8 x float> %i.avt, %i.apq
  %i.avv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avs, <8 x float> %i.avu, <8 x float> %i.anz) ; 2 uses
  %i.avw = sitofp <8 x i32> %i.avf to <8 x float>
  %i.avx = shufflevector <8 x float> %i.avj, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7>
  %i.avy = fmul <8 x float> %i.avx, %i.apq
  %i.avz = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avw, <8 x float> %i.avy, <8 x float> %i.any) ; 2 uses
  %i.awa = add nuw nsw i64 %.010011089.us.us.i, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@ggml_gemm_q4_K_8x8_q8_K:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8>, <64 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemm_iq4_nl_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 20 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = alloca [16 x <8 x float>], align 32      ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.e = sdiv i32 %0, 32
  %i.f = sext i32 %i.e to i64                     ; 20 uses
  %i.g = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %6, i64 1
  %i.i = srem <2 x i32> %i.h, splat (i32 16)      ; 2 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = sub nsw i32 %5, %i.j                     ; 2 uses
  %i.l = extractelement <2 x i32> %i.i, i64 1     ; 2 uses
  %i.m = sub nsw i32 %6, %i.l                     ; 5 uses
  %i.n = sdiv i32 %i.k, 4
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = icmp sgt i32 %i.k, 3
  br i1 %i.p, label %.lr.ph1033.i, label %.preheader1019.i

.lr.ph1033.i:                                     ; preds = %bb.a
  %i.q = sdiv i32 %i.m, 8
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp sgt i32 %i.m, 7
  %i.t = icmp sgt i32 %0, 31
  br i1 %i.s, label %.lr.ph1033.split.us.preheader.i, label %.lr.ph1033.split.i.preheader

.lr.ph1033.split.i.preheader:                     ; preds = %.lr.ph1033.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.u = add nsw i64 %smax, -1
  %i.v = and i64 %i.u, -4
  %i.w = add nuw nsw i64 %i.v, 4
  br label %.preheader1019.i

.lr.ph1033.split.us.preheader.i:                  ; preds = %.lr.ph1033.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert1223.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert1225.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert1227.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert1229.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert1231.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert1233.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert1235.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert1237.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert1239.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert1241.i = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.phi.trans.insert1243.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.phi.trans.insert1245.i = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %.phi.trans.insert1247.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %.phi.trans.insert1249.i = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.aa = shl i64 %2, 6
  %i.ab = shl nuw nsw i64 %i.r, 5
  %i.ac = add nsw i64 %i.ab, -32
  %i.ad = and i64 %i.ac, -64
  %i.ae = add nsw i64 %i.ad, 64                   ; 16 uses
  %i.af = shl i64 %2, 2
  %i.ag = shl i64 %2, 3
  %i.ah = mul i64 %2, 12
  %i.ai = shl i64 %2, 4
  %i.aj = mul i64 %2, 20
  %i.ak = mul i64 %2, 24
  %i.al = mul i64 %2, 28
  %i.am = shl i64 %2, 5
  %i.an = mul i64 %2, 36
  %i.ao = mul i64 %2, 40
  %i.ap = mul i64 %2, 44
  %i.aq = mul i64 %2, 48
  %i.ar = mul i64 %2, 52
  %i.as = mul i64 %2, 56
  %i.at = mul i64 %2, 60
  %smax55 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.au = add nsw i64 %smax55, -1
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %1, i64 %i.af
  %i.ax = getelementptr i8, ptr %1, i64 %i.ag
  %i.ay = getelementptr i8, ptr %1, i64 %i.ah
  %i.az = getelementptr i8, ptr %1, i64 %i.ai
  %i.ba = getelementptr i8, ptr %1, i64 %i.aj
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %1, i64 %i.al
  %i.bd = getelementptr i8, ptr %1, i64 %i.am
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.ao
  %i.bg = getelementptr i8, ptr %1, i64 %i.ap
  %i.bh = getelementptr i8, ptr %1, i64 %i.aq
  %i.bi = getelementptr i8, ptr %1, i64 %i.ar
  %i.bj = getelementptr i8, ptr %1, i64 %i.as
  %i.bk = getelementptr i8, ptr %1, i64 %i.at
  br label %.lr.ph1033.split.us.i

.lr.ph1033.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1033.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  %.09861031.us.i = phi i64 [ %i.mv, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !144
  %i.bl = mul nsw i64 %.09861031.us.i, %i.f
  %i.bm = getelementptr inbounds [136 x i8], ptr %4, i64 %i.bl ; 2 uses
  store ptr %i.bm, ptr %i.a, align 16, !tbaa !21, !noalias !144
  %i.bn = getelementptr inbounds [136 x i8], ptr %i.bm, i64 %i.f ; 2 uses
  store ptr %i.bn, ptr %i.x, align 8, !tbaa !21, !noalias !144
  %i.bo = getelementptr inbounds [136 x i8], ptr %i.bn, i64 %i.f ; 2 uses
  store ptr %i.bo, ptr %i.y, align 16, !tbaa !21, !noalias !144
  %i.bp = getelementptr inbounds [136 x i8], ptr %i.bo, i64 %i.f
  store ptr %i.bp, ptr %i.z, align 8, !tbaa !21, !noalias !144
  %i.bq = shl nuw nsw i64 %.09861031.us.i, 2      ; 16 uses
  %i.br = mul i64 %i.bq, %2
  %i.bs = or disjoint i64 %i.bq, 1
  %i.bt = mul i64 %i.bs, %2
  %i.bu = or disjoint i64 %i.bq, 2
  %i.bv = mul i64 %i.bu, %2
  %i.bw = or disjoint i64 %i.bq, 3
  %i.bx = mul i64 %i.bw, %2
  %i.by = or disjoint i64 %i.bq, 4
  %i.bz = mul i64 %i.by, %2
  %i.ca = or disjoint i64 %i.bq, 5
  %i.cb = mul i64 %i.ca, %2
  %i.cc = or disjoint i64 %i.bq, 6
  %i.cd = mul i64 %i.cc, %2
  %i.ce = or disjoint i64 %i.bq, 7
  %i.cf = mul i64 %i.ce, %2
  %i.cg = or disjoint i64 %i.bq, 8
  %i.ch = mul i64 %i.cg, %2
  %i.ci = or disjoint i64 %i.bq, 9
  %i.cj = mul i64 %i.ci, %2
  %i.ck = or disjoint i64 %i.bq, 10
  %i.cl = mul i64 %i.ck, %2
  %i.cm = or disjoint i64 %i.bq, 11
  %i.cn = mul i64 %i.cm, %2
  %i.co = or disjoint i64 %i.bq, 12
  %i.cp = mul i64 %i.co, %2
  %i.cq = or disjoint i64 %i.bq, 13
  %i.cr = mul i64 %i.cq, %2
  %i.cs = or disjoint i64 %i.bq, 14
  %i.ct = mul i64 %i.cs, %2
  %i.cu = or disjoint i64 %i.bq, 15
  %i.cv = mul i64 %i.cu, %2
  br i1 %i.t, label %.preheader1021.us.i.us, label %.preheader1021.us.i.preheader

.preheader1021.us.i.preheader:                    ; preds = %.lr.ph1033.split.us.i
  %i.cw = mul i64 %i.aa, %indvar                  ; 16 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.cw
  %scevgep40 = getelementptr i8, ptr %i.aw, i64 %i.cw
  %scevgep41 = getelementptr i8, ptr %i.ax, i64 %i.cw
  %scevgep42 = getelementptr i8, ptr %i.ay, i64 %i.cw
  %scevgep43 = getelementptr i8, ptr %i.az, i64 %i.cw
  %scevgep44 = getelementptr i8, ptr %i.ba, i64 %i.cw
  %scevgep45 = getelementptr i8, ptr %i.bb, i64 %i.cw
  %scevgep46 = getelementptr i8, ptr %i.bc, i64 %i.cw
  %scevgep47 = getelementptr i8, ptr %i.bd, i64 %i.cw
  %scevgep48 = getelementptr i8, ptr %i.be, i64 %i.cw
  %scevgep49 = getelementptr i8, ptr %i.bf, i64 %i.cw
  %scevgep50 = getelementptr i8, ptr %i.bg, i64 %i.cw
  %scevgep51 = getelementptr i8, ptr %i.bh, i64 %i.cw
  %scevgep52 = getelementptr i8, ptr %i.bi, i64 %i.cw
  %scevgep53 = getelementptr i8, ptr %i.bj, i64 %i.cw
  %scevgep54 = getelementptr i8, ptr %i.bk, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep40, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep41, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep42, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep43, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep44, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep45, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep46, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep47, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep48, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep49, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep50, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep51, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep52, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep54, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !141
  br label %._crit_edge.us.i

.preheader1021.us.i.us:                           ; preds = %.lr.ph1033.split.us.i, %.preheader1020.us.loopexit.i.us
  %.09891029.us.i.us = phi i64 [ %i.mt, %.preheader1020.us.loopexit.i.us ], [ 0, %.lr.ph1033.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9, !noalias !144
  %i.cx = mul nuw nsw i64 %.09891029.us.i.us, %i.f
  %i.cy = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.cx
  %i.cz = or disjoint i64 %.09891029.us.i.us, 1
  %i.da = mul nuw nsw i64 %i.cz, %i.f
  %i.db = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.da
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.preheader1021.us.i.us, %bb.c
  %.09911027.us.i.us = phi i64 [ %i.ms, %bb.c ], [ 0, %.preheader1021.us.i.us ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [144 x i8], ptr %i.cy, i64 %.09911027.us.i.us ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %8 = load <8 x i32>, ptr %7, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %10 = load <8 x i32>, ptr %9, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %11 = load <8 x i32>, ptr %i.dd, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %12 = load <8 x i32>, ptr %i.de, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.df = getelementptr inbounds nuw [144 x i8], ptr %i.db, i64 %.09911027.us.i.us ; 5 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %14 = load <8 x i32>, ptr %13, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %16 = load <8 x i32>, ptr %15, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %17 = load <8 x i32>, ptr %i.dg, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  %18 = load <8 x i32>, ptr %i.dh, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %19 = shufflevector <8 x i32> %8, <8 x i32> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x i32> %14, <8 x i32> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <16 x i32> %19, <16 x i32> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %22 = shufflevector <8 x i32> %8, <8 x i32> %10, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <8 x i32> %14, <8 x i32> %16, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <16 x i32> %22, <16 x i32> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %25 = shufflevector <8 x i32> %11, <8 x i32> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <8 x i32> %17, <8 x i32> %18, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <16 x i32> %25, <16 x i32> %26, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %28 = shufflevector <8 x i32> %11, <8 x i32> %12, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <8 x i32> %17, <8 x i32> %18, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = shufflevector <16 x i32> %28, <16 x i32> %29, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.di = bitcast <16 x i32> %21 to <64 x i8>
  %i.dj = and <64 x i8> %i.di, splat (i8 15)
  %i.dk = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.dj) ; 2 uses
  %i.dl = bitcast <16 x i32> %24 to <64 x i8>
  %i.dm = and <64 x i8> %i.dl, splat (i8 15)
  %i.dn = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.dm) ; 2 uses
  %i.do = bitcast <16 x i32> %27 to <64 x i8>
  %i.dp = and <64 x i8> %i.do, splat (i8 15)
  %i.dq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.dp) ; 2 uses
  %i.dr = bitcast <16 x i32> %30 to <64 x i8>
  %i.ds = and <64 x i8> %i.dr, splat (i8 15)
  %i.dt = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.ds) ; 2 uses
  %i.du = bitcast <16 x i32> %21 to <32 x i16>
  %i.dv = lshr <32 x i16> %i.du, splat (i16 4)
  %i.dw = bitcast <32 x i16> %i.dv to <64 x i8>
  %i.dx = and <64 x i8> %i.dw, splat (i8 15)
  %i.dy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.dx) ; 2 uses
  %i.dz = bitcast <16 x i32> %24 to <32 x i16>
  %i.ea = lshr <32 x i16> %i.dz, splat (i16 4)
  %i.eb = bitcast <32 x i16> %i.ea to <64 x i8>
  %i.ec = and <64 x i8> %i.eb, splat (i8 15)
  %i.ed = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.ec) ; 2 uses
  %i.ee = bitcast <16 x i32> %27 to <32 x i16>
  %i.ef = lshr <32 x i16> %i.ee, splat (i16 4)
  %i.eg = bitcast <32 x i16> %i.ef to <64 x i8>
  %i.eh = and <64 x i8> %i.eg, splat (i8 15)
  %i.ei = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.eh) ; 2 uses
  %i.ej = bitcast <16 x i32> %30 to <32 x i16>
  %i.ek = lshr <32 x i16> %i.ej, splat (i16 4)
  %i.el = bitcast <32 x i16> %i.ek to <64 x i8>
  %i.em = and <64 x i8> %i.el, splat (i8 15)
  %i.en = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.em) ; 2 uses
  %i.eo = load <2 x i64>, ptr %i.df, align 1, !tbaa !9, !alias.scope !142
  %i.ep = load <2 x i64>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !142
  %i.eq = shufflevector <2 x i64> %i.ep, <2 x i64> %i.eo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.er = bitcast <4 x i64> %i.eq to <16 x half>
  %i.es = fpext <16 x half> %i.er to <16 x float> ; 4 uses
  %i.et = shufflevector <64 x i8> %i.ei, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.eu = sub <64 x i8> zeroinitializer, %i.et    ; 2 uses
  %i.ev = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ew = sub <64 x i8> zeroinitializer, %i.ev    ; 2 uses
  %i.ex = shufflevector <64 x i8> %i.dq, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ey = sub <64 x i8> zeroinitializer, %i.ex    ; 2 uses
  %i.ez = shufflevector <64 x i8> %i.dk, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fa = sub <64 x i8> zeroinitializer, %i.ez    ; 2 uses
  %i.fb = shufflevector <64 x i8> %i.en, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fc = sub <64 x i8> zeroinitializer, %i.fb    ; 2 uses
  %i.fd = shufflevector <64 x i8> %i.ed, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fe = sub <64 x i8> zeroinitializer, %i.fd    ; 2 uses
  %i.ff = shufflevector <64 x i8> %i.dt, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fg = sub <64 x i8> zeroinitializer, %i.ff    ; 2 uses
  %i.fh = shufflevector <64 x i8> %i.dn, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fi = sub <64 x i8> zeroinitializer, %i.fh    ; 2 uses
  %i.fj = shufflevector <64 x i8> %i.ei, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fk = sub <64 x i8> zeroinitializer, %i.fj    ; 2 uses
  %i.fl = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fm = sub <64 x i8> zeroinitializer, %i.fl    ; 2 uses
  %i.fn = shufflevector <64 x i8> %i.dq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fo = sub <64 x i8> zeroinitializer, %i.fn    ; 2 uses
  %i.fp = shufflevector <64 x i8> %i.dk, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fq = sub <64 x i8> zeroinitializer, %i.fp    ; 2 uses
  %i.fr = shufflevector <64 x i8> %i.en, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fs = sub <64 x i8> zeroinitializer, %i.fr    ; 2 uses
  %i.ft = shufflevector <64 x i8> %i.ed, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fu = sub <64 x i8> zeroinitializer, %i.ft    ; 2 uses
  %i.fv = shufflevector <64 x i8> %i.dt, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fw = sub <64 x i8> zeroinitializer, %i.fv    ; 2 uses
  %i.fx = shufflevector <64 x i8> %i.dn, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fy = sub <64 x i8> zeroinitializer, %i.fx    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.us.i.us ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !21, !noalias !144
  %i.gb = getelementptr inbounds nuw [136 x i8], ptr %i.ga, i64 %.09911027.us.i.us ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load <8 x i32>, ptr %i.gc, align 1, !tbaa !9, !noalias !145 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gf = load <8 x i32>, ptr %i.ge, align 1, !tbaa !9, !noalias !145 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  %i.gh = load <8 x i32>, ptr %i.gg, align 1, !tbaa !9, !noalias !145 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 104
  %i.gj = load <8 x i32>, ptr %i.gi, align 1, !tbaa !9, !noalias !145 ; 4 uses
  %i.gk = bitcast <8 x i32> %i.gj to <32 x i8>
  %i.gl = shufflevector <32 x i8> %i.gk, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gl, i1 false) ; 2 uses
  %i.gn = icmp slt <64 x i8> %i.gl, zeroinitializer ; 2 uses
  %i.go = select <64 x i1> %i.gn, <64 x i8> %i.eu, <64 x i8> %i.et
  %i.gp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gm, <64 x i8> %i.go)
  %i.gq = bitcast <8 x i32> %i.gh to <32 x i8>
  %i.gr = shufflevector <32 x i8> %i.gq, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gs = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gr, i1 false) ; 2 uses
  %i.gt = icmp slt <64 x i8> %i.gr, zeroinitializer ; 2 uses
  %i.gu = select <64 x i1> %i.gt, <64 x i8> %i.ew, <64 x i8> %i.ev
  %i.gv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gp, <64 x i8> %i.gs, <64 x i8> %i.gu)
  %i.gw = bitcast <8 x i32> %i.gf to <32 x i8>
  %i.gx = shufflevector <32 x i8> %i.gw, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gx, i1 false) ; 2 uses
  %i.gz = icmp slt <64 x i8> %i.gx, zeroinitializer ; 2 uses
  %i.ha = select <64 x i1> %i.gz, <64 x i8> %i.ey, <64 x i8> %i.ex
  %i.hb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gv, <64 x i8> %i.gy, <64 x i8> %i.ha)
  %i.hc = bitcast <8 x i32> %i.gd to <32 x i8>
  %i.hd = shufflevector <32 x i8> %i.hc, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.he = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hd, i1 false) ; 2 uses
  %i.hf = icmp slt <64 x i8> %i.hd, zeroinitializer ; 2 uses
  %i.hg = select <64 x i1> %i.hf, <64 x i8> %i.fa, <64 x i8> %i.ez
  %i.hh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hb, <64 x i8> %i.he, <64 x i8> %i.hg)
  %i.hi = select <64 x i1> %i.gn, <64 x i8> %i.fc, <64 x i8> %i.fb
  %i.hj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gm, <64 x i8> %i.hi)
  %i.hk = select <64 x i1> %i.gt, <64 x i8> %i.fe, <64 x i8> %i.fd
  %i.hl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hj, <64 x i8> %i.gs, <64 x i8> %i.hk)
  %i.hm = select <64 x i1> %i.gz, <64 x i8> %i.fg, <64 x i8> %i.ff
  %i.hn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hl, <64 x i8> %i.gy, <64 x i8> %i.hm)
  %i.ho = select <64 x i1> %i.hf, <64 x i8> %i.fi, <64 x i8> %i.fh
  %i.hp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hn, <64 x i8> %i.he, <64 x i8> %i.ho)
  %i.hq = bitcast <8 x i32> %i.gj to <32 x i8>
  %i.hr = shufflevector <32 x i8> %i.hq, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hs = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hr, i1 false) ; 2 uses
  %i.ht = icmp slt <64 x i8> %i.hr, zeroinitializer ; 2 uses
  %i.hu = select <64 x i1> %i.ht, <64 x i8> %i.eu, <64 x i8> %i.et
  %i.hv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.hs, <64 x i8> %i.hu)
  %i.hw = bitcast <8 x i32> %i.gh to <32 x i8>
  %i.hx = shufflevector <32 x i8> %i.hw, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hx, i1 false) ; 2 uses
  %i.hz = icmp slt <64 x i8> %i.hx, zeroinitializer ; 2 uses
  %i.ia = select <64 x i1> %i.hz, <64 x i8> %i.ew, <64 x i8> %i.ev
  %i.ib = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hv, <64 x i8> %i.hy, <64 x i8> %i.ia)
  %i.ic = bitcast <8 x i32> %i.gf to <32 x i8>
  %i.id = shufflevector <32 x i8> %i.ic, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ie = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.id, i1 false) ; 2 uses
  %i.if = icmp slt <64 x i8> %i.id, zeroinitializer ; 2 uses
  %i.ig = select <64 x i1> %i.if, <64 x i8> %i.ey, <64 x i8> %i.ex
  %i.ih = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ib, <64 x i8> %i.ie, <64 x i8> %i.ig)
  %i.ii = bitcast <8 x i32> %i.gd to <32 x i8>
  %i.ij = shufflevector <32 x i8> %i.ii, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ik = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ij, i1 false) ; 2 uses
  %i.il = icmp slt <64 x i8> %i.ij, zeroinitializer ; 2 uses
  %i.im = select <64 x i1> %i.il, <64 x i8> %i.fa, <64 x i8> %i.ez
  %i.in = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ih, <64 x i8> %i.ik, <64 x i8> %i.im)
  %i.io = select <64 x i1> %i.ht, <64 x i8> %i.fc, <64 x i8> %i.fb
  %i.ip = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.hs, <64 x i8> %i.io)
  %i.iq = select <64 x i1> %i.hz, <64 x i8> %i.fe, <64 x i8> %i.fd
  %i.ir = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ip, <64 x i8> %i.hy, <64 x i8> %i.iq)
  %i.is = select <64 x i1> %i.if, <64 x i8> %i.fg, <64 x i8> %i.ff
  %i.it = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ir, <64 x i8> %i.ie, <64 x i8> %i.is)
  %i.iu = select <64 x i1> %i.il, <64 x i8> %i.fi, <64 x i8> %i.fh
  %i.iv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.it, <64 x i8> %i.ik, <64 x i8> %i.iu)
  %i.iw = bitcast <8 x i32> %i.gj to <32 x i8>
  %i.ix = shufflevector <32 x i8> %i.iw, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.iy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ix, i1 false) ; 2 uses
  %i.iz = icmp slt <64 x i8> %i.ix, zeroinitializer ; 2 uses
  %i.ja = select <64 x i1> %i.iz, <64 x i8> %i.fk, <64 x i8> %i.fj
  %i.jb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.iy, <64 x i8> %i.ja)
  %i.jc = bitcast <8 x i32> %i.gh to <32 x i8>
  %i.jd = shufflevector <32 x i8> %i.jc, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.je = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jd, i1 false) ; 2 uses
  %i.jf = icmp slt <64 x i8> %i.jd, zeroinitializer ; 2 uses
  %i.jg = select <64 x i1> %i.jf, <64 x i8> %i.fm, <64 x i8> %i.fl
  %i.jh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jb, <64 x i8> %i.je, <64 x i8> %i.jg)
  %i.ji = bitcast <8 x i32> %i.gf to <32 x i8>
  %i.jj = shufflevector <32 x i8> %i.ji, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jj, i1 false) ; 2 uses
  %i.jl = icmp slt <64 x i8> %i.jj, zeroinitializer ; 2 uses
  %i.jm = select <64 x i1> %i.jl, <64 x i8> %i.fo, <64 x i8> %i.fn
  %i.jn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jh, <64 x i8> %i.jk, <64 x i8> %i.jm)
  %i.jo = bitcast <8 x i32> %i.gd to <32 x i8>
  %i.jp = shufflevector <32 x i8> %i.jo, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jp, i1 false) ; 2 uses
  %i.jr = icmp slt <64 x i8> %i.jp, zeroinitializer ; 2 uses
  %i.js = select <64 x i1> %i.jr, <64 x i8> %i.fq, <64 x i8> %i.fp
  %i.jt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jn, <64 x i8> %i.jq, <64 x i8> %i.js)
  %i.ju = select <64 x i1> %i.iz, <64 x i8> %i.fs, <64 x i8> %i.fr
  %i.jv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.iy, <64 x i8> %i.ju)
  %i.jw = select <64 x i1> %i.jf, <64 x i8> %i.fu, <64 x i8> %i.ft
  %i.jx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jv, <64 x i8> %i.je, <64 x i8> %i.jw)
  %i.jy = select <64 x i1> %i.jl, <64 x i8> %i.fw, <64 x i8> %i.fv
  %i.jz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jx, <64 x i8> %i.jk, <64 x i8> %i.jy)
  %i.ka = select <64 x i1> %i.jr, <64 x i8> %i.fy, <64 x i8> %i.fx
  %i.kb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jz, <64 x i8> %i.jq, <64 x i8> %i.ka)
  %i.kc = bitcast <8 x i32> %i.gj to <32 x i8>
  %i.kd = shufflevector <32 x i8> %i.kc, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ke = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kd, i1 false) ; 2 uses
  %i.kf = icmp slt <64 x i8> %i.kd, zeroinitializer ; 2 uses
  %i.kg = select <64 x i1> %i.kf, <64 x i8> %i.fk, <64 x i8> %i.fj
  %i.kh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ke, <64 x i8> %i.kg)
  %i.ki = bitcast <8 x i32> %i.gh to <32 x i8>
  %i.kj = shufflevector <32 x i8> %i.ki, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kj, i1 false) ; 2 uses
  %i.kl = icmp slt <64 x i8> %i.kj, zeroinitializer ; 2 uses
  %i.km = select <64 x i1> %i.kl, <64 x i8> %i.fm, <64 x i8> %i.fl
  %i.kn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kh, <64 x i8> %i.kk, <64 x i8> %i.km)
  %i.ko = bitcast <8 x i32> %i.gf to <32 x i8>
  %i.kp = shufflevector <32 x i8> %i.ko, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kp, i1 false) ; 2 uses
  %i.kr = icmp slt <64 x i8> %i.kp, zeroinitializer ; 2 uses
  %i.ks = select <64 x i1> %i.kr, <64 x i8> %i.fo, <64 x i8> %i.fn
  %i.kt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kn, <64 x i8> %i.kq, <64 x i8> %i.ks)
  %i.ku = bitcast <8 x i32> %i.gd to <32 x i8>
  %i.kv = shufflevector <32 x i8> %i.ku, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kv, i1 false) ; 2 uses
  %i.kx = icmp slt <64 x i8> %i.kv, zeroinitializer ; 2 uses
  %i.ky = select <64 x i1> %i.kx, <64 x i8> %i.fq, <64 x i8> %i.fp
  %i.kz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kt, <64 x i8> %i.kw, <64 x i8> %i.ky)
  %i.la = select <64 x i1> %i.kf, <64 x i8> %i.fs, <64 x i8> %i.fr
  %i.lb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ke, <64 x i8> %i.la)
  %i.lc = select <64 x i1> %i.kl, <64 x i8> %i.fu, <64 x i8> %i.ft
  %i.ld = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lb, <64 x i8> %i.kk, <64 x i8> %i.lc)
  %i.le = select <64 x i1> %i.kr, <64 x i8> %i.fw, <64 x i8> %i.fv
  %i.lf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ld, <64 x i8> %i.kq, <64 x i8> %i.le)
  %i.lg = select <64 x i1> %i.kx, <64 x i8> %i.fy, <64 x i8> %i.fx
  %i.lh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lf, <64 x i8> %i.kw, <64 x i8> %i.lg)
  %i.li = add <16 x i32> %i.jt, %i.hh             ; 2 uses
  %i.lj = add <16 x i32> %i.kb, %i.hp             ; 2 uses
  %i.lk = add <16 x i32> %i.kz, %i.in             ; 2 uses
  %i.ll = add <16 x i32> %i.lh, %i.iv             ; 2 uses
  %i.lm = shufflevector <16 x i32> %i.li, <16 x i32> %i.lj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ln = shufflevector <16 x i32> %i.li, <16 x i32> %i.lj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.lo = shufflevector <16 x i32> %i.lk, <16 x i32> %i.ll, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.lp = shufflevector <16 x i32> %i.lk, <16 x i32> %i.ll, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.lq = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.gb, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !145
  %i.lr = bitcast <4 x i32> %i.lq to <8 x half>
  %i.ls = shufflevector <8 x half> %i.lr, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lt = fpext <16 x half> %i.ls to <16 x float> ; 4 uses
  %i.lu = sitofp <16 x i32> %i.lm to <16 x float>
  %i.lv = shufflevector <16 x float> %i.lt, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.lw = fmul <16 x float> %i.lv, %i.es
  %.idx1300.i.us = shl nuw nsw i64 %indvars.iv.i.us, 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx1300.i.us ; 5 uses
  %i.ly = load <16 x float>, ptr %i.lx, align 64, !tbaa !9, !noalias !144
  %i.lz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lu, <16 x float> %i.lw, <16 x float> %i.ly)
  store <16 x float> %i.lz, ptr %i.lx, align 64, !tbaa !9, !noalias !144
  %i.ma = sitofp <16 x i32> %i.ln to <16 x float>
  %i.mb = shufflevector <16 x float> %i.lt, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.mc = fmul <16 x float> %i.mb, %i.es
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 64 ; 2 uses
  %i.me = load <16 x float>, ptr %i.md, align 64, !tbaa !9, !noalias !144
  %i.mf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ma, <16 x float> %i.mc, <16 x float> %i.me)
  store <16 x float> %i.mf, ptr %i.md, align 64, !tbaa !9, !noalias !144
  %i.mg = sitofp <16 x i32> %i.lo to <16 x float>
  %i.mh = shufflevector <16 x float> %i.lt, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.mi = fmul <16 x float> %i.mh, %i.es
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 128 ; 2 uses
  %i.mk = load <16 x float>, ptr %i.mj, align 64, !tbaa !9, !noalias !144
  %i.ml = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mg, <16 x float> %i.mi, <16 x float> %i.mk)
  store <16 x float> %i.ml, ptr %i.mj, align 64, !tbaa !9, !noalias !144
  %i.mm = sitofp <16 x i32> %i.lp to <16 x float>
  %i.mn = shufflevector <16 x float> %i.lt, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.mo = fmul <16 x float> %i.mn, %i.es
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lx, i64 192 ; 2 uses
  %i.mq = load <16 x float>, ptr %i.mp, align 64, !tbaa !9, !noalias !144
  %i.mr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mm, <16 x float> %i.mo, <16 x float> %i.mq)
  store <16 x float> %i.mr, ptr %i.mp, align 64, !tbaa !9, !noalias !144
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 4
  br i1 %exitcond.not.i.us, label %bb.c, label %bb.b, !llvm.loop !125

bb.c:                                             ; preds = %bb.b
  %i.ms = add nuw nsw i64 %.09911027.us.i.us, 1   ; 2 uses
  %exitcond1132.not.i.us = icmp eq i64 %i.ms, %i.f
  br i1 %exitcond1132.not.i.us, label %.preheader1020.us.loopexit.i.us, label %.lr.ph.us.i.us, !llvm.loop !126

.preheader1020.us.loopexit.i.us:                  ; preds = %bb.c
  %.pre.i.us = load <16 x float>, ptr %i.b, align 64, !tbaa !9, !noalias !144
  %.pre1222.i.us = load <16 x float>, ptr %.phi.trans.insert.i, align 64, !tbaa !9, !noalias !144
  %.pre1224.i.us = load <16 x float>, ptr %.phi.trans.insert1223.i, align 64, !tbaa !9, !noalias !144
  %.pre1226.i.us = load <16 x float>, ptr %.phi.trans.insert1225.i, align 64, !tbaa !9, !noalias !144
  %.pre1228.i.us = load <16 x float>, ptr %.phi.trans.insert1227.i, align 64, !tbaa !9, !noalias !144
  %.pre1230.i.us = load <16 x float>, ptr %.phi.trans.insert1229.i, align 64, !tbaa !9, !noalias !144
  %.pre1232.i.us = load <16 x float>, ptr %.phi.trans.insert1231.i, align 64, !tbaa !9, !noalias !144
  %.pre1234.i.us = load <16 x float>, ptr %.phi.trans.insert1233.i, align 64, !tbaa !9, !noalias !144
  %.pre1236.i.us = load <16 x float>, ptr %.phi.trans.insert1235.i, align 64, !tbaa !9, !noalias !144
  %.pre1238.i.us = load <16 x float>, ptr %.phi.trans.insert1237.i, align 64, !tbaa !9, !noalias !144
  %.pre1240.i.us = load <16 x float>, ptr %.phi.trans.insert1239.i, align 64, !tbaa !9, !noalias !144
  %.pre1242.i.us = load <16 x float>, ptr %.phi.trans.insert1241.i, align 64, !tbaa !9, !noalias !144
  %.pre1244.i.us = load <16 x float>, ptr %.phi.trans.insert1243.i, align 64, !tbaa !9, !noalias !144
  %.pre1246.i.us = load <16 x float>, ptr %.phi.trans.insert1245.i, align 64, !tbaa !9, !noalias !144
  %.pre1248.i.us = load <16 x float>, ptr %.phi.trans.insert1247.i, align 64, !tbaa !9, !noalias !144
  %.pre1250.i.us = load <16 x float>, ptr %.phi.trans.insert1249.i, align 64, !tbaa !9, !noalias !144
  %.idx1011.us.i.us = shl nuw nsw i64 %.09891029.us.i.us, 5
  %invariant.gep.us.i.us = getelementptr i8, ptr %1, i64 %.idx1011.us.i.us ; 16 uses
  %gep.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.br
  store <16 x float> %.pre.i.us, ptr %gep.us.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.1.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bt
  store <16 x float> %.pre1222.i.us, ptr %gep.us.1.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.2.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bv
  store <16 x float> %.pre1224.i.us, ptr %gep.us.2.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.3.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bx
  store <16 x float> %.pre1226.i.us, ptr %gep.us.3.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.4.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bz
  store <16 x float> %.pre1228.i.us, ptr %gep.us.4.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.5.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cb
  store <16 x float> %.pre1230.i.us, ptr %gep.us.5.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.6.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cd
  store <16 x float> %.pre1232.i.us, ptr %gep.us.6.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.7.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cf
  store <16 x float> %.pre1234.i.us, ptr %gep.us.7.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.8.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ch
  store <16 x float> %.pre1236.i.us, ptr %gep.us.8.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.9.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cj
  store <16 x float> %.pre1238.i.us, ptr %gep.us.9.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.10.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cl
  store <16 x float> %.pre1240.i.us, ptr %gep.us.10.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.11.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cn
  store <16 x float> %.pre1242.i.us, ptr %gep.us.11.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.12.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cp
  store <16 x float> %.pre1244.i.us, ptr %gep.us.12.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.13.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cr
  store <16 x float> %.pre1246.i.us, ptr %gep.us.13.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.14.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ct
  store <16 x float> %.pre1248.i.us, ptr %gep.us.14.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us.15.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cv
  store <16 x float> %.pre1250.i.us, ptr %gep.us.15.i.us, align 1, !tbaa !9, !alias.scope !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !144
  %i.mt = add nuw nsw i64 %.09891029.us.i.us, 2   ; 2 uses
  %i.mu = icmp slt i64 %i.mt, %i.r
  br i1 %i.mu, label %.preheader1021.us.i.us, label %._crit_edge.us.i, !llvm.loop !127

._crit_edge.us.i:                                 ; preds = %.preheader1020.us.loopexit.i.us, %.preheader1021.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !144
  %i.mv = add nuw nsw i64 %.09861031.us.i, 4      ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar, %i.av
  br i1 %exitcond.not, label %.preheader1019.i, label %.lr.ph1033.split.us.i, !llvm.loop !128

.preheader1019.i:                                 ; preds = %._crit_edge.us.i, %.lr.ph1033.split.i.preheader, %bb.a
  %.0986.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph1033.split.i.preheader ], [ %i.mv, %._crit_edge.us.i ] ; 7 uses
  %i.mw = sdiv i32 %5, 4
  %i.mx = sext i32 %i.mw to i64                   ; 12 uses
  %i.my = icmp slt i64 %.0986.lcssa.i, %i.mx
  br i1 %i.my, label %.lr.ph.i, label %._crit_edge1053.i

.lr.ph.i:                                         ; preds = %.preheader1019.i
  %i.mz = sdiv i32 %i.m, 8
  %i.na = sext i32 %i.mz to i64                   ; 2 uses
  %i.nb = icmp sgt i32 %i.m, 7
  br i1 %i.nb, label %.lr.ph.split.us.i, label %._crit_edge1053.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.nc = icmp sgt i32 %0, 31
  br i1 %i.nc, label %.lr.ph1048.us.us.i, label %.lr.ph1048.us.i.preheader

.lr.ph1048.us.i.preheader:                        ; preds = %.lr.ph.split.us.i
  %i.nd = mul i64 %.0986.lcssa.i, %2
  %i.ne = shl i64 %i.nd, 4
  %i.nf = shl i64 %2, 4                           ; 5 uses
  %i.ng = shl nuw nsw i64 %i.na, 5
  %i.nh = add nsw i64 %i.ng, -32
  %i.ni = and i64 %i.nh, -64
  %i.nj = add nsw i64 %i.ni, 64                   ; 20 uses
  %i.nk = shl i64 %.0986.lcssa.i, 2               ; 3 uses
  %i.nl = or disjoint i64 %i.nk, 1
  %i.nm = mul i64 %2, %i.nl
  %i.nn = shl i64 %i.nm, 2
  %i.no = or disjoint i64 %i.nk, 2
  %i.np = mul i64 %2, %i.no
  %i.nq = shl i64 %i.np, 2
  %i.nr = or disjoint i64 %i.nk, 3
  %i.ns = mul i64 %2, %i.nr
  %i.nt = shl i64 %i.ns, 2
  %i.nu = getelementptr i8, ptr %1, i64 %i.nt     ; 5 uses
  %i.nv = getelementptr i8, ptr %1, i64 %i.nq     ; 5 uses
  %i.nw = getelementptr i8, ptr %1, i64 %i.nn     ; 5 uses
  %i.nx = getelementptr i8, ptr %1, i64 %i.ne     ; 5 uses
  %i.ny = sub i64 %i.mx, %.0986.lcssa.i           ; 2 uses
  %xtraiter = and i64 %i.ny, 3                    ; 3 uses
  %i.nz = sub i64 %.0986.lcssa.i, %i.mx
  %i.oa = icmp ugt i64 %i.nz, -4
  br i1 %i.oa, label %.lr.ph1048.us.i.epil.preheader, label %.lr.ph1048.us.i.preheader.new

.lr.ph1048.us.i.preheader.new:                    ; preds = %.lr.ph1048.us.i.preheader
  %unroll_iter = and i64 %i.ny, -4
  br label %.lr.ph1048.us.i

.lr.ph1048.us.us.i:                               ; preds = %.lr.ph.split.us.i, %._crit_edge.split.us.us.us.i
  %.11052.us.us.i = phi i64 [ %i.yd, %._crit_edge.split.us.us.us.i ], [ %.0986.lcssa.i, %.lr.ph.split.us.i ] ; 3 uses
  %i.ob = mul nsw i64 %.11052.us.us.i, %i.f
  %i.oc = getelementptr inbounds [136 x i8], ptr %4, i64 %i.ob
  %i.od = shl nuw nsw i64 %.11052.us.us.i, 2      ; 4 uses
  %i.oe = mul i64 %i.od, %2
  %i.of = or disjoint i64 %i.od, 1
  %i.og = mul i64 %i.of, %2
  %i.oh = or disjoint i64 %i.od, 2
  %i.oi = mul i64 %i.oh, %2
  %i.oj = or disjoint i64 %i.od, 3
  %i.ok = mul i64 %i.oj, %2
  br label %.preheader1018.us.us.us.i

.preheader1018.us.us.us.i:                        ; preds = %..preheader1017_crit_edge.us.us.us.i, %.lr.ph1048.us.us.i
  %.09941047.us.us.us.i = phi i64 [ 0, %.lr.ph1048.us.us.i ], [ %i.yb, %..preheader1017_crit_edge.us.us.us.i ] ; 4 uses
  %i.ol = mul nuw nsw i64 %.09941047.us.us.us.i, %i.f
  %i.om = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.ol
  %i.on = or disjoint i64 %.09941047.us.us.us.i, 1
  %i.oo = mul nuw nsw i64 %i.on, %i.f
  %i.op = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.oo
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader1018.us.us.us.i
  %i.oq = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.xz, %bb.d ]
  %i.or = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.xv, %bb.d ]
  %i.os = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.xr, %bb.d ]
  %.09961038.us.us.us.i = phi i64 [ 0, %.preheader1018.us.us.us.i ], [ %i.ya, %bb.d ] ; 4 uses
  %i.ot = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.xn, %bb.d ]
  %i.ou = getelementptr inbounds nuw [144 x i8], ptr %i.om, i64 %.09961038.us.us.us.i ; 5 uses
  %31 = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %32 = load <8 x i32>, ptr %31, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %34 = load <8 x i32>, ptr %33, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 80
  %35 = load <8 x i32>, ptr %i.ov, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 112
  %36 = load <8 x i32>, ptr %i.ow, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.ox = getelementptr inbounds nuw [144 x i8], ptr %i.op, i64 %.09961038.us.us.us.i ; 5 uses
  %37 = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %38 = load <8 x i32>, ptr %37, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %39 = getelementptr inbounds nuw i8, ptr %i.ox, i64 48
  %40 = load <8 x i32>, ptr %39, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 80
  %41 = load <8 x i32>, ptr %i.oy, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 112
  %42 = load <8 x i32>, ptr %i.oz, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %43 = shufflevector <8 x i32> %32, <8 x i32> %34, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = shufflevector <8 x i32> %38, <8 x i32> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %45 = shufflevector <16 x i32> %43, <16 x i32> %44, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %46 = shufflevector <8 x i32> %32, <8 x i32> %34, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %47 = shufflevector <8 x i32> %38, <8 x i32> %40, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %48 = shufflevector <16 x i32> %46, <16 x i32> %47, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %49 = shufflevector <8 x i32> %35, <8 x i32> %36, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %50 = shufflevector <8 x i32> %41, <8 x i32> %42, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %51 = shufflevector <16 x i32> %49, <16 x i32> %50, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %52 = shufflevector <8 x i32> %35, <8 x i32> %36, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %53 = shufflevector <8 x i32> %41, <8 x i32> %42, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %54 = shufflevector <16 x i32> %52, <16 x i32> %53, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.pa = bitcast <16 x i32> %45 to <64 x i8>
  %i.pb = and <64 x i8> %i.pa, splat (i8 15)
  %i.pc = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.pb) ; 2 uses
  %i.pd = bitcast <16 x i32> %48 to <64 x i8>
  %i.pe = and <64 x i8> %i.pd, splat (i8 15)
  %i.pf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.pe) ; 2 uses
  %i.pg = bitcast <16 x i32> %51 to <64 x i8>
  %i.ph = and <64 x i8> %i.pg, splat (i8 15)
  %i.pi = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.ph) ; 2 uses
  %i.pj = bitcast <16 x i32> %54 to <64 x i8>
  %i.pk = and <64 x i8> %i.pj, splat (i8 15)
  %i.pl = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.pk) ; 2 uses
  %i.pm = bitcast <16 x i32> %45 to <32 x i16>
  %i.pn = lshr <32 x i16> %i.pm, splat (i16 4)
  %i.po = bitcast <32 x i16> %i.pn to <64 x i8>
  %i.pp = and <64 x i8> %i.po, splat (i8 15)
  %i.pq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.pp) ; 2 uses
  %i.pr = bitcast <16 x i32> %48 to <32 x i16>
  %i.ps = lshr <32 x i16> %i.pr, splat (i16 4)
  %i.pt = bitcast <32 x i16> %i.ps to <64 x i8>
  %i.pu = and <64 x i8> %i.pt, splat (i8 15)
  %i.pv = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.pu) ; 2 uses
  %i.pw = bitcast <16 x i32> %51 to <32 x i16>
  %i.px = lshr <32 x i16> %i.pw, splat (i16 4)
  %i.py = bitcast <32 x i16> %i.px to <64 x i8>
  %i.pz = and <64 x i8> %i.py, splat (i8 15)
  %i.qa = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.pz) ; 2 uses
  %i.qb = bitcast <16 x i32> %54 to <32 x i16>
  %i.qc = lshr <32 x i16> %i.qb, splat (i16 4)
  %i.qd = bitcast <32 x i16> %i.qc to <64 x i8>
  %i.qe = and <64 x i8> %i.qd, splat (i8 15)
  %i.qf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.qe) ; 2 uses
  %i.qg = load <2 x i64>, ptr %i.ox, align 1, !tbaa !9, !alias.scope !142
  %i.qh = load <2 x i64>, ptr %i.ou, align 1, !tbaa !9, !alias.scope !142
  %i.qi = shufflevector <2 x i64> %i.qh, <2 x i64> %i.qg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qj = bitcast <4 x i64> %i.qi to <16 x half>
  %i.qk = fpext <16 x half> %i.qj to <16 x float> ; 4 uses
  %i.ql = getelementptr inbounds nuw [136 x i8], ptr %i.oc, i64 %.09961038.us.us.us.i ; 5 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load <8 x i32>, ptr %i.qm, align 1, !tbaa !9, !alias.scope !143 ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 40
  %i.qp = load <8 x i32>, ptr %i.qo, align 1, !tbaa !9, !alias.scope !143 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 72
  %i.qr = load <8 x i32>, ptr %i.qq, align 1, !tbaa !9, !alias.scope !143 ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ql, i64 104
  %i.qt = load <8 x i32>, ptr %i.qs, align 1, !tbaa !9, !alias.scope !143 ; 4 uses
  %i.qu = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.qv = shufflevector <32 x i8> %i.qu, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.qw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.qv, i1 false) ; 2 uses
  %i.qx = icmp slt <64 x i8> %i.qv, zeroinitializer ; 2 uses
  %i.qy = shufflevector <64 x i8> %i.qa, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.qz = sub <64 x i8> zeroinitializer, %i.qy    ; 2 uses
  %i.ra = select <64 x i1> %i.qx, <64 x i8> %i.qz, <64 x i8> %i.qy
  %i.rb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.qw, <64 x i8> %i.ra)
  %i.rc = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.rd = shufflevector <32 x i8> %i.rc, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.re = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.rd, i1 false) ; 2 uses
  %i.rf = icmp slt <64 x i8> %i.rd, zeroinitializer ; 2 uses
  %i.rg = shufflevector <64 x i8> %i.pq, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rh = sub <64 x i8> zeroinitializer, %i.rg    ; 2 uses
  %i.ri = select <64 x i1> %i.rf, <64 x i8> %i.rh, <64 x i8> %i.rg
  %i.rj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rb, <64 x i8> %i.re, <64 x i8> %i.ri)
  %i.rk = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.rl = shufflevector <32 x i8> %i.rk, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.rm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.rl, i1 false) ; 2 uses
  %i.rn = icmp slt <64 x i8> %i.rl, zeroinitializer ; 2 uses
  %i.ro = shufflevector <64 x i8> %i.pi, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rp = sub <64 x i8> zeroinitializer, %i.ro    ; 2 uses
  %i.rq = select <64 x i1> %i.rn, <64 x i8> %i.rp, <64 x i8> %i.ro
  %i.rr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rj, <64 x i8> %i.rm, <64 x i8> %i.rq)
  %i.rs = bitcast <8 x i32> %i.qn to <32 x i8>
  %i.rt = shufflevector <32 x i8> %i.rs, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ru = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.rt, i1 false) ; 2 uses
  %i.rv = icmp slt <64 x i8> %i.rt, zeroinitializer ; 2 uses
  %i.rw = shufflevector <64 x i8> %i.pc, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rx = sub <64 x i8> zeroinitializer, %i.rw    ; 2 uses
  %i.ry = select <64 x i1> %i.rv, <64 x i8> %i.rx, <64 x i8> %i.rw
  %i.rz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rr, <64 x i8> %i.ru, <64 x i8> %i.ry)
  %i.sa = shufflevector <64 x i8> %i.qf, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sb = sub <64 x i8> zeroinitializer, %i.sa    ; 2 uses
  %i.sc = select <64 x i1> %i.qx, <64 x i8> %i.sb, <64 x i8> %i.sa
  %i.sd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.qw, <64 x i8> %i.sc)
  %i.se = shufflevector <64 x i8> %i.pv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sf = sub <64 x i8> zeroinitializer, %i.se    ; 2 uses
  %i.sg = select <64 x i1> %i.rf, <64 x i8> %i.sf, <64 x i8> %i.se
  %i.sh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sd, <64 x i8> %i.re, <64 x i8> %i.sg)
  %i.si = shufflevector <64 x i8> %i.pl, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sj = sub <64 x i8> zeroinitializer, %i.si    ; 2 uses
  %i.sk = select <64 x i1> %i.rn, <64 x i8> %i.sj, <64 x i8> %i.si
  %i.sl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sh, <64 x i8> %i.rm, <64 x i8> %i.sk)
  %i.sm = shufflevector <64 x i8> %i.pf, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sn = sub <64 x i8> zeroinitializer, %i.sm    ; 2 uses
  %i.so = select <64 x i1> %i.rv, <64 x i8> %i.sn, <64 x i8> %i.sm
  %i.sp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sl, <64 x i8> %i.ru, <64 x i8> %i.so)
  %i.sq = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.sr = shufflevector <32 x i8> %i.sq, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ss = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sr, i1 false) ; 2 uses
  %i.st = icmp slt <64 x i8> %i.sr, zeroinitializer ; 2 uses
  %i.su = select <64 x i1> %i.st, <64 x i8> %i.qz, <64 x i8> %i.qy
  %i.sv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ss, <64 x i8> %i.su)
  %i.sw = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.sx = shufflevector <32 x i8> %i.sw, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.sy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sx, i1 false) ; 2 uses
  %i.sz = icmp slt <64 x i8> %i.sx, zeroinitializer ; 2 uses
  %i.ta = select <64 x i1> %i.sz, <64 x i8> %i.rh, <64 x i8> %i.rg
  %i.tb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sv, <64 x i8> %i.sy, <64 x i8> %i.ta)
  %i.tc = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.td = shufflevector <32 x i8> %i.tc, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.te = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.td, i1 false) ; 2 uses
  %i.tf = icmp slt <64 x i8> %i.td, zeroinitializer ; 2 uses
  %i.tg = select <64 x i1> %i.tf, <64 x i8> %i.rp, <64 x i8> %i.ro
  %i.th = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tb, <64 x i8> %i.te, <64 x i8> %i.tg)
  %i.ti = bitcast <8 x i32> %i.qn to <32 x i8>
  %i.tj = shufflevector <32 x i8> %i.ti, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.tk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tj, i1 false) ; 2 uses
  %i.tl = icmp slt <64 x i8> %i.tj, zeroinitializer ; 2 uses
  %i.tm = select <64 x i1> %i.tl, <64 x i8> %i.rx, <64 x i8> %i.rw
  %i.tn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.th, <64 x i8> %i.tk, <64 x i8> %i.tm)
  %i.to = select <64 x i1> %i.st, <64 x i8> %i.sb, <64 x i8> %i.sa
  %i.tp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ss, <64 x i8> %i.to)
  %i.tq = select <64 x i1> %i.sz, <64 x i8> %i.sf, <64 x i8> %i.se
  %i.tr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tp, <64 x i8> %i.sy, <64 x i8> %i.tq)
  %i.ts = select <64 x i1> %i.tf, <64 x i8> %i.sj, <64 x i8> %i.si
  %i.tt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tr, <64 x i8> %i.te, <64 x i8> %i.ts)
  %i.tu = select <64 x i1> %i.tl, <64 x i8> %i.sn, <64 x i8> %i.sm
  %i.tv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tt, <64 x i8> %i.tk, <64 x i8> %i.tu)
  %i.tw = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.tx = shufflevector <32 x i8> %i.tw, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ty = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tx, i1 false) ; 2 uses
  %i.tz = icmp slt <64 x i8> %i.tx, zeroinitializer ; 2 uses
  %i.ua = shufflevector <64 x i8> %i.qa, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ub = sub <64 x i8> zeroinitializer, %i.ua    ; 2 uses
  %i.uc = select <64 x i1> %i.tz, <64 x i8> %i.ub, <64 x i8> %i.ua
  %i.ud = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ty, <64 x i8> %i.uc)
  %i.ue = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.uf = shufflevector <32 x i8> %i.ue, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ug = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uf, i1 false) ; 2 uses
  %i.uh = icmp slt <64 x i8> %i.uf, zeroinitializer ; 2 uses
  %i.ui = shufflevector <64 x i8> %i.pq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.uj = sub <64 x i8> zeroinitializer, %i.ui    ; 2 uses
  %i.uk = select <64 x i1> %i.uh, <64 x i8> %i.uj, <64 x i8> %i.ui
  %i.ul = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ud, <64 x i8> %i.ug, <64 x i8> %i.uk)
  %i.um = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.un = shufflevector <32 x i8> %i.um, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.un, i1 false) ; 2 uses
  %i.up = icmp slt <64 x i8> %i.un, zeroinitializer ; 2 uses
  %i.uq = shufflevector <64 x i8> %i.pi, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ur = sub <64 x i8> zeroinitializer, %i.uq    ; 2 uses
  %i.us = select <64 x i1> %i.up, <64 x i8> %i.ur, <64 x i8> %i.uq
  %i.ut = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ul, <64 x i8> %i.uo, <64 x i8> %i.us)
  %i.uu = bitcast <8 x i32> %i.qn to <32 x i8>
  %i.uv = shufflevector <32 x i8> %i.uu, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uv, i1 false) ; 2 uses
  %i.ux = icmp slt <64 x i8> %i.uv, zeroinitializer ; 2 uses
  %i.uy = shufflevector <64 x i8> %i.pc, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.uz = sub <64 x i8> zeroinitializer, %i.uy    ; 2 uses
  %i.va = select <64 x i1> %i.ux, <64 x i8> %i.uz, <64 x i8> %i.uy
  %i.vb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ut, <64 x i8> %i.uw, <64 x i8> %i.va)
  %i.vc = shufflevector <64 x i8> %i.qf, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vd = sub <64 x i8> zeroinitializer, %i.vc    ; 2 uses
  %i.ve = select <64 x i1> %i.tz, <64 x i8> %i.vd, <64 x i8> %i.vc
  %i.vf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ty, <64 x i8> %i.ve)
  %i.vg = shufflevector <64 x i8> %i.pv, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vh = sub <64 x i8> zeroinitializer, %i.vg    ; 2 uses
  %i.vi = select <64 x i1> %i.uh, <64 x i8> %i.vh, <64 x i8> %i.vg
  %i.vj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vf, <64 x i8> %i.ug, <64 x i8> %i.vi)
  %i.vk = shufflevector <64 x i8> %i.pl, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vl = sub <64 x i8> zeroinitializer, %i.vk    ; 2 uses
  %i.vm = select <64 x i1> %i.up, <64 x i8> %i.vl, <64 x i8> %i.vk
  %i.vn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vj, <64 x i8> %i.uo, <64 x i8> %i.vm)
  %i.vo = shufflevector <64 x i8> %i.pf, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vp = sub <64 x i8> zeroinitializer, %i.vo    ; 2 uses
  %i.vq = select <64 x i1> %i.ux, <64 x i8> %i.vp, <64 x i8> %i.vo
  %i.vr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vn, <64 x i8> %i.uw, <64 x i8> %i.vq)
  %i.vs = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.vt = shufflevector <32 x i8> %i.vs, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.vu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vt, i1 false) ; 2 uses
  %i.vv = icmp slt <64 x i8> %i.vt, zeroinitializer ; 2 uses
  %i.vw = select <64 x i1> %i.vv, <64 x i8> %i.ub, <64 x i8> %i.ua
  %i.vx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.vu, <64 x i8> %i.vw)
  %i.vy = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.vz = shufflevector <32 x i8> %i.vy, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wa = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vz, i1 false) ; 2 uses
  %i.wb = icmp slt <64 x i8> %i.vz, zeroinitializer ; 2 uses
  %i.wc = select <64 x i1> %i.wb, <64 x i8> %i.uj, <64 x i8> %i.ui
  %i.wd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vx, <64 x i8> %i.wa, <64 x i8> %i.wc)
  %i.we = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.wf = shufflevector <32 x i8> %i.we, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wf, i1 false) ; 2 uses
  %i.wh = icmp slt <64 x i8> %i.wf, zeroinitializer ; 2 uses
  %i.wi = select <64 x i1> %i.wh, <64 x i8> %i.ur, <64 x i8> %i.uq
  %i.wj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wd, <64 x i8> %i.wg, <64 x i8> %i.wi)
  %i.wk = bitcast <8 x i32> %i.qn to <32 x i8>
  %i.wl = shufflevector <32 x i8> %i.wk, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wl, i1 false) ; 2 uses
  %i.wn = icmp slt <64 x i8> %i.wl, zeroinitializer ; 2 uses
  %i.wo = select <64 x i1> %i.wn, <64 x i8> %i.uz, <64 x i8> %i.uy
  %i.wp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wj, <64 x i8> %i.wm, <64 x i8> %i.wo)
  %i.wq = select <64 x i1> %i.vv, <64 x i8> %i.vd, <64 x i8> %i.vc
  %i.wr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.vu, <64 x i8> %i.wq)
  %i.ws = select <64 x i1> %i.wb, <64 x i8> %i.vh, <64 x i8> %i.vg
  %i.wt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wr, <64 x i8> %i.wa, <64 x i8> %i.ws)
  %i.wu = select <64 x i1> %i.wh, <64 x i8> %i.vl, <64 x i8> %i.vk
  %i.wv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wt, <64 x i8> %i.wg, <64 x i8> %i.wu)
  %i.ww = select <64 x i1> %i.wn, <64 x i8> %i.vp, <64 x i8> %i.vo
  %i.wx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wv, <64 x i8> %i.wm, <64 x i8> %i.ww)
  %i.wy = add <16 x i32> %i.vb, %i.rz             ; 2 uses
  %i.wz = add <16 x i32> %i.vr, %i.sp             ; 2 uses
  %i.xa = add <16 x i32> %i.wp, %i.tn             ; 2 uses
  %i.xb = add <16 x i32> %i.wx, %i.tv             ; 2 uses
  %i.xc = shufflevector <16 x i32> %i.wy, <16 x i32> %i.wz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xd = shufflevector <16 x i32> %i.wy, <16 x i32> %i.wz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xe = shufflevector <16 x i32> %i.xa, <16 x i32> %i.xb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xf = shufflevector <16 x i32> %i.xa, <16 x i32> %i.xb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xg = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.ql, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !143
  %i.xh = bitcast <4 x i32> %i.xg to <8 x half>
  %i.xi = shufflevector <8 x half> %i.xh, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xj = fpext <16 x half> %i.xi to <16 x float> ; 4 uses
  %i.xk = sitofp <16 x i32> %i.xc to <16 x float>
  %i.xl = shufflevector <16 x float> %i.xj, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.xm = fmul <16 x float> %i.xl, %i.qk
  %i.xn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xk, <16 x float> %i.xm, <16 x float> %i.ot) ; 2 uses
  %i.xo = sitofp <16 x i32> %i.xd to <16 x float>
  %i.xp = shufflevector <16 x float> %i.xj, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.xq = fmul <16 x float> %i.xp, %i.qk
  %i.xr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xo, <16 x float> %i.xq, <16 x float> %i.os) ; 2 uses
  %i.xs = sitofp <16 x i32> %i.xe to <16 x float>
  %i.xt = shufflevector <16 x float> %i.xj, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
end_hunk_2
begin_hunk_3_@ggml_gemm_iq4_nl_8x8_q8_0:bb.a
  %i.yv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.yx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1252.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1254.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1256.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1258.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1260.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1262.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1264.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1266.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1268.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1270.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1272.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1274.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1276.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1278.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1280.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.yy = mul i64 %.2.i, %2
  %i.yz = shl i64 %i.yy, 4
  %i.za = shl nsw i64 %.0987.i, 5                 ; 16 uses
  %i.zb = shl i64 %2, 6
  %i.zc = sub nsw i64 %i.yn, %.0987.i
  %i.zd = shl nsw i64 %i.zc, 5                    ; 16 uses
  %i.ze = shl nsw i64 %.2.i, 2                    ; 15 uses
  %i.zf = or disjoint i64 %i.ze, 1
  %i.zg = mul i64 %2, %i.zf
  %i.zh = shl i64 %i.zg, 2
  %i.zi = or disjoint i64 %i.ze, 2
  %i.zj = mul i64 %2, %i.zi
  %i.zk = shl i64 %i.zj, 2
  %i.zl = or disjoint i64 %i.ze, 3
  %i.zm = mul i64 %2, %i.zl
  %i.zn = shl i64 %i.zm, 2
  %i.zo = add i64 %i.ze, 4
  %i.zp = mul i64 %2, %i.zo
  %i.zq = shl i64 %i.zp, 2
  %i.zr = add i64 %i.ze, 5
  %i.zs = mul i64 %2, %i.zr
  %i.zt = shl i64 %i.zs, 2
  %i.zu = add i64 %i.ze, 6
  %i.zv = mul i64 %2, %i.zu
  %i.zw = shl i64 %i.zv, 2
  %i.zx = add i64 %i.ze, 7
  %i.zy = mul i64 %2, %i.zx
  %i.zz = shl i64 %i.zy, 2
  %i.aaa = add i64 %i.ze, 8
  %i.aab = mul i64 %2, %i.aaa
  %i.aac = shl i64 %i.aab, 2
  %i.aad = add i64 %i.ze, 9
  %i.aae = mul i64 %2, %i.aad
  %i.aaf = shl i64 %i.aae, 2
  %i.aag = add i64 %i.ze, 10
  %i.aah = mul i64 %2, %i.aag
  %i.aai = shl i64 %i.aah, 2
  %i.aaj = add i64 %i.ze, 11
  %i.aak = mul i64 %2, %i.aaj
  %i.aal = shl i64 %i.aak, 2
  %i.aam = add i64 %i.ze, 12
  %i.aan = mul i64 %2, %i.aam
  %i.aao = shl i64 %i.aan, 2
  %i.aap = add i64 %i.ze, 13
  %i.aaq = mul i64 %2, %i.aap
  %i.aar = shl i64 %i.aaq, 2
  %i.aas = add i64 %i.ze, 14
  %i.aat = mul i64 %2, %i.aas
  %i.aau = shl i64 %i.aat, 2
  %i.aav = add i64 %i.ze, 15
  %i.aaw = mul i64 %2, %i.aav
  %i.aax = shl i64 %i.aaw, 2
  %i.aay = xor i64 %.2.i, -1
  %i.aaz = add i64 %i.aay, %i.o
  %i.aba = lshr i64 %i.aaz, 2
  %i.abb = getelementptr i8, ptr %1, i64 %i.yz
  %i.abc = getelementptr i8, ptr %i.abb, i64 %i.za
  %i.abd = getelementptr i8, ptr %1, i64 %i.zh
  %i.abe = getelementptr i8, ptr %i.abd, i64 %i.za
  %i.abf = getelementptr i8, ptr %1, i64 %i.zk
  %i.abg = getelementptr i8, ptr %i.abf, i64 %i.za
  %i.abh = getelementptr i8, ptr %1, i64 %i.zn
  %i.abi = getelementptr i8, ptr %i.abh, i64 %i.za
  %i.abj = getelementptr i8, ptr %1, i64 %i.zq
  %i.abk = getelementptr i8, ptr %i.abj, i64 %i.za
  %i.abl = getelementptr i8, ptr %1, i64 %i.zt
  %i.abm = getelementptr i8, ptr %i.abl, i64 %i.za
  %i.abn = getelementptr i8, ptr %1, i64 %i.zw
  %i.abo = getelementptr i8, ptr %i.abn, i64 %i.za
  %i.abp = getelementptr i8, ptr %1, i64 %i.zz
  %i.abq = getelementptr i8, ptr %i.abp, i64 %i.za
  %i.abr = getelementptr i8, ptr %1, i64 %i.aac
  %i.abs = getelementptr i8, ptr %i.abr, i64 %i.za
  %i.abt = getelementptr i8, ptr %1, i64 %i.aaf
  %i.abu = getelementptr i8, ptr %i.abt, i64 %i.za
  %i.abv = getelementptr i8, ptr %1, i64 %i.aai
  %i.abw = getelementptr i8, ptr %i.abv, i64 %i.za
  %i.abx = getelementptr i8, ptr %1, i64 %i.aal
  %i.aby = getelementptr i8, ptr %i.abx, i64 %i.za
  %i.abz = getelementptr i8, ptr %1, i64 %i.aao
  %i.aca = getelementptr i8, ptr %i.abz, i64 %i.za
  %i.acb = getelementptr i8, ptr %1, i64 %i.aar
  %i.acc = getelementptr i8, ptr %i.acb, i64 %i.za
  %i.acd = getelementptr i8, ptr %1, i64 %i.aau
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.za
  %i.acf = getelementptr i8, ptr %1, i64 %i.aax
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.za
  br label %.lr.ph1081.split.us.i

.lr.ph1081.split.us.i:                            ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1085.i ], [ 0, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  %.31079.us.i = phi i64 [ %i.amf, %._crit_edge.us1085.i ], [ %.2.i, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !144
  %i.ach = mul nsw i64 %.31079.us.i, %i.f
  %i.aci = getelementptr inbounds [136 x i8], ptr %4, i64 %i.ach ; 2 uses
  store ptr %i.aci, ptr %i.c, align 16, !tbaa !21, !noalias !144
  %i.acj = getelementptr inbounds [136 x i8], ptr %i.aci, i64 %i.f ; 2 uses
  store ptr %i.acj, ptr %i.yv, align 8, !tbaa !21, !noalias !144
  %i.ack = getelementptr inbounds [136 x i8], ptr %i.acj, i64 %i.f ; 2 uses
  store ptr %i.ack, ptr %i.yw, align 16, !tbaa !21, !noalias !144
  %i.acl = getelementptr inbounds [136 x i8], ptr %i.ack, i64 %i.f
  store ptr %i.acl, ptr %i.yx, align 8, !tbaa !21, !noalias !144
  %i.acm = shl nsw i64 %.31079.us.i, 2            ; 16 uses
  %i.acn = mul i64 %i.acm, %2
  %i.aco = or disjoint i64 %i.acm, 1
  %i.acp = mul i64 %i.aco, %2
  %i.acq = or disjoint i64 %i.acm, 2
  %i.acr = mul i64 %i.acq, %2
  %i.acs = or disjoint i64 %i.acm, 3
  %i.act = mul i64 %i.acs, %2
  %i.acu = add nsw i64 %i.acm, 4
  %i.acv = mul i64 %i.acu, %2
  %i.acw = add nsw i64 %i.acm, 5
  %i.acx = mul i64 %i.acw, %2
  %i.acy = add nsw i64 %i.acm, 6
  %i.acz = mul i64 %i.acy, %2
  %i.ada = add nsw i64 %i.acm, 7
  %i.adb = mul i64 %i.ada, %2
  %i.adc = add nsw i64 %i.acm, 8
  %i.add = mul i64 %i.adc, %2
  %i.ade = add nsw i64 %i.acm, 9
  %i.adf = mul i64 %i.ade, %2
  %i.adg = add nsw i64 %i.acm, 10
  %i.adh = mul i64 %i.adg, %2
  %i.adi = add nsw i64 %i.acm, 11
  %i.adj = mul i64 %i.adi, %2
  %i.adk = add nsw i64 %i.acm, 12
  %i.adl = mul i64 %i.adk, %2
  %i.adm = add nsw i64 %i.acm, 13
  %i.adn = mul i64 %i.adm, %2
  %i.ado = add nsw i64 %i.acm, 14
  %i.adp = mul i64 %i.ado, %2
  %i.adq = add nsw i64 %i.acm, 15
  %i.adr = mul i64 %i.adq, %2
  br i1 %i.yp, label %.preheader1015.us.i.us, label %.preheader1015.us.i.preheader

.preheader1015.us.i.preheader:                    ; preds = %.lr.ph1081.split.us.i
  %i.ads = mul i64 %i.zb, %indvar62               ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.abc, i64 %i.ads
  %scevgep65 = getelementptr i8, ptr %i.abe, i64 %i.ads
  %scevgep66 = getelementptr i8, ptr %i.abg, i64 %i.ads
  %scevgep67 = getelementptr i8, ptr %i.abi, i64 %i.ads
  %scevgep68 = getelementptr i8, ptr %i.abk, i64 %i.ads
  %scevgep69 = getelementptr i8, ptr %i.abm, i64 %i.ads
  %scevgep70 = getelementptr i8, ptr %i.abo, i64 %i.ads
  %scevgep71 = getelementptr i8, ptr %i.abq, i64 %i.ads
  %scevgep72 = getelementptr i8, ptr %i.abs, i64 %i.ads
  %scevgep73 = getelementptr i8, ptr %i.abu, i64 %i.ads
  %scevgep74 = getelementptr i8, ptr %i.abw, i64 %i.ads
  %scevgep75 = getelementptr i8, ptr %i.aby, i64 %i.ads
  %scevgep76 = getelementptr i8, ptr %i.aca, i64 %i.ads
  %scevgep77 = getelementptr i8, ptr %i.acc, i64 %i.ads
  %scevgep78 = getelementptr i8, ptr %i.ace, i64 %i.ads
  %scevgep79 = getelementptr i8, ptr %i.acg, i64 %i.ads
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep64, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep65, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep66, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep67, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep68, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep69, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep70, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep71, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep72, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep73, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep74, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep75, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep76, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep77, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep78, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep79, i8 0, i64 %i.zd, i1 false), !tbaa !9, !alias.scope !141
  br label %._crit_edge.us1085.i

.preheader1015.us.i.us:                           ; preds = %.lr.ph1081.split.us.i, %.preheader1014.us.loopexit.i.us
  %.09991077.us.i.us = phi i64 [ %i.ame, %.preheader1014.us.loopexit.i.us ], [ %.0987.i, %.lr.ph1081.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.d, i8 0, i64 512, i1 false), !tbaa !9, !noalias !144
  %i.adt = mul nsw i64 %.09991077.us.i.us, %i.f
  %i.adu = getelementptr inbounds [144 x i8], ptr %3, i64 %i.adt
  br label %.lr.ph1075.us.i.us

.lr.ph1075.us.i.us:                               ; preds = %bb.h, %.preheader1015.us.i.us
  %.010051074.us.i.us = phi i64 [ %i.amd, %bb.h ], [ 0, %.preheader1015.us.i.us ] ; 3 uses
  %i.adv = getelementptr inbounds nuw [144 x i8], ptr %i.adu, i64 %.010051074.us.i.us ; 5 uses
  %55 = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %56 = load <8 x i32>, ptr %55, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %57 = getelementptr inbounds nuw i8, ptr %i.adv, i64 48
  %58 = load <8 x i32>, ptr %57, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 80
  %59 = load <8 x i32>, ptr %i.adw, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 112
  %60 = load <8 x i32>, ptr %i.adx, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.ady = shufflevector <8 x i32> %56, <8 x i32> %58, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.adz = shufflevector <8 x i32> %56, <8 x i32> %58, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aea = shufflevector <8 x i32> %59, <8 x i32> %60, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aeb = shufflevector <8 x i32> %59, <8 x i32> %60, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aec = bitcast <8 x i32> %i.ady to <32 x i8>
  %i.aed = and <32 x i8> %i.aec, splat (i8 15)
  %i.aee = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aed) ; 2 uses
  %i.aef = bitcast <8 x i32> %i.adz to <32 x i8>
  %i.aeg = and <32 x i8> %i.aef, splat (i8 15)
  %i.aeh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aeg) ; 2 uses
  %i.aei = bitcast <8 x i32> %i.aea to <32 x i8>
  %i.aej = and <32 x i8> %i.aei, splat (i8 15)
  %i.aek = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aej) ; 2 uses
  %i.ael = bitcast <8 x i32> %i.aeb to <32 x i8>
  %i.aem = and <32 x i8> %i.ael, splat (i8 15)
  %i.aen = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aem) ; 2 uses
  %i.aeo = bitcast <8 x i32> %i.ady to <16 x i16>
  %i.aep = lshr <16 x i16> %i.aeo, splat (i16 4)
  %i.aeq = bitcast <16 x i16> %i.aep to <32 x i8>
  %i.aer = and <32 x i8> %i.aeq, splat (i8 15)
  %i.aes = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aer) ; 2 uses
  %i.aet = bitcast <8 x i32> %i.adz to <16 x i16>
  %i.aeu = lshr <16 x i16> %i.aet, splat (i16 4)
  %i.aev = bitcast <16 x i16> %i.aeu to <32 x i8>
  %i.aew = and <32 x i8> %i.aev, splat (i8 15)
  %i.aex = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aew) ; 2 uses
  %i.aey = bitcast <8 x i32> %i.aea to <16 x i16>
  %i.aez = lshr <16 x i16> %i.aey, splat (i16 4)
  %i.afa = bitcast <16 x i16> %i.aez to <32 x i8>
  %i.afb = and <32 x i8> %i.afa, splat (i8 15)
  %i.afc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.afb) ; 2 uses
  %i.afd = bitcast <8 x i32> %i.aeb to <16 x i16>
  %i.afe = lshr <16 x i16> %i.afd, splat (i16 4)
  %i.aff = bitcast <16 x i16> %i.afe to <32 x i8>
  %i.afg = and <32 x i8> %i.aff, splat (i8 15)
  %i.afh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.afg) ; 2 uses
  %i.afi = load <8 x half>, ptr %i.adv, align 1, !tbaa !9, !alias.scope !142
  %i.afj = fpext <8 x half> %i.afi to <8 x float> ; 4 uses
  %i.afk = shufflevector <32 x i8> %i.afc, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afl = shufflevector <32 x i8> %i.aes, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afm = shufflevector <32 x i8> %i.aek, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afn = shufflevector <32 x i8> %i.aee, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afo = shufflevector <32 x i8> %i.afh, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afp = shufflevector <32 x i8> %i.aex, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afq = shufflevector <32 x i8> %i.aen, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afr = shufflevector <32 x i8> %i.aeh, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afs = shufflevector <32 x i8> %i.afc, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aft = shufflevector <32 x i8> %i.aes, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afu = shufflevector <32 x i8> %i.aek, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afv = shufflevector <32 x i8> %i.aee, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afw = shufflevector <32 x i8> %i.afh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afx = shufflevector <32 x i8> %i.aex, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afy = shufflevector <32 x i8> %i.aen, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afz = shufflevector <32 x i8> %i.aeh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph1075.us.i.us
  %indvars.iv1165.i.us = phi i64 [ %indvars.iv.next1166.i.us, %bb.g ], [ 0, %.lr.ph1075.us.i.us ] ; 3 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1165.i.us
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !21, !noalias !144
  %i.agc = getelementptr inbounds nuw [136 x i8], ptr %i.agb, i64 %.010051074.us.i.us ; 5 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %i.age = load <8 x i32>, ptr %i.agd, align 1, !tbaa !9, !noalias !145 ; 4 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 40
  %i.agg = load <8 x i32>, ptr %i.agf, align 1, !tbaa !9, !noalias !145 ; 4 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agc, i64 72
  %i.agi = load <8 x i32>, ptr %i.agh, align 1, !tbaa !9, !noalias !145 ; 4 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agc, i64 104
  %i.agk = load <8 x i32>, ptr %i.agj, align 1, !tbaa !9, !noalias !145 ; 4 uses
  %i.agl = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.agm = shufflevector <32 x i8> %i.agl, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.agn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agm, <32 x i8> %i.agm) ; 2 uses
  %i.ago = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afk, <32 x i8> %i.agm)
  %i.agp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.agn, <32 x i8> %i.ago)
  %i.agq = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.agr = shufflevector <32 x i8> %i.agq, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ags = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agr, <32 x i8> %i.agr) ; 2 uses
  %i.agt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afl, <32 x i8> %i.agr)
  %i.agu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.agp, <32 x i8> %i.ags, <32 x i8> %i.agt)
  %i.agv = bitcast <8 x i32> %i.agg to <32 x i8>
  %i.agw = shufflevector <32 x i8> %i.agv, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.agx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agw, <32 x i8> %i.agw) ; 2 uses
  %i.agy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afm, <32 x i8> %i.agw)
  %i.agz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.agu, <32 x i8> %i.agx, <32 x i8> %i.agy)
  %i.aha = bitcast <8 x i32> %i.age to <32 x i8>
  %i.ahb = shufflevector <32 x i8> %i.aha, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ahc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahb, <32 x i8> %i.ahb) ; 2 uses
  %i.ahd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afn, <32 x i8> %i.ahb)
  %i.ahe = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.agz, <32 x i8> %i.ahc, <32 x i8> %i.ahd)
  %i.ahf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afo, <32 x i8> %i.agm)
  %i.ahg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.agn, <32 x i8> %i.ahf)
  %i.ahh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afp, <32 x i8> %i.agr)
  %i.ahi = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahg, <32 x i8> %i.ags, <32 x i8> %i.ahh)
  %i.ahj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afq, <32 x i8> %i.agw)
  %i.ahk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahi, <32 x i8> %i.agx, <32 x i8> %i.ahj)
  %i.ahl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afr, <32 x i8> %i.ahb)
  %i.ahm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahk, <32 x i8> %i.ahc, <32 x i8> %i.ahl)
  %i.ahn = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.aho = shufflevector <32 x i8> %i.ahn, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ahp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aho, <32 x i8> %i.aho) ; 2 uses
  %i.ahq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afk, <32 x i8> %i.aho)
  %i.ahr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ahp, <32 x i8> %i.ahq)
  %i.ahs = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.aht = shufflevector <32 x i8> %i.ahs, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ahu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aht, <32 x i8> %i.aht) ; 2 uses
  %i.ahv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afl, <32 x i8> %i.aht)
  %i.ahw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahr, <32 x i8> %i.ahu, <32 x i8> %i.ahv)
  %i.ahx = bitcast <8 x i32> %i.agg to <32 x i8>
  %i.ahy = shufflevector <32 x i8> %i.ahx, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ahz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahy, <32 x i8> %i.ahy) ; 2 uses
  %i.aia = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afm, <32 x i8> %i.ahy)
  %i.aib = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahw, <32 x i8> %i.ahz, <32 x i8> %i.aia)
  %i.aic = bitcast <8 x i32> %i.age to <32 x i8>
  %i.aid = shufflevector <32 x i8> %i.aic, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.aie = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aid, <32 x i8> %i.aid) ; 2 uses
  %i.aif = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afn, <32 x i8> %i.aid)
  %i.aig = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aib, <32 x i8> %i.aie, <32 x i8> %i.aif)
  %i.aih = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afo, <32 x i8> %i.aho)
  %i.aii = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ahp, <32 x i8> %i.aih)
  %i.aij = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afp, <32 x i8> %i.aht)
  %i.aik = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aii, <32 x i8> %i.ahu, <32 x i8> %i.aij)
  %i.ail = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afq, <32 x i8> %i.ahy)
  %i.aim = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aik, <32 x i8> %i.ahz, <32 x i8> %i.ail)
  %i.ain = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afr, <32 x i8> %i.aid)
  %i.aio = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aim, <32 x i8> %i.aie, <32 x i8> %i.ain)
  %i.aip = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.aiq = shufflevector <32 x i8> %i.aip, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.air = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiq, <32 x i8> %i.aiq) ; 2 uses
  %i.ais = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afs, <32 x i8> %i.aiq)
  %i.ait = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.air, <32 x i8> %i.ais)
  %i.aiu = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.aiv = shufflevector <32 x i8> %i.aiu, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aiw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiv, <32 x i8> %i.aiv) ; 2 uses
  %i.aix = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aft, <32 x i8> %i.aiv)
  %i.aiy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ait, <32 x i8> %i.aiw, <32 x i8> %i.aix)
  %i.aiz = bitcast <8 x i32> %i.agg to <32 x i8>
  %i.aja = shufflevector <32 x i8> %i.aiz, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ajb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aja, <32 x i8> %i.aja) ; 2 uses
  %i.ajc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afu, <32 x i8> %i.aja)
  %i.ajd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aiy, <32 x i8> %i.ajb, <32 x i8> %i.ajc)
  %i.aje = bitcast <8 x i32> %i.age to <32 x i8>
  %i.ajf = shufflevector <32 x i8> %i.aje, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ajg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajf, <32 x i8> %i.ajf) ; 2 uses
  %i.ajh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afv, <32 x i8> %i.ajf)
  %i.aji = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajd, <32 x i8> %i.ajg, <32 x i8> %i.ajh)
  %i.ajj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afw, <32 x i8> %i.aiq)
  %i.ajk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.air, <32 x i8> %i.ajj)
  %i.ajl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afx, <32 x i8> %i.aiv)
  %i.ajm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajk, <32 x i8> %i.aiw, <32 x i8> %i.ajl)
  %i.ajn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afy, <32 x i8> %i.aja)
  %i.ajo = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajm, <32 x i8> %i.ajb, <32 x i8> %i.ajn)
  %i.ajp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afz, <32 x i8> %i.ajf)
  %i.ajq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajo, <32 x i8> %i.ajg, <32 x i8> %i.ajp)
  %i.ajr = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.ajs = shufflevector <32 x i8> %i.ajr, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.ajt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajs, <32 x i8> %i.ajs) ; 2 uses
  %i.aju = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afs, <32 x i8> %i.ajs)
  %i.ajv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajt, <32 x i8> %i.aju)
  %i.ajw = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.ajx = shufflevector <32 x i8> %i.ajw, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.ajy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajx, <32 x i8> %i.ajx) ; 2 uses
  %i.ajz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aft, <32 x i8> %i.ajx)
  %i.aka = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajv, <32 x i8> %i.ajy, <32 x i8> %i.ajz)
  %i.akb = bitcast <8 x i32> %i.agg to <32 x i8>
  %i.akc = shufflevector <32 x i8> %i.akb, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.akd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akc, <32 x i8> %i.akc) ; 2 uses
  %i.ake = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afu, <32 x i8> %i.akc)
  %i.akf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aka, <32 x i8> %i.akd, <32 x i8> %i.ake)
  %i.akg = bitcast <8 x i32> %i.age to <32 x i8>
  %i.akh = shufflevector <32 x i8> %i.akg, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aki = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akh, <32 x i8> %i.akh) ; 2 uses
  %i.akj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afv, <32 x i8> %i.akh)
  %i.akk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akf, <32 x i8> %i.aki, <32 x i8> %i.akj)
  %i.akl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afw, <32 x i8> %i.ajs)
  %i.akm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajt, <32 x i8> %i.akl)
  %i.akn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afx, <32 x i8> %i.ajx)
  %i.ako = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akm, <32 x i8> %i.ajy, <32 x i8> %i.akn)
  %i.akp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afy, <32 x i8> %i.akc)
  %i.akq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ako, <32 x i8> %i.akd, <32 x i8> %i.akp)
  %i.akr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afz, <32 x i8> %i.akh)
  %i.aks = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akq, <32 x i8> %i.aki, <32 x i8> %i.akr)
  %i.akt = add <8 x i32> %i.aji, %i.ahe           ; 2 uses
  %i.aku = add <8 x i32> %i.ajq, %i.ahm           ; 2 uses
  %i.akv = add <8 x i32> %i.akk, %i.aig           ; 2 uses
  %i.akw = add <8 x i32> %i.aks, %i.aio           ; 2 uses
  %i.akx = shufflevector <8 x i32> %i.akt, <8 x i32> %i.aku, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.aky = shufflevector <8 x i32> %i.akt, <8 x i32> %i.aku, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.akz = shufflevector <8 x i32> %i.akv, <8 x i32> %i.akw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ala = shufflevector <8 x i32> %i.akv, <8 x i32> %i.akw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.alb = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.agc, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !145
  %i.alc = bitcast <4 x i32> %i.alb to <8 x half>
  %i.ald = shufflevector <8 x half> %i.alc, <8 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ale = fpext <8 x half> %i.ald to <8 x float> ; 4 uses
  %i.alf = sitofp <8 x i32> %i.akx to <8 x float>
  %i.alg = shufflevector <8 x float> %i.ale, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.alh = fmul <8 x float> %i.alg, %i.afj
  %.idx1301.i.us = shl nuw nsw i64 %indvars.iv1165.i.us, 7
  %i.ali = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx1301.i.us ; 5 uses
  %i.alj = load <8 x float>, ptr %i.ali, align 32, !tbaa !9, !noalias !144
  %i.alk = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.alf, <8 x float> %i.alh, <8 x float> %i.alj)
  store <8 x float> %i.alk, ptr %i.ali, align 32, !tbaa !9, !noalias !144
  %i.all = sitofp <8 x i32> %i.aky to <8 x float>
  %i.alm = shufflevector <8 x float> %i.ale, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.aln = fmul <8 x float> %i.alm, %i.afj
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ali, i64 32 ; 2 uses
  %i.alp = load <8 x float>, ptr %i.alo, align 32, !tbaa !9, !noalias !144
  %i.alq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.all, <8 x float> %i.aln, <8 x float> %i.alp)
  store <8 x float> %i.alq, ptr %i.alo, align 32, !tbaa !9, !noalias !144
  %i.alr = sitofp <8 x i32> %i.akz to <8 x float>
  %i.als = shufflevector <8 x float> %i.ale, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.alt = fmul <8 x float> %i.als, %i.afj
  %i.alu = getelementptr inbounds nuw i8, ptr %i.ali, i64 64 ; 2 uses
  %i.alv = load <8 x float>, ptr %i.alu, align 32, !tbaa !9, !noalias !144
  %i.alw = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.alr, <8 x float> %i.alt, <8 x float> %i.alv)
  store <8 x float> %i.alw, ptr %i.alu, align 32, !tbaa !9, !noalias !144
  %i.alx = sitofp <8 x i32> %i.ala to <8 x float>
  %i.aly = shufflevector <8 x float> %i.ale, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7>
  %i.alz = fmul <8 x float> %i.aly, %i.afj
  %i.ama = getelementptr inbounds nuw i8, ptr %i.ali, i64 96 ; 2 uses
  %i.amb = load <8 x float>, ptr %i.ama, align 32, !tbaa !9, !noalias !144
  %i.amc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.alx, <8 x float> %i.alz, <8 x float> %i.amb)
  store <8 x float> %i.amc, ptr %i.ama, align 32, !tbaa !9, !noalias !144
  %indvars.iv.next1166.i.us = add nuw nsw i64 %indvars.iv1165.i.us, 1 ; 2 uses
  %exitcond1168.not.i.us = icmp eq i64 %indvars.iv.next1166.i.us, 4
  br i1 %exitcond1168.not.i.us, label %bb.h, label %bb.g, !llvm.loop !133

bb.h:                                             ; preds = %bb.g
  %i.amd = add nuw nsw i64 %.010051074.us.i.us, 1 ; 2 uses
  %exitcond1169.not.i.us = icmp eq i64 %i.amd, %i.f
  br i1 %exitcond1169.not.i.us, label %.preheader1014.us.loopexit.i.us, label %.lr.ph1075.us.i.us, !llvm.loop !134

.preheader1014.us.loopexit.i.us:                  ; preds = %bb.h
  %.pre1251.i.us = load <8 x float>, ptr %i.d, align 32, !tbaa !9, !noalias !144
  %.pre1253.i.us = load <8 x float>, ptr %.phi.trans.insert1252.i, align 32, !tbaa !9, !noalias !144
  %.pre1255.i.us = load <8 x float>, ptr %.phi.trans.insert1254.i, align 32, !tbaa !9, !noalias !144
  %.pre1257.i.us = load <8 x float>, ptr %.phi.trans.insert1256.i, align 32, !tbaa !9, !noalias !144
  %.pre1259.i.us = load <8 x float>, ptr %.phi.trans.insert1258.i, align 32, !tbaa !9, !noalias !144
  %.pre1261.i.us = load <8 x float>, ptr %.phi.trans.insert1260.i, align 32, !tbaa !9, !noalias !144
  %.pre1263.i.us = load <8 x float>, ptr %.phi.trans.insert1262.i, align 32, !tbaa !9, !noalias !144
  %.pre1265.i.us = load <8 x float>, ptr %.phi.trans.insert1264.i, align 32, !tbaa !9, !noalias !144
  %.pre1267.i.us = load <8 x float>, ptr %.phi.trans.insert1266.i, align 32, !tbaa !9, !noalias !144
  %.pre1269.i.us = load <8 x float>, ptr %.phi.trans.insert1268.i, align 32, !tbaa !9, !noalias !144
  %.pre1271.i.us = load <8 x float>, ptr %.phi.trans.insert1270.i, align 32, !tbaa !9, !noalias !144
  %.pre1273.i.us = load <8 x float>, ptr %.phi.trans.insert1272.i, align 32, !tbaa !9, !noalias !144
  %.pre1275.i.us = load <8 x float>, ptr %.phi.trans.insert1274.i, align 32, !tbaa !9, !noalias !144
  %.pre1277.i.us = load <8 x float>, ptr %.phi.trans.insert1276.i, align 32, !tbaa !9, !noalias !144
  %.pre1279.i.us = load <8 x float>, ptr %.phi.trans.insert1278.i, align 32, !tbaa !9, !noalias !144
  %.pre1281.i.us = load <8 x float>, ptr %.phi.trans.insert1280.i, align 32, !tbaa !9, !noalias !144
  %.idx1009.us.i.us = shl i64 %.09991077.us.i.us, 5
  %invariant.gep.us1083.i.us = getelementptr i8, ptr %1, i64 %.idx1009.us.i.us ; 16 uses
  %gep.us1084.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acn
  store <8 x float> %.pre1251.i.us, ptr %gep.us1084.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.1.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acp
  store <8 x float> %.pre1253.i.us, ptr %gep.us1084.1.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.2.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acr
  store <8 x float> %.pre1255.i.us, ptr %gep.us1084.2.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.3.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.act
  store <8 x float> %.pre1257.i.us, ptr %gep.us1084.3.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.4.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acv
  store <8 x float> %.pre1259.i.us, ptr %gep.us1084.4.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.5.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acx
  store <8 x float> %.pre1261.i.us, ptr %gep.us1084.5.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.6.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.acz
  store <8 x float> %.pre1263.i.us, ptr %gep.us1084.6.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.7.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adb
  store <8 x float> %.pre1265.i.us, ptr %gep.us1084.7.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.8.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.add
  store <8 x float> %.pre1267.i.us, ptr %gep.us1084.8.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.9.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adf
  store <8 x float> %.pre1269.i.us, ptr %gep.us1084.9.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.10.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adh
  store <8 x float> %.pre1271.i.us, ptr %gep.us1084.10.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.11.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adj
  store <8 x float> %.pre1273.i.us, ptr %gep.us1084.11.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.12.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adl
  store <8 x float> %.pre1275.i.us, ptr %gep.us1084.12.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.13.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adn
  store <8 x float> %.pre1277.i.us, ptr %gep.us1084.13.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.14.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adp
  store <8 x float> %.pre1279.i.us, ptr %gep.us1084.14.i.us, align 1, !tbaa !9, !alias.scope !141
  %gep.us1084.15.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1083.i.us, i64 %i.adr
  store <8 x float> %.pre1281.i.us, ptr %gep.us1084.15.i.us, align 1, !tbaa !9, !alias.scope !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13, !noalias !144
  %i.ame = add nsw i64 %.09991077.us.i.us, 1      ; 2 uses
  %exitcond1174.not.i.us = icmp eq i64 %i.ame, %i.yn
  br i1 %exitcond1174.not.i.us, label %._crit_edge.us1085.i, label %.preheader1015.us.i.us, !llvm.loop !135

._crit_edge.us1085.i:                             ; preds = %.preheader1014.us.loopexit.i.us, %.preheader1015.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13, !noalias !144
  %i.amf = add nsw i64 %.31079.us.i, 4            ; 2 uses
  %indvar.next63 = add nuw nsw i64 %indvar62, 1
  %exitcond80.not = icmp eq i64 %indvar62, %i.aba
  br i1 %exitcond80.not, label %.preheader1013.i, label %.lr.ph1081.split.us.i, !llvm.loop !136

.preheader1013.i:                                 ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.i.preheader, %bb.f
  %.3.lcssa.i = phi i64 [ %.2.i, %bb.f ], [ %i.yu, %.lr.ph1081.split.i.preheader ], [ %i.amf, %._crit_edge.us1085.i ] ; 6 uses
  %i.amg = icmp slt i64 %.3.lcssa.i, %i.mx
  br i1 %i.amg, label %.lr.ph1104.i, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit

.lr.ph1104.i:                                     ; preds = %.preheader1013.i
  %i.amh = sdiv i32 %6, 8
  %i.ami = sext i32 %i.amh to i64                 ; 3 uses
  %i.amj = icmp slt i64 %.0987.i, %i.ami
  br i1 %i.amj, label %.lr.ph1104.split.i, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit

.lr.ph1104.split.i:                               ; preds = %.lr.ph1104.i
  %i.amk = icmp sgt i32 %0, 31
  br i1 %i.amk, label %.lr.ph1100.us.i, label %.lr.ph1100.i.preheader

.lr.ph1100.i.preheader:                           ; preds = %.lr.ph1104.split.i
  %i.aml = mul i64 %.3.lcssa.i, %2
  %i.amm = shl i64 %i.aml, 4
  %i.amn = shl nsw i64 %.0987.i, 5                ; 4 uses
  %i.amo = shl i64 %2, 4                          ; 5 uses
  %i.amp = sub nsw i64 %i.ami, %.0987.i
  %i.amq = shl nsw i64 %i.amp, 5                  ; 20 uses
  %i.amr = shl i64 %.3.lcssa.i, 2                 ; 3 uses
  %i.ams = or disjoint i64 %i.amr, 1
  %i.amt = mul i64 %2, %i.ams
  %i.amu = shl i64 %i.amt, 2
  %i.amv = or disjoint i64 %i.amr, 2
  %i.amw = mul i64 %2, %i.amv
  %i.amx = shl i64 %i.amw, 2
  %i.amy = or disjoint i64 %i.amr, 3
  %i.amz = mul i64 %2, %i.amy
  %i.ana = shl i64 %i.amz, 2
  %i.anb = getelementptr i8, ptr %1, i64 %i.ana
  %i.anc = getelementptr i8, ptr %i.anb, i64 %i.amn ; 5 uses
  %i.and = getelementptr i8, ptr %1, i64 %i.amx
  %i.ane = getelementptr i8, ptr %i.and, i64 %i.amn ; 5 uses
  %i.anf = getelementptr i8, ptr %1, i64 %i.amu
  %i.ang = getelementptr i8, ptr %i.anf, i64 %i.amn ; 5 uses
  %i.anh = getelementptr i8, ptr %1, i64 %i.amm
  %i.ani = getelementptr i8, ptr %i.anh, i64 %i.amn ; 5 uses
  %i.anj = sub i64 %i.mx, %.3.lcssa.i             ; 2 uses
  %xtraiter167 = and i64 %i.anj, 3                ; 3 uses
  %i.ank = sub i64 %.3.lcssa.i, %i.mx
  %i.anl = icmp ugt i64 %i.ank, -4
  br i1 %i.anl, label %.lr.ph1100.i.epil.preheader, label %.lr.ph1100.i.preheader.new

.lr.ph1100.i.preheader.new:                       ; preds = %.lr.ph1100.i.preheader
  %unroll_iter171 = and i64 %i.anj, -4
  br label %.lr.ph1100.i

.lr.ph1100.us.i:                                  ; preds = %.lr.ph1104.split.i, %._crit_edge.split.us.us.i
  %.41103.us.i = phi i64 [ %i.awc, %._crit_edge.split.us.us.i ], [ %.3.lcssa.i, %.lr.ph1104.split.i ] ; 3 uses
  %i.anm = mul nsw i64 %.41103.us.i, %i.f
  %i.ann = getelementptr inbounds [136 x i8], ptr %4, i64 %i.anm
  %i.ano = shl nsw i64 %.41103.us.i, 2            ; 4 uses
  %i.anp = mul i64 %i.ano, %2
  %i.anq = or disjoint i64 %i.ano, 1
  %i.anr = mul i64 %i.anq, %2
  %i.ans = or disjoint i64 %i.ano, 2
  %i.ant = mul i64 %i.ans, %2
  %i.anu = or disjoint i64 %i.ano, 3
  %i.anv = mul i64 %i.anu, %2
  br label %.preheader1012.us.us.i

.preheader1012.us.us.i:                           ; preds = %..preheader_crit_edge.us.us.i, %.lr.ph1100.us.i
  %.010031099.us.us.i = phi i64 [ %.0987.i, %.lr.ph1100.us.i ], [ %i.awb, %..preheader_crit_edge.us.us.i ] ; 3 uses
  %i.anw = mul nsw i64 %.010031099.us.us.i, %i.f
  %i.anx = getelementptr inbounds [144 x i8], ptr %3, i64 %i.anw
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader1012.us.us.i
  %i.any = phi <8 x float> [ zeroinitializer, %.preheader1012.us.us.i ], [ %i.avz, %bb.i ]
  %i.anz = phi <8 x float> [ zeroinitializer, %.preheader1012.us.us.i ], [ %i.avv, %bb.i ]
  %i.aoa = phi <8 x float> [ zeroinitializer, %.preheader1012.us.us.i ], [ %i.avr, %bb.i ]
  %.010011089.us.us.i = phi i64 [ 0, %.preheader1012.us.us.i ], [ %i.awa, %bb.i ] ; 3 uses
  %i.aob = phi <8 x float> [ zeroinitializer, %.preheader1012.us.us.i ], [ %i.avn, %bb.i ]
  %i.aoc = getelementptr inbounds nuw [144 x i8], ptr %i.anx, i64 %.010011089.us.us.i ; 5 uses
  %61 = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  %62 = load <8 x i32>, ptr %61, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %63 = getelementptr inbounds nuw i8, ptr %i.aoc, i64 48
  %64 = load <8 x i32>, ptr %63, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 80
  %65 = load <8 x i32>, ptr %i.aod, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aoc, i64 112
  %66 = load <8 x i32>, ptr %i.aoe, align 1, !tbaa !9, !alias.scope !142 ; 2 uses
  %i.aof = shufflevector <8 x i32> %62, <8 x i32> %64, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aog = shufflevector <8 x i32> %62, <8 x i32> %64, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aoh = shufflevector <8 x i32> %65, <8 x i32> %66, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aoi = shufflevector <8 x i32> %65, <8 x i32> %66, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aoj = bitcast <8 x i32> %i.aof to <32 x i8>
  %i.aok = and <32 x i8> %i.aoj, splat (i8 15)
  %i.aol = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aok) ; 2 uses
  %i.aom = bitcast <8 x i32> %i.aog to <32 x i8>
  %i.aon = and <32 x i8> %i.aom, splat (i8 15)
  %i.aoo = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aon) ; 2 uses
  %i.aop = bitcast <8 x i32> %i.aoh to <32 x i8>
  %i.aoq = and <32 x i8> %i.aop, splat (i8 15)
  %i.aor = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aoq) ; 2 uses
  %i.aos = bitcast <8 x i32> %i.aoi to <32 x i8>
  %i.aot = and <32 x i8> %i.aos, splat (i8 15)
  %i.aou = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aot) ; 2 uses
  %i.aov = bitcast <8 x i32> %i.aof to <16 x i16>
  %i.aow = lshr <16 x i16> %i.aov, splat (i16 4)
  %i.aox = bitcast <16 x i16> %i.aow to <32 x i8>
  %i.aoy = and <32 x i8> %i.aox, splat (i8 15)
  %i.aoz = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aoy) ; 2 uses
  %i.apa = bitcast <8 x i32> %i.aog to <16 x i16>
  %i.apb = lshr <16 x i16> %i.apa, splat (i16 4)
  %i.apc = bitcast <16 x i16> %i.apb to <32 x i8>
  %i.apd = and <32 x i8> %i.apc, splat (i8 15)
  %i.ape = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.apd) ; 2 uses
  %i.apf = bitcast <8 x i32> %i.aoh to <16 x i16>
  %i.apg = lshr <16 x i16> %i.apf, splat (i16 4)
  %i.aph = bitcast <16 x i16> %i.apg to <32 x i8>
  %i.api = and <32 x i8> %i.aph, splat (i8 15)
  %i.apj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.api) ; 2 uses
  %i.apk = bitcast <8 x i32> %i.aoi to <16 x i16>
  %i.apl = lshr <16 x i16> %i.apk, splat (i16 4)
  %i.apm = bitcast <16 x i16> %i.apl to <32 x i8>
  %i.apn = and <32 x i8> %i.apm, splat (i8 15)
  %i.apo = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.apn) ; 2 uses
  %i.app = load <8 x half>, ptr %i.aoc, align 1, !tbaa !9, !alias.scope !142
  %i.apq = fpext <8 x half> %i.app to <8 x float> ; 4 uses
  %i.apr = getelementptr inbounds nuw [136 x i8], ptr %i.ann, i64 %.010011089.us.us.i ; 5 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  %i.apt = load <8 x i32>, ptr %i.aps, align 1, !tbaa !9, !alias.scope !143 ; 4 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apr, i64 40
  %i.apv = load <8 x i32>, ptr %i.apu, align 1, !tbaa !9, !alias.scope !143 ; 4 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apr, i64 72
  %i.apx = load <8 x i32>, ptr %i.apw, align 1, !tbaa !9, !alias.scope !143 ; 4 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apr, i64 104
  %i.apz = load <8 x i32>, ptr %i.apy, align 1, !tbaa !9, !alias.scope !143 ; 4 uses
  %i.aqa = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.aqb = shufflevector <32 x i8> %i.aqa, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqb, <32 x i8> %i.aqb) ; 2 uses
  %i.aqd = shufflevector <32 x i8> %i.apj, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqe = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqd, <32 x i8> %i.aqb)
  %i.aqf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aqc, <32 x i8> %i.aqe)
  %i.aqg = bitcast <8 x i32> %i.apx to <32 x i8>
  %i.aqh = shufflevector <32 x i8> %i.aqg, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqi = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqh, <32 x i8> %i.aqh) ; 2 uses
  %i.aqj = shufflevector <32 x i8> %i.aoz, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqj, <32 x i8> %i.aqh)
  %i.aql = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aqf, <32 x i8> %i.aqi, <32 x i8> %i.aqk)
  %i.aqm = bitcast <8 x i32> %i.apv to <32 x i8>
  %i.aqn = shufflevector <32 x i8> %i.aqm, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqn, <32 x i8> %i.aqn) ; 2 uses
  %i.aqp = shufflevector <32 x i8> %i.aor, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqp, <32 x i8> %i.aqn)
  %i.aqr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aql, <32 x i8> %i.aqo, <32 x i8> %i.aqq)
  %i.aqs = bitcast <8 x i32> %i.apt to <32 x i8>
  %i.aqt = shufflevector <32 x i8> %i.aqs, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqt, <32 x i8> %i.aqt) ; 2 uses
  %i.aqv = shufflevector <32 x i8> %i.aol, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqv, <32 x i8> %i.aqt)
  %i.aqx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aqr, <32 x i8> %i.aqu, <32 x i8> %i.aqw)
  %i.aqy = shufflevector <32 x i8> %i.apo, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqy, <32 x i8> %i.aqb)
  %i.ara = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aqc, <32 x i8> %i.aqz)
  %i.arb = shufflevector <32 x i8> %i.ape, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.arc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arb, <32 x i8> %i.aqh)
  %i.ard = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ara, <32 x i8> %i.aqi, <32 x i8> %i.arc)
  %i.are = shufflevector <32 x i8> %i.aou, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.arf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.are, <32 x i8> %i.aqn)
  %i.arg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ard, <32 x i8> %i.aqo, <32 x i8> %i.arf)
  %i.arh = shufflevector <32 x i8> %i.aoo, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ari = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arh, <32 x i8> %i.aqt)
  %i.arj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.arg, <32 x i8> %i.aqu, <32 x i8> %i.ari)
  %i.ark = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.arl = shufflevector <32 x i8> %i.ark, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.arm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arl, <32 x i8> %i.arl) ; 2 uses
  %i.arn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqd, <32 x i8> %i.arl)
  %i.aro = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.arm, <32 x i8> %i.arn)
  %i.arp = bitcast <8 x i32> %i.apx to <32 x i8>
  %i.arq = shufflevector <32 x i8> %i.arp, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.arr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arq, <32 x i8> %i.arq) ; 2 uses
  %i.ars = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqj, <32 x i8> %i.arq)
  %i.art = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aro, <32 x i8> %i.arr, <32 x i8> %i.ars)
  %i.aru = bitcast <8 x i32> %i.apv to <32 x i8>
  %i.arv = shufflevector <32 x i8> %i.aru, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.arw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arv, <32 x i8> %i.arv) ; 2 uses
  %i.arx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqp, <32 x i8> %i.arv)
  %i.ary = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.art, <32 x i8> %i.arw, <32 x i8> %i.arx)
  %i.arz = bitcast <8 x i32> %i.apt to <32 x i8>
  %i.asa = shufflevector <32 x i8> %i.arz, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.asb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asa, <32 x i8> %i.asa) ; 2 uses
  %i.asc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqv, <32 x i8> %i.asa)
  %i.asd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ary, <32 x i8> %i.asb, <32 x i8> %i.asc)
  %i.ase = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqy, <32 x i8> %i.arl)
  %i.asf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.arm, <32 x i8> %i.ase)
  %i.asg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arb, <32 x i8> %i.arq)
  %i.ash = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asf, <32 x i8> %i.arr, <32 x i8> %i.asg)
  %i.asi = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.are, <32 x i8> %i.arv)
  %i.asj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ash, <32 x i8> %i.arw, <32 x i8> %i.asi)
  %i.ask = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arh, <32 x i8> %i.asa)
  %i.asl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asj, <32 x i8> %i.asb, <32 x i8> %i.ask)
  %i.asm = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.asn = shufflevector <32 x i8> %i.asm, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aso = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asn, <32 x i8> %i.asn) ; 2 uses
  %i.asp = shufflevector <32 x i8> %i.apj, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.asq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asp, <32 x i8> %i.asn)
  %i.asr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aso, <32 x i8> %i.asq)
  %i.ass = bitcast <8 x i32> %i.apx to <32 x i8>
  %i.ast = shufflevector <32 x i8> %i.ass, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.asu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ast, <32 x i8> %i.ast) ; 2 uses
  %i.asv = shufflevector <32 x i8> %i.aoz, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.asw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asv, <32 x i8> %i.ast)
  %i.asx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asr, <32 x i8> %i.asu, <32 x i8> %i.asw)
  %i.asy = bitcast <8 x i32> %i.apv to <32 x i8>
  %i.asz = shufflevector <32 x i8> %i.asy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ata = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asz, <32 x i8> %i.asz) ; 2 uses
  %i.atb = shufflevector <32 x i8> %i.aor, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atb, <32 x i8> %i.asz)
  %i.atd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asx, <32 x i8> %i.ata, <32 x i8> %i.atc)
  %i.ate = bitcast <8 x i32> %i.apt to <32 x i8>
  %i.atf = shufflevector <32 x i8> %i.ate, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.atg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atf, <32 x i8> %i.atf) ; 2 uses
  %i.ath = shufflevector <32 x i8> %i.aol, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ati = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ath, <32 x i8> %i.atf)
  %i.atj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.atd, <32 x i8> %i.atg, <32 x i8> %i.ati)
  %i.atk = shufflevector <32 x i8> %i.apo, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atk, <32 x i8> %i.asn)
  %i.atm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aso, <32 x i8> %i.atl)
  %i.atn = shufflevector <32 x i8> %i.ape, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ato = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atn, <32 x i8> %i.ast)
  %i.atp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.atm, <32 x i8> %i.asu, <32 x i8> %i.ato)
  %i.atq = shufflevector <32 x i8> %i.aou, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atq, <32 x i8> %i.asz)
  %i.ats = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.atp, <32 x i8> %i.ata, <32 x i8> %i.atr)
  %i.att = shufflevector <32 x i8> %i.aoo, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.att, <32 x i8> %i.atf)
  %i.atv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ats, <32 x i8> %i.atg, <32 x i8> %i.atu)
  %i.atw = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.atx = shufflevector <32 x i8> %i.atw, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aty = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atx, <32 x i8> %i.atx) ; 2 uses
  %i.atz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asp, <32 x i8> %i.atx)
  %i.aua = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aty, <32 x i8> %i.atz)
  %i.aub = bitcast <8 x i32> %i.apx to <32 x i8>
  %i.auc = shufflevector <32 x i8> %i.aub, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aud = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.auc, <32 x i8> %i.auc) ; 2 uses
  %i.aue = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asv, <32 x i8> %i.auc)
  %i.auf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aua, <32 x i8> %i.aud, <32 x i8> %i.aue)
  %i.aug = bitcast <8 x i32> %i.apv to <32 x i8>
  %i.auh = shufflevector <32 x i8> %i.aug, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aui = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.auh, <32 x i8> %i.auh) ; 2 uses
  %i.auj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atb, <32 x i8> %i.auh)
  %i.auk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.auf, <32 x i8> %i.aui, <32 x i8> %i.auj)
  %i.aul = bitcast <8 x i32> %i.apt to <32 x i8>
  %i.aum = shufflevector <32 x i8> %i.aul, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aun = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aum, <32 x i8> %i.aum) ; 2 uses
  %i.auo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ath, <32 x i8> %i.aum)
  %i.aup = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.auk, <32 x i8> %i.aun, <32 x i8> %i.auo)
  %i.auq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atk, <32 x i8> %i.atx)
  %i.aur = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aty, <32 x i8> %i.auq)
  %i.aus = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atn, <32 x i8> %i.auc)
  %i.aut = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aur, <32 x i8> %i.aud, <32 x i8> %i.aus)
  %i.auu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atq, <32 x i8> %i.auh)
  %i.auv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aut, <32 x i8> %i.aui, <32 x i8> %i.auu)
  %i.auw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.att, <32 x i8> %i.aum)
  %i.aux = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.auv, <32 x i8> %i.aun, <32 x i8> %i.auw)
  %i.auy = add <8 x i32> %i.atj, %i.aqx           ; 2 uses
  %i.auz = add <8 x i32> %i.atv, %i.arj           ; 2 uses
  %i.ava = add <8 x i32> %i.aup, %i.asd           ; 2 uses
  %i.avb = add <8 x i32> %i.aux, %i.asl           ; 2 uses
  %i.avc = shufflevector <8 x i32> %i.auy, <8 x i32> %i.auz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.avd = shufflevector <8 x i32> %i.auy, <8 x i32> %i.auz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ave = shufflevector <8 x i32> %i.ava, <8 x i32> %i.avb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.avf = shufflevector <8 x i32> %i.ava, <8 x i32> %i.avb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.avg = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.apr, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !143
  %i.avh = bitcast <4 x i32> %i.avg to <8 x half>
  %i.avi = shufflevector <8 x half> %i.avh, <8 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.avj = fpext <8 x half> %i.avi to <8 x float> ; 4 uses
  %i.avk = sitofp <8 x i32> %i.avc to <8 x float>
  %i.avl = shufflevector <8 x float> %i.avj, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.avm = fmul <8 x float> %i.avl, %i.apq
  %i.avn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avk, <8 x float> %i.avm, <8 x float> %i.aob) ; 2 uses
  %i.avo = sitofp <8 x i32> %i.avd to <8 x float>
  %i.avp = shufflevector <8 x float> %i.avj, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.avq = fmul <8 x float> %i.avp, %i.apq
  %i.avr = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avo, <8 x float> %i.avq, <8 x float> %i.aoa) ; 2 uses
  %i.avs = sitofp <8 x i32> %i.ave to <8 x float>
  %i.avt = shufflevector <8 x float> %i.avj, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.avu = fmul <8 x float> %i.avt, %i.apq
  %i.avv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avs, <8 x float> %i.avu, <8 x float> %i.anz) ; 2 uses
  %i.avw = sitofp <8 x i32> %i.avf to <8 x float>
  %i.avx = shufflevector <8 x float> %i.avj, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7>
  %i.avy = fmul <8 x float> %i.avx, %i.apq
  %i.avz = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avw, <8 x float> %i.avy, <8 x float> %i.any) ; 2 uses
  %i.awa = add nuw nsw i64 %.010011089.us.us.i, 1 ; 2 uses
end_hunk_3
begin_hunk_4_@ggml_gemm_iq4_nl_8x8_q8_0:bb.a
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph1100.i.epil, !llvm.loop !140

_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit: ; preds = %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, %.lr.ph1100.i.epil, %._crit_edge.split.us.us.i, %.preheader1013.i, %.lr.ph1104.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemm_mxfp4_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 20 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = alloca [16 x <8 x float>], align 32      ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.e = sdiv i32 %0, 32
  %i.f = sext i32 %i.e to i64                     ; 20 uses
  %i.g = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %6, i64 1
  %i.i = srem <2 x i32> %i.h, splat (i32 16)      ; 2 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = sub nsw i32 %5, %i.j                     ; 2 uses
  %i.l = extractelement <2 x i32> %i.i, i64 1     ; 2 uses
  %i.m = sub nsw i32 %6, %i.l                     ; 5 uses
  %i.n = sdiv i32 %i.k, 4
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = icmp sgt i32 %i.k, 3
  br i1 %i.p, label %.lr.ph1117.i, label %.preheader1103.i

.lr.ph1117.i:                                     ; preds = %bb.a
  %i.q = sdiv i32 %i.m, 8
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp sgt i32 %i.m, 7
  %i.t = icmp sgt i32 %0, 31
  br i1 %i.s, label %.lr.ph1117.split.us.preheader.i, label %.lr.ph1117.split.i.preheader

.lr.ph1117.split.i.preheader:                     ; preds = %.lr.ph1117.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.u = add nsw i64 %smax, -1
  %i.v = and i64 %i.u, -4
  %i.w = add nuw nsw i64 %i.v, 4
  br label %.preheader1103.i

.lr.ph1117.split.us.preheader.i:                  ; preds = %.lr.ph1117.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert1307.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert1309.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert1311.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert1313.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert1315.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert1317.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert1319.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert1321.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert1323.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert1325.i = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.phi.trans.insert1327.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.phi.trans.insert1329.i = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %.phi.trans.insert1331.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %.phi.trans.insert1333.i = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.aa = shl i64 %2, 6
  %i.ab = shl nuw nsw i64 %i.r, 5
  %i.ac = add nsw i64 %i.ab, -32
  %i.ad = and i64 %i.ac, -64
  %i.ae = add nsw i64 %i.ad, 64                   ; 16 uses
  %i.af = shl i64 %2, 2
  %i.ag = shl i64 %2, 3
  %i.ah = mul i64 %2, 12
  %i.ai = shl i64 %2, 4
  %i.aj = mul i64 %2, 20
  %i.ak = mul i64 %2, 24
  %i.al = mul i64 %2, 28
  %i.am = shl i64 %2, 5
  %i.an = mul i64 %2, 36
  %i.ao = mul i64 %2, 40
  %i.ap = mul i64 %2, 44
  %i.aq = mul i64 %2, 48
  %i.ar = mul i64 %2, 52
  %i.as = mul i64 %2, 56
  %i.at = mul i64 %2, 60
  %smax55 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.au = add nsw i64 %smax55, -1
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %1, i64 %i.af
  %i.ax = getelementptr i8, ptr %1, i64 %i.ag
  %i.ay = getelementptr i8, ptr %1, i64 %i.ah
  %i.az = getelementptr i8, ptr %1, i64 %i.ai
  %i.ba = getelementptr i8, ptr %1, i64 %i.aj
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %1, i64 %i.al
  %i.bd = getelementptr i8, ptr %1, i64 %i.am
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.ao
  %i.bg = getelementptr i8, ptr %1, i64 %i.ap
  %i.bh = getelementptr i8, ptr %1, i64 %i.aq
  %i.bi = getelementptr i8, ptr %1, i64 %i.ar
  %i.bj = getelementptr i8, ptr %1, i64 %i.as
  %i.bk = getelementptr i8, ptr %1, i64 %i.at
  br label %.lr.ph1117.split.us.i

.lr.ph1117.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1117.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph1117.split.us.preheader.i ] ; 3 uses
  %.010701115.us.i = phi i64 [ %i.mw, %._crit_edge.us.i ], [ 0, %.lr.ph1117.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !169
  %i.bl = mul nsw i64 %.010701115.us.i, %i.f
  %i.bm = getelementptr inbounds [136 x i8], ptr %4, i64 %i.bl ; 2 uses
  store ptr %i.bm, ptr %i.a, align 16, !tbaa !21, !noalias !169
  %i.bn = getelementptr inbounds [136 x i8], ptr %i.bm, i64 %i.f ; 2 uses
  store ptr %i.bn, ptr %i.x, align 8, !tbaa !21, !noalias !169
  %i.bo = getelementptr inbounds [136 x i8], ptr %i.bn, i64 %i.f ; 2 uses
  store ptr %i.bo, ptr %i.y, align 16, !tbaa !21, !noalias !169
  %i.bp = getelementptr inbounds [136 x i8], ptr %i.bo, i64 %i.f
  store ptr %i.bp, ptr %i.z, align 8, !tbaa !21, !noalias !169
  %i.bq = shl nuw nsw i64 %.010701115.us.i, 2     ; 16 uses
  %i.br = mul i64 %i.bq, %2
  %i.bs = or disjoint i64 %i.bq, 1
  %i.bt = mul i64 %i.bs, %2
  %i.bu = or disjoint i64 %i.bq, 2
  %i.bv = mul i64 %i.bu, %2
  %i.bw = or disjoint i64 %i.bq, 3
  %i.bx = mul i64 %i.bw, %2
  %i.by = or disjoint i64 %i.bq, 4
  %i.bz = mul i64 %i.by, %2
  %i.ca = or disjoint i64 %i.bq, 5
  %i.cb = mul i64 %i.ca, %2
  %i.cc = or disjoint i64 %i.bq, 6
  %i.cd = mul i64 %i.cc, %2
  %i.ce = or disjoint i64 %i.bq, 7
  %i.cf = mul i64 %i.ce, %2
  %i.cg = or disjoint i64 %i.bq, 8
  %i.ch = mul i64 %i.cg, %2
  %i.ci = or disjoint i64 %i.bq, 9
  %i.cj = mul i64 %i.ci, %2
  %i.ck = or disjoint i64 %i.bq, 10
  %i.cl = mul i64 %i.ck, %2
  %i.cm = or disjoint i64 %i.bq, 11
  %i.cn = mul i64 %i.cm, %2
  %i.co = or disjoint i64 %i.bq, 12
  %i.cp = mul i64 %i.co, %2
  %i.cq = or disjoint i64 %i.bq, 13
  %i.cr = mul i64 %i.cq, %2
  %i.cs = or disjoint i64 %i.bq, 14
  %i.ct = mul i64 %i.cs, %2
  %i.cu = or disjoint i64 %i.bq, 15
  %i.cv = mul i64 %i.cu, %2
  br i1 %i.t, label %.preheader1105.us.i.us, label %.preheader1105.us.i.preheader

.preheader1105.us.i.preheader:                    ; preds = %.lr.ph1117.split.us.i
  %i.cw = mul i64 %i.aa, %indvar                  ; 16 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.cw
  %scevgep40 = getelementptr i8, ptr %i.aw, i64 %i.cw
  %scevgep41 = getelementptr i8, ptr %i.ax, i64 %i.cw
  %scevgep42 = getelementptr i8, ptr %i.ay, i64 %i.cw
  %scevgep43 = getelementptr i8, ptr %i.az, i64 %i.cw
  %scevgep44 = getelementptr i8, ptr %i.ba, i64 %i.cw
  %scevgep45 = getelementptr i8, ptr %i.bb, i64 %i.cw
  %scevgep46 = getelementptr i8, ptr %i.bc, i64 %i.cw
  %scevgep47 = getelementptr i8, ptr %i.bd, i64 %i.cw
  %scevgep48 = getelementptr i8, ptr %i.be, i64 %i.cw
  %scevgep49 = getelementptr i8, ptr %i.bf, i64 %i.cw
  %scevgep50 = getelementptr i8, ptr %i.bg, i64 %i.cw
  %scevgep51 = getelementptr i8, ptr %i.bh, i64 %i.cw
  %scevgep52 = getelementptr i8, ptr %i.bi, i64 %i.cw
  %scevgep53 = getelementptr i8, ptr %i.bj, i64 %i.cw
  %scevgep54 = getelementptr i8, ptr %i.bk, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep40, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep41, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep42, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep43, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep44, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep45, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep46, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep47, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep48, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep49, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep50, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep51, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep52, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep54, i8 0, i64 %i.ae, i1 false), !tbaa !9, !alias.scope !166
  br label %._crit_edge.us.i

.preheader1105.us.i.us:                           ; preds = %.lr.ph1117.split.us.i, %.preheader1104.us.loopexit.i.us
  %.010731113.us.i.us = phi i64 [ %i.mu, %.preheader1104.us.loopexit.i.us ], [ 0, %.lr.ph1117.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9, !noalias !169
  %i.cx = mul nuw nsw i64 %.010731113.us.i.us, %i.f
  %i.cy = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.cx
  %i.cz = or disjoint i64 %.010731113.us.i.us, 1
  %i.da = mul nuw nsw i64 %i.cz, %i.f
  %i.db = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.da
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.preheader1105.us.i.us, %bb.c
  %.010751111.us.i.us = phi i64 [ %i.mt, %bb.c ], [ 0, %.preheader1105.us.i.us ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [136 x i8], ptr %i.cy, i64 %.010751111.us.i.us ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %8 = load <8 x i32>, ptr %7, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %10 = load <8 x i32>, ptr %9, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %11 = load <8 x i32>, ptr %i.dd, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  %12 = load <8 x i32>, ptr %i.de, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.df = getelementptr inbounds nuw [136 x i8], ptr %i.db, i64 %.010751111.us.i.us ; 5 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %14 = load <8 x i32>, ptr %13, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %16 = load <8 x i32>, ptr %15, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %17 = load <8 x i32>, ptr %i.dg, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 104
  %18 = load <8 x i32>, ptr %i.dh, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %19 = shufflevector <8 x i32> %8, <8 x i32> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x i32> %14, <8 x i32> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <16 x i32> %19, <16 x i32> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %22 = shufflevector <8 x i32> %8, <8 x i32> %10, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <8 x i32> %14, <8 x i32> %16, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <16 x i32> %22, <16 x i32> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %25 = shufflevector <8 x i32> %11, <8 x i32> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <8 x i32> %17, <8 x i32> %18, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <16 x i32> %25, <16 x i32> %26, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %28 = shufflevector <8 x i32> %11, <8 x i32> %12, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <8 x i32> %17, <8 x i32> %18, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = shufflevector <16 x i32> %28, <16 x i32> %29, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.di = bitcast <16 x i32> %21 to <64 x i8>
  %i.dj = and <64 x i8> %i.di, splat (i8 15)
  %i.dk = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.dj) ; 2 uses
  %i.dl = bitcast <16 x i32> %24 to <64 x i8>
  %i.dm = and <64 x i8> %i.dl, splat (i8 15)
  %i.dn = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.dm) ; 2 uses
  %i.do = bitcast <16 x i32> %27 to <64 x i8>
  %i.dp = and <64 x i8> %i.do, splat (i8 15)
  %i.dq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.dp) ; 2 uses
  %i.dr = bitcast <16 x i32> %30 to <64 x i8>
  %i.ds = and <64 x i8> %i.dr, splat (i8 15)
  %i.dt = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.ds) ; 2 uses
  %i.du = bitcast <16 x i32> %21 to <32 x i16>
  %i.dv = lshr <32 x i16> %i.du, splat (i16 4)
  %i.dw = bitcast <32 x i16> %i.dv to <64 x i8>
  %i.dx = and <64 x i8> %i.dw, splat (i8 15)
  %i.dy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.dx) ; 2 uses
  %i.dz = bitcast <16 x i32> %24 to <32 x i16>
  %i.ea = lshr <32 x i16> %i.dz, splat (i16 4)
  %i.eb = bitcast <32 x i16> %i.ea to <64 x i8>
  %i.ec = and <64 x i8> %i.eb, splat (i8 15)
  %i.ed = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.ec) ; 2 uses
  %i.ee = bitcast <16 x i32> %27 to <32 x i16>
  %i.ef = lshr <32 x i16> %i.ee, splat (i16 4)
  %i.eg = bitcast <32 x i16> %i.ef to <64 x i8>
  %i.eh = and <64 x i8> %i.eg, splat (i8 15)
  %i.ei = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.eh) ; 2 uses
  %i.ej = bitcast <16 x i32> %30 to <32 x i16>
  %i.ek = lshr <32 x i16> %i.ej, splat (i16 4)
  %i.el = bitcast <32 x i16> %i.ek to <64 x i8>
  %i.em = and <64 x i8> %i.el, splat (i8 15)
  %i.en = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.em) ; 2 uses
  %i.eo = load <8 x i8>, ptr %i.df, align 1, !tbaa !9, !alias.scope !167
  %i.ep = load <8 x i8>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !167
  %i.eq = shufflevector <8 x i8> %i.ep, <8 x i8> %i.eo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.er = zext <16 x i8> %i.eq to <16 x i64>
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_e8m0_half, <16 x i64> %i.er
  %i.et = tail call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.es, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !13, !noalias !169 ; 4 uses
  %i.eu = shufflevector <64 x i8> %i.ei, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ev = sub <64 x i8> zeroinitializer, %i.eu    ; 2 uses
  %i.ew = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ex = sub <64 x i8> zeroinitializer, %i.ew    ; 2 uses
  %i.ey = shufflevector <64 x i8> %i.dq, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ez = sub <64 x i8> zeroinitializer, %i.ey    ; 2 uses
  %i.fa = shufflevector <64 x i8> %i.dk, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fb = sub <64 x i8> zeroinitializer, %i.fa    ; 2 uses
  %i.fc = shufflevector <64 x i8> %i.en, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fd = sub <64 x i8> zeroinitializer, %i.fc    ; 2 uses
  %i.fe = shufflevector <64 x i8> %i.ed, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ff = sub <64 x i8> zeroinitializer, %i.fe    ; 2 uses
  %i.fg = shufflevector <64 x i8> %i.dt, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fh = sub <64 x i8> zeroinitializer, %i.fg    ; 2 uses
  %i.fi = shufflevector <64 x i8> %i.dn, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fj = sub <64 x i8> zeroinitializer, %i.fi    ; 2 uses
  %i.fk = shufflevector <64 x i8> %i.ei, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fl = sub <64 x i8> zeroinitializer, %i.fk    ; 2 uses
  %i.fm = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fn = sub <64 x i8> zeroinitializer, %i.fm    ; 2 uses
  %i.fo = shufflevector <64 x i8> %i.dq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fp = sub <64 x i8> zeroinitializer, %i.fo    ; 2 uses
  %i.fq = shufflevector <64 x i8> %i.dk, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fr = sub <64 x i8> zeroinitializer, %i.fq    ; 2 uses
  %i.fs = shufflevector <64 x i8> %i.en, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ft = sub <64 x i8> zeroinitializer, %i.fs    ; 2 uses
  %i.fu = shufflevector <64 x i8> %i.ed, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fv = sub <64 x i8> zeroinitializer, %i.fu    ; 2 uses
  %i.fw = shufflevector <64 x i8> %i.dt, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fx = sub <64 x i8> zeroinitializer, %i.fw    ; 2 uses
  %i.fy = shufflevector <64 x i8> %i.dn, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fz = sub <64 x i8> zeroinitializer, %i.fy    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.us.i.us ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !21, !noalias !169
  %i.gc = getelementptr inbounds nuw [136 x i8], ptr %i.gb, i64 %.010751111.us.i.us ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load <8 x i32>, ptr %i.gd, align 1, !tbaa !9, !noalias !170 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gg = load <8 x i32>, ptr %i.gf, align 1, !tbaa !9, !noalias !170 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.gi = load <8 x i32>, ptr %i.gh, align 1, !tbaa !9, !noalias !170 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  %i.gk = load <8 x i32>, ptr %i.gj, align 1, !tbaa !9, !noalias !170 ; 4 uses
  %i.gl = bitcast <8 x i32> %i.gk to <32 x i8>
  %i.gm = shufflevector <32 x i8> %i.gl, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gn = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gm, i1 false) ; 2 uses
  %i.go = icmp slt <64 x i8> %i.gm, zeroinitializer ; 2 uses
  %i.gp = select <64 x i1> %i.go, <64 x i8> %i.ev, <64 x i8> %i.eu
  %i.gq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gn, <64 x i8> %i.gp)
  %i.gr = bitcast <8 x i32> %i.gi to <32 x i8>
  %i.gs = shufflevector <32 x i8> %i.gr, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gt = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gs, i1 false) ; 2 uses
  %i.gu = icmp slt <64 x i8> %i.gs, zeroinitializer ; 2 uses
  %i.gv = select <64 x i1> %i.gu, <64 x i8> %i.ex, <64 x i8> %i.ew
  %i.gw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gq, <64 x i8> %i.gt, <64 x i8> %i.gv)
  %i.gx = bitcast <8 x i32> %i.gg to <32 x i8>
  %i.gy = shufflevector <32 x i8> %i.gx, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gz = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gy, i1 false) ; 2 uses
  %i.ha = icmp slt <64 x i8> %i.gy, zeroinitializer ; 2 uses
  %i.hb = select <64 x i1> %i.ha, <64 x i8> %i.ez, <64 x i8> %i.ey
  %i.hc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gw, <64 x i8> %i.gz, <64 x i8> %i.hb)
  %i.hd = bitcast <8 x i32> %i.ge to <32 x i8>
  %i.he = shufflevector <32 x i8> %i.hd, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hf = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.he, i1 false) ; 2 uses
  %i.hg = icmp slt <64 x i8> %i.he, zeroinitializer ; 2 uses
  %i.hh = select <64 x i1> %i.hg, <64 x i8> %i.fb, <64 x i8> %i.fa
  %i.hi = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hc, <64 x i8> %i.hf, <64 x i8> %i.hh)
  %i.hj = select <64 x i1> %i.go, <64 x i8> %i.fd, <64 x i8> %i.fc
  %i.hk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gn, <64 x i8> %i.hj)
  %i.hl = select <64 x i1> %i.gu, <64 x i8> %i.ff, <64 x i8> %i.fe
  %i.hm = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hk, <64 x i8> %i.gt, <64 x i8> %i.hl)
  %i.hn = select <64 x i1> %i.ha, <64 x i8> %i.fh, <64 x i8> %i.fg
  %i.ho = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hm, <64 x i8> %i.gz, <64 x i8> %i.hn)
  %i.hp = select <64 x i1> %i.hg, <64 x i8> %i.fj, <64 x i8> %i.fi
  %i.hq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ho, <64 x i8> %i.hf, <64 x i8> %i.hp)
  %i.hr = bitcast <8 x i32> %i.gk to <32 x i8>
  %i.hs = shufflevector <32 x i8> %i.hr, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ht = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hs, i1 false) ; 2 uses
  %i.hu = icmp slt <64 x i8> %i.hs, zeroinitializer ; 2 uses
  %i.hv = select <64 x i1> %i.hu, <64 x i8> %i.ev, <64 x i8> %i.eu
  %i.hw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ht, <64 x i8> %i.hv)
  %i.hx = bitcast <8 x i32> %i.gi to <32 x i8>
  %i.hy = shufflevector <32 x i8> %i.hx, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hz = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hy, i1 false) ; 2 uses
  %i.ia = icmp slt <64 x i8> %i.hy, zeroinitializer ; 2 uses
  %i.ib = select <64 x i1> %i.ia, <64 x i8> %i.ex, <64 x i8> %i.ew
  %i.ic = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hw, <64 x i8> %i.hz, <64 x i8> %i.ib)
  %i.id = bitcast <8 x i32> %i.gg to <32 x i8>
  %i.ie = shufflevector <32 x i8> %i.id, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.if = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ie, i1 false) ; 2 uses
  %i.ig = icmp slt <64 x i8> %i.ie, zeroinitializer ; 2 uses
  %i.ih = select <64 x i1> %i.ig, <64 x i8> %i.ez, <64 x i8> %i.ey
  %i.ii = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ic, <64 x i8> %i.if, <64 x i8> %i.ih)
  %i.ij = bitcast <8 x i32> %i.ge to <32 x i8>
  %i.ik = shufflevector <32 x i8> %i.ij, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.il = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ik, i1 false) ; 2 uses
  %i.im = icmp slt <64 x i8> %i.ik, zeroinitializer ; 2 uses
  %i.in = select <64 x i1> %i.im, <64 x i8> %i.fb, <64 x i8> %i.fa
  %i.io = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ii, <64 x i8> %i.il, <64 x i8> %i.in)
  %i.ip = select <64 x i1> %i.hu, <64 x i8> %i.fd, <64 x i8> %i.fc
  %i.iq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ht, <64 x i8> %i.ip)
  %i.ir = select <64 x i1> %i.ia, <64 x i8> %i.ff, <64 x i8> %i.fe
  %i.is = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.iq, <64 x i8> %i.hz, <64 x i8> %i.ir)
  %i.it = select <64 x i1> %i.ig, <64 x i8> %i.fh, <64 x i8> %i.fg
  %i.iu = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.is, <64 x i8> %i.if, <64 x i8> %i.it)
  %i.iv = select <64 x i1> %i.im, <64 x i8> %i.fj, <64 x i8> %i.fi
  %i.iw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.iu, <64 x i8> %i.il, <64 x i8> %i.iv)
  %i.ix = bitcast <8 x i32> %i.gk to <32 x i8>
  %i.iy = shufflevector <32 x i8> %i.ix, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.iz = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.iy, i1 false) ; 2 uses
  %i.ja = icmp slt <64 x i8> %i.iy, zeroinitializer ; 2 uses
  %i.jb = select <64 x i1> %i.ja, <64 x i8> %i.fl, <64 x i8> %i.fk
  %i.jc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.iz, <64 x i8> %i.jb)
  %i.jd = bitcast <8 x i32> %i.gi to <32 x i8>
  %i.je = shufflevector <32 x i8> %i.jd, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jf = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.je, i1 false) ; 2 uses
  %i.jg = icmp slt <64 x i8> %i.je, zeroinitializer ; 2 uses
  %i.jh = select <64 x i1> %i.jg, <64 x i8> %i.fn, <64 x i8> %i.fm
  %i.ji = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jc, <64 x i8> %i.jf, <64 x i8> %i.jh)
  %i.jj = bitcast <8 x i32> %i.gg to <32 x i8>
  %i.jk = shufflevector <32 x i8> %i.jj, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jl = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jk, i1 false) ; 2 uses
  %i.jm = icmp slt <64 x i8> %i.jk, zeroinitializer ; 2 uses
  %i.jn = select <64 x i1> %i.jm, <64 x i8> %i.fp, <64 x i8> %i.fo
  %i.jo = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ji, <64 x i8> %i.jl, <64 x i8> %i.jn)
  %i.jp = bitcast <8 x i32> %i.ge to <32 x i8>
  %i.jq = shufflevector <32 x i8> %i.jp, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jr = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jq, i1 false) ; 2 uses
  %i.js = icmp slt <64 x i8> %i.jq, zeroinitializer ; 2 uses
  %i.jt = select <64 x i1> %i.js, <64 x i8> %i.fr, <64 x i8> %i.fq
  %i.ju = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jo, <64 x i8> %i.jr, <64 x i8> %i.jt)
  %i.jv = select <64 x i1> %i.ja, <64 x i8> %i.ft, <64 x i8> %i.fs
  %i.jw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.iz, <64 x i8> %i.jv)
  %i.jx = select <64 x i1> %i.jg, <64 x i8> %i.fv, <64 x i8> %i.fu
  %i.jy = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jw, <64 x i8> %i.jf, <64 x i8> %i.jx)
  %i.jz = select <64 x i1> %i.jm, <64 x i8> %i.fx, <64 x i8> %i.fw
  %i.ka = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jy, <64 x i8> %i.jl, <64 x i8> %i.jz)
  %i.kb = select <64 x i1> %i.js, <64 x i8> %i.fz, <64 x i8> %i.fy
  %i.kc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ka, <64 x i8> %i.jr, <64 x i8> %i.kb)
  %i.kd = bitcast <8 x i32> %i.gk to <32 x i8>
  %i.ke = shufflevector <32 x i8> %i.kd, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kf = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ke, i1 false) ; 2 uses
  %i.kg = icmp slt <64 x i8> %i.ke, zeroinitializer ; 2 uses
  %i.kh = select <64 x i1> %i.kg, <64 x i8> %i.fl, <64 x i8> %i.fk
  %i.ki = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.kf, <64 x i8> %i.kh)
  %i.kj = bitcast <8 x i32> %i.gi to <32 x i8>
  %i.kk = shufflevector <32 x i8> %i.kj, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kl = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kk, i1 false) ; 2 uses
  %i.km = icmp slt <64 x i8> %i.kk, zeroinitializer ; 2 uses
  %i.kn = select <64 x i1> %i.km, <64 x i8> %i.fn, <64 x i8> %i.fm
  %i.ko = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ki, <64 x i8> %i.kl, <64 x i8> %i.kn)
  %i.kp = bitcast <8 x i32> %i.gg to <32 x i8>
  %i.kq = shufflevector <32 x i8> %i.kp, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kr = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kq, i1 false) ; 2 uses
  %i.ks = icmp slt <64 x i8> %i.kq, zeroinitializer ; 2 uses
  %i.kt = select <64 x i1> %i.ks, <64 x i8> %i.fp, <64 x i8> %i.fo
  %i.ku = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ko, <64 x i8> %i.kr, <64 x i8> %i.kt)
  %i.kv = bitcast <8 x i32> %i.ge to <32 x i8>
  %i.kw = shufflevector <32 x i8> %i.kv, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.kx = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kw, i1 false) ; 2 uses
  %i.ky = icmp slt <64 x i8> %i.kw, zeroinitializer ; 2 uses
  %i.kz = select <64 x i1> %i.ky, <64 x i8> %i.fr, <64 x i8> %i.fq
  %i.la = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ku, <64 x i8> %i.kx, <64 x i8> %i.kz)
  %i.lb = select <64 x i1> %i.kg, <64 x i8> %i.ft, <64 x i8> %i.fs
  %i.lc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.kf, <64 x i8> %i.lb)
  %i.ld = select <64 x i1> %i.km, <64 x i8> %i.fv, <64 x i8> %i.fu
  %i.le = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lc, <64 x i8> %i.kl, <64 x i8> %i.ld)
  %i.lf = select <64 x i1> %i.ks, <64 x i8> %i.fx, <64 x i8> %i.fw
  %i.lg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.le, <64 x i8> %i.kr, <64 x i8> %i.lf)
  %i.lh = select <64 x i1> %i.ky, <64 x i8> %i.fz, <64 x i8> %i.fy
  %i.li = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lg, <64 x i8> %i.kx, <64 x i8> %i.lh)
  %i.lj = add <16 x i32> %i.ju, %i.hi             ; 2 uses
  %i.lk = add <16 x i32> %i.kc, %i.hq             ; 2 uses
  %i.ll = add <16 x i32> %i.la, %i.io             ; 2 uses
  %i.lm = add <16 x i32> %i.li, %i.iw             ; 2 uses
  %i.ln = shufflevector <16 x i32> %i.lj, <16 x i32> %i.lk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.lo = shufflevector <16 x i32> %i.lj, <16 x i32> %i.lk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.lp = shufflevector <16 x i32> %i.ll, <16 x i32> %i.lm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.lq = shufflevector <16 x i32> %i.ll, <16 x i32> %i.lm, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.lr = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.gc, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !170
  %i.ls = bitcast <4 x i32> %i.lr to <8 x half>
  %i.lt = shufflevector <8 x half> %i.ls, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lu = fpext <16 x half> %i.lt to <16 x float> ; 4 uses
  %i.lv = sitofp <16 x i32> %i.ln to <16 x float>
  %i.lw = shufflevector <16 x float> %i.lu, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.lx = fmul <16 x float> %i.et, %i.lw
  %.idx1384.i.us = shl nuw nsw i64 %indvars.iv.i.us, 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx1384.i.us ; 5 uses
  %i.lz = load <16 x float>, ptr %i.ly, align 64, !tbaa !9, !noalias !169
  %i.ma = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lv, <16 x float> %i.lx, <16 x float> %i.lz)
  store <16 x float> %i.ma, ptr %i.ly, align 64, !tbaa !9, !noalias !169
  %i.mb = sitofp <16 x i32> %i.lo to <16 x float>
  %i.mc = shufflevector <16 x float> %i.lu, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.md = fmul <16 x float> %i.et, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 64 ; 2 uses
  %i.mf = load <16 x float>, ptr %i.me, align 64, !tbaa !9, !noalias !169
  %i.mg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mb, <16 x float> %i.md, <16 x float> %i.mf)
  store <16 x float> %i.mg, ptr %i.me, align 64, !tbaa !9, !noalias !169
  %i.mh = sitofp <16 x i32> %i.lp to <16 x float>
  %i.mi = shufflevector <16 x float> %i.lu, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.mj = fmul <16 x float> %i.et, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 128 ; 2 uses
  %i.ml = load <16 x float>, ptr %i.mk, align 64, !tbaa !9, !noalias !169
  %i.mm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mh, <16 x float> %i.mj, <16 x float> %i.ml)
  store <16 x float> %i.mm, ptr %i.mk, align 64, !tbaa !9, !noalias !169
  %i.mn = sitofp <16 x i32> %i.lq to <16 x float>
  %i.mo = shufflevector <16 x float> %i.lu, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.mp = fmul <16 x float> %i.et, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ly, i64 192 ; 2 uses
  %i.mr = load <16 x float>, ptr %i.mq, align 64, !tbaa !9, !noalias !169
  %i.ms = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mn, <16 x float> %i.mp, <16 x float> %i.mr)
  store <16 x float> %i.ms, ptr %i.mq, align 64, !tbaa !9, !noalias !169
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 4
  br i1 %exitcond.not.i.us, label %bb.c, label %bb.b, !llvm.loop !150

bb.c:                                             ; preds = %bb.b
  %i.mt = add nuw nsw i64 %.010751111.us.i.us, 1  ; 2 uses
  %exitcond1216.not.i.us = icmp eq i64 %i.mt, %i.f
  br i1 %exitcond1216.not.i.us, label %.preheader1104.us.loopexit.i.us, label %.lr.ph.us.i.us, !llvm.loop !151

.preheader1104.us.loopexit.i.us:                  ; preds = %bb.c
  %.pre.i.us = load <16 x float>, ptr %i.b, align 64, !tbaa !9, !noalias !169
  %.pre1306.i.us = load <16 x float>, ptr %.phi.trans.insert.i, align 64, !tbaa !9, !noalias !169
  %.pre1308.i.us = load <16 x float>, ptr %.phi.trans.insert1307.i, align 64, !tbaa !9, !noalias !169
  %.pre1310.i.us = load <16 x float>, ptr %.phi.trans.insert1309.i, align 64, !tbaa !9, !noalias !169
  %.pre1312.i.us = load <16 x float>, ptr %.phi.trans.insert1311.i, align 64, !tbaa !9, !noalias !169
  %.pre1314.i.us = load <16 x float>, ptr %.phi.trans.insert1313.i, align 64, !tbaa !9, !noalias !169
  %.pre1316.i.us = load <16 x float>, ptr %.phi.trans.insert1315.i, align 64, !tbaa !9, !noalias !169
  %.pre1318.i.us = load <16 x float>, ptr %.phi.trans.insert1317.i, align 64, !tbaa !9, !noalias !169
  %.pre1320.i.us = load <16 x float>, ptr %.phi.trans.insert1319.i, align 64, !tbaa !9, !noalias !169
  %.pre1322.i.us = load <16 x float>, ptr %.phi.trans.insert1321.i, align 64, !tbaa !9, !noalias !169
  %.pre1324.i.us = load <16 x float>, ptr %.phi.trans.insert1323.i, align 64, !tbaa !9, !noalias !169
  %.pre1326.i.us = load <16 x float>, ptr %.phi.trans.insert1325.i, align 64, !tbaa !9, !noalias !169
  %.pre1328.i.us = load <16 x float>, ptr %.phi.trans.insert1327.i, align 64, !tbaa !9, !noalias !169
  %.pre1330.i.us = load <16 x float>, ptr %.phi.trans.insert1329.i, align 64, !tbaa !9, !noalias !169
  %.pre1332.i.us = load <16 x float>, ptr %.phi.trans.insert1331.i, align 64, !tbaa !9, !noalias !169
  %.pre1334.i.us = load <16 x float>, ptr %.phi.trans.insert1333.i, align 64, !tbaa !9, !noalias !169
  %.idx1095.us.i.us = shl nuw nsw i64 %.010731113.us.i.us, 5
  %invariant.gep.us.i.us = getelementptr i8, ptr %1, i64 %.idx1095.us.i.us ; 16 uses
  %gep.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.br
  store <16 x float> %.pre.i.us, ptr %gep.us.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.1.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bt
  store <16 x float> %.pre1306.i.us, ptr %gep.us.1.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.2.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bv
  store <16 x float> %.pre1308.i.us, ptr %gep.us.2.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.3.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bx
  store <16 x float> %.pre1310.i.us, ptr %gep.us.3.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.4.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bz
  store <16 x float> %.pre1312.i.us, ptr %gep.us.4.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.5.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cb
  store <16 x float> %.pre1314.i.us, ptr %gep.us.5.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.6.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cd
  store <16 x float> %.pre1316.i.us, ptr %gep.us.6.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.7.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cf
  store <16 x float> %.pre1318.i.us, ptr %gep.us.7.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.8.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ch
  store <16 x float> %.pre1320.i.us, ptr %gep.us.8.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.9.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cj
  store <16 x float> %.pre1322.i.us, ptr %gep.us.9.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.10.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cl
  store <16 x float> %.pre1324.i.us, ptr %gep.us.10.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.11.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cn
  store <16 x float> %.pre1326.i.us, ptr %gep.us.11.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.12.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cp
  store <16 x float> %.pre1328.i.us, ptr %gep.us.12.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.13.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cr
  store <16 x float> %.pre1330.i.us, ptr %gep.us.13.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.14.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ct
  store <16 x float> %.pre1332.i.us, ptr %gep.us.14.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us.15.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cv
  store <16 x float> %.pre1334.i.us, ptr %gep.us.15.i.us, align 1, !tbaa !9, !alias.scope !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !169
  %i.mu = add nuw nsw i64 %.010731113.us.i.us, 2  ; 2 uses
  %i.mv = icmp slt i64 %i.mu, %i.r
  br i1 %i.mv, label %.preheader1105.us.i.us, label %._crit_edge.us.i, !llvm.loop !152

._crit_edge.us.i:                                 ; preds = %.preheader1104.us.loopexit.i.us, %.preheader1105.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !169
  %i.mw = add nuw nsw i64 %.010701115.us.i, 4     ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar, %i.av
  br i1 %exitcond.not, label %.preheader1103.i, label %.lr.ph1117.split.us.i, !llvm.loop !153

.preheader1103.i:                                 ; preds = %._crit_edge.us.i, %.lr.ph1117.split.i.preheader, %bb.a
  %.01070.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph1117.split.i.preheader ], [ %i.mw, %._crit_edge.us.i ] ; 7 uses
  %i.mx = sdiv i32 %5, 4
  %i.my = sext i32 %i.mx to i64                   ; 12 uses
  %i.mz = icmp slt i64 %.01070.lcssa.i, %i.my
  br i1 %i.mz, label %.lr.ph.i, label %._crit_edge1137.i

.lr.ph.i:                                         ; preds = %.preheader1103.i
  %i.na = sdiv i32 %i.m, 8
  %i.nb = sext i32 %i.na to i64                   ; 2 uses
  %i.nc = icmp sgt i32 %i.m, 7
  br i1 %i.nc, label %.lr.ph.split.us.i, label %._crit_edge1137.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.nd = icmp sgt i32 %0, 31
  br i1 %i.nd, label %.lr.ph1132.us.us.i, label %.lr.ph1132.us.i.preheader

.lr.ph1132.us.i.preheader:                        ; preds = %.lr.ph.split.us.i
  %i.ne = mul i64 %.01070.lcssa.i, %2
  %i.nf = shl i64 %i.ne, 4
  %i.ng = shl i64 %2, 4                           ; 5 uses
  %i.nh = shl nuw nsw i64 %i.nb, 5
  %i.ni = add nsw i64 %i.nh, -32
  %i.nj = and i64 %i.ni, -64
  %i.nk = add nsw i64 %i.nj, 64                   ; 20 uses
  %i.nl = shl i64 %.01070.lcssa.i, 2              ; 3 uses
  %i.nm = or disjoint i64 %i.nl, 1
  %i.nn = mul i64 %2, %i.nm
  %i.no = shl i64 %i.nn, 2
  %i.np = or disjoint i64 %i.nl, 2
  %i.nq = mul i64 %2, %i.np
  %i.nr = shl i64 %i.nq, 2
  %i.ns = or disjoint i64 %i.nl, 3
  %i.nt = mul i64 %2, %i.ns
  %i.nu = shl i64 %i.nt, 2
  %i.nv = getelementptr i8, ptr %1, i64 %i.nu     ; 5 uses
  %i.nw = getelementptr i8, ptr %1, i64 %i.nr     ; 5 uses
  %i.nx = getelementptr i8, ptr %1, i64 %i.no     ; 5 uses
  %i.ny = getelementptr i8, ptr %1, i64 %i.nf     ; 5 uses
  %i.nz = sub i64 %i.my, %.01070.lcssa.i          ; 2 uses
  %xtraiter = and i64 %i.nz, 3                    ; 3 uses
  %i.oa = sub i64 %.01070.lcssa.i, %i.my
  %i.ob = icmp ugt i64 %i.oa, -4
  br i1 %i.ob, label %.lr.ph1132.us.i.epil.preheader, label %.lr.ph1132.us.i.preheader.new

.lr.ph1132.us.i.preheader.new:                    ; preds = %.lr.ph1132.us.i.preheader
  %unroll_iter = and i64 %i.nz, -4
  br label %.lr.ph1132.us.i

.lr.ph1132.us.us.i:                               ; preds = %.lr.ph.split.us.i, %._crit_edge.split.us.us.us.i
  %.11136.us.us.i = phi i64 [ %i.yf, %._crit_edge.split.us.us.us.i ], [ %.01070.lcssa.i, %.lr.ph.split.us.i ] ; 3 uses
  %i.oc = mul nsw i64 %.11136.us.us.i, %i.f
  %i.od = getelementptr inbounds [136 x i8], ptr %4, i64 %i.oc
  %i.oe = shl nuw nsw i64 %.11136.us.us.i, 2      ; 4 uses
  %i.of = mul i64 %i.oe, %2
  %i.og = or disjoint i64 %i.oe, 1
  %i.oh = mul i64 %i.og, %2
  %i.oi = or disjoint i64 %i.oe, 2
  %i.oj = mul i64 %i.oi, %2
  %i.ok = or disjoint i64 %i.oe, 3
  %i.ol = mul i64 %i.ok, %2
  br label %.preheader1102.us.us.us.i

.preheader1102.us.us.us.i:                        ; preds = %..preheader1101_crit_edge.us.us.us.i, %.lr.ph1132.us.us.i
  %.010781131.us.us.us.i = phi i64 [ 0, %.lr.ph1132.us.us.i ], [ %i.yd, %..preheader1101_crit_edge.us.us.us.i ] ; 4 uses
  %i.om = mul nuw nsw i64 %.010781131.us.us.us.i, %i.f
  %i.on = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.om
  %i.oo = or disjoint i64 %.010781131.us.us.us.i, 1
  %i.op = mul nuw nsw i64 %i.oo, %i.f
  %i.oq = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.op
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader1102.us.us.us.i
  %i.or = phi <16 x float> [ zeroinitializer, %.preheader1102.us.us.us.i ], [ %i.yb, %bb.d ]
  %i.os = phi <16 x float> [ zeroinitializer, %.preheader1102.us.us.us.i ], [ %i.xx, %bb.d ]
  %i.ot = phi <16 x float> [ zeroinitializer, %.preheader1102.us.us.us.i ], [ %i.xt, %bb.d ]
  %.010801122.us.us.us.i = phi i64 [ 0, %.preheader1102.us.us.us.i ], [ %i.yc, %bb.d ] ; 4 uses
  %i.ou = phi <16 x float> [ zeroinitializer, %.preheader1102.us.us.us.i ], [ %i.xp, %bb.d ]
  %i.ov = getelementptr inbounds nuw [136 x i8], ptr %i.on, i64 %.010801122.us.us.us.i ; 5 uses
  %31 = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %32 = load <8 x i32>, ptr %31, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %34 = load <8 x i32>, ptr %33, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 72
  %35 = load <8 x i32>, ptr %i.ow, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 104
  %36 = load <8 x i32>, ptr %i.ox, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.oy = getelementptr inbounds nuw [136 x i8], ptr %i.oq, i64 %.010801122.us.us.us.i ; 5 uses
  %37 = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %38 = load <8 x i32>, ptr %37, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %39 = getelementptr inbounds nuw i8, ptr %i.oy, i64 40
  %40 = load <8 x i32>, ptr %39, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 72
  %41 = load <8 x i32>, ptr %i.oz, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 104
  %42 = load <8 x i32>, ptr %i.pa, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %43 = shufflevector <8 x i32> %32, <8 x i32> %34, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = shufflevector <8 x i32> %38, <8 x i32> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %45 = shufflevector <16 x i32> %43, <16 x i32> %44, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %46 = shufflevector <8 x i32> %32, <8 x i32> %34, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %47 = shufflevector <8 x i32> %38, <8 x i32> %40, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %48 = shufflevector <16 x i32> %46, <16 x i32> %47, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %49 = shufflevector <8 x i32> %35, <8 x i32> %36, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %50 = shufflevector <8 x i32> %41, <8 x i32> %42, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %51 = shufflevector <16 x i32> %49, <16 x i32> %50, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %52 = shufflevector <8 x i32> %35, <8 x i32> %36, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %53 = shufflevector <8 x i32> %41, <8 x i32> %42, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %54 = shufflevector <16 x i32> %52, <16 x i32> %53, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.pb = bitcast <16 x i32> %45 to <64 x i8>
  %i.pc = and <64 x i8> %i.pb, splat (i8 15)
  %i.pd = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.pc) ; 2 uses
  %i.pe = bitcast <16 x i32> %48 to <64 x i8>
  %i.pf = and <64 x i8> %i.pe, splat (i8 15)
  %i.pg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.pf) ; 2 uses
  %i.ph = bitcast <16 x i32> %51 to <64 x i8>
  %i.pi = and <64 x i8> %i.ph, splat (i8 15)
  %i.pj = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.pi) ; 2 uses
  %i.pk = bitcast <16 x i32> %54 to <64 x i8>
  %i.pl = and <64 x i8> %i.pk, splat (i8 15)
  %i.pm = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.pl) ; 2 uses
  %i.pn = bitcast <16 x i32> %45 to <32 x i16>
  %i.po = lshr <32 x i16> %i.pn, splat (i16 4)
  %i.pp = bitcast <32 x i16> %i.po to <64 x i8>
  %i.pq = and <64 x i8> %i.pp, splat (i8 15)
  %i.pr = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.pq) ; 2 uses
  %i.ps = bitcast <16 x i32> %48 to <32 x i16>
  %i.pt = lshr <32 x i16> %i.ps, splat (i16 4)
  %i.pu = bitcast <32 x i16> %i.pt to <64 x i8>
  %i.pv = and <64 x i8> %i.pu, splat (i8 15)
  %i.pw = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.pv) ; 2 uses
  %i.px = bitcast <16 x i32> %51 to <32 x i16>
  %i.py = lshr <32 x i16> %i.px, splat (i16 4)
  %i.pz = bitcast <32 x i16> %i.py to <64 x i8>
  %i.qa = and <64 x i8> %i.pz, splat (i8 15)
  %i.qb = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.qa) ; 2 uses
  %i.qc = bitcast <16 x i32> %54 to <32 x i16>
  %i.qd = lshr <32 x i16> %i.qc, splat (i16 4)
  %i.qe = bitcast <32 x i16> %i.qd to <64 x i8>
  %i.qf = and <64 x i8> %i.qe, splat (i8 15)
  %i.qg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.qf) ; 2 uses
  %i.qh = load <8 x i8>, ptr %i.oy, align 1, !tbaa !9, !alias.scope !167
  %i.qi = load <8 x i8>, ptr %i.ov, align 1, !tbaa !9, !alias.scope !167
  %i.qj = shufflevector <8 x i8> %i.qi, <8 x i8> %i.qh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qk = zext <16 x i8> %i.qj to <16 x i64>
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_e8m0_half, <16 x i64> %i.qk
  %i.qm = tail call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.ql, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !13, !noalias !169 ; 4 uses
  %i.qn = getelementptr inbounds nuw [136 x i8], ptr %i.od, i64 %.010801122.us.us.us.i ; 5 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load <8 x i32>, ptr %i.qo, align 1, !tbaa !9, !alias.scope !168 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 40
  %i.qr = load <8 x i32>, ptr %i.qq, align 1, !tbaa !9, !alias.scope !168 ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 72
  %i.qt = load <8 x i32>, ptr %i.qs, align 1, !tbaa !9, !alias.scope !168 ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 104
  %i.qv = load <8 x i32>, ptr %i.qu, align 1, !tbaa !9, !alias.scope !168 ; 4 uses
  %i.qw = bitcast <8 x i32> %i.qv to <32 x i8>
  %i.qx = shufflevector <32 x i8> %i.qw, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.qy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.qx, i1 false) ; 2 uses
  %i.qz = icmp slt <64 x i8> %i.qx, zeroinitializer ; 2 uses
  %i.ra = shufflevector <64 x i8> %i.qb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rb = sub <64 x i8> zeroinitializer, %i.ra    ; 2 uses
  %i.rc = select <64 x i1> %i.qz, <64 x i8> %i.rb, <64 x i8> %i.ra
  %i.rd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.qy, <64 x i8> %i.rc)
  %i.re = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.rf = shufflevector <32 x i8> %i.re, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.rg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.rf, i1 false) ; 2 uses
  %i.rh = icmp slt <64 x i8> %i.rf, zeroinitializer ; 2 uses
  %i.ri = shufflevector <64 x i8> %i.pr, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rj = sub <64 x i8> zeroinitializer, %i.ri    ; 2 uses
  %i.rk = select <64 x i1> %i.rh, <64 x i8> %i.rj, <64 x i8> %i.ri
  %i.rl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rd, <64 x i8> %i.rg, <64 x i8> %i.rk)
  %i.rm = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.rn = shufflevector <32 x i8> %i.rm, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ro = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.rn, i1 false) ; 2 uses
  %i.rp = icmp slt <64 x i8> %i.rn, zeroinitializer ; 2 uses
  %i.rq = shufflevector <64 x i8> %i.pj, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rr = sub <64 x i8> zeroinitializer, %i.rq    ; 2 uses
  %i.rs = select <64 x i1> %i.rp, <64 x i8> %i.rr, <64 x i8> %i.rq
  %i.rt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rl, <64 x i8> %i.ro, <64 x i8> %i.rs)
  %i.ru = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.rv = shufflevector <32 x i8> %i.ru, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.rw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.rv, i1 false) ; 2 uses
  %i.rx = icmp slt <64 x i8> %i.rv, zeroinitializer ; 2 uses
  %i.ry = shufflevector <64 x i8> %i.pd, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.rz = sub <64 x i8> zeroinitializer, %i.ry    ; 2 uses
  %i.sa = select <64 x i1> %i.rx, <64 x i8> %i.rz, <64 x i8> %i.ry
  %i.sb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rt, <64 x i8> %i.rw, <64 x i8> %i.sa)
  %i.sc = shufflevector <64 x i8> %i.qg, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sd = sub <64 x i8> zeroinitializer, %i.sc    ; 2 uses
  %i.se = select <64 x i1> %i.qz, <64 x i8> %i.sd, <64 x i8> %i.sc
  %i.sf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.qy, <64 x i8> %i.se)
  %i.sg = shufflevector <64 x i8> %i.pw, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sh = sub <64 x i8> zeroinitializer, %i.sg    ; 2 uses
  %i.si = select <64 x i1> %i.rh, <64 x i8> %i.sh, <64 x i8> %i.sg
  %i.sj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sf, <64 x i8> %i.rg, <64 x i8> %i.si)
  %i.sk = shufflevector <64 x i8> %i.pm, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sl = sub <64 x i8> zeroinitializer, %i.sk    ; 2 uses
  %i.sm = select <64 x i1> %i.rp, <64 x i8> %i.sl, <64 x i8> %i.sk
  %i.sn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sj, <64 x i8> %i.ro, <64 x i8> %i.sm)
  %i.so = shufflevector <64 x i8> %i.pg, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sp = sub <64 x i8> zeroinitializer, %i.so    ; 2 uses
  %i.sq = select <64 x i1> %i.rx, <64 x i8> %i.sp, <64 x i8> %i.so
  %i.sr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sn, <64 x i8> %i.rw, <64 x i8> %i.sq)
  %i.ss = bitcast <8 x i32> %i.qv to <32 x i8>
  %i.st = shufflevector <32 x i8> %i.ss, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.su = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.st, i1 false) ; 2 uses
  %i.sv = icmp slt <64 x i8> %i.st, zeroinitializer ; 2 uses
  %i.sw = select <64 x i1> %i.sv, <64 x i8> %i.rb, <64 x i8> %i.ra
  %i.sx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.su, <64 x i8> %i.sw)
  %i.sy = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.sz = shufflevector <32 x i8> %i.sy, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ta = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sz, i1 false) ; 2 uses
  %i.tb = icmp slt <64 x i8> %i.sz, zeroinitializer ; 2 uses
  %i.tc = select <64 x i1> %i.tb, <64 x i8> %i.rj, <64 x i8> %i.ri
  %i.td = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sx, <64 x i8> %i.ta, <64 x i8> %i.tc)
  %i.te = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.tf = shufflevector <32 x i8> %i.te, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.tg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tf, i1 false) ; 2 uses
  %i.th = icmp slt <64 x i8> %i.tf, zeroinitializer ; 2 uses
  %i.ti = select <64 x i1> %i.th, <64 x i8> %i.rr, <64 x i8> %i.rq
  %i.tj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.td, <64 x i8> %i.tg, <64 x i8> %i.ti)
  %i.tk = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.tl = shufflevector <32 x i8> %i.tk, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.tm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tl, i1 false) ; 2 uses
  %i.tn = icmp slt <64 x i8> %i.tl, zeroinitializer ; 2 uses
  %i.to = select <64 x i1> %i.tn, <64 x i8> %i.rz, <64 x i8> %i.ry
  %i.tp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tj, <64 x i8> %i.tm, <64 x i8> %i.to)
  %i.tq = select <64 x i1> %i.sv, <64 x i8> %i.sd, <64 x i8> %i.sc
  %i.tr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.su, <64 x i8> %i.tq)
  %i.ts = select <64 x i1> %i.tb, <64 x i8> %i.sh, <64 x i8> %i.sg
  %i.tt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tr, <64 x i8> %i.ta, <64 x i8> %i.ts)
  %i.tu = select <64 x i1> %i.th, <64 x i8> %i.sl, <64 x i8> %i.sk
  %i.tv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tt, <64 x i8> %i.tg, <64 x i8> %i.tu)
  %i.tw = select <64 x i1> %i.tn, <64 x i8> %i.sp, <64 x i8> %i.so
  %i.tx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tv, <64 x i8> %i.tm, <64 x i8> %i.tw)
  %i.ty = bitcast <8 x i32> %i.qv to <32 x i8>
  %i.tz = shufflevector <32 x i8> %i.ty, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ua = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tz, i1 false) ; 2 uses
  %i.ub = icmp slt <64 x i8> %i.tz, zeroinitializer ; 2 uses
  %i.uc = shufflevector <64 x i8> %i.qb, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ud = sub <64 x i8> zeroinitializer, %i.uc    ; 2 uses
  %i.ue = select <64 x i1> %i.ub, <64 x i8> %i.ud, <64 x i8> %i.uc
  %i.uf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ua, <64 x i8> %i.ue)
  %i.ug = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.uh = shufflevector <32 x i8> %i.ug, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ui = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uh, i1 false) ; 2 uses
  %i.uj = icmp slt <64 x i8> %i.uh, zeroinitializer ; 2 uses
  %i.uk = shufflevector <64 x i8> %i.pr, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ul = sub <64 x i8> zeroinitializer, %i.uk    ; 2 uses
  %i.um = select <64 x i1> %i.uj, <64 x i8> %i.ul, <64 x i8> %i.uk
  %i.un = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uf, <64 x i8> %i.ui, <64 x i8> %i.um)
  %i.uo = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.up = shufflevector <32 x i8> %i.uo, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.up, i1 false) ; 2 uses
  %i.ur = icmp slt <64 x i8> %i.up, zeroinitializer ; 2 uses
  %i.us = shufflevector <64 x i8> %i.pj, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ut = sub <64 x i8> zeroinitializer, %i.us    ; 2 uses
  %i.uu = select <64 x i1> %i.ur, <64 x i8> %i.ut, <64 x i8> %i.us
  %i.uv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.un, <64 x i8> %i.uq, <64 x i8> %i.uu)
  %i.uw = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.ux = shufflevector <32 x i8> %i.uw, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ux, i1 false) ; 2 uses
  %i.uz = icmp slt <64 x i8> %i.ux, zeroinitializer ; 2 uses
  %i.va = shufflevector <64 x i8> %i.pd, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vb = sub <64 x i8> zeroinitializer, %i.va    ; 2 uses
  %i.vc = select <64 x i1> %i.uz, <64 x i8> %i.vb, <64 x i8> %i.va
  %i.vd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uv, <64 x i8> %i.uy, <64 x i8> %i.vc)
  %i.ve = shufflevector <64 x i8> %i.qg, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vf = sub <64 x i8> zeroinitializer, %i.ve    ; 2 uses
  %i.vg = select <64 x i1> %i.ub, <64 x i8> %i.vf, <64 x i8> %i.ve
  %i.vh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ua, <64 x i8> %i.vg)
  %i.vi = shufflevector <64 x i8> %i.pw, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vj = sub <64 x i8> zeroinitializer, %i.vi    ; 2 uses
  %i.vk = select <64 x i1> %i.uj, <64 x i8> %i.vj, <64 x i8> %i.vi
  %i.vl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vh, <64 x i8> %i.ui, <64 x i8> %i.vk)
  %i.vm = shufflevector <64 x i8> %i.pm, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vn = sub <64 x i8> zeroinitializer, %i.vm    ; 2 uses
  %i.vo = select <64 x i1> %i.ur, <64 x i8> %i.vn, <64 x i8> %i.vm
  %i.vp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vl, <64 x i8> %i.uq, <64 x i8> %i.vo)
  %i.vq = shufflevector <64 x i8> %i.pg, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vr = sub <64 x i8> zeroinitializer, %i.vq    ; 2 uses
  %i.vs = select <64 x i1> %i.uz, <64 x i8> %i.vr, <64 x i8> %i.vq
  %i.vt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vp, <64 x i8> %i.uy, <64 x i8> %i.vs)
  %i.vu = bitcast <8 x i32> %i.qv to <32 x i8>
  %i.vv = shufflevector <32 x i8> %i.vu, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.vw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vv, i1 false) ; 2 uses
  %i.vx = icmp slt <64 x i8> %i.vv, zeroinitializer ; 2 uses
  %i.vy = select <64 x i1> %i.vx, <64 x i8> %i.ud, <64 x i8> %i.uc
  %i.vz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.vw, <64 x i8> %i.vy)
  %i.wa = bitcast <8 x i32> %i.qt to <32 x i8>
  %i.wb = shufflevector <32 x i8> %i.wa, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wb, i1 false) ; 2 uses
  %i.wd = icmp slt <64 x i8> %i.wb, zeroinitializer ; 2 uses
  %i.we = select <64 x i1> %i.wd, <64 x i8> %i.ul, <64 x i8> %i.uk
  %i.wf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vz, <64 x i8> %i.wc, <64 x i8> %i.we)
  %i.wg = bitcast <8 x i32> %i.qr to <32 x i8>
  %i.wh = shufflevector <32 x i8> %i.wg, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wi = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wh, i1 false) ; 2 uses
  %i.wj = icmp slt <64 x i8> %i.wh, zeroinitializer ; 2 uses
  %i.wk = select <64 x i1> %i.wj, <64 x i8> %i.ut, <64 x i8> %i.us
  %i.wl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wf, <64 x i8> %i.wi, <64 x i8> %i.wk)
  %i.wm = bitcast <8 x i32> %i.qp to <32 x i8>
  %i.wn = shufflevector <32 x i8> %i.wm, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wn, i1 false) ; 2 uses
  %i.wp = icmp slt <64 x i8> %i.wn, zeroinitializer ; 2 uses
  %i.wq = select <64 x i1> %i.wp, <64 x i8> %i.vb, <64 x i8> %i.va
  %i.wr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wl, <64 x i8> %i.wo, <64 x i8> %i.wq)
  %i.ws = select <64 x i1> %i.vx, <64 x i8> %i.vf, <64 x i8> %i.ve
  %i.wt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.vw, <64 x i8> %i.ws)
  %i.wu = select <64 x i1> %i.wd, <64 x i8> %i.vj, <64 x i8> %i.vi
  %i.wv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wt, <64 x i8> %i.wc, <64 x i8> %i.wu)
  %i.ww = select <64 x i1> %i.wj, <64 x i8> %i.vn, <64 x i8> %i.vm
  %i.wx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wv, <64 x i8> %i.wi, <64 x i8> %i.ww)
  %i.wy = select <64 x i1> %i.wp, <64 x i8> %i.vr, <64 x i8> %i.vq
  %i.wz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wx, <64 x i8> %i.wo, <64 x i8> %i.wy)
  %i.xa = add <16 x i32> %i.vd, %i.sb             ; 2 uses
  %i.xb = add <16 x i32> %i.vt, %i.sr             ; 2 uses
  %i.xc = add <16 x i32> %i.wr, %i.tp             ; 2 uses
  %i.xd = add <16 x i32> %i.wz, %i.tx             ; 2 uses
  %i.xe = shufflevector <16 x i32> %i.xa, <16 x i32> %i.xb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xf = shufflevector <16 x i32> %i.xa, <16 x i32> %i.xb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xg = shufflevector <16 x i32> %i.xc, <16 x i32> %i.xd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xh = shufflevector <16 x i32> %i.xc, <16 x i32> %i.xd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xi = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.qn, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !168
  %i.xj = bitcast <4 x i32> %i.xi to <8 x half>
  %i.xk = shufflevector <8 x half> %i.xj, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xl = fpext <16 x half> %i.xk to <16 x float> ; 4 uses
  %i.xm = sitofp <16 x i32> %i.xe to <16 x float>
  %i.xn = shufflevector <16 x float> %i.xl, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.xo = fmul <16 x float> %i.qm, %i.xn
  %i.xp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xm, <16 x float> %i.xo, <16 x float> %i.ou) ; 2 uses
  %i.xq = sitofp <16 x i32> %i.xf to <16 x float>
  %i.xr = shufflevector <16 x float> %i.xl, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.xs = fmul <16 x float> %i.qm, %i.xr
  %i.xt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xq, <16 x float> %i.xs, <16 x float> %i.ot) ; 2 uses
  %i.xu = sitofp <16 x i32> %i.xg to <16 x float>
end_hunk_4
begin_hunk_5_@ggml_gemm_mxfp4_8x8_q8_0:bb.a
  %i.yx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.yz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1336.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1338.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1340.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1342.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1344.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1346.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1348.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1350.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1352.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1354.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1356.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1358.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1360.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1362.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1364.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.za = mul i64 %.2.i, %2
  %i.zb = shl i64 %i.za, 4
  %i.zc = shl nsw i64 %.01071.i, 5                ; 16 uses
  %i.zd = shl i64 %2, 6
  %i.ze = sub nsw i64 %i.yp, %.01071.i
  %i.zf = shl nsw i64 %i.ze, 5                    ; 16 uses
  %i.zg = shl nsw i64 %.2.i, 2                    ; 15 uses
  %i.zh = or disjoint i64 %i.zg, 1
  %i.zi = mul i64 %2, %i.zh
  %i.zj = shl i64 %i.zi, 2
  %i.zk = or disjoint i64 %i.zg, 2
  %i.zl = mul i64 %2, %i.zk
  %i.zm = shl i64 %i.zl, 2
  %i.zn = or disjoint i64 %i.zg, 3
  %i.zo = mul i64 %2, %i.zn
  %i.zp = shl i64 %i.zo, 2
  %i.zq = add i64 %i.zg, 4
  %i.zr = mul i64 %2, %i.zq
  %i.zs = shl i64 %i.zr, 2
  %i.zt = add i64 %i.zg, 5
  %i.zu = mul i64 %2, %i.zt
  %i.zv = shl i64 %i.zu, 2
  %i.zw = add i64 %i.zg, 6
  %i.zx = mul i64 %2, %i.zw
  %i.zy = shl i64 %i.zx, 2
  %i.zz = add i64 %i.zg, 7
  %i.aaa = mul i64 %2, %i.zz
  %i.aab = shl i64 %i.aaa, 2
  %i.aac = add i64 %i.zg, 8
  %i.aad = mul i64 %2, %i.aac
  %i.aae = shl i64 %i.aad, 2
  %i.aaf = add i64 %i.zg, 9
  %i.aag = mul i64 %2, %i.aaf
  %i.aah = shl i64 %i.aag, 2
  %i.aai = add i64 %i.zg, 10
  %i.aaj = mul i64 %2, %i.aai
  %i.aak = shl i64 %i.aaj, 2
  %i.aal = add i64 %i.zg, 11
  %i.aam = mul i64 %2, %i.aal
  %i.aan = shl i64 %i.aam, 2
  %i.aao = add i64 %i.zg, 12
  %i.aap = mul i64 %2, %i.aao
  %i.aaq = shl i64 %i.aap, 2
  %i.aar = add i64 %i.zg, 13
  %i.aas = mul i64 %2, %i.aar
  %i.aat = shl i64 %i.aas, 2
  %i.aau = add i64 %i.zg, 14
  %i.aav = mul i64 %2, %i.aau
  %i.aaw = shl i64 %i.aav, 2
  %i.aax = add i64 %i.zg, 15
  %i.aay = mul i64 %2, %i.aax
  %i.aaz = shl i64 %i.aay, 2
  %i.aba = xor i64 %.2.i, -1
  %i.abb = add i64 %i.aba, %i.o
  %i.abc = lshr i64 %i.abb, 2
  %i.abd = getelementptr i8, ptr %1, i64 %i.zb
  %i.abe = getelementptr i8, ptr %i.abd, i64 %i.zc
  %i.abf = getelementptr i8, ptr %1, i64 %i.zj
  %i.abg = getelementptr i8, ptr %i.abf, i64 %i.zc
  %i.abh = getelementptr i8, ptr %1, i64 %i.zm
  %i.abi = getelementptr i8, ptr %i.abh, i64 %i.zc
  %i.abj = getelementptr i8, ptr %1, i64 %i.zp
  %i.abk = getelementptr i8, ptr %i.abj, i64 %i.zc
  %i.abl = getelementptr i8, ptr %1, i64 %i.zs
  %i.abm = getelementptr i8, ptr %i.abl, i64 %i.zc
  %i.abn = getelementptr i8, ptr %1, i64 %i.zv
  %i.abo = getelementptr i8, ptr %i.abn, i64 %i.zc
  %i.abp = getelementptr i8, ptr %1, i64 %i.zy
  %i.abq = getelementptr i8, ptr %i.abp, i64 %i.zc
  %i.abr = getelementptr i8, ptr %1, i64 %i.aab
  %i.abs = getelementptr i8, ptr %i.abr, i64 %i.zc
  %i.abt = getelementptr i8, ptr %1, i64 %i.aae
  %i.abu = getelementptr i8, ptr %i.abt, i64 %i.zc
  %i.abv = getelementptr i8, ptr %1, i64 %i.aah
  %i.abw = getelementptr i8, ptr %i.abv, i64 %i.zc
  %i.abx = getelementptr i8, ptr %1, i64 %i.aak
  %i.aby = getelementptr i8, ptr %i.abx, i64 %i.zc
  %i.abz = getelementptr i8, ptr %1, i64 %i.aan
  %i.aca = getelementptr i8, ptr %i.abz, i64 %i.zc
  %i.acb = getelementptr i8, ptr %1, i64 %i.aaq
  %i.acc = getelementptr i8, ptr %i.acb, i64 %i.zc
  %i.acd = getelementptr i8, ptr %1, i64 %i.aat
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.zc
  %i.acf = getelementptr i8, ptr %1, i64 %i.aaw
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.zc
  %i.ach = getelementptr i8, ptr %1, i64 %i.aaz
  %i.aci = getelementptr i8, ptr %i.ach, i64 %i.zc
  br label %.lr.ph1165.split.us.i

.lr.ph1165.split.us.i:                            ; preds = %._crit_edge.us1169.i, %.lr.ph1165.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1169.i ], [ 0, %.lr.ph1165.split.us.preheader.i ] ; 3 uses
  %.31163.us.i = phi i64 [ %i.amj, %._crit_edge.us1169.i ], [ %.2.i, %.lr.ph1165.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !169
  %i.acj = mul nsw i64 %.31163.us.i, %i.f
  %i.ack = getelementptr inbounds [136 x i8], ptr %4, i64 %i.acj ; 2 uses
  store ptr %i.ack, ptr %i.c, align 16, !tbaa !21, !noalias !169
  %i.acl = getelementptr inbounds [136 x i8], ptr %i.ack, i64 %i.f ; 2 uses
  store ptr %i.acl, ptr %i.yx, align 8, !tbaa !21, !noalias !169
  %i.acm = getelementptr inbounds [136 x i8], ptr %i.acl, i64 %i.f ; 2 uses
  store ptr %i.acm, ptr %i.yy, align 16, !tbaa !21, !noalias !169
  %i.acn = getelementptr inbounds [136 x i8], ptr %i.acm, i64 %i.f
  store ptr %i.acn, ptr %i.yz, align 8, !tbaa !21, !noalias !169
  %i.aco = shl nsw i64 %.31163.us.i, 2            ; 16 uses
  %i.acp = mul i64 %i.aco, %2
  %i.acq = or disjoint i64 %i.aco, 1
  %i.acr = mul i64 %i.acq, %2
  %i.acs = or disjoint i64 %i.aco, 2
  %i.act = mul i64 %i.acs, %2
  %i.acu = or disjoint i64 %i.aco, 3
  %i.acv = mul i64 %i.acu, %2
  %i.acw = add nsw i64 %i.aco, 4
  %i.acx = mul i64 %i.acw, %2
  %i.acy = add nsw i64 %i.aco, 5
  %i.acz = mul i64 %i.acy, %2
  %i.ada = add nsw i64 %i.aco, 6
  %i.adb = mul i64 %i.ada, %2
  %i.adc = add nsw i64 %i.aco, 7
  %i.add = mul i64 %i.adc, %2
  %i.ade = add nsw i64 %i.aco, 8
  %i.adf = mul i64 %i.ade, %2
  %i.adg = add nsw i64 %i.aco, 9
  %i.adh = mul i64 %i.adg, %2
  %i.adi = add nsw i64 %i.aco, 10
  %i.adj = mul i64 %i.adi, %2
  %i.adk = add nsw i64 %i.aco, 11
  %i.adl = mul i64 %i.adk, %2
  %i.adm = add nsw i64 %i.aco, 12
  %i.adn = mul i64 %i.adm, %2
  %i.ado = add nsw i64 %i.aco, 13
  %i.adp = mul i64 %i.ado, %2
  %i.adq = add nsw i64 %i.aco, 14
  %i.adr = mul i64 %i.adq, %2
  %i.ads = add nsw i64 %i.aco, 15
  %i.adt = mul i64 %i.ads, %2
  br i1 %i.yr, label %.preheader1099.us.i.us, label %.preheader1099.us.i.preheader

.preheader1099.us.i.preheader:                    ; preds = %.lr.ph1165.split.us.i
  %i.adu = mul i64 %i.zd, %indvar62               ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.abe, i64 %i.adu
  %scevgep65 = getelementptr i8, ptr %i.abg, i64 %i.adu
  %scevgep66 = getelementptr i8, ptr %i.abi, i64 %i.adu
  %scevgep67 = getelementptr i8, ptr %i.abk, i64 %i.adu
  %scevgep68 = getelementptr i8, ptr %i.abm, i64 %i.adu
  %scevgep69 = getelementptr i8, ptr %i.abo, i64 %i.adu
  %scevgep70 = getelementptr i8, ptr %i.abq, i64 %i.adu
  %scevgep71 = getelementptr i8, ptr %i.abs, i64 %i.adu
  %scevgep72 = getelementptr i8, ptr %i.abu, i64 %i.adu
  %scevgep73 = getelementptr i8, ptr %i.abw, i64 %i.adu
  %scevgep74 = getelementptr i8, ptr %i.aby, i64 %i.adu
  %scevgep75 = getelementptr i8, ptr %i.aca, i64 %i.adu
  %scevgep76 = getelementptr i8, ptr %i.acc, i64 %i.adu
  %scevgep77 = getelementptr i8, ptr %i.ace, i64 %i.adu
  %scevgep78 = getelementptr i8, ptr %i.acg, i64 %i.adu
  %scevgep79 = getelementptr i8, ptr %i.aci, i64 %i.adu
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep64, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep65, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep66, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep67, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep68, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep69, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep70, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep71, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep72, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep73, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep74, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep75, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep76, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep77, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep78, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep79, i8 0, i64 %i.zf, i1 false), !tbaa !9, !alias.scope !166
  br label %._crit_edge.us1169.i

.preheader1099.us.i.us:                           ; preds = %.lr.ph1165.split.us.i, %.preheader1098.us.loopexit.i.us
  %.010831161.us.i.us = phi i64 [ %i.ami, %.preheader1098.us.loopexit.i.us ], [ %.01071.i, %.lr.ph1165.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.d, i8 0, i64 512, i1 false), !tbaa !9, !noalias !169
  %i.adv = mul nsw i64 %.010831161.us.i.us, %i.f
  %i.adw = getelementptr inbounds [136 x i8], ptr %3, i64 %i.adv
  br label %.lr.ph1159.us.i.us

.lr.ph1159.us.i.us:                               ; preds = %bb.h, %.preheader1099.us.i.us
  %.010891158.us.i.us = phi i64 [ %i.amh, %bb.h ], [ 0, %.preheader1099.us.i.us ] ; 3 uses
  %i.adx = getelementptr inbounds nuw [136 x i8], ptr %i.adw, i64 %.010891158.us.i.us ; 5 uses
  %55 = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %56 = load <8 x i32>, ptr %55, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %57 = getelementptr inbounds nuw i8, ptr %i.adx, i64 40
  %58 = load <8 x i32>, ptr %57, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 72
  %59 = load <8 x i32>, ptr %i.ady, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adx, i64 104
  %60 = load <8 x i32>, ptr %i.adz, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.aea = shufflevector <8 x i32> %56, <8 x i32> %58, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aeb = shufflevector <8 x i32> %56, <8 x i32> %58, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aec = shufflevector <8 x i32> %59, <8 x i32> %60, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aed = shufflevector <8 x i32> %59, <8 x i32> %60, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aee = bitcast <8 x i32> %i.aea to <32 x i8>
  %i.aef = and <32 x i8> %i.aee, splat (i8 15)
  %i.aeg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aef) ; 2 uses
  %i.aeh = bitcast <8 x i32> %i.aeb to <32 x i8>
  %i.aei = and <32 x i8> %i.aeh, splat (i8 15)
  %i.aej = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aei) ; 2 uses
  %i.aek = bitcast <8 x i32> %i.aec to <32 x i8>
  %i.ael = and <32 x i8> %i.aek, splat (i8 15)
  %i.aem = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.ael) ; 2 uses
  %i.aen = bitcast <8 x i32> %i.aed to <32 x i8>
  %i.aeo = and <32 x i8> %i.aen, splat (i8 15)
  %i.aep = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aeo) ; 2 uses
  %i.aeq = bitcast <8 x i32> %i.aea to <16 x i16>
  %i.aer = lshr <16 x i16> %i.aeq, splat (i16 4)
  %i.aes = bitcast <16 x i16> %i.aer to <32 x i8>
  %i.aet = and <32 x i8> %i.aes, splat (i8 15)
  %i.aeu = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aet) ; 2 uses
  %i.aev = bitcast <8 x i32> %i.aeb to <16 x i16>
  %i.aew = lshr <16 x i16> %i.aev, splat (i16 4)
  %i.aex = bitcast <16 x i16> %i.aew to <32 x i8>
  %i.aey = and <32 x i8> %i.aex, splat (i8 15)
  %i.aez = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aey) ; 2 uses
  %i.afa = bitcast <8 x i32> %i.aec to <16 x i16>
  %i.afb = lshr <16 x i16> %i.afa, splat (i16 4)
  %i.afc = bitcast <16 x i16> %i.afb to <32 x i8>
  %i.afd = and <32 x i8> %i.afc, splat (i8 15)
  %i.afe = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.afd) ; 2 uses
  %i.aff = bitcast <8 x i32> %i.aed to <16 x i16>
  %i.afg = lshr <16 x i16> %i.aff, splat (i16 4)
  %i.afh = bitcast <16 x i16> %i.afg to <32 x i8>
  %i.afi = and <32 x i8> %i.afh, splat (i8 15)
  %i.afj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.afi) ; 2 uses
  %i.afk = load <8 x i8>, ptr %i.adx, align 1, !tbaa !9, !alias.scope !167
  %i.afl = zext <8 x i8> %i.afk to <8 x i64>
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_e8m0_half, <8 x i64> %i.afl
  %i.afn = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.afm, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !noalias !169 ; 4 uses
  %i.afo = shufflevector <32 x i8> %i.afe, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afp = shufflevector <32 x i8> %i.aeu, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afq = shufflevector <32 x i8> %i.aem, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afr = shufflevector <32 x i8> %i.aeg, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afs = shufflevector <32 x i8> %i.afj, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aft = shufflevector <32 x i8> %i.aez, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afu = shufflevector <32 x i8> %i.aep, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afv = shufflevector <32 x i8> %i.aej, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.afw = shufflevector <32 x i8> %i.afe, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afx = shufflevector <32 x i8> %i.aeu, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afy = shufflevector <32 x i8> %i.aem, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.afz = shufflevector <32 x i8> %i.aeg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aga = shufflevector <32 x i8> %i.afj, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.agb = shufflevector <32 x i8> %i.aez, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.agc = shufflevector <32 x i8> %i.aep, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.agd = shufflevector <32 x i8> %i.aej, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph1159.us.i.us
  %indvars.iv1249.i.us = phi i64 [ %indvars.iv.next1250.i.us, %bb.g ], [ 0, %.lr.ph1159.us.i.us ] ; 3 uses
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1249.i.us
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !21, !noalias !169
  %i.agg = getelementptr inbounds nuw [136 x i8], ptr %i.agf, i64 %.010891158.us.i.us ; 5 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agi = load <8 x i32>, ptr %i.agh, align 1, !tbaa !9, !noalias !170 ; 4 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agg, i64 40
  %i.agk = load <8 x i32>, ptr %i.agj, align 1, !tbaa !9, !noalias !170 ; 4 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agg, i64 72
  %i.agm = load <8 x i32>, ptr %i.agl, align 1, !tbaa !9, !noalias !170 ; 4 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agg, i64 104
  %i.ago = load <8 x i32>, ptr %i.agn, align 1, !tbaa !9, !noalias !170 ; 4 uses
  %i.agp = bitcast <8 x i32> %i.ago to <32 x i8>
  %i.agq = shufflevector <32 x i8> %i.agp, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.agr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agq, <32 x i8> %i.agq) ; 2 uses
  %i.ags = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afo, <32 x i8> %i.agq)
  %i.agt = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.agr, <32 x i8> %i.ags)
  %i.agu = bitcast <8 x i32> %i.agm to <32 x i8>
  %i.agv = shufflevector <32 x i8> %i.agu, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.agw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agv, <32 x i8> %i.agv) ; 2 uses
  %i.agx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afp, <32 x i8> %i.agv)
  %i.agy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.agt, <32 x i8> %i.agw, <32 x i8> %i.agx)
  %i.agz = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.aha = shufflevector <32 x i8> %i.agz, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ahb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aha, <32 x i8> %i.aha) ; 2 uses
  %i.ahc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afq, <32 x i8> %i.aha)
  %i.ahd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.agy, <32 x i8> %i.ahb, <32 x i8> %i.ahc)
  %i.ahe = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.ahf = shufflevector <32 x i8> %i.ahe, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ahg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahf, <32 x i8> %i.ahf) ; 2 uses
  %i.ahh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afr, <32 x i8> %i.ahf)
  %i.ahi = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahd, <32 x i8> %i.ahg, <32 x i8> %i.ahh)
  %i.ahj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afs, <32 x i8> %i.agq)
  %i.ahk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.agr, <32 x i8> %i.ahj)
  %i.ahl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aft, <32 x i8> %i.agv)
  %i.ahm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahk, <32 x i8> %i.agw, <32 x i8> %i.ahl)
  %i.ahn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afu, <32 x i8> %i.aha)
  %i.aho = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahm, <32 x i8> %i.ahb, <32 x i8> %i.ahn)
  %i.ahp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afv, <32 x i8> %i.ahf)
  %i.ahq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aho, <32 x i8> %i.ahg, <32 x i8> %i.ahp)
  %i.ahr = bitcast <8 x i32> %i.ago to <32 x i8>
  %i.ahs = shufflevector <32 x i8> %i.ahr, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.aht = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahs, <32 x i8> %i.ahs) ; 2 uses
  %i.ahu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afo, <32 x i8> %i.ahs)
  %i.ahv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aht, <32 x i8> %i.ahu)
  %i.ahw = bitcast <8 x i32> %i.agm to <32 x i8>
  %i.ahx = shufflevector <32 x i8> %i.ahw, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ahy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahx, <32 x i8> %i.ahx) ; 2 uses
  %i.ahz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afp, <32 x i8> %i.ahx)
  %i.aia = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ahv, <32 x i8> %i.ahy, <32 x i8> %i.ahz)
  %i.aib = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.aic = shufflevector <32 x i8> %i.aib, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.aid = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aic, <32 x i8> %i.aic) ; 2 uses
  %i.aie = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afq, <32 x i8> %i.aic)
  %i.aif = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aia, <32 x i8> %i.aid, <32 x i8> %i.aie)
  %i.aig = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.aih = shufflevector <32 x i8> %i.aig, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.aii = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aih, <32 x i8> %i.aih) ; 2 uses
  %i.aij = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afr, <32 x i8> %i.aih)
  %i.aik = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aif, <32 x i8> %i.aii, <32 x i8> %i.aij)
  %i.ail = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afs, <32 x i8> %i.ahs)
  %i.aim = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aht, <32 x i8> %i.ail)
  %i.ain = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aft, <32 x i8> %i.ahx)
  %i.aio = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aim, <32 x i8> %i.ahy, <32 x i8> %i.ain)
  %i.aip = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afu, <32 x i8> %i.aic)
  %i.aiq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aio, <32 x i8> %i.aid, <32 x i8> %i.aip)
  %i.air = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afv, <32 x i8> %i.aih)
  %i.ais = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aiq, <32 x i8> %i.aii, <32 x i8> %i.air)
  %i.ait = bitcast <8 x i32> %i.ago to <32 x i8>
  %i.aiu = shufflevector <32 x i8> %i.ait, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aiv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiu, <32 x i8> %i.aiu) ; 2 uses
  %i.aiw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afw, <32 x i8> %i.aiu)
  %i.aix = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aiv, <32 x i8> %i.aiw)
  %i.aiy = bitcast <8 x i32> %i.agm to <32 x i8>
  %i.aiz = shufflevector <32 x i8> %i.aiy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aja = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiz, <32 x i8> %i.aiz) ; 2 uses
  %i.ajb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afx, <32 x i8> %i.aiz)
  %i.ajc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aix, <32 x i8> %i.aja, <32 x i8> %i.ajb)
  %i.ajd = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.aje = shufflevector <32 x i8> %i.ajd, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ajf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aje, <32 x i8> %i.aje) ; 2 uses
  %i.ajg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afy, <32 x i8> %i.aje)
  %i.ajh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajc, <32 x i8> %i.ajf, <32 x i8> %i.ajg)
  %i.aji = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.ajj = shufflevector <32 x i8> %i.aji, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ajk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajj, <32 x i8> %i.ajj) ; 2 uses
  %i.ajl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afz, <32 x i8> %i.ajj)
  %i.ajm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajh, <32 x i8> %i.ajk, <32 x i8> %i.ajl)
  %i.ajn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aga, <32 x i8> %i.aiu)
  %i.ajo = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aiv, <32 x i8> %i.ajn)
  %i.ajp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agb, <32 x i8> %i.aiz)
  %i.ajq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajo, <32 x i8> %i.aja, <32 x i8> %i.ajp)
  %i.ajr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agc, <32 x i8> %i.aje)
  %i.ajs = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajq, <32 x i8> %i.ajf, <32 x i8> %i.ajr)
  %i.ajt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agd, <32 x i8> %i.ajj)
  %i.aju = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajs, <32 x i8> %i.ajk, <32 x i8> %i.ajt)
  %i.ajv = bitcast <8 x i32> %i.ago to <32 x i8>
  %i.ajw = shufflevector <32 x i8> %i.ajv, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.ajx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajw, <32 x i8> %i.ajw) ; 2 uses
  %i.ajy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afw, <32 x i8> %i.ajw)
  %i.ajz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajx, <32 x i8> %i.ajy)
  %i.aka = bitcast <8 x i32> %i.agm to <32 x i8>
  %i.akb = shufflevector <32 x i8> %i.aka, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.akc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akb, <32 x i8> %i.akb) ; 2 uses
  %i.akd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afx, <32 x i8> %i.akb)
  %i.ake = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajz, <32 x i8> %i.akc, <32 x i8> %i.akd)
  %i.akf = bitcast <8 x i32> %i.agk to <32 x i8>
  %i.akg = shufflevector <32 x i8> %i.akf, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.akh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akg, <32 x i8> %i.akg) ; 2 uses
  %i.aki = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afy, <32 x i8> %i.akg)
  %i.akj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ake, <32 x i8> %i.akh, <32 x i8> %i.aki)
  %i.akk = bitcast <8 x i32> %i.agi to <32 x i8>
  %i.akl = shufflevector <32 x i8> %i.akk, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.akm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akl, <32 x i8> %i.akl) ; 2 uses
  %i.akn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.afz, <32 x i8> %i.akl)
  %i.ako = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akj, <32 x i8> %i.akm, <32 x i8> %i.akn)
  %i.akp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aga, <32 x i8> %i.ajw)
  %i.akq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajx, <32 x i8> %i.akp)
  %i.akr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agb, <32 x i8> %i.akb)
  %i.aks = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akq, <32 x i8> %i.akc, <32 x i8> %i.akr)
  %i.akt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agc, <32 x i8> %i.akg)
  %i.aku = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aks, <32 x i8> %i.akh, <32 x i8> %i.akt)
  %i.akv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.agd, <32 x i8> %i.akl)
  %i.akw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aku, <32 x i8> %i.akm, <32 x i8> %i.akv)
  %i.akx = add <8 x i32> %i.ajm, %i.ahi           ; 2 uses
  %i.aky = add <8 x i32> %i.aju, %i.ahq           ; 2 uses
  %i.akz = add <8 x i32> %i.ako, %i.aik           ; 2 uses
  %i.ala = add <8 x i32> %i.akw, %i.ais           ; 2 uses
  %i.alb = shufflevector <8 x i32> %i.akx, <8 x i32> %i.aky, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.alc = shufflevector <8 x i32> %i.akx, <8 x i32> %i.aky, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ald = shufflevector <8 x i32> %i.akz, <8 x i32> %i.ala, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ale = shufflevector <8 x i32> %i.akz, <8 x i32> %i.ala, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.alf = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.agg, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !170
  %i.alg = bitcast <4 x i32> %i.alf to <8 x half>
  %i.alh = shufflevector <8 x half> %i.alg, <8 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ali = fpext <8 x half> %i.alh to <8 x float> ; 4 uses
  %i.alj = sitofp <8 x i32> %i.alb to <8 x float>
  %i.alk = shufflevector <8 x float> %i.ali, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.all = fmul <8 x float> %i.afn, %i.alk
  %.idx1385.i.us = shl nuw nsw i64 %indvars.iv1249.i.us, 7
  %i.alm = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx1385.i.us ; 5 uses
  %i.aln = load <8 x float>, ptr %i.alm, align 32, !tbaa !9, !noalias !169
  %i.alo = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.alj, <8 x float> %i.all, <8 x float> %i.aln)
  store <8 x float> %i.alo, ptr %i.alm, align 32, !tbaa !9, !noalias !169
  %i.alp = sitofp <8 x i32> %i.alc to <8 x float>
  %i.alq = shufflevector <8 x float> %i.ali, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.alr = fmul <8 x float> %i.afn, %i.alq
  %i.als = getelementptr inbounds nuw i8, ptr %i.alm, i64 32 ; 2 uses
  %i.alt = load <8 x float>, ptr %i.als, align 32, !tbaa !9, !noalias !169
  %i.alu = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.alp, <8 x float> %i.alr, <8 x float> %i.alt)
  store <8 x float> %i.alu, ptr %i.als, align 32, !tbaa !9, !noalias !169
  %i.alv = sitofp <8 x i32> %i.ald to <8 x float>
  %i.alw = shufflevector <8 x float> %i.ali, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.alx = fmul <8 x float> %i.afn, %i.alw
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alm, i64 64 ; 2 uses
  %i.alz = load <8 x float>, ptr %i.aly, align 32, !tbaa !9, !noalias !169
  %i.ama = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.alv, <8 x float> %i.alx, <8 x float> %i.alz)
  store <8 x float> %i.ama, ptr %i.aly, align 32, !tbaa !9, !noalias !169
  %i.amb = sitofp <8 x i32> %i.ale to <8 x float>
  %i.amc = shufflevector <8 x float> %i.ali, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7>
  %i.amd = fmul <8 x float> %i.afn, %i.amc
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alm, i64 96 ; 2 uses
  %i.amf = load <8 x float>, ptr %i.ame, align 32, !tbaa !9, !noalias !169
  %i.amg = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.amb, <8 x float> %i.amd, <8 x float> %i.amf)
  store <8 x float> %i.amg, ptr %i.ame, align 32, !tbaa !9, !noalias !169
  %indvars.iv.next1250.i.us = add nuw nsw i64 %indvars.iv1249.i.us, 1 ; 2 uses
  %exitcond1252.not.i.us = icmp eq i64 %indvars.iv.next1250.i.us, 4
  br i1 %exitcond1252.not.i.us, label %bb.h, label %bb.g, !llvm.loop !158

bb.h:                                             ; preds = %bb.g
  %i.amh = add nuw nsw i64 %.010891158.us.i.us, 1 ; 2 uses
  %exitcond1253.not.i.us = icmp eq i64 %i.amh, %i.f
  br i1 %exitcond1253.not.i.us, label %.preheader1098.us.loopexit.i.us, label %.lr.ph1159.us.i.us, !llvm.loop !159

.preheader1098.us.loopexit.i.us:                  ; preds = %bb.h
  %.pre1335.i.us = load <8 x float>, ptr %i.d, align 32, !tbaa !9, !noalias !169
  %.pre1337.i.us = load <8 x float>, ptr %.phi.trans.insert1336.i, align 32, !tbaa !9, !noalias !169
  %.pre1339.i.us = load <8 x float>, ptr %.phi.trans.insert1338.i, align 32, !tbaa !9, !noalias !169
  %.pre1341.i.us = load <8 x float>, ptr %.phi.trans.insert1340.i, align 32, !tbaa !9, !noalias !169
  %.pre1343.i.us = load <8 x float>, ptr %.phi.trans.insert1342.i, align 32, !tbaa !9, !noalias !169
  %.pre1345.i.us = load <8 x float>, ptr %.phi.trans.insert1344.i, align 32, !tbaa !9, !noalias !169
  %.pre1347.i.us = load <8 x float>, ptr %.phi.trans.insert1346.i, align 32, !tbaa !9, !noalias !169
  %.pre1349.i.us = load <8 x float>, ptr %.phi.trans.insert1348.i, align 32, !tbaa !9, !noalias !169
  %.pre1351.i.us = load <8 x float>, ptr %.phi.trans.insert1350.i, align 32, !tbaa !9, !noalias !169
  %.pre1353.i.us = load <8 x float>, ptr %.phi.trans.insert1352.i, align 32, !tbaa !9, !noalias !169
  %.pre1355.i.us = load <8 x float>, ptr %.phi.trans.insert1354.i, align 32, !tbaa !9, !noalias !169
  %.pre1357.i.us = load <8 x float>, ptr %.phi.trans.insert1356.i, align 32, !tbaa !9, !noalias !169
  %.pre1359.i.us = load <8 x float>, ptr %.phi.trans.insert1358.i, align 32, !tbaa !9, !noalias !169
  %.pre1361.i.us = load <8 x float>, ptr %.phi.trans.insert1360.i, align 32, !tbaa !9, !noalias !169
  %.pre1363.i.us = load <8 x float>, ptr %.phi.trans.insert1362.i, align 32, !tbaa !9, !noalias !169
  %.pre1365.i.us = load <8 x float>, ptr %.phi.trans.insert1364.i, align 32, !tbaa !9, !noalias !169
  %.idx1093.us.i.us = shl i64 %.010831161.us.i.us, 5
  %invariant.gep.us1167.i.us = getelementptr i8, ptr %1, i64 %.idx1093.us.i.us ; 16 uses
  %gep.us1168.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.acp
  store <8 x float> %.pre1335.i.us, ptr %gep.us1168.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.1.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.acr
  store <8 x float> %.pre1337.i.us, ptr %gep.us1168.1.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.2.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.act
  store <8 x float> %.pre1339.i.us, ptr %gep.us1168.2.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.3.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.acv
  store <8 x float> %.pre1341.i.us, ptr %gep.us1168.3.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.4.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.acx
  store <8 x float> %.pre1343.i.us, ptr %gep.us1168.4.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.5.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.acz
  store <8 x float> %.pre1345.i.us, ptr %gep.us1168.5.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.6.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.adb
  store <8 x float> %.pre1347.i.us, ptr %gep.us1168.6.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.7.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.add
  store <8 x float> %.pre1349.i.us, ptr %gep.us1168.7.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.8.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.adf
  store <8 x float> %.pre1351.i.us, ptr %gep.us1168.8.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.9.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.adh
  store <8 x float> %.pre1353.i.us, ptr %gep.us1168.9.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.10.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.adj
  store <8 x float> %.pre1355.i.us, ptr %gep.us1168.10.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.11.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.adl
  store <8 x float> %.pre1357.i.us, ptr %gep.us1168.11.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.12.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.adn
  store <8 x float> %.pre1359.i.us, ptr %gep.us1168.12.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.13.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.adp
  store <8 x float> %.pre1361.i.us, ptr %gep.us1168.13.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.14.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.adr
  store <8 x float> %.pre1363.i.us, ptr %gep.us1168.14.i.us, align 1, !tbaa !9, !alias.scope !166
  %gep.us1168.15.i.us = getelementptr [4 x i8], ptr %invariant.gep.us1167.i.us, i64 %i.adt
  store <8 x float> %.pre1365.i.us, ptr %gep.us1168.15.i.us, align 1, !tbaa !9, !alias.scope !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13, !noalias !169
  %i.ami = add nsw i64 %.010831161.us.i.us, 1     ; 2 uses
  %exitcond1258.not.i.us = icmp eq i64 %i.ami, %i.yp
  br i1 %exitcond1258.not.i.us, label %._crit_edge.us1169.i, label %.preheader1099.us.i.us, !llvm.loop !160

._crit_edge.us1169.i:                             ; preds = %.preheader1098.us.loopexit.i.us, %.preheader1099.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13, !noalias !169
  %i.amj = add nsw i64 %.31163.us.i, 4            ; 2 uses
  %indvar.next63 = add nuw nsw i64 %indvar62, 1
  %exitcond80.not = icmp eq i64 %indvar62, %i.abc
  br i1 %exitcond80.not, label %.preheader1097.i, label %.lr.ph1165.split.us.i, !llvm.loop !161

.preheader1097.i:                                 ; preds = %._crit_edge.us1169.i, %.lr.ph1165.split.i.preheader, %bb.f
  %.3.lcssa.i = phi i64 [ %.2.i, %bb.f ], [ %i.yw, %.lr.ph1165.split.i.preheader ], [ %i.amj, %._crit_edge.us1169.i ] ; 6 uses
  %i.amk = icmp slt i64 %.3.lcssa.i, %i.my
  br i1 %i.amk, label %.lr.ph1188.i, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit

.lr.ph1188.i:                                     ; preds = %.preheader1097.i
  %i.aml = sdiv i32 %6, 8
  %i.amm = sext i32 %i.aml to i64                 ; 3 uses
  %i.amn = icmp slt i64 %.01071.i, %i.amm
  br i1 %i.amn, label %.lr.ph1188.split.i, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit

.lr.ph1188.split.i:                               ; preds = %.lr.ph1188.i
  %i.amo = icmp sgt i32 %0, 31
  br i1 %i.amo, label %.lr.ph1184.us.i, label %.lr.ph1184.i.preheader

.lr.ph1184.i.preheader:                           ; preds = %.lr.ph1188.split.i
  %i.amp = mul i64 %.3.lcssa.i, %2
  %i.amq = shl i64 %i.amp, 4
  %i.amr = shl nsw i64 %.01071.i, 5               ; 4 uses
  %i.ams = shl i64 %2, 4                          ; 5 uses
  %i.amt = sub nsw i64 %i.amm, %.01071.i
  %i.amu = shl nsw i64 %i.amt, 5                  ; 20 uses
  %i.amv = shl i64 %.3.lcssa.i, 2                 ; 3 uses
  %i.amw = or disjoint i64 %i.amv, 1
  %i.amx = mul i64 %2, %i.amw
  %i.amy = shl i64 %i.amx, 2
  %i.amz = or disjoint i64 %i.amv, 2
  %i.ana = mul i64 %2, %i.amz
  %i.anb = shl i64 %i.ana, 2
  %i.anc = or disjoint i64 %i.amv, 3
  %i.and = mul i64 %2, %i.anc
  %i.ane = shl i64 %i.and, 2
  %i.anf = getelementptr i8, ptr %1, i64 %i.ane
  %i.ang = getelementptr i8, ptr %i.anf, i64 %i.amr ; 5 uses
  %i.anh = getelementptr i8, ptr %1, i64 %i.anb
  %i.ani = getelementptr i8, ptr %i.anh, i64 %i.amr ; 5 uses
  %i.anj = getelementptr i8, ptr %1, i64 %i.amy
  %i.ank = getelementptr i8, ptr %i.anj, i64 %i.amr ; 5 uses
  %i.anl = getelementptr i8, ptr %1, i64 %i.amq
  %i.anm = getelementptr i8, ptr %i.anl, i64 %i.amr ; 5 uses
  %i.ann = sub i64 %i.my, %.3.lcssa.i             ; 2 uses
  %xtraiter167 = and i64 %i.ann, 3                ; 3 uses
  %i.ano = sub i64 %.3.lcssa.i, %i.my
  %i.anp = icmp ugt i64 %i.ano, -4
  br i1 %i.anp, label %.lr.ph1184.i.epil.preheader, label %.lr.ph1184.i.preheader.new

.lr.ph1184.i.preheader.new:                       ; preds = %.lr.ph1184.i.preheader
  %unroll_iter171 = and i64 %i.ann, -4
  br label %.lr.ph1184.i

.lr.ph1184.us.i:                                  ; preds = %.lr.ph1188.split.i, %._crit_edge.split.us.us.i
  %.41187.us.i = phi i64 [ %i.awi, %._crit_edge.split.us.us.i ], [ %.3.lcssa.i, %.lr.ph1188.split.i ] ; 3 uses
  %i.anq = mul nsw i64 %.41187.us.i, %i.f
  %i.anr = getelementptr inbounds [136 x i8], ptr %4, i64 %i.anq
  %i.ans = shl nsw i64 %.41187.us.i, 2            ; 4 uses
  %i.ant = mul i64 %i.ans, %2
  %i.anu = or disjoint i64 %i.ans, 1
  %i.anv = mul i64 %i.anu, %2
  %i.anw = or disjoint i64 %i.ans, 2
  %i.anx = mul i64 %i.anw, %2
  %i.any = or disjoint i64 %i.ans, 3
  %i.anz = mul i64 %i.any, %2
  br label %.preheader1096.us.us.i

.preheader1096.us.us.i:                           ; preds = %..preheader_crit_edge.us.us.i, %.lr.ph1184.us.i
  %.010871183.us.us.i = phi i64 [ %.01071.i, %.lr.ph1184.us.i ], [ %i.awh, %..preheader_crit_edge.us.us.i ] ; 3 uses
  %i.aoa = mul nsw i64 %.010871183.us.us.i, %i.f
  %i.aob = getelementptr inbounds [136 x i8], ptr %3, i64 %i.aoa
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader1096.us.us.i
  %i.aoc = phi <8 x float> [ zeroinitializer, %.preheader1096.us.us.i ], [ %i.awf, %bb.i ]
  %i.aod = phi <8 x float> [ zeroinitializer, %.preheader1096.us.us.i ], [ %i.awb, %bb.i ]
  %i.aoe = phi <8 x float> [ zeroinitializer, %.preheader1096.us.us.i ], [ %i.avx, %bb.i ]
  %.010851173.us.us.i = phi i64 [ 0, %.preheader1096.us.us.i ], [ %i.awg, %bb.i ] ; 3 uses
  %i.aof = phi <8 x float> [ zeroinitializer, %.preheader1096.us.us.i ], [ %i.avt, %bb.i ]
  %i.aog = getelementptr inbounds nuw [136 x i8], ptr %i.aob, i64 %.010851173.us.us.i ; 5 uses
  %61 = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  %62 = load <8 x i32>, ptr %61, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %63 = getelementptr inbounds nuw i8, ptr %i.aog, i64 40
  %64 = load <8 x i32>, ptr %63, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 72
  %65 = load <8 x i32>, ptr %i.aoh, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aog, i64 104
  %66 = load <8 x i32>, ptr %i.aoi, align 1, !tbaa !9, !alias.scope !167 ; 2 uses
  %i.aoj = shufflevector <8 x i32> %62, <8 x i32> %64, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aok = shufflevector <8 x i32> %62, <8 x i32> %64, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aol = shufflevector <8 x i32> %65, <8 x i32> %66, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aom = shufflevector <8 x i32> %65, <8 x i32> %66, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aon = bitcast <8 x i32> %i.aoj to <32 x i8>
  %i.aoo = and <32 x i8> %i.aon, splat (i8 15)
  %i.aop = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aoo) ; 2 uses
  %i.aoq = bitcast <8 x i32> %i.aok to <32 x i8>
  %i.aor = and <32 x i8> %i.aoq, splat (i8 15)
  %i.aos = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aor) ; 2 uses
  %i.aot = bitcast <8 x i32> %i.aol to <32 x i8>
  %i.aou = and <32 x i8> %i.aot, splat (i8 15)
  %i.aov = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aou) ; 2 uses
  %i.aow = bitcast <8 x i32> %i.aom to <32 x i8>
  %i.aox = and <32 x i8> %i.aow, splat (i8 15)
  %i.aoy = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aox) ; 2 uses
  %i.aoz = bitcast <8 x i32> %i.aoj to <16 x i16>
  %i.apa = lshr <16 x i16> %i.aoz, splat (i16 4)
  %i.apb = bitcast <16 x i16> %i.apa to <32 x i8>
  %i.apc = and <32 x i8> %i.apb, splat (i8 15)
  %i.apd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.apc) ; 2 uses
  %i.ape = bitcast <8 x i32> %i.aok to <16 x i16>
  %i.apf = lshr <16 x i16> %i.ape, splat (i16 4)
  %i.apg = bitcast <16 x i16> %i.apf to <32 x i8>
  %i.aph = and <32 x i8> %i.apg, splat (i8 15)
  %i.api = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.aph) ; 2 uses
  %i.apj = bitcast <8 x i32> %i.aol to <16 x i16>
  %i.apk = lshr <16 x i16> %i.apj, splat (i16 4)
  %i.apl = bitcast <16 x i16> %i.apk to <32 x i8>
  %i.apm = and <32 x i8> %i.apl, splat (i8 15)
  %i.apn = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.apm) ; 2 uses
  %i.apo = bitcast <8 x i32> %i.aom to <16 x i16>
  %i.app = lshr <16 x i16> %i.apo, splat (i16 4)
  %i.apq = bitcast <16 x i16> %i.app to <32 x i8>
  %i.apr = and <32 x i8> %i.apq, splat (i8 15)
  %i.aps = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.apr) ; 2 uses
  %i.apt = load <8 x i8>, ptr %i.aog, align 1, !tbaa !9, !alias.scope !167
  %i.apu = zext <8 x i8> %i.apt to <8 x i64>
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_e8m0_half, <8 x i64> %i.apu
  %i.apw = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.apv, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !noalias !169 ; 4 uses
  %i.apx = getelementptr inbounds nuw [136 x i8], ptr %i.anr, i64 %.010851173.us.us.i ; 5 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 8
  %i.apz = load <8 x i32>, ptr %i.apy, align 1, !tbaa !9, !alias.scope !168 ; 4 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apx, i64 40
  %i.aqb = load <8 x i32>, ptr %i.aqa, align 1, !tbaa !9, !alias.scope !168 ; 4 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apx, i64 72
  %i.aqd = load <8 x i32>, ptr %i.aqc, align 1, !tbaa !9, !alias.scope !168 ; 4 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apx, i64 104
  %i.aqf = load <8 x i32>, ptr %i.aqe, align 1, !tbaa !9, !alias.scope !168 ; 4 uses
  %i.aqg = bitcast <8 x i32> %i.aqf to <32 x i8>
  %i.aqh = shufflevector <32 x i8> %i.aqg, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqi = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqh, <32 x i8> %i.aqh) ; 2 uses
  %i.aqj = shufflevector <32 x i8> %i.apn, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqj, <32 x i8> %i.aqh)
  %i.aql = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aqi, <32 x i8> %i.aqk)
  %i.aqm = bitcast <8 x i32> %i.aqd to <32 x i8>
  %i.aqn = shufflevector <32 x i8> %i.aqm, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqn, <32 x i8> %i.aqn) ; 2 uses
  %i.aqp = shufflevector <32 x i8> %i.apd, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqp, <32 x i8> %i.aqn)
  %i.aqr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aql, <32 x i8> %i.aqo, <32 x i8> %i.aqq)
  %i.aqs = bitcast <8 x i32> %i.aqb to <32 x i8>
  %i.aqt = shufflevector <32 x i8> %i.aqs, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aqu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqt, <32 x i8> %i.aqt) ; 2 uses
  %i.aqv = shufflevector <32 x i8> %i.aov, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aqw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqv, <32 x i8> %i.aqt)
  %i.aqx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aqr, <32 x i8> %i.aqu, <32 x i8> %i.aqw)
  %i.aqy = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.aqz = shufflevector <32 x i8> %i.aqy, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ara = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqz, <32 x i8> %i.aqz) ; 2 uses
  %i.arb = shufflevector <32 x i8> %i.aop, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.arc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arb, <32 x i8> %i.aqz)
  %i.ard = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aqx, <32 x i8> %i.ara, <32 x i8> %i.arc)
  %i.are = shufflevector <32 x i8> %i.aps, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.arf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.are, <32 x i8> %i.aqh)
  %i.arg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aqi, <32 x i8> %i.arf)
  %i.arh = shufflevector <32 x i8> %i.api, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ari = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arh, <32 x i8> %i.aqn)
  %i.arj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.arg, <32 x i8> %i.aqo, <32 x i8> %i.ari)
  %i.ark = shufflevector <32 x i8> %i.aoy, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.arl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ark, <32 x i8> %i.aqt)
  %i.arm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.arj, <32 x i8> %i.aqu, <32 x i8> %i.arl)
  %i.arn = shufflevector <32 x i8> %i.aos, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aro = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arn, <32 x i8> %i.aqz)
  %i.arp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.arm, <32 x i8> %i.ara, <32 x i8> %i.aro)
  %i.arq = bitcast <8 x i32> %i.aqf to <32 x i8>
  %i.arr = shufflevector <32 x i8> %i.arq, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ars = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arr, <32 x i8> %i.arr) ; 2 uses
  %i.art = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqj, <32 x i8> %i.arr)
  %i.aru = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ars, <32 x i8> %i.art)
  %i.arv = bitcast <8 x i32> %i.aqd to <32 x i8>
  %i.arw = shufflevector <32 x i8> %i.arv, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.arx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arw, <32 x i8> %i.arw) ; 2 uses
  %i.ary = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqp, <32 x i8> %i.arw)
  %i.arz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aru, <32 x i8> %i.arx, <32 x i8> %i.ary)
  %i.asa = bitcast <8 x i32> %i.aqb to <32 x i8>
  %i.asb = shufflevector <32 x i8> %i.asa, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.asc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asb, <32 x i8> %i.asb) ; 2 uses
  %i.asd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aqv, <32 x i8> %i.asb)
  %i.ase = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.arz, <32 x i8> %i.asc, <32 x i8> %i.asd)
  %i.asf = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.asg = shufflevector <32 x i8> %i.asf, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ash = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asg, <32 x i8> %i.asg) ; 2 uses
  %i.asi = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arb, <32 x i8> %i.asg)
  %i.asj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ase, <32 x i8> %i.ash, <32 x i8> %i.asi)
  %i.ask = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.are, <32 x i8> %i.arr)
  %i.asl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ars, <32 x i8> %i.ask)
  %i.asm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arh, <32 x i8> %i.arw)
  %i.asn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asl, <32 x i8> %i.arx, <32 x i8> %i.asm)
  %i.aso = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ark, <32 x i8> %i.asb)
  %i.asp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asn, <32 x i8> %i.asc, <32 x i8> %i.aso)
  %i.asq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.arn, <32 x i8> %i.asg)
  %i.asr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asp, <32 x i8> %i.ash, <32 x i8> %i.asq)
  %i.ass = bitcast <8 x i32> %i.aqf to <32 x i8>
  %i.ast = shufflevector <32 x i8> %i.ass, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.asu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ast, <32 x i8> %i.ast) ; 2 uses
  %i.asv = shufflevector <32 x i8> %i.apn, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.asw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asv, <32 x i8> %i.ast)
  %i.asx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.asu, <32 x i8> %i.asw)
  %i.asy = bitcast <8 x i32> %i.aqd to <32 x i8>
  %i.asz = shufflevector <32 x i8> %i.asy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ata = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asz, <32 x i8> %i.asz) ; 2 uses
  %i.atb = shufflevector <32 x i8> %i.apd, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atb, <32 x i8> %i.asz)
  %i.atd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.asx, <32 x i8> %i.ata, <32 x i8> %i.atc)
  %i.ate = bitcast <8 x i32> %i.aqb to <32 x i8>
  %i.atf = shufflevector <32 x i8> %i.ate, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.atg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atf, <32 x i8> %i.atf) ; 2 uses
  %i.ath = shufflevector <32 x i8> %i.aov, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ati = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ath, <32 x i8> %i.atf)
  %i.atj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.atd, <32 x i8> %i.atg, <32 x i8> %i.ati)
  %i.atk = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.atl = shufflevector <32 x i8> %i.atk, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.atm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atl, <32 x i8> %i.atl) ; 2 uses
  %i.atn = shufflevector <32 x i8> %i.aop, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ato = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atn, <32 x i8> %i.atl)
  %i.atp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.atj, <32 x i8> %i.atm, <32 x i8> %i.ato)
  %i.atq = shufflevector <32 x i8> %i.aps, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atq, <32 x i8> %i.ast)
  %i.ats = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.asu, <32 x i8> %i.atr)
  %i.att = shufflevector <32 x i8> %i.api, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.att, <32 x i8> %i.asz)
  %i.atv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ats, <32 x i8> %i.ata, <32 x i8> %i.atu)
  %i.atw = shufflevector <32 x i8> %i.aoy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.atx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atw, <32 x i8> %i.atf)
  %i.aty = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.atv, <32 x i8> %i.atg, <32 x i8> %i.atx)
  %i.atz = shufflevector <32 x i8> %i.aos, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aua = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atz, <32 x i8> %i.atl)
  %i.aub = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aty, <32 x i8> %i.atm, <32 x i8> %i.aua)
  %i.auc = bitcast <8 x i32> %i.aqf to <32 x i8>
  %i.aud = shufflevector <32 x i8> %i.auc, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aue = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aud, <32 x i8> %i.aud) ; 2 uses
  %i.auf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.asv, <32 x i8> %i.aud)
  %i.aug = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aue, <32 x i8> %i.auf)
  %i.auh = bitcast <8 x i32> %i.aqd to <32 x i8>
  %i.aui = shufflevector <32 x i8> %i.auh, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.auj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aui, <32 x i8> %i.aui) ; 2 uses
  %i.auk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atb, <32 x i8> %i.aui)
  %i.aul = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aug, <32 x i8> %i.auj, <32 x i8> %i.auk)
  %i.aum = bitcast <8 x i32> %i.aqb to <32 x i8>
  %i.aun = shufflevector <32 x i8> %i.aum, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.auo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aun, <32 x i8> %i.aun) ; 2 uses
  %i.aup = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ath, <32 x i8> %i.aun)
  %i.auq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aul, <32 x i8> %i.auo, <32 x i8> %i.aup)
  %i.aur = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.aus = shufflevector <32 x i8> %i.aur, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aut = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aus, <32 x i8> %i.aus) ; 2 uses
  %i.auu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atn, <32 x i8> %i.aus)
  %i.auv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.auq, <32 x i8> %i.aut, <32 x i8> %i.auu)
  %i.auw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atq, <32 x i8> %i.aud)
  %i.aux = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aue, <32 x i8> %i.auw)
  %i.auy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.att, <32 x i8> %i.aui)
  %i.auz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aux, <32 x i8> %i.auj, <32 x i8> %i.auy)
  %i.ava = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atw, <32 x i8> %i.aun)
  %i.avb = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.auz, <32 x i8> %i.auo, <32 x i8> %i.ava)
  %i.avc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.atz, <32 x i8> %i.aus)
  %i.avd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avb, <32 x i8> %i.aut, <32 x i8> %i.avc)
  %i.ave = add <8 x i32> %i.atp, %i.ard           ; 2 uses
  %i.avf = add <8 x i32> %i.aub, %i.arp           ; 2 uses
  %i.avg = add <8 x i32> %i.auv, %i.asj           ; 2 uses
  %i.avh = add <8 x i32> %i.avd, %i.asr           ; 2 uses
  %i.avi = shufflevector <8 x i32> %i.ave, <8 x i32> %i.avf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.avj = shufflevector <8 x i32> %i.ave, <8 x i32> %i.avf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.avk = shufflevector <8 x i32> %i.avg, <8 x i32> %i.avh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.avl = shufflevector <8 x i32> %i.avg, <8 x i32> %i.avh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.avm = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.apx, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !168
  %i.avn = bitcast <4 x i32> %i.avm to <8 x half>
  %i.avo = shufflevector <8 x half> %i.avn, <8 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.avp = fpext <8 x half> %i.avo to <8 x float> ; 4 uses
  %i.avq = sitofp <8 x i32> %i.avi to <8 x float>
  %i.avr = shufflevector <8 x float> %i.avp, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.avs = fmul <8 x float> %i.apw, %i.avr
  %i.avt = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avq, <8 x float> %i.avs, <8 x float> %i.aof) ; 2 uses
  %i.avu = sitofp <8 x i32> %i.avj to <8 x float>
  %i.avv = shufflevector <8 x float> %i.avp, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.avw = fmul <8 x float> %i.apw, %i.avv
  %i.avx = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avu, <8 x float> %i.avw, <8 x float> %i.aoe) ; 2 uses
  %i.avy = sitofp <8 x i32> %i.avk to <8 x float>
  %i.avz = shufflevector <8 x float> %i.avp, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.awa = fmul <8 x float> %i.apw, %i.avz
  %i.awb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.avy, <8 x float> %i.awa, <8 x float> %i.aod) ; 2 uses
  %i.awc = sitofp <8 x i32> %i.avl to <8 x float>
  %i.awd = shufflevector <8 x float> %i.avp, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7>
  %i.awe = fmul <8 x float> %i.apw, %i.awd
end_hunk_5
