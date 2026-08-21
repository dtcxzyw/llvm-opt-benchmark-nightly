inline.NumInlined: 854
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Lf_SetAddCut:bb.a
  %i.z = load i64, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !87
  %i.ab = and i64 %i.aa, %i.z
  %i.ac = icmp eq i64 %i.ab, %i.z
  br i1 %i.ac, label %.lr.ph.i.i, label %Lf_SetCutIsContainedOrder.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %wide.trip.count.i.i = zext nneg i32 %i.x to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %.038.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43 ; 2 uses
  %i.ag = sext i32 %.038.i.i to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !43 ; 2 uses
  %i.aj = icmp sgt i32 %i.af, %i.ai
  br i1 %i.aj, label %Lf_SetCutIsContainedOrder.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp eq i32 %i.af, %i.ai
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %.038.i.i, 1                ; 2 uses
  %i.am = icmp eq i32 %i.al, %i.i
  br i1 %i.am, label %Lf_SetCutIsContainedOrder.exit.thread.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i.i = phi i32 [ %i.al, %bb.g ], [ %.038.i.i, %bb.f ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Lf_SetCutIsContainedOrder.exit.thread.i, label %bb.e, !llvm.loop !106

Lf_SetCutIsContainedOrder.exit.thread.i:          ; preds = %bb.h, %bb.e, %bb.d, %.outer.i.split
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.outer.i.split, !llvm.loop !164

Lf_SetCutIsContainedOrder.exit.thread.thread.i:   ; preds = %bb.c, %bb.g
  %indvars.iv.i51 = phi i64 [ %indvars.iv.i, %bb.g ], [ %indvars.iv.i.us, %bb.c ]
  %.pn = phi ptr [ %i.u, %bb.g ], [ %i.m, %bb.c ]
  %i.an = phi i32 [ %i.w, %bb.g ], [ %i.o, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn, i64 20
  %i.ap = or i32 %i.an, -16777216
  store i32 %i.ap, ptr %i.ao, align 4
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not75.i = icmp eq i64 %indvars.iv.next74.i, %i.c
  br i1 %exitcond.not75.i, label %.preheader.i, label %.outer.i, !llvm.loop !164

._crit_edge.i:                                    ; preds = %Lf_SetCutIsContainedOrder.exit.thread.i, %Lf_SetCutIsContainedOrder.exit.thread.i.us
  br i1 %i.e, label %Lf_SetLastCutContainsArea.exit, label %.preheader.i

.preheader.i:                                     ; preds = %Lf_SetCutIsContainedOrder.exit.thread.thread.i, %._crit_edge.i
  %i.aq = add nuw i32 %1, 1
  %wide.trip.count62.i = zext i32 %i.aq to i64
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %bb.l, %.preheader.i
  %indvars.iv59.i = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next60.i, %bb.l ] ; 3 uses
  %.04054.i = phi i32 [ 1, %.preheader.i ], [ %.141.i, %bb.l ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv59.i ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp ugt i32 %i.au, -16777217
  br i1 %i.av, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph55.i
  %i.aw = sext i32 %.04054.i to i64               ; 2 uses
  %i.ax = icmp sgt i64 %indvars.iv59.i, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !94
  store ptr %i.as, ptr %i.ay, align 8, !tbaa !94
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !94
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = add nsw i32 %.04054.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph55.i
  %.141.i = phi i32 [ %.04054.i, %.lr.ph55.i ], [ %i.ba, %bb.k ] ; 2 uses
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge56.loopexit.i, label %.lr.ph55.i, !llvm.loop !165

._crit_edge56.loopexit.i:                         ; preds = %bb.l
  %i.bb = add nsw i32 %.141.i, -1
  br label %Lf_SetLastCutContainsArea.exit

Lf_SetLastCutContainsArea.exit:                   ; preds = %bb.b, %._crit_edge.i, %._crit_edge56.loopexit.i
  %.0.i = phi i32 [ %i.bb, %._crit_edge56.loopexit.i ], [ %1, %._crit_edge.i ], [ %1, %bb.b ] ; 6 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !94    ; 7 uses
  %i.bd = sext i32 %.0.i to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !74 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !74 ; 2 uses
  %i.bk = icmp slt i32 %i.bh, %i.bj
  br i1 %i.bk, label %Lf_CutCompareDelay.exit.thread, label %bb.m

bb.m:                                             ; preds = %Lf_SetLastCutContainsArea.exit
  %i.bl = icmp sgt i32 %i.bh, %i.bj
  br i1 %i.bl, label %Lf_CutCompareDelay.exit.thread38, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = lshr i32 %i.bn, 24                      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = lshr i32 %i.bq, 24                      ; 2 uses
  %i.bs = icmp samesign ult i32 %i.bo, %i.br
  br i1 %i.bs, label %Lf_CutCompareDelay.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = icmp samesign ugt i32 %i.bo, %i.br
  br i1 %i.bt, label %Lf_CutCompareDelay.exit.thread38, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !76
  %i.bw = fpext float %i.bv to double             ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !76
  %i.bz = fpext float %i.by to double             ; 2 uses
  %i.ca = fadd double %i.bz, -5.000000e-03
  %i.cb = fcmp ule double %i.ca, %i.bw
  %i.cc = fadd double %i.bz, 5.000000e-03
  %i.cd = fcmp olt double %i.cc, %i.bw
  %or.cond = and i1 %i.cb, %i.cd
  br i1 %or.cond, label %Lf_CutCompareDelay.exit.thread38, label %Lf_CutCompareDelay.exit.thread

Lf_CutCompareDelay.exit.thread38:                 ; preds = %bb.p, %bb.m, %bb.o
  store ptr %i.bf, ptr %0, align 8, !tbaa !94
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !94
  %i.ce = load ptr, ptr %0, align 8, !tbaa !94    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = lshr i32 %i.cg, 24                      ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = lshr i32 %i.cj, 24                      ; 2 uses
  %i.cl = icmp samesign ult i32 %i.ch, %i.ck
  br i1 %i.cl, label %bb.q, label %Lf_CutCompareDelay.exit.thread

bb.q:                                             ; preds = %Lf_CutCompareDelay.exit.thread38
  %i.cm = load i64, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %i.cn = load i64, ptr %i.bc, align 8, !tbaa !87
  %i.co = and i64 %i.cn, %i.cm
  %i.cp = icmp eq i64 %i.co, %i.cm
  br i1 %i.cp, label %bb.r, label %Lf_CutCompareDelay.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cq = icmp eq i32 %i.ch, 0
  br i1 %i.cq, label %Lf_SetCutIsContainedOrder.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %wide.trip.count.i = zext nneg i32 %i.ck to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i30
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i30 ], [ %indvars.iv.next.i32, %bb.v ] ; 2 uses
  %.038.i = phi i32 [ 0, %.lr.ph.i30 ], [ %.1.i, %bb.v ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i31
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !43 ; 2 uses
  %i.cv = sext i32 %.038.i to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !43 ; 2 uses
  %i.cy = icmp sgt i32 %i.cu, %i.cx
  br i1 %i.cy, label %Lf_CutCompareDelay.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = icmp eq i32 %i.cu, %i.cx
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.da = add nsw i32 %.038.i, 1                  ; 2 uses
  %i.db = icmp eq i32 %i.da, %i.ch
  br i1 %i.db, label %Lf_SetCutIsContainedOrder.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i = phi i32 [ %i.da, %bb.u ], [ %.038.i, %bb.t ]
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i
  br i1 %exitcond.not.i33, label %Lf_CutCompareDelay.exit.thread, label %bb.s, !llvm.loop !106

Lf_CutCompareDelay.exit.thread:                   ; preds = %bb.v, %bb.s, %bb.n, %Lf_SetLastCutContainsArea.exit, %bb.p, %Lf_CutCompareDelay.exit.thread38, %bb.q
  %i.dc = icmp sgt i32 %.0.i, 1
  br i1 %i.dc, label %.lr.ph.preheader.i, label %Lf_SetSortByArea.exit

.lr.ph.preheader.i:                               ; preds = %Lf_CutCompareDelay.exit.thread
  %3 = zext nneg i32 %.0.i to i64
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %Lf_CutCompareArea.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i36 = phi i64 [ %3, %.lr.ph.preheader.i ], [ %indvars.iv.next.i37, %Lf_CutCompareArea.exit.i ] ; 3 uses
  %i.dd = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i36 ; 3 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -8     ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !94 ; 4 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !94 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.di = load i32, ptr %i.dh, align 4            ; 2 uses
  %i.dj = lshr i32 %i.di, 22
  %i.dk = and i32 %i.dj, 1                        ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %i.dm = load i32, ptr %i.dl, align 4            ; 2 uses
  %i.dn = lshr i32 %i.dm, 22
  %i.do = and i32 %i.dn, 1                        ; 2 uses
  %i.dp = icmp samesign ult i32 %i.dk, %i.do
  br i1 %i.dp, label %Lf_SetSortByArea.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i35
  %i.dq = icmp samesign ugt i32 %i.dk, %i.do
  br i1 %i.dq, label %Lf_CutCompareArea.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !76
  %i.dt = fpext float %i.ds to double             ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dv = load float, ptr %i.du, align 4, !tbaa !76
  %i.dw = fpext float %i.dv to double             ; 2 uses
  %i.dx = fadd double %i.dw, -5.000000e-03
  %i.dy = fcmp ogt double %i.dx, %i.dt
  br i1 %i.dy, label %Lf_SetSortByArea.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = fadd double %i.dw, 5.000000e-03
  %i.ea = fcmp olt double %i.dz, %i.dt
  br i1 %i.ea, label %Lf_CutCompareArea.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !74 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !74 ; 2 uses
  %i.ef = icmp slt i32 %i.ec, %i.ee
  br i1 %i.ef, label %Lf_SetSortByArea.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = icmp sgt i32 %i.ec, %i.ee
  br i1 %i.eg, label %Lf_CutCompareArea.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eh = lshr i32 %i.di, 24
  %i.ei = lshr i32 %i.dm, 24
  %i.ej = icmp samesign ult i32 %i.eh, %i.ei
  br i1 %i.ej, label %Lf_SetSortByArea.exit, label %Lf_CutCompareArea.exit.i

Lf_CutCompareArea.exit.i:                         ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !94
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !94
  %indvars.iv.next.i37 = add nsw i64 %indvars.iv.i36, -1
  %i.ek = icmp sgt i64 %indvars.iv.i36, 2
  br i1 %i.ek, label %.lr.ph.i35, label %Lf_SetSortByArea.exit, !llvm.loop !166

Lf_SetSortByArea.exit:                            ; preds = %.lr.ph.i35, %bb.x, %bb.z, %bb.ab, %Lf_CutCompareArea.exit.i, %Lf_CutCompareDelay.exit.thread
  %i.el = add nsw i32 %.0.i, 1
  %i.em = add nsw i32 %2, -1
  %i.en = tail call noundef i32 @llvm.smin.i32(i32 %i.el, i32 %i.em)
  br label %Lf_SetCutIsContainedOrder.exit

Lf_SetCutIsContainedOrder.exit:                   ; preds = %bb.u, %bb.r, %bb.a, %Lf_SetSortByArea.exit
  %.0 = phi i32 [ %i.en, %Lf_SetSortByArea.exit ], [ 1, %bb.a ], [ %.0.i, %bb.r ], [ %.0.i, %bb.u ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @Lf_CutComputeTruthMux(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6, ptr nofree noundef captures(address_is_null) %7) unnamed_addr #12 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [128 x i64], align 16             ; 9 uses
  %i.c = alloca [128 x i64], align 16             ; 8 uses
  %i.d = alloca [128 x i64], align 16             ; 8 uses
  %i.e = alloca [128 x i64], align 16             ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = load i32, ptr %i.g, align 8, !tbaa !72   ; 6 uses
  %i.i = icmp slt i32 %i.h, 7
  br i1 %i.i, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.l = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val51.i = load ptr, ptr %i.l, align 8, !tbaa !112 ; 4 uses
  %i.m = getelementptr i8, ptr %1, i64 16
  %.val52.i = load i32, ptr %i.m, align 8, !tbaa !79 ; 2 uses
  %i.n = ashr i32 %.val52.i, 1                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val51.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val51.i, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !116  ; 3 uses
  %i.s = ashr i32 %i.n, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.w = load i32, ptr %.val51.i, align 8, !tbaa !119 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !120  ; 3 uses
  %i.z = and i32 %i.y, %i.n
  %i.aa = mul nsw i32 %i.z, %i.w
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !134
  %i.ae = getelementptr i8, ptr %2, i64 16
  %.val50.i = load i32, ptr %i.ae, align 8, !tbaa !79 ; 2 uses
  %i.af = ashr i32 %.val50.i, 1                   ; 2 uses
  %i.ag = ashr i32 %i.af, %i.r
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !117
  %i.ak = and i32 %i.af, %i.y
  %i.al = mul nsw i32 %i.ak, %i.w
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !134
  %i.ap = getelementptr i8, ptr %3, i64 16
  %.val48.i = load i32, ptr %i.ap, align 8, !tbaa !79 ; 2 uses
  %i.aq = ashr i32 %.val48.i, 1                   ; 2 uses
  %i.ar = ashr i32 %i.aq, %i.r
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117
  %i.av = and i32 %i.aq, %i.y
  %i.aw = mul nsw i32 %i.av, %i.w
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !134
  %i.ba = and i32 %.val52.i, 1
  %.not.i = icmp ne i32 %i.ba, %4
  %i.bb = sext i1 %.not.i to i64
  %spec.select.i = xor i64 %i.ad, %i.bb           ; 2 uses
  %i.bc = and i32 %.val50.i, 1
  %.not45.i = icmp ne i32 %i.bc, %5
  %i.bd = sext i1 %.not45.i to i64
  %.043.i = xor i64 %i.ao, %i.bd                  ; 2 uses
  %i.be = and i32 %.val48.i, 1
  %.not46.i = icmp ne i32 %i.be, %6
  %i.bf = sext i1 %.not46.i to i64
  %.0.i = xor i64 %i.az, %i.bf                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = lshr i32 %i.bi, 24                      ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.bl = lshr i32 %i.k, 24                       ; 8 uses
  %i.bm = icmp ne i32 %i.bl, 0                    ; 3 uses
  %i.bn = icmp ne i32 %i.bj, 0
  %i.bo = and i1 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph.preheader.i.i, label %Abc_Tt6Expand.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.bp = add nsw i32 %i.bj, -1
  %i.bq = zext nneg i32 %i.bl to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bq, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %.020.i.i = phi i32 [ %i.bp, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.f ] ; 4 uses
  %.01619.i.i = phi i64 [ %spec.select.i, %.lr.ph.preheader.i.i ], [ %.2.i.i, %bb.f ] ; 5 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !43
  %i.bt = zext nneg i32 %.020.i.i to i64          ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !43
  %i.bw = icmp sgt i32 %i.bs, %i.bv
  br i1 %i.bw, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.bx = icmp samesign ugt i64 %indvars.iv.next.i.i, %i.bt
  br i1 %i.bx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.bt
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv.next.i.i ; 3 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.cb = shl nuw i32 1, %i.ca
  %.neg.i.i.i = shl nsw i32 -1, %.020.i.i
  %i.cc = add i32 %i.cb, %.neg.i.i.i
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !134
  %i.ce = and i64 %i.cd, %.01619.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !134
  %i.ch = and i64 %i.cg, %.01619.i.i
  %i.ci = zext i32 %i.cc to i64                   ; 2 uses
  %i.cj = shl i64 %i.ch, %i.ci
  %i.ck = or i64 %i.cj, %i.ce
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !134
  %i.cn = and i64 %i.cm, %.01619.i.i
  %i.co = lshr i64 %i.cn, %i.ci
  %i.cp = or i64 %i.ck, %i.co
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.117.i.i = phi i64 [ %i.cp, %bb.d ], [ %.01619.i.i, %bb.c ]
  %i.cq = add nsw i32 %.020.i.i, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.2.i.i = phi i64 [ %.01619.i.i, %.lr.ph.i.i ], [ %.117.i.i, %bb.e ] ; 2 uses
  %.1.i.i = phi i32 [ %.020.i.i, %.lr.ph.i.i ], [ %i.cq, %bb.e ] ; 2 uses
  %i.cr = icmp samesign ugt i64 %indvars.iv.i.i, 1
  %i.cs = icmp sgt i32 %.1.i.i, -1
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %.lr.ph.i.i, label %Abc_Tt6Expand.exit.i, !llvm.loop !135

Abc_Tt6Expand.exit.i:                             ; preds = %bb.f, %bb.b
  %.016.lcssa.i.i = phi i64 [ %spec.select.i, %bb.b ], [ %.2.i.i, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = lshr i32 %i.cw, 24                      ; 2 uses
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = and i1 %i.bm, %i.cy
  br i1 %i.cz, label %.lr.ph.preheader.i54.i, label %Abc_Tt6Expand.exit64.i

.lr.ph.preheader.i54.i:                           ; preds = %Abc_Tt6Expand.exit.i
  %i.da = add nsw i32 %i.cx, -1
  %i.db = zext nneg i32 %i.bl to i64
  br label %.lr.ph.i55.i

.lr.ph.i55.i:                                     ; preds = %bb.j, %.lr.ph.preheader.i54.i
  %indvars.iv.i56.i = phi i64 [ %i.db, %.lr.ph.preheader.i54.i ], [ %indvars.iv.next.i59.i, %bb.j ] ; 2 uses
  %.020.i57.i = phi i32 [ %i.da, %.lr.ph.preheader.i54.i ], [ %.1.i62.i, %bb.j ] ; 4 uses
  %.01619.i58.i = phi i64 [ %.043.i, %.lr.ph.preheader.i54.i ], [ %.2.i61.i, %bb.j ] ; 5 uses
  %indvars.iv.next.i59.i = add nsw i64 %indvars.iv.i56.i, -1 ; 5 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i59.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !43
  %i.de = zext nneg i32 %.020.i57.i to i64        ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !43
  %i.dh = icmp sgt i32 %i.dd, %i.dg
  br i1 %i.dh, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i55.i
  %i.di = icmp samesign ugt i64 %indvars.iv.next.i59.i, %i.de
  br i1 %i.di, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.de
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %indvars.iv.next.i59.i ; 3 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv.next.i59.i to i32
  %i.dm = shl nuw i32 1, %i.dl
  %.neg.i.i63.i = shl nsw i32 -1, %.020.i57.i
  %i.dn = add i32 %i.dm, %.neg.i.i63.i
  %i.do = load i64, ptr %i.dk, align 8, !tbaa !134
  %i.dp = and i64 %i.do, %.01619.i58.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !134
  %i.ds = and i64 %i.dr, %.01619.i58.i
end_hunk_0
