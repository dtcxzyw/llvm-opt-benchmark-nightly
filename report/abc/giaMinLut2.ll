inline.NumInlined: 405
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManContructTreeTest:bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.d) ; 0 uses
  tail call void @Gia_ManTreeFree(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Gia_ManSwapTree(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = add nsw i32 %1, 1                        ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = sext i32 %1 to i64                       ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.f ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.m = icmp slt i32 %i.l, 7                     ; 2 uses
  %i.n = add nsw i32 %i.l, -6                     ; 2 uses
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o          ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 8 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %i.t = select i1 %i.m, i32 0, i32 %i.n          ; 3 uses
  %i.u = icmp slt i32 %1, 5
  %i.v = sext i32 %i.p to i64
  %.idx65.i = shl nsw i64 %i.v, 3                 ; 3 uses
  %i.w = icmp samesign ult i32 %1, 7
  %i.x = add nsw i32 %1, -6
  %i.y = shl nuw i32 1, %i.x
  %i.z = select i1 %i.w, i32 1, i32 %i.y          ; 7 uses
  %i.aa = icmp slt i32 %i.p, 1
  %i.ab = icmp slt i32 %i.z, 1
  %i.ac = shl i32 %i.z, 2                         ; 2 uses
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %i.ae = shl i32 %i.z, 1
  %i.af = zext i32 %i.z to i64                    ; 6 uses
  %i.ag = zext i32 %i.ae to i64                   ; 2 uses
  %i.ah = icmp sgt i32 %i.p, 0                    ; 2 uses
  %i.ai = shl nuw nsw i32 1, %1
  %i.aj = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.f ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = zext nneg i32 %i.ai to i64              ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br i1 %i.u, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ah, label %.lr.ph.split.us.split, label %.preheader

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !18 ; 4 uses
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !18 ; 4 uses
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !18 ; 4 uses
  %min.iters.check98 = icmp ult i32 %i.p, 4
  %i.aq = and i32 %i.p, 2147483644
  %n.vec100 = zext nneg i32 %i.aq to i64
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert101 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat102 = shufflevector <2 x i64> %broadcast.splatinsert101, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert103 = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat104 = shufflevector <2 x i64> %broadcast.splatinsert103, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert105 = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat106 = shufflevector <2 x i64> %broadcast.splatinsert105, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %exitcond74.not.i.us = icmp eq i32 %i.p, 1
  %exitcond74.not.i.us.1 = icmp eq i32 %i.p, 2
  br label %.lr.ph64.i.us

.lr.ph64.i.us:                                    ; preds = %Abc_TtSwapAdjacent.exit.loopexit.us, %.lr.ph.split.us.split
  %.05864.us = phi i32 [ 0, %.lr.ph.split.us.split ], [ %i.cl, %Abc_TtSwapAdjacent.exit.loopexit.us ] ; 2 uses
  %i.ar = shl i32 %.05864.us, %i.t
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.as ; 5 uses
  br i1 %min.iters.check98, label %scalar.ph97, label %vector.body107

vector.body107:                                   ; preds = %.lr.ph64.i.us, %vector.body107
  %index108 = phi i64 [ %index.next111, %vector.body107 ], [ 0, %.lr.ph64.i.us ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index108 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load109 = load <2 x i64>, ptr %i.au, align 8, !tbaa !18 ; 3 uses
  %wide.load110 = load <2 x i64>, ptr %i.av, align 8, !tbaa !18 ; 3 uses
  %i.aw = and <2 x i64> %wide.load109, %broadcast.splat
  %i.ax = and <2 x i64> %wide.load110, %broadcast.splat
  %i.ay = and <2 x i64> %wide.load109, %broadcast.splat102
  %i.az = and <2 x i64> %wide.load110, %broadcast.splat102
  %i.ba = shl <2 x i64> %i.ay, %broadcast.splat104
  %i.bb = shl <2 x i64> %i.az, %broadcast.splat104
  %i.bc = or <2 x i64> %i.ba, %i.aw
  %i.bd = or <2 x i64> %i.bb, %i.ax
  %i.be = and <2 x i64> %wide.load109, %broadcast.splat106
  %i.bf = and <2 x i64> %wide.load110, %broadcast.splat106
  %i.bg = lshr <2 x i64> %i.be, %broadcast.splat104
  %i.bh = lshr <2 x i64> %i.bf, %broadcast.splat104
  %i.bi = or <2 x i64> %i.bc, %i.bg
  %i.bj = or <2 x i64> %i.bd, %i.bh
  store <2 x i64> %i.bi, ptr %i.au, align 8, !tbaa !18
  store <2 x i64> %i.bj, ptr %i.av, align 8, !tbaa !18
  %index.next111 = add nuw i64 %index108, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next111, %n.vec100
  br i1 %i.bk, label %Abc_TtSwapAdjacent.exit.loopexit.us, label %vector.body107, !llvm.loop !40

scalar.ph97:                                      ; preds = %.lr.ph64.i.us
  %i.bl = load i64, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  %i.bm = and i64 %i.bl, %i.an
  %i.bn = and i64 %i.bl, %i.ao
  %i.bo = shl i64 %i.bn, %i.al
  %i.bp = or i64 %i.bo, %i.bm
  %i.bq = and i64 %i.bl, %i.ap
  %i.br = lshr i64 %i.bq, %i.al
  %i.bs = or i64 %i.bp, %i.br
  store i64 %i.bs, ptr %i.at, align 8, !tbaa !18
  br i1 %exitcond74.not.i.us, label %Abc_TtSwapAdjacent.exit.loopexit.us, label %scalar.ph97.1

scalar.ph97.1:                                    ; preds = %scalar.ph97
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !18 ; 3 uses
  %i.bv = and i64 %i.bu, %i.an
  %i.bw = and i64 %i.bu, %i.ao
  %i.bx = shl i64 %i.bw, %i.al
  %i.by = or i64 %i.bx, %i.bv
  %i.bz = and i64 %i.bu, %i.ap
  %i.ca = lshr i64 %i.bz, %i.al
  %i.cb = or i64 %i.by, %i.ca
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !18
  br i1 %exitcond74.not.i.us.1, label %Abc_TtSwapAdjacent.exit.loopexit.us, label %scalar.ph97.2

scalar.ph97.2:                                    ; preds = %scalar.ph97.1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !18 ; 3 uses
  %i.ce = and i64 %i.cd, %i.an
  %i.cf = and i64 %i.cd, %i.ao
  %i.cg = shl i64 %i.cf, %i.al
  %i.ch = or i64 %i.cg, %i.ce
  %i.ci = and i64 %i.cd, %i.ap
  %i.cj = lshr i64 %i.ci, %i.al
  %i.ck = or i64 %i.ch, %i.cj
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !18
  br label %Abc_TtSwapAdjacent.exit.loopexit.us

Abc_TtSwapAdjacent.exit.loopexit.us:              ; preds = %vector.body107, %scalar.ph97, %scalar.ph97.1, %scalar.ph97.2
  %i.cl = add nuw nsw i32 %.05864.us, 1           ; 2 uses
  %exitcond74.not = icmp eq i32 %i.cl, %i.j
  br i1 %exitcond74.not, label %.preheader, label %.lr.ph64.i.us, !llvm.loop !41

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cm = icmp eq i32 %1, 5
  br i1 %i.cm, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.ah, label %.lr.ph.i.preheader.us, label %._crit_edge

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.split.split.us, %Abc_TtSwapAdjacent.exit.loopexit62.us
  %.05864.us65 = phi i32 [ %i.cw, %Abc_TtSwapAdjacent.exit.loopexit62.us ], [ 0, %.lr.ph.split.split.us ] ; 2 uses
  %i.cn = shl i32 %.05864.us65, %i.t
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx65.i
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.05462.i.us = phi ptr [ %i.cu, %.lr.ph.i.us ], [ %i.cp, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 4 ; 2 uses
  %i.cs = load <2 x i32>, ptr %i.cr, align 4, !tbaa !9
  %i.ct = shufflevector <2 x i32> %i.cs, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ct, ptr %i.cr, align 4, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 16 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.cq
  br i1 %i.cv, label %.lr.ph.i.us, label %Abc_TtSwapAdjacent.exit.loopexit62.us, !llvm.loop !42

Abc_TtSwapAdjacent.exit.loopexit62.us:            ; preds = %.lr.ph.i.us
  %i.cw = add nuw nsw i32 %.05864.us65, 1         ; 2 uses
  %i.cx = load i32, ptr %i.i, align 4, !tbaa !16
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph.i.preheader.us, label %.preheader, !llvm.loop !41

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %brmerge = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %brmerge, label %._crit_edge, label %.preheader.lr.ph.i.preheader

.preheader.lr.ph.i.preheader:                     ; preds = %.lr.ph.split.split
  %i.cz = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.cz
  %i.da = shl nuw nsw i64 %i.af, 4
  %scevgep86 = getelementptr i8, ptr %i.r, i64 %i.da
  %i.db = shl nsw i64 %i.ad, 3
  %i.dc = add i64 %.idx65.i, %i.s
  %i.dd = shl nsw i64 %i.ad, 3                    ; 2 uses
  %i.de = add i64 %i.dd, %i.s
  %umax87 = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.df = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.df
  %i.dg = getelementptr i8, ptr %i.r, i64 %i.cz
  %scevgep91 = getelementptr i8, ptr %i.dg, i64 %i.df
  %min.iters.check = icmp ult i32 %i.z, 6
  %stride.check = icmp slt i32 %i.ac, 0
  %n.vec = and i64 %i.af, 2147483644
  %xtraiter = and i64 %i.af, 1
  %i.dh = icmp eq i32 %i.z, 1
  %unroll_iter = and i64 %i.af, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod119 = trunc i32 %i.z to i1
  br label %.preheader.lr.ph.i

.preheader:                                       ; preds = %Abc_TtSwapAdjacent.exit.loopexit63, %Abc_TtSwapAdjacent.exit.loopexit62.us, %Abc_TtSwapAdjacent.exit.loopexit.us, %.lr.ph.split.us, %bb.a
  %i.di = icmp slt i32 %1, 4
  br i1 %i.di, label %.lr.ph69, label %._crit_edge

.preheader.lr.ph.i:                               ; preds = %.preheader.lr.ph.i.preheader, %Abc_TtSwapAdjacent.exit.loopexit63
  %.05864 = phi i32 [ %i.eg, %Abc_TtSwapAdjacent.exit.loopexit63 ], [ 0, %.preheader.lr.ph.i.preheader ] ; 2 uses
  %i.dj = shl i32 %.05864, %i.t
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx65.i
  %i.dn = shl nsw i64 %i.dk, 3                    ; 5 uses
  %scevgep85 = getelementptr i8, ptr %scevgep, i64 %i.dn
  %i.do = add i64 %i.dc, %i.dn                    ; 2 uses
  %i.dp = add i64 %i.de, %i.dn                    ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dp)
  %i.dq = icmp ult i64 %i.dp, %i.do
  %umin = zext i1 %i.dq to i64                    ; 2 uses
  %i.dr = add i64 %i.dp, %umin
  %i.ds = sub i64 %umax, %i.dr
  %2 = udiv i64 %i.ds, %umax87
  %3 = add i64 %2, %umin
  %4 = mul i64 %i.db, %3
  %5 = add i64 %4, %i.dn                          ; 2 uses
  %scevgep88 = getelementptr i8, ptr %scevgep86, i64 %5
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.dn
  %scevgep92.a = getelementptr i8, ptr %scevgep91, i64 %5
  %bound0 = icmp ult ptr %scevgep85, %scevgep92.a
  %bound1 = icmp ult ptr %scevgep90, %scevgep88
  %found.conflict = and i1 %bound0, %bound1
  %6 = or i1 %found.conflict, %stride.check
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.lr.ph.i
  %.061.us.i = phi ptr [ %i.ee, %._crit_edge.us.i ], [ %i.dl, %.preheader.lr.ph.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.af ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ag ; 4 uses
  %brmerge120 = select i1 %min.iters.check, i1 true, i1 %6
  br i1 %brmerge120, label %scalar.ph.preheader.a, label %vector.body

scalar.ph.preheader.a:                            ; preds = %.preheader.us.i
  br i1 %i.dh, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dt, align 8, !tbaa !18, !alias.scope !43, !noalias !46
  %wide.load94 = load <2 x i64>, ptr %i.du, align 8, !tbaa !18, !alias.scope !43, !noalias !46
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load95 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !18, !alias.scope !46
  %wide.load96 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !18, !alias.scope !46
  store <2 x i64> %wide.load95, ptr %i.dt, align 8, !tbaa !18, !alias.scope !43, !noalias !46
  store <2 x i64> %wide.load96, ptr %i.du, align 8, !tbaa !18, !alias.scope !43, !noalias !46
  store <2 x i64> %wide.load, ptr %i.dv, align 8, !tbaa !18, !alias.scope !46
  store <2 x i64> %wide.load94, ptr %i.dw, align 8, !tbaa !18, !alias.scope !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %._crit_edge.us.i, label %vector.body, !llvm.loop !48

scalar.ph:                                        ; preds = %scalar.ph.preheader.a, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ 0, %scalar.ph.preheader.a ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader.a ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.dy = load i64, ptr %gep.i, align 8, !tbaa !18
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i ; 2 uses
  %i.dz = load i64, ptr %gep81.i, align 8, !tbaa !18
  store i64 %i.dz, ptr %gep.i, align 8, !tbaa !18
  store i64 %i.dy, ptr %gep81.i, align 8, !tbaa !18
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.ea = load i64, ptr %gep.i.1, align 8, !tbaa !18
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i ; 2 uses
  %i.eb = load i64, ptr %gep81.i.1, align 8, !tbaa !18
  store i64 %i.eb, ptr %gep.i.1, align 8, !tbaa !18
  store i64 %i.ea, ptr %gep81.i.1, align 8, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !49

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph.preheader.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader.a ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ec = load i64, ptr %gep.i.epil, align 8, !tbaa !18
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ed = load i64, ptr %gep81.i.epil, align 8, !tbaa !18
  store i64 %i.ed, ptr %gep.i.epil, align 8, !tbaa !18
  store i64 %i.ec, ptr %gep81.i.epil, align 8, !tbaa !18
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ad ; 2 uses
  %i.ef = icmp ult ptr %i.ee, %i.dm
  br i1 %i.ef, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit.loopexit63, !llvm.loop !50

Abc_TtSwapAdjacent.exit.loopexit63:               ; preds = %._crit_edge.us.i
  %i.eg = add nuw nsw i32 %.05864, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, %i.j
  br i1 %exitcond.not, label %.preheader, label %.preheader.lr.ph.i, !llvm.loop !41

.lr.ph69:                                         ; preds = %.preheader, %.lr.ph69
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph69 ], [ 5, %.preheader ] ; 3 uses
  %i.eh = trunc nsw i64 %indvars.iv to i32
  %i.ei = tail call i32 @Gia_ManProcessLevel(ptr noundef nonnull %0, i32 noundef %i.eh)
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !9
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ek = icmp sgt i64 %indvars.iv.next, %i.c
  br i1 %i.ek, label %.lr.ph69, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph69, %.lr.ph.split.split.us, %.lr.ph.split.split, %.preheader
  %i.el = tail call i32 @Gia_ManProcessLevel(ptr noundef nonnull %0, i32 noundef %i.b)
  store i32 %i.el, ptr %i.d, align 4, !tbaa !9
  %i.em = tail call i32 @Gia_ManProcessLevel(ptr noundef nonnull %0, i32 noundef %1)
  store i32 %i.em, ptr %i.g, align 4, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.f ; 2 uses
  %i.ep = load <2 x i32>, ptr %i.eo, align 4, !tbaa !9
  %i.eq = shufflevector <2 x i32> %i.ep, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.eq, ptr %i.eo, align 4, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.f ; 3 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9  ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.c ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !9
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !9
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !9
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ex = sext i32 %i.et to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ex
  store i32 %i.b, ptr %i.ey, align 4, !tbaa !9
  %i.ez = load i32, ptr %i.es, align 4, !tbaa !9
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fa
  store i32 %1, ptr %i.fb, align 4, !tbaa !9
  %i.fc = load i32, ptr %i.d, align 4, !tbaa !9
  %i.fd = load i32, ptr %i.g, align 4, !tbaa !9
  %i.fe = add i32 %i.h, %i.e
  %i.ff = sub i32 %i.fc, %i.fe
  %i.fg = add i32 %i.ff, %i.fd
  ret i32 %i.fg
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2147483646) i32 @Gia_ManFindBestPosition(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 4 uses
  %i.b = tail call ptr @Gia_ManContructTree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = add nsw i32 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = add nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9
  %i.m = add nsw i32 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9
  %i.p = add nsw i32 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %i.s = add nsw i32 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %i.v = add nsw i32 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %i.y = add nsw i32 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9
  %i.ab = add nsw i32 %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = add nsw i32 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  %i.ah = add nsw i32 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !9
  %i.ak = add nsw i32 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.aq = add nsw i32 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !9
  %i.at = add nsw i32 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9
  %i.aw = add nsw i32 %i.at, %i.av                ; 5 uses
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Gia_ManTreePrint(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ax = add i32 %1, -1
  %i.ay = mul i32 %i.ax, %2
  %i.az = mul i32 %i.ay, %3
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ba ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14 ; 7 uses
  %i.be = ptrtoaddr ptr %i.bd to i64
  %i.bf = mul i32 %3, %2                          ; 10 uses
  %i.bg = icmp sgt i32 %i.bf, 0                   ; 3 uses
  br i1 %i.bg, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.lr.ph18.preheader.i:                             ; preds = %bb.c
  %wide.trip.count24.i = zext nneg i32 %i.bf to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bf, 14
  br i1 %min.iters.check, label %.lr.ph18.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph18.preheader.i
  %i.bh = shl nsw i64 %i.ba, 3
  %i.bi = add i64 %i.bh, %i.a
  %i.bj = sub i64 %i.be, %i.bi
  %diff.check = icmp ugt i64 %i.bj, -32
  br i1 %diff.check, label %.lr.ph18.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <2 x i64>, ptr %i.bk, align 8, !tbaa !18
  %wide.load126 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x i64> %wide.load, ptr %i.bm, align 8, !tbaa !18
  store <2 x i64> %wide.load126, ptr %i.bn, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count24.i
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph18.preheader.i, %middle.block
  %indvars.iv21.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count24.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol

.lr.ph18.i.prol:                                  ; preds = %.lr.ph18.i.preheader, %.lr.ph18.i.prol
  %indvars.iv21.i.prol = phi i64 [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ], [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.prol ], [ 0, %.lr.ph18.i.preheader ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv21.i.prol
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv21.i.prol
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !18
  %indvars.iv.next22.i.prol = add nuw nsw i64 %indvars.iv21.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol, !llvm.loop !53

.lr.ph18.i.prol.loopexit:                         ; preds = %.lr.ph18.i.prol, %.lr.ph18.i.preheader
  %indvars.iv21.i.unr = phi i64 [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ], [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ]
  %i.bs = sub nsw i64 %indvars.iv21.i.ph, %wide.trip.count24.i
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %Abc_TtCopy.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i.3, %.lr.ph18.i ], [ %indvars.iv21.i.unr, %.lr.ph18.i.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv21.i
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv21.i
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !18
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next22.i
end_hunk_0
begin_hunk_1_@Abc_TtSwapVars:bb.a
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph208
  %index219 = phi i64 [ 0, %vector.ph208 ], [ %index.next222, %vector.body218 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index219 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load220 = load <2 x i64>, ptr %i.am, align 8, !tbaa !18 ; 3 uses
  %wide.load221 = load <2 x i64>, ptr %i.an, align 8, !tbaa !18 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat211, %wide.load220
  %i.ap = and <2 x i64> %broadcast.splat211, %wide.load221
  %i.aq = and <2 x i64> %broadcast.splat213, %wide.load220
  %i.ar = and <2 x i64> %broadcast.splat213, %wide.load221
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat215
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat215
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat217, %wide.load220
  %i.ax = and <2 x i64> %broadcast.splat217, %wide.load221
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat215
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat215
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !18
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !18
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next222, %n.vec209
  br i1 %i.bc, label %.loopexit, label %vector.body218, !llvm.loop !73

scalar.ph206:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !18
  %exitcond160.not = icmp slt i32 %i.y, 2
  br i1 %exitcond160.not, label %.loopexit, label %scalar.ph206.1

scalar.ph206.1:                                   ; preds = %scalar.ph206
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !18 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !18
  %exitcond160.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond160.not.1, label %.loopexit, label %scalar.ph206.2

scalar.ph206.2:                                   ; preds = %scalar.ph206.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !18 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !18
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.cd = icmp slt i32 %spec.select117, 6
  %i.ce = add nsw i32 %1, -6                      ; 3 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.idx132 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.idx132 ; 2 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %spec.select, -6            ; 3 uses
  %i.cj = shl nuw i32 1, %i.ci                    ; 3 uses
  %.not133 = icmp eq i32 %i.ce, 31
  br i1 %.not133, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ck = shl nuw nsw i32 1, %spec.select117
  %.not134 = icmp eq i32 %i.ci, 31
  %i.cl = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cm = shl i32 2, %i.ci
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  br i1 %.not134, label %.loopexit, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.co = sext i32 %spec.select117 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !18 ; 5 uses
  %i.cr = xor i64 %i.cq, -1                       ; 2 uses
  %i.cs = sext i32 %i.cj to i64                   ; 2 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64 ; 3 uses
  %i.ct = shl nuw nsw i64 %wide.trip.count153, 3  ; 2 uses
  %i.cu = shl nsw i64 %i.cn, 3
  %i.cv = shl nsw i64 %i.cs, 3                    ; 2 uses
  %min.iters.check191 = icmp slt i32 %i.cj, 2
  %i.cw = getelementptr i8, ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.ct
  %i.cy = getelementptr i8, ptr %0, i64 %i.cv
  %i.cz = getelementptr i8, ptr %0, i64 %i.ct
  %n.vec193 = and i64 %wide.trip.count153, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert194 = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat195 = shufflevector <2 x i64> %broadcast.splatinsert194, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert196 = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat197 = shufflevector <2 x i64> %broadcast.splatinsert196, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar182 = phi i64 [ %indvar.next183, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.0128.us = phi ptr [ %i.dx, %._crit_edge.us ], [ %0, %.preheader.lr.ph.split.us ] ; 5 uses
  %invariant.gep169 = getelementptr [8 x i8], ptr %.0128.us, i64 %i.cs ; 2 uses
  br i1 %min.iters.check191, label %scalar.ph190.preheader, label %vector.memcheck181

scalar.ph190.preheader:                           ; preds = %vector.memcheck181, %.preheader.us
  br label %scalar.ph190

vector.memcheck181:                               ; preds = %.preheader.us
  %i.da = mul i64 %i.cu, %indvar182               ; 3 uses
  %scevgep186 = getelementptr i8, ptr %i.cx, i64 %i.da
  %scevgep185 = getelementptr i8, ptr %i.cy, i64 %i.da
  %scevgep184 = getelementptr i8, ptr %i.cz, i64 %i.da
  %bound0187 = icmp ult ptr %.0128.us, %scevgep186
  %bound1188 = icmp ult ptr %scevgep185, %scevgep184
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %scalar.ph190.preheader, label %vector.body198

vector.body198:                                   ; preds = %vector.memcheck181, %vector.body198
  %index199 = phi i64 [ %index.next202, %vector.body198 ], [ 0, %vector.memcheck181 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %index199 ; 2 uses
  %wide.load200 = load <2 x i64>, ptr %i.db, align 8, !tbaa !18, !alias.scope !74, !noalias !77 ; 2 uses
  %i.dc = and <2 x i64> %broadcast.splat, %wide.load200
  %i.dd = lshr <2 x i64> %i.dc, %broadcast.splat195
  %i.de = getelementptr [8 x i8], ptr %invariant.gep169, i64 %index199 ; 2 uses
  %wide.load201 = load <2 x i64>, ptr %i.de, align 8, !tbaa !18, !alias.scope !77 ; 2 uses
  %i.df = shl <2 x i64> %wide.load201, %broadcast.splat195
  %i.dg = and <2 x i64> %i.df, %broadcast.splat
  %i.dh = and <2 x i64> %wide.load200, %broadcast.splat197
  %i.di = or <2 x i64> %i.dg, %i.dh
  store <2 x i64> %i.di, ptr %i.db, align 8, !tbaa !18, !alias.scope !74, !noalias !77
  %i.dj = and <2 x i64> %wide.load201, %broadcast.splat
  %i.dk = or <2 x i64> %i.dj, %i.dd
  store <2 x i64> %i.dk, ptr %i.de, align 8, !tbaa !18, !alias.scope !77
  %index.next202 = add nuw i64 %index199, 2       ; 2 uses
  %i.dl = icmp eq i64 %index.next202, %n.vec193
  br i1 %i.dl, label %._crit_edge.us, label %vector.body198, !llvm.loop !79

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph190 ], [ 0, %scalar.ph190.preheader ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %indvars.iv149 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !18 ; 2 uses
  %i.do = and i64 %i.cq, %i.dn
  %i.dp = lshr i64 %i.do, %i.cl
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %indvars.iv149 ; 2 uses
  %i.dq = load i64, ptr %gep170, align 8, !tbaa !18 ; 2 uses
  %i.dr = shl i64 %i.dq, %i.cl
  %i.ds = and i64 %i.dr, %i.cq
  %i.dt = and i64 %i.dn, %i.cr
  %i.du = or i64 %i.ds, %i.dt
  store i64 %i.du, ptr %i.dm, align 8, !tbaa !18
  %i.dv = and i64 %i.dq, %i.cq
  %i.dw = or i64 %i.dv, %i.dp
  store i64 %i.dw, ptr %gep170, align 8, !tbaa !18
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge.us, label %scalar.ph190, !llvm.loop !80

._crit_edge.us:                                   ; preds = %vector.body198, %scalar.ph190
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0128.us, i64 %i.cn ; 2 uses
  %i.dy = icmp ult ptr %i.dx, %i.ch
  %indvar.next183 = add i64 %indvar182, 1
  br i1 %i.dy, label %.preheader.us, label %.loopexit, !llvm.loop !81

bb.h:                                             ; preds = %bb.f
  %i.dz = add nsw i32 %spec.select117, -6         ; 3 uses
  %i.ea = shl nuw i32 1, %i.dz                    ; 4 uses
  %i.eb = add nsw i32 %spec.select, -6            ; 3 uses
  %i.ec = shl nuw i32 1, %i.eb                    ; 2 uses
  %.not = icmp eq i32 %i.ce, 31
  br i1 %.not, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %.not130 = icmp eq i32 %i.eb, 31
  %i.ed = shl i32 2, %i.eb
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %.not131 = icmp eq i32 %i.dz, 31
  %or.cond = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond, label %.loopexit, label %.preheader120.us.us.preheader

.preheader120.us.us.preheader:                    ; preds = %.preheader120.lr.ph
  %i.ef = shl i32 2, %i.dz                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 1) ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 5 uses
  %i.eh = sext i32 %i.ea to i64                   ; 2 uses
  %i.ei = sext i32 %i.ec to i64                   ; 4 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %i.ej = shl nsw i64 %i.eh, 3                    ; 2 uses
  %i.ek = shl nsw i64 %i.ee, 3
  %smax173 = tail call i64 @llvm.smax.i64(i64 %i.eg, i64 %i.ei)
  %i.el = icmp slt i32 %i.ef, %i.ec
  %umin = zext i1 %i.el to i64                    ; 2 uses
  %i.em = or disjoint i64 %umin, %i.eg
  %i.en = sub i64 %smax173, %i.em
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eo = udiv i64 %i.en, %umax
  %i.ep = add i64 %i.eo, %umin
  %i.eq = mul i64 %i.ep, %i.eg
  %4 = shl i64 %i.eq, 3                           ; 2 uses
  %5 = shl nuw nsw i64 %wide.trip.count, 3        ; 2 uses
  %i.er = shl nsw i64 %i.ei, 3                    ; 2 uses
  %6 = getelementptr i8, ptr %0, i64 %i.ej
  %7 = getelementptr i8, ptr %0, i64 %i.er
  %8 = getelementptr i8, ptr %0, i64 %4
  %9 = getelementptr i8, ptr %8, i64 %i.ej
  %i.es = getelementptr i8, ptr %9, i64 %5
  %i.et = getelementptr i8, ptr %0, i64 %4
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.er
  %10 = getelementptr i8, ptr %i.eu, i64 %5
  %min.iters.check = icmp slt i32 %i.ea, 6
  %stride.check = icmp slt i32 %i.ef, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ev = icmp slt i32 %i.ea, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod231 = trunc i32 %smax to i1
  br label %.preheader120.us.us

.preheader120.us.us:                              ; preds = %.preheader120.us.us.preheader, %._crit_edge124.us.us
  %indvar = phi i64 [ 0, %.preheader120.us.us.preheader ], [ %indvar.next, %._crit_edge124.us.us ] ; 2 uses
  %.1125.us.us = phi ptr [ %0, %.preheader120.us.us.preheader ], [ %i.fp, %._crit_edge124.us.us ] ; 3 uses
  %i.ew = mul i64 %i.ek, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %6, i64 %i.ew
  %scevgep175 = getelementptr i8, ptr %7, i64 %i.ew
  %invariant.gep = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.eh
  %invariant.gep167.a = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.ei
  %scevgep174 = getelementptr i8, ptr %i.es, i64 %i.ew
  %scevgep176.a = getelementptr i8, ptr %10, i64 %i.ew
  %bound0 = icmp ult ptr %scevgep, %scevgep176.a
  %bound1.a = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict = and i1 %bound0, %bound1.a
  %11 = or i1 %found.conflict, %stride.check
  br label %.preheader119.us.us

scalar.ph:                                        ; preds = %scalar.ph.preheader.a, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader.a ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader.a ]
  %i.ex = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !18
  %i.ez = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !18
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !18
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fb = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !18
  %i.fd = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.next ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !18
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !18
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !82

.preheader119.us.us:                              ; preds = %.preheader120.us.us, %._crit_edge.us.us
  %indvars.iv146 = phi i64 [ 0, %.preheader120.us.us ], [ %indvars.iv.next147, %._crit_edge.us.us ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146 ; 4 uses
  %gep168 = getelementptr [8 x i8], ptr %invariant.gep167.a, i64 %indvars.iv146 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %11
  br i1 %brmerge, label %scalar.ph.preheader.a, label %vector.body

scalar.ph.preheader.a:                            ; preds = %.preheader119.us.us
  br i1 %i.ev, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119.us.us ] ; 3 uses
  %i.ff = getelementptr [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ff, align 8, !tbaa !18, !alias.scope !83, !noalias !86
  %wide.load178 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !18, !alias.scope !83, !noalias !86
  %i.fh = getelementptr [8 x i8], ptr %gep168, i64 %index ; 3 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16     ; 2 uses
  %wide.load179 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !18, !alias.scope !86
  %wide.load180 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !18, !alias.scope !86
  store <2 x i64> %wide.load179, ptr %i.ff, align 8, !tbaa !18, !alias.scope !83, !noalias !86
  store <2 x i64> %wide.load180, ptr %i.fg, align 8, !tbaa !18, !alias.scope !83, !noalias !86
  store <2 x i64> %wide.load, ptr %i.fh, align 8, !tbaa !18, !alias.scope !86
  store <2 x i64> %wide.load178, ptr %i.fi, align 8, !tbaa !18, !alias.scope !86
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %._crit_edge.us.us, label %vector.body, !llvm.loop !88

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader.a
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader.a ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.fk = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !18
  %i.fm = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.epil.init ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !18
  store i64 %i.fn, ptr %i.fk, align 8, !tbaa !18
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !18
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.eg ; 2 uses
  %i.fo = icmp slt i64 %indvars.iv.next147, %i.ei
  br i1 %i.fo, label %.preheader119.us.us, label %._crit_edge124.us.us, !llvm.loop !89

._crit_edge124.us.us:                             ; preds = %._crit_edge.us.us
  %i.fp = getelementptr inbounds [8 x i8], ptr %.1125.us.us, i64 %i.ee ; 2 uses
  %i.fq = icmp ult ptr %i.fp, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fq, label %.preheader120.us.us, label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %._crit_edge124.us.us, %._crit_edge.us, %vector.body218, %scalar.ph206, %scalar.ph206.1, %scalar.ph206.2, %.preheader120.lr.ph, %.preheader.lr.ph, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManPermuteTree(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #27
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %7, align 8, !tbaa !91
  %.neg20 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !93
  %.neg = sdiv i64 %i.e, -1000
  %.neg21 = add i64 %.neg, %.neg20
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg21, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.f = mul nsw i32 %3, %2                       ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = call noalias ptr @malloc(i64 noundef %i.h) #25 ; 6 uses
  %i.j = icmp sgt i32 %i.f, 0
  br i1 %i.j, label %.lr.ph18.preheader.i.i, label %Abc_TtDup.exit.split.critedge

.lr.ph18.preheader.i.i:                           ; preds = %Abc_Clock.exit
  %wide.trip.count24.i.i = zext nneg i32 %i.f to i64
  %i.k = shl nuw nsw i64 %wide.trip.count24.i.i, 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.i, ptr readonly align 8 %0, i64 %i.k, i1 false), !tbaa !18
  %i.l = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  br label %.lr.ph18.preheader.i.us

.lr.ph18.preheader.i.us:                          ; preds = %.lr.ph18.preheader.i.i, %.lr.ph18.preheader.i.us
  %.022.us = phi i32 [ %i.n, %.lr.ph18.preheader.i.us ], [ 0, %.lr.ph18.preheader.i.i ]
  %i.m = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.i, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null, i32 noundef 0, i32 noundef %5) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %0, i64 %i.k, i1 false), !tbaa !18
  %i.n = add nuw nsw i32 %.022.us, 1              ; 2 uses
  %exitcond24.not = icmp eq i32 %i.n, 100
  br i1 %exitcond24.not, label %.split.us, label %.lr.ph18.preheader.i.us, !llvm.loop !94

Abc_TtDup.exit.split.critedge:                    ; preds = %Abc_Clock.exit
  %i.o = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %Abc_TtDup.exit.split.critedge, %Abc_TtCopy.exit
  %.022 = phi i32 [ 0, %Abc_TtDup.exit.split.critedge ], [ %i.q, %Abc_TtCopy.exit ]
  %i.p = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.i, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null, i32 noundef 0, i32 noundef %5) ; 0 uses
  %i.q = add nuw nsw i32 %.022, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, 100
  br i1 %exitcond.not, label %.split.us, label %Abc_TtCopy.exit, !llvm.loop !94

.split.us:                                        ; preds = %Abc_TtCopy.exit, %.lr.ph18.preheader.i.us
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.us
  call void @free(ptr noundef nonnull %i.i) #27
  br label %bb.d

bb.d:                                             ; preds = %.split.us, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.r = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %Abc_Clock.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %6, align 8, !tbaa !91
  %i.u = mul nsw i64 %i.t, 1000000
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !93
  %i.x = sdiv i64 %i.w, 1000
  %i.y = add nsw i64 %i.x, %i.u
  br label %Abc_Clock.exit19

Abc_Clock.exit19:                                 ; preds = %bb.d, %bb.e
  %.0.i18 = phi i64 [ %i.y, %bb.e ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.z = add i64 %.0.i18, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11)
  %i.aa = sitofp i64 %i.z to double
  %i.ab = fdiv double %i.aa, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.ab)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @Abc_TtMin_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 7                       ; 2 uses
  %i.b = add nsw i32 %2, -6                       ; 2 uses
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !95
  %i.g = add nsw i32 %i.f, %i.d                   ; 3 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !95
  %i.h = load i32, ptr %3, align 8, !tbaa !97
  %i.i = icmp sgt i32 %i.g, %i.h
  br i1 %i.i, label %Vec_WrdFetch.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.l = sext i32 %i.g to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = sext i32 %i.d to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  br label %Vec_WrdFetch.exit

Vec_WrdFetch.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ] ; 40 uses
  %.0.i369 = ptrtoaddr ptr %.0.i to i64           ; 6 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Vec_WrdFetch.exit
  %i.q = load i64, ptr %0, align 8, !tbaa !18
  %i.r = load i64, ptr %1, align 8, !tbaa !18
  %i.s = tail call fastcc i64 @Abc_Tt6Min_rec(i64 noundef %i.q, i64 noundef %i.r, i32 noundef %2, ptr noundef %4)
  store i64 %i.s, ptr %.0.i, align 8, !tbaa !18
  br label %Abc_TtClear.exit

bb.d:                                             ; preds = %Vec_WrdFetch.exit
  %.not = icmp eq i32 %i.b, 31
  br i1 %.not, label %Abc_TtClear.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i145, label %.lr.ph.i, !llvm.loop !99

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.e, label %.lr.ph.preheader.i154.loopexit338

.lr.ph.preheader.i145:                            ; preds = %bb.e
  %wide.trip.count.i146 = zext nneg i32 %i.d to i64 ; 2 uses
  br label %.lr.ph.i147

bb.f:                                             ; preds = %.lr.ph.i147
  %indvars.iv.next.i150 = add nuw nsw i64 %indvars.iv.i148, 1 ; 2 uses
  %exitcond.not.i151 = icmp eq i64 %indvars.iv.next.i150, %wide.trip.count.i146
  br i1 %exitcond.not.i151, label %Abc_TtClear.exit, label %.lr.ph.i147, !llvm.loop !99

.lr.ph.i147:                                      ; preds = %bb.f, %.lr.ph.preheader.i145
  %indvars.iv.i148 = phi i64 [ 0, %.lr.ph.preheader.i145 ], [ %indvars.iv.next.i150, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i148
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %.not.i149 = icmp eq i64 %i.w, 0
  br i1 %.not.i149, label %bb.f, label %.lr.ph.preheader.i154

.lr.ph.preheader.i154.loopexit338:                ; preds = %.lr.ph.i
  %.pre = zext nneg i32 %i.d to i64
  br label %.lr.ph.preheader.i154

.lr.ph.preheader.i154:                            ; preds = %.lr.ph.i147, %.lr.ph.preheader.i154.loopexit338
  %wide.trip.count.i155.pre-phi = phi i64 [ %.pre, %.lr.ph.preheader.i154.loopexit338 ], [ %wide.trip.count.i146, %.lr.ph.i147 ] ; 6 uses
  br label %.lr.ph.i156

bb.g:                                             ; preds = %.lr.ph.i156
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i157, 1 ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %indvars.iv.next.i159, %wide.trip.count.i155.pre-phi
  br i1 %exitcond.not.i160, label %.lr.ph.i165, label %.lr.ph.i156, !llvm.loop !99

.lr.ph.i156:                                      ; preds = %bb.g, %.lr.ph.preheader.i154
end_hunk_1
