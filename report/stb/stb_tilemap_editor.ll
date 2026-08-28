Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_tilemap_editor?download=true
inline.NumInlined: 201
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@stbte__editor_traverse:bb.a
  %i.mf = icmp slt i32 %i.md, %i.ly
  %or.cond10.i = and i1 %i.mf, %.not9.i
  %i.mg = icmp slt i32 %i.me, %i.mb
  %spec.select.i = and i1 %i.mg, %or.cond10.i
  %i.mh = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4
  %i.mi = icmp sgt i32 %i.mh, 0
  %or.cond.i = select i1 %spec.select.i, i1 %i.mi, i1 false
  br i1 %or.cond.i, label %bb.z, label %stbte__hittest.exit

bb.z:                                             ; preds = %bb.y
  %i.mj = trunc i64 %i.mc to i32
  %i.mk = or disjoint i32 %i.mj, 3
  store i32 %i.mk, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 16), align 8, !tbaa !107
  br label %stbte__hittest.exit

stbte__hittest.exit:                              ; preds = %bb.x, %bb.y, %bb.z
  %i.ml = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.ml, label %bb.ak [
    i32 0, label %bb.aa
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 5, label %bb.af
    i32 6, label %bb.ag
  ]

bb.aa:                                            ; preds = %stbte__hittest.exit
  %i.mm = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mo = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__color_table, i64 84), align 4, !tbaa !37
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.lt, i32 noundef %i.lv, i32 noundef %i.ly, i32 noundef %i.mb, i32 noundef %i.mo) #25
  %.pre352.a = load i32, ptr %i.ls, align 4, !tbaa !121
  %.pre353 = load i32, ptr %i.lu, align 8, !tbaa !122
  %.pre354 = load i32, ptr %i.lw, align 4, !tbaa !123
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.mp = phi i32 [ %.pre354, %bb.ab ], [ %i.lx, %bb.aa ]
  %i.mq = phi i32 [ %.pre353, %bb.ab ], [ %i.lv, %bb.aa ]
  %i.mr = phi i32 [ %.pre352.a, %bb.ab ], [ %i.lt, %bb.aa ]
  tail call void @stbte__toolbar(ptr noundef nonnull %0, i32 noundef %i.mr, i32 noundef %i.mq, i32 noundef %i.mp, i32 poison)
  br label %bb.ak

bb.ad:                                            ; preds = %stbte__hittest.exit
  tail call void @stbte__info(ptr noundef nonnull %0, i32 noundef %i.lt, i32 noundef %i.lv, i32 poison, i32 poison)
  br label %bb.ak

bb.ae:                                            ; preds = %stbte__hittest.exit
  tail call void @stbte__layers(ptr noundef nonnull %0, i32 noundef %i.lt, i32 noundef %i.lv, i32 noundef %i.lx, i32 noundef %i.ma)
  br label %bb.ak

bb.af:                                            ; preds = %stbte__hittest.exit
  tail call void @stbte__categories(ptr noundef nonnull %0, i32 noundef %i.lt, i32 noundef %i.lv, i32 noundef %i.lx, i32 noundef %i.ma)
  br label %bb.ak

bb.ag:                                            ; preds = %stbte__hittest.exit
  %i.ms = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !18
  %i.mw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5536), align 8, !tbaa !18
  %i.mx = icmp eq i32 %i.mv, %i.mw
  br i1 %i.mx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.my = add nsw i32 %i.lt, 1
  %i.mz = add nsw i32 %i.lv, -1
  %i.na = add nsw i32 %i.ly, -1
  %i.nb = add nsw i32 %i.lv, 1
  %i.nc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__color_table, i64 252), align 4, !tbaa !37
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.my, i32 noundef %i.mz, i32 noundef %i.na, i32 noundef %i.nb, i32 noundef %i.nc) #25
  %.pre348 = load i32, ptr %i.ls, align 4, !tbaa !121
  %.pre349 = load i32, ptr %i.lu, align 8, !tbaa !122
  %.pre350 = load i32, ptr %i.lw, align 4, !tbaa !123
  %.pre351 = load i32, ptr %i.lz, align 8, !tbaa !124
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.nd = phi i32 [ %.pre351, %bb.ai ], [ %i.ma, %bb.ah ], [ %i.ma, %bb.ag ]
  %i.ne = phi i32 [ %.pre350, %bb.ai ], [ %i.lx, %bb.ah ], [ %i.lx, %bb.ag ]
  %i.nf = phi i32 [ %.pre349, %bb.ai ], [ %i.lv, %bb.ah ], [ %i.lv, %bb.ag ]
  %i.ng = phi i32 [ %.pre348, %bb.ai ], [ %i.lt, %bb.ah ], [ %i.lt, %bb.ag ]
  tail call void @stbte__palette_of_tiles(ptr noundef nonnull %0, i32 noundef %i.ng, i32 noundef %i.nf, i32 noundef %i.ne, i32 noundef %i.nd)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af, %bb.ae, %bb.ad, %bb.ac, %stbte__hittest.exit
  %i.nh = icmp eq i64 %indvars.iv, 0
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  br i1 %i.nh, label %.split327, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ak
  %i.nk = load i32, ptr %i.ls, align 4, !tbaa !121
  %i.nl = load i32, ptr %i.lw, align 4, !tbaa !123
  %i.nm = add i32 %i.nk, -9
  %i.nn = add i32 %i.nm, %i.nl
  %i.no = load i32, ptr %i.lu, align 8, !tbaa !122
  %i.np = add nsw i32 %i.no, 2
  %i.nq = trunc i64 %i.mc to i32
  %i.nr = or disjoint i32 %i.nq, 131
  %i.ns = tail call i32 @stbte__microbutton(i32 noundef %i.nn, i32 noundef %i.np, i32 noundef 3, i32 noundef %i.nr, i32 noundef 4) ; 2 uses
  %.not272 = icmp eq i32 %i.ns, 0
  br i1 %.not272, label %.split.1, label %bb.al

bb.al:                                            ; preds = %.split.preheader
  %i.nt = icmp slt i32 %i.ns, 1
  %i.nu = zext i1 %i.nt to i32
  store i32 %i.nu, ptr %i.ni, align 8, !tbaa !18
  br label %.split.1

.split.1:                                         ; preds = %.split.preheader, %bb.al
  %i.nv = load i32, ptr %i.ls, align 4, !tbaa !121
  %i.nw = load i32, ptr %i.lw, align 4, !tbaa !123
  %i.nx = add i32 %i.nv, -5
  %i.ny = add i32 %i.nx, %i.nw
  %i.nz = load i32, ptr %i.lu, align 8, !tbaa !122
  %i.oa = add nsw i32 %i.nz, 2
  %i.ob = trunc i64 %i.mc to i32
  %i.oc = or disjoint i32 %i.ob, 259
  %i.od = tail call i32 @stbte__microbutton(i32 noundef %i.ny, i32 noundef %i.oa, i32 noundef 3, i32 noundef %i.oc, i32 noundef 5) ; 2 uses
  %.not272.1 = icmp eq i32 %i.od, 0
  br i1 %.not272.1, label %.split327, label %bb.am

bb.am:                                            ; preds = %.split.1
  %i.oe = load i32, ptr %i.nj, align 4, !tbaa !17
  %i.of = add nsw i32 %i.oe, %i.od
  store i32 %i.of, ptr %i.nj, align 4, !tbaa !17
  br label %.split327

.split327:                                        ; preds = %.split.1, %bb.am, %bb.ak
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond342.not, label %bb.an, label %bb.v, !llvm.loop !228

bb.an:                                            ; preds = %.split327
  %i.og = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5532), align 4, !tbaa !17
  %i.oh = icmp slt i32 %i.og, -5
  br i1 %i.oh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 -5, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5532), align 4, !tbaa !17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.oi = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5468), align 4, !tbaa !17
  %i.oj = icmp slt i32 %i.oi, -5
  br i1 %i.oj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 -5, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5468), align 4, !tbaa !17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ok = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 16), align 16, !tbaa !117
  %.not270 = icmp eq i32 %i.ok, 0
  br i1 %.not270, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ol = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 8), align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.om = load i32, ptr @stbte__region, align 16, !tbaa !120
  %i.on = add nsw i32 %i.om, 1
  %i.oo = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5340), align 4, !tbaa !19
  store i32 %i.oo, ptr %i.a, align 4, !tbaa !37
  %.0251 = add nsw i32 %i.on, %i.ol
  %i.op = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 12), align 4, !tbaa !125
  %i.oq = add nsw i32 %i.op, 2
  %i.or = call i32 @stbte__microbutton_dragger(i32 noundef %.0251, i32 noundef %i.oq, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %i.a)
  %.not271 = icmp eq i32 %i.or, 0
  br i1 %.not271, label %bb.at, label %.sink.split

.sink.split:                                      ; preds = %bb.as
  %i.os = load float, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 20), align 4, !tbaa !126
  %i.ot = fcmp oeq float %i.os, 0.000000e+00
  %. = select i1 %i.ot, float f0x3C23D70A, float 0.000000e+00
  store float %., ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 20), align 4, !tbaa !126
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %bb.as
  %i.ou = load i32, ptr %i.a, align 4, !tbaa !37
  store i32 %i.ou, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5340), align 4, !tbaa !19
  %i.ov = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  %i.ow = icmp eq i32 %i.ov, 1
  br i1 %i.ow, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ox = load float, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 20), align 4, !tbaa !126 ; 3 uses
  %i.oy = fcmp une float %i.ox, 0.000000e+00
  %i.oz = fcmp olt float %i.ox, 1.000000e+00
  %or.cond273 = and i1 %i.oy, %i.oz
  br i1 %or.cond273, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.pa = load float, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5360), align 8, !tbaa !229
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.pa, float 4.000000e+00, float %i.ox) ; 2 uses
  store float %i.pb, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 20), align 4, !tbaa !126
  %1 = fcmp ogt float %i.pb, 1.000000e+00
  br i1 %1, label %2, label %bb.aw

2:                                                ; preds = %bb.av
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 20), align 4, !tbaa !126
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %2, %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ar, %bb.aw
  %i.pc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 40), align 8, !tbaa !117
  %.not270.1 = icmp eq i32 %i.pc, 0
  br i1 %.not270.1, label %._crit_edge356, label %bb.ay

._crit_edge356:                                   ; preds = %bb.ax
  %.pre357 = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  br label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.pd = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 32), align 16, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.pe = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5344), align 8, !tbaa !20
  %i.pf = sub nsw i32 0, %i.pe
  store i32 %i.pf, ptr %i.a, align 4, !tbaa !37
  %.0251.1 = add nsw i32 %i.pd, -6
  %i.pg = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 36), align 4, !tbaa !125
  %i.ph = add nsw i32 %i.pg, 2
  %i.pi = call i32 @stbte__microbutton_dragger(i32 noundef %.0251.1, i32 noundef %i.ph, i32 noundef 5, i32 noundef 130, ptr noundef nonnull %i.a)
  %.not271.1 = icmp eq i32 %i.pi, 0
  br i1 %.not271.1, label %bb.az, label %.sink.split389

.sink.split389:                                   ; preds = %bb.ay
  %i.pj = load float, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 44), align 4, !tbaa !126
  %i.pk = fcmp oeq float %i.pj, 0.000000e+00
  %.391 = select i1 %i.pk, float f0x3C23D70A, float 0.000000e+00
  store float %.391, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 44), align 4, !tbaa !126
  br label %bb.az

bb.az:                                            ; preds = %.sink.split389, %bb.ay
  %i.pl = load i32, ptr %i.a, align 4, !tbaa !37
  %i.pm = sub nsw i32 0, %i.pl
  store i32 %i.pm, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5344), align 8, !tbaa !20
  %i.pn = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101 ; 2 uses
  %i.po = icmp eq i32 %i.pn, 1
  br i1 %i.po, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.pp = load float, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 44), align 4, !tbaa !126 ; 3 uses
  %i.pq = fcmp une float %i.pp, 0.000000e+00
  %i.pr = fcmp olt float %i.pp, 1.000000e+00
  %or.cond273.1 = and i1 %i.pq, %i.pr
  br i1 %or.cond273.1, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ps = load float, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5360), align 8, !tbaa !229
  %i.pt = tail call float @llvm.fmuladd.f32(float %i.ps, float 4.000000e+00, float %i.pp) ; 2 uses
  store float %i.pt, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 44), align 4, !tbaa !126
  %3 = fcmp ogt float %i.pt, 1.000000e+00
  br i1 %3, label %4, label %bb.bc

4:                                                ; preds = %bb.bb
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @stbte__region, i64 44), align 4, !tbaa !126
  br label %bb.bc

bb.bc:                                            ; preds = %4, %bb.bb, %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge356, %bb.bc
  %i.pu = phi i32 [ %.pre357, %._crit_edge356 ], [ %i.pn, %bb.bc ] ; 2 uses
  %i.pv = icmp eq i32 %i.pu, 0
  %i.pw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8 ; 4 uses
  %i.px = icmp ne ptr %i.pw, null
  %or.cond3 = select i1 %i.pv, i1 %i.px, i1 false
  br i1 %or.cond3, label %bb.be, label %stbte__draw_text.exit

bb.be:                                            ; preds = %bb.bd
  %i.py = load i8, ptr %i.pw, align 1, !tbaa !41  ; 2 uses
  %.not7.i = icmp eq i8 %i.py, 0
  br i1 %.not7.i, label %stbte__text_width.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.be, %.lr.ph.i
  %i.pz = phi i8 [ %i.qi, %.lr.ph.i ], [ %i.py, %bb.be ]
  %.09.i = phi ptr [ %i.qa, %.lr.ph.i ], [ %i.pw, %bb.be ]
  %.058.i = phi i32 [ %i.qh, %.lr.ph.i ], [ 0, %bb.be ]
  %i.qa = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 2 uses
  %i.qb = sext i8 %i.pz to i64
  %i.qc = getelementptr [2 x i8], ptr @stbte__fontdata, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 -32
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !21
  %i.qf = sext i16 %i.qe to i32
  %i.qg = add i32 %.058.i, 1
  %i.qh = add i32 %i.qg, %i.qf                    ; 2 uses
  %i.qi = load i8, ptr %i.qa, align 1, !tbaa !41  ; 2 uses
  %.not.i275 = icmp eq i8 %i.qi, 0
  br i1 %.not.i275, label %stbte__text_width.exit, label %.lr.ph.i, !llvm.loop !63

stbte__text_width.exit:                           ; preds = %.lr.ph.i, %bb.be
  %.05.lcssa.i = phi i32 [ 0, %bb.be ], [ %i.qh, %.lr.ph.i ] ; 2 uses
  %i.qj = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5324), align 4, !tbaa !52
  %i.qk = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5332), align 4, !tbaa !54
  %i.ql = add nsw i32 %i.qk, %i.qj
  %i.qm = sdiv i32 %i.ql, 2                       ; 2 uses
  %i.qn = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5328), align 8, !tbaa !53
  %i.qo = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5336), align 8, !tbaa !55
  %i.qp = add nsw i32 %i.qo, %i.qn
  %i.qq = mul nsw i32 %i.qp, 5
  %i.qr = sdiv i32 %i.qq, 6                       ; 5 uses
  %i.qs = sdiv i32 %.05.lcssa.i, 2                ; 2 uses
  %i.qt = sub nsw i32 %i.qm, %i.qs                ; 4 uses
  %i.qu = add nsw i32 %i.qt, -4                   ; 3 uses
  %i.qv = add nsw i32 %i.qr, -8                   ; 3 uses
  %i.qw = add nsw i32 %i.qm, %i.qs                ; 2 uses
  %i.qx = add nsw i32 %i.qw, 4                    ; 3 uses
  %i.qy = add nsw i32 %i.qr, 8                    ; 3 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.qu, i32 noundef %i.qv, i32 noundef %i.qx, i32 noundef %i.qy, i32 noundef 6307872) #25
  %i.qz = add nsw i32 %i.qw, 3                    ; 2 uses
  %i.ra = add nsw i32 %i.qr, -7                   ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.qu, i32 noundef %i.qv, i32 noundef %i.qz, i32 noundef %i.ra, i32 noundef 9461808) #25
  %i.rb = add nsw i32 %i.qr, 7                    ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.qz, i32 noundef %i.qv, i32 noundef %i.qx, i32 noundef %i.rb, i32 noundef 9461808) #25
  %i.rc = add nsw i32 %i.qt, -3                   ; 2 uses
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.rc, i32 noundef %i.rb, i32 noundef %i.qx, i32 noundef %i.qy, i32 noundef 9461808) #25
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.qu, i32 noundef %i.ra, i32 noundef %i.rc, i32 noundef %i.qy, i32 noundef 9461808) #25
  %i.rd = add nsw i32 %i.qr, -4                   ; 2 uses
  %i.re = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !83 ; 3 uses
  %i.rf = add nsw i32 %.05.lcssa.i, 1
  %i.rg = add nsw i32 %i.rf, %i.qt
  %i.rh = load i8, ptr %i.re, align 1, !tbaa !41  ; 2 uses
  %.not24.i.i = icmp eq i8 %i.rh, 0
  br i1 %.not24.i.i, label %stbte__draw_text.exitthread-pre-split, label %.lr.ph.i.i276

.lr.ph.i.i276:                                    ; preds = %stbte__text_width.exit, %stbte__draw_bitmap.exit.i.i
  %i.ri = phi i8 [ %i.so, %stbte__draw_bitmap.exit.i.i ], [ %i.rh, %stbte__text_width.exit ]
  %.01926.i.i = phi i32 [ %i.sn, %stbte__draw_bitmap.exit.i.i ], [ %i.qt, %stbte__text_width.exit ] ; 2 uses
  %.02025.i.i = phi ptr [ %i.rj, %stbte__draw_bitmap.exit.i.i ], [ %i.re, %stbte__text_width.exit ]
  %i.rj = getelementptr inbounds nuw i8, ptr %.02025.i.i, i64 1 ; 2 uses
  %i.rk = sext i8 %i.ri to i64                    ; 2 uses
  %i.rl = getelementptr [2 x i8], ptr @stbte__fontdata, i64 %i.rk
  %i.rm = getelementptr i8, ptr %i.rl, i64 -32
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !21 ; 2 uses
  %i.ro = sext i16 %i.rn to i32                   ; 2 uses
  %i.rp = add nsw i32 %.01926.i.i, %i.ro          ; 2 uses
  %i.rq = icmp sgt i32 %i.rp, %i.rg
  br i1 %i.rq, label %stbte__draw_text.exitthread-pre-split.loopexit, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i276
  %i.rr = icmp sgt i16 %i.rn, 0
  br i1 %i.rr, label %.lr.ph.i.preheader.i.i, label %stbte__draw_bitmap.exit.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.bf
  %i.rs = getelementptr [2 x i8], ptr @stbte__font_offset, i64 %i.rk
  %i.rt = getelementptr i8, ptr %i.rs, i64 -32
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !21
  %i.rv = sext i16 %i.ru to i64
  %i.rw = getelementptr inbounds [2 x i8], ptr @stbte__fontdata, i64 %i.rv
  br label %.lr.ph.i.i.i278

.lr.ph.i.i.i278:                                  ; preds = %stbte__draw_bitmask_as_columns.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.09.i.i.i = phi i32 [ %i.sm, %stbte__draw_bitmask_as_columns.exit.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.078.i.i.i = phi ptr [ %i.ry, %stbte__draw_bitmask_as_columns.exit.i.i.i ], [ %i.rw, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.rx = add nsw i32 %.09.i.i.i, %.01926.i.i     ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.078.i.i.i, i64 2
  %i.rz = load i16, ptr %.078.i.i.i, align 2, !tbaa !21 ; 2 uses
  %.not20.i.i.i.i = icmp eq i16 %i.rz, 0
  br i1 %.not20.i.i.i.i, label %stbte__draw_bitmask_as_columns.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i278
  %i.sa = add nsw i32 %i.rx, 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bk, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.sl, %bb.bk ] ; 4 uses
  %.01622.i.i.i.i = phi i32 [ -1, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.bk ] ; 5 uses
  %.01721.i.i.i.i = phi i16 [ %i.rz, %.lr.ph.i.i.i.i ], [ %.118.i.i.i.i, %bb.bk ] ; 4 uses
  %i.sb = sext i16 %.01721.i.i.i.i to i32
  %i.sc = shl nuw i32 1, %.023.i.i.i.i            ; 2 uses
  %i.sd = and i32 %i.sc, %i.sb
  %.not19.i.i.i.i = icmp eq i32 %i.sd, 0
  br i1 %.not19.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.se = icmp slt i32 %.01622.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %i.se, i32 %.023.i.i.i.i, i32 %.01622.i.i.i.i
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.sf = icmp sgt i32 %.01622.i.i.i.i, -1
  br i1 %i.sf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.sg = add nsw i32 %.01622.i.i.i.i, %i.rd
  %i.sh = add nsw i32 %.023.i.i.i.i, %i.rd
  tail call void @STBTE_DRAW_RECT(i32 noundef %i.rx, i32 noundef %i.sg, i32 noundef %i.sa, i32 noundef %i.sh, i32 noundef 16744512) #25
  %i.si = trunc i32 %i.sc to i16
  %i.sj = sub i16 0, %i.si
  %i.sk = and i16 %.01721.i.i.i.i, %i.sj
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.118.i.i.i.i = phi i16 [ %.01721.i.i.i.i, %bb.bi ], [ %.01721.i.i.i.i, %bb.bh ], [ %i.sk, %bb.bj ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %.01622.i.i.i.i, %bb.bi ], [ %spec.select.i.i.i.i, %bb.bh ], [ -1, %bb.bj ]
  %i.sl = add nuw nsw i32 %.023.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i16 %.118.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %stbte__draw_bitmask_as_columns.exit.i.i.i, label %bb.bg, !llvm.loop !90

stbte__draw_bitmask_as_columns.exit.i.i.i:        ; preds = %bb.bk, %.lr.ph.i.i.i278
  %i.sm = add nuw nsw i32 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i279 = icmp eq i32 %i.sm, %i.ro
  br i1 %exitcond.not.i.i.i279, label %stbte__draw_bitmap.exit.i.i, label %.lr.ph.i.i.i278, !llvm.loop !91

stbte__draw_bitmap.exit.i.i:                      ; preds = %stbte__draw_bitmask_as_columns.exit.i.i.i, %bb.bf
  %i.sn = add i32 %i.rp, 1
  %i.so = load i8, ptr %i.rj, align 1, !tbaa !41  ; 2 uses
  %.not.i.i277 = icmp eq i8 %i.so, 0
  br i1 %.not.i.i277, label %stbte__draw_text.exitthread-pre-split.loopexit, label %.lr.ph.i.i276

stbte__draw_text.exitthread-pre-split.loopexit:   ; preds = %stbte__draw_bitmap.exit.i.i, %.lr.ph.i.i276
  %.pre358.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8
  br label %stbte__draw_text.exitthread-pre-split

stbte__draw_text.exitthread-pre-split:            ; preds = %stbte__draw_text.exitthread-pre-split.loopexit, %stbte__text_width.exit
  %.pre358 = phi ptr [ %.pre358.pre, %stbte__draw_text.exitthread-pre-split.loopexit ], [ %i.re, %stbte__text_width.exit ]
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 20), align 4, !tbaa !101
  br label %stbte__draw_text.exit

stbte__draw_text.exit:                            ; preds = %stbte__draw_text.exitthread-pre-split, %bb.bd
  %i.sp = phi ptr [ %.pre358, %stbte__draw_text.exitthread-pre-split ], [ %i.pw, %bb.bd ]
  %i.sq = phi i32 [ %.pr, %stbte__draw_text.exitthread-pre-split ], [ %i.pu, %bb.bd ] ; 2 uses
  %i.sr = icmp eq i32 %i.sq, 1
  %i.ss = icmp ne ptr %i.sp, null
  %or.cond5 = select i1 %i.sr, i1 %i.ss, i1 false
  br i1 %or.cond5, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %stbte__draw_text.exit
  %i.st = load float, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5360), align 8, !tbaa !229
  %i.su = load float, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5348), align 4, !tbaa !130
  %i.sv = fsub float %i.su, %i.st                 ; 2 uses
  store float %i.sv, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5348), align 4, !tbaa !130
  %i.sw = fcmp olt float %i.sv, 0.000000e+00
  br i1 %i.sw, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5348), align 4, !tbaa !130
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !83
  br label %.thread

bb.bn:                                            ; preds = %stbte__draw_text.exit
  %i.sx = icmp eq i32 %i.sq, 0
  br i1 %i.sx, label %bb.bo, label %.thread

bb.bo:                                            ; preds = %bb.bn
  %i.sy = load i32, ptr @stbte__save, align 4, !tbaa !37
  %i.sz = load i32, ptr @stbte__cp_mode, align 4, !tbaa !37
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [84 x i8], ptr @stbte__color_table, i64 %i.ta
  %i.tc = load i32, ptr @stbte__cp_aspect, align 4, !tbaa !37
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [28 x i8], ptr %i.tb, i64 %i.td
  store i32 %i.sy, ptr %i.te, align 4, !tbaa !37
  store i32 0, ptr @stbte__cp_altered, align 4, !tbaa !37
  br label %.thread

.thread:                                          ; preds = %bb.bm, %bb.bl, %bb.bn, %bb.bo, %bb.b, %bb.c, %bb.a
  ret void
end_hunk_0
