loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@uriToStringEngineA:bb.a
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %sext = shl i64 %i.m, 32
  %i.o = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.h, i64 %i.o, i1 false)
  %.not501.not = icmp sgt i32 %i.f, %i.n
  br i1 %.not501.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.p = add nsw i32 %i.n, 1
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.o
  store i8 58, ptr %i.q, align 1
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not502 = icmp eq ptr %3, null
  br i1 %.not502, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.q:                                             ; preds = %.thread, %bb.n
  %.3382 = phi i32 [ 0, %.thread ], [ %i.p, %bb.n ] ; 3 uses
  %i.r = tail call i32 @uriIsHostSetA(ptr noundef nonnull %1) #4
  %.not503 = icmp eq i32 %i.r, 0
  br i1 %.not503, label %bb.cw, label %bb.r

.thread760:                                       ; preds = %bb.i
  %i.s = tail call i32 @uriIsHostSetA(ptr noundef nonnull %1) #4
  %.not503762 = icmp eq i32 %i.s, 0
  br i1 %.not503762, label %bb.cw, label %.thread764

.thread582:                                       ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.g to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %4, align 4, !tbaa !3
  %i.aa = tail call i32 @uriIsHostSetA(ptr noundef nonnull %1) #4
  %.not503584 = icmp eq i32 %i.aa, 0
  br i1 %.not503584, label %bb.cw, label %.thread764

bb.r:                                             ; preds = %bb.q
  %i.ab = add nsw i32 %.3382, 2                   ; 4 uses
  %.not504.not = icmp slt i32 %i.ab, %2
  br i1 %.not504.not, label %.thread589, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not505 = icmp eq ptr %3, null
  br i1 %.not505, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.thread764:                                       ; preds = %.thread760, %.thread582
  %i.ac = load i32, ptr %4, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 2                    ; 2 uses
  store i32 %i.ad, ptr %4, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %.not506 = icmp eq ptr %i.af, null
  br i1 %.not506, label %bb.ac, label %bb.ab

.thread589:                                       ; preds = %bb.r
  %i.ag = sext i32 %.3382 to i64
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag
  store i16 12079, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18 ; 3 uses
  %.not506591 = icmp eq ptr %i.aj, null
  br i1 %.not506591, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %.thread589
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add nsw i32 %i.ab, %i.ap                ; 4 uses
  %.not507.not = icmp slt i32 %i.aq, %2
  br i1 %.not507.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ar = sext i32 %i.ab to i64
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %sext509 = shl i64 %i.ao, 32
  %i.at = ashr exact i64 %sext509, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %i.aj, i64 %i.at, i1 false)
  %.not510.not = icmp slt i32 %i.aq, %i.f
  br i1 %.not510.not, label %bb.y, label %bb.z

bb.w:                                             ; preds = %bb.u
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not508 = icmp eq ptr %3, null
  br i1 %.not508, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.y:                                             ; preds = %bb.v
  %i.au = add nsw i32 %i.aq, 1
  %i.av = sext i32 %i.aq to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  store i8 64, ptr %i.aw, align 1
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not511 = icmp eq ptr %3, null
  br i1 %.not511, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.ab:                                            ; preds = %.thread764
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.af to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, 1
  %i.be = add nsw i32 %i.bd, %i.ad
  store i32 %i.be, ptr %4, align 4, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %.thread589, %bb.ab, %bb.y, %.thread764
  %.7386 = phi i32 [ 0, %.thread764 ], [ %i.au, %bb.y ], [ 0, %bb.ab ], [ %i.ab, %.thread589 ] ; 15 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 6 uses
  %.not512 = icmp eq ptr %i.bg, null
  br i1 %.not512, label %bb.be, label %.preheader680

.preheader680:                                    ; preds = %bb.ac
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  br i1 %i.c, label %.preheader680.split.us, label %.preheader680.split.preheader

.preheader680.split.preheader:                    ; preds = %.preheader680
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !16  ; 8 uses
  %i.bk = icmp ugt i8 %i.bj, 99                   ; 2 uses
  %i.bl = icmp ugt i8 %i.bj, 9                    ; 2 uses
  %i.bm = select i1 %i.bl, i32 2, i32 1
  %i.bn = select i1 %i.bk, i32 3, i32 %i.bm       ; 2 uses
  %i.bo = add nsw i32 %i.bn, %.7386               ; 4 uses
  %.not534.not = icmp slt i32 %i.bo, %2
  br i1 %.not534.not, label %bb.ad, label %bb.ai

.preheader680.split.us:                           ; preds = %.preheader680
  %.promoted = load i32, ptr %4, align 4, !tbaa !3
  %i.bp = load i8, ptr %i.bg, align 1, !tbaa !16  ; 2 uses
  %i.bq = icmp ugt i8 %i.bp, 99
  %i.br = icmp ugt i8 %i.bp, 9
  %i.bs = select i1 %i.br, i32 3, i32 2
  %i.bt = select i1 %i.bq, i32 4, i32 %i.bs
  %i.bu = add nsw i32 %i.bt, %.promoted           ; 2 uses
  store i32 %i.bu, ptr %4, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16  ; 2 uses
  %i.bx = icmp ugt i8 %i.bw, 99
  %i.by = icmp ugt i8 %i.bw, 9
  %i.bz = select i1 %i.by, i32 3, i32 2
  %i.ca = select i1 %i.bx, i32 4, i32 %i.bz
  %i.cb = add nsw i32 %i.ca, %i.bu                ; 2 uses
  store i32 %i.cb, ptr %4, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16  ; 2 uses
  %i.ce = icmp ugt i8 %i.cd, 99
  %i.cf = icmp ugt i8 %i.cd, 9
  %i.cg = select i1 %i.cf, i32 3, i32 2
  %i.ch = select i1 %i.ce, i32 4, i32 %i.cg
  %i.ci = add nsw i32 %i.ch, %i.cb                ; 2 uses
  store i32 %i.ci, ptr %4, align 4, !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16  ; 2 uses
  %i.cl = icmp ugt i8 %i.ck, 99
  %i.cm = icmp ugt i8 %i.ck, 9
  %i.cn = select i1 %i.cm, i32 2, i32 1
  %i.co = select i1 %i.cl, i32 3, i32 %i.cn
  %i.cp = add nsw i32 %i.co, %i.ci
  store i32 %i.cp, ptr %4, align 4, !tbaa !3
  br label %.thread599

bb.ad:                                            ; preds = %.preheader680.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.bk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %5 = udiv i8 %i.bj, 100
  %6 = or disjoint i8 %5, 48
  store i8 %6, ptr %i.a, align 1, !tbaa !16
  %i.cq = urem i8 %i.bj, 100
  %i.cr = udiv i8 %i.cq, 10
  %i.cs = or disjoint i8 %i.cr, 48
  store i8 %i.cs, ptr %i.bh, align 1, !tbaa !16
  %i.ct = urem i8 %i.bj, 10
  %i.cu = or disjoint i8 %i.ct, 48
  store i8 %i.cu, ptr %i.bi, align 1, !tbaa !16
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = udiv i8 %i.bj, 10
  %i.cw = or disjoint i8 %i.cv, 48
  store i8 %i.cw, ptr %i.a, align 1, !tbaa !16
  %i.cx = urem i8 %i.bj, 10
  %i.cy = or disjoint i8 %i.cx, 48
  store i8 %i.cy, ptr %i.bh, align 1, !tbaa !16
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.cz = or disjoint i8 %i.bj, 48
  store i8 %i.cz, ptr %i.a, align 1, !tbaa !16
  br label %bb.ak

bb.ai:                                            ; preds = %.preheader680.split.3, %.preheader680.split.2, %.preheader680.split.1, %.preheader680.split.preheader
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not535 = icmp eq ptr %3, null
  br i1 %.not535, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.ak:                                            ; preds = %bb.ae, %bb.ah, %bb.ag
  %i.da = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  store i8 0, ptr %i.db, align 1, !tbaa !16
  %i.dc = sext i32 %.7386 to i64
  %i.dd = getelementptr inbounds i8, ptr %0, i64 %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dd, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.da, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not537.not = icmp slt i32 %i.bo, %i.f
  br i1 %.not537.not, label %.preheader680.split.1, label %bb.al

bb.al:                                            ; preds = %bb.ay, %bb.as, %bb.ak
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not538 = icmp eq ptr %3, null
  br i1 %.not538, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.preheader680.split.1:                            ; preds = %bb.ak
  %i.de = add nsw i32 %i.bo, 1                    ; 2 uses
  %i.df = sext i32 %i.bo to i64
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.df
  store i8 46, ptr %i.dg, align 1
  %i.dh = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !16  ; 8 uses
  %i.dk = icmp ugt i8 %i.dj, 99                   ; 2 uses
  %i.dl = icmp ugt i8 %i.dj, 9                    ; 2 uses
  %i.dm = select i1 %i.dl, i32 2, i32 1
  %i.dn = select i1 %i.dk, i32 3, i32 %i.dm       ; 2 uses
  %i.do = add nsw i32 %i.dn, %i.de                ; 4 uses
  %.not534.not.1 = icmp slt i32 %i.do, %2
  br i1 %.not534.not.1, label %bb.an, label %bb.ai

bb.an:                                            ; preds = %.preheader680.split.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.dk, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %i.dl, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dp = or disjoint i8 %i.dj, 48
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !16
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.dq = udiv i8 %i.dj, 10
  %i.dr = or disjoint i8 %i.dq, 48
  store i8 %i.dr, ptr %i.a, align 1, !tbaa !16
  %i.ds = urem i8 %i.dj, 10
  %i.dt = or disjoint i8 %i.ds, 48
  store i8 %i.dt, ptr %i.bh, align 1, !tbaa !16
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %7 = udiv i8 %i.dj, 100
  %8 = or disjoint i8 %7, 48
  store i8 %8, ptr %i.a, align 1, !tbaa !16
  %i.du = urem i8 %i.dj, 100
  %i.dv = udiv i8 %i.du, 10
  %i.dw = or disjoint i8 %i.dv, 48
  store i8 %i.dw, ptr %i.bh, align 1, !tbaa !16
  %i.dx = urem i8 %i.dj, 10
  %i.dy = or disjoint i8 %i.dx, 48
  store i8 %i.dy, ptr %i.bi, align 1, !tbaa !16
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.dz = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dz
  store i8 0, ptr %i.ea, align 1, !tbaa !16
  %i.eb = sext i32 %i.de to i64
  %i.ec = getelementptr inbounds i8, ptr %0, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ec, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.dz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not537.not.1 = icmp slt i32 %i.do, %i.f
  br i1 %.not537.not.1, label %.preheader680.split.2, label %bb.al

.preheader680.split.2:                            ; preds = %bb.as
  %i.ed = add nsw i32 %i.do, 1                    ; 2 uses
  %i.ee = sext i32 %i.do to i64
  %i.ef = getelementptr inbounds i8, ptr %0, i64 %i.ee
  store i8 46, ptr %i.ef, align 1
  %i.eg = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16  ; 8 uses
  %i.ej = icmp ugt i8 %i.ei, 99                   ; 2 uses
  %i.ek = icmp ugt i8 %i.ei, 9                    ; 2 uses
  %i.el = select i1 %i.ek, i32 2, i32 1
  %i.em = select i1 %i.ej, i32 3, i32 %i.el       ; 2 uses
  %i.en = add nsw i32 %i.em, %i.ed                ; 4 uses
  %.not534.not.2 = icmp slt i32 %i.en, %2
  br i1 %.not534.not.2, label %bb.at, label %bb.ai

bb.at:                                            ; preds = %.preheader680.split.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.ej, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.ek, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = or disjoint i8 %i.ei, 48
  store i8 %i.eo, ptr %i.a, align 1, !tbaa !16
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.ep = udiv i8 %i.ei, 10
  %i.eq = or disjoint i8 %i.ep, 48
  store i8 %i.eq, ptr %i.a, align 1, !tbaa !16
  %i.er = urem i8 %i.ei, 10
  %i.es = or disjoint i8 %i.er, 48
  store i8 %i.es, ptr %i.bh, align 1, !tbaa !16
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %9 = udiv i8 %i.ei, 100
  %10 = or disjoint i8 %9, 48
  store i8 %10, ptr %i.a, align 1, !tbaa !16
  %i.et = urem i8 %i.ei, 100
  %i.eu = udiv i8 %i.et, 10
  %i.ev = or disjoint i8 %i.eu, 48
  store i8 %i.ev, ptr %i.bh, align 1, !tbaa !16
  %i.ew = urem i8 %i.ei, 10
  %i.ex = or disjoint i8 %i.ew, 48
  store i8 %i.ex, ptr %i.bi, align 1, !tbaa !16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax
  %i.ey = zext nneg i32 %i.em to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ey
  store i8 0, ptr %i.ez, align 1, !tbaa !16
  %i.fa = sext i32 %i.ed to i64
  %i.fb = getelementptr inbounds i8, ptr %0, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fb, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.ey, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not537.not.2 = icmp slt i32 %i.en, %i.f
  br i1 %.not537.not.2, label %.preheader680.split.3, label %bb.al

.preheader680.split.3:                            ; preds = %bb.ay
  %i.fc = add nsw i32 %i.en, 1                    ; 2 uses
  %i.fd = sext i32 %i.en to i64
  %i.fe = getelementptr inbounds i8, ptr %0, i64 %i.fd
  store i8 46, ptr %i.fe, align 1
  %i.ff = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !16  ; 8 uses
  %i.fi = icmp ugt i8 %i.fh, 99                   ; 2 uses
  %i.fj = icmp ugt i8 %i.fh, 9                    ; 2 uses
  %i.fk = select i1 %i.fj, i32 2, i32 1
  %i.fl = select i1 %i.fi, i32 3, i32 %i.fk       ; 2 uses
  %i.fm = add nsw i32 %i.fl, %i.fc                ; 2 uses
  %.not534.not.3 = icmp slt i32 %i.fm, %2
  br i1 %.not534.not.3, label %bb.az, label %bb.ai

bb.az:                                            ; preds = %.preheader680.split.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.fi, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.fj, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fn = or disjoint i8 %i.fh, 48
  store i8 %i.fn, ptr %i.a, align 1, !tbaa !16
  br label %.thread599.loopexit698

bb.bc:                                            ; preds = %bb.ba
  %i.fo = udiv i8 %i.fh, 10
  %i.fp = or disjoint i8 %i.fo, 48
  store i8 %i.fp, ptr %i.a, align 1, !tbaa !16
  %i.fq = urem i8 %i.fh, 10
  %i.fr = or disjoint i8 %i.fq, 48
  store i8 %i.fr, ptr %i.bh, align 1, !tbaa !16
  br label %.thread599.loopexit698

bb.bd:                                            ; preds = %bb.az
  %11 = udiv i8 %i.fh, 100
  %12 = or disjoint i8 %11, 48
  store i8 %12, ptr %i.a, align 1, !tbaa !16
  %i.fs = urem i8 %i.fh, 100
  %i.ft = udiv i8 %i.fs, 10
  %i.fu = or disjoint i8 %i.ft, 48
  store i8 %i.fu, ptr %i.bh, align 1, !tbaa !16
  %i.fv = urem i8 %i.fh, 10
  %i.fw = or disjoint i8 %i.fv, 48
  store i8 %i.fw, ptr %i.bi, align 1, !tbaa !16
  br label %.thread599.loopexit698

.thread599.loopexit698:                           ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.fx = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fx
  store i8 0, ptr %i.fy, align 1, !tbaa !16
  %i.fz = sext i32 %i.fc to i64
  %i.ga = getelementptr inbounds i8, ptr %0, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.fx, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread599

bb.be:                                            ; preds = %bb.ac
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !21
  %.not513 = icmp eq ptr %i.gc, null
  br i1 %.not513, label %bb.bt, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.c, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not526.not = icmp slt i32 %.7386, %i.f
  br i1 %.not526.not, label %.split.preheader, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not527 = icmp eq ptr %3, null
  br i1 %.not527, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.split.preheader:                                 ; preds = %bb.bg
  %i.gd = add nsw i32 %.7386, 1
  %i.ge = sext i32 %.7386 to i64
  %i.gf = getelementptr inbounds i8, ptr %0, i64 %i.ge
  store i8 91, ptr %i.gf, align 1
  br label %.split

.split:                                           ; preds = %.split.preheader, %bb.bo
  %indvars.iv = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next, %bb.bo ] ; 4 uses
  %.13392690 = phi i32 [ %i.gd, %.split.preheader ], [ %.16395.ph, %bb.bo ] ; 3 uses
  %i.gg = add nsw i32 %.13392690, 2               ; 4 uses
  %.not530.not = icmp slt i32 %i.gg, %2
  br i1 %.not530.not, label %.thread601, label %bb.bj

bb.bj:                                            ; preds = %.split
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not531 = icmp eq ptr %3, null
  br i1 %.not531, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.thread601:                                       ; preds = %.split
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !16
  %i.gk = zext i8 %i.gj to i32                    ; 2 uses
  %i.gl = lshr i32 %i.gk, 4
  %i.gm = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.gl, i32 noundef 0) #4
  %i.gn = and i32 %i.gk, 15
  %i.go = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.gn, i32 noundef 0) #4
  %i.gp = sext i32 %.13392690 to i64
  %i.gq = getelementptr inbounds i8, ptr %0, i64 %i.gp ; 2 uses
  store i8 %i.gm, ptr %i.gq, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 %i.go, ptr %.sroa.4.0..sroa_idx, align 1
  %i.gr = trunc i64 %indvars.iv to i1
  %i.gs = icmp ne i64 %indvars.iv, 15
  %or.cond15603 = and i1 %i.gs, %i.gr
  br i1 %or.cond15603, label %.thread605, label %bb.bo

.thread605:                                       ; preds = %.thread601
  %.not532.not = icmp slt i32 %i.gg, %i.f
  br i1 %.not532.not, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread605
  %i.gt = add nsw i32 %.13392690, 3
  %i.gu = sext i32 %i.gg to i64
  %i.gv = getelementptr inbounds i8, ptr %0, i64 %i.gu
  store i8 58, ptr %i.gv, align 1
  br label %bb.bo

bb.bm:                                            ; preds = %.thread605
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not533 = icmp eq ptr %3, null
  br i1 %.not533, label %.critedge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.bo:                                            ; preds = %bb.bl, %.thread601
  %.16395.ph = phi i32 [ %i.gg, %.thread601 ], [ %i.gt, %bb.bl ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split692, label %.split, !llvm.loop !22

.split692:                                        ; preds = %bb.bo
  %.not528.not = icmp slt i32 %.16395.ph, %i.f
  br i1 %.not528.not, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.split692
  %i.gw = add nsw i32 %.16395.ph, 1
  %i.gx = sext i32 %.16395.ph to i64
  %i.gy = getelementptr inbounds i8, ptr %0, i64 %i.gx
  store i8 93, ptr %i.gy, align 1
  br label %.thread599

bb.bq:                                            ; preds = %.split692
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not529 = icmp eq ptr %3, null
  br i1 %.not529, label %.critedge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.bs:                                            ; preds = %bb.bf
  %i.gz = load i32, ptr %4, align 4, !tbaa !3
  %i.ha = add nsw i32 %i.gz, 41
  store i32 %i.ha, ptr %4, align 4, !tbaa !3
  br label %.thread599

bb.bt:                                            ; preds = %bb.be
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !24 ; 2 uses
  %.not514 = icmp eq ptr %i.hc, null
  br i1 %.not514, label %bb.cg, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !25
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 2 uses
  %i.hi = trunc i64 %i.hh to i32                  ; 2 uses
  br i1 %i.c, label %bb.cf, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hj = add nsw i32 %.7386, 1                   ; 2 uses
  %.not519.not = icmp slt i32 %.7386, %i.f
  br i1 %.not519.not, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hk = sext i32 %.7386 to i64
  %i.hl = getelementptr inbounds i8, ptr %0, i64 %i.hk
  store i8 91, ptr %i.hl, align 1
  %i.hm = add nsw i32 %i.hj, %i.hi                ; 4 uses
  %.not521.not = icmp slt i32 %i.hm, %2
  br i1 %.not521.not, label %bb.bz, label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not520 = icmp eq ptr %3, null
  br i1 %.not520, label %.critedge, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.bz:                                            ; preds = %bb.bw
  %i.hn = sext i32 %i.hj to i64
  %i.ho = getelementptr inbounds i8, ptr %0, i64 %i.hn
  %i.hp = load ptr, ptr %i.hb, align 8, !tbaa !24
  %sext523 = shl i64 %i.hh, 32
  %i.hq = ashr exact i64 %sext523, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ho, ptr align 1 %i.hp, i64 %i.hq, i1 false)
  %.not524.not = icmp slt i32 %i.hm, %i.f
  br i1 %.not524.not, label %bb.cc, label %bb.cd

bb.ca:                                            ; preds = %bb.bw
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not522 = icmp eq ptr %3, null
  br i1 %.not522, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.cc:                                            ; preds = %bb.bz
  %i.hr = add nsw i32 %i.hm, 1
  %i.hs = sext i32 %i.hm to i64
  %i.ht = getelementptr inbounds i8, ptr %0, i64 %i.hs
  store i8 93, ptr %i.ht, align 1
  br label %.thread599

bb.cd:                                            ; preds = %bb.bz
end_hunk_0
begin_hunk_1_@uriToStringEngineW:bb.a
bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %2, 1
  br i1 %i.e, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not571 = icmp eq ptr %3, null
  br i1 %.not571, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.f = add nsw i32 %2, -1                       ; 15 uses
  br i1 %i.c, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.g = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %.not498 = icmp eq ptr %i.g, null
  br i1 %.not498, label %.thread770, label %.thread582

.thread:                                          ; preds = %bb.h
  store i32 0, ptr %0, align 4, !tbaa !3
  %i.h = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  %.not498577 = icmp eq ptr %i.h, null
  br i1 %.not498577, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %.not499.not = icmp sgt i32 %2, %i.o
  br i1 %.not499.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not500 = icmp eq ptr %3, null
  br i1 %.not500, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %sext = shl i64 %i.m, 30                        ; 2 uses
  %i.p = ashr exact i64 %sext, 30
  %i.q = and i64 %i.p, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.h, i64 %i.q, i1 false)
  %.not501.not = icmp sgt i32 %i.f, %i.o
  br i1 %.not501.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.r = add nsw i32 %i.o, 1
  %i.s = ashr i64 %sext, 32
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  store i32 58, ptr %i.t, align 4
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not502 = icmp eq ptr %3, null
  br i1 %.not502, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.q:                                             ; preds = %.thread, %bb.n
  %.3382 = phi i32 [ 0, %.thread ], [ %i.r, %bb.n ] ; 3 uses
  %i.u = tail call i32 @uriIsHostSetW(ptr noundef nonnull %1) #4
  %.not503 = icmp eq i32 %i.u, 0
  br i1 %.not503, label %bb.cw, label %bb.r

.thread770:                                       ; preds = %bb.i
  %i.v = tail call i32 @uriIsHostSetW(ptr noundef nonnull %1) #4
  %.not503772 = icmp eq i32 %i.v, 0
  br i1 %.not503772, label %bb.cw, label %.thread774

.thread582:                                       ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.g to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %4, align 4, !tbaa !3
  %i.ae = tail call i32 @uriIsHostSetW(ptr noundef nonnull %1) #4
  %.not503584 = icmp eq i32 %i.ae, 0
  br i1 %.not503584, label %bb.cw, label %.thread774

bb.r:                                             ; preds = %bb.q
  %i.af = add nsw i32 %.3382, 2                   ; 4 uses
  %.not504.not = icmp slt i32 %i.af, %2
  br i1 %.not504.not, label %.thread589, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not505 = icmp eq ptr %3, null
  br i1 %.not505, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.thread774:                                       ; preds = %.thread770, %.thread582
  %i.ag = load i32, ptr %4, align 4, !tbaa !3
  %i.ah = add nsw i32 %i.ag, 2                    ; 2 uses
  store i32 %i.ah, ptr %4, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %.not506 = icmp eq ptr %i.aj, null
  br i1 %.not506, label %bb.ac, label %bb.ab

.thread589:                                       ; preds = %bb.r
  %i.ak = sext i32 %.3382 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ak
  store i64 201863462959, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48 ; 3 uses
  %.not506591 = icmp eq ptr %i.an, null
  br i1 %.not506591, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %.thread589
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = lshr exact i64 %i.as, 2
  %i.au = trunc i64 %i.at to i32
  %i.av = add nsw i32 %i.af, %i.au                ; 4 uses
  %.not507.not = icmp slt i32 %i.av, %2
  br i1 %.not507.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aw = sext i32 %i.af to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw
  %sext509 = shl i64 %i.as, 30
  %i.ay = ashr exact i64 %sext509, 30
  %i.az = and i64 %i.ay, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ax, ptr nonnull align 4 %i.an, i64 %i.az, i1 false)
  %.not510.not = icmp slt i32 %i.av, %i.f
  br i1 %.not510.not, label %bb.y, label %bb.z

bb.w:                                             ; preds = %bb.u
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not508 = icmp eq ptr %3, null
  br i1 %.not508, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.y:                                             ; preds = %bb.v
  %i.ba = add nsw i32 %i.av, 1
  %i.bb = sext i32 %i.av to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb
  store i32 64, ptr %i.bc, align 4
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not511 = icmp eq ptr %3, null
  br i1 %.not511, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.ab:                                            ; preds = %.thread774
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !49
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.aj to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 2
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = add nsw i32 %i.bk, %i.ah
  store i32 %i.bl, ptr %4, align 4, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %.thread589, %bb.ab, %bb.y, %.thread774
  %.7386 = phi i32 [ 0, %.thread774 ], [ %i.ba, %bb.y ], [ 0, %bb.ab ], [ %i.af, %.thread589 ] ; 15 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50 ; 6 uses
  %.not512 = icmp eq ptr %i.bn, null
  br i1 %.not512, label %bb.be, label %.preheader690

.preheader690:                                    ; preds = %bb.ac
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br i1 %i.c, label %.preheader690.split.us, label %.preheader690.split.preheader

.preheader690.split.preheader:                    ; preds = %.preheader690
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !16  ; 8 uses
  %i.bq = icmp ugt i8 %i.bp, 99                   ; 2 uses
  %i.br = icmp ugt i8 %i.bp, 9                    ; 2 uses
  %i.bs = select i1 %i.br, i32 2, i32 1
  %i.bt = select i1 %i.bq, i32 3, i32 %i.bs       ; 2 uses
  %i.bu = add nsw i32 %i.bt, %.7386               ; 4 uses
  %.not534.not = icmp slt i32 %i.bu, %2
  br i1 %.not534.not, label %bb.ad, label %bb.ai

.preheader690.split.us:                           ; preds = %.preheader690
  %.promoted = load i32, ptr %4, align 4, !tbaa !3
  %i.bv = load i8, ptr %i.bn, align 1, !tbaa !16  ; 2 uses
  %i.bw = icmp ugt i8 %i.bv, 99
  %i.bx = icmp ugt i8 %i.bv, 9
  %i.by = select i1 %i.bx, i32 3, i32 2
  %i.bz = select i1 %i.bw, i32 4, i32 %i.by
  %i.ca = add nsw i32 %i.bz, %.promoted           ; 2 uses
  store i32 %i.ca, ptr %4, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16  ; 2 uses
  %i.cd = icmp ugt i8 %i.cc, 99
  %i.ce = icmp ugt i8 %i.cc, 9
  %i.cf = select i1 %i.ce, i32 3, i32 2
  %i.cg = select i1 %i.cd, i32 4, i32 %i.cf
  %i.ch = add nsw i32 %i.cg, %i.ca                ; 2 uses
  store i32 %i.ch, ptr %4, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16  ; 2 uses
  %i.ck = icmp ugt i8 %i.cj, 99
  %i.cl = icmp ugt i8 %i.cj, 9
  %i.cm = select i1 %i.cl, i32 3, i32 2
  %i.cn = select i1 %i.ck, i32 4, i32 %i.cm
  %i.co = add nsw i32 %i.cn, %i.ch                ; 2 uses
  store i32 %i.co, ptr %4, align 4, !tbaa !3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !16  ; 2 uses
  %i.cr = icmp ugt i8 %i.cq, 99
  %i.cs = icmp ugt i8 %i.cq, 9
  %i.ct = select i1 %i.cs, i32 2, i32 1
  %i.cu = select i1 %i.cr, i32 3, i32 %i.ct
  %i.cv = add nsw i32 %i.cu, %i.co
  store i32 %i.cv, ptr %4, align 4, !tbaa !3
  br label %.thread599

bb.ad:                                            ; preds = %.preheader690.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.bq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = urem i8 %i.bp, 100
  %i.cx = udiv i8 %i.cw, 10
  %5 = udiv i8 %i.bp, 100
  %i.cy = insertelement <2 x i8> poison, i8 %5, i64 0
  %i.cz = insertelement <2 x i8> %i.cy, i8 %i.cx, i64 1
  %i.da = or disjoint <2 x i8> %i.cz, splat (i8 48)
  %i.db = zext nneg <2 x i8> %i.da to <2 x i32>
  store <2 x i32> %i.db, ptr %i.a, align 16, !tbaa !3
  %6 = urem i8 %i.bp, 10
  %7 = or disjoint i8 %6, 48
  %8 = zext nneg i8 %7 to i32
  store i32 %8, ptr %i.bo, align 8, !tbaa !3
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  br i1 %i.br, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dc = udiv i8 %i.bp, 10
  %i.dd = urem i8 %i.bp, 10
  %i.de = insertelement <2 x i8> poison, i8 %i.dc, i64 0
  %i.df = insertelement <2 x i8> %i.de, i8 %i.dd, i64 1
  %i.dg = or disjoint <2 x i8> %i.df, splat (i8 48)
  %i.dh = zext nneg <2 x i8> %i.dg to <2 x i32>
  store <2 x i32> %i.dh, ptr %i.a, align 16, !tbaa !3
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.di = or disjoint i8 %i.bp, 48
  %i.dj = zext nneg i8 %i.di to i32
  store i32 %i.dj, ptr %i.a, align 16, !tbaa !3
  br label %bb.ak

bb.ai:                                            ; preds = %.preheader690.split.3, %.preheader690.split.2, %.preheader690.split.1, %.preheader690.split.preheader
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not535 = icmp eq ptr %3, null
  br i1 %.not535, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.ak:                                            ; preds = %bb.ae, %bb.ah, %bb.ag
  %i.dk = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dk
  store i32 0, ptr %i.dl, align 4, !tbaa !3
  %i.dm = sext i32 %.7386 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dm
  %i.do = shl nuw nsw i64 %i.dk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dn, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.do, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not537.not = icmp slt i32 %i.bu, %i.f
  br i1 %.not537.not, label %.preheader690.split.1, label %bb.al

bb.al:                                            ; preds = %bb.ay, %bb.as, %bb.ak
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not538 = icmp eq ptr %3, null
  br i1 %.not538, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.preheader690.split.1:                            ; preds = %bb.ak
  %i.dp = add nsw i32 %i.bu, 1                    ; 2 uses
  %i.dq = sext i32 %i.bu to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dq
  store i32 46, ptr %i.dr, align 4
  %i.ds = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16  ; 8 uses
  %i.dv = icmp ugt i8 %i.du, 99                   ; 2 uses
  %i.dw = icmp ugt i8 %i.du, 9                    ; 2 uses
  %i.dx = select i1 %i.dw, i32 2, i32 1
  %i.dy = select i1 %i.dv, i32 3, i32 %i.dx       ; 2 uses
  %i.dz = add nsw i32 %i.dy, %i.dp                ; 4 uses
  %.not534.not.1 = icmp slt i32 %i.dz, %2
  br i1 %.not534.not.1, label %bb.an, label %bb.ai

bb.an:                                            ; preds = %.preheader690.split.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.dv, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %i.dw, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ea = or disjoint i8 %i.du, 48
  %i.eb = zext nneg i8 %i.ea to i32
  store i32 %i.eb, ptr %i.a, align 16, !tbaa !3
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.ec = udiv i8 %i.du, 10
  %i.ed = urem i8 %i.du, 10
  %i.ee = insertelement <2 x i8> poison, i8 %i.ec, i64 0
  %i.ef = insertelement <2 x i8> %i.ee, i8 %i.ed, i64 1
  %i.eg = or disjoint <2 x i8> %i.ef, splat (i8 48)
  %i.eh = zext nneg <2 x i8> %i.eg to <2 x i32>
  store <2 x i32> %i.eh, ptr %i.a, align 16, !tbaa !3
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.ei = urem i8 %i.du, 100
  %i.ej = udiv i8 %i.ei, 10
  %9 = udiv i8 %i.du, 100
  %i.ek = insertelement <2 x i8> poison, i8 %9, i64 0
  %i.el = insertelement <2 x i8> %i.ek, i8 %i.ej, i64 1
  %i.em = or disjoint <2 x i8> %i.el, splat (i8 48)
  %i.en = zext nneg <2 x i8> %i.em to <2 x i32>
  store <2 x i32> %i.en, ptr %i.a, align 16, !tbaa !3
  %10 = urem i8 %i.du, 10
  %11 = or disjoint i8 %10, 48
  %12 = zext nneg i8 %11 to i32
  store i32 %12, ptr %i.bo, align 8, !tbaa !3
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.eo = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eo
  store i32 0, ptr %i.ep, align 4, !tbaa !3
  %i.eq = sext i32 %i.dp to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eq
  %i.es = shl nuw nsw i64 %i.eo, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.er, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.es, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not537.not.1 = icmp slt i32 %i.dz, %i.f
  br i1 %.not537.not.1, label %.preheader690.split.2, label %bb.al

.preheader690.split.2:                            ; preds = %bb.as
  %i.et = add nsw i32 %i.dz, 1                    ; 2 uses
  %i.eu = sext i32 %i.dz to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eu
  store i32 46, ptr %i.ev, align 4
  %i.ew = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !16  ; 8 uses
  %i.ez = icmp ugt i8 %i.ey, 99                   ; 2 uses
  %i.fa = icmp ugt i8 %i.ey, 9                    ; 2 uses
  %i.fb = select i1 %i.fa, i32 2, i32 1
  %i.fc = select i1 %i.ez, i32 3, i32 %i.fb       ; 2 uses
  %i.fd = add nsw i32 %i.fc, %i.et                ; 4 uses
  %.not534.not.2 = icmp slt i32 %i.fd, %2
  br i1 %.not534.not.2, label %bb.at, label %bb.ai

bb.at:                                            ; preds = %.preheader690.split.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.ez, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.fa, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = or disjoint i8 %i.ey, 48
  %i.ff = zext nneg i8 %i.fe to i32
  store i32 %i.ff, ptr %i.a, align 16, !tbaa !3
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.fg = udiv i8 %i.ey, 10
  %i.fh = urem i8 %i.ey, 10
  %i.fi = insertelement <2 x i8> poison, i8 %i.fg, i64 0
  %i.fj = insertelement <2 x i8> %i.fi, i8 %i.fh, i64 1
  %i.fk = or disjoint <2 x i8> %i.fj, splat (i8 48)
  %i.fl = zext nneg <2 x i8> %i.fk to <2 x i32>
  store <2 x i32> %i.fl, ptr %i.a, align 16, !tbaa !3
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.fm = urem i8 %i.ey, 100
  %i.fn = udiv i8 %i.fm, 10
  %13 = udiv i8 %i.ey, 100
  %i.fo = insertelement <2 x i8> poison, i8 %13, i64 0
  %i.fp = insertelement <2 x i8> %i.fo, i8 %i.fn, i64 1
  %i.fq = or disjoint <2 x i8> %i.fp, splat (i8 48)
  %i.fr = zext nneg <2 x i8> %i.fq to <2 x i32>
  store <2 x i32> %i.fr, ptr %i.a, align 16, !tbaa !3
  %14 = urem i8 %i.ey, 10
  %15 = or disjoint i8 %14, 48
  %16 = zext nneg i8 %15 to i32
  store i32 %16, ptr %i.bo, align 8, !tbaa !3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax
  %i.fs = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fs
  store i32 0, ptr %i.ft, align 4, !tbaa !3
  %i.fu = sext i32 %i.et to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fu
  %i.fw = shl nuw nsw i64 %i.fs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fv, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.fw, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not537.not.2 = icmp slt i32 %i.fd, %i.f
  br i1 %.not537.not.2, label %.preheader690.split.3, label %bb.al

.preheader690.split.3:                            ; preds = %bb.ay
  %i.fx = add nsw i32 %i.fd, 1                    ; 2 uses
  %i.fy = sext i32 %i.fd to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fy
  store i32 46, ptr %i.fz, align 4
  %i.ga = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !16  ; 8 uses
  %i.gd = icmp ugt i8 %i.gc, 99                   ; 2 uses
  %i.ge = icmp ugt i8 %i.gc, 9                    ; 2 uses
  %i.gf = select i1 %i.ge, i32 2, i32 1
  %i.gg = select i1 %i.gd, i32 3, i32 %i.gf       ; 2 uses
  %i.gh = add nsw i32 %i.gg, %i.fx                ; 2 uses
  %.not534.not.3 = icmp slt i32 %i.gh, %2
  br i1 %.not534.not.3, label %bb.az, label %bb.ai

bb.az:                                            ; preds = %.preheader690.split.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.gd, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ge, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gi = or disjoint i8 %i.gc, 48
  %i.gj = zext nneg i8 %i.gi to i32
  store i32 %i.gj, ptr %i.a, align 16, !tbaa !3
  br label %.thread599.loopexit708

bb.bc:                                            ; preds = %bb.ba
  %i.gk = udiv i8 %i.gc, 10
  %i.gl = urem i8 %i.gc, 10
  %i.gm = insertelement <2 x i8> poison, i8 %i.gk, i64 0
  %i.gn = insertelement <2 x i8> %i.gm, i8 %i.gl, i64 1
  %i.go = or disjoint <2 x i8> %i.gn, splat (i8 48)
  %i.gp = zext nneg <2 x i8> %i.go to <2 x i32>
  store <2 x i32> %i.gp, ptr %i.a, align 16, !tbaa !3
  br label %.thread599.loopexit708

bb.bd:                                            ; preds = %bb.az
  %i.gq = urem i8 %i.gc, 100
  %i.gr = udiv i8 %i.gq, 10
  %17 = udiv i8 %i.gc, 100
  %i.gs = insertelement <2 x i8> poison, i8 %17, i64 0
  %i.gt = insertelement <2 x i8> %i.gs, i8 %i.gr, i64 1
  %i.gu = or disjoint <2 x i8> %i.gt, splat (i8 48)
  %i.gv = zext nneg <2 x i8> %i.gu to <2 x i32>
  store <2 x i32> %i.gv, ptr %i.a, align 16, !tbaa !3
  %18 = urem i8 %i.gc, 10
  %19 = or disjoint i8 %18, 48
  %20 = zext nneg i8 %19 to i32
  store i32 %20, ptr %i.bo, align 8, !tbaa !3
  br label %.thread599.loopexit708

.thread599.loopexit708:                           ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.gw = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw
  store i32 0, ptr %i.gx, align 4, !tbaa !3
  %i.gy = sext i32 %i.fx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gy
  %i.ha = shl nuw nsw i64 %i.gw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gz, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.ha, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread599

bb.be:                                            ; preds = %bb.ac
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !51
  %.not513 = icmp eq ptr %i.hc, null
  br i1 %.not513, label %bb.bt, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.c, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not526.not = icmp slt i32 %.7386, %i.f
  br i1 %.not526.not, label %.split.preheader, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not527 = icmp eq ptr %3, null
  br i1 %.not527, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.split.preheader:                                 ; preds = %bb.bg
  %i.hd = add nsw i32 %.7386, 1
  %i.he = sext i32 %.7386 to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.he
  store i32 91, ptr %i.hf, align 4
  br label %.split

.split:                                           ; preds = %.split.preheader, %bb.bo
  %indvars.iv = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next, %bb.bo ] ; 4 uses
  %.13392700 = phi i32 [ %i.hd, %.split.preheader ], [ %.16395.ph, %bb.bo ] ; 3 uses
  %i.hg = add nsw i32 %.13392700, 2               ; 4 uses
  %.not530.not = icmp slt i32 %i.hg, %2
  br i1 %.not530.not, label %.thread601, label %bb.bj

bb.bj:                                            ; preds = %.split
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not531 = icmp eq ptr %3, null
  br i1 %.not531, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.thread601:                                       ; preds = %.split
  %i.hh = load ptr, ptr %i.hb, align 8, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !16
  %i.hk = zext i8 %i.hj to i32                    ; 2 uses
  %i.hl = lshr i32 %i.hk, 4
  %i.hm = tail call i32 @uriHexToLetterExW(i32 noundef %i.hl, i32 noundef 0) #4
  %i.hn = and i32 %i.hk, 15
  %i.ho = tail call i32 @uriHexToLetterExW(i32 noundef %i.hn, i32 noundef 0) #4
  %i.hp = sext i32 %.13392700 to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hp ; 2 uses
  store i32 %i.hm, ptr %i.hq, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store i32 %i.ho, ptr %.sroa.4.0..sroa_idx, align 4
  %i.hr = trunc i64 %indvars.iv to i1
  %i.hs = icmp ne i64 %indvars.iv, 15
  %or.cond15603 = and i1 %i.hs, %i.hr
  br i1 %or.cond15603, label %.thread605, label %bb.bo

.thread605:                                       ; preds = %.thread601
  %.not532.not = icmp slt i32 %i.hg, %i.f
  br i1 %.not532.not, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread605
  %i.ht = add nsw i32 %.13392700, 3
  %i.hu = sext i32 %i.hg to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hu
  store i32 58, ptr %i.hv, align 4
  br label %bb.bo

bb.bm:                                            ; preds = %.thread605
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not533 = icmp eq ptr %3, null
  br i1 %.not533, label %.critedge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.bo:                                            ; preds = %bb.bl, %.thread601
  %.16395.ph = phi i32 [ %i.hg, %.thread601 ], [ %i.ht, %bb.bl ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split702, label %.split, !llvm.loop !52

.split702:                                        ; preds = %bb.bo
  %.not528.not = icmp slt i32 %.16395.ph, %i.f
  br i1 %.not528.not, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.split702
  %i.hw = add nsw i32 %.16395.ph, 1
  %i.hx = sext i32 %.16395.ph to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hx
  store i32 93, ptr %i.hy, align 4
  br label %.thread599

bb.bq:                                            ; preds = %.split702
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not529 = icmp eq ptr %3, null
  br i1 %.not529, label %.critedge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.bs:                                            ; preds = %bb.bf
  %i.hz = load i32, ptr %4, align 4, !tbaa !3
  %i.ia = add nsw i32 %i.hz, 41
  store i32 %i.ia, ptr %4, align 4, !tbaa !3
  br label %.thread599

bb.bt:                                            ; preds = %bb.be
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !53 ; 2 uses
  %.not514 = icmp eq ptr %i.ic, null
  br i1 %.not514, label %bb.cg, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !54
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.ic to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 2 uses
  %i.ii = lshr exact i64 %i.ih, 2
  %i.ij = trunc i64 %i.ii to i32                  ; 2 uses
  br i1 %i.c, label %bb.cf, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ik = add nsw i32 %.7386, 1                   ; 2 uses
  %.not519.not = icmp slt i32 %.7386, %i.f
  br i1 %.not519.not, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.il = sext i32 %.7386 to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %0, i64 %i.il
  store i32 91, ptr %i.im, align 4
  %i.in = add nsw i32 %i.ik, %i.ij                ; 4 uses
  %.not521.not = icmp slt i32 %i.in, %2
  br i1 %.not521.not, label %bb.bz, label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not520 = icmp eq ptr %3, null
  br i1 %.not520, label %.critedge, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.bz:                                            ; preds = %bb.bw
  %i.io = sext i32 %i.ik to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %0, i64 %i.io
  %i.iq = load ptr, ptr %i.ib, align 8, !tbaa !53
  %sext523 = shl i64 %i.ih, 30
  %i.ir = ashr exact i64 %sext523, 30
  %i.is = and i64 %i.ir, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ip, ptr align 4 %i.iq, i64 %i.is, i1 false)
  %.not524.not = icmp slt i32 %i.in, %i.f
  br i1 %.not524.not, label %bb.cc, label %bb.cd

bb.ca:                                            ; preds = %bb.bw
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not522 = icmp eq ptr %3, null
  br i1 %.not522, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.cc:                                            ; preds = %bb.bz
  %i.it = add nsw i32 %i.in, 1
  %i.iu = sext i32 %i.in to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.iu
  store i32 93, ptr %i.iv, align 4
  br label %.thread599

bb.cd:                                            ; preds = %bb.bz
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not525 = icmp eq ptr %3, null
  br i1 %.not525, label %.critedge, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
end_hunk_1
