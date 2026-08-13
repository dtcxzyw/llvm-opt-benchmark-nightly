inline.NumInlined: 79
inline.NumDeleted: 25
begin_hunk_0_@lv_buttonmatrix_event:bb.a
  %i.dj = load i8, ptr %i.di, align 4
  %i.dk = and i8 %i.dj, 1
  %.not324 = icmp eq i8 %i.dk, 0
  %i.dl = load i32, ptr %i.ct, align 8, !tbaa !8  ; 5 uses
  %.not416 = icmp eq i32 %i.dl, 0                 ; 2 uses
  br i1 %.not324, label %.preheader, label %.preheader397

.preheader397:                                    ; preds = %bb.aq
  br i1 %.not416, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader397
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !23
  %wide.trip.count = zext i32 %i.dl to i64
  br label %bb.ar

.preheader:                                       ; preds = %bb.aq
  br i1 %.not416, label %.critedge, label %.lr.ph405

.lr.ph405:                                        ; preds = %.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !23
  %wide.trip.count430 = zext i32 %i.dl to i64
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph, %.critedge10
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge10 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !30
  %i.ds = and i32 %i.dr, 336
  %or.cond373 = icmp eq i32 %i.ds, 256
  br i1 %or.cond373, label %.critedge.loopexit470.split.loop.exit, label %.critedge10

.critedge10:                                      ; preds = %bb.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.ar, !llvm.loop !31

bb.as:                                            ; preds = %.lr.ph405, %.critedge14
  %indvars.iv427 = phi i64 [ 0, %.lr.ph405 ], [ %indvars.iv.next428, %.critedge14 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv427
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !30
  %i.dv = and i32 %i.du, 80
  %or.cond375.not = icmp eq i32 %i.dv, 0
  br i1 %or.cond375.not, label %.critedge.loopexit.split.loop.exit, label %.critedge14

.critedge14:                                      ; preds = %bb.as
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next428, %wide.trip.count430
  br i1 %exitcond431.not, label %.critedge, label %bb.as, !llvm.loop !32

.critedge.loopexit.split.loop.exit:               ; preds = %bb.as
  %i.dw = trunc nuw i64 %indvars.iv427 to i32
  br label %.critedge

.critedge.loopexit470.split.loop.exit:            ; preds = %bb.ar
  %i.dx = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge10, %.critedge14, %.critedge.loopexit470.split.loop.exit, %.critedge.loopexit.split.loop.exit, %.preheader397, %.preheader
  %.2295 = phi i32 [ 0, %.preheader397 ], [ 0, %.preheader ], [ %i.dl, %.critedge14 ], [ %i.dw, %.critedge.loopexit.split.loop.exit ], [ %i.dx, %.critedge.loopexit470.split.loop.exit ], [ %i.dl, %.critedge10 ]
  store i32 %.2295, ptr %i.dd, align 8, !tbaa !21
  br label %.critedge337

has_popovers_in_top_row.exit.thread:              ; preds = %bb.f, %bb.e, %.lr.ph.i, %bb.i, %bb.b
  %i.dy = and i32 %i.e, -2
  %or.cond16 = icmp eq i32 %i.dy, 20
  br i1 %or.cond16, label %.critedge337, label %bb.at

bb.at:                                            ; preds = %has_popovers_in_top_row.exit.thread
  switch i32 %i.e, label %.critedge337 [
    i32 17, label %bb.au
    i32 29, label %bb.ca
    i32 42, label %bb.cb
  ]

bb.au:                                            ; preds = %bb.at
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 22 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !21
  tail call fastcc void @invalidate_button_area(ptr noundef %i.f, i32 noundef %i.ea)
  %i.eb = tail call i32 @lv_event_get_key(ptr noundef %1) #7
  switch i32 %i.eb, label %..critedge340_crit_edge [
    i32 19, label %bb.av
    i32 20, label %bb.ay
    i32 18, label %bb.be
    i32 17, label %bb.bp
  ]

..critedge340_crit_edge:                          ; preds = %bb.au
  %.pre449 = load i32, ptr %i.dz, align 8, !tbaa !21
  br label %.critedge340

bb.av:                                            ; preds = %bb.au
  %i.ec = load i32, ptr %i.dz, align 8, !tbaa !21 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 65535
  %i.ee = add i32 %i.ec, 1
  %storemerge321 = select i1 %i.ed, i32 0, i32 %i.ee ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !8  ; 2 uses
  %.not322 = icmp ult i32 %storemerge321, %i.eg
  %spec.store.select341 = select i1 %.not322, i32 %storemerge321, i32 0 ; 3 uses
  store i32 %spec.store.select341, ptr %i.dz, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.pre448 = load ptr, ptr %i.eh, align 8, !tbaa !23
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge18, %bb.av
  %i.ei = phi i32 [ %spec.store.select, %.critedge18 ], [ %spec.store.select341, %bb.av ] ; 3 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.pre448, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !30
  %i.em = and i32 %i.el, 80
  %or.cond377.not = icmp eq i32 %i.em, 0
  br i1 %or.cond377.not, label %.critedge340, label %.critedge18

.critedge18:                                      ; preds = %bb.aw
  %i.en = add i32 %i.ei, 1                        ; 2 uses
  %.not323 = icmp ult i32 %i.en, %i.eg
  %spec.store.select = select i1 %.not323, i32 %i.en, i32 0 ; 3 uses
  store i32 %spec.store.select, ptr %i.dz, align 8
  %i.eo = icmp eq i32 %spec.store.select, %spec.store.select341
  br i1 %i.eo, label %bb.ax, label %bb.aw, !llvm.loop !33

bb.ax:                                            ; preds = %.critedge18
  store i32 65535, ptr %i.dz, align 8, !tbaa !21
  br label %.critedge340

bb.ay:                                            ; preds = %bb.au
  %i.ep = load i32, ptr %i.dz, align 8, !tbaa !21 ; 2 uses
  switch i32 %i.ep, label %bb.az [
    i32 65535, label %.thread345
    i32 0, label %.thread345
  ]

.thread345:                                       ; preds = %bb.ay, %bb.ay
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread345
  %storemerge.in = phi i32 [ %i.er, %.thread345 ], [ %i.ep, %bb.ay ] ; 2 uses
  %storemerge = add i32 %storemerge.in, -1        ; 2 uses
  store i32 %storemerge, ptr %i.dz, align 8, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !23
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %i.ev = phi i32 [ %storemerge320, %bb.bc ], [ %storemerge, %bb.az ] ; 4 uses
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !30
  %i.ez = and i32 %i.ey, 80
  %or.cond379.not = icmp eq i32 %i.ez, 0
  br i1 %or.cond379.not, label %.critedge340, label %.critedge20

.critedge20:                                      ; preds = %bb.ba
  %.not319 = icmp eq i32 %i.ev, 0
  br i1 %.not319, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.critedge20
  %i.fa = load i32, ptr %i.eu, align 8, !tbaa !8
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge20, %bb.bb
  %storemerge320.in = phi i32 [ %i.fa, %bb.bb ], [ %i.ev, %.critedge20 ] ; 2 uses
  %storemerge320 = add i32 %storemerge320.in, -1  ; 2 uses
  store i32 %storemerge320, ptr %i.dz, align 8, !tbaa !21
  %i.fb = icmp eq i32 %storemerge320.in, %storemerge.in
  br i1 %i.fb, label %bb.bd, label %bb.ba, !llvm.loop !34

bb.bd:                                            ; preds = %bb.bc
  store i32 65535, ptr %i.dz, align 8, !tbaa !21
  br label %.critedge340

bb.be:                                            ; preds = %bb.au
  %i.fc = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 30) #7
  %i.fd = ptrtoint ptr %i.fc to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.fd to i32
  %i.fe = load i32, ptr %i.dz, align 8, !tbaa !21 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 65535
  br i1 %i.ff, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.dz, align 8, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !23 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !30
  %i.fk = and i32 %i.fj, 80
  %or.cond381.not504 = icmp eq i32 %i.fk, 0
  br i1 %or.cond381.not504, label %.critedge340, label %.critedge22.preheader

.critedge22.preheader:                            ; preds = %bb.bf
  %i.fl = load i32, ptr %i.fi, align 8, !tbaa !8
  %i.fm = zext i32 %i.fl to i64
  br label %.critedge22

bb.bg:                                            ; preds = %.critedge22
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv442505
  %3 = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fo = load i32, ptr %3, align 4, !tbaa !30
  %i.fp = and i32 %i.fo, 80
  %or.cond381.not = icmp eq i32 %i.fp, 0
  br i1 %or.cond381.not, label %.critedge340, label %.critedge22, !llvm.loop !35

.critedge22:                                      ; preds = %.critedge22.preheader, %bb.bg
  %indvars.iv442505 = phi i64 [ %indvars.iv.next443, %bb.bg ], [ 0, %.critedge22.preheader ] ; 2 uses
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442505, 1 ; 3 uses
  %i.fq = trunc nuw i64 %indvars.iv.next443 to i32 ; 2 uses
  store i32 %i.fq, ptr %i.dz, align 8, !tbaa !21
  %.not318 = icmp samesign ult i64 %indvars.iv.next443, %i.fm
  br i1 %.not318, label %bb.bg, label %bb.bh, !llvm.loop !35

bb.bh:                                            ; preds = %.critedge22
  store i32 65535, ptr %i.dz, align 8, !tbaa !21
  br label %.critedge340

bb.bi:                                            ; preds = %bb.be
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !22
  %i.ft = zext i32 %i.fe to i64
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !36
  %i.fw = tail call i32 @lv_area_get_width(ptr noundef nonnull %i.fu) #7
  %i.fx = ashr i32 %i.fw, 1
  %i.fy = add nsw i32 %i.fx, %i.fv                ; 2 uses
  %i.fz = load i32, ptr %i.dz, align 8, !tbaa !21 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !8  ; 2 uses
  %i.gc = icmp ult i32 %i.fz, %i.gb
  br i1 %i.gc, label %.lr.ph412, label %.critedge340

.lr.ph412:                                        ; preds = %bb.bi
  %i.gd = load ptr, ptr %i.fr, align 8, !tbaa !22 ; 2 uses
  %i.ge = zext i32 %i.fz to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !37
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph412, %bb.bn
  %indvars.iv438 = phi i64 [ %i.ge, %.lr.ph412 ], [ %indvars.iv.next439, %bb.bn ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %indvars.iv438 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !37
  %i.gm = icmp sgt i32 %i.gl, %i.gh
  br i1 %i.gm, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.gn = load i32, ptr %i.gj, align 4, !tbaa !36
  %.not316 = icmp slt i32 %i.fy, %i.gn
  br i1 %.not316, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !38
  %i.gq = add nsw i32 %i.gp, %.sroa.0.0.extract.trunc.i
  %.not317 = icmp sgt i32 %i.fy, %i.gq
  br i1 %.not317, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !23
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv438
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !30
  %i.gu = and i32 %i.gt, 80
  %or.cond383.not = icmp eq i32 %i.gu, 0
  br i1 %or.cond383.not, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bj, %bb.bk, %bb.bl, %bb.bm
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next439 to i32
  %exitcond441.not = icmp eq i32 %i.gb, %lftr.wideiv
  br i1 %exitcond441.not, label %.critedge340, label %bb.bj, !llvm.loop !39

bb.bo:                                            ; preds = %bb.bm
  %i.gv = trunc nuw i64 %indvars.iv438 to i32     ; 2 uses
  store i32 %i.gv, ptr %i.dz, align 8, !tbaa !21
  br label %.critedge340

bb.bp:                                            ; preds = %bb.au
  %i.gw = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 30) #7
  %i.gx = ptrtoint ptr %i.gw to i64
  %.sroa.0.0.extract.trunc.i342 = trunc i64 %i.gx to i32
  %i.gy = load i32, ptr %i.dz, align 8, !tbaa !21 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 65535
  br i1 %i.gz, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.dz, align 8, !tbaa !21
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !23 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !30
  %i.he = and i32 %i.hd, 80
  %or.cond385.not502 = icmp eq i32 %i.he, 0
  br i1 %or.cond385.not502, label %.critedge340, label %.critedge24.preheader

.critedge24.preheader:                            ; preds = %bb.bq
  %i.hf = load i32, ptr %i.hc, align 8, !tbaa !8
  %i.hg = zext i32 %i.hf to i64
  br label %.critedge24

bb.br:                                            ; preds = %.critedge24
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv435503
  %4 = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hi = load i32, ptr %4, align 4, !tbaa !30
  %i.hj = and i32 %i.hi, 80
  %or.cond385.not = icmp eq i32 %i.hj, 0
  br i1 %or.cond385.not, label %.critedge340, label %.critedge24, !llvm.loop !40

.critedge24:                                      ; preds = %.critedge24.preheader, %bb.br
  %indvars.iv435503 = phi i64 [ %indvars.iv.next436, %bb.br ], [ 0, %.critedge24.preheader ] ; 2 uses
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435503, 1 ; 3 uses
  %i.hk = trunc nuw i64 %indvars.iv.next436 to i32 ; 2 uses
  store i32 %i.hk, ptr %i.dz, align 8, !tbaa !21
  %.not315 = icmp samesign ult i64 %indvars.iv.next436, %i.hg
  br i1 %.not315, label %bb.br, label %bb.bs, !llvm.loop !40

bb.bs:                                            ; preds = %.critedge24
  store i32 65535, ptr %i.dz, align 8, !tbaa !21
  br label %.critedge340

bb.bt:                                            ; preds = %bb.bp
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !22
  %i.hn = zext i32 %i.gy to i64
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hn ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !36
  %i.hq = tail call i32 @lv_area_get_width(ptr noundef nonnull %i.ho) #7
  %i.hr = ashr i32 %i.hq, 1
  %i.hs = add nsw i32 %i.hr, %i.hp                ; 2 uses
  %i.ht = load i32, ptr %i.dz, align 8, !tbaa !21 ; 5 uses
  %i.hu = and i32 %i.ht, 32768
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph410, label %.critedge340

.lr.ph410:                                        ; preds = %bb.bt
  %i.hw = load ptr, ptr %i.hl, align 8, !tbaa !22 ; 2 uses
  %i.hx = zext i32 %i.ht to i64
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !37
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.mask = and i32 %i.ht, 32767
  %i.ic = zext nneg i32 %.mask to i64
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph410, %bb.by
  %indvars.iv432 = phi i64 [ %i.ic, %.lr.ph410 ], [ %indvars.iv.next433, %bb.by ] ; 5 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %indvars.iv432 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !37
  %i.ig = icmp slt i32 %i.if, %i.ia
  br i1 %i.ig, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.ih = load i32, ptr %i.id, align 4, !tbaa !36
  %i.ii = sub nsw i32 %i.ih, %.sroa.0.0.extract.trunc.i342
  %.not313 = icmp slt i32 %i.hs, %i.ii
  br i1 %.not313, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !38
  %.not314 = icmp sgt i32 %i.hs, %i.ik
  br i1 %.not314, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.il = load ptr, ptr %i.ib, align 8, !tbaa !23
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv432
  %i.in = load i32, ptr %i.im, align 4, !tbaa !30
  %i.io = and i32 %i.in, 80
  %or.cond387.not = icmp eq i32 %i.io, 0
  br i1 %or.cond387.not, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bu, %bb.bv, %bb.bw, %bb.bx
  %indvars.iv.next433 = add nsw i64 %indvars.iv432, -1
  %i.ip = icmp sgt i64 %indvars.iv432, 0
  br i1 %i.ip, label %bb.bu, label %.critedge340, !llvm.loop !41

bb.bz:                                            ; preds = %bb.bx
  %i.iq = trunc nuw nsw i64 %indvars.iv432 to i32
  %i.ir = and i32 %i.iq, 65535                    ; 2 uses
  store i32 %i.ir, ptr %i.dz, align 8, !tbaa !21
  br label %.critedge340

.critedge340:                                     ; preds = %bb.by, %bb.br, %bb.bn, %bb.bg, %bb.ba, %bb.aw, %bb.bq, %bb.bf, %..critedge340_crit_edge, %bb.bt, %bb.bi, %bb.bs, %bb.bz, %bb.bh, %bb.bo, %bb.bd, %bb.ax
  %i.is = phi i32 [ %.pre449, %..critedge340_crit_edge ], [ %i.fz, %bb.bn ], [ %i.fq, %bb.bg ], [ %i.ev, %bb.ba ], [ %i.ei, %bb.aw ], [ %i.hk, %bb.br ], [ 65535, %bb.ax ], [ %i.ht, %bb.bt ], [ %i.fz, %bb.bi ], [ 65535, %bb.bs ], [ %i.ir, %bb.bz ], [ 65535, %bb.bh ], [ %i.gv, %bb.bo ], [ 65535, %bb.bd ], [ 0, %bb.bf ], [ 0, %bb.bq ], [ %i.ht, %bb.by ]
  tail call fastcc void @invalidate_button_area(ptr noundef nonnull %i.f, i32 noundef %i.is)
  br label %.critedge337

bb.ca:                                            ; preds = %bb.at
  tail call fastcc void @draw_main(ptr noundef %1)
  br label %.critedge337

bb.cb:                                            ; preds = %bb.at
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.iu = load i8, ptr %i.it, align 4
  %i.iv = and i8 %i.iu, 2
  %.not312 = icmp eq i8 %i.iv, 0
  br i1 %.not312, label %.critedge337, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call fastcc void @free_map(ptr noundef nonnull %i.f)
  br label %.critedge337

.critedge337:                                     ; preds = %bb.ap, %bb.m, %bb.c, %bb.d, %bb.r, %bb.aj, %bb.p, %bb.q, %bb.j, %bb.ag, %bb.ak, %has_popovers_in_top_row.exit.thread, %bb.ca, %bb.cb, %bb.cc, %.critedge340, %bb.ah, %bb.ai, %bb.s, %bb.k, %bb.u, %bb.v, %bb.t, %.critedge, %bb.ao, %bb.at, %bb.al, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.cd

bb.cd:                                            ; preds = %bb.a, %.critedge337
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_buttonmatrix_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_buttonmatrix_class, ptr noundef %0) #7 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #7
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_buttonmatrix_set_map(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.c = load i8, ptr %i.b, align 4               ; 2 uses
  %i.d = and i8 %i.c, 2
  %.not12 = icmp eq i8 %i.d, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %free_map.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.h = phi ptr [ %i.m, %.lr.ph.i ], [ %i.g, %bb.d ]
  %.09.i = phi i32 [ %i.i, %.lr.ph.i ], [ 0, %bb.d ]
  tail call void @lv_free(ptr noundef nonnull %i.h) #7
  %i.i = add i32 %.09.i, 1                        ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %free_map.exit, label %.lr.ph.i, !llvm.loop !42

free_map.exit:                                    ; preds = %.lr.ph.i, %bb.d
  %.lcssa.i = phi ptr [ %i.f, %bb.d ], [ %i.j, %.lr.ph.i ]
  tail call void @lv_free(ptr noundef nonnull %.lcssa.i) #7
  store ptr null, ptr %i.e, align 8, !tbaa !24
  %.pre = load i8, ptr %i.b, align 4
  br label %bb.e

bb.e:                                             ; preds = %free_map.exit, %bb.c
  %i.n = phi i8 [ %.pre, %free_map.exit ], [ %i.c, %bb.c ]
  %i.o = and i8 %i.n, -3
  store i8 %i.o, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  store i32 1, ptr %i.p, align 4, !tbaa !20
  %i.q = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %.not41.i = icmp eq ptr %i.q, null
  br i1 %.not41.i, label %.critedge.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.e, %bb.i
  %i.r = phi ptr [ %i.aa, %bb.i ], [ %i.q, %bb.e ] ; 2 uses
  %.043.i = phi i32 [ %i.x, %bb.i ], [ 0, %bb.e ]
  %.03042.i = phi i32 [ %.1.i, %bb.i ], [ 0, %bb.e ] ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %.not34.i = icmp eq i8 %i.s, 0
  br i1 %.not34.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i13
  %i.t = tail call i32 @lv_strcmp(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.1) #7
  %.not39.i = icmp eq i32 %i.t, 0
  br i1 %.not39.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add i32 %.03042.i, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.p, align 4, !tbaa !20
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.p, align 4, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i32 [ %i.u, %bb.g ], [ %.03042.i, %bb.h ] ; 2 uses
end_hunk_0
