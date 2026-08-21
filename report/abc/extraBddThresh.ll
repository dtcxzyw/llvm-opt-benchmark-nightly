inline.NumInlined: 72
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Abc_TtMakePosUnate:bb.a
  %exitcond60.not.i.1 = icmp eq i32 %i.e, 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Abc_TtFlip.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Abc_TtFlip.exit ] ; 13 uses
  br i1 %i.a, label %Abc_TtNegVar.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i, label %Abc_TtNegVar.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = shl nuw nsw i32 1, %i.p
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %Abc_TtNegVar.exit.thread, label %bb.f, !llvm.loop !133

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next59.i, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv58.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = shl i64 %i.v, %i.r
  %i.x = xor i64 %i.w, -1
  %i.y = and i64 %i.t, %i.x
  %i.z = and i64 %i.y, %i.v
  %.not44.i = icmp eq i64 %i.z, 0
  br i1 %.not44.i, label %bb.e, label %Abc_TtFlip.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.ab = trunc nsw i64 %i.aa to i32              ; 2 uses
  %i.ac = shl nuw i32 1, %i.ab                    ; 2 uses
  br i1 %.not.i, label %Abc_TtNegVar.exit.thread, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.ad = icmp eq i64 %i.aa, 31
  %i.ae = shl i32 2, %i.ab
  %i.af = sext i32 %i.ae to i64
  br i1 %i.ad, label %Abc_TtFlip.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.ag = sext i32 %i.ac to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03848.us.i = phi ptr [ %i.al, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03848.us.i, i64 %i.ag
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.i, !llvm.loop !134

bb.i:                                             ; preds = %bb.h, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.03848.us.i, i64 %indvars.iv.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.aj = load i64, ptr %gep.i, align 8, !tbaa !11 ; 2 uses
  %i.ak = and i64 %i.aj, %i.ai
  %.not.us.i = icmp eq i64 %i.ak, %i.aj
  br i1 %.not.us.i, label %bb.h, label %Abc_TtFlip.exit

._crit_edge.us.i:                                 ; preds = %bb.h
  %i.al = getelementptr inbounds [8 x i8], ptr %.03848.us.i, i64 %i.af ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.g
  br i1 %i.am, label %.preheader.us.i, label %Abc_TtNegVar.exit.thread, !llvm.loop !135

Abc_TtNegVar.exit:                                ; preds = %bb.b
  %i.an = load i64, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.an, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  %i.au = xor i64 %i.ar, -1
  %i.av = and i64 %i.at, %i.au
  %i.aw = and i64 %i.av, %i.an
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %Abc_TtNegVar.exit.thread, label %Abc_TtFlip.exit

Abc_TtNegVar.exit.thread:                         ; preds = %._crit_edge.us.i, %bb.e, %bb.d, %bb.g, %Abc_TtNegVar.exit
  br i1 %i.h, label %bb.j, label %bb.k

bb.j:                                             ; preds = %Abc_TtNegVar.exit.thread
  %i.ax = load i64, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = shl i64 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.be = and i64 %i.bb, %i.bd
  %i.bf = and i64 %i.bd, %i.ax
  %i.bg = lshr i64 %i.bf, %i.ba
  %i.bh = or i64 %i.bg, %i.be
  store i64 %i.bh, ptr %0, align 8, !tbaa !11
  br label %Abc_TtFlip.exit

bb.k:                                             ; preds = %Abc_TtNegVar.exit.thread
  %i.bi = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.bi, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  br i1 %i.k, label %.lr.ph.i23, label %Abc_TtFlip.exit

.lr.ph.i23:                                       ; preds = %bb.l
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = shl nuw nsw i32 1, %i.bj
  %i.bl = zext nneg i32 %i.bk to i64              ; 7 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i23
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert64 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat65 = shufflevector <2 x i64> %broadcast.splatinsert64, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  %i.bq = shl <2 x i64> %wide.load, %broadcast.splat
  %i.br = shl <2 x i64> %wide.load66, %broadcast.splat
  %i.bs = and <2 x i64> %i.bq, %broadcast.splat65
  %i.bt = and <2 x i64> %i.br, %broadcast.splat65
  %i.bu = and <2 x i64> %wide.load, %broadcast.splat65
  %i.bv = and <2 x i64> %wide.load66, %broadcast.splat65
  %i.bw = lshr <2 x i64> %i.bu, %broadcast.splat
  %i.bx = lshr <2 x i64> %i.bv, %broadcast.splat
  %i.by = or <2 x i64> %i.bw, %i.bs
  %i.bz = or <2 x i64> %i.bx, %i.bt
  store <2 x i64> %i.by, ptr %i.bo, align 8, !tbaa !11
  store <2 x i64> %i.bz, ptr %i.bp, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %Abc_TtFlip.exit, label %vector.body, !llvm.loop !140

scalar.ph:                                        ; preds = %.lr.ph.i23
  %i.cb = load i64, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.cc = shl i64 %i.cb, %i.bl
  %i.cd = and i64 %i.cc, %i.bn
  %i.ce = and i64 %i.cb, %i.bn
  %i.cf = lshr i64 %i.ce, %i.bl
  %i.cg = or i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %0, align 8, !tbaa !11
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !11  ; 2 uses
  %i.ci = shl i64 %i.ch, %i.bl
  %i.cj = and i64 %i.ci, %i.bn
  %i.ck = and i64 %i.ch, %i.bn
  %i.cl = lshr i64 %i.ck, %i.bl
  %i.cm = or i64 %i.cl, %i.cj
  store i64 %i.cm, ptr %i.m, align 8, !tbaa !11
  br i1 %exitcond60.not.i.1, label %Abc_TtFlip.exit, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph
  %i.cn = load i64, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.co = shl i64 %i.cn, %i.bl
  %i.cp = and i64 %i.co, %i.bn
  %i.cq = and i64 %i.cn, %i.bn
  %i.cr = lshr i64 %i.cq, %i.bl
  %i.cs = or i64 %i.cr, %i.cp
  store i64 %i.cs, ptr %i.n, align 8, !tbaa !11
  br label %Abc_TtFlip.exit

.thread:                                          ; preds = %bb.k
  %.pre = add nsw i64 %indvars.iv, -6             ; 2 uses
  %.pre40 = trunc nsw i64 %.pre to i32            ; 2 uses
  %.pre42 = shl nuw i32 1, %.pre40                ; 4 uses
  br i1 %i.k, label %.preheader.lr.ph.i11, label %Abc_TtFlip.exit

.preheader.lr.ph.i11:                             ; preds = %.thread
  %i.ct = icmp eq i64 %.pre, 31
  %i.cu = shl i32 2, %.pre40
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  br i1 %i.ct, label %Abc_TtFlip.exit, label %.preheader.us.preheader.i13

.preheader.us.preheader.i13:                      ; preds = %.preheader.lr.ph.i11
  %i.cw = sext i32 %.pre42 to i64                 ; 2 uses
  %smax.i14 = tail call i32 @llvm.smax.i32(i32 %.pre42, i32 1) ; 2 uses
  %wide.trip.count.i15 = zext nneg i32 %smax.i14 to i64 ; 4 uses
  %i.cx = shl nuw nsw i64 %wide.trip.count.i15, 3 ; 2 uses
  %i.cy = shl nsw i64 %i.cv, 3
  %i.cz = shl nsw i64 %i.cw, 3                    ; 2 uses
  %min.iters.check70 = icmp slt i32 %.pre42, 4
  %2 = getelementptr i8, ptr %0, i64 %i.cz
  %3 = getelementptr i8, ptr %2, i64 %i.cx
  %i.da = getelementptr i8, ptr %0, i64 %i.cz
  %i.db = getelementptr i8, ptr %0, i64 %i.cx
  %n.vec72 = and i64 %wide.trip.count.i15, 2147483644
  %xtraiter = and i64 %wide.trip.count.i15, 1
  %i.dc = icmp slt i32 %.pre42, 2
  %unroll_iter = and i64 %wide.trip.count.i15, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod89 = trunc i32 %smax.i14 to i1
  br label %.preheader.us.i16

.preheader.us.i16:                                ; preds = %._crit_edge.us.i22, %.preheader.us.preheader.i13
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i22 ], [ 0, %.preheader.us.preheader.i13 ] ; 2 uses
  %.051.us.i = phi ptr [ %i.ds, %._crit_edge.us.i22 ], [ %0, %.preheader.us.preheader.i13 ] ; 7 uses
  %invariant.gep.i17 = getelementptr [8 x i8], ptr %.051.us.i, i64 %i.cw ; 4 uses
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.memcheck

scalar.ph69.preheader:                            ; preds = %vector.memcheck, %.preheader.us.i16
  br i1 %i.dc, label %scalar.ph69.epil.preheader, label %scalar.ph69

vector.memcheck:                                  ; preds = %.preheader.us.i16
  %i.dd = mul i64 %i.cy, %indvar                  ; 3 uses
  %scevgep68 = getelementptr i8, ptr %3, i64 %i.dd
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.dd
  %scevgep = getelementptr i8, ptr %i.db, i64 %i.dd
  %bound0 = icmp ult ptr %.051.us.i, %scevgep68
  %bound1 = icmp ult ptr %scevgep67, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph69.preheader, label %vector.body73

vector.body73:                                    ; preds = %vector.memcheck, %vector.body73
  %index74 = phi i64 [ %index.next79, %vector.body73 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %index74 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %wide.load75.a = load <2 x i64>, ptr %i.de, align 8, !tbaa !11, !alias.scope !141, !noalias !144
  %wide.load76.a = load <2 x i64>, ptr %i.df, align 8, !tbaa !11, !alias.scope !141, !noalias !144
  %i.dg = getelementptr [8 x i8], ptr %invariant.gep.i17, i64 %index74 ; 3 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load77.a = load <2 x i64>, ptr %i.dg, align 8, !tbaa !11, !alias.scope !144
  %wide.load78 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !11, !alias.scope !144
  store <2 x i64> %wide.load77.a, ptr %i.de, align 8, !tbaa !11, !alias.scope !141, !noalias !144
  store <2 x i64> %wide.load78, ptr %i.df, align 8, !tbaa !11, !alias.scope !141, !noalias !144
  store <2 x i64> %wide.load75.a, ptr %i.dg, align 8, !tbaa !11, !alias.scope !144
  store <2 x i64> %wide.load76.a, ptr %i.dh, align 8, !tbaa !11, !alias.scope !144
  %index.next79 = add nuw i64 %index74, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.di, label %._crit_edge.us.i22, label %vector.body73, !llvm.loop !146

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i20.1, %scalar.ph69 ], [ 0, %scalar.ph69.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph69 ], [ 0, %scalar.ph69.preheader ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i18 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11
  %gep.i19 = getelementptr [8 x i8], ptr %invariant.gep.i17, i64 %indvars.iv.i18 ; 2 uses
  %i.dl = load i64, ptr %gep.i19, align 8, !tbaa !11
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !11
  store i64 %i.dk, ptr %gep.i19, align 8, !tbaa !11
  %indvars.iv.next.i20 = or disjoint i64 %indvars.iv.i18, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.next.i20 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %gep.i19.1 = getelementptr [8 x i8], ptr %invariant.gep.i17, i64 %indvars.iv.next.i20 ; 2 uses
  %i.do = load i64, ptr %gep.i19.1, align 8, !tbaa !11
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !11
  store i64 %i.dn, ptr %gep.i19.1, align 8, !tbaa !11
  %indvars.iv.next.i20.1 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i22.loopexit.unr-lcssa, label %scalar.ph69, !llvm.loop !147

._crit_edge.us.i22.loopexit.unr-lcssa:            ; preds = %scalar.ph69
  br i1 %lcmp.mod.not, label %._crit_edge.us.i22, label %scalar.ph69.epil.preheader

scalar.ph69.epil.preheader:                       ; preds = %._crit_edge.us.i22.loopexit.unr-lcssa, %scalar.ph69.preheader
  %indvars.iv.i18.epil.init = phi i64 [ 0, %scalar.ph69.preheader ], [ %indvars.iv.next.i20.1, %._crit_edge.us.i22.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i18.epil.init ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !11
  %gep.i19.epil = getelementptr [8 x i8], ptr %invariant.gep.i17, i64 %indvars.iv.i18.epil.init ; 2 uses
  %i.dr = load i64, ptr %gep.i19.epil, align 8, !tbaa !11
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !11
  store i64 %i.dq, ptr %gep.i19.epil, align 8, !tbaa !11
  br label %._crit_edge.us.i22

._crit_edge.us.i22:                               ; preds = %vector.body73, %scalar.ph69.epil.preheader, %._crit_edge.us.i22.loopexit.unr-lcssa
  %i.ds = getelementptr inbounds [8 x i8], ptr %.051.us.i, i64 %i.cv ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dt, label %.preheader.us.i16, label %Abc_TtFlip.exit, !llvm.loop !148

Abc_TtFlip.exit:                                  ; preds = %bb.f, %._crit_edge.us.i22, %vector.body, %scalar.ph, %scalar.ph.2, %bb.i, %.preheader.lr.ph.i, %.preheader.lr.ph.i11, %.thread, %bb.l, %bb.j, %Abc_TtNegVar.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !149

._crit_edge:                                      ; preds = %Abc_TtFlip.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, 1001) i32 @Extra_ThreshHeuristic(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  %i.b = alloca [16 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = icmp slt i32 %1, 2
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @Abc_TtIsUnate(ptr noundef %0, i32 noundef %1)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @Abc_TtMakePosUnate(ptr noundef %0, i32 noundef %1)
  %i.e = zext nneg i32 %1 to i64                  ; 7 uses
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.f, i1 false)
  %.not36.i = icmp eq i32 %1, 31
  br i1 %.not36.i, label %.lr.ph.preheader.i, label %.lr.ph34.split.us.preheader.i

.lr.ph34.split.us.preheader.i:                    ; preds = %bb.c
  %i.g = shl nuw i32 1, %1
  %smax40.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %xtraiter = and i64 %i.e, 1
  %unroll_iter = and i64 %i.e, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod100 = trunc i32 %1 to i1
  br label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph34.split.us.preheader.i
  %.033.us.i = phi i32 [ %.1.us.i, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph34.split.us.preheader.i ] ; 2 uses
  %.02731.us.i = phi i32 [ %i.ai, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph34.split.us.preheader.i ] ; 6 uses
  %i.h = lshr i32 %.02731.us.i, 6
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = and i32 %.02731.us.i, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.n, %i.k
  %.not.us.i = icmp eq i64 %i.o, 0
  br i1 %.not.us.i, label %..loopexit_crit_edge.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph34.split.us.i, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.f ], [ 0, %.lr.ph34.split.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.lr.ph34.split.us.i ]
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = and i32 %i.q, %.02731.us.i
  %.not29.us.i = icmp eq i32 %i.r, 0
  br i1 %.not29.us.i, label %.lr.ph.us.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !8
  br label %.lr.ph.us.i.1

.lr.ph.us.i.1:                                    ; preds = %bb.d, %.lr.ph.us.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, %.02731.us.i
  %.not29.us.i.1 = icmp eq i32 %i.x, 0
  br i1 %.not29.us.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.i.1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.us.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.i.unr-lcssa, label %.lr.ph.us.i, !llvm.loop !16

..loopexit_crit_edge.us.loopexit.i.unr-lcssa:     ; preds = %bb.f
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us.loopexit.i, label %.lr.ph.us.i.epil.preheader

.lr.ph.us.i.epil.preheader:                       ; preds = %..loopexit_crit_edge.us.loopexit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %.02731.us.i
  %.not29.us.i.epil = icmp eq i32 %i.ad, 0
  br i1 %.not29.us.i.epil, label %..loopexit_crit_edge.us.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us.i.epil.preheader
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !8
  br label %..loopexit_crit_edge.us.loopexit.i

..loopexit_crit_edge.us.loopexit.i:               ; preds = %.lr.ph.us.i.epil.preheader, %bb.g, %..loopexit_crit_edge.us.loopexit.i.unr-lcssa
  %i.ah = add nsw i32 %.033.us.i, 1
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %..loopexit_crit_edge.us.loopexit.i, %.lr.ph34.split.us.i
  %.1.us.i = phi i32 [ %.033.us.i, %.lr.ph34.split.us.i ], [ %i.ah, %..loopexit_crit_edge.us.loopexit.i ] ; 2 uses
  %i.ai = add nuw nsw i32 %.02731.us.i, 1         ; 2 uses
  %exitcond41.not.i = icmp eq i32 %i.ai, %smax40.i
  br i1 %exitcond41.not.i, label %.lr.ph.preheader.i, label %.lr.ph34.split.us.i, !llvm.loop !17

.lr.ph.preheader.i:                               ; preds = %..loopexit_crit_edge.us.i, %bb.c
  %.0.lcssa50.i = phi i32 [ 0, %bb.c ], [ %.1.us.i, %..loopexit_crit_edge.us.i ] ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.e, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.lcssa50.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aj, align 16, !tbaa !8
  %wide.load86 = load <4 x i32>, ptr %i.ak, align 16, !tbaa !8
  %i.al = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %i.am = shl nsw <4 x i32> %wide.load86, splat (i32 1)
end_hunk_0
