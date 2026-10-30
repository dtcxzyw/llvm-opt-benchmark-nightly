Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/rdpng-8?download=true
inline.NumInlined: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@start_input_png:bb.a
    i32 2, label %.thread258
  ]

.thread258:                                       ; preds = %bb.ag, %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_raw_row, ptr %i.do, align 8, !tbaa !80
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.pr = load i32, ptr %i.cv, align 4, !tbaa !48  ; 2 uses
  %i.dp = icmp eq i32 %.pr, 2
  br i1 %i.dp, label %bb.ai, label %.thread

.thread:                                          ; preds = %bb.ag, %bb.ah
  %i.dq = phi i32 [ %.pr, %bb.ah ], [ %i.dn, %bb.ag ] ; 2 uses
  %i.dr = add i32 %i.dq, -6
  %or.cond232 = icmp ult i32 %i.dr, 10
  br i1 %or.cond232, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread, %bb.ah
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_rgb_row, ptr %i.ds, align 8, !tbaa !80
  br label %bb.am

bb.aj:                                            ; preds = %.thread
  %i.dt = icmp eq i32 %i.dq, 4
  br i1 %i.dt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_rgb_cmyk_row, ptr %i.du, align 8, !tbaa !80
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dv = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store i32 9, ptr %i.dw, align 8, !tbaa !32
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !34
  call void %i.dx(ptr noundef nonnull %0) #7
  %.pre247 = load i8, ptr %i.bo, align 1, !tbaa !77
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.al, %bb.ak
  %i.dy = phi i8 [ %.pre247, %bb.al ], [ %i.dg, %bb.ai ], [ %i.dg, %bb.ak ]
  %i.dz = icmp eq i8 %i.dy, 6
  br i1 %i.dz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 1, ptr %i.ea, align 4, !tbaa !50
  br label %bb.bj

bb.ao:                                            ; preds = %.thread258, %bb.am
  %.1206260 = phi i32 [ 1, %.thread258 ], [ 0, %bb.am ]
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 0, ptr %i.eb, align 4, !tbaa !50
  br label %bb.bj

bb.ap:                                            ; preds = %bb.m
  %i.ec = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 44
  store i32 %i.bj, ptr %i.ed, align 4, !tbaa !49
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  store i32 %i.bi, ptr %i.ee, align 4, !tbaa !49
  %i.ef = zext i8 %i.bm to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 52
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !49
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store i32 1034, ptr %i.eh, align 8, !tbaa !32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !79
  call void %i.ej(ptr noundef nonnull %0, i32 noundef 1) #7
  %i.ek = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.em = call i32 @spng_get_plte(ptr noundef %i.ek, ptr noundef nonnull %i.el) #7 ; 2 uses
  %.not224 = icmp eq i32 %i.em, 0
  br i1 %.not224, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store i32 1030, ptr %i.eo, align 8, !tbaa !32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 44
  %i.eq = call ptr @spng_strerror(i32 noundef %i.em) #7
  %i.er = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ep, ptr noundef nonnull dereferenceable(1) %i.eq, i64 noundef 79) #7 ; 0 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !27
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 123
  store i8 0, ptr %i.et, align 1, !tbaa !33
  %i.eu = load ptr, ptr %0, align 8, !tbaa !27
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !34
  call void %i.ev(ptr noundef nonnull %0) #7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ew = load i8, ptr %i.bn, align 8, !tbaa !47
  %.not225 = icmp eq i8 %i.ew, 8
  br i1 %.not225, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ex = load i32, ptr %i.el, align 8, !tbaa !51 ; 2 uses
  %i.ey = icmp ugt i32 %i.ex, 256
  br i1 %i.ey, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ez = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store i32 1031, ptr %i.fa, align 8, !tbaa !32
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !34
  call void %i.fb(ptr noundef nonnull %0) #7
  %.pre246 = load i32, ptr %i.el, align 8, !tbaa !51
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fc = phi i32 [ %.pre246, %bb.at ], [ %i.ex, %bb.as ] ; 4 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.au
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.fc to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ff = icmp eq i32 %i.fc, 1
  br i1 %i.ff, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.av

bb.av:                                            ; preds = %bb.bb, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.bb ] ; 3 uses
  %.0202238 = phi i32 [ 1, %.lr.ph.new ], [ %.1.1, %bb.bb ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bb ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv ; 3 uses
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !53  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !54
  %.not226 = icmp eq i8 %i.fh, %i.fj
  br i1 %.not226, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !55
  %.not227 = icmp eq i8 %i.fh, %i.fl
  br i1 %.not227, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.1 = phi i32 [ 0, %bb.ax ], [ %.0202238, %bb.aw ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load i8, ptr %i.fn, align 4, !tbaa !53  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 5
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !54
  %.not226.1 = icmp eq i8 %i.fo, %i.fq
  br i1 %.not226.1, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 6
  %i.fs = load i8, ptr %i.fr, align 2, !tbaa !55
  %.not227.1 = icmp eq i8 %i.fo, %i.fs
  br i1 %.not227.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1.1 = phi i32 [ 0, %bb.ba ], [ %.1, %bb.az ]  ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.av, !llvm.loop !68

._crit_edge.unr-lcssa:                            ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.0202238.epil.init = phi i32 [ 1, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod278 = trunc i32 %i.fc to i1
  call void @llvm.assume(i1 %lcmp.mod278)
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.epil.init ; 3 uses
  %i.fu = load i8, ptr %i.ft, align 4, !tbaa !53  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !54
  %.not226.epil = icmp eq i8 %i.fu, %i.fw
  br i1 %.not226.epil, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.epil.preheader
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !55
  %.not227.epil = icmp eq i8 %i.fu, %i.fy
  br i1 %.not227.epil, label %._crit_edge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.epil.preheader
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bc, %bb.bd, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ 0, %bb.bd ], [ %.0202238.epil.init, %bb.bc ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !48 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.bf, label %bb.be

._crit_edge.thread:                               ; preds = %bb.au
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !48 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %.thread234, label %bb.be

bb.be:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.gf = phi i32 [ %i.gd, %._crit_edge.thread ], [ %i.ga, %._crit_edge ] ; 2 uses
  %i.gg = phi ptr [ %i.gc, %._crit_edge.thread ], [ %i.fz, %._crit_edge ]
  %.0202.lcssa262 = phi i32 [ 1, %._crit_edge.thread ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %3 = icmp eq i32 %i.gf, 2
  %4 = icmp ne i32 %.0202.lcssa262, 0
  %or.cond9 = select i1 %3, i1 %4, i1 false
  br i1 %or.cond9, label %.thread234, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge
  %.old8.not = icmp eq i32 %.1.lcssa, 0
  br i1 %.old8.not, label %.thread268, label %.thread234

.thread234:                                       ; preds = %._crit_edge.thread, %bb.bf, %bb.be
  %i.gh = phi ptr [ %i.fz, %bb.bf ], [ %i.gg, %bb.be ], [ %i.gc, %._crit_edge.thread ]
  store i32 1, ptr %i.gh, align 4, !tbaa !48
  br label %.thread268

bb.bg:                                            ; preds = %bb.be
  %i.gi = icmp ne i32 %i.gf, 1
  %5 = icmp ne i32 %.0202.lcssa262, 0
  %or.cond12 = select i1 %i.gi, i1 true, i1 %5
  br i1 %or.cond12, label %.thread268, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gj = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  store i32 9, ptr %i.gk, align 8, !tbaa !32
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !34
  call void %i.gl(ptr noundef nonnull %0) #7
  br label %.thread268

.thread268:                                       ; preds = %bb.bf, %.thread234, %bb.bh, %bb.bg
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @get_indexed_row, ptr %i.gm, align 8, !tbaa !80
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 0, ptr %i.gn, align 4, !tbaa !50
  br label %bb.bj

bb.bi:                                            ; preds = %bb.m
  %i.go = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  store i32 1031, ptr %i.gp, align 8, !tbaa !32
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !34
  call void %i.gq(ptr noundef nonnull %0) #7
  br label %bb.bj

bb.bj:                                            ; preds = %bb.an, %bb.ao, %bb.aa, %bb.ab, %bb.bi, %.thread268
  %.2 = phi i32 [ 0, %bb.bi ], [ %.0205, %bb.aa ], [ %.0205, %bb.ab ], [ 0, %bb.an ], [ %.1206260, %bb.ao ], [ 0, %.thread268 ]
  %.0204 = phi i64 [ 3, %bb.bi ], [ 2, %bb.aa ], [ 1, %bb.ab ], [ 4, %bb.an ], [ 3, %bb.ao ], [ 1, %.thread268 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !48 ; 6 uses
  %i.gt = icmp eq i32 %i.gs, 2
  %i.gu = add i32 %i.gs, -6
  %or.cond233 = icmp ult i32 %i.gu, 10
  %or.cond236 = or i1 %i.gt, %or.cond233
  br i1 %or.cond236, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gv = zext nneg i32 %i.gs to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !49
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bj
  switch i32 %i.gs, label %bb.bm [
    i32 1, label %.sink.split
    i32 4, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.bl, %bb.bl, %bb.bk
  %.sink = phi i32 [ %i.gx, %bb.bk ], [ %i.gs, %bb.bl ], [ %i.gs, %bb.bl ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sink, ptr %i.gy, align 8, !tbaa !81
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split, %bb.bl
  %i.gz = load i32, ptr %2, align 4, !tbaa !72
  %i.ha = zext i32 %i.gz to i64
  %i.hb = mul nuw nsw i64 %.0204, %i.ha
  %i.hc = load i8, ptr %i.bn, align 8, !tbaa !47
  %i.hd = zext i8 %i.hc to i64
  %i.he = mul nuw nsw i64 %i.hb, %i.hd
  %i.hf = lshr i64 %i.he, 3                       ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 1136
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !57
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !35
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !37
  %i.hk = call ptr %i.hj(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.hf) #7 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 1120
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !58
  %.not228 = icmp eq i32 %.2, 0
  br i1 %.not228, label %.new, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 2 uses
  store ptr %i.hk, ptr %i.hm, align 8, !tbaa !82
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !59
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 1, ptr %i.ho, align 8, !tbaa !83
  br label %.loopexit

.new:                                             ; preds = %bb.bm
  %i.hp = load i8, ptr %i.bn, align 8, !tbaa !47
  %i.hq = icmp eq i8 %i.hp, 16
  %i.hr = select i1 %i.hq, i32 65535, i32 255     ; 2 uses
  %i.hs = load ptr, ptr %i.hh, align 8, !tbaa !35
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !84
  %i.hv = load i32, ptr %2, align 4, !tbaa !72
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !81
  %i.hy = mul i32 %i.hx, %i.hv
  %i.hz = call ptr %i.hu(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.hy, i32 noundef 1) #7
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !59
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 1, ptr %i.ib, align 8, !tbaa !83
  %i.ic = load ptr, ptr %i.hh, align 8, !tbaa !35
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !37
  %i.ie = zext nneg i32 %i.hr to i64              ; 4 uses
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %i.ig = call ptr %i.id(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.if) #7 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 1144 ; 3 uses
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ig, i8 0, i64 %i.if, i1 false)
  %i.ii = lshr i32 %i.hr, 1
  %i.ij = zext nneg i32 %i.ii to i64              ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %invariant.op = sub nuw i64 %i.ie, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.new
  %.0239 = phi i64 [ 0, %.new ], [ %i.je, %bb.bo ] ; 4 uses
  %niter284 = phi i64 [ 0, %.new ], [ %niter284.next.1, %bb.bo ] ; 2 uses
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !26
  %notmask = shl nsw i32 -1, %i.il
  %i.im = xor i32 %notmask, -1
  %i.in = zext nneg i32 %i.im to i64
  %i.io = mul nuw nsw i64 %.0239, %i.in
  %i.ip = add nuw nsw i64 %i.io, %i.ij
  %i.iq = udiv i64 %i.ip, %i.ie
  %i.ir = trunc i64 %i.iq to i8
  %i.is = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %.0239
  store i8 %i.ir, ptr %i.it, align 1, !tbaa !33
  %i.iu = or disjoint i64 %.0239, 1               ; 2 uses
  %i.iv = load i32, ptr %i.ik, align 8, !tbaa !26
  %notmask.1 = shl nsw i32 -1, %i.iv
  %i.iw = xor i32 %notmask.1, -1
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = mul nuw nsw i64 %i.iu, %i.ix
  %i.iz = add nuw nsw i64 %i.iy, %i.ij
  %i.ja = udiv i64 %i.iz, %i.ie
  %i.jb = trunc i64 %i.ja to i8
  %i.jc = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iu
  store i8 %i.jb, ptr %i.jd, align 1, !tbaa !33
  %i.je = add nuw nsw i64 %.0239, 2
  %niter284.next.1 = add nuw nsw i64 %niter284, 2
  %niter284.ncmp.1 = icmp eq i64 %niter284, %invariant.op
  br i1 %niter284.ncmp.1, label %.loopexit, label %bb.bo, !llvm.loop !69

.loopexit:                                        ; preds = %bb.bo, %bb.bn
  %i.jf = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.jg = call i32 @spng_decode_image(ptr noundef %i.jf, ptr noundef null, i64 noundef 0, i32 noundef 256, i32 noundef 256) #7 ; 2 uses
  %.not230 = icmp eq i32 %i.jg, 0
  br i1 %.not230, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.loopexit
  %i.jh = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  store i32 1030, ptr %i.ji, align 8, !tbaa !32
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 44
  %i.jk = call ptr @spng_strerror(i32 noundef %i.jg) #7
  %i.jl = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.jj, ptr noundef nonnull dereferenceable(1) %i.jk, i64 noundef 79) #7 ; 0 uses
  %i.jm = load ptr, ptr %0, align 8, !tbaa !27
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 123
  store i8 0, ptr %i.jn, align 1, !tbaa !33
  %i.jo = load ptr, ptr %0, align 8, !tbaa !27
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !34
  call void %i.jp(ptr noundef nonnull %0) #7
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @read_icc_profile_png(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %4 = alloca %struct.spng_iccp, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = icmp ne ptr %2, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 23, ptr %i.d, align 8, !tbaa !32
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call void %i.e(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @spng_get_iccp(ptr noundef nonnull %i.g, ptr noundef nonnull %4) #7
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
