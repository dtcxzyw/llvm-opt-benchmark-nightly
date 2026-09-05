Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb565_swapped?download=true
inline.NumInlined: 232
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rgb888_image_blend:bb.a
  %i.bt = zext nneg i8 %i.bs to i16
  %i.bu = mul nuw nsw i16 %i.bp, %i.bt
  %i.bv = lshr i16 %i.bu, 1
  %i.bw = and i16 %i.bv, 2016
  %i.bx = or disjoint i16 %i.bw, %i.bo
  %i.by = and i16 %i.bf, 31
  %i.bz = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.ca = lshr i8 %i.bz, 3
  %i.cb = zext nneg i8 %i.ca to i16
  %i.cc = mul nuw nsw i16 %i.by, %i.cb
  %i.cd = lshr i16 %i.cc, 5
  %i.ce = or disjoint i16 %i.bx, %i.cd
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.cg = load i16, ptr %i.cf, align 2            ; 4 uses
  %i.ch = lshr i16 %i.cg, 11
  %i.ci = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = lshr i8 %i.ck, 3
  %i.cm = zext nneg i8 %i.cl to i16
  %i.cn = sub nsw i16 %i.ch, %i.cm
  %i.co = tail call i16 @llvm.smax.i16(i16 %i.cn, i16 0)
  %i.cp = shl nuw i16 %i.co, 11
  %i.cq = lshr i16 %i.cg, 5
  %i.cr = and i16 %i.cq, 63
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !17
  %i.cu = lshr i8 %i.ct, 2
  %i.cv = zext nneg i8 %i.cu to i16
  %i.cw = sub nsw i16 %i.cr, %i.cv
  %i.cx = tail call i16 @llvm.smax.i16(i16 %i.cw, i16 0)
  %i.cy = shl nuw nsw i16 %i.cx, 5
  %i.cz = add nuw i16 %i.cy, %i.cp
  %i.da = and i16 %i.cg, 31
  %i.db = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.dc = lshr i8 %i.db, 3
  %i.dd = zext nneg i8 %i.dc to i16
  %i.de = sub nsw i16 %i.da, %i.dd
  %i.df = tail call i16 @llvm.smax.i16(i16 %i.de, i16 0)
  %i.dg = add nuw i16 %i.cz, %i.df
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.di = load i16, ptr %i.dh, align 2            ; 4 uses
  %i.dj = lshr i16 %i.di, 11
  %i.dk = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !17
  %i.dn = lshr i8 %i.dm, 3
  %i.do = zext nneg i8 %i.dn to i16
  %i.dp = add nuw nsw i16 %i.dj, %i.do
  %i.dq = tail call i16 @llvm.umin.i16(i16 %i.dp, i16 31)
  %spec.select.us = shl nuw i16 %i.dq, 11
  %i.dr = lshr i16 %i.di, 5
  %i.ds = and i16 %i.dr, 63
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !17
  %i.dv = lshr i8 %i.du, 2
  %i.dw = zext nneg i8 %i.dv to i16
  %i.dx = add nuw nsw i16 %i.ds, %i.dw
  %i.dy = tail call i16 @llvm.umin.i16(i16 %i.dx, i16 63)
  %i.dz = shl nuw nsw i16 %i.dy, 5
  %i.ea = or disjoint i16 %i.dz, %spec.select.us
  %i.eb = and i16 %i.di, 31
  %i.ec = load i8, ptr %i.dk, align 1, !tbaa !17
  %i.ed = lshr i8 %i.ec, 3
  %i.ee = zext nneg i8 %i.ed to i16
  %i.ef = add nuw nsw i16 %i.eb, %i.ee
  %i.eg = tail call i16 @llvm.umin.i16(i16 %i.ef, i16 31)
  %i.eh = or disjoint i16 %i.ea, %i.eg
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ei = phi i16 [ %i.di, %bb.f ], [ %i.cg, %bb.e ], [ %i.bf, %bb.d ], [ %i.ad, %bb.c ]
  %.0261.us = phi i16 [ %i.eh, %bb.f ], [ %i.dg, %bb.e ], [ %i.ce, %bb.d ], [ %i.bd, %bb.c ]
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  br i1 %i.aa, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ek = getelementptr inbounds nuw i8, ptr %.3277335.us, i64 %indvars.iv435
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !17  ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.em = zext i8 %i.el to i16
  %i.en = mul nuw i16 %i.em, %i.v
  %i.eo = lshr i16 %i.en, 8
  %i.ep = trunc nuw i16 %i.eo to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink = phi i8 [ %i.el, %bb.h ], [ %i.ep, %bb.i ], [ %i.f, %bb.g ]
  %i.eq = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0261.us, i16 noundef zeroext %i.ei, i8 noundef zeroext %.sink) #5
  %i.er = tail call noundef i16 @llvm.bswap.i16(i16 %i.eq)
  store i16 %i.er, ptr %i.ej, align 2, !tbaa !12
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.z
  %exitcond440.not = icmp eq i64 %indvars.iv.next436, %wide.trip.count
  br i1 %exitcond440.not, label %._crit_edge.us, label %bb.b, !llvm.loop !167

._crit_edge.us:                                   ; preds = %bb.j
  %i.es = getelementptr inbounds nuw i8, ptr %.6291333.us, i64 %i.w
  %i.et = getelementptr inbounds i8, ptr %.6334.us, i64 %i.x
  %i.eu = getelementptr inbounds i8, ptr %.3277335.us, i64 %i.y
  %.4278.us = select i1 %i.aa, ptr null, ptr %i.eu
  %i.ev = add nuw nsw i32 %.4336.us, 1            ; 2 uses
  %exitcond441.not = icmp eq i32 %i.ev, %i.d
  br i1 %exitcond441.not, label %.critedge, label %.lr.ph.us, !llvm.loop !168

bb.k:                                             ; preds = %bb.a
  %i.ew = icmp eq ptr %i.o, null                  ; 2 uses
  %i.ex = zext i8 %i.f to i16                     ; 4 uses
  %i.ey = icmp ugt i8 %i.f, -4                    ; 2 uses
  %or.cond = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond, label %.preheader321, label %bb.m

.preheader321:                                    ; preds = %bb.k
  %i.ez = icmp sgt i32 %i.d, 0
  br i1 %i.ez, label %.preheader320.lr.ph, label %.critedge

.preheader320.lr.ph:                              ; preds = %.preheader321
  %i.fa = icmp sgt i32 %.fr, 0
  %i.fb = zext i32 %i.i to i64
  %i.fc = sext i32 %i.m to i64
  br i1 %i.fa, label %.preheader320.us.preheader, label %.critedge

.preheader320.us.preheader:                       ; preds = %.preheader320.lr.ph
  %i.fd = zext nneg i8 %1 to i64
  %wide.trip.count474 = zext nneg i32 %.fr to i64
  br label %.preheader320.us

.preheader320.us:                                 ; preds = %.preheader320.us.preheader, %._crit_edge.us383
  %.0262379.us = phi i32 [ %i.ft, %._crit_edge.us383 ], [ 0, %.preheader320.us.preheader ]
  %.0279378.us = phi ptr [ %i.fs, %._crit_edge.us383 ], [ %i.k, %.preheader320.us.preheader ] ; 2 uses
  %.0285377.us = phi ptr [ %i.fr, %._crit_edge.us383 ], [ %i.g, %.preheader320.us.preheader ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader320.us, %bb.l
  %indvars.iv469 = phi i64 [ 0, %.preheader320.us ], [ %indvars.iv.next470, %bb.l ] ; 2 uses
  %indvars.iv467 = phi i64 [ 0, %.preheader320.us ], [ %indvars.iv.next468, %bb.l ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0279378.us, i64 %indvars.iv467 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fg = load <2 x i8>, ptr %i.ff, align 1, !tbaa !17
  %i.fh = and <2 x i8> %i.fg, <i8 -4, i8 -8>
  %i.fi = zext <2 x i8> %i.fh to <2 x i16>
  %i.fj = shl nuw <2 x i16> %i.fi, <i16 3, i16 8> ; 2 uses
  %shift = shufflevector <2 x i16> %i.fj, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i16> %i.fj, %shift
  %i.fk = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.fl = load i8, ptr %i.fe, align 1, !tbaa !17
  %i.fm = lshr i8 %i.fl, 3
  %i.fn = zext nneg i8 %i.fm to i16
  %i.fo = or disjoint i16 %i.fk, %i.fn
  %i.fp = tail call noundef i16 @llvm.bswap.i16(i16 %i.fo)
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %.0285377.us, i64 %indvars.iv469
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !12
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, %i.fd
  %exitcond475.not = icmp eq i64 %indvars.iv.next470, %wide.trip.count474
  br i1 %exitcond475.not, label %._crit_edge.us383, label %bb.l, !llvm.loop !169

._crit_edge.us383:                                ; preds = %bb.l
  %i.fr = getelementptr inbounds nuw i8, ptr %.0285377.us, i64 %i.fb ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.0279378.us, i64 %i.fc ; 2 uses
  %i.ft = add nuw nsw i32 %.0262379.us, 1         ; 2 uses
  %exitcond476.not = icmp eq i32 %i.ft, %i.d
  br i1 %exitcond476.not, label %.loopexit322, label %.preheader320.us, !llvm.loop !170

bb.m:                                             ; preds = %bb.k
  %i.fu = icmp ult i8 %i.f, -3
  %or.cond6 = select i1 %i.ew, i1 %i.fu, i1 false
  %i.fv = icmp sgt i32 %i.d, 0
  %or.cond406 = select i1 %or.cond6, i1 %i.fv, i1 false
  br i1 %or.cond406, label %.preheader323.lr.ph, label %.loopexit322

.preheader323.lr.ph:                              ; preds = %bb.m
  %i.fw = icmp slt i32 %.fr, 1
  %i.fx = xor i8 %i.f, -1
  %i.fy = zext i8 %i.fx to i16                    ; 3 uses
  %i.fz = zext i32 %i.i to i64
  %i.ga = sext i32 %i.m to i64
  %cond527 = icmp eq i8 %i.f, 0
  %or.cond528 = select i1 %i.fw, i1 true, i1 %cond527
  br i1 %or.cond528, label %.critedge, label %.preheader323.us.preheader

.preheader323.us.preheader:                       ; preds = %.preheader323.lr.ph
  %i.gb = zext nneg i8 %1 to i64
  %wide.trip.count462 = zext nneg i32 %.fr to i64
  br label %.preheader323.us

.preheader323.us:                                 ; preds = %.preheader323.us.preheader, %._crit_edge.split.split.us357
  %.1263351.us = phi i32 [ %i.ho, %._crit_edge.split.split.us357 ], [ 0, %.preheader323.us.preheader ]
  %.1280348.us = phi ptr [ %i.hn, %._crit_edge.split.split.us357 ], [ %i.k, %.preheader323.us.preheader ] ; 2 uses
  %.1286345.us = phi ptr [ %i.hm, %._crit_edge.split.split.us357 ], [ %i.g, %.preheader323.us.preheader ] ; 2 uses
  br label %lv_color_24_16_mix.exit.us353

lv_color_24_16_mix.exit.us353:                    ; preds = %lv_color_24_16_mix.exit.us353, %.preheader323.us
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %lv_color_24_16_mix.exit.us353 ], [ 0, %.preheader323.us ] ; 2 uses
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %lv_color_24_16_mix.exit.us353 ], [ 0, %.preheader323.us ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.1280348.us, i64 %indvars.iv455 ; 3 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.1286345.us, i64 %indvars.iv457 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !12
  %i.gf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ge) ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !17
  %i.gi = lshr i8 %i.gh, 3
  %i.gj = zext nneg i8 %i.gi to i16
  %i.gk = mul nuw nsw i16 %i.gj, %i.ex
  %i.gl = lshr i16 %i.gf, 11
  %i.gm = mul nuw nsw i16 %i.gl, %i.fy
  %i.gn = add nuw nsw i16 %i.gk, %i.gm
  %i.go = shl i16 %i.gn, 3
  %i.gp = and i16 %i.go, -2048
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !17
  %i.gs = lshr i8 %i.gr, 2
  %i.gt = zext nneg i8 %i.gs to i16
  %i.gu = mul nuw nsw i16 %i.gt, %i.ex
  %i.gv = lshr i16 %i.gf, 5
  %i.gw = and i16 %i.gv, 63
  %i.gx = mul nuw nsw i16 %i.gw, %i.fy
  %i.gy = add nuw nsw i16 %i.gu, %i.gx
  %i.gz = lshr i16 %i.gy, 3
  %i.ha = and i16 %i.gz, 2016
  %i.hb = or disjoint i16 %i.ha, %i.gp
  %i.hc = load i8, ptr %i.gc, align 1, !tbaa !17
  %i.hd = lshr i8 %i.hc, 3
  %i.he = zext nneg i8 %i.hd to i16
  %i.hf = mul nuw nsw i16 %i.he, %i.ex
  %i.hg = and i16 %i.gf, 31
  %i.hh = mul nuw nsw i16 %i.hg, %i.fy
  %i.hi = add nuw nsw i16 %i.hf, %i.hh
  %i.hj = lshr i16 %i.hi, 8
  %i.hk = add i16 %i.hb, %i.hj
  %i.hl = tail call noundef i16 @llvm.bswap.i16(i16 %i.hk)
  store i16 %i.hl, ptr %i.gd, align 2, !tbaa !12
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, %i.gb
  %exitcond463.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count462
  br i1 %exitcond463.not, label %._crit_edge.split.split.us357, label %lv_color_24_16_mix.exit.us353, !llvm.loop !171

._crit_edge.split.split.us357:                    ; preds = %lv_color_24_16_mix.exit.us353
  %i.hm = getelementptr inbounds nuw i8, ptr %.1286345.us, i64 %i.fz ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %.1280348.us, i64 %i.ga ; 2 uses
  %i.ho = add nuw nsw i32 %.1263351.us, 1         ; 2 uses
  %exitcond464.not = icmp eq i32 %i.ho, %i.d
  br i1 %exitcond464.not, label %.loopexit322, label %.preheader323.us, !llvm.loop !172

.loopexit322:                                     ; preds = %._crit_edge.split.split.us357, %._crit_edge.us383, %bb.m
  %.2287 = phi ptr [ %i.g, %bb.m ], [ %i.fr, %._crit_edge.us383 ], [ %i.hm, %._crit_edge.split.split.us357 ] ; 2 uses
  %.2281 = phi ptr [ %i.k, %bb.m ], [ %i.fs, %._crit_edge.us383 ], [ %i.hn, %._crit_edge.split.split.us357 ] ; 2 uses
  %i.hp = icmp ne ptr %i.o, null
  %or.cond9 = select i1 %i.hp, i1 %i.ey, i1 false
  %i.hq = icmp sgt i32 %i.d, 0                    ; 2 uses
  %or.cond407 = select i1 %or.cond9, i1 %i.hq, i1 false
  br i1 %or.cond407, label %.preheader318.lr.ph, label %.loopexit

.preheader318.lr.ph:                              ; preds = %.loopexit322
  %i.hr = icmp sgt i32 %.fr, 0
  %i.hs = zext i32 %i.i to i64
  %i.ht = sext i32 %i.m to i64
  %i.hu = sext i32 %i.q to i64
  br i1 %i.hr, label %.preheader318.us.preheader, label %.critedge

.preheader318.us.preheader:                       ; preds = %.preheader318.lr.ph
  %i.hv = zext nneg i8 %1 to i64
  %wide.trip.count487 = zext nneg i32 %.fr to i64
  br label %.preheader318.us

.preheader318.us:                                 ; preds = %.preheader318.us.preheader, %._crit_edge.us396
  %.2391.us = phi i32 [ %i.jy, %._crit_edge.us396 ], [ 0, %.preheader318.us.preheader ]
  %.0274390.us = phi ptr [ %i.jx, %._crit_edge.us396 ], [ %i.o, %.preheader318.us.preheader ] ; 2 uses
  %.3282389.us = phi ptr [ %i.jw, %._crit_edge.us396 ], [ %.2281, %.preheader318.us.preheader ] ; 2 uses
  %.3288388.us = phi ptr [ %i.jv, %._crit_edge.us396 ], [ %.2287, %.preheader318.us.preheader ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader318.us, %lv_color_24_16_mix.exit311.us
  %indvars.iv482 = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next483, %lv_color_24_16_mix.exit311.us ] ; 3 uses
  %indvars.iv480 = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next481, %lv_color_24_16_mix.exit311.us ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.3282389.us, i64 %indvars.iv480 ; 5 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %.3288388.us, i64 %indvars.iv482 ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !12
  %i.hz = tail call noundef i16 @llvm.bswap.i16(i16 %i.hy) ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0274390.us, i64 %indvars.iv482
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !17  ; 3 uses
  switch i8 %i.ib, label %bb.p [
    i8 0, label %lv_color_24_16_mix.exit311.us
    i8 -1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.id = load <2 x i8>, ptr %i.ic, align 1, !tbaa !17
  %i.ie = and <2 x i8> %i.id, <i8 -4, i8 -8>
  %i.if = zext <2 x i8> %i.ie to <2 x i16>
  %i.ig = shl nuw <2 x i16> %i.if, <i16 3, i16 8> ; 2 uses
  %shift543 = shufflevector <2 x i16> %i.ig, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop544 = or disjoint <2 x i16> %i.ig, %shift543
  %i.ih = extractelement <2 x i16> %foldExtExtBinop544, i64 0
  %i.ii = load i8, ptr %i.hw, align 1, !tbaa !17
  %i.ij = lshr i8 %i.ii, 3
  %i.ik = zext nneg i8 %i.ij to i16
  %i.il = or disjoint i16 %i.ih, %i.ik
  br label %lv_color_24_16_mix.exit311.us

bb.p:                                             ; preds = %bb.n
  %i.im = zext i8 %i.ib to i16                    ; 3 uses
  %i.in = xor i8 %i.ib, -1
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !17
  %i.iq = lshr i8 %i.ip, 3
  %i.ir = zext nneg i8 %i.iq to i16
  %i.is = mul nuw nsw i16 %i.ir, %i.im
  %i.it = lshr i16 %i.hz, 11
  %i.iu = zext i8 %i.in to i16                    ; 3 uses
  %i.iv = mul nuw nsw i16 %i.it, %i.iu
  %i.iw = add nuw nsw i16 %i.is, %i.iv
  %i.ix = shl i16 %i.iw, 3
  %i.iy = and i16 %i.ix, -2048
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !17
  %i.jb = lshr i8 %i.ja, 2
  %i.jc = zext nneg i8 %i.jb to i16
  %i.jd = mul nuw nsw i16 %i.jc, %i.im
  %i.je = lshr i16 %i.hz, 5
  %i.jf = and i16 %i.je, 63
  %i.jg = mul nuw nsw i16 %i.jf, %i.iu
  %i.jh = add nuw nsw i16 %i.jd, %i.jg
  %i.ji = lshr i16 %i.jh, 3
  %i.jj = and i16 %i.ji, 2016
  %i.jk = or disjoint i16 %i.jj, %i.iy
  %i.jl = load i8, ptr %i.hw, align 1, !tbaa !17
  %i.jm = lshr i8 %i.jl, 3
  %i.jn = zext nneg i8 %i.jm to i16
  %i.jo = mul nuw nsw i16 %i.jn, %i.im
  %i.jp = and i16 %i.hz, 31
  %i.jq = mul nuw nsw i16 %i.jp, %i.iu
  %i.jr = add nuw nsw i16 %i.jo, %i.jq
  %i.js = lshr i16 %i.jr, 8
  %i.jt = add i16 %i.jk, %i.js
  br label %lv_color_24_16_mix.exit311.us

lv_color_24_16_mix.exit311.us:                    ; preds = %bb.p, %bb.o, %bb.n
  %.0.i310.us = phi i16 [ %i.jt, %bb.p ], [ %i.il, %bb.o ], [ %i.hz, %bb.n ]
  %i.ju = tail call noundef i16 @llvm.bswap.i16(i16 %.0.i310.us)
  store i16 %i.ju, ptr %i.hx, align 2, !tbaa !12
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, %i.hv
  %exitcond488.not = icmp eq i64 %indvars.iv.next483, %wide.trip.count487
  br i1 %exitcond488.not, label %._crit_edge.us396, label %bb.n, !llvm.loop !173

._crit_edge.us396:                                ; preds = %lv_color_24_16_mix.exit311.us
  %i.jv = getelementptr inbounds nuw i8, ptr %.3288388.us, i64 %i.hs ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %.3282389.us, i64 %i.ht ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %.0274390.us, i64 %i.hu ; 2 uses
  %i.jy = add nuw nsw i32 %.2391.us, 1            ; 2 uses
  %exitcond489.not = icmp eq i32 %i.jy, %i.d
  br i1 %exitcond489.not, label %.loopexit, label %.preheader318.us, !llvm.loop !174

.loopexit:                                        ; preds = %._crit_edge.us396, %.loopexit322
  %.4289 = phi ptr [ %.2287, %.loopexit322 ], [ %i.jv, %._crit_edge.us396 ]
  %.4283 = phi ptr [ %.2281, %.loopexit322 ], [ %i.jw, %._crit_edge.us396 ]
  %.1275 = phi ptr [ %i.o, %.loopexit322 ], [ %i.jx, %._crit_edge.us396 ] ; 2 uses
  %i.jz = icmp ne ptr %.1275, null
  %i.ka = icmp ult i8 %i.f, -3
  %or.cond12 = select i1 %i.jz, i1 %i.ka, i1 false
  %or.cond408 = select i1 %or.cond12, i1 %i.hq, i1 false
  br i1 %or.cond408, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.kb = icmp sgt i32 %.fr, 0
  %i.kc = zext i32 %i.i to i64
  %i.kd = sext i32 %i.m to i64
  %i.ke = sext i32 %i.q to i64
  br i1 %i.kb, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kf = zext nneg i8 %1 to i64
  %wide.trip.count497 = zext nneg i32 %.fr to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.3405 = phi i32 [ %i.lz, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.2276404 = phi ptr [ %i.ly, %._crit_edge ], [ %.1275, %.preheader.preheader ] ; 2 uses
  %.5284403 = phi ptr [ %i.lx, %._crit_edge ], [ %.4283, %.preheader.preheader ] ; 2 uses
  %.5290402 = phi ptr [ %i.lw, %._crit_edge ], [ %.4289, %.preheader.preheader ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %lv_color_24_16_mix.exit313
  %indvars.iv492 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next493, %lv_color_24_16_mix.exit313 ] ; 3 uses
  %indvars.iv490 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next491, %lv_color_24_16_mix.exit313 ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.5290402, i64 %indvars.iv492 ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !12 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.2276404, i64 %indvars.iv492
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !17
  %i.kk = zext i8 %i.kj to i16
  %i.kl = mul nuw i16 %i.kk, %i.ex
  %i.km = lshr i16 %i.kl, 8                       ; 5 uses
  %cond = icmp eq i16 %i.km, 0
end_hunk_0
