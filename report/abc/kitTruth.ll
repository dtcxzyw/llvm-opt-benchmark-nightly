inline.NumInlined: 125
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 159
begin_hunk_0_@Kit_TruthStretch:bb.a
  %n.vec = and i64 %i.h, 2147483640
  %xtraiter224 = and i64 %i.h, 1
  %i.s = icmp eq i32 %i.f, 1
  %unroll_iter228 = and i64 %i.h, 2147483646
  %lcmp.mod226.not = icmp eq i64 %xtraiter224, 0
  %lcmp.mod227 = trunc i32 %i.f to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph51, %bb.f
  %indvars.iv64.in = phi i64 [ %i.i, %.lr.ph51 ], [ %indvars.iv64, %bb.f ]
  %.02649.in = phi i32 [ %3, %.lr.ph51 ], [ %.02649, %bb.f ] ; 2 uses
  %.048 = phi i32 [ 0, %.lr.ph51 ], [ %.2, %bb.f ] ; 3 uses
  %.02347 = phi i32 [ %i.b, %.lr.ph51 ], [ %.124, %bb.f ] ; 4 uses
  %.02746 = phi ptr [ %0, %.lr.ph51 ], [ %.229, %bb.f ] ; 3 uses
  %.03045 = phi ptr [ %1, %.lr.ph51 ], [ %.232, %bb.f ] ; 3 uses
  %indvars.iv64 = add nsw i64 %indvars.iv64.in, -1 ; 2 uses
  %.02649 = add nsw i32 %.02649.in, -1            ; 3 uses
  %i.t = shl nuw i32 1, %.02649
  %i.u = and i32 %i.t, %4
  %.not33 = icmp eq i32 %i.u, 0
  br i1 %.not33, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.v = icmp slt i32 %.02347, %.02649
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.w = sext i32 %.02347 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Kit_TruthSwapAdjacentVars.exit
  %indvars.iv = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next, %Kit_TruthSwapAdjacentVars.exit ] ; 6 uses
  %.141 = phi i32 [ %.048, %.lr.ph.preheader ], [ %i.gr, %Kit_TruthSwapAdjacentVars.exit ]
  %.12839 = phi ptr [ %.02746, %.lr.ph.preheader ], [ %.13138, %Kit_TruthSwapAdjacentVars.exit ] ; 17 uses
  %.13138 = phi ptr [ %.03045, %.lr.ph.preheader ], [ %.12839, %Kit_TruthSwapAdjacentVars.exit ] ; 16 uses
  %.1283974 = ptrtoaddr ptr %.12839 to i64        ; 5 uses
  %.1313875 = ptrtoaddr ptr %.13138 to i64        ; 5 uses
  %i.x = icmp slt i64 %indvars.iv, 4
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.y = trunc nsw i64 %indvars.iv to i32
  %i.z = shl nuw nsw i32 1, %i.y                  ; 7 uses
  br i1 %i.g, label %.lr.ph127.i, label %Kit_TruthSwapAdjacentVars.exit

.lr.ph127.i:                                      ; preds = %bb.c
  %i.aa = getelementptr inbounds [12 x i8], ptr @Kit_TruthSwapAdjacentVars.PMasks, i64 %indvars.iv ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8  ; 4 uses
  %i.ag = sub i64 %.1313875, %.1283974
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.lr.ph127.i
  br i1 %i.s, label %scalar.ph.epil.preheader, label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph127.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert76 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat77 = shufflevector <4 x i32> %broadcast.splatinsert76, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert80 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat81 = shufflevector <4 x i32> %broadcast.splatinsert80, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.13138, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !8 ; 3 uses
  %wide.load82 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !8 ; 3 uses
  %i.aj = and <4 x i32> %wide.load, %broadcast.splat
  %i.ak = and <4 x i32> %wide.load82, %broadcast.splat
  %i.al = and <4 x i32> %wide.load, %broadcast.splat77
  %i.am = and <4 x i32> %wide.load82, %broadcast.splat77
  %i.an = shl <4 x i32> %i.al, %broadcast.splat81
  %i.ao = shl <4 x i32> %i.am, %broadcast.splat81
  %i.ap = or <4 x i32> %i.an, %i.aj
  %i.aq = or <4 x i32> %i.ao, %i.ak
  %i.ar = and <4 x i32> %wide.load, %broadcast.splat79
  %i.as = and <4 x i32> %wide.load82, %broadcast.splat79
  %i.at = lshr <4 x i32> %i.ar, %broadcast.splat81
  %i.au = lshr <4 x i32> %i.as, %broadcast.splat81
  %i.av = or <4 x i32> %i.ap, %i.at
  %i.aw = or <4 x i32> %i.aq, %i.au
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.12839, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %i.av, ptr %i.ax, align 4, !tbaa !8
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %Kit_TruthSwapAdjacentVars.exit, label %vector.body, !llvm.loop !63

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter229 = phi i64 [ %niter229.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.13138, i64 %indvars.iv158.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8  ; 3 uses
  %i.bc = and i32 %i.bb, %i.ab
  %i.bd = and i32 %i.bb, %i.ad
  %i.be = shl i32 %i.bd, %i.z
  %i.bf = or i32 %i.be, %i.bc
  %i.bg = and i32 %i.bb, %i.af
  %i.bh = lshr i32 %i.bg, %i.z
  %i.bi = or i32 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.12839, i64 %indvars.iv158.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !8
  %indvars.iv.next159.i = or disjoint i64 %indvars.iv158.i, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.13138, i64 %indvars.iv.next159.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8  ; 3 uses
  %i.bm = and i32 %i.bl, %i.ab
  %i.bn = and i32 %i.bl, %i.ad
  %i.bo = shl i32 %i.bn, %i.z
  %i.bp = or i32 %i.bo, %i.bm
  %i.bq = and i32 %i.bl, %i.af
  %i.br = lshr i32 %i.bq, %i.z
  %i.bs = or i32 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.12839, i64 %indvars.iv.next159.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !8
  %indvars.iv.next159.i.1 = add nuw nsw i64 %indvars.iv158.i, 2 ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %Kit_TruthSwapAdjacentVars.exit.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !64

bb.d:                                             ; preds = %.lr.ph
  %i.bu = icmp eq i64 %indvars.iv, 4
  br i1 %i.bu, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.g, label %.lr.ph.i.preheader, label %Kit_TruthSwapAdjacentVars.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  br i1 %min.iters.check105, label %.lr.ph.i.preheader202, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %.12839, i64 %i.m ; 3 uses
  %scevgep84 = getelementptr i8, ptr %.12839, i64 4 ; 3 uses
  %scevgep85 = getelementptr i8, ptr %.12839, i64 %i.n ; 3 uses
  %scevgep86 = getelementptr i8, ptr %.13138, i64 %i.m ; 2 uses
  %scevgep87 = getelementptr i8, ptr %.13138, i64 4 ; 2 uses
  %scevgep88 = getelementptr i8, ptr %.13138, i64 %i.n ; 2 uses
  %bound0 = icmp ult ptr %.12839, %scevgep85
  %bound1 = icmp ult ptr %scevgep84, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %.12839, %scevgep86
  %bound190 = icmp ult ptr %.13138, %scevgep
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ult ptr %.12839, %scevgep88
  %bound193 = icmp ult ptr %scevgep87, %scevgep
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  %bound096 = icmp ult ptr %scevgep84, %scevgep86
  %bound197 = icmp ult ptr %.13138, %scevgep85
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %scevgep84, %scevgep88
  %bound1101 = icmp ult ptr %scevgep87, %scevgep85
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  br i1 %conflict.rdx103, label %.lr.ph.i.preheader202, label %vector.body108

vector.body108:                                   ; preds = %vector.memcheck83, %vector.body108
  %index109 = phi i64 [ %index.next114, %vector.body108 ], [ 0, %vector.memcheck83 ] ; 2 uses
  %i.bv = shl nuw i64 %index109, 1                ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.13138, i64 %i.bv ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.bw, align 4, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec110 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bx = and <2 x i32> %strided.vec, splat (i32 65535)
  %i.by = shl <2 x i32> %strided.vec110, splat (i32 16)
  %i.bz = or disjoint <2 x i32> %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.12839, i64 %i.bv
  %wide.vec111 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !8 ; 2 uses
  %strided.vec112 = shufflevector <4 x i32> %wide.vec111, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec113 = shufflevector <4 x i32> %wide.vec111, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.cb = and <2 x i32> %strided.vec113, splat (i32 -65536)
  %i.cc = lshr <2 x i32> %strided.vec112, splat (i32 16)
  %i.cd = or disjoint <2 x i32> %i.cc, %i.cb
  %interleaved.vec = shufflevector <2 x i32> %i.bz, <2 x i32> %i.cd, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ca, align 4, !tbaa !8
  %index.next114 = add nuw i64 %index109, 2       ; 2 uses
  %i.ce = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.ce, label %middle.block115, label %vector.body108, !llvm.loop !65

middle.block115:                                  ; preds = %vector.body108
  br i1 %cmp.n116, label %Kit_TruthSwapAdjacentVars.exit, label %.lr.ph.i.preheader202

.lr.ph.i.preheader202:                            ; preds = %vector.memcheck83, %.lr.ph.i.preheader, %middle.block115
  %indvars.iv155.i.ph = phi i64 [ 0, %vector.memcheck83 ], [ 0, %.lr.ph.i.preheader ], [ %i.r, %middle.block115 ]
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.cf = trunc i64 %indvars.iv to i32
  %i.cg = add i32 %i.cf, -5                       ; 5 uses
  %i.ch = shl nuw i32 1, %i.cg                    ; 10 uses
  br i1 %i.g, label %.preheader87.lr.ph.i, label %Kit_TruthSwapAdjacentVars.exit

.preheader87.lr.ph.i:                             ; preds = %bb.e
  %.not128.i = icmp eq i32 %i.cg, 31
  %i.ci = shl i32 4, %i.cg                        ; 2 uses
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  br i1 %.not128.i, label %Kit_TruthSwapAdjacentVars.exit, label %.preheader87.us.preheader.i

.preheader87.us.preheader.i:                      ; preds = %.preheader87.lr.ph.i
  %i.ck = shl nuw i32 3, %i.cg
  %i.cl = shl nuw i32 2, %i.cg
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 1)
  %i.cm = sext i32 %i.cl to i64                   ; 4 uses
  %6 = sext i32 %i.ch to i64                      ; 3 uses
  %i.cn = sext i32 %i.ck to i64                   ; 6 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 12 uses
  %i.co = shl nsw i64 %i.cm, 2
  %i.cp = add i64 %i.co, %.1283974
  %i.cq = shl nsw i64 %6, 2                       ; 2 uses
  %i.cr = add i64 %i.cq, %.1313875
  %i.cs = add i64 %i.cq, %.1283974
  %i.ct = shl nsw i64 %i.cm, 2
  %i.cu = add i64 %i.ct, %.1313875
  %min.iters.check163 = icmp slt i32 %i.ch, 8
  %i.cv = sub i64 %.1313875, %.1283974
  %diff.check161 = icmp ugt i64 %i.cv, -32
  %or.cond190 = select i1 %min.iters.check163, i1 true, i1 %diff.check161
  %n.vec165 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %7 = icmp slt i32 %i.ch, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod205 = icmp ne i64 %xtraiter, 0
  %min.iters.check149 = icmp slt i32 %i.ch, 8
  %i.cw = sub i64 %i.cu, %i.cs
  %diff.check147 = icmp ugt i64 %i.cw, -32
  %or.cond193 = select i1 %min.iters.check149, i1 true, i1 %diff.check147
  %n.vec151 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter206 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %8 = icmp slt i32 %i.ch, 4
  %unroll_iter210 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod208.not = icmp eq i64 %xtraiter206, 0
  %lcmp.mod209 = icmp ne i64 %xtraiter206, 0
  %min.iters.check135 = icmp slt i32 %i.ch, 8
  %i.cx = sub i64 %i.cr, %i.cp
  %diff.check133 = icmp ugt i64 %i.cx, -32
  %or.cond192 = select i1 %min.iters.check135, i1 true, i1 %diff.check133
  %n.vec137 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter212 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %9 = icmp slt i32 %i.ch, 4
  %unroll_iter216 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod214.not = icmp eq i64 %xtraiter212, 0
  %lcmp.mod215 = icmp ne i64 %xtraiter212, 0
  %min.iters.check121 = icmp slt i32 %i.ch, 8
  %i.cy = sub i64 %.1313875, %.1283974
  %diff.check119 = icmp ugt i64 %i.cy, -32
  %or.cond191 = select i1 %min.iters.check121, i1 true, i1 %diff.check119
  %n.vec123 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter218 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %10 = icmp slt i32 %i.ch, 4
  %unroll_iter222 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod220.not = icmp eq i64 %xtraiter218, 0
  %lcmp.mod221 = icmp ne i64 %xtraiter218, 0
  br label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %._crit_edge.us.i, %.preheader87.us.preheader.i
  %.098.us.i = phi ptr [ %i.fa, %._crit_edge.us.i ], [ %.12839, %.preheader87.us.preheader.i ] ; 15 uses
  %.07797.us.i = phi ptr [ %i.ez, %._crit_edge.us.i ], [ %.13138, %.preheader87.us.preheader.i ] ; 15 uses
  %.07896.us.i = phi i32 [ %i.fb, %._crit_edge.us.i ], [ 0, %.preheader87.us.preheader.i ]
  br i1 %or.cond190, label %.lr.ph.us.i.preheader, label %vector.body166

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.preheader.i
  br i1 %7, label %.lr.ph.us.i.epil.preheader, label %.lr.ph.us.i

vector.body166:                                   ; preds = %.lr.ph.us.preheader.i, %vector.body166
  %index167 = phi i64 [ %index.next170, %vector.body166 ], [ 0, %.lr.ph.us.preheader.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %index167 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load168 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !8
  %wide.load169 = load <4 x i32>, ptr %i.da, align 4, !tbaa !8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %index167 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x i32> %wide.load168, ptr %i.db, align 4, !tbaa !8
  store <4 x i32> %wide.load169, ptr %i.dc, align 4, !tbaa !8
  %index.next170 = add nuw i64 %index167, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.dd, label %.lr.ph91.us.preheader.i, label %vector.body166, !llvm.loop !66

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
  br i1 %niter.ncmp.3, label %.lr.ph91.us.preheader.i.loopexit.unr-lcssa, label %.lr.ph.us.i, !llvm.loop !67

.lr.ph91.us.i:                                    ; preds = %.lr.ph91.us.i.preheader, %.lr.ph91.us.i
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.3, %.lr.ph91.us.i ], [ 0, %.lr.ph91.us.i.preheader ] ; 6 uses
  %niter211 = phi i64 [ %niter211.next.3, %.lr.ph91.us.i ], [ 0, %.lr.ph91.us.i.preheader ]
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
  %niter211.next.3 = add i64 %niter211, 4         ; 2 uses
  %niter211.ncmp.3 = icmp eq i64 %niter211.next.3, %unroll_iter210
  br i1 %niter211.ncmp.3, label %.preheader85.us.i.loopexit.unr-lcssa, label %.lr.ph91.us.i, !llvm.loop !68

scalar.ph134:                                     ; preds = %scalar.ph134.preheader, %scalar.ph134
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i.3, %scalar.ph134 ], [ 0, %scalar.ph134.preheader ] ; 6 uses
  %niter217 = phi i64 [ %niter217.next.3, %scalar.ph134 ], [ 0, %scalar.ph134.preheader ]
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
  %niter217.next.3 = add i64 %niter217, 4         ; 2 uses
  %niter217.ncmp.3 = icmp eq i64 %niter217.next.3, %unroll_iter216
  br i1 %niter217.ncmp.3, label %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, label %scalar.ph134, !llvm.loop !69

.lr.ph95.us.i.preheader.loopexit.unr-lcssa:       ; preds = %scalar.ph134
  br i1 %lcmp.mod214.not, label %.lr.ph95.us.i.preheader, label %scalar.ph134.epil.preheader

scalar.ph134.epil.preheader:                      ; preds = %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, %scalar.ph134.preheader
  %indvars.iv143.i.epil.init = phi i64 [ 0, %scalar.ph134.preheader ], [ %indvars.iv.next144.i.3, %.lr.ph95.us.i.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %scalar.ph134.epil

scalar.ph134.epil:                                ; preds = %scalar.ph134.epil, %scalar.ph134.epil.preheader
  %indvars.iv143.i.epil = phi i64 [ %indvars.iv.next144.i.epil, %scalar.ph134.epil ], [ %indvars.iv143.i.epil.init, %scalar.ph134.epil.preheader ] ; 3 uses
  %epil.iter213 = phi i64 [ %epil.iter213.next, %scalar.ph134.epil ], [ 0, %scalar.ph134.epil.preheader ]
  %gep171.i.epil = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv143.i.epil
  %i.dy = load i32, ptr %gep171.i.epil, align 4, !tbaa !8
  %gep173.i.epil = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv143.i.epil
  store i32 %i.dy, ptr %gep173.i.epil, align 4, !tbaa !8
  %indvars.iv.next144.i.epil = add nuw nsw i64 %indvars.iv143.i.epil, 1
  %epil.iter213.next = add i64 %epil.iter213, 1   ; 2 uses
  %epil.iter213.cmp.not = icmp eq i64 %epil.iter213.next, %xtraiter212
  br i1 %epil.iter213.cmp.not, label %.lr.ph95.us.i.preheader, label %scalar.ph134.epil, !llvm.loop !70

.lr.ph95.us.i.preheader:                          ; preds = %vector.body138, %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, %scalar.ph134.epil
  br i1 %or.cond191, label %.lr.ph95.us.i.preheader196, label %vector.body124

.lr.ph95.us.i.preheader196:                       ; preds = %.lr.ph95.us.i.preheader
  br i1 %10, label %.lr.ph95.us.i.epil.preheader, label %.lr.ph95.us.i

vector.body124:                                   ; preds = %.lr.ph95.us.i.preheader, %vector.body124
  %index125 = phi i64 [ %index.next128, %vector.body124 ], [ 0, %.lr.ph95.us.i.preheader ] ; 2 uses
  %i.dz = add nsw i64 %index125, %i.cn            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load126 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !8
  %wide.load127 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !8
  %i.ec = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.dz ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x i32> %wide.load126, ptr %i.ec, align 4, !tbaa !8
  store <4 x i32> %wide.load127, ptr %i.ed, align 4, !tbaa !8
  %index.next128 = add nuw i64 %index125, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.ee, label %._crit_edge.us.i, label %vector.body124, !llvm.loop !71

.lr.ph95.us.i:                                    ; preds = %.lr.ph95.us.i.preheader196, %.lr.ph95.us.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i.3, %.lr.ph95.us.i ], [ 0, %.lr.ph95.us.i.preheader196 ] ; 5 uses
  %niter223 = phi i64 [ %niter223.next.3, %.lr.ph95.us.i ], [ 0, %.lr.ph95.us.i.preheader196 ]
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
  %niter223.next.3 = add i64 %niter223, 4         ; 2 uses
  %niter223.ncmp.3 = icmp eq i64 %niter223.next.3, %unroll_iter222
  br i1 %niter223.ncmp.3, label %._crit_edge.us.i.loopexit.unr-lcssa, label %.lr.ph95.us.i, !llvm.loop !72

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph95.us.i
  br i1 %lcmp.mod220.not, label %._crit_edge.us.i, label %.lr.ph95.us.i.epil.preheader

.lr.ph95.us.i.epil.preheader:                     ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %.lr.ph95.us.i.preheader196
  %indvars.iv150.i.epil.init = phi i64 [ 0, %.lr.ph95.us.i.preheader196 ], [ %indvars.iv.next151.i.3, %._crit_edge.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %.lr.ph95.us.i.epil

.lr.ph95.us.i.epil:                               ; preds = %.lr.ph95.us.i.epil, %.lr.ph95.us.i.epil.preheader
  %indvars.iv150.i.epil = phi i64 [ %indvars.iv.next151.i.epil, %.lr.ph95.us.i.epil ], [ %indvars.iv150.i.epil.init, %.lr.ph95.us.i.epil.preheader ] ; 2 uses
  %epil.iter219 = phi i64 [ %epil.iter219.next, %.lr.ph95.us.i.epil ], [ 0, %.lr.ph95.us.i.epil.preheader ]
  %i.ev = add nsw i64 %indvars.iv150.i.epil, %i.cn ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.ev
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !8
  %indvars.iv.next151.i.epil = add nuw nsw i64 %indvars.iv150.i.epil, 1
  %epil.iter219.next = add i64 %epil.iter219, 1   ; 2 uses
  %epil.iter219.cmp.not = icmp eq i64 %epil.iter219.next, %xtraiter218
end_hunk_0
begin_hunk_1_@Kit_TruthShrink:bb.a
  %cmp.n117 = icmp eq i64 %i.o, %n.vec108
  %min.iters.check = icmp ult i32 %i.e, 8
  %n.vec = and i64 %i.g, 2147483640
  %xtraiter225 = and i64 %i.g, 1
  %i.q = icmp eq i32 %i.e, 1
  %unroll_iter229 = and i64 %i.g, 2147483646
  %lcmp.mod227.not = icmp eq i64 %xtraiter225, 0
  %lcmp.mod228 = trunc i32 %i.e to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph54, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.052 = phi i32 [ 0, %.lr.ph54 ], [ %.2, %bb.f ] ; 3 uses
  %.02251 = phi i32 [ 0, %.lr.ph54 ], [ %.123, %bb.f ] ; 5 uses
  %.02648 = phi ptr [ %0, %.lr.ph54 ], [ %.228, %bb.f ] ; 3 uses
  %.02947 = phi ptr [ %1, %.lr.ph54 ], [ %.231, %bb.f ] ; 3 uses
  %indvars67 = trunc i64 %indvars.iv to i32       ; 3 uses
  %i.r = shl nuw i32 1, %indvars67
  %i.s = and i32 %i.r, %4
  %.not34 = icmp eq i32 %i.s, 0
  br i1 %.not34, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not35.not40 = icmp slt i32 %.02251, %indvars67
  br i1 %.not35.not40, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.t = sext i32 %.02251 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Kit_TruthSwapAdjacentVars.exit
  %indvars.iv64 = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next65, %Kit_TruthSwapAdjacentVars.exit ] ; 3 uses
  %.12742 = phi ptr [ %.02648, %.lr.ph.preheader ], [ %.13041, %Kit_TruthSwapAdjacentVars.exit ] ; 17 uses
  %.13041 = phi ptr [ %.02947, %.lr.ph.preheader ], [ %.12742, %Kit_TruthSwapAdjacentVars.exit ] ; 16 uses
  %.1274275 = ptrtoaddr ptr %.12742 to i64        ; 5 uses
  %.1304176 = ptrtoaddr ptr %.13041 to i64        ; 5 uses
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, -1 ; 5 uses
  %i.u = icmp slt i64 %indvars.iv64, 5
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.v = trunc nsw i64 %indvars.iv.next65 to i32
  %i.w = shl nuw nsw i32 1, %i.v                  ; 7 uses
  br i1 %i.f, label %.lr.ph127.i, label %Kit_TruthSwapAdjacentVars.exit

.lr.ph127.i:                                      ; preds = %bb.c
  %i.x = getelementptr inbounds [12 x i8], ptr @Kit_TruthSwapAdjacentVars.PMasks, i64 %indvars.iv.next65 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8  ; 4 uses
  %i.ad = sub i64 %.1304176, %.1274275
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.lr.ph127.i
  br i1 %i.q, label %scalar.ph.epil.preheader, label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph127.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert77 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat78 = shufflevector <4 x i32> %broadcast.splatinsert77, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat80 = shufflevector <4 x i32> %broadcast.splatinsert79, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert81 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat82 = shufflevector <4 x i32> %broadcast.splatinsert81, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.13041, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !8 ; 3 uses
  %wide.load83 = load <4 x i32>, ptr %i.af, align 4, !tbaa !8 ; 3 uses
  %i.ag = and <4 x i32> %wide.load, %broadcast.splat
  %i.ah = and <4 x i32> %wide.load83, %broadcast.splat
  %i.ai = and <4 x i32> %wide.load, %broadcast.splat78
  %i.aj = and <4 x i32> %wide.load83, %broadcast.splat78
  %i.ak = shl <4 x i32> %i.ai, %broadcast.splat82
  %i.al = shl <4 x i32> %i.aj, %broadcast.splat82
  %i.am = or <4 x i32> %i.ak, %i.ag
  %i.an = or <4 x i32> %i.al, %i.ah
  %i.ao = and <4 x i32> %wide.load, %broadcast.splat80
  %i.ap = and <4 x i32> %wide.load83, %broadcast.splat80
  %i.aq = lshr <4 x i32> %i.ao, %broadcast.splat82
  %i.ar = lshr <4 x i32> %i.ap, %broadcast.splat82
  %i.as = or <4 x i32> %i.am, %i.aq
  %i.at = or <4 x i32> %i.an, %i.ar
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.12742, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %i.as, ptr %i.au, align 4, !tbaa !8
  store <4 x i32> %i.at, ptr %i.av, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %Kit_TruthSwapAdjacentVars.exit, label %vector.body, !llvm.loop !84

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter230 = phi i64 [ %niter230.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.13041, i64 %indvars.iv158.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8  ; 3 uses
  %i.az = and i32 %i.ay, %i.y
  %i.ba = and i32 %i.ay, %i.aa
  %i.bb = shl i32 %i.ba, %i.w
  %i.bc = or i32 %i.bb, %i.az
  %i.bd = and i32 %i.ay, %i.ac
  %i.be = lshr i32 %i.bd, %i.w
  %i.bf = or i32 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.12742, i64 %indvars.iv158.i
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !8
  %indvars.iv.next159.i = or disjoint i64 %indvars.iv158.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.13041, i64 %indvars.iv.next159.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8  ; 3 uses
  %i.bj = and i32 %i.bi, %i.y
  %i.bk = and i32 %i.bi, %i.aa
  %i.bl = shl i32 %i.bk, %i.w
  %i.bm = or i32 %i.bl, %i.bj
  %i.bn = and i32 %i.bi, %i.ac
  %i.bo = lshr i32 %i.bn, %i.w
  %i.bp = or i32 %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.12742, i64 %indvars.iv.next159.i
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !8
  %indvars.iv.next159.i.1 = add nuw nsw i64 %indvars.iv158.i, 2 ; 2 uses
  %niter230.next.1 = add i64 %niter230, 2         ; 2 uses
  %niter230.ncmp.1 = icmp eq i64 %niter230.next.1, %unroll_iter229
  br i1 %niter230.ncmp.1, label %Kit_TruthSwapAdjacentVars.exit.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !85

bb.d:                                             ; preds = %.lr.ph
  %i.br = icmp eq i64 %indvars.iv.next65, 4
  br i1 %i.br, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.f, label %.lr.ph.i.preheader, label %Kit_TruthSwapAdjacentVars.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  br i1 %min.iters.check106, label %.lr.ph.i.preheader203, label %vector.memcheck84

vector.memcheck84:                                ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %.12742, i64 %i.k ; 3 uses
  %scevgep85 = getelementptr i8, ptr %.12742, i64 4 ; 3 uses
  %scevgep86 = getelementptr i8, ptr %.12742, i64 %i.l ; 3 uses
  %scevgep87 = getelementptr i8, ptr %.13041, i64 %i.k ; 2 uses
  %scevgep88 = getelementptr i8, ptr %.13041, i64 4 ; 2 uses
  %scevgep89 = getelementptr i8, ptr %.13041, i64 %i.l ; 2 uses
  %bound0 = icmp ult ptr %.12742, %scevgep86
  %bound1 = icmp ult ptr %scevgep85, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound090 = icmp ult ptr %.12742, %scevgep87
  %bound191 = icmp ult ptr %.13041, %scevgep
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx = or i1 %found.conflict, %found.conflict92
  %bound093 = icmp ult ptr %.12742, %scevgep89
  %bound194 = icmp ult ptr %scevgep88, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx, %found.conflict95
  %bound097 = icmp ult ptr %scevgep85, %scevgep87
  %bound198 = icmp ult ptr %.13041, %scevgep86
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %conflict.rdx96, %found.conflict99
  %bound0101 = icmp ult ptr %scevgep85, %scevgep89
  %bound1102 = icmp ult ptr %scevgep88, %scevgep86
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx104 = or i1 %conflict.rdx100, %found.conflict103
  br i1 %conflict.rdx104, label %.lr.ph.i.preheader203, label %vector.body109

vector.body109:                                   ; preds = %vector.memcheck84, %vector.body109
  %index110 = phi i64 [ %index.next115, %vector.body109 ], [ 0, %vector.memcheck84 ] ; 2 uses
  %i.bs = shl nuw i64 %index110, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.13041, i64 %i.bs ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.bt, align 4, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec111 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bu = and <2 x i32> %strided.vec, splat (i32 65535)
  %i.bv = shl <2 x i32> %strided.vec111, splat (i32 16)
  %i.bw = or disjoint <2 x i32> %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.12742, i64 %i.bs
  %wide.vec112 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !8 ; 2 uses
  %strided.vec113 = shufflevector <4 x i32> %wide.vec112, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec114 = shufflevector <4 x i32> %wide.vec112, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.by = and <2 x i32> %strided.vec114, splat (i32 -65536)
  %i.bz = lshr <2 x i32> %strided.vec113, splat (i32 16)
  %i.ca = or disjoint <2 x i32> %i.bz, %i.by
  %interleaved.vec = shufflevector <2 x i32> %i.bw, <2 x i32> %i.ca, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bx, align 4, !tbaa !8
  %index.next115 = add nuw i64 %index110, 2       ; 2 uses
  %i.cb = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.cb, label %middle.block116, label %vector.body109, !llvm.loop !86

middle.block116:                                  ; preds = %vector.body109
  br i1 %cmp.n117, label %Kit_TruthSwapAdjacentVars.exit, label %.lr.ph.i.preheader203

.lr.ph.i.preheader203:                            ; preds = %vector.memcheck84, %.lr.ph.i.preheader, %middle.block116
  %indvars.iv155.i.ph = phi i64 [ 0, %vector.memcheck84 ], [ 0, %.lr.ph.i.preheader ], [ %i.p, %middle.block116 ]
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.cc = trunc i64 %indvars.iv64 to i32
  %i.cd = add i32 %i.cc, -6                       ; 5 uses
  %i.ce = shl nuw i32 1, %i.cd                    ; 10 uses
  br i1 %i.f, label %.preheader87.lr.ph.i, label %Kit_TruthSwapAdjacentVars.exit

.preheader87.lr.ph.i:                             ; preds = %bb.e
  %.not128.i = icmp eq i32 %i.cd, 31
  %i.cf = shl i32 4, %i.cd                        ; 2 uses
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  br i1 %.not128.i, label %Kit_TruthSwapAdjacentVars.exit, label %.preheader87.us.preheader.i

.preheader87.us.preheader.i:                      ; preds = %.preheader87.lr.ph.i
  %i.ch = shl nuw i32 3, %i.cd
  %i.ci = shl nuw i32 2, %i.cd
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 1)
  %i.cj = sext i32 %i.ci to i64                   ; 4 uses
  %6 = sext i32 %i.ce to i64                      ; 3 uses
  %i.ck = sext i32 %i.ch to i64                   ; 6 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 12 uses
  %i.cl = shl nsw i64 %i.cj, 2
  %i.cm = add i64 %i.cl, %.1274275
  %i.cn = shl nsw i64 %6, 2                       ; 2 uses
  %i.co = add i64 %i.cn, %.1304176
  %i.cp = add i64 %i.cn, %.1274275
  %i.cq = shl nsw i64 %i.cj, 2
  %i.cr = add i64 %i.cq, %.1304176
  %min.iters.check164 = icmp slt i32 %i.ce, 8
  %i.cs = sub i64 %.1304176, %.1274275
  %diff.check162 = icmp ugt i64 %i.cs, -32
  %or.cond191 = select i1 %min.iters.check164, i1 true, i1 %diff.check162
  %n.vec166 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %7 = icmp slt i32 %i.ce, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod206 = icmp ne i64 %xtraiter, 0
  %min.iters.check150 = icmp slt i32 %i.ce, 8
  %i.ct = sub i64 %i.cr, %i.cp
  %diff.check148 = icmp ugt i64 %i.ct, -32
  %or.cond194 = select i1 %min.iters.check150, i1 true, i1 %diff.check148
  %n.vec152 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter207 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %8 = icmp slt i32 %i.ce, 4
  %unroll_iter211 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod209.not = icmp eq i64 %xtraiter207, 0
  %lcmp.mod210 = icmp ne i64 %xtraiter207, 0
  %min.iters.check136 = icmp slt i32 %i.ce, 8
  %i.cu = sub i64 %i.co, %i.cm
  %diff.check134 = icmp ugt i64 %i.cu, -32
  %or.cond193 = select i1 %min.iters.check136, i1 true, i1 %diff.check134
  %n.vec138 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter213 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %9 = icmp slt i32 %i.ce, 4
  %unroll_iter217 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod215.not = icmp eq i64 %xtraiter213, 0
  %lcmp.mod216 = icmp ne i64 %xtraiter213, 0
  %min.iters.check122 = icmp slt i32 %i.ce, 8
  %i.cv = sub i64 %.1304176, %.1274275
  %diff.check120 = icmp ugt i64 %i.cv, -32
  %or.cond192 = select i1 %min.iters.check122, i1 true, i1 %diff.check120
  %n.vec124 = and i64 %wide.trip.count.i, 2147483640
  %xtraiter219 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %10 = icmp slt i32 %i.ce, 4
  %unroll_iter223 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod221.not = icmp eq i64 %xtraiter219, 0
  %lcmp.mod222 = icmp ne i64 %xtraiter219, 0
  br label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %._crit_edge.us.i, %.preheader87.us.preheader.i
  %.098.us.i = phi ptr [ %i.ex, %._crit_edge.us.i ], [ %.12742, %.preheader87.us.preheader.i ] ; 15 uses
  %.07797.us.i = phi ptr [ %i.ew, %._crit_edge.us.i ], [ %.13041, %.preheader87.us.preheader.i ] ; 15 uses
  %.07896.us.i = phi i32 [ %i.ey, %._crit_edge.us.i ], [ 0, %.preheader87.us.preheader.i ]
  br i1 %or.cond191, label %.lr.ph.us.i.preheader, label %vector.body167

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.preheader.i
  br i1 %7, label %.lr.ph.us.i.epil.preheader, label %.lr.ph.us.i

vector.body167:                                   ; preds = %.lr.ph.us.preheader.i, %vector.body167
  %index168 = phi i64 [ %index.next171, %vector.body167 ], [ 0, %.lr.ph.us.preheader.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i, i64 %index168 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load169 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !8
  %wide.load170 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !8
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i, i64 %index168 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x i32> %wide.load169, ptr %i.cy, align 4, !tbaa !8
  store <4 x i32> %wide.load170, ptr %i.cz, align 4, !tbaa !8
  %index.next171 = add nuw i64 %index168, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next171, %n.vec166
  br i1 %i.da, label %.lr.ph91.us.preheader.i, label %vector.body167, !llvm.loop !87

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
  br i1 %niter.ncmp.3, label %.lr.ph91.us.preheader.i.loopexit.unr-lcssa, label %.lr.ph.us.i, !llvm.loop !88

.lr.ph91.us.i:                                    ; preds = %.lr.ph91.us.i.preheader, %.lr.ph91.us.i
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.3, %.lr.ph91.us.i ], [ 0, %.lr.ph91.us.i.preheader ] ; 6 uses
  %niter212 = phi i64 [ %niter212.next.3, %.lr.ph91.us.i ], [ 0, %.lr.ph91.us.i.preheader ]
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
  %niter212.next.3 = add i64 %niter212, 4         ; 2 uses
  %niter212.ncmp.3 = icmp eq i64 %niter212.next.3, %unroll_iter211
  br i1 %niter212.ncmp.3, label %.preheader85.us.i.loopexit.unr-lcssa, label %.lr.ph91.us.i, !llvm.loop !89

scalar.ph135:                                     ; preds = %scalar.ph135.preheader, %scalar.ph135
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i.3, %scalar.ph135 ], [ 0, %scalar.ph135.preheader ] ; 6 uses
  %niter218 = phi i64 [ %niter218.next.3, %scalar.ph135 ], [ 0, %scalar.ph135.preheader ]
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
  %niter218.next.3 = add i64 %niter218, 4         ; 2 uses
  %niter218.ncmp.3 = icmp eq i64 %niter218.next.3, %unroll_iter217
  br i1 %niter218.ncmp.3, label %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, label %scalar.ph135, !llvm.loop !90

.lr.ph95.us.i.preheader.loopexit.unr-lcssa:       ; preds = %scalar.ph135
  br i1 %lcmp.mod215.not, label %.lr.ph95.us.i.preheader, label %scalar.ph135.epil.preheader

scalar.ph135.epil.preheader:                      ; preds = %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, %scalar.ph135.preheader
  %indvars.iv143.i.epil.init = phi i64 [ 0, %scalar.ph135.preheader ], [ %indvars.iv.next144.i.3, %.lr.ph95.us.i.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %scalar.ph135.epil

scalar.ph135.epil:                                ; preds = %scalar.ph135.epil, %scalar.ph135.epil.preheader
  %indvars.iv143.i.epil = phi i64 [ %indvars.iv.next144.i.epil, %scalar.ph135.epil ], [ %indvars.iv143.i.epil.init, %scalar.ph135.epil.preheader ] ; 3 uses
  %epil.iter214 = phi i64 [ %epil.iter214.next, %scalar.ph135.epil ], [ 0, %scalar.ph135.epil.preheader ]
  %gep171.i.epil = getelementptr [4 x i8], ptr %invariant.gep170.i, i64 %indvars.iv143.i.epil
  %i.dv = load i32, ptr %gep171.i.epil, align 4, !tbaa !8
  %gep173.i.epil = getelementptr [4 x i8], ptr %invariant.gep172.i, i64 %indvars.iv143.i.epil
  store i32 %i.dv, ptr %gep173.i.epil, align 4, !tbaa !8
  %indvars.iv.next144.i.epil = add nuw nsw i64 %indvars.iv143.i.epil, 1
  %epil.iter214.next = add i64 %epil.iter214, 1   ; 2 uses
  %epil.iter214.cmp.not = icmp eq i64 %epil.iter214.next, %xtraiter213
  br i1 %epil.iter214.cmp.not, label %.lr.ph95.us.i.preheader, label %scalar.ph135.epil, !llvm.loop !91

.lr.ph95.us.i.preheader:                          ; preds = %vector.body139, %.lr.ph95.us.i.preheader.loopexit.unr-lcssa, %scalar.ph135.epil
  br i1 %or.cond192, label %.lr.ph95.us.i.preheader197, label %vector.body125

.lr.ph95.us.i.preheader197:                       ; preds = %.lr.ph95.us.i.preheader
  br i1 %10, label %.lr.ph95.us.i.epil.preheader, label %.lr.ph95.us.i

vector.body125:                                   ; preds = %.lr.ph95.us.i.preheader, %vector.body125
  %index126 = phi i64 [ %index.next129, %vector.body125 ], [ 0, %.lr.ph95.us.i.preheader ] ; 2 uses
  %i.dw = add nsw i64 %index126, %i.ck            ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load127 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !8
  %wide.load128 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !8
  %i.dz = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load127, ptr %i.dz, align 4, !tbaa !8
  store <4 x i32> %wide.load128, ptr %i.ea, align 4, !tbaa !8
  %index.next129 = add nuw i64 %index126, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next129, %n.vec124
  br i1 %i.eb, label %._crit_edge.us.i, label %vector.body125, !llvm.loop !92

.lr.ph95.us.i:                                    ; preds = %.lr.ph95.us.i.preheader197, %.lr.ph95.us.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i.3, %.lr.ph95.us.i ], [ 0, %.lr.ph95.us.i.preheader197 ] ; 5 uses
  %niter224 = phi i64 [ %niter224.next.3, %.lr.ph95.us.i ], [ 0, %.lr.ph95.us.i.preheader197 ]
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
  %niter224.next.3 = add i64 %niter224, 4         ; 2 uses
  %niter224.ncmp.3 = icmp eq i64 %niter224.next.3, %unroll_iter223
  br i1 %niter224.ncmp.3, label %._crit_edge.us.i.loopexit.unr-lcssa, label %.lr.ph95.us.i, !llvm.loop !93

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph95.us.i
  br i1 %lcmp.mod221.not, label %._crit_edge.us.i, label %.lr.ph95.us.i.epil.preheader

.lr.ph95.us.i.epil.preheader:                     ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %.lr.ph95.us.i.preheader197
  %indvars.iv150.i.epil.init = phi i64 [ 0, %.lr.ph95.us.i.preheader197 ], [ %indvars.iv.next151.i.3, %._crit_edge.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  br label %.lr.ph95.us.i.epil

.lr.ph95.us.i.epil:                               ; preds = %.lr.ph95.us.i.epil, %.lr.ph95.us.i.epil.preheader
  %indvars.iv150.i.epil = phi i64 [ %indvars.iv.next151.i.epil, %.lr.ph95.us.i.epil ], [ %indvars.iv150.i.epil.init, %.lr.ph95.us.i.epil.preheader ] ; 2 uses
  %epil.iter220 = phi i64 [ %epil.iter220.next, %.lr.ph95.us.i.epil ], [ 0, %.lr.ph95.us.i.epil.preheader ]
  %i.es = add nsw i64 %indvars.iv150.i.epil, %i.ck ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %.07797.us.i, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !8
  %i.ev = getelementptr inbounds [4 x i8], ptr %.098.us.i, i64 %i.es
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !8
  %indvars.iv.next151.i.epil = add nuw nsw i64 %indvars.iv150.i.epil, 1
  %epil.iter220.next = add i64 %epil.iter220, 1   ; 2 uses
  %epil.iter220.cmp.not = icmp eq i64 %epil.iter220.next, %xtraiter219
end_hunk_1
begin_hunk_2_@Kit_TruthSemiCanonicize:bb.a
  %vec.ind.next179 = add <4 x i8> %vec.ind177, splat (i8 4)
  %i.m = icmp eq i64 %index.next178, %n.vec175
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !353

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n180 = icmp eq i64 %n.vec175, %wide.trip.count
  br i1 %cmp.n180, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec175, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.n = trunc i64 %indvars.iv to i8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.n, ptr %i.o, align 1, !tbaa !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !354

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.p = icmp slt i32 %i.e, 1                     ; 5 uses
  br i1 %i.p, label %Kit_TruthCountOnes.exit.thread, label %select.unfold.preheader.i

select.unfold.preheader.i:                        ; preds = %._crit_edge
  %i.q = zext nneg i32 %i.e to i64                ; 6 uses
  %min.iters.check181 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check181, label %select.unfold.i, label %vector.ph182

vector.ph182:                                     ; preds = %select.unfold.preheader.i
  %n.vec183 = and i64 %i.q, 2147483640
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.q
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next189, %vector.body184 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph182 ], [ %i.y, %vector.body184 ]
  %vec.phi186 = phi <4 x i32> [ zeroinitializer, %vector.ph182 ], [ %i.z, %vector.body184 ]
  %i.r = xor i64 %index185, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.t = getelementptr inbounds i8, ptr %gep, i64 -28
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !8
  %wide.load187 = load <4 x i32>, ptr %i.t, align 4, !tbaa !8
  %i.u = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load)
  %i.v = shufflevector <4 x i32> %i.u, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.w = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load187)
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.y = add <4 x i32> %i.v, %vec.phi             ; 2 uses
  %i.z = add <4 x i32> %i.x, %vec.phi186          ; 2 uses
  %index.next189 = add nuw i64 %index185, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.aa, label %middle.block190, label %vector.body184, !llvm.loop !355

middle.block190:                                  ; preds = %vector.body184
  %bin.rdx = add <4 x i32> %i.z, %i.y
  %i.ab = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %Kit_TruthCountOnes.exit

select.unfold.i:                                  ; preds = %select.unfold.preheader.i, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %select.unfold.i ], [ %i.q, %select.unfold.preheader.i ] ; 2 uses
  %.08.i = phi i32 [ %i.af, %select.unfold.i ], [ 0, %select.unfold.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = add nuw nsw i32 %i.ae, %.08.i           ; 2 uses
  %i.ag = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ag, label %select.unfold.i, label %Kit_TruthCountOnes.exit, !llvm.loop !356

Kit_TruthCountOnes.exit:                          ; preds = %select.unfold.i, %middle.block190
  %.lcssa = phi i32 [ %i.ab, %middle.block190 ], [ %i.af, %select.unfold.i ]
  %i.ah = shl nsw i32 %i.e, 4
  %i.ai = icmp sgt i32 %.lcssa, %i.ah
  br i1 %i.ai, label %select.unfold.i103.preheader, label %Kit_TruthNot.exit

select.unfold.i103.preheader:                     ; preds = %Kit_TruthCountOnes.exit
  %min.iters.check194 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check194, label %select.unfold.i103, label %vector.ph195

vector.ph195:                                     ; preds = %select.unfold.i103.preheader
  %n.vec196 = and i64 %i.q, 2147483640
  %invariant.gep385 = getelementptr [4 x i8], ptr %0, i64 %i.q
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next201, %vector.body197 ] ; 2 uses
  %i.aj = xor i64 %index198, -1
  %gep386 = getelementptr [4 x i8], ptr %invariant.gep385, i64 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %gep386, i64 -12 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %gep386, i64 -28 ; 2 uses
  %wide.load199 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !8
  %wide.load200 = load <4 x i32>, ptr %i.al, align 4, !tbaa !8
  %i.am = xor <4 x i32> %wide.load199, splat (i32 -1)
  %i.an = xor <4 x i32> %wide.load200, splat (i32 -1)
  store <4 x i32> %i.am, ptr %i.ak, align 4, !tbaa !8
  store <4 x i32> %i.an, ptr %i.al, align 4, !tbaa !8
  %index.next201 = add nuw i64 %index198, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.ao, label %Kit_TruthNot.exit.loopexit, label %vector.body197, !llvm.loop !357

Kit_TruthCountOnes.exit.thread:                   ; preds = %._crit_edge
  %i.ap = shl nuw i32 1, %2
  br label %Kit_TruthNot.exit

select.unfold.i103:                               ; preds = %select.unfold.i103.preheader, %select.unfold.i103
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i105, %select.unfold.i103 ], [ %i.q, %select.unfold.i103.preheader ] ; 2 uses
  %indvars.iv.next.i105 = add nsw i64 %indvars.iv.i104, -1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i105 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = xor i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !8
  %i.at = icmp samesign ugt i64 %indvars.iv.i104, 1
  br i1 %i.at, label %select.unfold.i103, label %Kit_TruthNot.exit.loopexit, !llvm.loop !358

Kit_TruthNot.exit.loopexit:                       ; preds = %vector.body197, %select.unfold.i103
  %i.au = shl nuw i32 1, %2
  br label %Kit_TruthNot.exit

Kit_TruthNot.exit:                                ; preds = %Kit_TruthNot.exit.loopexit, %Kit_TruthCountOnes.exit.thread, %Kit_TruthCountOnes.exit
  %.0 = phi i32 [ %i.ap, %Kit_TruthCountOnes.exit.thread ], [ 0, %Kit_TruthCountOnes.exit ], [ %i.au, %Kit_TruthNot.exit.loopexit ] ; 2 uses
  call void @Kit_TruthCountOnesInCofs(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %i.a)
  br i1 %i.f, label %.lr.ph120.preheader, label %Kit_TruthCopy.exit

.lr.ph120.preheader:                              ; preds = %Kit_TruthNot.exit
  %wide.trip.count144 = zext nneg i32 %2 to i64
  br label %.lr.ph120

.preheader:                                       ; preds = %bb.g
  %.not = icmp eq i32 %2, 1
  %i.av = zext i32 %i.e to i64                    ; 11 uses
  br i1 %.not, label %Kit_TruthCopy.exit, label %.lr.ph128.us.preheader

.lr.ph128.us.preheader:                           ; preds = %.preheader
  %i.aw = add nsw i32 %2, -1
  %wide.trip.count152 = zext i32 %i.aw to i64
  %i.ax = shl nuw nsw i64 %i.av, 2
  %i.ay = add nsw i64 %i.ax, -4                   ; 2 uses
  %i.az = and i64 %i.ay, -8
  %i.ba = or i64 %i.ay, 4                         ; 2 uses
  %i.bb = add nsw i64 %i.az, 8                    ; 2 uses
  %i.bc = add nsw i64 %i.av, -1
  %i.bd = lshr i64 %i.bc, 1
  %i.be = add nuw i64 %i.bd, 1                    ; 2 uses
  %min.iters.check249 = icmp ult i32 %i.e, 11
  %n.vec251 = and i64 %i.be, -2                   ; 3 uses
  %i.bf = shl i64 %n.vec251, 1
  %cmp.n260 = icmp eq i64 %i.be, %n.vec251
  %min.iters.check208 = icmp ult i32 %i.e, 8
  %n.vec210 = and i64 %i.av, 2147483640
  %xtraiter374 = and i64 %i.av, 1
  %i.bg = icmp eq i32 %i.e, 1
  %unroll_iter378 = and i64 %i.av, 2147483646
  %lcmp.mod376.not = icmp eq i64 %xtraiter374, 0
  %lcmp.mod377 = trunc i32 %i.e to i1
  br label %.lr.ph128.us

.lr.ph128.us:                                     ; preds = %.lr.ph128.us.backedge, %.lr.ph128.us.preheader
  %indvars.iv149 = phi i64 [ 0, %.lr.ph128.us.preheader ], [ %indvars.iv149.be, %.lr.ph128.us.backedge ] ; 8 uses
  %.4126.us = phi i32 [ %.2, %.lr.ph128.us.preheader ], [ %.6.us, %.lr.ph128.us.backedge ] ; 4 uses
  %.181125.us = phi ptr [ %0, %.lr.ph128.us.preheader ], [ %.282.us, %.lr.ph128.us.backedge ] ; 24 uses
  %.184124.us = phi i32 [ 0, %.lr.ph128.us.preheader ], [ %.285.us, %.lr.ph128.us.backedge ] ; 2 uses
  %.086123.us = phi i32 [ 0, %.lr.ph128.us.preheader ], [ %.086123.us.be, %.lr.ph128.us.backedge ]
  %.192121.us = phi ptr [ %1, %.lr.ph128.us.preheader ], [ %.293.us, %.lr.ph128.us.backedge ] ; 25 uses
  %.192121.us205 = ptrtoaddr ptr %.192121.us to i64 ; 5 uses
  %.181125.us206 = ptrtoaddr ptr %.181125.us to i64 ; 5 uses
  %.idx162 = shl nuw nsw i64 %indvars.iv149, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx162 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !8  ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 4 uses
  %.idx163 = shl nuw nsw i64 %indvars.iv.next150, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx163 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !8  ; 2 uses
  %.not98.us = icmp slt i32 %i.bi, %i.bk
  br i1 %.not98.us, label %bb.b, label %Kit_TruthSwapAdjacentVars.exit.us

bb.b:                                             ; preds = %.lr.ph128.us
  %i.bl = add nsw i32 %.184124.us, 1              ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv149 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !105
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next150 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !105
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !105
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !105
  store i32 %i.bk, ptr %i.bh, align 8, !tbaa !8
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !8
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !8
  %i.bu = trunc nuw nsw i64 %indvars.iv149 to i32 ; 4 uses
  %i.bv = lshr i32 %.4126.us, %i.bu
  %i.bw = shl nuw i32 2, %i.bu
  %i.bx = and i32 %.4126.us, %i.bw
  %i.by = trunc i32 %i.bv to i1
  %i.bz = icmp eq i32 %i.bx, 0
  %.not99.us = xor i1 %i.bz, %i.by
  %i.ca = shl nuw i32 1, %i.bu                    ; 7 uses
  %i.cb = shl i32 3, %i.bu
  %i.cc = select i1 %.not99.us, i32 0, i32 %i.cb
  %.5.us = xor i32 %.4126.us, %i.cc               ; 9 uses
  %i.cd = icmp samesign ult i64 %indvars.iv149, 4
  br i1 %i.cd, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.us = icmp eq i64 %indvars.iv149, 4
  br i1 %.not.i.us, label %.preheader.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %Kit_TruthSwapAdjacentVars.exit.us, label %.preheader87.lr.ph.i.us

.preheader87.lr.ph.i.us:                          ; preds = %bb.d
  %i.ce = trunc i64 %indvars.iv149 to i32
  %i.cf = add i32 %i.ce, -5                       ; 4 uses
  %i.cg = shl nuw i32 1, %i.cf                    ; 10 uses
  %i.ch = shl i32 4, %i.cf                        ; 2 uses
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = shl i32 3, %i.cf
  %i.ck = shl i32 2, %i.cf
  %smax.i.us = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 1)
  %i.cl = sext i32 %i.ck to i64                   ; 4 uses
  %i.cm = sext i32 %i.cg to i64                   ; 3 uses
  %i.cn = sext i32 %i.cj to i64                   ; 6 uses
  %wide.trip.count.i.us = zext nneg i32 %smax.i.us to i64 ; 12 uses
  %i.co = shl nsw i64 %i.cl, 2
  %i.cp = add i64 %i.co, %.192121.us205
  %i.cq = shl nsw i64 %i.cm, 2                    ; 2 uses
  %i.cr = add i64 %i.cq, %.181125.us206
  %i.cs = add i64 %i.cq, %.192121.us205
  %i.ct = shl nsw i64 %i.cl, 2
  %i.cu = add i64 %i.ct, %.181125.us206
  %min.iters.check307 = icmp slt i32 %i.cg, 8
  %i.cv = sub i64 %.181125.us206, %.192121.us205
  %diff.check305 = icmp ugt i64 %i.cv, -32
  %or.cond = select i1 %min.iters.check307, i1 true, i1 %diff.check305
  %n.vec309 = and i64 %wide.trip.count.i.us, 2147483640
  %xtraiter = and i64 %wide.trip.count.i.us, 3    ; 3 uses
  %i.cw = icmp slt i32 %i.cg, 4
  %unroll_iter = and i64 %wide.trip.count.i.us, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod355 = icmp ne i64 %xtraiter, 0
  %min.iters.check293 = icmp slt i32 %i.cg, 8
  %i.cx = sub i64 %i.cu, %i.cs
  %diff.check291 = icmp ugt i64 %i.cx, -32
  %or.cond334 = select i1 %min.iters.check293, i1 true, i1 %diff.check291
  %n.vec295 = and i64 %wide.trip.count.i.us, 2147483640
  %xtraiter356 = and i64 %wide.trip.count.i.us, 3 ; 3 uses
  %i.cy = icmp slt i32 %i.cg, 4
  %unroll_iter360 = and i64 %wide.trip.count.i.us, 2147483644
  %lcmp.mod358.not = icmp eq i64 %xtraiter356, 0
  %lcmp.mod359 = icmp ne i64 %xtraiter356, 0
  %min.iters.check279 = icmp slt i32 %i.cg, 8
  %i.cz = sub i64 %i.cr, %i.cp
  %diff.check277 = icmp ugt i64 %i.cz, -32
  %or.cond335 = select i1 %min.iters.check279, i1 true, i1 %diff.check277
  %n.vec281 = and i64 %wide.trip.count.i.us, 2147483640
  %xtraiter362 = and i64 %wide.trip.count.i.us, 3 ; 3 uses
  %i.da = icmp slt i32 %i.cg, 4
  %unroll_iter366 = and i64 %wide.trip.count.i.us, 2147483644
  %lcmp.mod364.not = icmp eq i64 %xtraiter362, 0
  %lcmp.mod365 = icmp ne i64 %xtraiter362, 0
  %min.iters.check265 = icmp slt i32 %i.cg, 8
  %i.db = sub i64 %.181125.us206, %.192121.us205
  %diff.check263 = icmp ugt i64 %i.db, -32
  %or.cond336 = select i1 %min.iters.check265, i1 true, i1 %diff.check263
  %n.vec267 = and i64 %wide.trip.count.i.us, 2147483640
  %xtraiter368 = and i64 %wide.trip.count.i.us, 3 ; 3 uses
  %i.dc = icmp slt i32 %i.cg, 4
  %unroll_iter372 = and i64 %wide.trip.count.i.us, 2147483644
  %lcmp.mod370.not = icmp eq i64 %xtraiter368, 0
  %lcmp.mod371 = icmp ne i64 %xtraiter368, 0
  br label %.lr.ph.us.preheader.i.us

.lr.ph.us.preheader.i.us:                         ; preds = %._crit_edge.us.i.us, %.preheader87.lr.ph.i.us
  %.098.us.i.us = phi ptr [ %i.fs, %._crit_edge.us.i.us ], [ %.192121.us, %.preheader87.lr.ph.i.us ] ; 15 uses
  %.07797.us.i.us = phi ptr [ %i.fr, %._crit_edge.us.i.us ], [ %.181125.us, %.preheader87.lr.ph.i.us ] ; 15 uses
  %.07896.us.i.us = phi i32 [ %i.ft, %._crit_edge.us.i.us ], [ 0, %.preheader87.lr.ph.i.us ]
  br i1 %or.cond, label %.lr.ph.us.i.us.preheader, label %vector.body310

.lr.ph.us.i.us.preheader:                         ; preds = %.lr.ph.us.preheader.i.us
  br i1 %i.cw, label %.lr.ph.us.i.us.epil.preheader, label %.lr.ph.us.i.us

vector.body310:                                   ; preds = %.lr.ph.us.preheader.i.us, %vector.body310
  %index311 = phi i64 [ %index.next314, %vector.body310 ], [ 0, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i.us, i64 %index311 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load312 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !8
  %wide.load313 = load <4 x i32>, ptr %i.de, align 4, !tbaa !8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i.us, i64 %index311 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %wide.load312, ptr %i.df, align 4, !tbaa !8
  store <4 x i32> %wide.load313, ptr %i.dg, align 4, !tbaa !8
  %index.next314 = add nuw i64 %index311, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next314, %n.vec309
  br i1 %i.dh, label %.lr.ph91.us.preheader.i.us, label %vector.body310, !llvm.loop !359

.lr.ph.us.i.us:                                   ; preds = %.lr.ph.us.i.us.preheader, %.lr.ph.us.i.us
  %indvars.iv.i106.us = phi i64 [ %indvars.iv.next.i107.us.3, %.lr.ph.us.i.us ], [ 0, %.lr.ph.us.i.us.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.us ], [ 0, %.lr.ph.us.i.us.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i.us, i64 %indvars.iv.i106.us
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i.us, i64 %indvars.iv.i106.us
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !8
  %indvars.iv.next.i107.us = or disjoint i64 %indvars.iv.i106.us, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i.us, i64 %indvars.iv.next.i107.us
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !8
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i.us, i64 %indvars.iv.next.i107.us
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !8
  %indvars.iv.next.i107.us.1 = or disjoint i64 %indvars.iv.i106.us, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i.us, i64 %indvars.iv.next.i107.us.1
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i.us, i64 %indvars.iv.next.i107.us.1
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !8
  %indvars.iv.next.i107.us.2 = or disjoint i64 %indvars.iv.i106.us, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i.us, i64 %indvars.iv.next.i107.us.2
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i.us, i64 %indvars.iv.next.i107.us.2
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !8
  %indvars.iv.next.i107.us.3 = add nuw nsw i64 %indvars.iv.i106.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph91.us.preheader.i.us.loopexit.unr-lcssa, label %.lr.ph.us.i.us, !llvm.loop !360

.lr.ph91.us.preheader.i.us.loopexit.unr-lcssa:    ; preds = %.lr.ph.us.i.us
  br i1 %lcmp.mod.not, label %.lr.ph91.us.preheader.i.us, label %.lr.ph.us.i.us.epil.preheader

.lr.ph.us.i.us.epil.preheader:                    ; preds = %.lr.ph91.us.preheader.i.us.loopexit.unr-lcssa, %.lr.ph.us.i.us.preheader
  %indvars.iv.i106.us.epil.init = phi i64 [ 0, %.lr.ph.us.i.us.preheader ], [ %indvars.iv.next.i107.us.3, %.lr.ph91.us.preheader.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod355)
  br label %.lr.ph.us.i.us.epil

.lr.ph.us.i.us.epil:                              ; preds = %.lr.ph.us.i.us.epil, %.lr.ph.us.i.us.epil.preheader
  %indvars.iv.i106.us.epil = phi i64 [ %indvars.iv.next.i107.us.epil, %.lr.ph.us.i.us.epil ], [ %indvars.iv.i106.us.epil.init, %.lr.ph.us.i.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.i.us.epil ], [ 0, %.lr.ph.us.i.us.epil.preheader ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.07797.us.i.us, i64 %indvars.iv.i106.us.epil
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.098.us.i.us, i64 %indvars.iv.i106.us.epil
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !8
  %indvars.iv.next.i107.us.epil = add nuw nsw i64 %indvars.iv.i106.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph91.us.preheader.i.us, label %.lr.ph.us.i.us.epil, !llvm.loop !361

.lr.ph91.us.preheader.i.us:                       ; preds = %vector.body310, %.lr.ph91.us.preheader.i.us.loopexit.unr-lcssa, %.lr.ph.us.i.us.epil
  %invariant.gep.i.us = getelementptr [4 x i8], ptr %.07797.us.i.us, i64 %i.cl ; 6 uses
  %invariant.gep168.i.us = getelementptr [4 x i8], ptr %.098.us.i.us, i64 %i.cm ; 6 uses
  br i1 %or.cond334, label %.lr.ph91.us.i.us.preheader, label %vector.body296

.lr.ph91.us.i.us.preheader:                       ; preds = %.lr.ph91.us.preheader.i.us
  br i1 %i.cy, label %.lr.ph91.us.i.us.epil.preheader, label %.lr.ph91.us.i.us

vector.body296:                                   ; preds = %.lr.ph91.us.preheader.i.us, %vector.body296
  %index297 = phi i64 [ %index.next300, %vector.body296 ], [ 0, %.lr.ph91.us.preheader.i.us ] ; 3 uses
  %i.dx = getelementptr [4 x i8], ptr %invariant.gep.i.us, i64 %index297 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %wide.load298 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !8
  %wide.load299 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !8
  %i.dz = getelementptr [4 x i8], ptr %invariant.gep168.i.us, i64 %index297 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load298, ptr %i.dz, align 4, !tbaa !8
  store <4 x i32> %wide.load299, ptr %i.ea, align 4, !tbaa !8
  %index.next300 = add nuw i64 %index297, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.eb, label %.preheader85.us.i.us, label %vector.body296, !llvm.loop !362

.lr.ph91.us.i.us:                                 ; preds = %.lr.ph91.us.i.us.preheader, %.lr.ph91.us.i.us
  %indvars.iv136.i.us = phi i64 [ %indvars.iv.next137.i.us.3, %.lr.ph91.us.i.us ], [ 0, %.lr.ph91.us.i.us.preheader ] ; 6 uses
  %niter361 = phi i64 [ %niter361.next.3, %.lr.ph91.us.i.us ], [ 0, %.lr.ph91.us.i.us.preheader ]
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv136.i.us
  %i.ec = load i32, ptr %gep.i.us, align 4, !tbaa !8
  %gep169.i.us = getelementptr [4 x i8], ptr %invariant.gep168.i.us, i64 %indvars.iv136.i.us
  store i32 %i.ec, ptr %gep169.i.us, align 4, !tbaa !8
  %indvars.iv.next137.i.us = or disjoint i64 %indvars.iv136.i.us, 1 ; 2 uses
  %gep.i.us.1 = getelementptr [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next137.i.us
  %i.ed = load i32, ptr %gep.i.us.1, align 4, !tbaa !8
  %gep169.i.us.1 = getelementptr [4 x i8], ptr %invariant.gep168.i.us, i64 %indvars.iv.next137.i.us
  store i32 %i.ed, ptr %gep169.i.us.1, align 4, !tbaa !8
  %indvars.iv.next137.i.us.1 = or disjoint i64 %indvars.iv136.i.us, 2 ; 2 uses
  %gep.i.us.2 = getelementptr [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next137.i.us.1
  %i.ee = load i32, ptr %gep.i.us.2, align 4, !tbaa !8
  %gep169.i.us.2 = getelementptr [4 x i8], ptr %invariant.gep168.i.us, i64 %indvars.iv.next137.i.us.1
  store i32 %i.ee, ptr %gep169.i.us.2, align 4, !tbaa !8
  %indvars.iv.next137.i.us.2 = or disjoint i64 %indvars.iv136.i.us, 3 ; 2 uses
  %gep.i.us.3 = getelementptr [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next137.i.us.2
  %i.ef = load i32, ptr %gep.i.us.3, align 4, !tbaa !8
  %gep169.i.us.3 = getelementptr [4 x i8], ptr %invariant.gep168.i.us, i64 %indvars.iv.next137.i.us.2
  store i32 %i.ef, ptr %gep169.i.us.3, align 4, !tbaa !8
  %indvars.iv.next137.i.us.3 = add nuw nsw i64 %indvars.iv136.i.us, 4 ; 2 uses
  %niter361.next.3 = add i64 %niter361, 4         ; 2 uses
  %niter361.ncmp.3 = icmp eq i64 %niter361.next.3, %unroll_iter360
  br i1 %niter361.ncmp.3, label %.preheader85.us.i.us.loopexit.unr-lcssa, label %.lr.ph91.us.i.us, !llvm.loop !363

.preheader85.us.i.us.loopexit.unr-lcssa:          ; preds = %.lr.ph91.us.i.us
  br i1 %lcmp.mod358.not, label %.preheader85.us.i.us, label %.lr.ph91.us.i.us.epil.preheader

.lr.ph91.us.i.us.epil.preheader:                  ; preds = %.preheader85.us.i.us.loopexit.unr-lcssa, %.lr.ph91.us.i.us.preheader
  %indvars.iv136.i.us.epil.init = phi i64 [ 0, %.lr.ph91.us.i.us.preheader ], [ %indvars.iv.next137.i.us.3, %.preheader85.us.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod359)
end_hunk_2
