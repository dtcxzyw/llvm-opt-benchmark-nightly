inline.NumInlined: 5
begin_hunk_0_@hypre_StructVectorSetValues:bb.a
._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorSetBoxValues(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call ptr @hypre_BoxArrayCreate(i32 noundef %i.h) #14 ; 6 uses
  %i.j = tail call ptr @hypre_BoxCreate() #14     ; 9 uses
  %i.k = load i32, ptr %i.g, align 8, !tbaa !25
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @hypre_IntersectBoxes(ptr noundef %1, ptr noundef %i.s, ptr noundef %i.j) #14 ; 0 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !4
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 6 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !4
  %i.x = load i32, ptr %i.m, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !4
  %i.z = load i32, ptr %i.n, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %i.af = load i32, ptr %i.q, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !25
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge.thread, !llvm.loop !37

._crit_edge.thread:                               ; preds = %bb.b
  %i.ak = tail call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.j) #14 ; 0 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  %i.al = tail call i32 @hypre_BoxDestroy(ptr noundef %i.j) #14 ; 0 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = tail call ptr @hypre_BoxDuplicate(ptr noundef %1) #14 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !25
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph523, label %._crit_edge524

.lr.ph523:                                        ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not447 = icmp eq i32 %3, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %._crit_edge524, label %.lr.ph523.split.preheader

.lr.ph523.split.preheader:                        ; preds = %.lr.ph523
  %scevgep611 = getelementptr i8, ptr %2, i64 8
  br label %.lr.ph523.split

.lr.ph523.splitthread-pre-split:                  ; preds = %.loopexit467
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !27
  br label %.lr.ph523.split

.lr.ph523.split:                                  ; preds = %.lr.ph523.split.preheader, %.lr.ph523.splitthread-pre-split
  %i.bc = phi ptr [ %.pr, %.lr.ph523.splitthread-pre-split ], [ %i.ba, %.lr.ph523.split.preheader ] ; 2 uses
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %.lr.ph523.splitthread-pre-split ], [ 0, %.lr.ph523.split.preheader ] ; 4 uses
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv569 ; 6 uses
  %.not446 = icmp eq ptr %i.bc, null
  br i1 %.not446, label %.loopexit467, label %bb.d

bb.d:                                             ; preds = %.lr.ph523.split
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv569 ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 2 uses
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !17 ; 4 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv569
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = sext i32 %i.bp to i64                   ; 3 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bq ; 10 uses
  %i.bs = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.bt = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bu = load i32, ptr %i.be, align 4, !tbaa !4  ; 3 uses
  %i.bv = sub i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4  ; 2 uses
  %i.bz = sub i32 %i.bw, %i.by                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = sub nsw i32 %i.cc, %i.by                ; 5 uses
  %i.ce = icmp sgt i32 %i.cd, -1                  ; 4 uses
  br i1 %.not447, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ce, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cf = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = sub nsw i32 %i.cf, %i.ch
  %i.cj = add nuw nsw i32 %i.cd, 1
  %i.ck = mul nsw i32 %i.ci, %i.cj
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cl = phi i32 [ %i.ck, %bb.f ], [ 0, %bb.e ]
  %i.cm = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cn = sub i32 %i.cm, %i.bu                    ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1                  ; 2 uses
  %i.cp = add nsw i32 %i.bz, %i.cl
  %i.cq = add i32 %i.cn, 1                        ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cp
  %i.cs = select i1 %i.co, i32 %i.cr, i32 0
  %i.ct = add nsw i32 %i.bv, %i.cs
  %i.cu = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.cv = sub i32 %i.bg, %i.cu
  %i.cw = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.cx = sub i32 %i.bi, %i.cw
  %i.cy = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.cz = sub nsw i32 %i.cy, %i.cw                ; 3 uses
  %i.da = icmp sgt i32 %i.cz, -1                  ; 2 uses
  br i1 %i.da, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.db = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.dc = sub nsw i32 %i.bk, %i.db
  %i.dd = add nuw nsw i32 %i.cz, 1
  %i.de = mul nsw i32 %i.dc, %i.dd
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.df = phi i32 [ %i.de, %bb.h ], [ 0, %bb.g ]
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !4   ; 10 uses
  %i.dh = load i32, ptr %i.ay, align 4, !tbaa !4  ; 5 uses
  %i.di = load i32, ptr %i.az, align 4, !tbaa !4  ; 3 uses
  %.0416 = call i32 @llvm.smax.i32(i32 %i.dh, i32 %i.dg)
  %.1417 = call i32 @llvm.smax.i32(i32 %i.di, i32 %.0416)
  %i.dj = icmp sgt i32 %.1417, 0
  br i1 %i.dj, label %.preheader465.lr.ph, label %.loopexit467

.preheader465.lr.ph:                              ; preds = %bb.i
  %i.dk = load i32, ptr %i.av, align 4, !tbaa !4
  %i.dl = sub i32 %i.dk, %i.cu                    ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, -1                  ; 2 uses
  %i.dn = add i32 %i.dl, 1                        ; 2 uses
  %i.do = select i1 %i.dm, i32 %i.dn, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.do, %i.dh
  %i.dp = select i1 %i.co, i32 %i.cq, i32 0       ; 3 uses
  %factor.op.mul490 = mul i32 %i.dh, %i.dp
  %i.dq = add nuw nsw i32 %i.cz, 1
  %i.dr = mul nsw i32 %i.do, %i.dq
  %i.ds = select i1 %i.da, i32 %i.dr, i32 0
  %i.dt = add nuw nsw i32 %i.cd, 1
  %i.du = mul nsw i32 %i.dp, %i.dt
  %i.dv = select i1 %i.ce, i32 %i.du, i32 0
  %4 = icmp sgt i32 %i.di, 0
  %5 = icmp sgt i32 %i.dh, 0
  %i.dw = sub i32 %i.dp, %i.dg
  %i.dx = sub i32 %i.do, %i.dg
  %i.dy = sub i32 %i.dv, %factor.op.mul490
  %i.dz = sub i32 %i.ds, %factor.op.mul
  %brmerge.not594 = and i1 %4, %5
  %6 = icmp sgt i32 %i.dg, 0
  %or.cond = and i1 %brmerge.not594, %6
  br i1 %or.cond, label %.preheader463.us.us.preheader, label %.loopexit467

.preheader463.us.us.preheader:                    ; preds = %.preheader465.lr.ph
  %i.ea = add nsw i32 %i.cx, %i.df
  %i.eb = mul nsw i32 %i.dn, %i.ea
  %i.ec = select i1 %i.dm, i32 %i.eb, i32 0
  %i.ed = add nsw i32 %i.cv, %i.ec
  %i.ee = shl nsw i64 %i.bq, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bl, i64 %i.ee
  %scevgep607 = getelementptr i8, ptr %i.bl, i64 8
  %i.ef = add nsw i32 %i.dg, -1
  %i.eg = zext i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3                ; 2 uses
  %i.ei = getelementptr i8, ptr %scevgep607, i64 %i.ee
  %scevgep608 = getelementptr i8, ptr %i.ei, i64 %i.eh
  %scevgep612 = getelementptr i8, ptr %scevgep611, i64 %i.eh
  %i.ej = zext nneg i32 %i.dg to i64              ; 2 uses
  %min.iters.check615 = icmp ult i32 %i.dg, 4
  %n.vec618 = and i64 %i.ej, 2147483644           ; 5 uses
  %i.ek = trunc nuw nsw i64 %n.vec618 to i32
  %cmp.n627 = icmp eq i64 %n.vec618, %i.ej
  br label %.preheader463.us.us

.preheader463.us.us:                              ; preds = %.preheader463.us.us.preheader, %._crit_edge479.split.us.us.us
  %.0377487.us.us = phi i32 [ %i.fw, %._crit_edge479.split.us.us.us ], [ %i.ct, %.preheader463.us.us.preheader ]
  %.0380486.us.us = phi i32 [ %i.fx, %._crit_edge479.split.us.us.us ], [ %i.ed, %.preheader463.us.us.preheader ]
  %.1400485.us.us = phi i32 [ %i.fy, %._crit_edge479.split.us.us.us ], [ 0, %.preheader463.us.us.preheader ]
  br label %.preheader461.us.us.us

.preheader461.us.us.us:                           ; preds = %._crit_edge474.us.us.us, %.preheader463.us.us
  %.1378478.us.us.us = phi i32 [ %.0377487.us.us, %.preheader463.us.us ], [ %i.ft, %._crit_edge474.us.us.us ]
  %.1381477.us.us.us = phi i32 [ %.0380486.us.us, %.preheader463.us.us ], [ %i.fu, %._crit_edge474.us.us.us ]
  %.1396476.us.us.us = phi i32 [ 0, %.preheader463.us.us ], [ %i.fv, %._crit_edge474.us.us.us ]
  %i.el = sext i32 %.1378478.us.us.us to i64      ; 5 uses
  %i.em = sext i32 %.1381477.us.us.us to i64      ; 5 uses
  br i1 %min.iters.check615, label %scalar.ph614.preheader, label %vector.memcheck605

vector.memcheck605:                               ; preds = %.preheader461.us.us.us
  %i.en = shl nsw i64 %i.el, 3                    ; 2 uses
  %scevgep606 = getelementptr i8, ptr %scevgep, i64 %i.en
  %scevgep609 = getelementptr i8, ptr %scevgep608, i64 %i.en
  %i.eo = shl nsw i64 %i.em, 3                    ; 2 uses
  %scevgep610 = getelementptr i8, ptr %2, i64 %i.eo
  %scevgep613 = getelementptr i8, ptr %scevgep612, i64 %i.eo
  %bound0 = icmp ult ptr %scevgep606, %scevgep613
  %bound1 = icmp ult ptr %scevgep610, %scevgep609
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph614.preheader, label %vector.ph616

vector.ph616:                                     ; preds = %vector.memcheck605
  %i.ep = add nsw i64 %n.vec618, %i.em            ; 2 uses
  %i.eq = add nsw i64 %n.vec618, %i.el            ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.em
  %invariant.gep645 = getelementptr [8 x i8], ptr %i.br, i64 %i.el
  br label %vector.body619

vector.body619:                                   ; preds = %vector.body619, %vector.ph616
  %index620 = phi i64 [ 0, %vector.ph616 ], [ %index.next625, %vector.body619 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index620 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load621 = load <2 x double>, ptr %gep, align 8, !tbaa !34, !alias.scope !38
  %wide.load622 = load <2 x double>, ptr %i.er, align 8, !tbaa !34, !alias.scope !38
  %gep646 = getelementptr [8 x i8], ptr %invariant.gep645, i64 %index620 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %gep646, i64 16 ; 2 uses
  %wide.load623 = load <2 x double>, ptr %gep646, align 8, !tbaa !34, !alias.scope !41, !noalias !38
  %wide.load624 = load <2 x double>, ptr %i.es, align 8, !tbaa !34, !alias.scope !41, !noalias !38
  %i.et = fadd <2 x double> %wide.load621, %wide.load623
  %i.eu = fadd <2 x double> %wide.load622, %wide.load624
  store <2 x double> %i.et, ptr %gep646, align 8, !tbaa !34, !alias.scope !41, !noalias !38
  store <2 x double> %i.eu, ptr %i.es, align 8, !tbaa !34, !alias.scope !41, !noalias !38
  %index.next625 = add nuw i64 %index620, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next625, %n.vec618
  br i1 %i.ev, label %middle.block626, label %vector.body619, !llvm.loop !43

middle.block626:                                  ; preds = %vector.body619
  br i1 %cmp.n627, label %._crit_edge474.us.us.us, label %scalar.ph614.preheader

scalar.ph614.preheader:                           ; preds = %vector.memcheck605, %.preheader461.us.us.us, %middle.block626
  %indvars.iv549.ph = phi i64 [ %i.em, %vector.memcheck605 ], [ %i.em, %.preheader461.us.us.us ], [ %i.ep, %middle.block626 ] ; 3 uses
  %indvars.iv547.ph = phi i64 [ %i.el, %vector.memcheck605 ], [ %i.el, %.preheader461.us.us.us ], [ %i.eq, %middle.block626 ] ; 3 uses
  %.1392470.us.us.us.ph = phi i32 [ 0, %vector.memcheck605 ], [ 0, %.preheader461.us.us.us ], [ %i.ek, %middle.block626 ] ; 4 uses
  %i.ew = sub i32 %i.dg, %.1392470.us.us.us.ph
  %.neg = add i32 %.1392470.us.us.us.ph, 1
  %xtraiter = and i32 %i.ew, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph614.prol.loopexit, label %scalar.ph614.prol

scalar.ph614.prol:                                ; preds = %scalar.ph614.preheader
  %i.ex = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv549.ph
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !34
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv547.ph ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !34
  %i.fb = fadd double %i.ey, %i.fa
  store double %i.fb, ptr %i.ez, align 8, !tbaa !34
  %indvars.iv.next548.prol = add nsw i64 %indvars.iv547.ph, 1 ; 2 uses
  %indvars.iv.next550.prol = add nsw i64 %indvars.iv549.ph, 1 ; 2 uses
  %i.fc = add nuw nsw i32 %.1392470.us.us.us.ph, 1
  br label %scalar.ph614.prol.loopexit

scalar.ph614.prol.loopexit:                       ; preds = %scalar.ph614.prol, %scalar.ph614.preheader
  %indvars.iv.next548.lcssa633.unr = phi i64 [ poison, %scalar.ph614.preheader ], [ %indvars.iv.next548.prol, %scalar.ph614.prol ]
  %indvars.iv.next550.lcssa632.unr = phi i64 [ poison, %scalar.ph614.preheader ], [ %indvars.iv.next550.prol, %scalar.ph614.prol ]
  %indvars.iv549.unr = phi i64 [ %indvars.iv549.ph, %scalar.ph614.preheader ], [ %indvars.iv.next550.prol, %scalar.ph614.prol ]
  %indvars.iv547.unr = phi i64 [ %indvars.iv547.ph, %scalar.ph614.preheader ], [ %indvars.iv.next548.prol, %scalar.ph614.prol ]
  %.1392470.us.us.us.unr = phi i32 [ %.1392470.us.us.us.ph, %scalar.ph614.preheader ], [ %i.fc, %scalar.ph614.prol ]
  %i.fd = icmp eq i32 %i.dg, %.neg
  br i1 %i.fd, label %._crit_edge474.us.us.us, label %scalar.ph614

scalar.ph614:                                     ; preds = %scalar.ph614.prol.loopexit, %scalar.ph614
  %indvars.iv549 = phi i64 [ %indvars.iv.next550.1, %scalar.ph614 ], [ %indvars.iv549.unr, %scalar.ph614.prol.loopexit ] ; 3 uses
  %indvars.iv547 = phi i64 [ %indvars.iv.next548.1, %scalar.ph614 ], [ %indvars.iv547.unr, %scalar.ph614.prol.loopexit ] ; 3 uses
  %.1392470.us.us.us = phi i32 [ %i.fq, %scalar.ph614 ], [ %.1392470.us.us.us.unr, %scalar.ph614.prol.loopexit ]
  %i.fe = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv549
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !34
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv547 ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !34
  %i.fi = fadd double %i.ff, %i.fh
  store double %i.fi, ptr %i.fg, align 8, !tbaa !34
  %i.fj = getelementptr [8 x i8], ptr %2, i64 %indvars.iv549
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !34
  %i.fm = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv547
  %i.fn = getelementptr i8, ptr %i.fm, i64 8      ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !34
  %i.fp = fadd double %i.fl, %i.fo
  store double %i.fp, ptr %i.fn, align 8, !tbaa !34
  %indvars.iv.next548.1 = add nsw i64 %indvars.iv547, 2 ; 2 uses
  %indvars.iv.next550.1 = add nsw i64 %indvars.iv549, 2 ; 2 uses
  %i.fq = add nuw nsw i32 %.1392470.us.us.us, 2   ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.fq, %i.dg
  br i1 %exitcond.not.1, label %._crit_edge474.us.us.us, label %scalar.ph614, !llvm.loop !46

._crit_edge474.us.us.us:                          ; preds = %scalar.ph614.prol.loopexit, %scalar.ph614, %middle.block626
  %indvars.iv.next548.lcssa = phi i64 [ %i.eq, %middle.block626 ], [ %indvars.iv.next548.lcssa633.unr, %scalar.ph614.prol.loopexit ], [ %indvars.iv.next548.1, %scalar.ph614 ]
  %indvars.iv.next550.lcssa = phi i64 [ %i.ep, %middle.block626 ], [ %indvars.iv.next550.lcssa632.unr, %scalar.ph614.prol.loopexit ], [ %indvars.iv.next550.1, %scalar.ph614 ]
  %i.fr = trunc nsw i64 %indvars.iv.next550.lcssa to i32
  %i.fs = trunc nsw i64 %indvars.iv.next548.lcssa to i32
  %i.ft = add nsw i32 %i.dw, %i.fs                ; 2 uses
  %i.fu = add nsw i32 %i.dx, %i.fr                ; 2 uses
  %i.fv = add nuw nsw i32 %.1396476.us.us.us, 1   ; 2 uses
  %exitcond554.not = icmp eq i32 %i.fv, %i.dh
  br i1 %exitcond554.not, label %._crit_edge479.split.us.us.us, label %.preheader461.us.us.us, !llvm.loop !47

._crit_edge479.split.us.us.us:                    ; preds = %._crit_edge474.us.us.us
  %i.fw = add nsw i32 %i.dy, %i.ft
  %i.fx = add nsw i32 %i.dz, %i.fu
  %i.fy = add nuw nsw i32 %.1400485.us.us, 1      ; 2 uses
  %exitcond555.not = icmp eq i32 %i.fy, %i.di
  br i1 %exitcond555.not, label %.loopexit467, label %.preheader463.us.us, !llvm.loop !48

bb.j:                                             ; preds = %bb.d
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fz = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  %i.gc = sub nsw i32 %i.fz, %i.gb
  %i.gd = add nuw nsw i32 %i.cd, 1
  %i.ge = mul nsw i32 %i.gc, %i.gd
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.gf = phi i32 [ %i.ge, %bb.k ], [ 0, %bb.j ]
  %i.gg = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.gh = sub i32 %i.gg, %i.bu                    ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, -1                  ; 2 uses
  %i.gj = add nsw i32 %i.bz, %i.gf
  %i.gk = add i32 %i.gh, 1                        ; 2 uses
  %i.gl = mul nsw i32 %i.gk, %i.gj
  %i.gm = select i1 %i.gi, i32 %i.gl, i32 0
  %i.gn = add nsw i32 %i.bv, %i.gm
  %i.go = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.gp = sub i32 %i.bg, %i.go
  %i.gq = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.gr = sub i32 %i.bi, %i.gq
  %i.gs = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.gt = sub nsw i32 %i.gs, %i.gq                ; 3 uses
  %i.gu = icmp sgt i32 %i.gt, -1                  ; 2 uses
  br i1 %i.gu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gv = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.gw = sub nsw i32 %i.bk, %i.gv
  %i.gx = add nuw nsw i32 %i.gt, 1
  %i.gy = mul nsw i32 %i.gw, %i.gx
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.gz = phi i32 [ %i.gy, %bb.m ], [ 0, %bb.l ]
  %i.ha = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.hb = load i32, ptr %i.ay, align 4, !tbaa !4  ; 5 uses
  %i.hc = load i32, ptr %i.az, align 4, !tbaa !4  ; 3 uses
  %.0373 = call i32 @llvm.smax.i32(i32 %i.hb, i32 %i.ha)
  %.1374 = call i32 @llvm.smax.i32(i32 %i.hc, i32 %.0373)
  %i.hd = icmp sgt i32 %.1374, 0
  br i1 %i.hd, label %.preheader464.lr.ph, label %.loopexit467

.preheader464.lr.ph:                              ; preds = %bb.n
  %i.he = load i32, ptr %i.av, align 4, !tbaa !4
  %i.hf = sub i32 %i.he, %i.go                    ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, -1                  ; 2 uses
  %i.hh = add i32 %i.hf, 1                        ; 2 uses
  %i.hi = select i1 %i.hg, i32 %i.hh, i32 0       ; 3 uses
  %factor.op.mul516 = mul i32 %i.hi, %i.hb
  %i.hj = select i1 %i.gi, i32 %i.gk, i32 0       ; 3 uses
  %factor.op.mul515 = mul i32 %i.hb, %i.hj
  %i.hk = add nuw nsw i32 %i.gt, 1
  %i.hl = mul nsw i32 %i.hi, %i.hk
  %i.hm = select i1 %i.gu, i32 %i.hl, i32 0
  %i.hn = add nuw nsw i32 %i.cd, 1
  %i.ho = mul nsw i32 %i.hj, %i.hn
  %i.hp = select i1 %i.ce, i32 %i.ho, i32 0
  %7 = icmp sgt i32 %i.hc, 0
  %8 = icmp sgt i32 %i.hb, 0
  %i.hq = sub i32 %i.hj, %i.ha
  %i.hr = sub i32 %i.hi, %i.ha
  %i.hs = sub i32 %i.hp, %factor.op.mul515
  %i.ht = sub i32 %i.hm, %factor.op.mul516
  %brmerge529.not597 = and i1 %7, %8
  %9 = icmp sgt i32 %i.ha, 0
  %or.cond591 = and i1 %brmerge529.not597, %9
  br i1 %or.cond591, label %.preheader462.us.us.preheader, label %.loopexit467

.preheader462.us.us.preheader:                    ; preds = %.preheader464.lr.ph
  %i.hu = add nsw i32 %i.gr, %i.gz
  %i.hv = mul nsw i32 %i.hh, %i.hu
  %i.hw = select i1 %i.hg, i32 %i.hv, i32 0
  %i.hx = add nsw i32 %i.gp, %i.hw
  %i.hy = zext nneg i32 %i.ha to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ha, 4
  %n.vec = and i64 %i.hy, 2147483644              ; 5 uses
  %i.hz = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.hy
  br label %.preheader462.us.us

.preheader462.us.us:                              ; preds = %.preheader462.us.us.preheader, %._crit_edge503.split.us.us.us
  %.3512.us.us = phi i32 [ %i.js, %._crit_edge503.split.us.us.us ], [ %i.gn, %.preheader462.us.us.preheader ]
  %.3383511.us.us = phi i32 [ %i.jt, %._crit_edge503.split.us.us.us ], [ %i.hx, %.preheader462.us.us.preheader ]
  %.3402510.us.us = phi i32 [ %i.ju, %._crit_edge503.split.us.us.us ], [ 0, %.preheader462.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge498.us.us.us, %.preheader462.us.us
  %.4502.us.us.us = phi i32 [ %.3512.us.us, %.preheader462.us.us ], [ %i.jp, %._crit_edge498.us.us.us ]
  %.4384501.us.us.us = phi i32 [ %.3383511.us.us, %.preheader462.us.us ], [ %i.jq, %._crit_edge498.us.us.us ]
  %.3398500.us.us.us = phi i32 [ 0, %.preheader462.us.us ], [ %i.jr, %._crit_edge498.us.us.us ]
  %i.ia = sext i32 %.4502.us.us.us to i64         ; 5 uses
  %i.ib = sext i32 %.4384501.us.us.us to i64      ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %i.ic = add nsw i64 %i.bq, %i.ia
  %i.id = shl nsw i64 %i.ic, 3
  %i.ie = shl nsw i64 %i.ib, 3
  %i.if = add i64 %i.id, %i.bm
  %i.ig = add i64 %i.ie, %i.a
  %i.ih = sub i64 %i.if, %i.ig
  %diff.check = icmp ult i64 %i.ih, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ii = add nsw i64 %n.vec, %i.ib               ; 2 uses
  %i.ij = add nsw i64 %n.vec, %i.ia               ; 2 uses
  %invariant.gep647 = getelementptr [8 x i8], ptr %2, i64 %i.ib
  %invariant.gep649 = getelementptr [8 x i8], ptr %i.br, i64 %i.ia
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep648 = getelementptr [8 x i8], ptr %invariant.gep647, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %gep648, i64 16
  %wide.load = load <2 x double>, ptr %gep648, align 8, !tbaa !34
  %wide.load602 = load <2 x double>, ptr %i.ik, align 8, !tbaa !34
  %gep650 = getelementptr [8 x i8], ptr %invariant.gep649, i64 %index ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %gep650, i64 16
  store <2 x double> %wide.load, ptr %gep650, align 8, !tbaa !34
  store <2 x double> %wide.load602, ptr %i.il, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.im = icmp eq i64 %index.next, %n.vec
  br i1 %i.im, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge498.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv561.ph = phi i64 [ %i.ib, %vector.memcheck ], [ %i.ib, %.preheader.us.us.us ], [ %i.ii, %middle.block ] ; 2 uses
  %indvars.iv559.ph = phi i64 [ %i.ia, %vector.memcheck ], [ %i.ia, %.preheader.us.us.us ], [ %i.ij, %middle.block ] ; 2 uses
  %.3394494.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.hz, %middle.block ] ; 4 uses
  %i.in = sub i32 %i.ha, %.3394494.us.us.us.ph
  %xtraiter639 = and i32 %i.in, 3                 ; 2 uses
  %lcmp.mod640.not = icmp eq i32 %xtraiter639, 0
  br i1 %lcmp.mod640.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv561.prol = phi i64 [ %indvars.iv.next562.prol, %scalar.ph.prol ], [ %indvars.iv561.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv559.prol = phi i64 [ %indvars.iv.next560.prol, %scalar.ph.prol ], [ %indvars.iv559.ph, %scalar.ph.preheader ] ; 2 uses
  %.3394494.us.us.us.prol = phi i32 [ %i.ir, %scalar.ph.prol ], [ %.3394494.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.io = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv561.prol
  %i.ip = load double, ptr %i.io, align 8, !tbaa !34
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv559.prol
  store double %i.ip, ptr %i.iq, align 8, !tbaa !34
  %indvars.iv.next560.prol = add nsw i64 %indvars.iv559.prol, 1 ; 3 uses
  %indvars.iv.next562.prol = add nsw i64 %indvars.iv561.prol, 1 ; 3 uses
  %i.ir = add nuw nsw i32 %.3394494.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter639
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !50

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next560.lcssa636.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next560.prol, %scalar.ph.prol ]
  %indvars.iv.next562.lcssa635.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next562.prol, %scalar.ph.prol ]
  %indvars.iv561.unr = phi i64 [ %indvars.iv561.ph, %scalar.ph.preheader ], [ %indvars.iv.next562.prol, %scalar.ph.prol ]
  %indvars.iv559.unr = phi i64 [ %indvars.iv559.ph, %scalar.ph.preheader ], [ %indvars.iv.next560.prol, %scalar.ph.prol ]
  %.3394494.us.us.us.unr = phi i32 [ %.3394494.us.us.us.ph, %scalar.ph.preheader ], [ %i.ir, %scalar.ph.prol ]
  %i.is = sub i32 %.3394494.us.us.us.ph, %i.ha
  %i.it = icmp ugt i32 %i.is, -4
  br i1 %i.it, label %._crit_edge498.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv561 = phi i64 [ %indvars.iv.next562.3, %scalar.ph ], [ %indvars.iv561.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv559 = phi i64 [ %indvars.iv.next560.3, %scalar.ph ], [ %indvars.iv559.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.3394494.us.us.us = phi i32 [ %i.jm, %scalar.ph ], [ %.3394494.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.iu = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv561
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !34
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv559
  store double %i.iv, ptr %i.iw, align 8, !tbaa !34
  %i.ix = getelementptr [8 x i8], ptr %2, i64 %indvars.iv561
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !34
  %i.ja = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv559
  %i.jb = getelementptr i8, ptr %i.ja, i64 8
  store double %i.iz, ptr %i.jb, align 8, !tbaa !34
  %i.jc = getelementptr [8 x i8], ptr %2, i64 %indvars.iv561
  %i.jd = getelementptr i8, ptr %i.jc, i64 16
  %i.je = load double, ptr %i.jd, align 8, !tbaa !34
  %i.jf = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv559
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  store double %i.je, ptr %i.jg, align 8, !tbaa !34
  %i.jh = getelementptr [8 x i8], ptr %2, i64 %indvars.iv561
  %i.ji = getelementptr i8, ptr %i.jh, i64 24
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !34
  %i.jk = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv559
  %i.jl = getelementptr i8, ptr %i.jk, i64 24
  store double %i.jj, ptr %i.jl, align 8, !tbaa !34
  %indvars.iv.next560.3 = add nsw i64 %indvars.iv559, 4 ; 2 uses
  %indvars.iv.next562.3 = add nsw i64 %indvars.iv561, 4 ; 2 uses
  %i.jm = add nuw nsw i32 %.3394494.us.us.us, 4   ; 2 uses
  %exitcond566.not.3 = icmp eq i32 %i.jm, %i.ha
  br i1 %exitcond566.not.3, label %._crit_edge498.us.us.us, label %scalar.ph, !llvm.loop !52

._crit_edge498.us.us.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next560.lcssa = phi i64 [ %i.ij, %middle.block ], [ %indvars.iv.next560.lcssa636.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next560.3, %scalar.ph ]
  %indvars.iv.next562.lcssa = phi i64 [ %i.ii, %middle.block ], [ %indvars.iv.next562.lcssa635.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next562.3, %scalar.ph ]
  %i.jn = trunc nsw i64 %indvars.iv.next562.lcssa to i32
  %i.jo = trunc nsw i64 %indvars.iv.next560.lcssa to i32
  %i.jp = add nsw i32 %i.hq, %i.jo                ; 2 uses
  %i.jq = add nsw i32 %i.hr, %i.jn                ; 2 uses
  %i.jr = add nuw nsw i32 %.3398500.us.us.us, 1   ; 2 uses
  %exitcond567.not = icmp eq i32 %i.jr, %i.hb
  br i1 %exitcond567.not, label %._crit_edge503.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !53

._crit_edge503.split.us.us.us:                    ; preds = %._crit_edge498.us.us.us
  %i.js = add nsw i32 %i.hs, %i.jp
  %i.jt = add nsw i32 %i.ht, %i.jq
  %i.ju = add nuw nsw i32 %.3402510.us.us, 1      ; 2 uses
  %exitcond568.not = icmp eq i32 %i.ju, %i.hc
  br i1 %exitcond568.not, label %.loopexit467, label %.preheader462.us.us, !llvm.loop !54

.loopexit467:                                     ; preds = %._crit_edge479.split.us.us.us, %._crit_edge503.split.us.us.us, %.preheader464.lr.ph, %.preheader465.lr.ph, %bb.i, %bb.n, %.lr.ph523.split
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1 ; 2 uses
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !25
  %i.jw = sext i32 %i.jv to i64
  %i.jx = icmp slt i64 %indvars.iv.next570, %i.jw
  br i1 %i.jx, label %.lr.ph523.splitthread-pre-split, label %._crit_edge524, !llvm.loop !55

._crit_edge524:                                   ; preds = %.loopexit467, %.lr.ph523, %bb.c
  %i.jy = call i32 @hypre_BoxDestroy(ptr noundef %i.ao) #14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge524, %._crit_edge
  %i.jz = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 0
}

declare ptr @hypre_BoxCreate() local_unnamed_addr #2

declare i32 @hypre_IntersectBoxes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_BoxDuplicate(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_StructVectorGetValues(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.i = load i32, ptr %1, align 4, !tbaa !4      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %.04961 = phi double [ undef, %.lr.ph ], [ %.1, %bb.k ] ; 6 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 6 uses
end_hunk_0
begin_hunk_1_@hypre_StructVectorGetValues:bb.a
bb.k:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.j
  %.1 = phi double [ %i.bk, %bb.j ], [ %.04961, %bb.g ], [ %.04961, %bb.f ], [ %.04961, %bb.e ], [ %.04961, %bb.d ], [ %.04961, %bb.c ], [ %.04961, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.049.lcssa = phi double [ undef, %bb.a ], [ %.1, %bb.k ]
  store double %.049.lcssa, ptr %2, align 8, !tbaa !34
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorGetBoxValues(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call ptr @hypre_BoxArrayCreate(i32 noundef %i.h) #14 ; 6 uses
  %i.j = tail call ptr @hypre_BoxCreate() #14     ; 9 uses
  %i.k = load i32, ptr %i.g, align 8, !tbaa !25
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @hypre_IntersectBoxes(ptr noundef %1, ptr noundef %i.s, ptr noundef %i.j) #14 ; 0 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !4
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 6 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !4
  %i.x = load i32, ptr %i.m, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !4
  %i.z = load i32, ptr %i.n, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %i.af = load i32, ptr %i.q, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !25
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge.thread, !llvm.loop !58

._crit_edge.thread:                               ; preds = %bb.b
  %i.ak = tail call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.j) #14 ; 0 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  %i.al = tail call i32 @hypre_BoxDestroy(ptr noundef %i.j) #14 ; 0 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = tail call ptr @hypre_BoxDuplicate(ptr noundef %1) #14 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !25
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph285, label %._crit_edge286

.lr.ph285:                                        ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %._crit_edge286, label %.lr.ph285.split

.lr.ph285.splitthread-pre-split:                  ; preds = %.loopexit257
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !27
  br label %.lr.ph285.split

.lr.ph285.split:                                  ; preds = %.lr.ph285, %.lr.ph285.splitthread-pre-split
  %i.bc = phi ptr [ %.pr, %.lr.ph285.splitthread-pre-split ], [ %i.ba, %.lr.ph285 ] ; 2 uses
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.lr.ph285.splitthread-pre-split ], [ 0, %.lr.ph285 ] ; 4 uses
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv309 ; 5 uses
  %.not248 = icmp eq ptr %i.bc, null
  br i1 %.not248, label %.loopexit257, label %bb.d

bb.d:                                             ; preds = %.lr.ph285.split
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv309 ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv309
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bq ; 6 uses
  %i.bs = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.bt = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bu = load i32, ptr %i.be, align 4, !tbaa !4  ; 2 uses
  %i.bv = sub i32 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4  ; 2 uses
  %i.bz = sub i32 %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = sub nsw i32 %i.cc, %i.by                ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, -1                  ; 2 uses
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cf = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = sub nsw i32 %i.cf, %i.ch
  %i.cj = add nuw nsw i32 %i.cd, 1
  %i.ck = mul nsw i32 %i.ci, %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cl = phi i32 [ %i.ck, %bb.e ], [ 0, %bb.d ]
  %i.cm = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cn = sub i32 %i.cm, %i.bu                    ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1                  ; 2 uses
  %i.cp = add nsw i32 %i.bz, %i.cl
  %i.cq = add i32 %i.cn, 1                        ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cp
  %i.cs = select i1 %i.co, i32 %i.cr, i32 0
  %i.ct = add nsw i32 %i.bv, %i.cs
  %i.cu = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.cv = sub i32 %i.bg, %i.cu
  %i.cw = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.cx = sub i32 %i.bi, %i.cw
  %i.cy = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.cz = sub nsw i32 %i.cy, %i.cw                ; 3 uses
  %i.da = icmp sgt i32 %i.cz, -1                  ; 2 uses
  br i1 %i.da, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.db = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.dc = sub nsw i32 %i.bk, %i.db
  %i.dd = add nuw nsw i32 %i.cz, 1
  %i.de = mul nsw i32 %i.dc, %i.dd
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.df = phi i32 [ %i.de, %bb.g ], [ 0, %bb.f ]
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.dh = load i32, ptr %i.ay, align 4, !tbaa !4  ; 5 uses
  %i.di = load i32, ptr %i.az, align 4, !tbaa !4  ; 3 uses
  %.0212 = call i32 @llvm.smax.i32(i32 %i.dh, i32 %i.dg)
  %.1213 = call i32 @llvm.smax.i32(i32 %i.di, i32 %.0212)
  %i.dj = icmp sgt i32 %.1213, 0
  br i1 %i.dj, label %.preheader256.lr.ph, label %.loopexit257

.preheader256.lr.ph:                              ; preds = %bb.h
  %i.dk = load i32, ptr %i.av, align 4, !tbaa !4
  %i.dl = sub i32 %i.dk, %i.cu                    ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, -1                  ; 2 uses
  %i.dn = add i32 %i.dl, 1                        ; 2 uses
  %i.do = select i1 %i.dm, i32 %i.dn, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.do, %i.dh
  %i.dp = select i1 %i.co, i32 %i.cq, i32 0       ; 3 uses
  %factor.op.mul279 = mul i32 %i.dh, %i.dp
  %i.dq = add nuw nsw i32 %i.cz, 1
  %i.dr = mul nsw i32 %i.do, %i.dq
  %i.ds = select i1 %i.da, i32 %i.dr, i32 0
  %i.dt = add nuw nsw i32 %i.cd, 1
  %i.du = mul nsw i32 %i.dp, %i.dt
  %i.dv = select i1 %i.ce, i32 %i.du, i32 0
  %3 = icmp sgt i32 %i.di, 0
  %4 = icmp sgt i32 %i.dh, 0
  %i.dw = sub i32 %i.dp, %i.dg
  %i.dx = sub i32 %i.do, %i.dg
  %i.dy = sub i32 %i.dv, %factor.op.mul279
  %i.dz = sub i32 %i.ds, %factor.op.mul
  %brmerge.not324 = and i1 %3, %4
  %5 = icmp sgt i32 %i.dg, 0
  %or.cond = and i1 %brmerge.not324, %5
  br i1 %or.cond, label %.preheader255.us.us.preheader, label %.loopexit257

.preheader255.us.us.preheader:                    ; preds = %.preheader256.lr.ph
  %i.ea = add nsw i32 %i.cx, %i.df
  %i.eb = mul nsw i32 %i.dn, %i.ea
  %i.ec = select i1 %i.dm, i32 %i.eb, i32 0
  %i.ed = add nsw i32 %i.cv, %i.ec
  %i.ee = zext nneg i32 %i.dg to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.dg, 6
  %n.vec = and i64 %i.ee, 2147483644              ; 5 uses
  %i.ef = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ee
  br label %.preheader255.us.us

.preheader255.us.us:                              ; preds = %.preheader255.us.us.preheader, %._crit_edge268.split.us.us.us
  %.0216276.us.us = phi i32 [ %i.fy, %._crit_edge268.split.us.us.us ], [ %i.ct, %.preheader255.us.us.preheader ]
  %.0219275.us.us = phi i32 [ %i.fz, %._crit_edge268.split.us.us.us ], [ %i.ed, %.preheader255.us.us.preheader ]
  %.1232274.us.us = phi i32 [ %i.ga, %._crit_edge268.split.us.us.us ], [ 0, %.preheader255.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge263.us.us.us, %.preheader255.us.us
  %.1217267.us.us.us = phi i32 [ %.0216276.us.us, %.preheader255.us.us ], [ %i.fv, %._crit_edge263.us.us.us ]
  %.1220266.us.us.us = phi i32 [ %.0219275.us.us, %.preheader255.us.us ], [ %i.fw, %._crit_edge263.us.us.us ]
  %.1230265.us.us.us = phi i32 [ 0, %.preheader255.us.us ], [ %i.fx, %._crit_edge263.us.us.us ]
  %i.eg = sext i32 %.1217267.us.us.us to i64      ; 5 uses
  %i.eh = sext i32 %.1220266.us.us.us to i64      ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %i.ei = shl nsw i64 %i.eh, 3
  %i.ej = add i64 %i.ei, %i.a
  %i.ek = add nsw i64 %i.bq, %i.eg
  %i.el = shl nsw i64 %i.ek, 3
  %i.em = add i64 %i.el, %i.bm
  %i.en = sub i64 %i.ej, %i.em
  %diff.check = icmp ult i64 %i.en, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eo = add nsw i64 %n.vec, %i.eh               ; 2 uses
  %i.ep = add nsw i64 %n.vec, %i.eg               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.br, i64 %i.eg
  %invariant.gep334 = getelementptr [8 x i8], ptr %2, i64 %i.eh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !34
  %wide.load326 = load <2 x double>, ptr %i.eq, align 8, !tbaa !34
  %gep335 = getelementptr [8 x i8], ptr %invariant.gep334, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %gep335, i64 16
  store <2 x double> %wide.load, ptr %gep335, align 8, !tbaa !34
  store <2 x double> %wide.load326, ptr %i.er, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge263.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv302.ph = phi i64 [ %i.eh, %vector.memcheck ], [ %i.eh, %.preheader.us.us.us ], [ %i.eo, %middle.block ] ; 2 uses
  %indvars.iv300.ph = phi i64 [ %i.eg, %vector.memcheck ], [ %i.eg, %.preheader.us.us.us ], [ %i.ep, %middle.block ] ; 2 uses
  %.1228259.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.ef, %middle.block ] ; 4 uses
  %i.et = sub i32 %i.dg, %.1228259.us.us.us.ph
  %xtraiter = and i32 %i.et, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv302.prol = phi i64 [ %indvars.iv.next303.prol, %scalar.ph.prol ], [ %indvars.iv302.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv300.prol = phi i64 [ %indvars.iv.next301.prol, %scalar.ph.prol ], [ %indvars.iv300.ph, %scalar.ph.preheader ] ; 2 uses
  %.1228259.us.us.us.prol = phi i32 [ %i.ex, %scalar.ph.prol ], [ %.1228259.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv300.prol
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !34
  %i.ew = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv302.prol
  store double %i.ev, ptr %i.ew, align 8, !tbaa !34
  %indvars.iv.next301.prol = add nsw i64 %indvars.iv300.prol, 1 ; 3 uses
  %indvars.iv.next303.prol = add nsw i64 %indvars.iv302.prol, 1 ; 3 uses
  %i.ex = add nuw nsw i32 %.1228259.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !60

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next301.lcssa330.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next301.prol, %scalar.ph.prol ]
  %indvars.iv.next303.lcssa329.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next303.prol, %scalar.ph.prol ]
  %indvars.iv302.unr = phi i64 [ %indvars.iv302.ph, %scalar.ph.preheader ], [ %indvars.iv.next303.prol, %scalar.ph.prol ]
  %indvars.iv300.unr = phi i64 [ %indvars.iv300.ph, %scalar.ph.preheader ], [ %indvars.iv.next301.prol, %scalar.ph.prol ]
  %.1228259.us.us.us.unr = phi i32 [ %.1228259.us.us.us.ph, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %i.ey = sub i32 %.1228259.us.us.us.ph, %i.dg
  %i.ez = icmp ugt i32 %i.ey, -4
  br i1 %i.ez, label %._crit_edge263.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv302 = phi i64 [ %indvars.iv.next303.3, %scalar.ph ], [ %indvars.iv302.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv300 = phi i64 [ %indvars.iv.next301.3, %scalar.ph ], [ %indvars.iv300.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1228259.us.us.us = phi i32 [ %i.fs, %scalar.ph ], [ %.1228259.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv300
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !34
  %i.fc = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv302
  store double %i.fb, ptr %i.fc, align 8, !tbaa !34
  %i.fd = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv300
  %i.fe = getelementptr i8, ptr %i.fd, i64 8
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !34
  %i.fg = getelementptr [8 x i8], ptr %2, i64 %indvars.iv302
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  store double %i.ff, ptr %i.fh, align 8, !tbaa !34
  %i.fi = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv300
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !34
  %i.fl = getelementptr [8 x i8], ptr %2, i64 %indvars.iv302
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  store double %i.fk, ptr %i.fm, align 8, !tbaa !34
  %i.fn = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv300
  %i.fo = getelementptr i8, ptr %i.fn, i64 24
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !34
  %i.fq = getelementptr [8 x i8], ptr %2, i64 %indvars.iv302
  %i.fr = getelementptr i8, ptr %i.fq, i64 24
  store double %i.fp, ptr %i.fr, align 8, !tbaa !34
  %indvars.iv.next301.3 = add nsw i64 %indvars.iv300, 4 ; 2 uses
  %indvars.iv.next303.3 = add nsw i64 %indvars.iv302, 4 ; 2 uses
  %i.fs = add nuw nsw i32 %.1228259.us.us.us, 4   ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.fs, %i.dg
  br i1 %exitcond.not.3, label %._crit_edge263.us.us.us, label %scalar.ph, !llvm.loop !61

._crit_edge263.us.us.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next301.lcssa = phi i64 [ %i.ep, %middle.block ], [ %indvars.iv.next301.lcssa330.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next301.3, %scalar.ph ]
  %indvars.iv.next303.lcssa = phi i64 [ %i.eo, %middle.block ], [ %indvars.iv.next303.lcssa329.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next303.3, %scalar.ph ]
  %i.ft = trunc nsw i64 %indvars.iv.next303.lcssa to i32
  %i.fu = trunc nsw i64 %indvars.iv.next301.lcssa to i32
  %i.fv = add nsw i32 %i.dw, %i.fu                ; 2 uses
  %i.fw = add nsw i32 %i.dx, %i.ft                ; 2 uses
  %i.fx = add nuw nsw i32 %.1230265.us.us.us, 1   ; 2 uses
  %exitcond307.not = icmp eq i32 %i.fx, %i.dh
  br i1 %exitcond307.not, label %._crit_edge268.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !62

._crit_edge268.split.us.us.us:                    ; preds = %._crit_edge263.us.us.us
  %i.fy = add nsw i32 %i.dy, %i.fv
  %i.fz = add nsw i32 %i.dz, %i.fw
  %i.ga = add nuw nsw i32 %.1232274.us.us, 1      ; 2 uses
  %exitcond308.not = icmp eq i32 %i.ga, %i.di
  br i1 %exitcond308.not, label %.loopexit257, label %.preheader255.us.us, !llvm.loop !63

.loopexit257:                                     ; preds = %._crit_edge268.split.us.us.us, %.preheader256.lr.ph, %bb.h, %.lr.ph285.split
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %i.gb = load i32, ptr %i.ap, align 8, !tbaa !25
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next310, %i.gc
  br i1 %i.gd, label %.lr.ph285.splitthread-pre-split, label %._crit_edge286, !llvm.loop !64

._crit_edge286:                                   ; preds = %.loopexit257, %.lr.ph285, %bb.c
  %i.ge = call i32 @hypre_BoxDestroy(ptr noundef %i.ao) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge286, %._crit_edge
  %i.gf = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_StructVectorSetNumGhost(ptr nofree noundef writeonly captures(none) initializes((48, 72)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.b, ptr %i.a, align 4, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.d, ptr %i.e, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.g, ptr %i.h, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.j, ptr %i.k, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.m, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.p, ptr %i.q, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @hypre_StructVectorAssemble(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorSetConstantValues(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge172

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv180 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next181, %._crit_edge.split ] ; 4 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv180 ; 4 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv180 ; 5 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv180
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = call i32 @hypre_BoxGetSize(ptr noundef %i.o, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.z = load i32, ptr %i.o, align 4, !tbaa !4
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !4   ; 2 uses
  %i.ab = sub i32 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %i.ag = sub i32 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sub nsw i32 %i.aj, %i.af                ; 3 uses
  %i.al = icmp sgt i32 %i.ak, -1                  ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = add nuw nsw i32 %i.ak, 1
  %i.as = mul nsw i32 %i.aq, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.at = phi i32 [ %i.as, %bb.c ], [ 0, %bb.b ]
  %i.au = load i32, ptr %i.a, align 4, !tbaa !4   ; 6 uses
  %i.av = load i32, ptr %i.l, align 4, !tbaa !4   ; 4 uses
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !4   ; 3 uses
  %.0127 = call i32 @llvm.smax.i32(i32 %i.av, i32 %i.au)
  %.1128 = call i32 @llvm.smax.i32(i32 %i.aw, i32 %.0127)
  %i.ax = icmp sgt i32 %.1128, 0
  br i1 %i.ax, label %.preheader155.lr.ph, label %._crit_edge.split

.preheader155.lr.ph:                              ; preds = %bb.d
  %i.ay = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.az = sub i32 %i.ay, %i.aa                    ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1                  ; 2 uses
  %i.bb = add i32 %i.az, 1                        ; 2 uses
  %i.bc = select i1 %i.ba, i32 %i.bb, i32 0       ; 3 uses
  %factor.op.mul166 = mul i32 %i.bc, %i.av
  %i.bd = add nuw nsw i32 %i.ak, 1
  %i.be = mul nsw i32 %i.bc, %i.bd
  %i.bf = select i1 %i.al, i32 %i.be, i32 0
  %2 = icmp sgt i32 %i.aw, 0
  %3 = icmp sgt i32 %i.av, 0
  %i.bg = sub i32 %i.bc, %i.au
  %i.bh = sub i32 %i.bf, %factor.op.mul166
  %brmerge.not189 = and i1 %2, %3
  %4 = icmp sgt i32 %i.au, 0
  %or.cond = and i1 %brmerge.not189, %4
  br i1 %or.cond, label %.preheader154.us.us.preheader, label %._crit_edge.split

.preheader154.us.us.preheader:                    ; preds = %.preheader155.lr.ph
  %i.bi = add nsw i32 %i.ag, %i.at
  %i.bj = mul nsw i32 %i.bb, %i.bi
  %i.bk = select i1 %i.ba, i32 %i.bj, i32 0
  %i.bl = add nsw i32 %i.ab, %i.bk
  %i.bm = zext nneg i32 %i.au to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.au, 4
  %n.vec = and i64 %i.bm, 2147483644              ; 4 uses
  %i.bn = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.bm
  br label %.preheader154.us.us

.preheader154.us.us:                              ; preds = %.preheader154.us.us.preheader, %._crit_edge160.split.us.us.us
  %.0131163.us.us = phi i32 [ %i.bx, %._crit_edge160.split.us.us.us ], [ %i.bl, %.preheader154.us.us.preheader ]
  %.1142162.us.us = phi i32 [ %i.by, %._crit_edge160.split.us.us.us ], [ 0, %.preheader154.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader154.us.us
  %.1132159.us.us.us = phi i32 [ %.0131163.us.us, %.preheader154.us.us ], [ %i.bv, %._crit_edge.us.us.us ]
  %.1140158.us.us.us = phi i32 [ 0, %.preheader154.us.us ], [ %i.bw, %._crit_edge.us.us.us ]
  %i.bo = sext i32 %.1132159.us.us.us to i64      ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.us
  %i.bp = add nsw i64 %n.vec, %i.bo               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.x, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> %broadcast.splat, ptr %gep, align 8, !tbaa !34
  store <2 x double> %broadcast.splat, ptr %i.bq, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bo, %.preheader.us.us.us ], [ %i.bp, %middle.block ]
  %.1135156.us.us.us.ph = phi i32 [ 0, %.preheader.us.us.us ], [ %i.bn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1135156.us.us.us = phi i32 [ %i.bt, %scalar.ph ], [ %.1135156.us.us.us.ph, %scalar.ph.preheader ]
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv
  store double %1, ptr %i.bs, align 8, !tbaa !34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bt = add nuw nsw i32 %.1135156.us.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, %i.au
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !66

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bp, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.bu = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.bv = add nsw i32 %i.bg, %i.bu                ; 2 uses
  %i.bw = add nuw nsw i32 %.1140158.us.us.us, 1   ; 2 uses
  %exitcond178.not = icmp eq i32 %i.bw, %i.av
  br i1 %exitcond178.not, label %._crit_edge160.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !67

._crit_edge160.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.bx = add nsw i32 %i.bh, %i.bv
  %i.by = add nuw nsw i32 %.1142162.us.us, 1      ; 2 uses
  %exitcond179.not = icmp eq i32 %i.by, %i.aw
  br i1 %exitcond179.not, label %._crit_edge.split, label %.preheader154.us.us, !llvm.loop !68

._crit_edge.split:                                ; preds = %._crit_edge160.split.us.us.us, %.preheader155.lr.ph, %bb.d
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %i.bz = load i32, ptr %i.f, align 8, !tbaa !25
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next181, %i.ca
  br i1 %i.cb, label %bb.b, label %._crit_edge172, !llvm.loop !69

._crit_edge172:                                   ; preds = %._crit_edge.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorClearGhostValues(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = tail call ptr @hypre_BoxArrayCreate(i32 noundef 0) #14 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph186, label %._crit_edge187

.lr.ph186:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph186, %._crit_edge183
  %indvars.iv196 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next197, %._crit_edge183 ] ; 4 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv196
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv196 ; 6 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv196
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = call i32 @hypre_SubtractBoxes(ptr noundef %i.t, ptr noundef %i.q, ptr noundef %i.f) #14 ; 0 uses
  %i.z = load i32, ptr %i.m, align 8, !tbaa !25
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge183

.lr.ph:                                           ; preds = %bb.b
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ag = shl nsw i64 %i.ab, 3
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ag ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge.split ] ; 2 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv ; 4 uses
  %i.aj = call i32 @hypre_BoxGetSize(ptr noundef %i.ai, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.al = load i32, ptr %i.t, align 4, !tbaa !4   ; 2 uses
  %i.am = sub i32 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !4  ; 2 uses
  %i.aq = sub i32 %i.ao, %i.ap
  %i.ar = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.as = sub nsw i32 %i.ar, %i.ap                ; 3 uses
  %i.at = icmp sgt i32 %i.as, -1                  ; 2 uses
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = add nuw nsw i32 %i.as, 1
  %i.az = mul nsw i32 %i.ax, %i.ay
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ba = phi i32 [ %i.az, %bb.d ], [ 0, %bb.c ]
  %i.bb = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.bc = sub i32 %i.bb, %i.al                    ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1                  ; 2 uses
  %i.be = add nsw i32 %i.aq, %i.ba
  %i.bf = add i32 %i.bc, 1                        ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %i.be
  %i.bh = select i1 %i.bd, i32 %i.bg, i32 0
  %i.bi = add nsw i32 %i.am, %i.bh
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !4   ; 6 uses
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !4   ; 3 uses
  %.0136 = call i32 @llvm.smax.i32(i32 %i.bk, i32 %i.bj)
  %.1137 = call i32 @llvm.smax.i32(i32 %i.bl, i32 %.0136)
  %i.bm = icmp sgt i32 %.1137, 0
  br i1 %i.bm, label %.preheader166.lr.ph, label %._crit_edge.split

.preheader166.lr.ph:                              ; preds = %bb.e
  %i.bn = select i1 %i.bd, i32 %i.bf, i32 0       ; 7 uses
  %factor.op.mul177 = mul i32 %i.bn, %i.bk
  %i.bo = add nuw nsw i32 %i.as, 1
  %i.bp = mul nsw i32 %i.bn, %i.bo
  %i.bq = select i1 %i.at, i32 %i.bp, i32 0
  %1 = icmp sgt i32 %i.bl, 0
  %2 = icmp sgt i32 %i.bk, 0
  %i.br = sub i32 %i.bq, %factor.op.mul177
  %brmerge.not204 = and i1 %1, %2
  %3 = icmp sgt i32 %i.bj, 0
  %or.cond = and i1 %brmerge.not204, %3
  br i1 %or.cond, label %.preheader165.us.us.preheader, label %._crit_edge.split

.preheader165.us.us.preheader:                    ; preds = %.preheader166.lr.ph
  %i.bs = zext nneg i32 %i.bj to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3                ; 5 uses
  %xtraiter = and i32 %i.bk, 3                    ; 3 uses
  %i.bu = icmp ult i32 %i.bk, 4
  %unroll_iter = and i32 %i.bk, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod206 = icmp ne i32 %xtraiter, 0
  br label %.preheader165.us.us

.preheader165.us.us:                              ; preds = %.preheader165.us.us.preheader, %._crit_edge171.split.us.us.us
  %.0140174.us.us = phi i32 [ %i.ck, %._crit_edge171.split.us.us.us ], [ %i.bi, %.preheader165.us.us.preheader ] ; 2 uses
  %.1153173.us.us = phi i32 [ %i.cl, %._crit_edge171.split.us.us.us ], [ 0, %.preheader165.us.us.preheader ]
  br i1 %i.bu, label %.preheader.us.us.us.epil.preheader, label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader165.us.us, %.preheader.us.us.us
  %.1141170.us.us.us = phi i32 [ %i.cg, %.preheader.us.us.us ], [ %.0140174.us.us, %.preheader165.us.us ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.us.us.us ], [ 0, %.preheader165.us.us ]
  %i.bv = sext i32 %.1141170.us.us.us to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep192 = getelementptr i8, ptr %scevgep, i64 %i.bw
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep192, i8 0, i64 %i.bt, i1 false), !tbaa !34
  %i.bx = add i32 %i.bn, %.1141170.us.us.us       ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 3
  %scevgep192.1 = getelementptr i8, ptr %scevgep, i64 %i.bz
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep192.1, i8 0, i64 %i.bt, i1 false), !tbaa !34
  %i.ca = add i32 %i.bn, %i.bx                    ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 3
  %scevgep192.2 = getelementptr i8, ptr %scevgep, i64 %i.cc
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep192.2, i8 0, i64 %i.bt, i1 false), !tbaa !34
  %i.cd = add i32 %i.bn, %i.ca                    ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i64 %i.ce, 3
  %scevgep192.3 = getelementptr i8, ptr %scevgep, i64 %i.cf
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep192.3, i8 0, i64 %i.bt, i1 false), !tbaa !34
  %i.cg = add i32 %i.bn, %i.cd                    ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge171.split.us.us.us.unr-lcssa, label %.preheader.us.us.us, !llvm.loop !70

._crit_edge171.split.us.us.us.unr-lcssa:          ; preds = %.preheader.us.us.us
  br i1 %lcmp.mod.not, label %._crit_edge171.split.us.us.us, label %.preheader.us.us.us.epil.preheader

.preheader.us.us.us.epil.preheader:               ; preds = %._crit_edge171.split.us.us.us.unr-lcssa, %.preheader165.us.us
  %.1141170.us.us.us.epil.init = phi i32 [ %.0140174.us.us, %.preheader165.us.us ], [ %i.cg, %._crit_edge171.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod206)
  br label %.preheader.us.us.us.epil

.preheader.us.us.us.epil:                         ; preds = %.preheader.us.us.us.epil, %.preheader.us.us.us.epil.preheader
  %.1141170.us.us.us.epil = phi i32 [ %.1141170.us.us.us.epil.init, %.preheader.us.us.us.epil.preheader ], [ %i.cj, %.preheader.us.us.us.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.preheader.us.us.us.epil.preheader ], [ %epil.iter.next, %.preheader.us.us.us.epil ]
  %i.ch = sext i32 %.1141170.us.us.us.epil to i64
  %i.ci = shl nsw i64 %i.ch, 3
  %scevgep192.epil = getelementptr i8, ptr %scevgep, i64 %i.ci
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep192.epil, i8 0, i64 %i.bt, i1 false), !tbaa !34
  %i.cj = add i32 %i.bn, %.1141170.us.us.us.epil  ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge171.split.us.us.us, label %.preheader.us.us.us.epil, !llvm.loop !71

._crit_edge171.split.us.us.us:                    ; preds = %.preheader.us.us.us.epil, %._crit_edge171.split.us.us.us.unr-lcssa
  %.lcssa = phi i32 [ %i.cg, %._crit_edge171.split.us.us.us.unr-lcssa ], [ %i.cj, %.preheader.us.us.us.epil ]
  %i.ck = add nsw i32 %i.br, %.lcssa
  %i.cl = add nuw nsw i32 %.1153173.us.us, 1      ; 2 uses
  %exitcond194.not = icmp eq i32 %i.cl, %i.bl
  br i1 %exitcond194.not, label %._crit_edge.split, label %.preheader165.us.us, !llvm.loop !72

._crit_edge.split:                                ; preds = %._crit_edge171.split.us.us.us, %.preheader166.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.m, align 8, !tbaa !25
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.c, label %._crit_edge183, !llvm.loop !73

._crit_edge183:                                   ; preds = %._crit_edge.split, %bb.b
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.cp = load i32, ptr %i.g, align 8, !tbaa !25
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next197, %i.cq
  br i1 %i.cr, label %bb.b, label %._crit_edge187, !llvm.loop !74

._crit_edge187:                                   ; preds = %._crit_edge183, %bb.a
  %i.cs = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.f) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 0
}

declare i32 @hypre_SubtractBoxes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorClearAllValues(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = tail call ptr @hypre_BoxCreate() #14     ; 8 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 1, ptr %i.e, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  store i32 %i.h, ptr %i.b, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.j, align 4, !tbaa !4
  %i.k = call i32 @hypre_BoxSetExtents(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17   ; 6 uses
  %i.n = call i32 @hypre_BoxGetSize(ptr noundef %i.d, ptr noundef nonnull %i.c) #14 ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !4    ; 4 uses
  %i.p = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.q = sub i32 %i.o, %i.p
  %i.r = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %i.u = sub i32 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  %i.z = icmp sgt i32 %i.y, -1                    ; 2 uses
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sub nsw i32 %i.aa, %i.ac
  %i.ae = add nuw nsw i32 %i.y, 1
  %i.af = mul nsw i32 %i.ad, %i.ae
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ag = phi i32 [ %i.af, %bb.b ], [ 0, %bb.a ]
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !4
  %i.ai = sub nsw i32 %i.ah, %i.p                 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1                  ; 3 uses
  %i.ak = add nsw i32 %i.u, %i.ag
  %i.al = add nuw nsw i32 %i.ai, 1                ; 3 uses
  %i.am = mul nsw i32 %i.al, %i.ak
  %i.an = select i1 %i.aj, i32 %i.am, i32 0
  %i.ao = add nsw i32 %i.q, %i.an
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !4   ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 3 uses
  %.0114 = call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.ap)
  %.1 = call i32 @llvm.smax.i32(i32 %i.at, i32 %.0114)
  %i.au = icmp sgt i32 %.1, 0
  br i1 %i.au, label %.preheader140.lr.ph, label %._crit_edge.split

.preheader140.lr.ph:                              ; preds = %bb.c
  %i.av = mul nsw i32 %i.al, %i.r
  %i.aw = select i1 %i.aj, i32 %i.av, i32 0       ; 2 uses
  %factor.op.mul153 = mul i32 %i.aw, %i.ar
  %i.ax = load i32, ptr %i.f, align 4
  %i.ay = mul nsw i32 %i.al, %i.ax
  %i.az = select i1 %i.aj, i32 %i.ay, i32 0
  %i.ba = add nuw nsw i32 %i.y, 1
  %i.bb = mul nsw i32 %i.az, %i.ba
  %i.bc = select i1 %i.z, i32 %i.bb, i32 0
  %i.bd = mul i32 %i.ap, %i.o
  %1 = icmp sgt i32 %i.at, 0
  %2 = icmp sgt i32 %i.ar, 0
  %i.be = sub i32 %i.aw, %i.bd
  %i.bf = sub i32 %i.bc, %factor.op.mul153
  %brmerge.not170 = and i1 %1, %2
  %3 = icmp sgt i32 %i.ap, 0
  %or.cond = and i1 %brmerge.not170, %3
  br i1 %or.cond, label %.preheader139.us.us.preheader, label %._crit_edge.split

.preheader139.us.us.preheader:                    ; preds = %.preheader140.lr.ph
  %i.bg = sext i32 %i.o to i64                    ; 5 uses
  %i.bh = zext nneg i32 %i.ap to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.ap, 3
  %ident.check.not = icmp eq i32 %i.o, 1
  %or.cond172 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.bh, 2147483644              ; 4 uses
  %i.bi = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.bh
  br label %.preheader139.us.us

.preheader139.us.us:                              ; preds = %.preheader139.us.us.preheader, %._crit_edge145.split.us.us.us
  %.0117149.us.us = phi i32 [ %i.ca, %._crit_edge145.split.us.us.us ], [ %i.ao, %.preheader139.us.us.preheader ]
  %.1127148.us.us = phi i32 [ %i.cb, %._crit_edge145.split.us.us.us ], [ 0, %.preheader139.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader139.us.us
  %.1118144.us.us.us = phi i32 [ %.0117149.us.us, %.preheader139.us.us ], [ %i.by, %._crit_edge.us.us.us ]
  %.1122143.us.us.us = phi i32 [ 0, %.preheader139.us.us ], [ %i.bz, %._crit_edge.us.us.us ]
  %i.bj = sext i32 %.1118144.us.us.us to i64      ; 3 uses
  br i1 %or.cond172, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.preheader.us.us.us
  %i.bk = add nsw i64 %n.vec, %i.bj               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.m, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> zeroinitializer, ptr %gep, align 8, !tbaa !34
  store <2 x double> zeroinitializer, ptr %i.bl, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bj, %.preheader.us.us.us ], [ %i.bk, %middle.block ] ; 2 uses
  %.1120141.us.us.us.ph = phi i32 [ 0, %.preheader.us.us.us ], [ %i.bi, %middle.block ] ; 4 uses
  %i.bn = sub i32 %i.ap, %.1120141.us.us.us.ph
  %xtraiter = and i32 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1120141.us.us.us.prol = phi i32 [ %i.bp, %scalar.ph.prol ], [ %.1120141.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.prol
  store double 0.000000e+00, ptr %i.bo, align 8, !tbaa !34
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, %i.bg ; 3 uses
  %i.bp = add nuw nsw i32 %.1120141.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !76

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa173.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1120141.us.us.us.unr = phi i32 [ %.1120141.us.us.us.ph, %scalar.ph.preheader ], [ %i.bp, %scalar.ph.prol ]
  %i.bq = sub i32 %.1120141.us.us.us.ph, %i.ap
  %i.br = icmp ugt i32 %i.bq, -4
  br i1 %i.br, label %._crit_edge.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.1120141.us.us.us = phi i32 [ %i.bw, %scalar.ph ], [ %.1120141.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.bs, align 8, !tbaa !34
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bg ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.bt, align 8, !tbaa !34
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.bg ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next.1
  store double 0.000000e+00, ptr %i.bu, align 8, !tbaa !34
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %i.bg ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next.2
  store double 0.000000e+00, ptr %i.bv, align 8, !tbaa !34
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.next.2, %i.bg ; 2 uses
  %i.bw = add nuw nsw i32 %.1120141.us.us.us, 4   ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.bw, %i.ap
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !77

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bk, %middle.block ], [ %indvars.iv.next.lcssa173.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.3, %scalar.ph ]
  %i.bx = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.by = add nsw i32 %i.be, %i.bx                ; 2 uses
  %i.bz = add nuw nsw i32 %.1122143.us.us.us, 1   ; 2 uses
  %exitcond162.not = icmp eq i32 %i.bz, %i.ar
  br i1 %exitcond162.not, label %._crit_edge145.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !78

._crit_edge145.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.ca = add nsw i32 %i.bf, %i.by
  %i.cb = add nuw nsw i32 %.1127148.us.us, 1      ; 2 uses
  %exitcond163.not = icmp eq i32 %i.cb, %i.at
  br i1 %exitcond163.not, label %._crit_edge.split, label %.preheader139.us.us, !llvm.loop !79

._crit_edge.split:                                ; preds = %._crit_edge145.split.us.us.us, %.preheader140.lr.ph, %bb.c
  %i.cc = call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.d) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 0
}

declare i32 @hypre_BoxSetExtents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @hypre_StructVectorGetMigrateCommPkg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca [3 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i32 1, ptr %i.e, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.g, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = call i32 @hypre_CreateCommInfoFromGrids(ptr noundef %i.i, ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #14 ; 0 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.u = load i32, ptr %0, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = call ptr @hypre_CommPkgCreate(ptr noundef %i.m, ptr noundef %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.t, i32 noundef 1, i32 noundef %i.u, ptr noundef nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.x
}

declare i32 @hypre_CreateCommInfoFromGrids(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_CommPkgCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorMigrate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = call i32 @hypre_InitializeCommunication(ptr noundef %0, ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.h = call i32 @hypre_FinalizeCommunication(ptr noundef %i.g) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 0
}

declare i32 @hypre_InitializeCommunication(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeCommunication(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorPrint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = load i32, ptr %1, align 8, !tbaa !8
  %i.d = call i32 @hypre_MPI_Comm_rank(i32 noundef %i.c, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !4
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, i32 noundef %i.e) #14 ; 0 uses
  %i.g = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1) ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %i.a) ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_1
