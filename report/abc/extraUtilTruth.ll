inline.NumInlined: 60
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 70
begin_hunk_0_@Extra_TruthStretch:bb.a
  %n.vec = and i64 %i.h, 2147483640
  %xtraiter234 = and i64 %i.h, 1
  %i.s = icmp eq i32 %i.f, 1
  %unroll_iter238 = and i64 %i.h, 2147483646
  %lcmp.mod236.not = icmp eq i64 %xtraiter234, 0
  %lcmp.mod237 = trunc i32 %i.f to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph50, %bb.f
  %indvars.iv63.in = phi i64 [ %i.i, %.lr.ph50 ], [ %indvars.iv63, %bb.f ]
  %.02548.in = phi i32 [ %3, %.lr.ph50 ], [ %.02548, %bb.f ] ; 2 uses
  %.047 = phi i32 [ 0, %.lr.ph50 ], [ %.2, %bb.f ] ; 3 uses
  %.02246 = phi i32 [ %i.b, %.lr.ph50 ], [ %.123, %bb.f ] ; 4 uses
  %.02645 = phi ptr [ %0, %.lr.ph50 ], [ %.228, %bb.f ] ; 3 uses
  %.02944 = phi ptr [ %1, %.lr.ph50 ], [ %.231, %bb.f ] ; 3 uses
  %indvars.iv63 = add nsw i64 %indvars.iv63.in, -1 ; 2 uses
  %.02548 = add nsw i32 %.02548.in, -1            ; 3 uses
  %i.t = shl nuw i32 1, %.02548
  %i.u = and i32 %i.t, %4
  %.not32 = icmp eq i32 %i.u, 0
  br i1 %.not32, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.v = icmp slt i32 %.02246, %.02548
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.w = sext i32 %.02246 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Extra_TruthSwapAdjacentVars.exit
  %indvars.iv = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next, %Extra_TruthSwapAdjacentVars.exit ] ; 6 uses
  %.140 = phi i32 [ %.047, %.lr.ph.preheader ], [ %i.gr, %Extra_TruthSwapAdjacentVars.exit ]
  %.12738 = phi ptr [ %.02645, %.lr.ph.preheader ], [ %.13037, %Extra_TruthSwapAdjacentVars.exit ] ; 17 uses
  %.13037 = phi ptr [ %.02944, %.lr.ph.preheader ], [ %.12738, %Extra_TruthSwapAdjacentVars.exit ] ; 16 uses
  %.1273884 = ptrtoaddr ptr %.12738 to i64        ; 5 uses
  %.1303785 = ptrtoaddr ptr %.13037 to i64        ; 5 uses
  %i.x = icmp slt i64 %indvars.iv, 4
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.y = trunc nsw i64 %indvars.iv to i32
  %i.z = shl nuw nsw i32 1, %i.y                  ; 7 uses
  br i1 %i.g, label %.lr.ph127.i, label %Extra_TruthSwapAdjacentVars.exit

.lr.ph127.i:                                      ; preds = %bb.c
  %i.aa = getelementptr inbounds [12 x i8], ptr @Extra_TruthSwapAdjacentVars.PMasks, i64 %indvars.iv ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8  ; 4 uses
  %i.ag = sub i64 %.1303785, %.1273884
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.lr.ph127.i
  br i1 %i.s, label %scalar.ph.epil.preheader, label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph127.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert86 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat87 = shufflevector <4 x i32> %broadcast.splatinsert86, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert88 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat89 = shufflevector <4 x i32> %broadcast.splatinsert88, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert90 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat91 = shufflevector <4 x i32> %broadcast.splatinsert90, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.13037, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !8 ; 3 uses
  %wide.load92 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !8 ; 3 uses
  %i.aj = and <4 x i32> %wide.load, %broadcast.splat
  %i.ak = and <4 x i32> %wide.load92, %broadcast.splat
  %i.al = and <4 x i32> %wide.load, %broadcast.splat87
  %i.am = and <4 x i32> %wide.load92, %broadcast.splat87
  %i.an = shl <4 x i32> %i.al, %broadcast.splat91
  %i.ao = shl <4 x i32> %i.am, %broadcast.splat91
  %i.ap = or <4 x i32> %i.an, %i.aj
  %i.aq = or <4 x i32> %i.ao, %i.ak
  %i.ar = and <4 x i32> %wide.load, %broadcast.splat89
  %i.as = and <4 x i32> %wide.load92, %broadcast.splat89
  %i.at = lshr <4 x i32> %i.ar, %broadcast.splat91
  %i.au = lshr <4 x i32> %i.as, %broadcast.splat91
  %i.av = or <4 x i32> %i.ap, %i.at
  %i.aw = or <4 x i32> %i.aq, %i.au
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.12738, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %i.av, ptr %i.ax, align 4, !tbaa !8
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %Extra_TruthSwapAdjacentVars.exit, label %vector.body, !llvm.loop !69

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter239 = phi i64 [ %niter239.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.13037, i64 %indvars.iv158.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8  ; 3 uses
  %i.bc = and i32 %i.bb, %i.ab
  %i.bd = and i32 %i.bb, %i.ad
  %i.be = shl i32 %i.bd, %i.z
  %i.bf = or i32 %i.be, %i.bc
  %i.bg = and i32 %i.bb, %i.af
  %i.bh = lshr i32 %i.bg, %i.z
  %i.bi = or i32 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.12738, i64 %indvars.iv158.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !8
  %indvars.iv.next159.i = or disjoint i64 %indvars.iv158.i, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.13037, i64 %indvars.iv.next159.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8  ; 3 uses
  %i.bm = and i32 %i.bl, %i.ab
  %i.bn = and i32 %i.bl, %i.ad
  %i.bo = shl i32 %i.bn, %i.z
  %i.bp = or i32 %i.bo, %i.bm
  %i.bq = and i32 %i.bl, %i.af
  %i.br = lshr i32 %i.bq, %i.z
  %i.bs = or i32 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.12738, i64 %indvars.iv.next159.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !8
  %indvars.iv.next159.i.1 = add nuw nsw i64 %indvars.iv158.i, 2 ; 2 uses
  %niter239.next.1 = add i64 %niter239, 2         ; 2 uses
  %niter239.ncmp.1 = icmp eq i64 %niter239.next.1, %unroll_iter238
  br i1 %niter239.ncmp.1, label %Extra_TruthSwapAdjacentVars.exit.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !70

bb.d:                                             ; preds = %.lr.ph
  %i.bu = icmp eq i64 %indvars.iv, 4
  br i1 %i.bu, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.g, label %.lr.ph.i.preheader, label %Extra_TruthSwapAdjacentVars.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  br i1 %min.iters.check115, label %.lr.ph.i.preheader212, label %vector.memcheck93

vector.memcheck93:                                ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %.12738, i64 %i.m ; 3 uses
  %scevgep94 = getelementptr i8, ptr %.12738, i64 4 ; 3 uses
  %scevgep95 = getelementptr i8, ptr %.12738, i64 %i.n ; 3 uses
  %scevgep96 = getelementptr i8, ptr %.13037, i64 %i.m ; 2 uses
  %scevgep97 = getelementptr i8, ptr %.13037, i64 4 ; 2 uses
  %scevgep98 = getelementptr i8, ptr %.13037, i64 %i.n ; 2 uses
  %bound0 = icmp ult ptr %.12738, %scevgep95
  %bound1 = icmp ult ptr %scevgep94, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound099 = icmp ult ptr %.12738, %scevgep96
  %bound1100 = icmp ult ptr %.13037, %scevgep
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  %bound0102 = icmp ult ptr %.12738, %scevgep98
  %bound1103 = icmp ult ptr %scevgep97, %scevgep
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx, %found.conflict104
  %bound0106 = icmp ult ptr %scevgep94, %scevgep96
  %bound1107 = icmp ult ptr %.13037, %scevgep95
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %conflict.rdx105, %found.conflict108
  %bound0110 = icmp ult ptr %scevgep94, %scevgep98
  %bound1111 = icmp ult ptr %scevgep97, %scevgep95
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx113 = or i1 %conflict.rdx109, %found.conflict112
  br i1 %conflict.rdx113, label %.lr.ph.i.preheader212, label %vector.body118

vector.body118:                                   ; preds = %vector.memcheck93, %vector.body118
  %index119 = phi i64 [ %index.next124, %vector.body118 ], [ 0, %vector.memcheck93 ] ; 2 uses
  %i.bv = shl nuw i64 %index119, 1                ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.13037, i64 %i.bv ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.bw, align 4, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec120 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bx = and <2 x i32> %strided.vec, splat (i32 65535)
  %i.by = shl <2 x i32> %strided.vec120, splat (i32 16)
  %i.bz = or disjoint <2 x i32> %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.12738, i64 %i.bv
  %wide.vec121 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !8 ; 2 uses
  %strided.vec122 = shufflevector <4 x i32> %wide.vec121, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec123 = shufflevector <4 x i32> %wide.vec121, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.cb = and <2 x i32> %strided.vec123, splat (i32 -65536)
  %i.cc = lshr <2 x i32> %strided.vec122, splat (i32 16)
  %i.cd = or disjoint <2 x i32> %i.cc, %i.cb
  %interleaved.vec = shufflevector <2 x i32> %i.bz, <2 x i32> %i.cd, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ca, align 4, !tbaa !8
  %index.next124 = add nuw i64 %index119, 2       ; 2 uses
  %i.ce = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.ce, label %middle.block125, label %vector.body118, !llvm.loop !71

middle.block125:                                  ; preds = %vector.body118
  br i1 %cmp.n126, label %Extra_TruthSwapAdjacentVars.exit, label %.lr.ph.i.preheader212

.lr.ph.i.preheader212:                            ; preds = %vector.memcheck93, %.lr.ph.i.preheader, %middle.block125
  %indvars.iv155.i.ph = phi i64 [ 0, %vector.memcheck93 ], [ 0, %.lr.ph.i.preheader ], [ %i.r, %middle.block125 ]
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.cf = trunc i64 %indvars.iv to i32
  %i.cg = add i32 %i.cf, -5                       ; 13 uses
  %i.ch = shl nuw nsw i32 1, %i.cg                ; 2 uses
  br i1 %i.g, label %.preheader87.lr.ph.i, label %Extra_TruthSwapAdjacentVars.exit

.preheader87.lr.ph.i:                             ; preds = %bb.e
  %.not128.i = icmp eq i32 %i.cg, 31
  %i.ci = shl i32 4, %i.cg                        ; 2 uses
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  br i1 %.not128.i, label %Extra_TruthSwapAdjacentVars.exit, label %.preheader87.us.preheader.i

.preheader87.us.preheader.i:                      ; preds = %.preheader87.lr.ph.i
  %i.ck = shl nuw i32 3, %i.cg
  %i.cl = shl nuw i32 2, %i.cg
  %i.cm = sext i32 %i.cl to i64                   ; 4 uses
  %5 = zext nneg i32 %i.ch to i64                 ; 2 uses
  %i.cn = sext i32 %i.ck to i64                   ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.ch to i64 ; 13 uses
  %i.co = shl nsw i64 %i.cm, 2
  %i.cp = add i64 %i.co, %.1273884
  %i.cq = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.cr = add i64 %i.cq, %.1303785
  %i.cs = add i64 %i.cq, %.1273884
  %i.ct = shl nsw i64 %i.cm, 2
  %i.cu = add i64 %i.ct, %.1303785
  %min.iters.check173 = icmp ult i32 %i.cg, 3
  %i.cv = sub i64 %.1303785, %.1273884
  %diff.check171 = icmp ugt i64 %i.cv, -32
  %or.cond200 = select i1 %min.iters.check173, i1 true, i1 %diff.check171
  %n.vec175 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %6 = icmp ult i32 %i.cg, 2
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod215 = icmp ne i64 %xtraiter, 0
  %min.iters.check159 = icmp ult i32 %i.cg, 3
  %i.cw = sub i64 %i.cu, %i.cs
  %diff.check157 = icmp ugt i64 %i.cw, -32
  %or.cond203 = select i1 %min.iters.check159, i1 true, i1 %diff.check157
  %n.vec161 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter216 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %7 = icmp ult i32 %i.cg, 2
  %unroll_iter220 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod218.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod219 = icmp ne i64 %xtraiter216, 0
  %min.iters.check145 = icmp ult i32 %i.cg, 3
  %i.cx = sub i64 %i.cr, %i.cp
  %diff.check143 = icmp ugt i64 %i.cx, -32
  %or.cond202 = select i1 %min.iters.check145, i1 true, i1 %diff.check143
  %n.vec147 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter222 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %8 = icmp ult i32 %i.cg, 2
  %unroll_iter226 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod224.not = icmp eq i64 %xtraiter222, 0
  %lcmp.mod225 = icmp ne i64 %xtraiter222, 0
  %min.iters.check131 = icmp ult i32 %i.cg, 3
  %i.cy = sub i64 %.1303785, %.1273884
  %diff.check129 = icmp ugt i64 %i.cy, -32
  %or.cond201 = select i1 %min.iters.check131, i1 true, i1 %diff.check129
  %n.vec133 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter228 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %9 = icmp ult i32 %i.cg, 2
  %unroll_iter232 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod230.not = icmp eq i64 %xtraiter228, 0
  %lcmp.mod231 = icmp ne i64 %xtraiter228, 0
  br label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %._crit_edge.us.i, %.preheader87.us.preheader.i
  %.098.us.i = phi ptr [ %i.fa, %._crit_edge.us.i ], [ %.12738, %.preheader87.us.preheader.i ] ; 15 uses
  %.07797.us.i = phi ptr [ %i.ez, %._crit_edge.us.i ], [ %.13037, %.preheader87.us.preheader.i ] ; 15 uses
  %.07896.us.i = phi i32 [ %i.fb, %._crit_edge.us.i ], [ 0, %.preheader87.us.preheader.i ]
  br i1 %or.cond200, label %.lr.ph.us.i.preheader, label %vector.body176

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.preheader.i
  br i1 %6, label %.lr.ph.us.i.epil.preheader, label %.lr.ph.us.i

vector.body176:                                   ; preds = %.lr.ph.us.preheader.i, %vector.body176
  %index177 = phi i64 [ %index.next180, %vector.body176 ], [ 0, %.lr.ph.us.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %index177 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load178 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !8
  %wide.load179 = load <4 x i32>, ptr %i.da, align 4, !tbaa !8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %index177 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x i32> %wide.load178, ptr %i.db, align 4, !tbaa !8
  store <4 x i32> %wide.load179, ptr %i.dc, align 4, !tbaa !8
  %index.next180 = add nuw i64 %index177, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.dd, label %.lr.ph91.us.preheader.i, label %vector.body176, !llvm.loop !72

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i ], [ 0, %.lr.ph.us.i.preheader ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %indvars.iv.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %indvars.iv.i
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %indvars.iv.next.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %indvars.iv.next.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %indvars.iv.next.i.1
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %indvars.iv.next.i.1
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %indvars.iv.next.i.2
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %indvars.iv.next.i.2
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph91.us.preheader.i.loopexit.unr-lcssa, label %.lr.ph.us.i, !llvm.loop !73

.lr.ph91.us.i:                                    ; preds = %.lr.ph91.us.i.preheader, %.lr.ph91.us.i
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.3, %.lr.ph91.us.i ], [ 0, %.lr.ph91.us.i.preheader ] ; 6 uses
  %niter221 = phi i64 [ %niter221.next.3, %.lr.ph91.us.i ], [ 0, %.lr.ph91.us.i.preheader ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv136.i
  %i.dq = load i32, ptr %gep.i, align 4, !tbaa !8
  %gep169.i = getelementptr [4 x i8], ptr %invariant.gep168.i, i64 %indvars.iv136.i
  store i32 %i.dq, ptr %gep169.i, align 4, !tbaa !8
  %indvars.iv.next137.i = or disjoint i64 %indvars.iv136.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next137.i
  %i.dr = load i32, ptr %gep.i.1, align 4, !tbaa !8
  %gep169.i.1 = getelementptr [4 x i8], ptr %invariant.gep168.i, i64 %indvars.iv.next137.i
  store i32 %i.dr, ptr %gep169.i.1, align 4, !tbaa !8
  %indvars.iv.next137.i.1 = or disjoint i64 %indvars.iv136.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next137.i.1
  %i.ds = load i32, ptr %gep.i.2, align 4, !tbaa !8
  %gep169.i.2 = getelementptr [4 x i8], ptr %invariant.gep168.i, i64 %indvars.iv.next137.i.1
  store i32 %i.ds, ptr %gep169.i.2, align 4, !tbaa !8
  %indvars.iv.next137.i.2 = or disjoint i64 %indvars.iv136.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next137.i.2
  %i.dt = load i32, ptr %gep.i.3, align 4, !tbaa !8
  %gep169.i.3 = getelementptr [4 x i8], ptr %invariant.gep168.i, i64 %indvars.iv.next137.i.2
  store i32 %i.dt, ptr %gep169.i.3, align 4, !tbaa !8
  %indvars.iv.next137.i.3 = add nuw nsw i64 %indvars.iv136.i, 4 ; 2 uses
  %niter221.next.3 = add i64 %niter221, 4         ; 2 uses
  %niter221.ncmp.3 = icmp eq i64 %niter221.next.3, %unroll_iter220
  br i1 %niter221.ncmp.3, label %.preheader85.us.i.loopexit.unr-lcssa, label %.lr.ph91.us.i, !llvm.loop !74

scalar.ph144:                                     ; preds = %scalar.ph144.preheader, %scalar.ph144
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i.3, %scalar.ph144 ], [ 0, %scalar.ph144.preheader ] ; 6 uses
  %niter227 = phi i64 [ %niter227.next.3, %scalar.ph144 ], [ 0, %scalar.ph144.preheader ]
  %gep171.i = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv143.i
  %i.du = load i32, ptr %gep171.i, align 4, !tbaa !8
  %gep173.i = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv143.i
  store i32 %i.du, ptr %gep173.i, align 4, !tbaa !8
  %indvars.iv.next144.i = or disjoint i64 %indvars.iv143.i, 1 ; 2 uses
  %gep171.i.1 = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv.next144.i
  %i.dv = load i32, ptr %gep171.i.1, align 4, !tbaa !8
  %gep173.i.1 = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv.next144.i
  store i32 %i.dv, ptr %gep173.i.1, align 4, !tbaa !8
  %indvars.iv.next144.i.1 = or disjoint i64 %indvars.iv143.i, 2 ; 2 uses
  %gep171.i.2 = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv.next144.i.1
  %i.dw = load i32, ptr %gep171.i.2, align 4, !tbaa !8
  %gep173.i.2 = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv.next144.i.1
  store i32 %i.dw, ptr %gep173.i.2, align 4, !tbaa !8
  %indvars.iv.next144.i.2 = or disjoint i64 %indvars.iv143.i, 3 ; 2 uses
  %gep171.i.3 = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv.next144.i.2
  %i.dx = load i32, ptr %gep171.i.3, align 4, !tbaa !8
  %gep173.i.3 = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv.next144.i.2
  store i32 %i.dx, ptr %gep173.i.3, align 4, !tbaa !8
  %indvars.iv.next144.i.3 = add nuw nsw i64 %indvars.iv143.i, 4 ; 2 uses
  %niter227.next.3 = add i64 %niter227, 4         ; 2 uses
  %niter227.ncmp.3 = icmp eq i64 %niter227.next.3, %unroll_iter226
  br i1 %niter227.ncmp.3, label %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, label %scalar.ph144, !llvm.loop !75

.lr.ph95.us.i.preheader.loopexit.unr-lcssa:       ; preds = %scalar.ph144
  br i1 %lcmp.mod224.not, label %.lr.ph95.us.i.preheader, label %scalar.ph144.epil.preheader

scalar.ph144.epil.preheader:                      ; preds = %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, %scalar.ph144.preheader
  %indvars.iv143.i.epil.init = phi i64 [ 0, %scalar.ph144.preheader ], [ %indvars.iv.next144.i.3, %.lr.ph95.us.i.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod225)
  br label %scalar.ph144.epil

scalar.ph144.epil:                                ; preds = %scalar.ph144.epil, %scalar.ph144.epil.preheader
  %indvars.iv143.i.epil = phi i64 [ %indvars.iv.next144.i.epil, %scalar.ph144.epil ], [ %indvars.iv143.i.epil.init, %scalar.ph144.epil.preheader ] ; 3 uses
  %epil.iter223 = phi i64 [ %epil.iter223.next, %scalar.ph144.epil ], [ 0, %scalar.ph144.epil.preheader ]
  %gep171.i.epil = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv143.i.epil
  %i.dy = load i32, ptr %gep171.i.epil, align 4, !tbaa !8
  %gep173.i.epil = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv143.i.epil
  store i32 %i.dy, ptr %gep173.i.epil, align 4, !tbaa !8
  %indvars.iv.next144.i.epil = add nuw nsw i64 %indvars.iv143.i.epil, 1
  %epil.iter223.next = add i64 %epil.iter223, 1   ; 2 uses
  %epil.iter223.cmp.not = icmp eq i64 %epil.iter223.next, %xtraiter222
  br i1 %epil.iter223.cmp.not, label %.lr.ph95.us.i.preheader, label %scalar.ph144.epil, !llvm.loop !76

.lr.ph95.us.i.preheader:                          ; preds = %vector.body148, %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, %scalar.ph144.epil
  br i1 %or.cond201, label %.lr.ph95.us.i.preheader206, label %vector.body134

.lr.ph95.us.i.preheader206:                       ; preds = %.lr.ph95.us.i.preheader
  br i1 %9, label %.lr.ph95.us.i.epil.preheader, label %.lr.ph95.us.i

vector.body134:                                   ; preds = %.lr.ph95.us.i.preheader, %vector.body134
  %index135 = phi i64 [ %index.next138, %vector.body134 ], [ 0, %.lr.ph95.us.i.preheader ] ; 2 uses
  %i.dz = add nsw i64 %index135, %i.cn            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load136 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !8
  %wide.load137 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !8
  %i.ec = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.dz ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x i32> %wide.load136, ptr %i.ec, align 4, !tbaa !8
  store <4 x i32> %wide.load137, ptr %i.ed, align 4, !tbaa !8
  %index.next138 = add nuw i64 %index135, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.ee, label %._crit_edge.us.i, label %vector.body134, !llvm.loop !77

.lr.ph95.us.i:                                    ; preds = %.lr.ph95.us.i.preheader206, %.lr.ph95.us.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i.3, %.lr.ph95.us.i ], [ 0, %.lr.ph95.us.i.preheader206 ] ; 5 uses
  %niter233 = phi i64 [ %niter233.next.3, %.lr.ph95.us.i ], [ 0, %.lr.ph95.us.i.preheader206 ]
  %i.ef = add nsw i64 %indvars.iv150.i, %i.cn     ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.ef
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !8
  %indvars.iv.next151.i = or disjoint i64 %indvars.iv150.i, 1
  %i.ej = add nsw i64 %indvars.iv.next151.i, %i.cn ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8
  %i.em = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.ej
  store i32 %i.el, ptr %i.em, align 4, !tbaa !8
  %indvars.iv.next151.i.1 = or disjoint i64 %indvars.iv150.i, 2
  %i.en = add nsw i64 %indvars.iv.next151.i.1, %i.cn ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !8
  %i.eq = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.en
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !8
  %indvars.iv.next151.i.2 = or disjoint i64 %indvars.iv150.i, 3
  %i.er = add nsw i64 %indvars.iv.next151.i.2, %i.cn ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8
  %i.eu = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.er
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !8
  %indvars.iv.next151.i.3 = add nuw nsw i64 %indvars.iv150.i, 4 ; 2 uses
  %niter233.next.3 = add i64 %niter233, 4         ; 2 uses
  %niter233.ncmp.3 = icmp eq i64 %niter233.next.3, %unroll_iter232
  br i1 %niter233.ncmp.3, label %._crit_edge.us.i.loopexit.unr-lcssa, label %.lr.ph95.us.i, !llvm.loop !78

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph95.us.i
  br i1 %lcmp.mod230.not, label %._crit_edge.us.i, label %.lr.ph95.us.i.epil.preheader

.lr.ph95.us.i.epil.preheader:                     ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %.lr.ph95.us.i.preheader206
  %indvars.iv150.i.epil.init = phi i64 [ 0, %.lr.ph95.us.i.preheader206 ], [ %indvars.iv.next151.i.3, %._crit_edge.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph95.us.i.epil

.lr.ph95.us.i.epil:                               ; preds = %.lr.ph95.us.i.epil, %.lr.ph95.us.i.epil.preheader
  %indvars.iv150.i.epil = phi i64 [ %indvars.iv.next151.i.epil, %.lr.ph95.us.i.epil ], [ %indvars.iv150.i.epil.init, %.lr.ph95.us.i.epil.preheader ] ; 2 uses
  %epil.iter229 = phi i64 [ %epil.iter229.next, %.lr.ph95.us.i.epil ], [ 0, %.lr.ph95.us.i.epil.preheader ]
  %i.ev = add nsw i64 %indvars.iv150.i.epil, %i.cn ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.ev
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !8
  %indvars.iv.next151.i.epil = add nuw nsw i64 %indvars.iv150.i.epil, 1
  %epil.iter229.next = add i64 %epil.iter229, 1   ; 2 uses
  %epil.iter229.cmp.not = icmp eq i64 %epil.iter229.next, %xtraiter228
end_hunk_0
begin_hunk_1_@Extra_TruthShrink:bb.a
  %cmp.n127 = icmp eq i64 %i.o, %n.vec118
  %min.iters.check = icmp ult i32 %i.e, 8
  %n.vec = and i64 %i.g, 2147483640
  %xtraiter235 = and i64 %i.g, 1
  %i.q = icmp eq i32 %i.e, 1
  %unroll_iter239 = and i64 %i.g, 2147483646
  %lcmp.mod237.not = icmp eq i64 %xtraiter235, 0
  %lcmp.mod238 = trunc i32 %i.e to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph53, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.051 = phi i32 [ 0, %.lr.ph53 ], [ %.2, %bb.f ] ; 3 uses
  %.02150 = phi i32 [ 0, %.lr.ph53 ], [ %.122, %bb.f ] ; 5 uses
  %.02547 = phi ptr [ %0, %.lr.ph53 ], [ %.227, %bb.f ] ; 3 uses
  %.02846 = phi ptr [ %1, %.lr.ph53 ], [ %.230, %bb.f ] ; 3 uses
  %indvars66 = trunc i64 %indvars.iv to i32       ; 3 uses
  %i.r = shl nuw i32 1, %indvars66
  %i.s = and i32 %i.r, %4
  %.not33 = icmp eq i32 %i.s, 0
  br i1 %.not33, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not34.not39 = icmp slt i32 %.02150, %indvars66
  br i1 %.not34.not39, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.t = sext i32 %.02150 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Extra_TruthSwapAdjacentVars.exit
  %indvars.iv63 = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next64, %Extra_TruthSwapAdjacentVars.exit ] ; 3 uses
  %.12641 = phi ptr [ %.02547, %.lr.ph.preheader ], [ %.12940, %Extra_TruthSwapAdjacentVars.exit ] ; 17 uses
  %.12940 = phi ptr [ %.02846, %.lr.ph.preheader ], [ %.12641, %Extra_TruthSwapAdjacentVars.exit ] ; 16 uses
  %.1264185 = ptrtoaddr ptr %.12641 to i64        ; 5 uses
  %.1294086 = ptrtoaddr ptr %.12940 to i64        ; 5 uses
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1 ; 5 uses
  %i.u = icmp slt i64 %indvars.iv63, 5
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.v = trunc nsw i64 %indvars.iv.next64 to i32
  %i.w = shl nuw nsw i32 1, %i.v                  ; 7 uses
  br i1 %i.f, label %.lr.ph127.i, label %Extra_TruthSwapAdjacentVars.exit

.lr.ph127.i:                                      ; preds = %bb.c
  %i.x = getelementptr inbounds [12 x i8], ptr @Extra_TruthSwapAdjacentVars.PMasks, i64 %indvars.iv.next64 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8  ; 4 uses
  %i.ad = sub i64 %.1294086, %.1264185
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.lr.ph127.i
  br i1 %i.q, label %scalar.ph.epil.preheader, label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph127.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert87 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat88 = shufflevector <4 x i32> %broadcast.splatinsert87, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert89 = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat90 = shufflevector <4 x i32> %broadcast.splatinsert89, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert91 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat92 = shufflevector <4 x i32> %broadcast.splatinsert91, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.12940, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !8 ; 3 uses
  %wide.load93 = load <4 x i32>, ptr %i.af, align 4, !tbaa !8 ; 3 uses
  %i.ag = and <4 x i32> %wide.load, %broadcast.splat
  %i.ah = and <4 x i32> %wide.load93, %broadcast.splat
  %i.ai = and <4 x i32> %wide.load, %broadcast.splat88
  %i.aj = and <4 x i32> %wide.load93, %broadcast.splat88
  %i.ak = shl <4 x i32> %i.ai, %broadcast.splat92
  %i.al = shl <4 x i32> %i.aj, %broadcast.splat92
  %i.am = or <4 x i32> %i.ak, %i.ag
  %i.an = or <4 x i32> %i.al, %i.ah
  %i.ao = and <4 x i32> %wide.load, %broadcast.splat90
  %i.ap = and <4 x i32> %wide.load93, %broadcast.splat90
  %i.aq = lshr <4 x i32> %i.ao, %broadcast.splat92
  %i.ar = lshr <4 x i32> %i.ap, %broadcast.splat92
  %i.as = or <4 x i32> %i.am, %i.aq
  %i.at = or <4 x i32> %i.an, %i.ar
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.12641, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %i.as, ptr %i.au, align 4, !tbaa !8
  store <4 x i32> %i.at, ptr %i.av, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %Extra_TruthSwapAdjacentVars.exit, label %vector.body, !llvm.loop !89

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter240 = phi i64 [ %niter240.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.12940, i64 %indvars.iv158.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8  ; 3 uses
  %i.az = and i32 %i.ay, %i.y
  %i.ba = and i32 %i.ay, %i.aa
  %i.bb = shl i32 %i.ba, %i.w
  %i.bc = or i32 %i.bb, %i.az
  %i.bd = and i32 %i.ay, %i.ac
  %i.be = lshr i32 %i.bd, %i.w
  %i.bf = or i32 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.12641, i64 %indvars.iv158.i
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !8
  %indvars.iv.next159.i = or disjoint i64 %indvars.iv158.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.12940, i64 %indvars.iv.next159.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8  ; 3 uses
  %i.bj = and i32 %i.bi, %i.y
  %i.bk = and i32 %i.bi, %i.aa
  %i.bl = shl i32 %i.bk, %i.w
  %i.bm = or i32 %i.bl, %i.bj
  %i.bn = and i32 %i.bi, %i.ac
  %i.bo = lshr i32 %i.bn, %i.w
  %i.bp = or i32 %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.12641, i64 %indvars.iv.next159.i
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !8
  %indvars.iv.next159.i.1 = add nuw nsw i64 %indvars.iv158.i, 2 ; 2 uses
  %niter240.next.1 = add i64 %niter240, 2         ; 2 uses
  %niter240.ncmp.1 = icmp eq i64 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1, label %Extra_TruthSwapAdjacentVars.exit.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !90

bb.d:                                             ; preds = %.lr.ph
  %i.br = icmp eq i64 %indvars.iv.next64, 4
  br i1 %i.br, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.f, label %.lr.ph.i.preheader, label %Extra_TruthSwapAdjacentVars.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  br i1 %min.iters.check116, label %.lr.ph.i.preheader213, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %.12641, i64 %i.k ; 3 uses
  %scevgep95 = getelementptr i8, ptr %.12641, i64 4 ; 3 uses
  %scevgep96 = getelementptr i8, ptr %.12641, i64 %i.l ; 3 uses
  %scevgep97 = getelementptr i8, ptr %.12940, i64 %i.k ; 2 uses
  %scevgep98 = getelementptr i8, ptr %.12940, i64 4 ; 2 uses
  %scevgep99 = getelementptr i8, ptr %.12940, i64 %i.l ; 2 uses
  %bound0 = icmp ult ptr %.12641, %scevgep96
  %bound1 = icmp ult ptr %scevgep95, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0100 = icmp ult ptr %.12641, %scevgep97
  %bound1101 = icmp ult ptr %.12940, %scevgep
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx = or i1 %found.conflict, %found.conflict102
  %bound0103 = icmp ult ptr %.12641, %scevgep99
  %bound1104 = icmp ult ptr %scevgep98, %scevgep
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx, %found.conflict105
  %bound0107 = icmp ult ptr %scevgep95, %scevgep97
  %bound1108 = icmp ult ptr %.12940, %scevgep96
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx106, %found.conflict109
  %bound0111 = icmp ult ptr %scevgep95, %scevgep99
  %bound1112 = icmp ult ptr %scevgep98, %scevgep96
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  br i1 %conflict.rdx114, label %.lr.ph.i.preheader213, label %vector.body119

vector.body119:                                   ; preds = %vector.memcheck94, %vector.body119
  %index120 = phi i64 [ %index.next125, %vector.body119 ], [ 0, %vector.memcheck94 ] ; 2 uses
  %i.bs = shl nuw i64 %index120, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.12940, i64 %i.bs ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.bt, align 4, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec121 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bu = and <2 x i32> %strided.vec, splat (i32 65535)
  %i.bv = shl <2 x i32> %strided.vec121, splat (i32 16)
  %i.bw = or disjoint <2 x i32> %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.12641, i64 %i.bs
  %wide.vec122 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !8 ; 2 uses
  %strided.vec123 = shufflevector <4 x i32> %wide.vec122, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec124 = shufflevector <4 x i32> %wide.vec122, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.by = and <2 x i32> %strided.vec124, splat (i32 -65536)
  %i.bz = lshr <2 x i32> %strided.vec123, splat (i32 16)
  %i.ca = or disjoint <2 x i32> %i.bz, %i.by
  %interleaved.vec = shufflevector <2 x i32> %i.bw, <2 x i32> %i.ca, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bx, align 4, !tbaa !8
  %index.next125 = add nuw i64 %index120, 2       ; 2 uses
  %i.cb = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.cb, label %middle.block126, label %vector.body119, !llvm.loop !91

middle.block126:                                  ; preds = %vector.body119
  br i1 %cmp.n127, label %Extra_TruthSwapAdjacentVars.exit, label %.lr.ph.i.preheader213

.lr.ph.i.preheader213:                            ; preds = %vector.memcheck94, %.lr.ph.i.preheader, %middle.block126
  %indvars.iv155.i.ph = phi i64 [ 0, %vector.memcheck94 ], [ 0, %.lr.ph.i.preheader ], [ %i.p, %middle.block126 ]
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.cc = trunc i64 %indvars.iv63 to i32
  %i.cd = add i32 %i.cc, -6                       ; 13 uses
  %i.ce = shl nuw nsw i32 1, %i.cd                ; 2 uses
  br i1 %i.f, label %.preheader87.lr.ph.i, label %Extra_TruthSwapAdjacentVars.exit

.preheader87.lr.ph.i:                             ; preds = %bb.e
  %.not128.i = icmp eq i32 %i.cd, 31
  %i.cf = shl i32 4, %i.cd                        ; 2 uses
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  br i1 %.not128.i, label %Extra_TruthSwapAdjacentVars.exit, label %.preheader87.us.preheader.i

.preheader87.us.preheader.i:                      ; preds = %.preheader87.lr.ph.i
  %i.ch = shl nuw i32 3, %i.cd
  %i.ci = shl nuw i32 2, %i.cd
  %i.cj = sext i32 %i.ci to i64                   ; 4 uses
  %5 = zext nneg i32 %i.ce to i64                 ; 2 uses
  %i.ck = sext i32 %i.ch to i64                   ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.ce to i64 ; 13 uses
  %i.cl = shl nsw i64 %i.cj, 2
  %i.cm = add i64 %i.cl, %.1264185
  %i.cn = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.co = add i64 %i.cn, %.1294086
  %i.cp = add i64 %i.cn, %.1264185
  %i.cq = shl nsw i64 %i.cj, 2
  %i.cr = add i64 %i.cq, %.1294086
  %min.iters.check174 = icmp ult i32 %i.cd, 3
  %i.cs = sub i64 %.1294086, %.1264185
  %diff.check172 = icmp ugt i64 %i.cs, -32
  %or.cond201 = select i1 %min.iters.check174, i1 true, i1 %diff.check172
  %n.vec176 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %6 = icmp ult i32 %i.cd, 2
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  %min.iters.check160 = icmp ult i32 %i.cd, 3
  %i.ct = sub i64 %i.cr, %i.cp
  %diff.check158 = icmp ugt i64 %i.ct, -32
  %or.cond204 = select i1 %min.iters.check160, i1 true, i1 %diff.check158
  %n.vec162 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter217 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %7 = icmp ult i32 %i.cd, 2
  %unroll_iter221 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  %lcmp.mod220 = icmp ne i64 %xtraiter217, 0
  %min.iters.check146 = icmp ult i32 %i.cd, 3
  %i.cu = sub i64 %i.co, %i.cm
  %diff.check144 = icmp ugt i64 %i.cu, -32
  %or.cond203 = select i1 %min.iters.check146, i1 true, i1 %diff.check144
  %n.vec148 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter223 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %8 = icmp ult i32 %i.cd, 2
  %unroll_iter227 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod225.not = icmp eq i64 %xtraiter223, 0
  %lcmp.mod226 = icmp ne i64 %xtraiter223, 0
  %min.iters.check132 = icmp ult i32 %i.cd, 3
  %i.cv = sub i64 %.1294086, %.1264185
  %diff.check130 = icmp ugt i64 %i.cv, -32
  %or.cond202 = select i1 %min.iters.check132, i1 true, i1 %diff.check130
  %n.vec134 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter229 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %9 = icmp ult i32 %i.cd, 2
  %unroll_iter233 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod231.not = icmp eq i64 %xtraiter229, 0
  %lcmp.mod232 = icmp ne i64 %xtraiter229, 0
  br label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %._crit_edge.us.i, %.preheader87.us.preheader.i
  %.098.us.i = phi ptr [ %i.ex, %._crit_edge.us.i ], [ %.12641, %.preheader87.us.preheader.i ] ; 15 uses
  %.07797.us.i = phi ptr [ %i.ew, %._crit_edge.us.i ], [ %.12940, %.preheader87.us.preheader.i ] ; 15 uses
  %.07896.us.i = phi i32 [ %i.ey, %._crit_edge.us.i ], [ 0, %.preheader87.us.preheader.i ]
  br i1 %or.cond201, label %.lr.ph.us.i.preheader, label %vector.body177

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.preheader.i
  br i1 %6, label %.lr.ph.us.i.epil.preheader, label %.lr.ph.us.i

vector.body177:                                   ; preds = %.lr.ph.us.preheader.i, %vector.body177
  %index178 = phi i64 [ %index.next181, %vector.body177 ], [ 0, %.lr.ph.us.preheader.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %index178 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load179 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !8
  %wide.load180 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !8
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %index178 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x i32> %wide.load179, ptr %i.cy, align 4, !tbaa !8
  store <4 x i32> %wide.load180, ptr %i.cz, align 4, !tbaa !8
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.da, label %.lr.ph91.us.preheader.i, label %vector.body177, !llvm.loop !92

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i ], [ 0, %.lr.ph.us.i.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %indvars.iv.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %indvars.iv.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %indvars.iv.next.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %indvars.iv.next.i
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %indvars.iv.next.i.1
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %indvars.iv.next.i.1
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %indvars.iv.next.i.2
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %indvars.iv.next.i.2
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph91.us.preheader.i.loopexit.unr-lcssa, label %.lr.ph.us.i, !llvm.loop !93

.lr.ph91.us.i:                                    ; preds = %.lr.ph91.us.i.preheader, %.lr.ph91.us.i
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.3, %.lr.ph91.us.i ], [ 0, %.lr.ph91.us.i.preheader ] ; 6 uses
  %niter222 = phi i64 [ %niter222.next.3, %.lr.ph91.us.i ], [ 0, %.lr.ph91.us.i.preheader ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv136.i
  %i.dn = load i32, ptr %gep.i, align 4, !tbaa !8
  %gep169.i = getelementptr [4 x i8], ptr %invariant.gep168.i, i64 %indvars.iv136.i
  store i32 %i.dn, ptr %gep169.i, align 4, !tbaa !8
  %indvars.iv.next137.i = or disjoint i64 %indvars.iv136.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next137.i
  %i.do = load i32, ptr %gep.i.1, align 4, !tbaa !8
  %gep169.i.1 = getelementptr [4 x i8], ptr %invariant.gep168.i, i64 %indvars.iv.next137.i
  store i32 %i.do, ptr %gep169.i.1, align 4, !tbaa !8
  %indvars.iv.next137.i.1 = or disjoint i64 %indvars.iv136.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next137.i.1
  %i.dp = load i32, ptr %gep.i.2, align 4, !tbaa !8
  %gep169.i.2 = getelementptr [4 x i8], ptr %invariant.gep168.i, i64 %indvars.iv.next137.i.1
  store i32 %i.dp, ptr %gep169.i.2, align 4, !tbaa !8
  %indvars.iv.next137.i.2 = or disjoint i64 %indvars.iv136.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next137.i.2
  %i.dq = load i32, ptr %gep.i.3, align 4, !tbaa !8
  %gep169.i.3 = getelementptr [4 x i8], ptr %invariant.gep168.i, i64 %indvars.iv.next137.i.2
  store i32 %i.dq, ptr %gep169.i.3, align 4, !tbaa !8
  %indvars.iv.next137.i.3 = add nuw nsw i64 %indvars.iv136.i, 4 ; 2 uses
  %niter222.next.3 = add i64 %niter222, 4         ; 2 uses
  %niter222.ncmp.3 = icmp eq i64 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %.preheader85.us.i.loopexit.unr-lcssa, label %.lr.ph91.us.i, !llvm.loop !94

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %scalar.ph145
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i.3, %scalar.ph145 ], [ 0, %scalar.ph145.preheader ] ; 6 uses
  %niter228 = phi i64 [ %niter228.next.3, %scalar.ph145 ], [ 0, %scalar.ph145.preheader ]
  %gep171.i = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv143.i
  %i.dr = load i32, ptr %gep171.i, align 4, !tbaa !8
  %gep173.i = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv143.i
  store i32 %i.dr, ptr %gep173.i, align 4, !tbaa !8
  %indvars.iv.next144.i = or disjoint i64 %indvars.iv143.i, 1 ; 2 uses
  %gep171.i.1 = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv.next144.i
  %i.ds = load i32, ptr %gep171.i.1, align 4, !tbaa !8
  %gep173.i.1 = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv.next144.i
  store i32 %i.ds, ptr %gep173.i.1, align 4, !tbaa !8
  %indvars.iv.next144.i.1 = or disjoint i64 %indvars.iv143.i, 2 ; 2 uses
  %gep171.i.2 = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv.next144.i.1
  %i.dt = load i32, ptr %gep171.i.2, align 4, !tbaa !8
  %gep173.i.2 = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv.next144.i.1
  store i32 %i.dt, ptr %gep173.i.2, align 4, !tbaa !8
  %indvars.iv.next144.i.2 = or disjoint i64 %indvars.iv143.i, 3 ; 2 uses
  %gep171.i.3 = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv.next144.i.2
  %i.du = load i32, ptr %gep171.i.3, align 4, !tbaa !8
  %gep173.i.3 = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv.next144.i.2
  store i32 %i.du, ptr %gep173.i.3, align 4, !tbaa !8
  %indvars.iv.next144.i.3 = add nuw nsw i64 %indvars.iv143.i, 4 ; 2 uses
  %niter228.next.3 = add i64 %niter228, 4         ; 2 uses
  %niter228.ncmp.3 = icmp eq i64 %niter228.next.3, %unroll_iter227
  br i1 %niter228.ncmp.3, label %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, label %scalar.ph145, !llvm.loop !95

.lr.ph95.us.i.preheader.loopexit.unr-lcssa:       ; preds = %scalar.ph145
  br i1 %lcmp.mod225.not, label %.lr.ph95.us.i.preheader, label %scalar.ph145.epil.preheader

scalar.ph145.epil.preheader:                      ; preds = %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, %scalar.ph145.preheader
  %indvars.iv143.i.epil.init = phi i64 [ 0, %scalar.ph145.preheader ], [ %indvars.iv.next144.i.3, %.lr.ph95.us.i.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod226)
  br label %scalar.ph145.epil

scalar.ph145.epil:                                ; preds = %scalar.ph145.epil, %scalar.ph145.epil.preheader
  %indvars.iv143.i.epil = phi i64 [ %indvars.iv.next144.i.epil, %scalar.ph145.epil ], [ %indvars.iv143.i.epil.init, %scalar.ph145.epil.preheader ] ; 3 uses
  %epil.iter224 = phi i64 [ %epil.iter224.next, %scalar.ph145.epil ], [ 0, %scalar.ph145.epil.preheader ]
  %gep171.i.epil = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv143.i.epil
  %i.dv = load i32, ptr %gep171.i.epil, align 4, !tbaa !8
  %gep173.i.epil = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv143.i.epil
  store i32 %i.dv, ptr %gep173.i.epil, align 4, !tbaa !8
  %indvars.iv.next144.i.epil = add nuw nsw i64 %indvars.iv143.i.epil, 1
  %epil.iter224.next = add i64 %epil.iter224, 1   ; 2 uses
  %epil.iter224.cmp.not = icmp eq i64 %epil.iter224.next, %xtraiter223
  br i1 %epil.iter224.cmp.not, label %.lr.ph95.us.i.preheader, label %scalar.ph145.epil, !llvm.loop !96

.lr.ph95.us.i.preheader:                          ; preds = %vector.body149, %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, %scalar.ph145.epil
  br i1 %or.cond202, label %.lr.ph95.us.i.preheader207, label %vector.body135

.lr.ph95.us.i.preheader207:                       ; preds = %.lr.ph95.us.i.preheader
  br i1 %9, label %.lr.ph95.us.i.epil.preheader, label %.lr.ph95.us.i

vector.body135:                                   ; preds = %.lr.ph95.us.i.preheader, %vector.body135
  %index136 = phi i64 [ %index.next139, %vector.body135 ], [ 0, %.lr.ph95.us.i.preheader ] ; 2 uses
  %i.dw = add nsw i64 %index136, %i.ck            ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load137 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !8
  %wide.load138 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !8
  %i.dz = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load137, ptr %i.dz, align 4, !tbaa !8
  store <4 x i32> %wide.load138, ptr %i.ea, align 4, !tbaa !8
  %index.next139 = add nuw i64 %index136, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.eb, label %._crit_edge.us.i, label %vector.body135, !llvm.loop !97

.lr.ph95.us.i:                                    ; preds = %.lr.ph95.us.i.preheader207, %.lr.ph95.us.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i.3, %.lr.ph95.us.i ], [ 0, %.lr.ph95.us.i.preheader207 ] ; 5 uses
  %niter234 = phi i64 [ %niter234.next.3, %.lr.ph95.us.i ], [ 0, %.lr.ph95.us.i.preheader207 ]
  %i.ec = add nsw i64 %indvars.iv150.i, %i.ck     ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8
  %i.ef = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.ec
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !8
  %indvars.iv.next151.i = or disjoint i64 %indvars.iv150.i, 1
  %i.eg = add nsw i64 %indvars.iv.next151.i, %i.ck ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8
  %i.ej = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.eg
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !8
  %indvars.iv.next151.i.1 = or disjoint i64 %indvars.iv150.i, 2
  %i.ek = add nsw i64 %indvars.iv.next151.i.1, %i.ck ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8
  %i.en = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.ek
  store i32 %i.em, ptr %i.en, align 4, !tbaa !8
  %indvars.iv.next151.i.2 = or disjoint i64 %indvars.iv150.i, 3
  %i.eo = add nsw i64 %indvars.iv.next151.i.2, %i.ck ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !8
  %i.er = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.eo
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !8
  %indvars.iv.next151.i.3 = add nuw nsw i64 %indvars.iv150.i, 4 ; 2 uses
  %niter234.next.3 = add i64 %niter234, 4         ; 2 uses
  %niter234.ncmp.3 = icmp eq i64 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %._crit_edge.us.i.loopexit.unr-lcssa, label %.lr.ph95.us.i, !llvm.loop !98

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph95.us.i
  br i1 %lcmp.mod231.not, label %._crit_edge.us.i, label %.lr.ph95.us.i.epil.preheader

.lr.ph95.us.i.epil.preheader:                     ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %.lr.ph95.us.i.preheader207
  %indvars.iv150.i.epil.init = phi i64 [ 0, %.lr.ph95.us.i.preheader207 ], [ %indvars.iv.next151.i.3, %._crit_edge.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %.lr.ph95.us.i.epil

.lr.ph95.us.i.epil:                               ; preds = %.lr.ph95.us.i.epil, %.lr.ph95.us.i.epil.preheader
  %indvars.iv150.i.epil = phi i64 [ %indvars.iv.next151.i.epil, %.lr.ph95.us.i.epil ], [ %indvars.iv150.i.epil.init, %.lr.ph95.us.i.epil.preheader ] ; 2 uses
  %epil.iter230 = phi i64 [ %epil.iter230.next, %.lr.ph95.us.i.epil ], [ 0, %.lr.ph95.us.i.epil.preheader ]
  %i.es = add nsw i64 %indvars.iv150.i.epil, %i.ck ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !8
  %i.ev = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.es
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !8
  %indvars.iv.next151.i.epil = add nuw nsw i64 %indvars.iv150.i.epil, 1
  %epil.iter230.next = add i64 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i64 %epil.iter230.next, %xtraiter229
end_hunk_1
