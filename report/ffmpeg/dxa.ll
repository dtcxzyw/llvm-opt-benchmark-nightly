Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dxa?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@decode_frame:bb.a
bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !56
  %i.ck = and i32 %i.cj, -3
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !56
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store i32 2, ptr %i.cl, align 8, !tbaa !57
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !49 ; 2 uses
  %.not115 = icmp eq ptr %i.cn, null
  %i.co = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.cp = load i32, ptr %i.au, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !30
  %i.cs = mul nsw i32 %i.cr, %i.cp
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  br i1 %.not115, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull align 1 %i.cn, i64 %i.ct, i1 false)
  br label %decode_13.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr align 1 %i.co, i8 0, i64 %i.ct, i1 false)
  %i.cu = load i32, ptr %i.ci, align 4, !tbaa !56
  %i.cv = or i32 %i.cu, 2
  store i32 %i.cv, ptr %i.ci, align 4, !tbaa !56
  store i32 1, ptr %i.cl, align 8, !tbaa !57
  br label %decode_13.exit

bb.p:                                             ; preds = %bb.l, %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !56
  %i.cy = or i32 %i.cx, 2
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !56
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.cz, align 8, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !30
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph185, label %decode_13.exit

.lr.ph185:                                        ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.de = sext i32 %i.av to i64
  %.pre212 = load i32, ptr %i.dd, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph185, %bb.q
  %i.df = phi i32 [ %.pre212, %.lr.ph185 ], [ %i.di, %bb.q ]
  %.096183 = phi i32 [ 0, %.lr.ph185 ], [ %i.dl, %bb.q ]
  %.0101182 = phi ptr [ %i.ar, %.lr.ph185 ], [ %i.dk, %bb.q ] ; 2 uses
  %.0103181 = phi ptr [ %i.ap, %.lr.ph185 ], [ %i.dh, %bb.q ] ; 2 uses
  %i.dg = sext i32 %i.df to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0103181, ptr align 1 %.0101182, i64 %i.dg, i1 false)
  %i.dh = getelementptr inbounds i8, ptr %.0103181, i64 %i.de
  %i.di = load i32, ptr %i.dd, align 8, !tbaa !29 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %.0101182, i64 %i.dj
  %i.dl = add nuw nsw i32 %.096183, 1             ; 2 uses
  %i.dm = load i32, ptr %i.da, align 4, !tbaa !30
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.q, label %decode_13.exit, !llvm.loop !38

bb.r:                                             ; preds = %bb.l, %bb.l
  %.not112 = icmp eq ptr %i.at, null
  br i1 %.not112, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #7
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !58
  %i.dq = and i32 %i.dp, 4194304
  %.not113 = icmp eq i32 %i.dq, 0
  br i1 %.not113, label %bb.bt, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !56
  %i.dt = and i32 %i.ds, -3
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !56
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 2, ptr %i.du, align 8, !tbaa !57
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !30
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph180, label %decode_13.exit

.lr.ph180:                                        ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.dz = sext i32 %i.av to i64                   ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph180, %bb.w
  %.1178 = phi i32 [ 0, %.lr.ph180 ], [ %i.es, %bb.w ]
  %.099177 = phi ptr [ %i.at, %.lr.ph180 ], [ %.1100, %bb.w ] ; 3 uses
  %.1102176 = phi ptr [ %i.ar, %.lr.ph180 ], [ %i.er, %bb.w ] ; 3 uses
  %.1104175 = phi ptr [ %i.ap, %.lr.ph180 ], [ %i.ep, %bb.w ] ; 3 uses
  %.not114 = icmp eq ptr %.099177, null
  %i.ea = load i32, ptr %i.dy, align 8, !tbaa !29 ; 3 uses
  br i1 %.not114, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %.lr.ph ], [ 0, %.preheader ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1102176, i64 %indvars.iv209
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !46
  %i.ee = getelementptr inbounds nuw i8, ptr %.099177, i64 %indvars.iv209
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !46
  %i.eg = xor i8 %i.ef, %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %.1104175, i64 %indvars.iv209
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !46
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.ei = load i32, ptr %i.dy, align 8, !tbaa !29 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next210, %i.ej
  br i1 %i.ek, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.el = phi i32 [ %i.ea, %.preheader ], [ %i.ei, %.lr.ph ]
  %i.em = getelementptr inbounds i8, ptr %.099177, i64 %i.dz
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.en = sext i32 %i.ea to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1104175, ptr align 1 %.1102176, i64 %i.en, i1 false)
  %.pre = load i32, ptr %i.dy, align 8, !tbaa !29
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %i.eo = phi i32 [ %i.el, %._crit_edge ], [ %.pre, %bb.v ]
  %.1100 = phi ptr [ %i.em, %._crit_edge ], [ null, %bb.v ]
  %i.ep = getelementptr inbounds i8, ptr %.1104175, i64 %i.dz
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds i8, ptr %.1102176, i64 %i.eq
  %i.es = add nuw nsw i32 %.1178, 1               ; 2 uses
  %i.et = load i32, ptr %i.dv, align 4, !tbaa !30
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %bb.u, label %decode_13.exit, !llvm.loop !40

bb.x:                                             ; preds = %bb.l, %bb.l
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !56
  %i.ex = and i32 %i.ew, -3
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !56
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 2, ptr %i.ey, align 8, !tbaa !57
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !49 ; 2 uses
  %.not111 = icmp eq ptr %i.fa, null
  br i1 %.not111, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %bb.bt

bb.z:                                             ; preds = %bb.x
  %i.fb = load ptr, ptr %1, align 8, !tbaa !49
  %i.fc = load i32, ptr %i.au, align 8, !tbaa !47 ; 12 uses
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !50
  %sext154 = shl i64 %i.fd, 32
  %i.fe = ashr exact i64 %sext154, 32             ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.ar, i64 %i.fe ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !29 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 7 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !30 ; 3 uses
  %i.fk = mul nsw i32 %i.fj, %i.fh
  %i.fl = ashr i32 %i.fk, 4
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = add nsw i64 %i.fm, 12
  %i.fo = load i32, ptr %i.ar, align 1, !tbaa !46
  %i.fp = call i32 @llvm.bswap.i32(i32 %i.fo)
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = add nsw i64 %i.fn, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.ft = load i32, ptr %i.fs, align 1, !tbaa !46
  %i.fu = call i32 @llvm.bswap.i32(i32 %i.ft)
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = add nsw i64 %i.fr, %i.fv
  %i.fx = icmp ule i64 %i.fw, %i.fe
  %i.fy = icmp sgt i32 %i.fj, 0
  %or.cond = and i1 %i.fy, %i.fx
  br i1 %or.cond, label %.preheader11.lr.ph.i, label %decode_13.exit

.preheader11.lr.ph.i:                             ; preds = %bb.z
  %i.fz = sext i32 %i.fc to i64                   ; 34 uses
  %i.ga = shl nsw i32 %i.fc, 2
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = icmp sgt i32 %i.fh, 0
  br i1 %i.gc, label %.preheader11.preheader.i, label %decode_13.exit

.preheader11.preheader.i:                         ; preds = %.preheader11.lr.ph.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fm ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fq ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fv
  %i.gh = shl nsw i32 %i.fc, 1                    ; 3 uses
  %i.gi = sext i32 %i.gh to i64                   ; 4 uses
  %i.gj = or disjoint i32 %i.gh, 1                ; 2 uses
  %i.gk = sext i32 %i.gj to i64                   ; 3 uses
  %i.gl = mul nsw i32 %i.fc, 3
  %i.gm = sext i32 %i.gl to i64                   ; 3 uses
  %i.gn = add nsw i32 %i.gj, %i.fc
  %i.go = sext i32 %i.gn to i64                   ; 3 uses
  %i.gp = add nsw i32 %i.gh, 2                    ; 3 uses
  %i.gq = sext i32 %i.gp to i64                   ; 4 uses
  %4 = or disjoint i32 %i.gp, 1                   ; 2 uses
  %i.gr = sext i32 %4 to i64                      ; 3 uses
  %i.gs = add nsw i32 %i.gp, %i.fc
  %i.gt = sext i32 %i.gs to i64                   ; 3 uses
  %i.gu = add nsw i32 %4, %i.fc
  %i.gv = sext i32 %i.gu to i64                   ; 3 uses
  br label %.preheader11.i

.preheader11.i:                                   ; preds = %._crit_edge.i, %.preheader11.preheader.i
  %i.gw = phi i32 [ %i.acn, %._crit_edge.i ], [ %i.fj, %.preheader11.preheader.i ]
  %i.gx = phi i32 [ %i.aco, %._crit_edge.i ], [ %i.fh, %.preheader11.preheader.i ] ; 3 uses
  %.024186.i = phi i32 [ %i.acr, %._crit_edge.i ], [ 0, %.preheader11.preheader.i ] ; 8 uses
  %.025585.i = phi ptr [ %.1256.lcssa.i, %._crit_edge.i ], [ %i.gg, %.preheader11.preheader.i ] ; 2 uses
  %.025984.i = phi ptr [ %.1260.lcssa.i, %._crit_edge.i ], [ %i.gf, %.preheader11.preheader.i ] ; 2 uses
  %.026683.i = phi ptr [ %.1267.lcssa.i, %._crit_edge.i ], [ %i.ge, %.preheader11.preheader.i ] ; 2 uses
  %.027482.i = phi ptr [ %.1275.lcssa.i, %._crit_edge.i ], [ %i.gd, %.preheader11.preheader.i ] ; 2 uses
  %.027681.i = phi ptr [ %i.acq, %._crit_edge.i ], [ %i.fa, %.preheader11.preheader.i ] ; 2 uses
  %.027880.i = phi ptr [ %i.acp, %._crit_edge.i ], [ %i.fb, %.preheader11.preheader.i ] ; 2 uses
  %invariant.op.i = sub nsw i32 0, %.024186.i     ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader11.i
  %invariant.op159.i = sub nuw nsw i32 -2, %.024186.i ; 2 uses
  %invariant.op = sub i32 -2, %.024186.i
  %invariant.op294 = sub i32 -2, %.024186.i
  %invariant.op295 = sub i32 -4, %.024186.i
  %invariant.op296 = sub i32 -4, %.024186.i
  %invariant.op297 = sub i32 -4, %.024186.i
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 11 uses
  %i.gz = phi i32 [ %i.gx, %.lr.ph.i ], [ %i.ack, %.loopexit.i ] ; 2 uses
  %.125674.i = phi ptr [ %.025585.i, %.lr.ph.i ], [ %.3258.i, %.loopexit.i ] ; 13 uses
  %.126073.i = phi ptr [ %.025984.i, %.lr.ph.i ], [ %.6265.i, %.loopexit.i ] ; 15 uses
  %.126772.i = phi ptr [ %.026683.i, %.lr.ph.i ], [ %.8.i, %.loopexit.i ] ; 57 uses
  %.127571.i = phi ptr [ %.027482.i, %.lr.ph.i ], [ %i.hf, %.loopexit.i ] ; 2 uses
  %i.ha = icmp ugt ptr %.126772.i, %i.ff
  %i.hb = icmp ugt ptr %.126073.i, %i.ff
  %or.cond.i120 = select i1 %i.ha, i1 true, i1 %i.hb
  %i.hc = icmp ugt ptr %.125674.i, %i.ff
  %or.cond285.i = select i1 %or.cond.i120, i1 true, i1 %i.hc
  br i1 %or.cond285.i, label %decode_13.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hd = getelementptr inbounds nuw i8, ptr %.027880.i, i64 %indvars.iv.i ; 63 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.027681.i, i64 %indvars.iv.i ; 13 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.127571.i, i64 1 ; 2 uses
  %i.hg = load i8, ptr %.127571.i, align 1, !tbaa !46 ; 3 uses
  %i.hh = zext i8 %i.hg to i32                    ; 2 uses
  switch i8 %i.hg, label %bb.bq [
    i8 4, label %bb.ac
    i8 0, label %.loopexit.loopexit.i
    i8 5, label %.loopexit.loopexit.i
    i8 34, label %.preheader.i
    i8 33, label %.preheader.i
    i8 32, label %.preheader4.i
    i8 8, label %bb.aj
    i8 3, label %.preheader7.preheader.i
    i8 2, label %.preheader9.preheader.i
    i8 1, label %bb.ah
    i8 10, label %bb.ai
    i8 11, label %bb.ai
    i8 12, label %bb.ai
    i8 13, label %bb.ai
    i8 14, label %bb.ai
    i8 15, label %bb.ai
  ]

.preheader9.preheader.i:                          ; preds = %bb.ab
  %i.hi = load i8, ptr %.126772.i, align 1, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.hd, i8 %i.hi, i64 4, i1 false)
  %i.hj = getelementptr inbounds i8, ptr %i.hd, i64 %i.fz ; 2 uses
  %i.hk = load i8, ptr %.126772.i, align 1, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.hj, i8 %i.hk, i64 4, i1 false)
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 %i.fz ; 2 uses
  %i.hm = load i8, ptr %.126772.i, align 1, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.hl, i8 %i.hm, i64 4, i1 false)
  %i.hn = getelementptr inbounds i8, ptr %i.hl, i64 %i.fz
  %i.ho = load i8, ptr %.126772.i, align 1, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.hn, i8 %i.ho, i64 4, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %.126772.i, i64 1
  br label %.loopexit.i

.preheader7.preheader.i:                          ; preds = %bb.ab
  %i.hq = load i32, ptr %.126772.i, align 1
  store i32 %i.hq, ptr %i.hd, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.126772.i, i64 4
  %i.hs = getelementptr inbounds i8, ptr %i.hd, i64 %i.fz ; 2 uses
  %i.ht = load i32, ptr %i.hr, align 1
  store i32 %i.ht, ptr %i.hs, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.126772.i, i64 8
  %i.hv = getelementptr inbounds i8, ptr %i.hs, i64 %i.fz ; 2 uses
  %i.hw = load i32, ptr %i.hu, align 1
  store i32 %i.hw, ptr %i.hv, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.126772.i, i64 12
  %i.hy = getelementptr inbounds i8, ptr %i.hv, i64 %i.fz
  %i.hz = load i32, ptr %i.hx, align 1
  store i32 %i.hz, ptr %i.hy, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.126772.i, i64 16
  br label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %i.ib = load i8, ptr %.126073.i, align 1, !tbaa !46 ; 3 uses
  %i.ic = lshr i8 %i.ib, 4
  %i.id = zext nneg i8 %i.ic to i32               ; 2 uses
  %i.ie = sub nsw i32 8, %i.id
  %.not2832.i = icmp slt i8 %i.ib, 0
  %spec.select.i = select i1 %.not2832.i, i32 %i.ie, i32 %i.id ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.126073.i, i64 1
  %i.ig = and i8 %i.ib, 15                        ; 2 uses
  %i.ih = zext nneg i8 %i.ig to i32               ; 2 uses
  %.not284.i = icmp samesign ult i8 %i.ig, 8
  %i.ii = sub nsw i32 8, %i.ih
  %.0227.i = select i1 %.not284.i, i32 %i.ih, i32 %i.ii ; 4 uses
  %i.ij = sub nsw i32 0, %spec.select.i
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv.i, %i.ik
  br i1 %i.il, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.im = trunc nuw nsw i64 %indvars.iv.i to i32
  %reass.sub193 = sub i32 %i.gz, %i.im
  %i.in = add i32 %reass.sub193, -4
  %i.io = icmp slt i32 %i.in, %spec.select.i
  %i.ip = icmp slt i32 %.0227.i, %invariant.op.i
  %or.cond287.i = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %or.cond287.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iq = load i32, ptr %i.fi, align 4, !tbaa !30
  %.reass166.i.reass.reass = add i32 %i.iq, %invariant.op297
  %i.ir = icmp slt i32 %.reass166.i.reass.reass, %.0227.i
  br i1 %i.ir, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %spec.select.i, i32 noundef %.0227.i) #7
  br label %decode_13.exit

bb.ag:                                            ; preds = %bb.ae
  %i.is = mul nsw i32 %.0227.i, %i.fc
  %i.it = add nsw i32 %i.is, %spec.select.i
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds i8, ptr %i.he, i64 %i.iu
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.ag, %bb.ab, %bb.ab
  %.2261.i = phi ptr [ %i.if, %bb.ag ], [ %.126073.i, %bb.ab ], [ %.126073.i, %bb.ab ]
  %.0243.i = phi ptr [ %i.iv, %bb.ag ], [ %i.he, %bb.ab ], [ %i.he, %bb.ab ] ; 2 uses
  %i.iw = load i32, ptr %.0243.i, align 1
  store i32 %i.iw, ptr %i.hd, align 1
  %i.ix = getelementptr inbounds i8, ptr %i.hd, i64 %i.fz ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %.0243.i, i64 %i.fz ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 1
  store i32 %i.iz, ptr %i.ix, align 1
  %i.ja = getelementptr inbounds i8, ptr %i.ix, i64 %i.fz ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %i.iy, i64 %i.fz ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 1
  store i32 %i.jc, ptr %i.ja, align 1
  %i.jd = getelementptr inbounds i8, ptr %i.ja, i64 %i.fz
  %i.je = getelementptr inbounds i8, ptr %i.jb, i64 %i.fz
  %i.jf = load i32, ptr %i.je, align 1
  store i32 %i.jf, ptr %i.jd, align 1
  br label %.loopexit.i

bb.ah:                                            ; preds = %bb.ab
  %i.jg = load i16, ptr %.125674.i, align 1, !tbaa !46
  %i.jh = call i16 @llvm.bswap.i16(i16 %i.jg)
  %i.ji = zext i16 %i.jh to i32
  br label %.preheader5.i

bb.ai:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.jj = add nsw i32 %i.hh, -10
  %i.jk = load i8, ptr %.125674.i, align 1, !tbaa !46
  %i.jl = zext i8 %i.jk to i32                    ; 2 uses
  %i.jm = and i32 %i.jl, 240
  %i.jn = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr @shift1, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !46
  %i.jq = zext nneg i8 %i.jp to i32
  %i.jr = shl i32 %i.jm, %i.jq
  %i.js = and i32 %i.jl, 15
  %i.jt = getelementptr inbounds nuw i8, ptr @shift2, i64 %i.jn
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !46
  %i.jv = zext nneg i8 %i.ju to i32
  %i.jw = shl i32 %i.js, %i.jv
  %i.jx = or i32 %i.jw, %i.jr
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %bb.ai, %bb.ah
  %.sink.i = phi i64 [ 1, %bb.ai ], [ 2, %bb.ah ]
  %.0.i121 = phi i32 [ %i.jx, %bb.ai ], [ %i.ji, %bb.ah ] ; 16 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.125674.i, i64 %.sink.i
  %i.jz = and i32 %.0.i121, 32768                 ; 2 uses
  %.not282.not.i = icmp eq i32 %i.jz, 0
  %.lobit.i = lshr exact i32 %i.jz, 15
  %.4270.idx.i = zext nneg i32 %.lobit.i to i64
  %.4270.i = getelementptr inbounds nuw i8, ptr %.126772.i, i64 %.4270.idx.i ; 2 uses
  %.in.in.i = select i1 %.not282.not.i, ptr %i.he, ptr %.126772.i
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !46
end_hunk_0
