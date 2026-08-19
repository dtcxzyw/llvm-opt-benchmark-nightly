inline.NumInlined: 110
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Gem_FuncFindPlace:bb.a
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !42
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.1
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !42
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.2
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.2
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !42
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtCopy.exit, label %.lr.ph.i39, !llvm.loop !81

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i39.prol.loopexit, %.lr.ph.i39, %middle.block, %Gem_GroupUnpack.exit.thread
  %i.am = icmp sgt i32 %.0.lcssa.i95, 0
  br i1 %i.am, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %Abc_TtCopy.exit
  %i.an = sext i32 %1 to i64
  %.idx65.i = shl nsw i64 %i.an, 3                ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.idx65.i ; 6 uses
  %wide.trip.count73.i = zext i32 %1 to i64       ; 14 uses
  %.not38 = icmp eq i32 %4, 0
  %i.ap = zext nneg i32 %.0.lcssa.i95 to i64
  %i.aq = add i64 %.idx65.i, %i.a                 ; 2 uses
  %min.iters.check238 = icmp ult i32 %1, 4
  %n.vec240 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n255 = icmp eq i64 %n.vec240, %wide.trip.count73.i
  %min.iters.check184 = icmp ult i32 %1, 4
  %n.vec186 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n201 = icmp eq i64 %n.vec186, %wide.trip.count73.i
  %min.iters.check166 = icmp ult i32 %1, 4
  %n.vec168 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n181 = icmp eq i64 %n.vec168, %wide.trip.count73.i
  %min.iters.check154 = icmp ult i32 %1, 4
  %i.ar = sub i64 %i.a, %i.b
  %diff.check152 = icmp ugt i64 %i.ar, -32
  %or.cond284 = or i1 %min.iters.check154, %diff.check152
  %n.vec156 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n163 = icmp eq i64 %n.vec156, %wide.trip.count73.i
  %xtraiter301 = and i64 %wide.trip.count73.i, 3  ; 2 uses
  %lcmp.mod302.not = icmp eq i64 %xtraiter301, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph110, %Abc_TtCopy.exit92
  %indvars.iv118 = phi i64 [ %i.ap, %.lr.ph110 ], [ %indvars.iv.next119, %Abc_TtCopy.exit92 ] ; 3 uses
  %.0108 = phi i32 [ %i.n, %.lr.ph110 ], [ %.1, %Abc_TtCopy.exit92 ]
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, -1 ; 3 uses
  %.not37 = icmp eq i64 %indvars.iv.next119, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv118
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.av = phi i32 [ %i.au, %bb.f ], [ -1, %bb.e ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next119
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !15 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, %i.av
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.az = sext i32 %i.ax to i64
  %i.ba = sext i32 %i.av to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Abc_TtSwapAdjacent.exit85
  %indvars.iv = phi i64 [ %i.az, %.lr.ph.preheader ], [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit85 ] ; 15 uses
  %i.bb = icmp slt i64 %indvars.iv, 5
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %bb.h
  %i.bc = trunc nsw i64 %indvars.iv to i32
  %i.bd = shl nuw nsw i32 1, %i.bc
  %i.be = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.bi = zext nneg i32 %i.bd to i64              ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !42 ; 2 uses
  br i1 %min.iters.check238, label %scalar.ph237.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph64.i
  %broadcast.splatinsert241 = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat242 = shufflevector <2 x i64> %broadcast.splatinsert241, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert243 = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %broadcast.splat244 = shufflevector <2 x i64> %broadcast.splatinsert243, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert245 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat246 = shufflevector <2 x i64> %broadcast.splatinsert245, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert247 = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat248 = shufflevector <2 x i64> %broadcast.splatinsert247, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph239
  %index250 = phi i64 [ 0, %vector.ph239 ], [ %index.next253, %vector.body249 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index250 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %wide.load251 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !42 ; 3 uses
  %wide.load252 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !42 ; 3 uses
  %i.bn = and <2 x i64> %wide.load251, %broadcast.splat242
  %i.bo = and <2 x i64> %wide.load252, %broadcast.splat242
  %i.bp = and <2 x i64> %wide.load251, %broadcast.splat244
  %i.bq = and <2 x i64> %wide.load252, %broadcast.splat244
  %i.br = shl <2 x i64> %i.bp, %broadcast.splat246
  %i.bs = shl <2 x i64> %i.bq, %broadcast.splat246
  %i.bt = or <2 x i64> %i.br, %i.bn
  %i.bu = or <2 x i64> %i.bs, %i.bo
  %i.bv = and <2 x i64> %wide.load251, %broadcast.splat248
  %i.bw = and <2 x i64> %wide.load252, %broadcast.splat248
  %i.bx = lshr <2 x i64> %i.bv, %broadcast.splat246
  %i.by = lshr <2 x i64> %i.bw, %broadcast.splat246
  %i.bz = or <2 x i64> %i.bt, %i.bx
  %i.ca = or <2 x i64> %i.bu, %i.by
  store <2 x i64> %i.bz, ptr %i.bl, align 8, !tbaa !42
  store <2 x i64> %i.ca, ptr %i.bm, align 8, !tbaa !42
  %index.next253 = add nuw i64 %index250, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next253, %n.vec240
  br i1 %i.cb, label %middle.block254, label %vector.body249, !llvm.loop !82

middle.block254:                                  ; preds = %vector.body249
  br i1 %cmp.n255, label %Abc_TtSwapAdjacent.exit, label %scalar.ph237.preheader

scalar.ph237.preheader:                           ; preds = %.lr.ph64.i, %middle.block254
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec240, %middle.block254 ]
  br label %scalar.ph237

scalar.ph237:                                     ; preds = %scalar.ph237.preheader, %scalar.ph237
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph237 ], [ %indvars.iv70.i.ph, %scalar.ph237.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !42 ; 3 uses
  %i.ce = and i64 %i.cd, %i.bf
  %i.cf = and i64 %i.cd, %i.bh
  %i.cg = shl i64 %i.cf, %i.bi
  %i.ch = or i64 %i.cg, %i.ce
  %i.ci = and i64 %i.cd, %i.bk
  %i.cj = lshr i64 %i.ci, %i.bi
  %i.ck = or i64 %i.ch, %i.cj
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !42
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph237, !llvm.loop !83

bb.i:                                             ; preds = %.lr.ph
  %i.cl = icmp eq i64 %indvars.iv, 5
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.j, %.lr.ph.i43
  %.05462.i = phi ptr [ %i.cp, %.lr.ph.i43 ], [ %0, %bb.j ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.cn = load <2 x i32>, ptr %i.cm, align 4, !tbaa !15
  %i.co = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.co, ptr %i.cm, align 4, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.cq = icmp ult ptr %i.cp, %i.ao
  br i1 %i.cq, label %.lr.ph.i43, label %Abc_TtSwapAdjacent.exit, !llvm.loop !84

bb.k:                                             ; preds = %bb.i
  %i.cr = icmp samesign ult i64 %indvars.iv, 7
  %i.cs = trunc i64 %indvars.iv to i32
  %i.ct = add i32 %i.cs, -6
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = select i1 %i.cr, i32 1, i32 %i.cu       ; 7 uses
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.k
  %i.cw = icmp sgt i32 %i.cv, 0
  %i.cx = shl i32 %i.cv, 2                        ; 2 uses
  %i.cy = sext i32 %i.cx to i64                   ; 3 uses
  br i1 %i.cw, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.cz = shl nuw nsw i32 %i.cv, 1
  %i.da = zext nneg i32 %i.cv to i64              ; 6 uses
  %i.db = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.dc = shl nuw nsw i64 %i.da, 3                ; 2 uses
  %scevgep258 = getelementptr i8, ptr %0, i64 %i.dc
  %i.dd = shl nsw i64 %i.cy, 3                    ; 4 uses
  %i.de = add i64 %i.dd, %i.a
  %umax259 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.de)
  %i.df = sub i64 %umax259, %i.a                  ; 2 uses
  %i.dg = icmp ne i64 %i.df, %i.dd
  %umin260 = zext i1 %i.dg to i64                 ; 2 uses
  %i.dh = or disjoint i64 %i.dd, %umin260
  %i.di = sub i64 %i.df, %i.dh
  %umax261 = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.dj = shl nuw nsw i64 %i.da, 4
  %i.dk = shl nuw nsw i64 %i.db, 3                ; 2 uses
  %scevgep262 = getelementptr i8, ptr %0, i64 %i.dk
  %min.iters.check271 = icmp ult i32 %i.cv, 12
  %i.dl = getelementptr i8, ptr %0, i64 %i.dj
  %i.dm = getelementptr i8, ptr %0, i64 %i.dc
  %scevgep264 = getelementptr i8, ptr %i.dm, i64 %i.dk
  %stride.check268 = icmp slt i32 %i.cx, 0
  %n.vec273 = and i64 %i.da, 2147483644
  %xtraiter293 = and i64 %i.da, 1
  %i.dn = icmp eq i32 %i.cv, 1
  %unroll_iter = and i64 %i.da, 2147483646
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  %lcmp.mod295 = trunc i32 %i.cv to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.dz, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.da ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.db ; 4 uses
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %scalar.ph270.preheader.a

scalar.ph270.preheader:                           ; preds = %scalar.ph270.preheader.a, %.preheader.us.i
  br i1 %i.dn, label %scalar.ph270.epil.preheader, label %scalar.ph270

scalar.ph270.preheader.a:                         ; preds = %.preheader.us.i
  %5 = udiv i64 %i.di, %umax261
  %6 = add i64 %5, %umin260
  %7 = shl i64 %6, 3
  %8 = mul i64 %7, %i.cy                          ; 2 uses
  %gep = getelementptr i8, ptr %i.dl, i64 %8
  %gep307 = getelementptr i8, ptr %scevgep264, i64 %8
  %bound0265 = icmp ult ptr %scevgep258, %gep307
  %bound1266 = icmp ult ptr %scevgep262, %gep
  %found.conflict267 = and i1 %bound0265, %bound1266
  %9 = or i1 %found.conflict267, %stride.check268
  br i1 %9, label %scalar.ph270.preheader, label %vector.body274

vector.body274:                                   ; preds = %scalar.ph270.preheader.a, %vector.body274
  %index275 = phi i64 [ %index.next280, %vector.body274 ], [ 0, %scalar.ph270.preheader.a ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index275 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load276 = load <2 x i64>, ptr %i.do, align 8, !tbaa !42, !alias.scope !85, !noalias !88
  %wide.load277 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !42, !alias.scope !85, !noalias !88
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index275 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %wide.load278 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !42, !alias.scope !88
  %wide.load279 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !42, !alias.scope !88
  store <2 x i64> %wide.load278, ptr %i.do, align 8, !tbaa !42, !alias.scope !85, !noalias !88
  store <2 x i64> %wide.load279, ptr %i.dp, align 8, !tbaa !42, !alias.scope !85, !noalias !88
  store <2 x i64> %wide.load276, ptr %i.dq, align 8, !tbaa !42, !alias.scope !88
  store <2 x i64> %wide.load277, ptr %i.dr, align 8, !tbaa !42, !alias.scope !88
  %index.next280 = add nuw i64 %index275, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.ds, label %._crit_edge.us.i, label %vector.body274, !llvm.loop !90

scalar.ph270:                                     ; preds = %scalar.ph270.preheader, %scalar.ph270
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i41.1, %scalar.ph270 ], [ 0, %scalar.ph270.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph270 ], [ 0, %scalar.ph270.preheader ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i40 ; 2 uses
  %i.dt = load i64, ptr %gep.i, align 8, !tbaa !42
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i40 ; 2 uses
  %i.du = load i64, ptr %gep81.i, align 8, !tbaa !42
  store i64 %i.du, ptr %gep.i, align 8, !tbaa !42
  store i64 %i.dt, ptr %gep81.i, align 8, !tbaa !42
  %indvars.iv.next.i41 = or disjoint i64 %indvars.iv.i40, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i41 ; 2 uses
  %i.dv = load i64, ptr %gep.i.1, align 8, !tbaa !42
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i41 ; 2 uses
  %i.dw = load i64, ptr %gep81.i.1, align 8, !tbaa !42
  store i64 %i.dw, ptr %gep.i.1, align 8, !tbaa !42
  store i64 %i.dv, ptr %gep81.i.1, align 8, !tbaa !42
  %indvars.iv.next.i41.1 = add nuw nsw i64 %indvars.iv.i40, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph270, !llvm.loop !91

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph270
  br i1 %lcmp.mod294.not, label %._crit_edge.us.i, label %scalar.ph270.epil.preheader

scalar.ph270.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph270.preheader
  %indvars.iv.i40.epil.init = phi i64 [ 0, %scalar.ph270.preheader ], [ %indvars.iv.next.i41.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod295)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i40.epil.init ; 2 uses
  %i.dx = load i64, ptr %gep.i.epil, align 8, !tbaa !42
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i40.epil.init ; 2 uses
  %i.dy = load i64, ptr %gep81.i.epil, align 8, !tbaa !42
  store i64 %i.dy, ptr %gep.i.epil, align 8, !tbaa !42
  store i64 %i.dx, ptr %gep81.i.epil, align 8, !tbaa !42
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body274, %scalar.ph270.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.cy ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.ao
  br i1 %i.ea, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !92

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i43, %scalar.ph237, %middle.block254, %bb.h, %bb.j, %bb.k, %.preheader.lr.ph.i
  br i1 %.not38, label %bb.l, label %Abc_TtSwapAdjacent.exit85

bb.l:                                             ; preds = %Abc_TtSwapAdjacent.exit
  %i.eb = add nsw i64 %indvars.iv, 1              ; 3 uses
  %i.ec = icmp slt i64 %indvars.iv, 4
  br i1 %i.ec, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.lr.ph64.i59

.lr.ph64.i59:                                     ; preds = %bb.m
  %i.ed = trunc nsw i64 %i.eb to i32
  %i.ee = shl nuw nsw i32 1, %i.ed
  %i.ef = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.eb ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !42 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !42 ; 2 uses
  %i.ej = zext nneg i32 %i.ee to i64              ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !42 ; 2 uses
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph64.i59
  %broadcast.splatinsert187 = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat188 = shufflevector <2 x i64> %broadcast.splatinsert187, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <2 x i64> poison, i64 %i.ei, i64 0
  %broadcast.splat190 = shufflevector <2 x i64> %broadcast.splatinsert189, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x i64> poison, i64 %i.ej, i64 0
  %broadcast.splat192 = shufflevector <2 x i64> %broadcast.splatinsert191, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert193 = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %broadcast.splat194 = shufflevector <2 x i64> %broadcast.splatinsert193, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph185
  %index196 = phi i64 [ 0, %vector.ph185 ], [ %index.next199, %vector.body195 ] ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index196 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %wide.load197 = load <2 x i64>, ptr %i.em, align 8, !tbaa !42 ; 3 uses
  %wide.load198 = load <2 x i64>, ptr %i.en, align 8, !tbaa !42 ; 3 uses
  %i.eo = and <2 x i64> %wide.load197, %broadcast.splat188
  %i.ep = and <2 x i64> %wide.load198, %broadcast.splat188
  %i.eq = and <2 x i64> %wide.load197, %broadcast.splat190
  %i.er = and <2 x i64> %wide.load198, %broadcast.splat190
  %i.es = shl <2 x i64> %i.eq, %broadcast.splat192
  %i.et = shl <2 x i64> %i.er, %broadcast.splat192
  %i.eu = or <2 x i64> %i.es, %i.eo
  %i.ev = or <2 x i64> %i.et, %i.ep
  %i.ew = and <2 x i64> %wide.load197, %broadcast.splat194
  %i.ex = and <2 x i64> %wide.load198, %broadcast.splat194
  %i.ey = lshr <2 x i64> %i.ew, %broadcast.splat192
  %i.ez = lshr <2 x i64> %i.ex, %broadcast.splat192
  %i.fa = or <2 x i64> %i.eu, %i.ey
  %i.fb = or <2 x i64> %i.ev, %i.ez
  store <2 x i64> %i.fa, ptr %i.em, align 8, !tbaa !42
  store <2 x i64> %i.fb, ptr %i.en, align 8, !tbaa !42
  %index.next199 = add nuw i64 %index196, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next199, %n.vec186
  br i1 %i.fc, label %middle.block200, label %vector.body195, !llvm.loop !93

middle.block200:                                  ; preds = %vector.body195
  br i1 %cmp.n201, label %Abc_TtSwapAdjacent.exit64.thread131, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %.lr.ph64.i59, %middle.block200
  %indvars.iv70.i61.ph = phi i64 [ 0, %.lr.ph64.i59 ], [ %n.vec186, %middle.block200 ]
  br label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv70.i61 = phi i64 [ %indvars.iv.next71.i62, %scalar.ph183 ], [ %indvars.iv70.i61.ph, %scalar.ph183.preheader ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i61 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !42 ; 3 uses
  %i.ff = and i64 %i.fe, %i.eg
  %i.fg = and i64 %i.fe, %i.ei
  %i.fh = shl i64 %i.fg, %i.ej
  %i.fi = or i64 %i.fh, %i.ff
  %i.fj = and i64 %i.fe, %i.el
  %i.fk = lshr i64 %i.fj, %i.ej
  %i.fl = or i64 %i.fi, %i.fk
  store i64 %i.fl, ptr %i.fd, align 8, !tbaa !42
  %indvars.iv.next71.i62 = add nuw nsw i64 %indvars.iv70.i61, 1 ; 2 uses
  %exitcond74.not.i63 = icmp eq i64 %indvars.iv.next71.i62, %wide.trip.count73.i
  br i1 %exitcond74.not.i63, label %Abc_TtSwapAdjacent.exit64.thread131, label %scalar.ph183, !llvm.loop !94

bb.n:                                             ; preds = %bb.l
  %i.fm = icmp eq i64 %i.eb, 5
  br i1 %i.fm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.o, %.lr.ph.i57
  %.05462.i58 = phi ptr [ %i.fq, %.lr.ph.i57 ], [ %0, %bb.o ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05462.i58, i64 4 ; 2 uses
  %i.fo = load <2 x i32>, ptr %i.fn, align 4, !tbaa !15
  %i.fp = shufflevector <2 x i32> %i.fo, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.fp, ptr %i.fn, align 4, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %.05462.i58, i64 16 ; 2 uses
  %i.fr = icmp ult ptr %i.fq, %i.ao
  br i1 %i.fr, label %.lr.ph.i57, label %.preheader.us.preheader.i67, !llvm.loop !84

bb.p:                                             ; preds = %bb.n
  %i.fs = icmp samesign ult i64 %indvars.iv, 6
  %i.ft = trunc i64 %indvars.iv to i32
  %i.fu = add i32 %i.ft, -5
  %i.fv = shl nuw i32 1, %i.fu
  %i.fw = select i1 %i.fs, i32 1, i32 %i.fv       ; 7 uses
  br i1 %i.o, label %.thread136, label %.preheader.lr.ph.i45

.preheader.lr.ph.i45:                             ; preds = %bb.p
  %i.fx = icmp sgt i32 %i.fw, 0
  %i.fy = shl i32 %i.fw, 2                        ; 2 uses
  %i.fz = sext i32 %i.fy to i64                   ; 3 uses
  br i1 %i.fx, label %.preheader.us.preheader.i46, label %.thread136

.preheader.us.preheader.i46:                      ; preds = %.preheader.lr.ph.i45
  %i.ga = shl nuw nsw i32 %i.fw, 1
  %i.gb = zext nneg i32 %i.fw to i64              ; 6 uses
  %i.gc = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gd = shl nuw nsw i64 %i.gb, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.gd
  %i.ge = shl nsw i64 %i.fz, 3                    ; 4 uses
  %i.gf = add i64 %i.ge, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.gf)
  %i.gg = sub i64 %umax, %i.a                     ; 2 uses
  %i.gh = icmp ne i64 %i.gg, %i.ge
  %umin = zext i1 %i.gh to i64                    ; 2 uses
  %i.gi = or disjoint i64 %i.ge, %umin
  %i.gj = sub i64 %i.gg, %i.gi
  %umax218 = tail call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gk = shl nuw nsw i64 %i.gb, 4
  %i.gl = shl nuw nsw i64 %i.gc, 3                ; 2 uses
  %scevgep219 = getelementptr i8, ptr %0, i64 %i.gl
  %min.iters.check224 = icmp ult i32 %i.fw, 12
  %i.gm = getelementptr i8, ptr %0, i64 %i.gk
  %i.gn = getelementptr i8, ptr %0, i64 %i.gd
  %scevgep221 = getelementptr i8, ptr %i.gn, i64 %i.gl
  %stride.check = icmp slt i32 %i.fy, 0
  %n.vec226 = and i64 %i.gb, 2147483644
  %xtraiter296 = and i64 %i.gb, 1
  %i.go = icmp eq i32 %i.fw, 1
  %unroll_iter299 = and i64 %i.gb, 2147483646
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  %lcmp.mod298 = trunc i32 %i.fw to i1
  br label %.preheader.us.i47

.preheader.us.i47:                                ; preds = %._crit_edge.us.i56, %.preheader.us.preheader.i46
  %.061.us.i48 = phi ptr [ %i.ha, %._crit_edge.us.i56 ], [ %0, %.preheader.us.preheader.i46 ] ; 3 uses
  %invariant.gep.i49 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i48, i64 %i.gb ; 4 uses
  %invariant.gep80.i50 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i48, i64 %i.gc ; 4 uses
  br i1 %min.iters.check224, label %scalar.ph223.preheader, label %scalar.ph223.preheader.a

scalar.ph223.preheader:                           ; preds = %scalar.ph223.preheader.a, %.preheader.us.i47
  br i1 %i.go, label %scalar.ph223.epil.preheader, label %scalar.ph223

scalar.ph223.preheader.a:                         ; preds = %.preheader.us.i47
  %10 = udiv i64 %i.gj, %umax218
  %11 = add i64 %10, %umin
  %12 = shl i64 %11, 3
  %13 = mul i64 %12, %i.fz                        ; 2 uses
  %gep309 = getelementptr i8, ptr %i.gm, i64 %13
  %gep313 = getelementptr i8, ptr %scevgep221, i64 %13
  %bound0 = icmp ult ptr %scevgep, %gep313
  %bound1 = icmp ult ptr %scevgep219, %gep309
  %found.conflict = and i1 %bound0, %bound1
  %14 = or i1 %found.conflict, %stride.check
  br i1 %14, label %scalar.ph223.preheader, label %vector.body227

vector.body227:                                   ; preds = %scalar.ph223.preheader.a, %vector.body227
  %index228 = phi i64 [ %index.next233, %vector.body227 ], [ 0, %scalar.ph223.preheader.a ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i49, i64 %index228 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %wide.load229 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !42, !alias.scope !95, !noalias !98
  %wide.load230 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !42, !alias.scope !95, !noalias !98
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i50, i64 %index228 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %wide.load231 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !42, !alias.scope !98
  %wide.load232 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !42, !alias.scope !98
  store <2 x i64> %wide.load231, ptr %i.gp, align 8, !tbaa !42, !alias.scope !95, !noalias !98
  store <2 x i64> %wide.load232, ptr %i.gq, align 8, !tbaa !42, !alias.scope !95, !noalias !98
  store <2 x i64> %wide.load229, ptr %i.gr, align 8, !tbaa !42, !alias.scope !98
  store <2 x i64> %wide.load230, ptr %i.gs, align 8, !tbaa !42, !alias.scope !98
  %index.next233 = add nuw i64 %index228, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next233, %n.vec226
  br i1 %i.gt, label %._crit_edge.us.i56, label %vector.body227, !llvm.loop !100

scalar.ph223:                                     ; preds = %scalar.ph223.preheader, %scalar.ph223
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i54.1, %scalar.ph223 ], [ 0, %scalar.ph223.preheader ] ; 4 uses
  %niter300 = phi i64 [ %niter300.next.1, %scalar.ph223 ], [ 0, %scalar.ph223.preheader ]
  %gep.i52 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i49, i64 %indvars.iv.i51 ; 2 uses
  %i.gu = load i64, ptr %gep.i52, align 8, !tbaa !42
  %gep81.i53 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i50, i64 %indvars.iv.i51 ; 2 uses
  %i.gv = load i64, ptr %gep81.i53, align 8, !tbaa !42
  store i64 %i.gv, ptr %gep.i52, align 8, !tbaa !42
  store i64 %i.gu, ptr %gep81.i53, align 8, !tbaa !42
  %indvars.iv.next.i54 = or disjoint i64 %indvars.iv.i51, 1 ; 2 uses
  %gep.i52.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i49, i64 %indvars.iv.next.i54 ; 2 uses
  %i.gw = load i64, ptr %gep.i52.1, align 8, !tbaa !42
  %gep81.i53.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i50, i64 %indvars.iv.next.i54 ; 2 uses
  %i.gx = load i64, ptr %gep81.i53.1, align 8, !tbaa !42
  store i64 %i.gx, ptr %gep.i52.1, align 8, !tbaa !42
  store i64 %i.gw, ptr %gep81.i53.1, align 8, !tbaa !42
  %indvars.iv.next.i54.1 = add nuw nsw i64 %indvars.iv.i51, 2 ; 2 uses
  %niter300.next.1 = add i64 %niter300, 2         ; 2 uses
  %niter300.ncmp.1 = icmp eq i64 %niter300.next.1, %unroll_iter299
  br i1 %niter300.ncmp.1, label %._crit_edge.us.i56.loopexit.unr-lcssa, label %scalar.ph223, !llvm.loop !101

._crit_edge.us.i56.loopexit.unr-lcssa:            ; preds = %scalar.ph223
  br i1 %lcmp.mod297.not, label %._crit_edge.us.i56, label %scalar.ph223.epil.preheader

scalar.ph223.epil.preheader:                      ; preds = %._crit_edge.us.i56.loopexit.unr-lcssa, %scalar.ph223.preheader
  %indvars.iv.i51.epil.init = phi i64 [ 0, %scalar.ph223.preheader ], [ %indvars.iv.next.i54.1, %._crit_edge.us.i56.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod298)
  %gep.i52.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i49, i64 %indvars.iv.i51.epil.init ; 2 uses
  %i.gy = load i64, ptr %gep.i52.epil, align 8, !tbaa !42
  %gep81.i53.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i50, i64 %indvars.iv.i51.epil.init ; 2 uses
  %i.gz = load i64, ptr %gep81.i53.epil, align 8, !tbaa !42
  store i64 %i.gz, ptr %gep.i52.epil, align 8, !tbaa !42
  store i64 %i.gy, ptr %gep81.i53.epil, align 8, !tbaa !42
  br label %._crit_edge.us.i56

._crit_edge.us.i56:                               ; preds = %vector.body227, %scalar.ph223.epil.preheader, %._crit_edge.us.i56.loopexit.unr-lcssa
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i48, i64 %i.fz ; 2 uses
  %i.hb = icmp ult ptr %i.ha, %i.ao
  br i1 %i.hb, label %.preheader.us.i47, label %Abc_TtSwapAdjacent.exit64, !llvm.loop !92

.thread136:                                       ; preds = %.preheader.lr.ph.i45, %bb.p
  %i.hc = trunc i64 %indvars.iv to i32
  %i.hd = add i32 %i.hc, 2
  br label %.thread

Abc_TtSwapAdjacent.exit64.thread131:              ; preds = %scalar.ph183, %middle.block200
  %.not145 = icmp eq i64 %indvars.iv, 3
  br i1 %.not145, label %.lr.ph.i78.preheader, label %.lr.ph64.i80

.lr.ph64.i80:                                     ; preds = %Abc_TtSwapAdjacent.exit64.thread131
  %i.he = add nsw i64 %indvars.iv, 2              ; 2 uses
  %i.hf = trunc nsw i64 %i.he to i32
  %i.hg = shl nuw nsw i32 1, %i.hf
  %i.hh = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.he ; 3 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !42 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !42 ; 2 uses
  %i.hl = zext nneg i32 %i.hg to i64              ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !42 ; 2 uses
  br i1 %min.iters.check166, label %scalar.ph165.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %.lr.ph64.i80
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.hi, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert169 = insertelement <2 x i64> poison, i64 %i.hk, i64 0
  %broadcast.splat170 = shufflevector <2 x i64> %broadcast.splatinsert169, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert171 = insertelement <2 x i64> poison, i64 %i.hl, i64 0
  %broadcast.splat172 = shufflevector <2 x i64> %broadcast.splatinsert171, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert173 = insertelement <2 x i64> poison, i64 %i.hn, i64 0
  %broadcast.splat174 = shufflevector <2 x i64> %broadcast.splatinsert173, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph167
  %index176 = phi i64 [ 0, %vector.ph167 ], [ %index.next179, %vector.body175 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index176 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %wide.load177 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !42 ; 3 uses
  %wide.load178 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !42 ; 3 uses
  %i.hq = and <2 x i64> %wide.load177, %broadcast.splat
  %i.hr = and <2 x i64> %wide.load178, %broadcast.splat
  %i.hs = and <2 x i64> %wide.load177, %broadcast.splat170
  %i.ht = and <2 x i64> %wide.load178, %broadcast.splat170
  %i.hu = shl <2 x i64> %i.hs, %broadcast.splat172
  %i.hv = shl <2 x i64> %i.ht, %broadcast.splat172
  %i.hw = or <2 x i64> %i.hu, %i.hq
  %i.hx = or <2 x i64> %i.hv, %i.hr
  %i.hy = and <2 x i64> %wide.load177, %broadcast.splat174
  %i.hz = and <2 x i64> %wide.load178, %broadcast.splat174
  %i.ia = lshr <2 x i64> %i.hy, %broadcast.splat172
  %i.ib = lshr <2 x i64> %i.hz, %broadcast.splat172
  %i.ic = or <2 x i64> %i.hw, %i.ia
  %i.id = or <2 x i64> %i.hx, %i.ib
  store <2 x i64> %i.ic, ptr %i.ho, align 8, !tbaa !42
  store <2 x i64> %i.id, ptr %i.hp, align 8, !tbaa !42
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next179, %n.vec168
  br i1 %i.ie, label %middle.block180, label %vector.body175, !llvm.loop !102

middle.block180:                                  ; preds = %vector.body175
  br i1 %cmp.n181, label %Abc_TtSwapAdjacent.exit85, label %scalar.ph165.preheader

scalar.ph165.preheader:                           ; preds = %.lr.ph64.i80, %middle.block180
  %indvars.iv70.i82.ph = phi i64 [ 0, %.lr.ph64.i80 ], [ %n.vec168, %middle.block180 ]
  br label %scalar.ph165

scalar.ph165:                                     ; preds = %scalar.ph165.preheader, %scalar.ph165
  %indvars.iv70.i82 = phi i64 [ %indvars.iv.next71.i83, %scalar.ph165 ], [ %indvars.iv70.i82.ph, %scalar.ph165.preheader ] ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i82 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !42 ; 3 uses
  %i.ih = and i64 %i.ig, %i.hi
  %i.ii = and i64 %i.ig, %i.hk
  %i.ij = shl i64 %i.ii, %i.hl
  %i.ik = or i64 %i.ij, %i.ih
  %i.il = and i64 %i.ig, %i.hn
  %i.im = lshr i64 %i.il, %i.hl
  %i.in = or i64 %i.ik, %i.im
  store i64 %i.in, ptr %i.if, align 8, !tbaa !42
  %indvars.iv.next71.i83 = add nuw nsw i64 %indvars.iv70.i82, 1 ; 2 uses
  %exitcond74.not.i84 = icmp eq i64 %indvars.iv.next71.i83, %wide.trip.count73.i
  br i1 %exitcond74.not.i84, label %Abc_TtSwapAdjacent.exit85, label %scalar.ph165, !llvm.loop !103

Abc_TtSwapAdjacent.exit64:                        ; preds = %._crit_edge.us.i56
  %i.io = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.ip = icmp eq i64 %i.io, 5
  %i.iq = trunc nsw i64 %i.io to i32
  br i1 %i.ip, label %.lr.ph.i78.preheader, label %.thread

.lr.ph.i78.preheader:                             ; preds = %Abc_TtSwapAdjacent.exit64, %Abc_TtSwapAdjacent.exit64.thread131
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader, %.lr.ph.i78
  %.05462.i79 = phi ptr [ %i.iu, %.lr.ph.i78 ], [ %0, %.lr.ph.i78.preheader ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.05462.i79, i64 4 ; 2 uses
  %i.is = load <2 x i32>, ptr %i.ir, align 4, !tbaa !15
  %i.it = shufflevector <2 x i32> %i.is, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.it, ptr %i.ir, align 4, !tbaa !15
  %i.iu = getelementptr inbounds nuw i8, ptr %.05462.i79, i64 16 ; 2 uses
  %i.iv = icmp ult ptr %i.iu, %i.ao
  br i1 %i.iv, label %.lr.ph.i78, label %Abc_TtSwapAdjacent.exit85, !llvm.loop !84

.thread:                                          ; preds = %.thread136, %Abc_TtSwapAdjacent.exit64
  %i.iw = phi i32 [ %i.iq, %Abc_TtSwapAdjacent.exit64 ], [ %i.hd, %.thread136 ]
  %.fr = freeze i32 %i.iw                         ; 2 uses
  %i.ix = icmp ult i32 %.fr, 7
  %i.iy = add nsw i32 %.fr, -6                    ; 3 uses
  %i.iz = shl nuw i32 1, %i.iy
  br i1 %i.ix, label %.thread138, label %bb.q

bb.q:                                             ; preds = %.thread
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.preheader.lr.ph.i66

.thread138:                                       ; preds = %.thread
  br i1 %i.o, label %Abc_TtSwapAdjacent.exit85, label %.preheader.us.preheader.i67

.preheader.lr.ph.i66:                             ; preds = %bb.q
  %.not144 = icmp eq i32 %i.iy, 31
  %i.ja = shl i32 4, %i.iy
  %i.jb = sext i32 %i.ja to i64
  br i1 %.not144, label %Abc_TtSwapAdjacent.exit85, label %.preheader.us.preheader.i67

.preheader.us.preheader.i67:                      ; preds = %.lr.ph.i57, %.thread138, %.preheader.lr.ph.i66
  %i.jc = phi i64 [ %i.jb, %.preheader.lr.ph.i66 ], [ 4, %.thread138 ], [ 4, %.lr.ph.i57 ]
  %i.jd = phi i32 [ %i.iz, %.preheader.lr.ph.i66 ], [ 1, %.thread138 ], [ 1, %.lr.ph.i57 ] ; 3 uses
  %i.je = shl nuw nsw i32 %i.jd, 1
  %i.jf = zext nneg i32 %i.jd to i64              ; 3 uses
  %i.jg = zext nneg i32 %i.je to i64
  %min.iters.check204 = icmp ult i32 %i.jd, 4
  %n.vec206 = and i64 %i.jf, 2147483644
  br label %.preheader.us.i68

.preheader.us.i68:                                ; preds = %._crit_edge.us.i77, %.preheader.us.preheader.i67
  %.061.us.i69 = phi ptr [ %i.jo, %._crit_edge.us.i77 ], [ %0, %.preheader.us.preheader.i67 ] ; 3 uses
  %invariant.gep.i70 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i69, i64 %i.jf ; 2 uses
  %invariant.gep80.i71 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i69, i64 %i.jg ; 2 uses
  br i1 %min.iters.check204, label %scalar.ph203, label %vector.body207

vector.body207:                                   ; preds = %.preheader.us.i68, %vector.body207
  %index208 = phi i64 [ %index.next213, %vector.body207 ], [ 0, %.preheader.us.i68 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i70, i64 %index208 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 2 uses
  %wide.load209 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !42
  %wide.load210 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !42
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i71, i64 %index208 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %wide.load211 = load <2 x i64>, ptr %i.jj, align 8, !tbaa !42
  %wide.load212 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !42
  store <2 x i64> %wide.load211, ptr %i.jh, align 8, !tbaa !42
  store <2 x i64> %wide.load212, ptr %i.ji, align 8, !tbaa !42
  store <2 x i64> %wide.load209, ptr %i.jj, align 8, !tbaa !42
  store <2 x i64> %wide.load210, ptr %i.jk, align 8, !tbaa !42
  %index.next213 = add nuw i64 %index208, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.jl, label %._crit_edge.us.i77, label %vector.body207, !llvm.loop !104

scalar.ph203:                                     ; preds = %.preheader.us.i68, %scalar.ph203
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i75, %scalar.ph203 ], [ 0, %.preheader.us.i68 ] ; 3 uses
  %gep.i73 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i70, i64 %indvars.iv.i72 ; 2 uses
  %i.jm = load i64, ptr %gep.i73, align 8, !tbaa !42
  %gep81.i74 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i71, i64 %indvars.iv.i72 ; 2 uses
  %i.jn = load i64, ptr %gep81.i74, align 8, !tbaa !42
  store i64 %i.jn, ptr %gep.i73, align 8, !tbaa !42
  store i64 %i.jm, ptr %gep81.i74, align 8, !tbaa !42
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, %i.jf
  br i1 %exitcond.not.i76, label %._crit_edge.us.i77, label %scalar.ph203, !llvm.loop !105

._crit_edge.us.i77:                               ; preds = %vector.body207, %scalar.ph203
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i69, i64 %i.jc ; 2 uses
  %i.jp = icmp ult ptr %i.jo, %i.ao
  br i1 %i.jp, label %.preheader.us.i68, label %Abc_TtSwapAdjacent.exit85, !llvm.loop !92

Abc_TtSwapAdjacent.exit85:                        ; preds = %._crit_edge.us.i77, %scalar.ph165, %.lr.ph.i78, %middle.block180, %bb.m, %.thread138, %bb.o, %.preheader.lr.ph.i66, %bb.q, %Abc_TtSwapAdjacent.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.jq = icmp sgt i64 %indvars.iv.next, %i.ba
  br i1 %i.jq, label %.lr.ph, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %Abc_TtSwapAdjacent.exit85, %bb.g
  %i.jr = tail call i32 @memcmp(ptr noundef %3, ptr noundef %0, i64 noundef %.idx65.i) #27
  %i.js = icmp sgt i32 %i.jr, -1                  ; 2 uses
  %brmerge = or i1 %i.o, %i.js
  %.0.mux = select i1 %i.js, i32 %.0108, i32 %i.av
  br i1 %brmerge, label %Abc_TtCopy.exit92, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %._crit_edge
  br i1 %or.cond284, label %.lr.ph.i88.preheader292, label %vector.body157
end_hunk_0
