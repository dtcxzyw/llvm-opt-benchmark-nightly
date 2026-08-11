loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_frame:bb.a

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %., i32 noundef %i.ao) #7
  br label %bb.ba

bb.l:                                             ; preds = %bb.j
  %i.ap = zext i32 %i.ad to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ap
  %i.ar = sub i32 %i.af, %i.ad
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.at = zext i32 %. to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.aw = sub i32 %i.av, %.
  %i.ax = tail call fastcc i32 @mszh_decomp(ptr noundef nonnull %i.aq, i32 noundef %i.ar, ptr noundef %i.au, i32 noundef %i.aw) ; 2 uses
  %.not593 = icmp eq i32 %., %i.ax
  br i1 %.not593, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %., i32 noundef %i.ax) #7
  br label %bb.ba

bb.n:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.az = load i32, ptr %i.aj, align 4, !tbaa !40
  br label %bb.al

bb.o:                                             ; preds = %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !40
  %i.be = tail call fastcc i32 @mszh_decomp(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %i.bb, i32 noundef %i.bd) ; 5 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !40 ; 2 uses
  %.not589 = icmp eq i32 %i.bf, %i.be
  br i1 %.not589, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %i.bf, i32 noundef %i.be) #7
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !40 ; 2 uses
  %.not590 = icmp eq i32 %i.bg, %i.be
  %i.bh = add i32 %i.be, 2
  %.not591 = icmp eq i32 %i.bg, %i.bh
  %or.cond = or i1 %.not590, %.not591
  br i1 %or.cond, label %bb.q, label %bb.ba

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !44
  br label %bb.al

bb.r:                                             ; preds = %bb.c
  %i.bj = load i32, ptr %i.f, align 8, !tbaa !35
  switch i32 %i.bj, label %bb.w [
    i32 0, label %bb.x
    i32 2, label %bb.x
    i32 1, label %bb.s
    i32 4, label %bb.t
    i32 3, label %bb.u
    i32 5, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.bk = and i32 %i.h, -4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0495 = phi i32 [ %i.bk, %bb.s ], [ %i.h, %bb.r ]
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.bl = and i32 %i.h, -4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.1496 = phi i32 [ %i.bl, %bb.u ], [ %i.h, %bb.r ]
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  br label %bb.x

bb.x:                                             ; preds = %bb.r, %bb.r, %bb.w, %bb.v, %bb.t
  %.0498 = phi i32 [ 0, %bb.w ], [ 3, %bb.v ], [ 4, %bb.t ], [ 6, %bb.r ], [ 6, %bb.r ]
  %.2497 = phi i32 [ %i.h, %bb.w ], [ %.1496, %bb.v ], [ %.0495, %bb.t ], [ %i.h, %bb.r ], [ %i.h, %bb.r ]
  %i.bm = mul i32 %.0498, %i.j
  %i.bn = mul i32 %i.bm, %.2497
  %i.bo = ashr i32 %i.bn, 1
  %.not587 = icmp ult i32 %i.d, %i.bo
  br i1 %.not587, label %bb.ba, label %bb.al

bb.y:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.32) #7
  br label %bb.ba

bb.z:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !43
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bs = load i32, ptr %i.f, align 8, !tbaa !35
  %i.bt = icmp eq i32 %i.bs, 2
  br i1 %i.bt, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bu = mul i32 %i.h, 3
  %i.bv = mul i32 %i.bu, %i.j
  %i.bw = icmp eq i32 %i.d, %i.bv
  br i1 %i.bw, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !45
  %i.bz = and i32 %i.by, 4
  %.not586 = icmp eq i32 %i.bz, 0
  br i1 %.not586, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !44
  %i.cc = zext i32 %i.d to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.b, i64 %i.cc, i1 false)
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !45
  %i.cf = and i32 %i.ce, 1
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = load i32, ptr %i.b, align 1, !tbaa !34
  %i.ch = add i32 %i.d, -8                        ; 2 uses
  %i.ci = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.ch) ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !40
  %.599 = tail call i32 @llvm.umin.i32(i32 %i.ck, i32 %i.cm) ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.co = tail call fastcc i32 @zlib_decomp(ptr noundef nonnull %0, ptr noundef nonnull %i.cn, i32 noundef %i.ci, i32 noundef 0, i32 noundef %.599) ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.ba, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = zext i32 %i.ci to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq
  %i.cs = sub i32 %i.ch, %i.ci
  %i.ct = tail call fastcc i32 @zlib_decomp(ptr noundef nonnull %0, ptr noundef nonnull %i.cr, i32 noundef %i.cs, i32 noundef %.599, i32 noundef %.599) ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ba, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cv = load i32, ptr %i.cl, align 4, !tbaa !40
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.cy = tail call fastcc i32 @zlib_decomp(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.d, i32 noundef 0, i32 noundef %i.cx) ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, -1
  br i1 %i.cz, label %bb.aj, label %bb.ba

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ad
  %.1505 = phi i32 [ %i.d, %bb.ad ], [ %i.cv, %bb.ah ], [ %i.cy, %bb.ai ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !44
  br label %bb.al

bb.ak:                                            ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.33) #7
  br label %bb.ba

bb.al:                                            ; preds = %bb.ac, %bb.x, %bb.n, %bb.q, %bb.e, %bb.f, %bb.aj
  %.0553 = phi ptr [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.ay, %bb.n ], [ %i.bi, %bb.q ], [ %i.b, %bb.x ], [ %i.db, %bb.aj ], [ %i.b, %bb.ac ] ; 16 uses
  %.2506 = phi i32 [ %i.d, %bb.e ], [ %i.d, %bb.f ], [ %i.az, %bb.n ], [ %i.be, %bb.q ], [ %i.d, %bb.x ], [ %.1505, %bb.aj ], [ %i.d, %bb.ac ]
  %i.dc = load i32, ptr %i.n, align 8, !tbaa !32
  %i.dd = icmp eq i32 %i.dc, 54
  br i1 %i.dd, label %bb.am, label %.loopexit617

bb.am:                                            ; preds = %bb.al
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !45
  %i.dg = and i32 %i.df, 4
  %.not594 = icmp eq i32 %i.dg, 0
  br i1 %.not594, label %.loopexit617, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dh = load i32, ptr %i.f, align 8, !tbaa !35
  switch i32 %i.dh, label %bb.at [
    i32 0, label %bb.ao
    i32 2, label %bb.ao
    i32 1, label %.preheader619
    i32 3, label %.preheader622
    i32 4, label %.preheader624
    i32 5, label %.preheader626
  ]

.preheader626:                                    ; preds = %bb.an
  %4 = lshr i32 %i.j, 1
  %i.di = icmp sgt i32 %i.j, 1
  br i1 %i.di, label %.lr.ph635, label %.loopexit617

.lr.ph635:                                        ; preds = %.preheader626
  %i.dj = mul i32 %i.h, 3
  %i.dk = sdiv i32 %i.h, 2
  %i.dl = icmp sgt i32 %i.h, 1
  br i1 %i.dl, label %.lr.ph.preheader, label %.loopexit617

.lr.ph.preheader:                                 ; preds = %.lr.ph635
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

.preheader624:                                    ; preds = %bb.an
  %i.dm = icmp sgt i32 %i.j, 0
  br i1 %i.dm, label %.lr.ph645, label %.loopexit617

.lr.ph645:                                        ; preds = %.preheader624
  %i.dn = shl i32 %i.h, 1
  %i.do = sdiv i32 %i.h, 2
  %i.dp = icmp sgt i32 %i.h, 1
  br i1 %i.dp, label %.lr.ph642.preheader, label %.loopexit617

.lr.ph642.preheader:                              ; preds = %.lr.ph645
  %wide.trip.count755 = zext nneg i32 %i.j to i64
  br label %.lr.ph642

.preheader622:                                    ; preds = %bb.an
  %i.dq = icmp sgt i32 %i.j, 0
  br i1 %i.dq, label %.preheader621.lr.ph, label %.loopexit617

.preheader621.lr.ph:                              ; preds = %.preheader622
  %i.dr = sdiv i32 %i.h, 4
  %i.ds = icmp sgt i32 %i.h, 3
  br i1 %i.ds, label %.preheader621, label %.loopexit617

.preheader619:                                    ; preds = %bb.an
  %i.dt = icmp sgt i32 %i.j, 0
  br i1 %i.dt, label %.preheader618.lr.ph, label %.loopexit617

.preheader618.lr.ph:                              ; preds = %.preheader619
  %i.du = sdiv i32 %i.h, 4
  %i.dv = icmp sgt i32 %i.h, 3
  br i1 %i.dv, label %.preheader618, label %.loopexit617

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.dw = icmp sgt i32 %i.j, 0
  br i1 %i.dw, label %.lr.ph674, label %.loopexit617

.lr.ph674:                                        ; preds = %bb.ao
  %i.dx = mul i32 %i.h, 3
  %i.dy = icmp sgt i32 %i.h, 1
  br i1 %i.dy, label %.lr.ph670.preheader, label %.loopexit617

.lr.ph670.preheader:                              ; preds = %.lr.ph674
  %wide.trip.count765 = zext nneg i32 %i.j to i64
  %i.dz = add nsw i32 %i.h, -1                    ; 3 uses
  %xtraiter = and i32 %i.dz, 1
  %i.ea = icmp eq i32 %i.h, 2
  %unroll_iter = and i32 %i.dz, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1017 = trunc i32 %i.dz to i1
  br label %.lr.ph670

.lr.ph670:                                        ; preds = %.lr.ph670.preheader, %._crit_edge671
  %indvars.iv762 = phi i64 [ 0, %.lr.ph670.preheader ], [ %indvars.iv.next763, %._crit_edge671 ] ; 2 uses
  %i.eb = trunc nuw nsw i64 %indvars.iv762 to i32
  %i.ec = mul i32 %i.dx, %i.eb
  %i.ed = sext i32 %i.ec to i64                   ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.0553, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !34  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 1
  %i.eh = load i16, ptr %i.eg, align 1, !tbaa !34 ; 2 uses
  br i1 %i.ea, label %.epil.preheader, label %.lr.ph670.new

.lr.ph670.new:                                    ; preds = %.lr.ph670, %.lr.ph670.new
  %.0668 = phi i16 [ %i.eu, %.lr.ph670.new ], [ %i.eh, %.lr.ph670 ]
  %.0501.in667 = phi i64 [ %.0501.1, %.lr.ph670.new ], [ %i.ed, %.lr.ph670 ] ; 2 uses
  %.0516666 = phi i8 [ %i.er, %.lr.ph670.new ], [ %i.ef, %.lr.ph670 ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph670.new ], [ 0, %.lr.ph670 ]
  %i.ei = getelementptr i8, ptr %.0553, i64 %.0501.in667 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 3      ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !34
  %i.el = sub i8 %.0516666, %i.ek                 ; 2 uses
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !34
  %i.em = getelementptr i8, ptr %i.ei, i64 4      ; 2 uses
  %i.en = load i16, ptr %i.em, align 1, !tbaa !34
  %i.eo = sub i16 %.0668, %i.en                   ; 2 uses
  store i16 %i.eo, ptr %i.em, align 1, !tbaa !34
  %.0501.1 = add nsw i64 %.0501.in667, 6          ; 3 uses
  %i.ep = getelementptr inbounds i8, ptr %.0553, i64 %.0501.1 ; 3 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !34
  %i.er = sub i8 %i.el, %i.eq                     ; 3 uses
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !34
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 2 uses
  %i.et = load i16, ptr %i.es, align 1, !tbaa !34
  %i.eu = sub i16 %i.eo, %i.et                    ; 3 uses
  store i16 %i.eu, ptr %i.es, align 1, !tbaa !34
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge671.unr-lcssa, label %.lr.ph670.new, !llvm.loop !50

._crit_edge671.unr-lcssa:                         ; preds = %.lr.ph670.new
  br i1 %lcmp.mod.not, label %._crit_edge671, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge671.unr-lcssa, %.lr.ph670
  %.0668.epil.init = phi i16 [ %i.eh, %.lr.ph670 ], [ %i.eu, %._crit_edge671.unr-lcssa ]
  %.0501.in667.epil.init = phi i64 [ %i.ed, %.lr.ph670 ], [ %.0501.1, %._crit_edge671.unr-lcssa ]
  %.0516666.epil.init = phi i8 [ %i.ef, %.lr.ph670 ], [ %i.er, %._crit_edge671.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1017)
  %i.ev = getelementptr i8, ptr %.0553, i64 %.0501.in667.epil.init ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 3      ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !34
  %i.ey = sub i8 %.0516666.epil.init, %i.ex
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !34
  %i.ez = getelementptr i8, ptr %i.ev, i64 4      ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 1, !tbaa !34
  %i.fb = sub i16 %.0668.epil.init, %i.fa
  store i16 %i.fb, ptr %i.ez, align 1, !tbaa !34
  br label %._crit_edge671

._crit_edge671:                                   ; preds = %._crit_edge671.unr-lcssa, %.epil.preheader
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond766.not = icmp eq i64 %indvars.iv.next763, %wide.trip.count765
  br i1 %exitcond766.not, label %.loopexit617, label %.lr.ph670, !llvm.loop !52

.preheader618:                                    ; preds = %.preheader618.lr.ph, %._crit_edge661
  %.1502664 = phi i64 [ %i.gm, %._crit_edge661 ], [ 0, %.preheader618.lr.ph ]
  %.1522663 = phi i32 [ %i.go, %._crit_edge661 ], [ 0, %.preheader618.lr.ph ]
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader618, %bb.ap
  %.2503659 = phi i64 [ %.1502664, %.preheader618 ], [ %i.gm, %bb.ap ] ; 2 uses
  %.0507658 = phi i32 [ 0, %.preheader618 ], [ %i.gk, %bb.ap ]
  %.0511657 = phi i32 [ 0, %.preheader618 ], [ %i.ga, %bb.ap ]
  %.1517656 = phi i32 [ 0, %.preheader618 ], [ %i.fq, %bb.ap ]
  %.1529655 = phi i32 [ 0, %.preheader618 ], [ %i.gn, %bb.ap ]
  %i.fc = getelementptr inbounds i8, ptr %.0553, i64 %.2503659 ; 9 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !34
  %i.fe = trunc i32 %.1517656 to i8
  %i.ff = sub i8 %i.fe, %i.fd                     ; 2 uses
  store i8 %i.ff, ptr %i.fc, align 1, !tbaa !34
  %i.fg = getelementptr i8, ptr %i.fc, i64 1      ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !34
  %i.fi = sub i8 %i.ff, %i.fh                     ; 2 uses
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !34
  %i.fj = getelementptr i8, ptr %i.fc, i64 2      ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !34
  %i.fl = sub i8 %i.fi, %i.fk                     ; 2 uses
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !34
  %i.fm = getelementptr i8, ptr %i.fc, i64 3      ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !34
  %i.fo = zext i8 %i.fn to i32
  %i.fp = zext i8 %i.fl to i32
  %i.fq = sub nsw i32 %i.fp, %i.fo                ; 2 uses
  %i.fr = trunc i32 %i.fq to i8
  store i8 %i.fr, ptr %i.fm, align 1, !tbaa !34
  %i.fs = getelementptr i8, ptr %i.fc, i64 4      ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !34
  %i.fu = trunc i32 %.0511657 to i8
  %i.fv = sub i8 %i.fu, %i.ft                     ; 2 uses
  store i8 %i.fv, ptr %i.fs, align 1, !tbaa !34
  %i.fw = getelementptr i8, ptr %i.fc, i64 5      ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !34
  %i.fy = zext i8 %i.fx to i32
  %i.fz = zext i8 %i.fv to i32
  %i.ga = sub nsw i32 %i.fz, %i.fy                ; 2 uses
  %i.gb = trunc i32 %i.ga to i8
  store i8 %i.gb, ptr %i.fw, align 1, !tbaa !34
  %i.gc = getelementptr i8, ptr %i.fc, i64 6      ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !34
  %i.ge = trunc i32 %.0507658 to i8
  %i.gf = sub i8 %i.ge, %i.gd                     ; 2 uses
  store i8 %i.gf, ptr %i.gc, align 1, !tbaa !34
  %i.gg = getelementptr i8, ptr %i.fc, i64 7      ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !34
  %i.gi = zext i8 %i.gh to i32
  %i.gj = zext i8 %i.gf to i32
  %i.gk = sub nsw i32 %i.gj, %i.gi                ; 2 uses
  %i.gl = trunc i32 %i.gk to i8
  store i8 %i.gl, ptr %i.gg, align 1, !tbaa !34
  %i.gm = add nsw i64 %.2503659, 8                ; 2 uses
  %i.gn = add nuw nsw i32 %.1529655, 1            ; 2 uses
  %exitcond759.not = icmp eq i32 %i.gn, %i.du
  br i1 %exitcond759.not, label %._crit_edge661, label %bb.ap, !llvm.loop !53

._crit_edge661:                                   ; preds = %bb.ap
  %i.go = add nuw nsw i32 %.1522663, 1            ; 2 uses
  %exitcond760.not = icmp eq i32 %i.go, %i.j
  br i1 %exitcond760.not, label %.loopexit617, label %.preheader618, !llvm.loop !54

.preheader621:                                    ; preds = %.preheader621.lr.ph, %._crit_edge652
  %.3654 = phi i64 [ %i.hl, %._crit_edge652 ], [ 0, %.preheader621.lr.ph ]
  %.2523653 = phi i32 [ %i.hn, %._crit_edge652 ], [ 0, %.preheader621.lr.ph ]
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader621, %bb.aq
  %.4650 = phi i64 [ %.3654, %.preheader621 ], [ %i.hl, %bb.aq ] ; 2 uses
  %.1508649 = phi i8 [ 0, %.preheader621 ], [ %i.hk, %bb.aq ]
  %.1512648 = phi i8 [ 0, %.preheader621 ], [ %i.hh, %bb.aq ]
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !34
  %i.gw = getelementptr i8, ptr %i.gp, i64 2      ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !34
  %i.gy = sub i8 %i.gv, %i.gx                     ; 2 uses
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !34
  %i.gz = getelementptr i8, ptr %i.gp, i64 3      ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !34
  %i.hb = zext i8 %i.ha to i32
  %i.hc = zext i8 %i.gy to i32
  %i.hd = sub nsw i32 %i.hc, %i.hb                ; 2 uses
  %i.he = trunc i32 %i.hd to i8
  store i8 %i.he, ptr %i.gz, align 1, !tbaa !34
  %i.hf = getelementptr i8, ptr %i.gp, i64 4      ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !34
  %i.hh = sub i8 %.1512648, %i.hg                 ; 2 uses
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !34
  %i.hi = getelementptr i8, ptr %i.gp, i64 5      ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !34
  %i.hk = sub i8 %.1508649, %i.hj                 ; 2 uses
  store i8 %i.hk, ptr %i.hi, align 1, !tbaa !34
  %i.hl = add nsw i64 %.4650, 6                   ; 2 uses
  %i.hm = add nuw nsw i32 %.2530646, 1            ; 2 uses
  %exitcond757.not = icmp eq i32 %i.hm, %i.dr
  br i1 %exitcond757.not, label %._crit_edge652, label %bb.aq, !llvm.loop !55

._crit_edge652:                                   ; preds = %bb.aq
  %i.hn = add nuw nsw i32 %.2523653, 1            ; 2 uses
  %exitcond758.not = icmp eq i32 %i.hn, %i.j
  br i1 %exitcond758.not, label %.loopexit617, label %.preheader621, !llvm.loop !56

.lr.ph642:                                        ; preds = %.lr.ph642.preheader, %._crit_edge643
  %indvars.iv752 = phi i64 [ 0, %.lr.ph642.preheader ], [ %indvars.iv.next753, %._crit_edge643 ] ; 2 uses
  %i.ho = trunc nuw nsw i64 %indvars.iv752 to i32
  %i.hp = mul i32 %i.dn, %i.ho
  %i.hq = sext i32 %i.hp to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph642, %bb.ar
  %.5640 = phi i64 [ %i.hq, %.lr.ph642 ], [ %i.ih, %bb.ar ] ; 2 uses
  %.2509639 = phi i8 [ 0, %.lr.ph642 ], [ %i.ig, %bb.ar ]
  %.2513638 = phi i8 [ 0, %.lr.ph642 ], [ %i.id, %bb.ar ]
  %.3519637 = phi i32 [ 0, %.lr.ph642 ], [ %i.hz, %bb.ar ]
  %.3531636 = phi i32 [ 0, %.lr.ph642 ], [ %i.ii, %bb.ar ]
  %i.hr = getelementptr inbounds i8, ptr %.0553, i64 %.5640 ; 5 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !34
  %i.ht = trunc i32 %.3519637 to i8
  %i.hu = sub i8 %i.ht, %i.hs                     ; 2 uses
  store i8 %i.hu, ptr %i.hr, align 1, !tbaa !34
  %i.hv = getelementptr i8, ptr %i.hr, i64 1      ; 2 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !34
  %i.hx = zext i8 %i.hw to i32
  %i.hy = zext i8 %i.hu to i32
  %i.hz = sub nsw i32 %i.hy, %i.hx                ; 2 uses
  %i.ia = trunc i32 %i.hz to i8
  store i8 %i.ia, ptr %i.hv, align 1, !tbaa !34
  %i.ib = getelementptr i8, ptr %i.hr, i64 2      ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !34
  %i.id = sub i8 %.2513638, %i.ic                 ; 2 uses
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !34
  %i.ie = getelementptr i8, ptr %i.hr, i64 3      ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !34
  %i.ig = sub i8 %.2509639, %i.if                 ; 2 uses
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !34
  %i.ih = add nsw i64 %.5640, 4
  %i.ii = add nuw nsw i32 %.3531636, 1            ; 2 uses
  %exitcond751.not = icmp eq i32 %i.ii, %i.do
  br i1 %exitcond751.not, label %._crit_edge643, label %bb.ar, !llvm.loop !57

._crit_edge643:                                   ; preds = %bb.ar
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, 1 ; 2 uses
  %exitcond756.not = icmp eq i64 %indvars.iv.next753, %wide.trip.count755
  br i1 %exitcond756.not, label %.loopexit617, label %.lr.ph642, !llvm.loop !58

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ij = trunc nuw nsw i64 %indvars.iv to i32
  %i.ik = mul i32 %i.dj, %i.ij
  %i.il = sext i32 %i.ik to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.as
  %.6633 = phi i64 [ %i.il, %.lr.ph ], [ %i.jm, %bb.as ] ; 2 uses
  %.3510632 = phi i8 [ 0, %.lr.ph ], [ %i.jl, %bb.as ]
  %.3514631 = phi i8 [ 0, %.lr.ph ], [ %i.ji, %bb.as ]
  %.0515630 = phi i32 [ 0, %.lr.ph ], [ %i.je, %bb.as ]
  %.4520629 = phi i32 [ 0, %.lr.ph ], [ %i.iu, %bb.as ]
  %.4532628 = phi i32 [ 0, %.lr.ph ], [ %i.jn, %bb.as ]
  %i.im = getelementptr inbounds i8, ptr %.0553, i64 %.6633 ; 7 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !34
  %i.io = trunc i32 %.4520629 to i8
  %i.ip = sub i8 %i.io, %i.in                     ; 2 uses
  store i8 %i.ip, ptr %i.im, align 1, !tbaa !34
  %i.iq = getelementptr i8, ptr %i.im, i64 1      ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !34
  %i.is = zext i8 %i.ir to i32
  %i.it = zext i8 %i.ip to i32
  %i.iu = sub nsw i32 %i.it, %i.is                ; 2 uses
  %i.iv = trunc i32 %i.iu to i8
  store i8 %i.iv, ptr %i.iq, align 1, !tbaa !34
  %i.iw = getelementptr i8, ptr %i.im, i64 2      ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !34
  %i.iy = trunc i32 %.0515630 to i8
  %i.iz = sub i8 %i.iy, %i.ix                     ; 2 uses
  store i8 %i.iz, ptr %i.iw, align 1, !tbaa !34
  %i.ja = getelementptr i8, ptr %i.im, i64 3      ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !34
  %i.jc = zext i8 %i.jb to i32
  %i.jd = zext i8 %i.iz to i32
  %i.je = sub nsw i32 %i.jd, %i.jc                ; 2 uses
  %i.jf = trunc i32 %i.je to i8
  store i8 %i.jf, ptr %i.ja, align 1, !tbaa !34
  %i.jg = getelementptr i8, ptr %i.im, i64 4      ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !34
  %i.ji = sub i8 %.3514631, %i.jh                 ; 2 uses
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !34
  %i.jj = getelementptr i8, ptr %i.im, i64 5      ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !34
  %i.jl = sub i8 %.3510632, %i.jk                 ; 2 uses
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !34
  %i.jm = add nsw i64 %.6633, 6
  %i.jn = add nuw nsw i32 %.4532628, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.jn, %i.dk
  br i1 %exitcond.not, label %._crit_edge, label %bb.as, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.as
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond750.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond750.not, label %.loopexit617, label %.lr.ph, !llvm.loop !60

bb.at:                                            ; preds = %bb.an
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.34) #7
  br label %bb.ba

.loopexit617:                                     ; preds = %._crit_edge, %._crit_edge643, %._crit_edge652, %._crit_edge661, %._crit_edge671, %.preheader626, %.lr.ph635, %.preheader624, %.lr.ph645, %.preheader622, %.preheader621.lr.ph, %.preheader619, %.preheader618.lr.ph, %bb.ao, %.lr.ph674, %bb.am, %bb.al
  %i.jo = load ptr, ptr %1, align 8, !tbaa !49
  %i.jp = add i32 %i.j, -1                        ; 7 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 10 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !42
  %i.js = mul nsw i32 %i.jr, %i.jp
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %i.jo, i64 %i.jt ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 6 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !42 ; 2 uses
  %i.jx = mul nsw i32 %i.jw, %i.jp
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !49 ; 2 uses
  %i.ka = sext i32 %i.jx to i64
  %i.kb = getelementptr inbounds i8, ptr %i.jz, i64 %i.ka ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !42 ; 2 uses
  %i.ke = mul nsw i32 %i.kd, %i.jp
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !49 ; 2 uses
  %i.kh = sext i32 %i.ke to i64
  %i.ki = getelementptr inbounds i8, ptr %i.kg, i64 %i.kh ; 4 uses
  %i.kj = load i32, ptr %i.f, align 8, !tbaa !35
  switch i32 %i.kj, label %bb.az [
    i32 0, label %.preheader604
    i32 1, label %.preheader606
    i32 2, label %bb.av
    i32 3, label %.preheader610
    i32 4, label %.preheader613
    i32 5, label %bb.ax
  ]

.preheader613:                                    ; preds = %.loopexit617
  %i.kk = icmp sgt i32 %i.j, 0
  %i.kl = icmp sgt i32 %i.h, 1
  %or.cond841 = select i1 %i.kk, i1 %i.kl, i1 false
  br i1 %or.cond841, label %.preheader612.preheader, label %.loopexit

.preheader612.preheader:                          ; preds = %.preheader613
  %i.km = add nsw i32 %i.h, -1
  %i.kn = zext nneg i32 %i.km to i64              ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.kn, i64 2)
  %i.ko = add nsw i64 %umax, -1                   ; 2 uses
  %i.kp = and i64 %i.ko, -2
  %i.kq = lshr i64 %i.ko, 1                       ; 2 uses
  %i.kr = add nuw nsw i64 %i.kq, 1                ; 2 uses
  %i.ks = shl nuw nsw i64 %i.kq, 2
  %i.kt = tail call i64 @llvm.umax.i64(i64 %i.kn, i64 2)
  %i.ku = add nsw i64 %i.kt, -1
  %i.kv = lshr i64 %i.ku, 1
  %i.kw = add nuw nsw i64 %i.kv, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 34
  %i.kx = and i64 %i.kw, 7                        ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  %i.kz = select i1 %i.ky, i64 8, i64 %i.kx
  %n.vec = sub nsw i64 %i.kw, %i.kz               ; 3 uses
  %i.la = shl i64 %n.vec, 1
  %i.lb = shl i64 %n.vec, 2
  br label %.preheader612

.preheader610:                                    ; preds = %.loopexit617
  %i.lc = icmp sgt i32 %i.j, 0
  br i1 %i.lc, label %.preheader609.lr.ph, label %.loopexit

.preheader609.lr.ph:                              ; preds = %.preheader610
  %i.ld = add nsw i32 %i.h, -3
  %i.le = icmp sgt i32 %i.h, 3
  %5 = zext nneg i32 %i.ld to i64
  br label %.preheader609

.preheader606:                                    ; preds = %.loopexit617
  %i.lf = icmp sgt i32 %i.j, 0
  br i1 %i.lf, label %.preheader605.lr.ph, label %.loopexit

.preheader605.lr.ph:                              ; preds = %.preheader606
  %i.lg = add i32 %i.h, -3                        ; 2 uses
  %i.lh = icmp sgt i32 %i.h, 3
  %6 = zext i32 %i.lg to i64                      ; 3 uses
  %smax = tail call i64 @llvm.umax.i64(i64 %6, i64 4)
  %i.li = add nsw i64 %smax, -1                   ; 2 uses
  %i.lj = and i64 %i.li, -4
  %i.lk = lshr i64 %i.li, 2                       ; 2 uses
  %i.ll = shl nuw nsw i64 %i.lk, 1
  %i.lm = add nuw nsw i64 %i.ll, 2                ; 2 uses
  %i.ln = shl nuw nsw i64 %i.lk, 3
  %i.lo = tail call i64 @llvm.umax.i64(i64 %6, i64 4)
  %i.lp = add nsw i64 %i.lo, -1
  %i.lq = lshr i64 %i.lp, 2
  %i.lr = add nuw nsw i64 %i.lq, 1                ; 2 uses
  %min.iters.check919 = icmp ult i32 %i.lg, 33
  %i.ls = and i64 %i.lr, 3                        ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 0
  %i.lu = select i1 %i.lt, i64 4, i64 %i.ls
  %n.vec920 = sub nsw i64 %i.lr, %i.lu            ; 3 uses
  %i.lv = shl i64 %n.vec920, 2
  %i.lw = shl i64 %n.vec920, 3
  br label %.preheader605

.preheader604:                                    ; preds = %.loopexit617
  %i.lx = icmp sgt i32 %i.j, 0
  %i.ly = icmp sgt i32 %i.h, 0
  %or.cond731 = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %or.cond731, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader604
  %wide.trip.count785 = zext nneg i32 %i.h to i64 ; 12 uses
  %i.lz = mul nuw nsw i64 %wide.trip.count785, 3
  %min.iters.check961 = icmp ult i32 %i.h, 8
  %min.iters.check962 = icmp ult i32 %i.h, 16
  %i.ma = and i64 %wide.trip.count785, 8
  %n.vec964 = and i64 %wide.trip.count785, 2147483632 ; 5 uses
  %i.mb = mul nuw nsw i64 %n.vec964, 3
  %cmp.n = icmp eq i64 %n.vec964, %wide.trip.count785
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ma, 0
  %n.vec986 = and i64 %wide.trip.count785, 2147483640 ; 4 uses
  %i.mc = mul nuw nsw i64 %n.vec986, 3
  %cmp.n997 = icmp eq i64 %n.vec986, %wide.trip.count785
  %xtraiter1020 = and i64 %wide.trip.count785, 1
  %lcmp.mod1021.not = icmp eq i64 %xtraiter1020, 0
  %i.md = add nsw i64 %wide.trip.count785, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge724
  %.5526730 = phi i32 [ %i.wu, %._crit_edge724 ], [ 0, %.preheader.preheader ]
  %.0538729 = phi ptr [ %i.wt, %._crit_edge724 ], [ %i.ki, %.preheader.preheader ] ; 10 uses
  %.0543728 = phi ptr [ %i.wp, %._crit_edge724 ], [ %i.kb, %.preheader.preheader ] ; 10 uses
  %.0548727 = phi ptr [ %i.wl, %._crit_edge724 ], [ %i.ju, %.preheader.preheader ] ; 10 uses
  %.1554726 = phi ptr [ %.lcssa, %._crit_edge724 ], [ %.0553, %.preheader.preheader ] ; 32 uses
  br i1 %min.iters.check961, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck932

vector.memcheck932:                               ; preds = %iter.check
  %scevgep933 = getelementptr i8, ptr %.0548727, i64 %wide.trip.count785 ; 3 uses
  %scevgep934 = getelementptr i8, ptr %.0543728, i64 %wide.trip.count785 ; 3 uses
  %scevgep935 = getelementptr i8, ptr %.0538729, i64 %wide.trip.count785 ; 3 uses
  %scevgep936 = getelementptr i8, ptr %.1554726, i64 %i.lz ; 3 uses
  %bound0937 = icmp ult ptr %.0548727, %scevgep934
  %bound1938 = icmp ult ptr %.0543728, %scevgep933
  %found.conflict939 = and i1 %bound0937, %bound1938
  %bound0940 = icmp ult ptr %.0548727, %scevgep935
  %bound1941 = icmp ult ptr %.0538729, %scevgep933
  %found.conflict942 = and i1 %bound0940, %bound1941
  %conflict.rdx943 = or i1 %found.conflict939, %found.conflict942
  %bound0944 = icmp ult ptr %.0548727, %scevgep936
  %bound1945 = icmp ult ptr %.1554726, %scevgep933
  %found.conflict946 = and i1 %bound0944, %bound1945
  %conflict.rdx947 = or i1 %conflict.rdx943, %found.conflict946
  %bound0948 = icmp ult ptr %.0543728, %scevgep935
  %bound1949 = icmp ult ptr %.0538729, %scevgep934
  %found.conflict950 = and i1 %bound0948, %bound1949
  %conflict.rdx951 = or i1 %conflict.rdx947, %found.conflict950
  %bound0952 = icmp ult ptr %.0543728, %scevgep936
  %bound1953 = icmp ult ptr %.1554726, %scevgep934
  %found.conflict954 = and i1 %bound0952, %bound1953
  %conflict.rdx955 = or i1 %conflict.rdx951, %found.conflict954
  %bound0956 = icmp ult ptr %.0538729, %scevgep936
  %bound1957 = icmp ult ptr %.1554726, %scevgep935
  %found.conflict958 = and i1 %bound0956, %bound1957
  %conflict.rdx959 = or i1 %conflict.rdx955, %found.conflict958
  br i1 %conflict.rdx959, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck932
  br i1 %min.iters.check962, label %vec.epilog.ph, label %vector.ph963

vector.ph963:                                     ; preds = %vector.main.loop.iter.check
  %i.me = getelementptr i8, ptr %.1554726, i64 %i.mb ; 2 uses
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph963
  %index966 = phi i64 [ 0, %vector.ph963 ], [ %index.next983, %vector.body965 ] ; 5 uses
  %i.mf = mul i64 %index966, 3                    ; 16 uses
  %next.gep967 = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %i.mg = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep968 = getelementptr i8, ptr %i.mg, i64 3
  %i.mh = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep969 = getelementptr i8, ptr %i.mh, i64 6
  %i.mi = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep970 = getelementptr i8, ptr %i.mi, i64 9
  %i.mj = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep971 = getelementptr i8, ptr %i.mj, i64 12
  %i.mk = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep972 = getelementptr i8, ptr %i.mk, i64 15
  %i.ml = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep973 = getelementptr i8, ptr %i.ml, i64 18
  %i.mm = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep974 = getelementptr i8, ptr %i.mm, i64 21
  %i.mn = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep975 = getelementptr i8, ptr %i.mn, i64 24
  %i.mo = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep976 = getelementptr i8, ptr %i.mo, i64 27
  %i.mp = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep977 = getelementptr i8, ptr %i.mp, i64 30
  %i.mq = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep978 = getelementptr i8, ptr %i.mq, i64 33
  %i.mr = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep979 = getelementptr i8, ptr %i.mr, i64 36
  %i.ms = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep980 = getelementptr i8, ptr %i.ms, i64 39
  %i.mt = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep981 = getelementptr i8, ptr %i.mt, i64 42
  %i.mu = getelementptr i8, ptr %.1554726, i64 %i.mf ; 3 uses
  %next.gep982 = getelementptr i8, ptr %i.mu, i64 45
  %i.mv = getelementptr inbounds nuw i8, ptr %next.gep967, i64 1
  %i.mw = getelementptr i8, ptr %i.mg, i64 4
  %i.mx = getelementptr i8, ptr %i.mh, i64 7
  %i.my = getelementptr i8, ptr %i.mi, i64 10
  %i.mz = getelementptr i8, ptr %i.mj, i64 13
  %i.na = getelementptr i8, ptr %i.mk, i64 16
  %i.nb = getelementptr i8, ptr %i.ml, i64 19
  %i.nc = getelementptr i8, ptr %i.mm, i64 22
  %i.nd = getelementptr i8, ptr %i.mn, i64 25
  %i.ne = getelementptr i8, ptr %i.mo, i64 28
  %i.nf = getelementptr i8, ptr %i.mp, i64 31
  %i.ng = getelementptr i8, ptr %i.mq, i64 34
  %i.nh = getelementptr i8, ptr %i.mr, i64 37
  %i.ni = getelementptr i8, ptr %i.ms, i64 40
  %i.nj = getelementptr i8, ptr %i.mt, i64 43
  %i.nk = getelementptr i8, ptr %i.mu, i64 46
  %i.nl = load i8, ptr %next.gep967, align 1, !tbaa !34, !alias.scope !61
  %i.nm = load i8, ptr %next.gep968, align 1, !tbaa !34, !alias.scope !61
  %i.nn = load i8, ptr %next.gep969, align 1, !tbaa !34, !alias.scope !61
  %i.no = load i8, ptr %next.gep970, align 1, !tbaa !34, !alias.scope !61
  %i.np = load i8, ptr %next.gep971, align 1, !tbaa !34, !alias.scope !61
  %i.nq = load i8, ptr %next.gep972, align 1, !tbaa !34, !alias.scope !61
  %i.nr = load i8, ptr %next.gep973, align 1, !tbaa !34, !alias.scope !61
  %i.ns = load i8, ptr %next.gep974, align 1, !tbaa !34, !alias.scope !61
  %i.nt = load i8, ptr %next.gep975, align 1, !tbaa !34, !alias.scope !61
  %i.nu = load i8, ptr %next.gep976, align 1, !tbaa !34, !alias.scope !61
  %i.nv = load i8, ptr %next.gep977, align 1, !tbaa !34, !alias.scope !61
  %i.nw = load i8, ptr %next.gep978, align 1, !tbaa !34, !alias.scope !61
  %i.nx = load i8, ptr %next.gep979, align 1, !tbaa !34, !alias.scope !61
  %i.ny = load i8, ptr %next.gep980, align 1, !tbaa !34, !alias.scope !61
  %i.nz = load i8, ptr %next.gep981, align 1, !tbaa !34, !alias.scope !61
  %i.oa = load i8, ptr %next.gep982, align 1, !tbaa !34, !alias.scope !61
  %i.ob = insertelement <16 x i8> poison, i8 %i.nl, i64 0
  %i.oc = insertelement <16 x i8> %i.ob, i8 %i.nm, i64 1
  %i.od = insertelement <16 x i8> %i.oc, i8 %i.nn, i64 2
  %i.oe = insertelement <16 x i8> %i.od, i8 %i.no, i64 3
  %i.of = insertelement <16 x i8> %i.oe, i8 %i.np, i64 4
  %i.og = insertelement <16 x i8> %i.of, i8 %i.nq, i64 5
  %i.oh = insertelement <16 x i8> %i.og, i8 %i.nr, i64 6
  %i.oi = insertelement <16 x i8> %i.oh, i8 %i.ns, i64 7
  %i.oj = insertelement <16 x i8> %i.oi, i8 %i.nt, i64 8
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 9
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 10
  %i.om = insertelement <16 x i8> %i.ol, i8 %i.nw, i64 11
  %i.on = insertelement <16 x i8> %i.om, i8 %i.nx, i64 12
  %i.oo = insertelement <16 x i8> %i.on, i8 %i.ny, i64 13
  %i.op = insertelement <16 x i8> %i.oo, i8 %i.nz, i64 14
  %i.oq = insertelement <16 x i8> %i.op, i8 %i.oa, i64 15
  %i.or = getelementptr inbounds nuw i8, ptr %.0548727, i64 %index966
  store <16 x i8> %i.oq, ptr %i.or, align 1, !tbaa !34, !alias.scope !64, !noalias !66
  %i.os = getelementptr inbounds nuw i8, ptr %next.gep967, i64 2
  %i.ot = getelementptr i8, ptr %i.mg, i64 5
  %i.ou = getelementptr i8, ptr %i.mh, i64 8
  %i.ov = getelementptr i8, ptr %i.mi, i64 11
  %i.ow = getelementptr i8, ptr %i.mj, i64 14
  %i.ox = getelementptr i8, ptr %i.mk, i64 17
  %i.oy = getelementptr i8, ptr %i.ml, i64 20
  %i.oz = getelementptr i8, ptr %i.mm, i64 23
  %i.pa = getelementptr i8, ptr %i.mn, i64 26
  %i.pb = getelementptr i8, ptr %i.mo, i64 29
  %i.pc = getelementptr i8, ptr %i.mp, i64 32
  %i.pd = getelementptr i8, ptr %i.mq, i64 35
  %i.pe = getelementptr i8, ptr %i.mr, i64 38
  %i.pf = getelementptr i8, ptr %i.ms, i64 41
  %i.pg = getelementptr i8, ptr %i.mt, i64 44
  %i.ph = getelementptr i8, ptr %i.mu, i64 47
  %i.pi = load i8, ptr %i.mv, align 1, !tbaa !34, !alias.scope !61
  %i.pj = load i8, ptr %i.mw, align 1, !tbaa !34, !alias.scope !61
  %i.pk = load i8, ptr %i.mx, align 1, !tbaa !34, !alias.scope !61
  %i.pl = load i8, ptr %i.my, align 1, !tbaa !34, !alias.scope !61
  %i.pm = load i8, ptr %i.mz, align 1, !tbaa !34, !alias.scope !61
  %i.pn = load i8, ptr %i.na, align 1, !tbaa !34, !alias.scope !61
  %i.po = load i8, ptr %i.nb, align 1, !tbaa !34, !alias.scope !61
  %i.pp = load i8, ptr %i.nc, align 1, !tbaa !34, !alias.scope !61
  %i.pq = load i8, ptr %i.nd, align 1, !tbaa !34, !alias.scope !61
  %i.pr = load i8, ptr %i.ne, align 1, !tbaa !34, !alias.scope !61
  %i.ps = load i8, ptr %i.nf, align 1, !tbaa !34, !alias.scope !61
  %i.pt = load i8, ptr %i.ng, align 1, !tbaa !34, !alias.scope !61
  %i.pu = load i8, ptr %i.nh, align 1, !tbaa !34, !alias.scope !61
  %i.pv = load i8, ptr %i.ni, align 1, !tbaa !34, !alias.scope !61
  %i.pw = load i8, ptr %i.nj, align 1, !tbaa !34, !alias.scope !61
  %i.px = load i8, ptr %i.nk, align 1, !tbaa !34, !alias.scope !61
  %i.py = insertelement <16 x i8> poison, i8 %i.pi, i64 0
  %i.pz = insertelement <16 x i8> %i.py, i8 %i.pj, i64 1
  %i.qa = insertelement <16 x i8> %i.pz, i8 %i.pk, i64 2
  %i.qb = insertelement <16 x i8> %i.qa, i8 %i.pl, i64 3
  %i.qc = insertelement <16 x i8> %i.qb, i8 %i.pm, i64 4
  %i.qd = insertelement <16 x i8> %i.qc, i8 %i.pn, i64 5
  %i.qe = insertelement <16 x i8> %i.qd, i8 %i.po, i64 6
end_hunk_1
begin_hunk_2_@decode_frame:bb.a
  br i1 %cmp.n, label %._crit_edge724, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block984
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec964, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rz = getelementptr i8, ptr %.1554726, i64 %i.mc ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index987 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next996, %vec.epilog.vector.body ] ; 5 uses
  %i.sa = mul i64 %index987, 3                    ; 8 uses
  %next.gep988 = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %i.sb = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep989 = getelementptr i8, ptr %i.sb, i64 3
  %i.sc = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep990 = getelementptr i8, ptr %i.sc, i64 6
  %i.sd = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep991 = getelementptr i8, ptr %i.sd, i64 9
  %i.se = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep992 = getelementptr i8, ptr %i.se, i64 12
  %i.sf = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep993 = getelementptr i8, ptr %i.sf, i64 15
  %i.sg = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep994 = getelementptr i8, ptr %i.sg, i64 18
  %i.sh = getelementptr i8, ptr %.1554726, i64 %i.sa ; 3 uses
  %next.gep995 = getelementptr i8, ptr %i.sh, i64 21
  %i.si = getelementptr inbounds nuw i8, ptr %next.gep988, i64 1
  %i.sj = getelementptr i8, ptr %i.sb, i64 4
  %i.sk = getelementptr i8, ptr %i.sc, i64 7
  %i.sl = getelementptr i8, ptr %i.sd, i64 10
  %i.sm = getelementptr i8, ptr %i.se, i64 13
  %i.sn = getelementptr i8, ptr %i.sf, i64 16
  %i.so = getelementptr i8, ptr %i.sg, i64 19
  %i.sp = getelementptr i8, ptr %i.sh, i64 22
  %i.sq = load i8, ptr %next.gep988, align 1, !tbaa !34, !alias.scope !61
  %i.sr = load i8, ptr %next.gep989, align 1, !tbaa !34, !alias.scope !61
  %i.ss = load i8, ptr %next.gep990, align 1, !tbaa !34, !alias.scope !61
  %i.st = load i8, ptr %next.gep991, align 1, !tbaa !34, !alias.scope !61
  %i.su = load i8, ptr %next.gep992, align 1, !tbaa !34, !alias.scope !61
  %i.sv = load i8, ptr %next.gep993, align 1, !tbaa !34, !alias.scope !61
  %i.sw = load i8, ptr %next.gep994, align 1, !tbaa !34, !alias.scope !61
  %i.sx = load i8, ptr %next.gep995, align 1, !tbaa !34, !alias.scope !61
  %i.sy = insertelement <8 x i8> poison, i8 %i.sq, i64 0
  %i.sz = insertelement <8 x i8> %i.sy, i8 %i.sr, i64 1
  %i.ta = insertelement <8 x i8> %i.sz, i8 %i.ss, i64 2
  %i.tb = insertelement <8 x i8> %i.ta, i8 %i.st, i64 3
  %i.tc = insertelement <8 x i8> %i.tb, i8 %i.su, i64 4
  %i.td = insertelement <8 x i8> %i.tc, i8 %i.sv, i64 5
  %i.te = insertelement <8 x i8> %i.td, i8 %i.sw, i64 6
  %i.tf = insertelement <8 x i8> %i.te, i8 %i.sx, i64 7
  %i.tg = getelementptr inbounds nuw i8, ptr %.0548727, i64 %index987
  store <8 x i8> %i.tf, ptr %i.tg, align 1, !tbaa !34, !alias.scope !64, !noalias !66
  %i.th = getelementptr inbounds nuw i8, ptr %next.gep988, i64 2
  %i.ti = getelementptr i8, ptr %i.sb, i64 5
  %i.tj = getelementptr i8, ptr %i.sc, i64 8
  %i.tk = getelementptr i8, ptr %i.sd, i64 11
  %i.tl = getelementptr i8, ptr %i.se, i64 14
  %i.tm = getelementptr i8, ptr %i.sf, i64 17
  %i.tn = getelementptr i8, ptr %i.sg, i64 20
  %i.to = getelementptr i8, ptr %i.sh, i64 23
  %i.tp = load i8, ptr %i.si, align 1, !tbaa !34, !alias.scope !61
  %i.tq = load i8, ptr %i.sj, align 1, !tbaa !34, !alias.scope !61
  %i.tr = load i8, ptr %i.sk, align 1, !tbaa !34, !alias.scope !61
  %i.ts = load i8, ptr %i.sl, align 1, !tbaa !34, !alias.scope !61
  %i.tt = load i8, ptr %i.sm, align 1, !tbaa !34, !alias.scope !61
  %i.tu = load i8, ptr %i.sn, align 1, !tbaa !34, !alias.scope !61
  %i.tv = load i8, ptr %i.so, align 1, !tbaa !34, !alias.scope !61
  %i.tw = load i8, ptr %i.sp, align 1, !tbaa !34, !alias.scope !61
  %i.tx = insertelement <8 x i8> poison, i8 %i.tp, i64 0
  %i.ty = insertelement <8 x i8> %i.tx, i8 %i.tq, i64 1
  %i.tz = insertelement <8 x i8> %i.ty, i8 %i.tr, i64 2
  %i.ua = insertelement <8 x i8> %i.tz, i8 %i.ts, i64 3
  %i.ub = insertelement <8 x i8> %i.ua, i8 %i.tt, i64 4
  %i.uc = insertelement <8 x i8> %i.ub, i8 %i.tu, i64 5
  %i.ud = insertelement <8 x i8> %i.uc, i8 %i.tv, i64 6
  %i.ue = insertelement <8 x i8> %i.ud, i8 %i.tw, i64 7
  %i.uf = xor <8 x i8> %i.ue, splat (i8 -128)
  %i.ug = getelementptr inbounds nuw i8, ptr %.0543728, i64 %index987
  store <8 x i8> %i.uf, ptr %i.ug, align 1, !tbaa !34, !alias.scope !69, !noalias !70
  %i.uh = load i8, ptr %i.th, align 1, !tbaa !34, !alias.scope !61
  %i.ui = load i8, ptr %i.ti, align 1, !tbaa !34, !alias.scope !61
  %i.uj = load i8, ptr %i.tj, align 1, !tbaa !34, !alias.scope !61
  %i.uk = load i8, ptr %i.tk, align 1, !tbaa !34, !alias.scope !61
  %i.ul = load i8, ptr %i.tl, align 1, !tbaa !34, !alias.scope !61
  %i.um = load i8, ptr %i.tm, align 1, !tbaa !34, !alias.scope !61
  %i.un = load i8, ptr %i.tn, align 1, !tbaa !34, !alias.scope !61
  %i.uo = load i8, ptr %i.to, align 1, !tbaa !34, !alias.scope !61
  %i.up = insertelement <8 x i8> poison, i8 %i.uh, i64 0
  %i.uq = insertelement <8 x i8> %i.up, i8 %i.ui, i64 1
  %i.ur = insertelement <8 x i8> %i.uq, i8 %i.uj, i64 2
  %i.us = insertelement <8 x i8> %i.ur, i8 %i.uk, i64 3
  %i.ut = insertelement <8 x i8> %i.us, i8 %i.ul, i64 4
  %i.uu = insertelement <8 x i8> %i.ut, i8 %i.um, i64 5
  %i.uv = insertelement <8 x i8> %i.uu, i8 %i.un, i64 6
  %i.uw = insertelement <8 x i8> %i.uv, i8 %i.uo, i64 7
  %i.ux = xor <8 x i8> %i.uw, splat (i8 -128)
  %i.uy = getelementptr inbounds nuw i8, ptr %.0538729, i64 %index987
  store <8 x i8> %i.ux, ptr %i.uy, align 1, !tbaa !34, !alias.scope !71, !noalias !61
  %index.next996 = add nuw i64 %index987, 8       ; 2 uses
  %i.uz = icmp eq i64 %index.next996, %n.vec986
  br i1 %i.uz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n997, label %._crit_edge724, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck932, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv782.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck932 ], [ %n.vec964, %vec.epilog.iter.check ], [ %n.vec986, %vec.epilog.middle.block ] ; 6 uses
  %.2555721.ph = phi ptr [ %.1554726, %iter.check ], [ %.1554726, %vector.memcheck932 ], [ %i.me, %vec.epilog.iter.check ], [ %i.rz, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod1021.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.va = getelementptr inbounds nuw i8, ptr %.2555721.ph, i64 1
  %i.vb = load i8, ptr %.2555721.ph, align 1, !tbaa !34
  %i.vc = getelementptr inbounds nuw i8, ptr %.0548727, i64 %indvars.iv782.ph
  store i8 %i.vb, ptr %i.vc, align 1, !tbaa !34
  %i.vd = getelementptr inbounds nuw i8, ptr %.2555721.ph, i64 2
  %i.ve = load i8, ptr %i.va, align 1, !tbaa !34
  %i.vf = xor i8 %i.ve, -128
  %i.vg = getelementptr inbounds nuw i8, ptr %.0543728, i64 %indvars.iv782.ph
  store i8 %i.vf, ptr %i.vg, align 1, !tbaa !34
  %i.vh = getelementptr inbounds nuw i8, ptr %.2555721.ph, i64 3 ; 2 uses
  %i.vi = load i8, ptr %i.vd, align 1, !tbaa !34
  %i.vj = xor i8 %i.vi, -128
  %i.vk = getelementptr inbounds nuw i8, ptr %.0538729, i64 %indvars.iv782.ph
  store i8 %i.vj, ptr %i.vk, align 1, !tbaa !34
  %indvars.iv.next783.prol = or disjoint i64 %indvars.iv782.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa1000.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.vh, %vec.epilog.scalar.ph.prol ]
  %indvars.iv782.unr = phi i64 [ %indvars.iv782.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next783.prol, %vec.epilog.scalar.ph.prol ]
  %.2555721.unr = phi ptr [ %.2555721.ph, %vec.epilog.scalar.ph.preheader ], [ %i.vh, %vec.epilog.scalar.ph.prol ]
  %i.vl = icmp eq i64 %indvars.iv782.ph, %i.md
  br i1 %i.vl, label %._crit_edge724, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv782 = phi i64 [ %indvars.iv.next783.1, %vec.epilog.scalar.ph ], [ %indvars.iv782.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.2555721 = phi ptr [ %i.we, %vec.epilog.scalar.ph ], [ %.2555721.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.2555721, i64 1
  %i.vn = load i8, ptr %.2555721, align 1, !tbaa !34
  %i.vo = getelementptr inbounds nuw i8, ptr %.0548727, i64 %indvars.iv782
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !34
  %i.vp = getelementptr inbounds nuw i8, ptr %.2555721, i64 2
  %i.vq = load i8, ptr %i.vm, align 1, !tbaa !34
  %i.vr = xor i8 %i.vq, -128
  %i.vs = getelementptr inbounds nuw i8, ptr %.0543728, i64 %indvars.iv782
  store i8 %i.vr, ptr %i.vs, align 1, !tbaa !34
  %i.vt = getelementptr inbounds nuw i8, ptr %.2555721, i64 3
  %i.vu = load i8, ptr %i.vp, align 1, !tbaa !34
  %i.vv = xor i8 %i.vu, -128
  %i.vw = getelementptr inbounds nuw i8, ptr %.0538729, i64 %indvars.iv782
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !34
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 1 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.2555721, i64 4
  %i.vy = load i8, ptr %i.vt, align 1, !tbaa !34
  %i.vz = getelementptr inbounds nuw i8, ptr %.0548727, i64 %indvars.iv.next783
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !34
  %i.wa = getelementptr inbounds nuw i8, ptr %.2555721, i64 5
  %i.wb = load i8, ptr %i.vx, align 1, !tbaa !34
  %i.wc = xor i8 %i.wb, -128
  %i.wd = getelementptr inbounds nuw i8, ptr %.0543728, i64 %indvars.iv.next783
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !34
  %i.we = getelementptr inbounds nuw i8, ptr %.2555721, i64 6 ; 2 uses
  %i.wf = load i8, ptr %i.wa, align 1, !tbaa !34
  %i.wg = xor i8 %i.wf, -128
  %i.wh = getelementptr inbounds nuw i8, ptr %.0538729, i64 %indvars.iv.next783
  store i8 %i.wg, ptr %i.wh, align 1, !tbaa !34
  %indvars.iv.next783.1 = add nuw nsw i64 %indvars.iv782, 2 ; 2 uses
  %exitcond786.not.1 = icmp eq i64 %indvars.iv.next783.1, %wide.trip.count785
  br i1 %exitcond786.not.1, label %._crit_edge724, label %vec.epilog.scalar.ph, !llvm.loop !77

._crit_edge724:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block984
  %.lcssa = phi ptr [ %i.rz, %vec.epilog.middle.block ], [ %i.me, %middle.block984 ], [ %.lcssa1000.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.we, %vec.epilog.scalar.ph ]
  %i.wi = load i32, ptr %i.jq, align 8, !tbaa !42
  %i.wj = sext i32 %i.wi to i64
  %i.wk = sub nsw i64 0, %i.wj
  %i.wl = getelementptr inbounds i8, ptr %.0548727, i64 %i.wk
  %i.wm = load i32, ptr %i.jv, align 4, !tbaa !42
  %i.wn = sext i32 %i.wm to i64
  %i.wo = sub nsw i64 0, %i.wn
  %i.wp = getelementptr inbounds i8, ptr %.0543728, i64 %i.wo
  %i.wq = load i32, ptr %i.kc, align 8, !tbaa !42
  %i.wr = sext i32 %i.wq to i64
  %i.ws = sub nsw i64 0, %i.wr
  %i.wt = getelementptr inbounds i8, ptr %.0538729, i64 %i.ws
  %i.wu = add nuw nsw i32 %.5526730, 1            ; 2 uses
  %exitcond787.not = icmp eq i32 %i.wu, %i.j
  br i1 %exitcond787.not, label %.loopexit, label %iter.check, !llvm.loop !78

.preheader605:                                    ; preds = %.preheader605.lr.ph, %._crit_edge713.thread
  %.6527720 = phi i32 [ 0, %.preheader605.lr.ph ], [ %i.aav, %._crit_edge713.thread ]
  %.1539719 = phi ptr [ %i.ki, %.preheader605.lr.ph ], [ %i.aau, %._crit_edge713.thread ] ; 10 uses
  %.1544718 = phi ptr [ %i.kb, %.preheader605.lr.ph ], [ %i.aaq, %._crit_edge713.thread ] ; 10 uses
  %.1549717 = phi ptr [ %i.ju, %.preheader605.lr.ph ], [ %i.aam, %._crit_edge713.thread ] ; 7 uses
  %.3556716 = phi ptr [ %.0553, %.preheader605.lr.ph ], [ %.4557.lcssa820, %._crit_edge713.thread ] ; 12 uses
  br i1 %i.lh, label %.lr.ph712.preheader, label %._crit_edge713.thread

.lr.ph712.preheader:                              ; preds = %.preheader605
  br i1 %min.iters.check919, label %.lr.ph712.preheader1001, label %vector.memcheck889

vector.memcheck889:                               ; preds = %.lr.ph712.preheader
  %i.wv = getelementptr i8, ptr %.1549717, i64 %i.lj
  %scevgep890 = getelementptr i8, ptr %i.wv, i64 4 ; 3 uses
  %scevgep891 = getelementptr i8, ptr %.1544718, i64 %i.lm ; 3 uses
  %scevgep892 = getelementptr i8, ptr %.1539719, i64 %i.lm ; 3 uses
  %i.ww = getelementptr i8, ptr %.3556716, i64 %i.ln
  %scevgep893 = getelementptr i8, ptr %i.ww, i64 8 ; 3 uses
  %bound0894 = icmp ult ptr %.1549717, %scevgep891
  %bound1895 = icmp ult ptr %.1544718, %scevgep890
  %found.conflict896 = and i1 %bound0894, %bound1895
  %bound0897 = icmp ult ptr %.1549717, %scevgep892
  %bound1898 = icmp ult ptr %.1539719, %scevgep890
  %found.conflict899 = and i1 %bound0897, %bound1898
  %conflict.rdx900 = or i1 %found.conflict896, %found.conflict899
  %bound0901 = icmp ult ptr %.1549717, %scevgep893
  %bound1902 = icmp ult ptr %.3556716, %scevgep890
  %found.conflict903 = and i1 %bound0901, %bound1902
  %conflict.rdx904 = or i1 %conflict.rdx900, %found.conflict903
  %bound0905 = icmp ult ptr %.1544718, %scevgep892
  %bound1906 = icmp ult ptr %.1539719, %scevgep891
  %found.conflict907 = and i1 %bound0905, %bound1906
  %conflict.rdx908 = or i1 %conflict.rdx904, %found.conflict907
  %bound0909 = icmp ult ptr %.1544718, %scevgep893
  %bound1910 = icmp ult ptr %.3556716, %scevgep891
  %found.conflict911 = and i1 %bound0909, %bound1910
  %conflict.rdx912 = or i1 %conflict.rdx908, %found.conflict911
  %bound0913 = icmp ult ptr %.1539719, %scevgep893
  %bound1914 = icmp ult ptr %.3556716, %scevgep892
  %found.conflict915 = and i1 %bound0913, %bound1914
  %conflict.rdx916 = or i1 %conflict.rdx912, %found.conflict915
  br i1 %conflict.rdx916, label %.lr.ph712.preheader1001, label %vector.ph919

vector.ph919:                                     ; preds = %vector.memcheck889
  %i.wx = getelementptr i8, ptr %.3556716, i64 %i.lw
  br label %vector.body921

vector.body921:                                   ; preds = %vector.body921, %vector.ph919
  %index922 = phi i64 [ 0, %vector.ph919 ], [ %index.next928, %vector.body921 ] ; 4 uses
  %i.wy = shl nuw i64 %index922, 2
  %i.wz = shl i64 %index922, 3                    ; 4 uses
  %next.gep923 = getelementptr i8, ptr %.3556716, i64 %i.wz ; 5 uses
  %i.xa = getelementptr i8, ptr %.3556716, i64 %i.wz ; 4 uses
  %i.xb = getelementptr i8, ptr %.3556716, i64 %i.wz ; 4 uses
  %i.xc = getelementptr i8, ptr %.3556716, i64 %i.wz ; 4 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.1549717, i64 %i.wy
  %wide.vec = load <8 x i32>, ptr %next.gep923, align 1, !alias.scope !79
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x i32> %strided.vec, ptr %i.xd, align 1, !alias.scope !82, !noalias !84
  %i.xe = getelementptr i8, ptr %i.xa, i64 12
  %i.xf = getelementptr i8, ptr %i.xb, i64 20
  %i.xg = getelementptr i8, ptr %i.xc, i64 28
  %i.xh = getelementptr i8, ptr %i.xa, i64 13
  %i.xi = getelementptr i8, ptr %i.xb, i64 21
  %i.xj = getelementptr i8, ptr %i.xc, i64 29
  %i.xk = load <16 x i8>, ptr %next.gep923, align 1
  %i.xl = shufflevector <16 x i8> %i.xk, <16 x i8> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.xm = load i8, ptr %i.xe, align 1, !tbaa !34, !alias.scope !79
  %i.xn = load i8, ptr %i.xf, align 1, !tbaa !34, !alias.scope !79
  %i.xo = load i8, ptr %i.xg, align 1, !tbaa !34, !alias.scope !79
  %i.xp = insertelement <4 x i8> %i.xl, i8 %i.xm, i64 1
  %i.xq = insertelement <4 x i8> %i.xp, i8 %i.xn, i64 2
  %i.xr = insertelement <4 x i8> %i.xq, i8 %i.xo, i64 3
  %i.xs = shl nuw nsw i64 %index922, 1            ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.xs
  %i.xu = getelementptr i8, ptr %i.xa, i64 14
  %i.xv = getelementptr i8, ptr %i.xb, i64 22
  %i.xw = getelementptr i8, ptr %i.xc, i64 30
  %i.xx = load <16 x i8>, ptr %next.gep923, align 1
  %i.xy = shufflevector <16 x i8> %i.xx, <16 x i8> poison, <4 x i32> <i32 5, i32 poison, i32 poison, i32 poison>
  %i.xz = load i8, ptr %i.xh, align 1, !tbaa !34, !alias.scope !79
  %i.ya = load i8, ptr %i.xi, align 1, !tbaa !34, !alias.scope !79
  %i.yb = load i8, ptr %i.xj, align 1, !tbaa !34, !alias.scope !79
  %i.yc = insertelement <4 x i8> %i.xy, i8 %i.xz, i64 1
  %i.yd = insertelement <4 x i8> %i.yc, i8 %i.ya, i64 2
  %i.ye = insertelement <4 x i8> %i.yd, i8 %i.yb, i64 3
  %i.yf = shufflevector <4 x i8> %i.xr, <4 x i8> %i.ye, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = xor <8 x i8> %i.yf, splat (i8 -128)
  store <8 x i8> %interleaved.vec, ptr %i.xt, align 1, !tbaa !34, !alias.scope !87, !noalias !88
  %i.yg = getelementptr i8, ptr %i.xa, i64 15
  %i.yh = getelementptr i8, ptr %i.xb, i64 23
  %i.yi = getelementptr i8, ptr %i.xc, i64 31
  %i.yj = load <16 x i8>, ptr %next.gep923, align 1
  %i.yk = shufflevector <16 x i8> %i.yj, <16 x i8> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.yl = load i8, ptr %i.xu, align 1, !tbaa !34, !alias.scope !79
  %i.ym = load i8, ptr %i.xv, align 1, !tbaa !34, !alias.scope !79
  %i.yn = load i8, ptr %i.xw, align 1, !tbaa !34, !alias.scope !79
  %i.yo = insertelement <4 x i8> %i.yk, i8 %i.yl, i64 1
  %i.yp = insertelement <4 x i8> %i.yo, i8 %i.ym, i64 2
  %i.yq = insertelement <4 x i8> %i.yp, i8 %i.yn, i64 3
  %i.yr = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.xs
  %i.ys = load <16 x i8>, ptr %next.gep923, align 1
  %i.yt = shufflevector <16 x i8> %i.ys, <16 x i8> poison, <4 x i32> <i32 7, i32 poison, i32 poison, i32 poison>
  %i.yu = load i8, ptr %i.yg, align 1, !tbaa !34, !alias.scope !79
  %i.yv = load i8, ptr %i.yh, align 1, !tbaa !34, !alias.scope !79
  %i.yw = load i8, ptr %i.yi, align 1, !tbaa !34, !alias.scope !79
  %i.yx = insertelement <4 x i8> %i.yt, i8 %i.yu, i64 1
  %i.yy = insertelement <4 x i8> %i.yx, i8 %i.yv, i64 2
  %i.yz = insertelement <4 x i8> %i.yy, i8 %i.yw, i64 3
  %i.za = shufflevector <4 x i8> %i.yq, <4 x i8> %i.yz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec927 = xor <8 x i8> %i.za, splat (i8 -128)
  store <8 x i8> %interleaved.vec927, ptr %i.yr, align 1, !tbaa !34, !alias.scope !89, !noalias !79
  %index.next928 = add nuw i64 %index922, 4       ; 2 uses
  %i.zb = icmp eq i64 %index.next928, %n.vec920
  br i1 %i.zb, label %.lr.ph712.preheader1001, label %vector.body921, !llvm.loop !90

.lr.ph712.preheader1001:                          ; preds = %vector.body921, %vector.memcheck889, %.lr.ph712.preheader
  %indvars.iv778.ph = phi i64 [ 0, %vector.memcheck889 ], [ 0, %.lr.ph712.preheader ], [ %i.lv, %vector.body921 ]
  %.4557710.ph = phi ptr [ %.3556716, %vector.memcheck889 ], [ %.3556716, %.lr.ph712.preheader ], [ %i.wx, %vector.body921 ]
  br label %.lr.ph712

.lr.ph712:                                        ; preds = %.lr.ph712.preheader1001, %.lr.ph712
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %.lr.ph712 ], [ %indvars.iv778.ph, %.lr.ph712.preheader1001 ] ; 3 uses
  %.4557710 = phi ptr [ %i.zt, %.lr.ph712 ], [ %.4557710.ph, %.lr.ph712.preheader1001 ] ; 6 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.1549717, i64 %indvars.iv778
  %i.zd = load i32, ptr %.4557710, align 1
  store i32 %i.zd, ptr %i.zc, align 1
  %i.ze = getelementptr inbounds nuw i8, ptr %.4557710, i64 4
  %i.zf = getelementptr inbounds nuw i8, ptr %.4557710, i64 5
  %i.zg = load i8, ptr %i.ze, align 1, !tbaa !34
  %i.zh = xor i8 %i.zg, -128
  %i.zi = lshr exact i64 %indvars.iv778, 1        ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.zi
  store i8 %i.zh, ptr %i.zj, align 1, !tbaa !34
  %i.zk = getelementptr inbounds nuw i8, ptr %.4557710, i64 6
  %i.zl = load i8, ptr %i.zf, align 1, !tbaa !34
  %i.zm = xor i8 %i.zl, -128
  %i.zn = or disjoint i64 %i.zi, 1                ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.zn
  store i8 %i.zm, ptr %i.zo, align 1, !tbaa !34
  %i.zp = getelementptr inbounds nuw i8, ptr %.4557710, i64 7
  %i.zq = load i8, ptr %i.zk, align 1, !tbaa !34
  %i.zr = xor i8 %i.zq, -128
  %i.zs = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.zi
  store i8 %i.zr, ptr %i.zs, align 1, !tbaa !34
  %i.zt = getelementptr inbounds nuw i8, ptr %.4557710, i64 8 ; 3 uses
  %i.zu = load i8, ptr %i.zp, align 1, !tbaa !34
  %i.zv = xor i8 %i.zu, -128
  %i.zw = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.zn
  store i8 %i.zv, ptr %i.zw, align 1, !tbaa !34
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 4 ; 3 uses
  %7 = icmp samesign ult i64 %indvars.iv.next779, %6
  br i1 %7, label %.lr.ph712, label %._crit_edge713, !llvm.loop !91

._crit_edge713:                                   ; preds = %.lr.ph712
  %i.zx = trunc nuw nsw i64 %indvars.iv.next779 to i32 ; 2 uses
  %i.zy = icmp sgt i32 %i.h, %i.zx
  br i1 %i.zy, label %bb.au, label %._crit_edge713.thread

bb.au:                                            ; preds = %._crit_edge713
  %i.zz = lshr exact i32 %i.zx, 1                 ; 2 uses
  %i.aaa = add nsw i32 %i.zz, -1
  %i.aab = zext nneg i32 %i.aaa to i64            ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !34
  %i.aae = zext nneg i32 %i.zz to i64             ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.1544718, i64 %i.aae
  store i8 %i.aad, ptr %i.aaf, align 1, !tbaa !34
  %i.aag = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.aab
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !34
  %i.aai = getelementptr inbounds nuw i8, ptr %.1539719, i64 %i.aae
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !34
  br label %._crit_edge713.thread

._crit_edge713.thread:                            ; preds = %.preheader605, %bb.au, %._crit_edge713
  %.4557.lcssa820 = phi ptr [ %i.zt, %._crit_edge713 ], [ %i.zt, %bb.au ], [ %.3556716, %.preheader605 ]
  %i.aaj = load i32, ptr %i.jq, align 8, !tbaa !42
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = sub nsw i64 0, %i.aak
  %i.aam = getelementptr inbounds i8, ptr %.1549717, i64 %i.aal
  %i.aan = load i32, ptr %i.jv, align 4, !tbaa !42
  %i.aao = sext i32 %i.aan to i64
  %i.aap = sub nsw i64 0, %i.aao
  %i.aaq = getelementptr inbounds i8, ptr %.1544718, i64 %i.aap
  %i.aar = load i32, ptr %i.kc, align 8, !tbaa !42
  %i.aas = sext i32 %i.aar to i64
  %i.aat = sub nsw i64 0, %i.aas
  %i.aau = getelementptr inbounds i8, ptr %.1539719, i64 %i.aat
  %i.aav = add nuw nsw i32 %.6527720, 1           ; 2 uses
  %exitcond781.not = icmp eq i32 %i.aav, %i.j
  br i1 %exitcond781.not, label %.loopexit, label %.preheader605, !llvm.loop !92

bb.av:                                            ; preds = %.loopexit617
  %i.aaw = icmp sgt i32 %i.j, 0
  br i1 %i.aaw, label %.lr.ph709, label %.loopexit

.lr.ph709:                                        ; preds = %bb.av
  %i.aax = mul nsw i32 %i.h, 3                    ; 3 uses
  %i.aay = add nsw i32 %i.aax, 3
  %i.aaz = and i32 %i.aay, -4                     ; 2 uses
  %i.aba = mul nsw i32 %i.aaz, %i.j
  %i.abb = icmp ult i32 %.2506, %i.aba
  %.602 = select i1 %i.abb, i32 %i.aax, i32 %i.aaz
  %i.abc = sext i32 %i.aax to i64                 ; 3 uses
  %i.abd = sext i32 %.602 to i64                  ; 3 uses
  %xtraiter1018 = and i32 %i.j, 1
  %lcmp.mod1019.not = icmp eq i32 %xtraiter1018, 0
  br i1 %lcmp.mod1019.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph709
  %i.abe = load i32, ptr %i.jq, align 8, !tbaa !42
  %i.abf = mul nsw i32 %i.abe, %i.jp
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr inbounds i8, ptr %i.m, i64 %i.abg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abh, ptr align 1 %.0553, i64 %i.abc, i1 false)
  %i.abi = getelementptr inbounds i8, ptr %.0553, i64 %i.abd
  %i.abj = add nsw i32 %i.j, -2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph709
  %.7707.unr = phi i32 [ %i.jp, %.lr.ph709 ], [ %i.abj, %.prol.loopexit.unr-lcssa ]
  %.5558706.unr = phi ptr [ %.0553, %.lr.ph709 ], [ %i.abi, %.prol.loopexit.unr-lcssa ]
  %i.abk = icmp eq i32 %i.jp, 0
  br i1 %i.abk, label %.loopexit, label %.lr.ph709.new

.lr.ph709.new:                                    ; preds = %.prol.loopexit, %.lr.ph709.new
  %.7707 = phi i32 [ %i.abw, %.lr.ph709.new ], [ %.7707.unr, %.prol.loopexit ] ; 3 uses
  %.5558706 = phi ptr [ %i.abv, %.lr.ph709.new ], [ %.5558706.unr, %.prol.loopexit ] ; 2 uses
  %i.abl = load i32, ptr %i.jq, align 8, !tbaa !42
  %i.abm = mul nsw i32 %i.abl, %.7707
  %i.abn = sext i32 %i.abm to i64
  %i.abo = getelementptr inbounds i8, ptr %i.m, i64 %i.abn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abo, ptr align 1 %.5558706, i64 %i.abc, i1 false)
  %i.abp = getelementptr inbounds i8, ptr %.5558706, i64 %i.abd ; 2 uses
  %i.abq = add nsw i32 %.7707, -1                 ; 2 uses
  %i.abr = load i32, ptr %i.jq, align 8, !tbaa !42
  %i.abs = mul nsw i32 %i.abr, %i.abq
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds i8, ptr %i.m, i64 %i.abt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abu, ptr align 1 %i.abp, i64 %i.abc, i1 false)
  %i.abv = getelementptr inbounds i8, ptr %i.abp, i64 %i.abd
  %i.abw = add nsw i32 %.7707, -2
  %.not843.1 = icmp eq i32 %i.abq, 0
  br i1 %.not843.1, label %.loopexit, label %.lr.ph709.new, !llvm.loop !93

.preheader609:                                    ; preds = %.preheader609.lr.ph, %._crit_edge698.thread
  %.8705 = phi i32 [ 0, %.preheader609.lr.ph ], [ %i.adh, %._crit_edge698.thread ]
  %.2540704 = phi ptr [ %i.ki, %.preheader609.lr.ph ], [ %i.adg, %._crit_edge698.thread ] ; 4 uses
  %.2545703 = phi ptr [ %i.kb, %.preheader609.lr.ph ], [ %i.adc, %._crit_edge698.thread ] ; 4 uses
  %.2550702 = phi ptr [ %i.ju, %.preheader609.lr.ph ], [ %i.acy, %._crit_edge698.thread ] ; 2 uses
  %.6559701 = phi ptr [ %.0553, %.preheader609.lr.ph ], [ %.7560.lcssa825, %._crit_edge698.thread ] ; 2 uses
  br i1 %i.le, label %.lr.ph697, label %._crit_edge698.thread

.lr.ph697:                                        ; preds = %.preheader609, %.lr.ph697
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %.lr.ph697 ], [ 0, %.preheader609 ] ; 3 uses
  %.7560695 = phi ptr [ %i.acf, %.lr.ph697 ], [ %.6559701, %.preheader609 ] ; 4 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.2550702, i64 %indvars.iv774
  %i.aby = load i32, ptr %.7560695, align 1
  store i32 %i.aby, ptr %i.abx, align 1
  %i.abz = getelementptr inbounds nuw i8, ptr %.7560695, i64 4
  %i.aca = getelementptr inbounds nuw i8, ptr %.7560695, i64 5
  %i.acb = load i8, ptr %i.abz, align 1, !tbaa !34
  %i.acc = xor i8 %i.acb, -128
  %i.acd = lshr exact i64 %indvars.iv774, 2       ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.2545703, i64 %i.acd
  store i8 %i.acc, ptr %i.ace, align 1, !tbaa !34
  %i.acf = getelementptr inbounds nuw i8, ptr %.7560695, i64 6 ; 3 uses
  %i.acg = load i8, ptr %i.aca, align 1, !tbaa !34
  %i.ach = xor i8 %i.acg, -128
  %i.aci = getelementptr inbounds nuw i8, ptr %.2540704, i64 %i.acd
  store i8 %i.ach, ptr %i.aci, align 1, !tbaa !34
  %indvars.iv.next775 = add nuw nsw i64 %indvars.iv774, 4 ; 3 uses
  %8 = icmp samesign ult i64 %indvars.iv.next775, %5
  br i1 %8, label %.lr.ph697, label %._crit_edge698, !llvm.loop !94

._crit_edge698:                                   ; preds = %.lr.ph697
  %i.acj = trunc nuw nsw i64 %indvars.iv.next775 to i32 ; 2 uses
  %i.ack = icmp sgt i32 %i.h, %i.acj
  br i1 %i.ack, label %bb.aw, label %._crit_edge698.thread

bb.aw:                                            ; preds = %._crit_edge698
  %i.acl = lshr exact i32 %i.acj, 2               ; 2 uses
  %i.acm = add nsw i32 %i.acl, -1
  %i.acn = zext nneg i32 %i.acm to i64            ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.2545703, i64 %i.acn
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !34
  %i.acq = zext nneg i32 %i.acl to i64            ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.2545703, i64 %i.acq
  store i8 %i.acp, ptr %i.acr, align 1, !tbaa !34
  %i.acs = getelementptr inbounds nuw i8, ptr %.2540704, i64 %i.acn
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !34
  %i.acu = getelementptr inbounds nuw i8, ptr %.2540704, i64 %i.acq
  store i8 %i.act, ptr %i.acu, align 1, !tbaa !34
  br label %._crit_edge698.thread

._crit_edge698.thread:                            ; preds = %.preheader609, %bb.aw, %._crit_edge698
  %.7560.lcssa825 = phi ptr [ %i.acf, %._crit_edge698 ], [ %i.acf, %bb.aw ], [ %.6559701, %.preheader609 ]
  %i.acv = load i32, ptr %i.jq, align 8, !tbaa !42
  %i.acw = sext i32 %i.acv to i64
  %i.acx = sub nsw i64 0, %i.acw
  %i.acy = getelementptr inbounds i8, ptr %.2550702, i64 %i.acx
  %i.acz = load i32, ptr %i.jv, align 4, !tbaa !42
  %i.ada = sext i32 %i.acz to i64
  %i.adb = sub nsw i64 0, %i.ada
  %i.adc = getelementptr inbounds i8, ptr %.2545703, i64 %i.adb
  %i.add = load i32, ptr %i.kc, align 8, !tbaa !42
  %i.ade = sext i32 %i.add to i64
  %i.adf = sub nsw i64 0, %i.ade
  %i.adg = getelementptr inbounds i8, ptr %.2540704, i64 %i.adf
  %i.adh = add nuw nsw i32 %.8705, 1              ; 2 uses
  %exitcond777.not = icmp eq i32 %i.adh, %i.j
  br i1 %exitcond777.not, label %.loopexit, label %.preheader609, !llvm.loop !95

.preheader612:                                    ; preds = %.preheader612.preheader, %._crit_edge688
  %.9694 = phi i32 [ %i.ahl, %._crit_edge688 ], [ 0, %.preheader612.preheader ]
  %.3541693 = phi ptr [ %i.ahk, %._crit_edge688 ], [ %i.ki, %.preheader612.preheader ] ; 7 uses
  %.3546692 = phi ptr [ %i.ahg, %._crit_edge688 ], [ %i.kb, %.preheader612.preheader ] ; 7 uses
  %.3551691 = phi ptr [ %i.ahc, %._crit_edge688 ], [ %i.ju, %.preheader612.preheader ] ; 7 uses
  %.8561690 = phi ptr [ %i.agu, %._crit_edge688 ], [ %.0553, %.preheader612.preheader ] ; 15 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader612
  %i.adi = getelementptr i8, ptr %.3551691, i64 %i.kp
  %scevgep = getelementptr i8, ptr %i.adi, i64 2  ; 3 uses
  %scevgep859 = getelementptr i8, ptr %.3546692, i64 %i.kr ; 3 uses
  %scevgep860 = getelementptr i8, ptr %.3541693, i64 %i.kr ; 3 uses
  %i.adj = getelementptr i8, ptr %.8561690, i64 %i.ks
  %scevgep861 = getelementptr i8, ptr %i.adj, i64 4 ; 3 uses
  %bound0 = icmp ult ptr %.3551691, %scevgep859
  %bound1 = icmp ult ptr %.3546692, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0862 = icmp ult ptr %.3551691, %scevgep860
  %bound1863 = icmp ult ptr %.3541693, %scevgep
  %found.conflict864 = and i1 %bound0862, %bound1863
  %conflict.rdx = or i1 %found.conflict, %found.conflict864
  %bound0865 = icmp ult ptr %.3551691, %scevgep861
  %bound1866 = icmp ult ptr %.8561690, %scevgep
  %found.conflict867 = and i1 %bound0865, %bound1866
  %conflict.rdx868 = or i1 %conflict.rdx, %found.conflict867
  %bound0869 = icmp ult ptr %.3546692, %scevgep860
  %bound1870 = icmp ult ptr %.3541693, %scevgep859
  %found.conflict871 = and i1 %bound0869, %bound1870
  %conflict.rdx872 = or i1 %conflict.rdx868, %found.conflict871
  %bound0873 = icmp ult ptr %.3546692, %scevgep861
  %bound1874 = icmp ult ptr %.8561690, %scevgep859
  %found.conflict875 = and i1 %bound0873, %bound1874
  %conflict.rdx876 = or i1 %conflict.rdx872, %found.conflict875
  %bound0877 = icmp ult ptr %.3541693, %scevgep861
  %bound1878 = icmp ult ptr %.8561690, %scevgep860
  %found.conflict879 = and i1 %bound0877, %bound1878
  %conflict.rdx880 = or i1 %conflict.rdx876, %found.conflict879
  br i1 %conflict.rdx880, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.adk = getelementptr i8, ptr %.8561690, i64 %i.lb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.adl = shl nuw i64 %index, 1
  %i.adm = shl i64 %index, 2                      ; 8 uses
  %next.gep = getelementptr i8, ptr %.8561690, i64 %i.adm ; 3 uses
  %i.adn = getelementptr i8, ptr %.8561690, i64 %i.adm ; 3 uses
  %next.gep881 = getelementptr i8, ptr %i.adn, i64 4
  %i.ado = getelementptr i8, ptr %.8561690, i64 %i.adm ; 3 uses
  %next.gep882 = getelementptr i8, ptr %i.ado, i64 8
  %i.adp = getelementptr i8, ptr %.8561690, i64 %i.adm ; 3 uses
  %next.gep883 = getelementptr i8, ptr %i.adp, i64 12
  %i.adq = getelementptr i8, ptr %.8561690, i64 %i.adm ; 3 uses
  %next.gep884 = getelementptr i8, ptr %i.adq, i64 16
  %i.adr = getelementptr i8, ptr %.8561690, i64 %i.adm ; 3 uses
  %next.gep885 = getelementptr i8, ptr %i.adr, i64 20
  %i.ads = getelementptr i8, ptr %.8561690, i64 %i.adm ; 3 uses
  %next.gep886 = getelementptr i8, ptr %i.ads, i64 24
  %i.adt = getelementptr i8, ptr %.8561690, i64 %i.adm ; 3 uses
  %next.gep887 = getelementptr i8, ptr %i.adt, i64 28
  %i.adu = getelementptr inbounds nuw i8, ptr %.3551691, i64 %i.adl
  %i.adv = load i16, ptr %next.gep, align 1, !alias.scope !96
  %i.adw = load i16, ptr %next.gep881, align 1, !alias.scope !96
  %i.adx = load i16, ptr %next.gep882, align 1, !alias.scope !96
  %i.ady = load i16, ptr %next.gep883, align 1, !alias.scope !96
  %i.adz = load i16, ptr %next.gep884, align 1, !alias.scope !96
  %i.aea = load i16, ptr %next.gep885, align 1, !alias.scope !96
  %i.aeb = load i16, ptr %next.gep886, align 1, !alias.scope !96
  %i.aec = load i16, ptr %next.gep887, align 1, !alias.scope !96
  %i.aed = insertelement <8 x i16> poison, i16 %i.adv, i64 0
  %i.aee = insertelement <8 x i16> %i.aed, i16 %i.adw, i64 1
  %i.aef = insertelement <8 x i16> %i.aee, i16 %i.adx, i64 2
  %i.aeg = insertelement <8 x i16> %i.aef, i16 %i.ady, i64 3
  %i.aeh = insertelement <8 x i16> %i.aeg, i16 %i.adz, i64 4
  %i.aei = insertelement <8 x i16> %i.aeh, i16 %i.aea, i64 5
  %i.aej = insertelement <8 x i16> %i.aei, i16 %i.aeb, i64 6
  %i.aek = insertelement <8 x i16> %i.aej, i16 %i.aec, i64 7
  store <8 x i16> %i.aek, ptr %i.adu, align 1, !alias.scope !99, !noalias !101
  %i.ael = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.aem = getelementptr i8, ptr %i.adn, i64 6
  %i.aen = getelementptr i8, ptr %i.ado, i64 10
  %i.aeo = getelementptr i8, ptr %i.adp, i64 14
  %i.aep = getelementptr i8, ptr %i.adq, i64 18
  %i.aeq = getelementptr i8, ptr %i.adr, i64 22
  %i.aer = getelementptr i8, ptr %i.ads, i64 26
  %i.aes = getelementptr i8, ptr %i.adt, i64 30
  %i.aet = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.aeu = getelementptr i8, ptr %i.adn, i64 7
  %i.aev = getelementptr i8, ptr %i.ado, i64 11
  %i.aew = getelementptr i8, ptr %i.adp, i64 15
  %i.aex = getelementptr i8, ptr %i.adq, i64 19
  %i.aey = getelementptr i8, ptr %i.adr, i64 23
  %i.aez = getelementptr i8, ptr %i.ads, i64 27
  %i.afa = getelementptr i8, ptr %i.adt, i64 31
  %i.afb = load i8, ptr %i.ael, align 1, !tbaa !34, !alias.scope !96
  %i.afc = load i8, ptr %i.aem, align 1, !tbaa !34, !alias.scope !96
  %i.afd = load i8, ptr %i.aen, align 1, !tbaa !34, !alias.scope !96
  %i.afe = load i8, ptr %i.aeo, align 1, !tbaa !34, !alias.scope !96
  %i.aff = load i8, ptr %i.aep, align 1, !tbaa !34, !alias.scope !96
  %i.afg = load i8, ptr %i.aeq, align 1, !tbaa !34, !alias.scope !96
  %i.afh = load i8, ptr %i.aer, align 1, !tbaa !34, !alias.scope !96
  %i.afi = load i8, ptr %i.aes, align 1, !tbaa !34, !alias.scope !96
  %i.afj = insertelement <8 x i8> poison, i8 %i.afb, i64 0
  %i.afk = insertelement <8 x i8> %i.afj, i8 %i.afc, i64 1
  %i.afl = insertelement <8 x i8> %i.afk, i8 %i.afd, i64 2
  %i.afm = insertelement <8 x i8> %i.afl, i8 %i.afe, i64 3
  %i.afn = insertelement <8 x i8> %i.afm, i8 %i.aff, i64 4
  %i.afo = insertelement <8 x i8> %i.afn, i8 %i.afg, i64 5
  %i.afp = insertelement <8 x i8> %i.afo, i8 %i.afh, i64 6
  %i.afq = insertelement <8 x i8> %i.afp, i8 %i.afi, i64 7
  %i.afr = xor <8 x i8> %i.afq, splat (i8 -128)
  %i.afs = getelementptr inbounds nuw i8, ptr %.3546692, i64 %index
  store <8 x i8> %i.afr, ptr %i.afs, align 1, !tbaa !34, !alias.scope !104, !noalias !105
  %i.aft = load i8, ptr %i.aet, align 1, !tbaa !34, !alias.scope !96
  %i.afu = load i8, ptr %i.aeu, align 1, !tbaa !34, !alias.scope !96
  %i.afv = load i8, ptr %i.aev, align 1, !tbaa !34, !alias.scope !96
  %i.afw = load i8, ptr %i.aew, align 1, !tbaa !34, !alias.scope !96
  %i.afx = load i8, ptr %i.aex, align 1, !tbaa !34, !alias.scope !96
  %i.afy = load i8, ptr %i.aey, align 1, !tbaa !34, !alias.scope !96
  %i.afz = load i8, ptr %i.aez, align 1, !tbaa !34, !alias.scope !96
  %i.aga = load i8, ptr %i.afa, align 1, !tbaa !34, !alias.scope !96
  %i.agb = insertelement <8 x i8> poison, i8 %i.aft, i64 0
  %i.agc = insertelement <8 x i8> %i.agb, i8 %i.afu, i64 1
  %i.agd = insertelement <8 x i8> %i.agc, i8 %i.afv, i64 2
  %i.age = insertelement <8 x i8> %i.agd, i8 %i.afw, i64 3
  %i.agf = insertelement <8 x i8> %i.age, i8 %i.afx, i64 4
  %i.agg = insertelement <8 x i8> %i.agf, i8 %i.afy, i64 5
  %i.agh = insertelement <8 x i8> %i.agg, i8 %i.afz, i64 6
  %i.agi = insertelement <8 x i8> %i.agh, i8 %i.aga, i64 7
  %i.agj = xor <8 x i8> %i.agi, splat (i8 -128)
  %i.agk = getelementptr inbounds nuw i8, ptr %.3541693, i64 %index
  store <8 x i8> %i.agj, ptr %i.agk, align 1, !tbaa !34, !alias.scope !106, !noalias !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.agl = icmp eq i64 %index.next, %n.vec
  br i1 %i.agl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !107

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader612
  %indvars.iv770.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader612 ], [ %i.la, %vector.body ]
  %.9562685.ph = phi ptr [ %.8561690, %vector.memcheck ], [ %.8561690, %.preheader612 ], [ %i.adk, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %scalar.ph ], [ %indvars.iv770.ph, %scalar.ph.preheader ] ; 3 uses
  %.9562685 = phi ptr [ %i.agu, %scalar.ph ], [ %.9562685.ph, %scalar.ph.preheader ] ; 4 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.3551691, i64 %indvars.iv770
  %i.agn = load i16, ptr %.9562685, align 1
  store i16 %i.agn, ptr %i.agm, align 1
  %i.ago = getelementptr inbounds nuw i8, ptr %.9562685, i64 2
  %i.agp = getelementptr inbounds nuw i8, ptr %.9562685, i64 3
  %i.agq = load i8, ptr %i.ago, align 1, !tbaa !34
  %i.agr = xor i8 %i.agq, -128
  %i.ags = lshr exact i64 %indvars.iv770, 1       ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %.3546692, i64 %i.ags
  store i8 %i.agr, ptr %i.agt, align 1, !tbaa !34
  %i.agu = getelementptr inbounds nuw i8, ptr %.9562685, i64 4 ; 2 uses
  %i.agv = load i8, ptr %i.agp, align 1, !tbaa !34
  %i.agw = xor i8 %i.agv, -128
end_hunk_2
begin_hunk_3_@mszh_decomp:bb.a
  %i.ae = sub i64 %i.l, %i.w
  %i.af = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.ad) ; 3 uses
  %.not59 = icmp eq i32 %i.z, 0
  br i1 %.not59, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = trunc i64 %i.af to i32
  tail call void @av_memcpy_backptr(ptr noundef %.05085, i32 noundef %i.z, i32 noundef %i.ag) #7
  %.pre = and i64 %i.af, 4294967295
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = and i64 %i.af, 4294967295               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.05085, i8 0, i64 %i.ah, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi = phi i64 [ %i.ah, %bb.f ], [ %.pre, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.05085, i64 %.pre-phi
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.171 = phi ptr [ %i.q, %bb.c ], [ %i.r, %bb.g ] ; 3 uses
  %.151 = phi ptr [ %i.p, %bb.c ], [ %i.ai, %bb.g ] ; 5 uses
  %i.aj = lshr i32 %.087, 1                       ; 2 uses
  %.not60 = icmp eq i32 %i.aj, 0
  br i1 %.not60, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.171, i64 1 ; 4 uses
  %.149.in77 = load i8, ptr %.171, align 1, !tbaa !34 ; 2 uses
  %.not6178 = icmp ne i8 %.149.in77, 0
  %i.al = ptrtoint ptr %.151 to i64
  %i.am = sub i64 %i.l, %i.al
  %i.an = icmp slt i64 %i.am, 32
  %or.cond79 = select i1 %.not6178, i1 true, i1 %i.an
  br i1 %or.cond79, label %.loopexit.split.loop.exit73, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.m, %i.ao
  %i.aq = icmp slt i64 %i.ap, 32
  br i1 %i.aq, label %.loopexit, label %.lr.ph114

.lr.ph:                                           ; preds = %.lr.ph114
  %i.ar = ptrtoint ptr %i.aw to i64
  %i.as = sub i64 %i.m, %i.ar
  %i.at = icmp slt i64 %i.as, 32
  br i1 %i.at, label %.loopexit, label %.lr.ph114, !llvm.loop !112

.lr.ph114:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge80113 = phi ptr [ %i.aw, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 3 uses
  %.25281112 = phi ptr [ %i.au, %.lr.ph ], [ %.151, %.lr.ph.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.25281112, ptr noundef nonnull align 1 dereferenceable(32) %storemerge80113, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.25281112, i64 32 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge80113, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge80113, i64 33 ; 4 uses
  %.149.in = load i8, ptr %i.av, align 1, !tbaa !34 ; 2 uses
  %.not61 = icmp ne i8 %.149.in, 0
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.l, %i.ax
  %i.az = icmp slt i64 %i.ay, 32
  %or.cond = select i1 %.not61, i1 true, i1 %i.az
  br i1 %or.cond, label %.loopexit.split.loop.exit73, label %.lr.ph, !llvm.loop !112

.loopexit.split.loop.exit73:                      ; preds = %.lr.ph114, %bb.i
  %.149.in.lcssa = phi i8 [ %.149.in77, %bb.i ], [ %.149.in, %.lr.ph114 ]
  %storemerge.lcssa.ph74 = phi ptr [ %i.ak, %bb.i ], [ %i.aw, %.lr.ph114 ]
  %.252.lcssa.ph75 = phi ptr [ %.151, %bb.i ], [ %i.au, %.lr.ph114 ]
  %.149.le = zext i8 %.149.in.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %.loopexit.split.loop.exit73, %bb.h
  %.272 = phi ptr [ %.171, %bb.h ], [ %storemerge.lcssa.ph74, %.loopexit.split.loop.exit73 ], [ %i.ak, %.lr.ph.preheader ], [ %i.aw, %.lr.ph ] ; 2 uses
  %.3 = phi ptr [ %.151, %bb.h ], [ %.252.lcssa.ph75, %.loopexit.split.loop.exit73 ], [ %.151, %.lr.ph.preheader ], [ %i.au, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %.04886, %bb.h ], [ %.149.le, %.loopexit.split.loop.exit73 ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ]
  %.1 = phi i32 [ %i.aj, %bb.h ], [ 128, %.loopexit.split.loop.exit73 ], [ 128, %.lr.ph.preheader ], [ 128, %.lr.ph ]
  %i.ba = icmp ult ptr %.272, %i.d
  %i.bb = icmp ult ptr %.3, %i.b                  ; 2 uses
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.050.lcssa = phi ptr [ %2, %bb.a ], [ %.3, %.loopexit ] ; 3 uses
  %.lcssa = phi i1 [ %i.f, %bb.a ], [ %i.bb, %.loopexit ]
  br i1 %.lcssa, label %bb.j, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre97 = ptrtoint ptr %.050.lcssa to i64
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.b to i64
  %i.be = ptrtoint ptr %.050.lcssa to i64         ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @llvm.memset.p0.i64(ptr align 1 %.050.lcssa, i8 0, i64 %i.bf, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge, %bb.j
  %.pre-phi98 = phi i64 [ %.pre97, %._crit_edge._crit_edge ], [ %i.be, %bb.j ]
  %i.bg = ptrtoint ptr %2 to i64
  %i.bh = sub i64 %.pre-phi98, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  ret i32 %i.bi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zlib_decomp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.d = tail call i32 @inflateReset(ptr noundef nonnull %i.c) #7 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.36, i32 noundef %i.d) #7
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %2, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  %i.m = sub i32 %i.l, %3
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.m, ptr %i.n, align 8, !tbaa !117
  %i.o = tail call i32 @inflate(ptr noundef nonnull %i.c, i32 noundef 4) #7 ; 2 uses
  %or.cond = icmp ugt i32 %i.o, 1
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %i.o) #7
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !118  ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %.not41 = icmp eq i32 %4, %i.r
  br i1 %.not41, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %4, i64 noundef %i.q) #7
  %i.s = load i64, ptr %i.p, align 8, !tbaa !118  ; 3 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp ugt i32 %4, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i32, ptr %i.k, align 4, !tbaa !40
  %i.z = sub i32 %i.y, %3
  %i.aa = zext i32 %i.z to i64
  %i.ab = sub i64 %i.aa, %i.s
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %i.ab, i1 false)
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !118
  %i.ad = trunc i64 %i.ac to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1313558101, %bb.b ], [ -1313558101, %bb.d ], [ %i.ad, %bb.g ], [ -1313558101, %bb.f ], [ %4, %bb.e ]
  ret i32 %.0
}

declare void @av_memcpy_backptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #3

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @ff_inflate_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 112}
!30 = !{!10, !6, i64 116}
!31 = !{!10, !6, i64 80}
!32 = !{!10, !6, i64 24}
!33 = !{!10, !16, i64 72}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !6, i64 0}
!36 = !{!"LclDecContext", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !16, i64 16, !37, i64 24}
!37 = !{!"FFZStream", !38, i64 0, !6, i64 112}
!38 = !{!"z_stream_s", !16, i64 0, !6, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !15, i64 40, !16, i64 48, !39, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !6, i64 88, !15, i64 96, !15, i64 104}
!39 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!40 = !{!36, !6, i64 12}
!41 = !{!10, !6, i64 136}
!42 = !{!6, !6, i64 0}
!43 = !{!36, !6, i64 4}
!44 = !{!36, !16, i64 16}
!45 = !{!36, !6, i64 8}
!46 = !{!47, !16, i64 24}
!47 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!48 = !{!47, !6, i64 32}
!49 = !{!16, !16, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !51}
!57 = distinct !{!57, !51}
!58 = distinct !{!58, !51}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !51}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = !{!67, !68, !62}
!67 = distinct !{!67, !63}
!68 = distinct !{!68, !63}
!69 = !{!67}
!70 = !{!68, !62}
!71 = !{!68}
!72 = distinct !{!72, !51, !73, !74}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!"branch_weights", i32 8, i32 8}
!76 = distinct !{!76, !51, !73, !74}
!77 = distinct !{!77, !51, !73}
!78 = distinct !{!78, !51}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = !{!85, !86, !80}
!85 = distinct !{!85, !81}
!86 = distinct !{!86, !81}
!87 = !{!85}
!88 = !{!86, !80}
!89 = !{!86}
!90 = distinct !{!90, !51, !73, !74}
!91 = distinct !{!91, !51, !73}
!92 = distinct !{!92, !51}
!93 = distinct !{!93, !51}
!94 = distinct !{!94, !51}
!95 = distinct !{!95, !51}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = !{!102, !103, !97}
!102 = distinct !{!102, !98}
!103 = distinct !{!103, !98}
!104 = !{!102}
!105 = !{!103, !97}
!106 = !{!103}
!107 = distinct !{!107, !51, !73, !74}
!108 = distinct !{!108, !51, !73}
!109 = distinct !{!109, !51}
!110 = distinct !{!110, !51}
!111 = distinct !{!111, !51}
!112 = distinct !{!112, !51}
!113 = distinct !{!113, !51}
!114 = !{!38, !16, i64 0}
!115 = !{!38, !6, i64 8}
!116 = !{!38, !16, i64 24}
!117 = !{!38, !6, i64 32}
!118 = !{!38, !15, i64 40}
end_hunk_3
