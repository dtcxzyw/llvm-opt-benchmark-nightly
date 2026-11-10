Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/hasselblad_model?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6LibRaw15parseHassyModelEv:bb.a

bb.cr:                                            ; preds = %bb.cq
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.fx, ptr noundef nonnull align 1 dereferenceable(10) @.str.42, i64 10, i1 false) #12
  br label %.thread292

bb.cs:                                            ; preds = %.loopexit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !91
  switch i32 %i.fz, label %.thread229 [
    i32 4, label %bb.ct
    i32 5, label %bb.cv
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3159085, ptr %i.ga, align 8
  br i1 %.1, label %bb.cu, label %.thread292

bb.cu:                                            ; preds = %bb.ct
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.gb, ptr noundef nonnull align 1 dereferenceable(10) @.str.44, i64 10, i1 false) #12
  br label %.thread292

bb.cv:                                            ; preds = %bb.cs
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3159085, ptr %i.gc, align 8
  br i1 %.1, label %bb.cw, label %.thread292

bb.cw:                                            ; preds = %bb.cv
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.gd, ptr noundef nonnull align 1 dereferenceable(11) @.str.45, i64 11, i1 false) #12
  br label %.thread292

bb.cx:                                            ; preds = %.loopexit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !91
  switch i32 %i.gf, label %.thread229 [
    i32 4, label %sub_0363
    i32 5, label %bb.db
  ]

sub_0363:                                         ; preds = %bb.cx
  %i.gg = load i8, ptr %i.j, align 4
  %.not408 = icmp eq i8 %i.gg, 72
  br i1 %.not408, label %sub_1364, label %.tail362.thread

sub_1364:                                         ; preds = %sub_0363
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.gi = load i8, ptr %i.gh, align 1
  %.not409 = icmp eq i8 %i.gi, 51
  br i1 %.not409, label %.tail362, label %.tail362.thread

.tail362:                                         ; preds = %sub_1364
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.gk = load i8, ptr %i.gj, align 2
  %i.gl = icmp eq i8 %i.gk, 68
  br i1 %i.gl, label %bb.cy, label %.tail362.thread

bb.cy:                                            ; preds = %.tail362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.j, ptr noundef nonnull align 1 dereferenceable(9) @.str.47, i64 9, i1 false) #12
  br label %bb.cz

.tail362.thread:                                  ; preds = %sub_1364, %sub_0363, %.tail362
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3159341, ptr %i.gm, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %.tail362.thread, %bb.cy
  br i1 %.1, label %bb.da, label %.thread292

bb.da:                                            ; preds = %bb.cz
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.gn, ptr noundef nonnull align 1 dereferenceable(10) @.str.49, i64 10, i1 false) #12
  br label %.thread292

bb.db:                                            ; preds = %bb.cx
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3159341, ptr %i.go, align 8
  br i1 %.1, label %bb.dc, label %.thread292

bb.dc:                                            ; preds = %bb.db
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.gp, ptr noundef nonnull align 1 dereferenceable(11) @.str.50, i64 11, i1 false) #12
  br label %.thread292

bb.dd:                                            ; preds = %.loopexit
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !91
  %i.gs = icmp eq i32 %i.gr, 5
  br i1 %i.gs, label %bb.de, label %.thread229

bb.de:                                            ; preds = %bb.dd
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.gt, ptr noundef nonnull align 1 dereferenceable(5) @.str.51, i64 5, i1 false) #12
  br i1 %.1, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.gu, ptr noundef nonnull align 1 dereferenceable(14) @.str.52, i64 14, i1 false) #12
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.gv = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ci, ptr noundef nonnull dereferenceable(11) @.str.53, i64 noundef 10) #11
  %.not184 = icmp eq i32 %i.gv, 0
  br i1 %.not184, label %bb.dh, label %sub_0368

bb.dh:                                            ; preds = %bb.dg
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i32 2, ptr %i.gw, align 4, !tbaa !92
  call fastcc void @_ZL14limited_strcatPcPKcm(ptr noundef %i.gt, ptr noundef nonnull @.str.54, i64 noundef 8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.j, ptr noundef nonnull align 1 dereferenceable(11) @.str.53, i64 11, i1 false) #12
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 460
  call fastcc void @_ZL14limited_strcatPcPKcm(ptr noundef %i.gx, ptr noundef nonnull @.str.55, i64 noundef 64)
  br label %.thread292

sub_0368:                                         ; preds = %bb.dg
  %i.gy = load i8, ptr %i.ci, align 8
  %.not406 = icmp eq i8 %i.gy, 88
  br i1 %.not406, label %sub_1369, label %.thread292

sub_1369:                                         ; preds = %sub_0368
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 2569
  %i.ha = load i8, ptr %i.gz, align 1
  %.not407 = icmp eq i8 %i.ha, 49
  br i1 %.not407, label %.tail367, label %.thread292

.tail367:                                         ; preds = %sub_1369
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2570
  %i.hc = load i8, ptr %i.hb, align 2
  %i.hd = icmp eq i8 %i.hc, 68
  br i1 %i.hd, label %bb.di, label %.thread292

bb.di:                                            ; preds = %.tail367
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i32 2, ptr %i.he, align 4, !tbaa !92
  call fastcc void @_ZL14limited_strcatPcPKcm(ptr noundef %i.gt, ptr noundef nonnull @.str.54, i64 noundef 8)
  %i.hf = call i32 @strncasecmp(ptr noundef nonnull %i.ci, ptr noundef nonnull @.str.57, i64 noundef 10) #11
  %.not186 = icmp eq i32 %i.hf, 0
  br i1 %.not186, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.j, ptr noundef nonnull align 1 dereferenceable(11) @.str.57, i64 11, i1 false) #12
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 460
  call fastcc void @_ZL14limited_strcatPcPKcm(ptr noundef %i.hg, ptr noundef nonnull @.str.55, i64 noundef 64)
  br label %.thread292

bb.dk:                                            ; preds = %bb.di
  store i64 27919027645198680, ptr %i.j, align 4
  br label %.thread292

bb.dl:                                            ; preds = %.loopexit
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !91
  %i.hj = icmp eq i32 %i.hi, 4
  br i1 %i.hj, label %bb.dm, label %.thread229

bb.dm:                                            ; preds = %bb.dl
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3159597, ptr %i.hk, align 8
  br i1 %.1, label %bb.dn, label %.thread292

bb.dn:                                            ; preds = %bb.dm
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.hl, ptr noundef nonnull align 1 dereferenceable(10) @.str.60, i64 10, i1 false) #12
  br label %.thread292

bb.do:                                            ; preds = %.loopexit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !91
  %i.ho = icmp eq i32 %i.hn, 5
  br i1 %i.ho, label %bb.dp, label %.thread229

bb.dp:                                            ; preds = %bb.do
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.hp, ptr noundef nonnull align 1 dereferenceable(6) @.str.61, i64 6, i1 false) #12
  br i1 %.1, label %bb.dq, label %.thread292

bb.dq:                                            ; preds = %bb.dp
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.hq, ptr noundef nonnull align 1 dereferenceable(15) @.str.62, i64 15, i1 false) #12
  br label %.thread292

bb.dr:                                            ; preds = %.loopexit
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !91
  %i.ht = icmp eq i32 %i.hs, 6
  br i1 %i.ht, label %bb.ds, label %.thread229

bb.ds:                                            ; preds = %bb.dr
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.hu, ptr noundef nonnull align 1 dereferenceable(6) @.str.61, i64 6, i1 false) #12
  br i1 %.1, label %bb.dt, label %.thread292

bb.dt:                                            ; preds = %bb.ds
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.hv, ptr noundef nonnull align 1 dereferenceable(15) @.str.63, i64 15, i1 false) #12
  br label %.thread292

.thread229:                                       ; preds = %bb.cx, %bb.cs, %.loopexit, %bb.cj, %bb.cp, %bb.cg, %bb.cd, %bb.dd, %bb.dl, %bb.do, %bb.dr
  %i.hw = load i16, ptr %i.d, align 2, !tbaa !82  ; 5 uses
  switch i16 %i.hw, label %.thread257 [
    i16 4090, label %bb.dx
    i16 4096, label %bb.du
    i16 4088, label %bb.dv
    i16 4080, label %bb.dw
    i16 5568, label %bb.eb
    i16 6542, label %.thread229._crit_edge432.a
    i16 6504, label %.thread229._crit_edge430.a
    i16 6496, label %.thread229._crit_edge428.a
    i16 7262, label %.thread229._crit_edge426.a
    i16 7224, label %.thread229._crit_edge.a
  ]

bb.du:                                            ; preds = %.thread229
  %i.hx = load i16, ptr %i.c, align 8, !tbaa !83
  switch i16 %i.hx, label %.thread260 [
    i16 4096, label %bb.dx
    i16 5456, label %bb.ed
  ]

bb.dv:                                            ; preds = %.thread229
  %i.hy = load i16, ptr %i.c, align 8, !tbaa !83
  switch i16 %i.hy, label %.thread260 [
    i16 4088, label %bb.dx
    i16 5448, label %bb.ed
  ]

bb.dw:                                            ; preds = %.thread229
  %i.hz = load i16, ptr %i.c, align 8, !tbaa !83
  switch i16 %i.hz, label %.thread260 [
    i16 4080, label %bb.dx
    i16 5440, label %bb.ed
  ]

bb.dx:                                            ; preds = %bb.du, %.thread229, %bb.dw, %bb.dv
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3551533, ptr %i.ia, align 8
  br i1 %.1, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ib, ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false) #12
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.not179 = icmp eq i32 %i.fa, 0
  br i1 %.not179, label %bb.ea, label %.thread292

bb.ea:                                            ; preds = %bb.dz
  store i32 4, ptr %i.ez, align 8, !tbaa !90
  br label %.thread292

bb.eb:                                            ; preds = %.thread229
  %i.ic = load i16, ptr %i.c, align 8, !tbaa !83
  %i.id = icmp eq i16 %i.ic, 3648
  br i1 %i.id, label %bb.ec, label %.thread260

bb.ec:                                            ; preds = %bb.eb
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ie, ptr noundef nonnull align 1 dereferenceable(5) @.str.64, i64 5, i1 false) #12
  br label %.thread292

bb.ed:                                            ; preds = %bb.du, %bb.dw, %bb.dv
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3289645, ptr %i.if, align 8
  br i1 %.1, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ig, ptr noundef nonnull align 1 dereferenceable(12) @.str.36, i64 12, i1 false) #12
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.not177 = icmp eq i32 %i.fa, 0
  br i1 %.not177, label %bb.eg, label %.thread292

bb.eg:                                            ; preds = %bb.ef
  store i32 6, ptr %i.ez, align 8, !tbaa !90
  br label %.thread292

.thread229._crit_edge432.a:                       ; preds = %.thread229
  %.pre433.a = load i16, ptr %i.c, align 8, !tbaa !83
  %i.ih = icmp eq i16 %.pre433.a, 4916
  br i1 %i.ih, label %bb.eh, label %.thread260

.thread229._crit_edge430.a:                       ; preds = %.thread229
  %.pre431.a = load i16, ptr %i.c, align 8, !tbaa !83
  %i.ii = icmp eq i16 %.pre431.a, 4880
  br i1 %i.ii, label %bb.eh, label %.thread260

.thread229._crit_edge428.a:                       ; preds = %.thread229
  %.pre429.a = load i16, ptr %i.c, align 8, !tbaa !83
  %i.ij = icmp eq i16 %.pre429.a, 4872
  br i1 %i.ij, label %bb.eh, label %.thread260

bb.eh:                                            ; preds = %.thread229._crit_edge428.a, %.thread229._crit_edge430.a, %.thread229._crit_edge432.a
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3224365, ptr %i.ik, align 8
  br i1 %.1, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.il, ptr noundef nonnull align 1 dereferenceable(12) @.str.38, i64 12, i1 false) #12
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.not175 = icmp eq i32 %i.fa, 0
  br i1 %.not175, label %bb.ek, label %.thread292

bb.ek:                                            ; preds = %bb.ej
  store i32 8, ptr %i.ez, align 8, !tbaa !90
  br label %.thread292

.thread229._crit_edge426.a:                       ; preds = %.thread229
  %.pre427.a = load i16, ptr %i.c, align 8, !tbaa !83
  %i.im = icmp eq i16 %.pre427.a, 5456
  br i1 %i.im, label %bb.el, label %.thread260

.thread229._crit_edge.a:                          ; preds = %.thread229
  %.pre425.a = load i16, ptr %i.c, align 8, !tbaa !83
  %i.in = icmp eq i16 %.pre425.a, 5420
  br i1 %i.in, label %bb.el, label %.thread260

.thread257:                                       ; preds = %.thread229
  switch i16 %i.hw, label %.thread260 [
    i16 7216, label %.thread257._crit_edge435
    i16 7212, label %.thread257._crit_edge
  ]

.thread257._crit_edge435:                         ; preds = %.thread257
  %.pre436 = load i16, ptr %i.c, align 8, !tbaa !83
  %i.io = icmp eq i16 %.pre436, 5412
  br i1 %i.io, label %bb.el, label %.thread260

.thread257._crit_edge:                            ; preds = %.thread257
  %.pre434 = load i16, ptr %i.c, align 8, !tbaa !83
  %i.ip = icmp eq i16 %.pre434, 5412
  %i.iq = add nsw i32 %i.i, -39031344
  %or.cond = icmp ult i32 %i.iq, 979968
  %or.cond206 = select i1 %i.ip, i1 true, i1 %or.cond
  br i1 %or.cond206, label %bb.el, label %.thread283

.thread260:                                       ; preds = %bb.du, %bb.dw, %.thread257, %bb.dv, %bb.eb, %.thread229._crit_edge430.a, %.thread229._crit_edge428.a, %.thread229._crit_edge426.a, %.thread229._crit_edge432.a, %.thread229._crit_edge.a, %.thread257._crit_edge435
  %.old = add nsw i32 %i.i, -39031344
  %or.cond.old = icmp ult i32 %.old, 979968
  br i1 %or.cond.old, label %bb.el, label %bb.fb

bb.el:                                            ; preds = %.thread260, %.thread257._crit_edge, %.thread257._crit_edge435, %.thread229._crit_edge.a, %.thread229._crit_edge426.a
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3748653, ptr %i.ir, align 8
  %.not162 = icmp eq i32 %i.fa, 0
  br i1 %.not162, label %bb.em, label %sub_0373

bb.em:                                            ; preds = %bb.el
  store i32 9, ptr %i.ez, align 8, !tbaa !90
  br label %sub_0373

sub_0373:                                         ; preds = %bb.el, %bb.em
  %i.is = load i8, ptr %i.j, align 4
  %.not418 = icmp eq i8 %i.is, 72
  br i1 %.not418, label %sub_1374, label %.tail372.thread

sub_1374:                                         ; preds = %sub_0373
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.iu = load i8, ptr %i.it, align 1
  %.not419 = icmp eq i8 %i.iu, 51
  br i1 %.not419, label %.tail372, label %.tail372.thread

.tail372:                                         ; preds = %sub_1374
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.iw = load i8, ptr %i.iv, align 2
  %i.ix = icmp eq i8 %i.iw, 68
  br i1 %i.ix, label %bb.en, label %.tail372.thread

bb.en:                                            ; preds = %.tail372
  %i.iy = load i32, ptr %i.aa, align 8, !tbaa !84
  %i.iz = icmp eq i32 %i.iy, 3
  br i1 %i.iz, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 153584
  %i.jb = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ja, ptr noundef nonnull dereferenceable(1) @.str.65) #11
  %.not164 = icmp eq ptr %i.jb, null
  br i1 %.not164, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 153648
  %i.jd = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.jc, ptr noundef nonnull dereferenceable(1) @.str.65) #11
  %.not165 = icmp eq ptr %i.jd, null
  br i1 %.not165, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.je = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) @.str.65) #11
  %.not166 = icmp eq ptr %i.je, null
  br i1 %.not166, label %bb.ew, label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 153584
  %i.jg = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.jf, ptr noundef nonnull dereferenceable(1) @.str.1) #11
  %.not167 = icmp eq ptr %i.jg, null
  br i1 %.not167, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %bb.er
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 153648
  %i.ji = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.jh, ptr noundef nonnull dereferenceable(1) @.str.1) #11
  %.not168 = icmp eq ptr %i.ji, null
  br i1 %.not168, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.jj = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) @.str.1) #11
  %.not169 = icmp eq ptr %i.jj, null
  br i1 %.not169, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.j, ptr noundef nonnull align 1 dereferenceable(7) @.str.65, i64 7, i1 false) #12
  br i1 %.1, label %bb.ev, label %.thread292

bb.ev:                                            ; preds = %bb.eu
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jk, ptr noundef nonnull align 1 dereferenceable(12) @.str.40, i64 12, i1 false) #12
  br label %.thread292

bb.ew:                                            ; preds = %bb.et, %bb.es, %bb.er, %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.j, ptr noundef nonnull align 1 dereferenceable(9) @.str.66, i64 9, i1 false) #12
  br i1 %.1, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.jl, ptr noundef nonnull align 1 dereferenceable(10) @.str.42, i64 10, i1 false) #12
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !91
  %.not172 = icmp eq i32 %i.jn, 0
  br i1 %.not172, label %bb.ez, label %.thread292

bb.ez:                                            ; preds = %bb.ey
  store i32 4, ptr %i.jm, align 8, !tbaa !91
  br label %.thread292

.tail372.thread:                                  ; preds = %sub_1374, %sub_0373, %.tail372
  br i1 %.1, label %bb.fa, label %.thread292

bb.fa:                                            ; preds = %.tail372.thread
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jo, ptr noundef nonnull align 1 dereferenceable(12) @.str.40, i64 12, i1 false) #12
  br label %.thread292

bb.fb:                                            ; preds = %.thread260
  switch i16 %i.hw, label %.thread283 [
    i16 7410, label %bb.fc
    i16 7312, label %bb.fd
    i16 7304, label %bb.fe
    i16 8282, label %bb.fq
    i16 8184, label %bb.fr
    i16 8176, label %bb.fs
    i16 8374, label %bb.ge
    i16 8384, label %bb.gf
    i16 8280, label %bb.gg
    i16 8272, label %bb.gh
    i16 9044, label %bb.gv
    i16 8964, label %bb.gw
    i16 8956, label %bb.gx
    i16 10320, label %bb.he
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.jp = load i16, ptr %i.c, align 8, !tbaa !83
  %i.jq = icmp eq i16 %i.jp, 5586
  br i1 %i.jq, label %sub_0378, label %.thread283

bb.fd:                                            ; preds = %bb.fb
  %i.jr = load i16, ptr %i.c, align 8, !tbaa !83
  %i.js = icmp eq i16 %i.jr, 5486
  br i1 %i.js, label %sub_0378, label %.thread283

bb.fe:                                            ; preds = %bb.fb
  %i.jt = load i16, ptr %i.c, align 8, !tbaa !83
  %i.ju = icmp eq i16 %i.jt, 5478
  br i1 %i.ju, label %sub_0378, label %.thread283

sub_0378:                                         ; preds = %bb.fe, %bb.fd, %bb.fc
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3159085, ptr %i.jv, align 8
  %i.jw = load i8, ptr %i.j, align 4
  %.not416 = icmp eq i8 %i.jw, 72
  br i1 %.not416, label %sub_1379, label %.tail377.thread

sub_1379:                                         ; preds = %sub_0378
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.jy = load i8, ptr %i.jx, align 1
  %.not417 = icmp eq i8 %i.jy, 52
  br i1 %.not417, label %.tail377, label %.tail377.thread

.tail377:                                         ; preds = %sub_1379
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.ka = load i8, ptr %i.jz, align 2
  %i.kb = icmp eq i8 %i.ka, 68
  br i1 %i.kb, label %bb.ff, label %.tail377.thread

bb.ff:                                            ; preds = %.tail377
  br i1 %.1, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.kc, ptr noundef nonnull align 1 dereferenceable(10) @.str.44, i64 10, i1 false) #12
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.not157 = icmp eq i32 %i.fa, 0
  br i1 %.not157, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 13, ptr %i.ez, align 8, !tbaa !90
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !91
  %.not158 = icmp eq i32 %i.ke, 0
  br i1 %.not158, label %bb.fk, label %.thread292

bb.fk:                                            ; preds = %bb.fj
  store i32 4, ptr %i.kd, align 8, !tbaa !91
  br label %.thread292

.tail377.thread:                                  ; preds = %sub_1379, %sub_0378, %.tail377
  br i1 %.1, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %.tail377.thread
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.kf, ptr noundef nonnull align 1 dereferenceable(11) @.str.45, i64 11, i1 false) #12
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.tail377.thread
  %.not160 = icmp eq i32 %i.fa, 0
  br i1 %.not160, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  store i32 13, ptr %i.ez, align 8, !tbaa !90
  br label %bb.fo

end_hunk_0
begin_hunk_1_@_ZN6LibRaw15parseHassyModelEv:bb.a
  br i1 %.not143, label %bb.gp, label %.thread292

bb.gp:                                            ; preds = %.tail392.thread, %.tail392, %bb.go
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i32 2, ptr %i.ma, align 4, !tbaa !92
  call fastcc void @_ZL14limited_strcatPcPKcm(ptr noundef %i.lr, ptr noundef nonnull @.str.54, i64 noundef 8)
  %i.mb = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ci, ptr noundef nonnull dereferenceable(1) @.str.70) #11
  %.not144 = icmp eq ptr %i.mb, null
  br i1 %.not144, label %bb.gu, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 460
  call fastcc void @_ZL14limited_strcatPcPKcm(ptr noundef %i.mc, ptr noundef nonnull @.str.55, i64 noundef 64)
  %i.md = call i32 @strncasecmp(ptr noundef nonnull %i.ci, ptr noundef nonnull @.str.57, i64 noundef 10) #11
  %.not145 = icmp eq i32 %i.md, 0
  br i1 %.not145, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.j, ptr noundef nonnull align 1 dereferenceable(11) @.str.57, i64 11, i1 false) #12
  br label %.thread292

bb.gs:                                            ; preds = %bb.gq
  %i.me = call i32 @strncasecmp(ptr noundef nonnull %i.ci, ptr noundef nonnull @.str.53, i64 noundef 10) #11
  %.not146 = icmp eq i32 %i.me, 0
  br i1 %.not146, label %bb.gt, label %.thread292

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.j, ptr noundef nonnull align 1 dereferenceable(11) @.str.53, i64 11, i1 false) #12
  br label %.thread292

bb.gu:                                            ; preds = %bb.gp
  store i64 27919027645198680, ptr %i.j, align 4
  br label %.thread292

bb.gv:                                            ; preds = %bb.fb
  %i.mf = load i16, ptr %i.c, align 8, !tbaa !83
  %i.mg = icmp eq i16 %i.mf, 6732
  br i1 %i.mg, label %bb.gy, label %.thread283

bb.gw:                                            ; preds = %bb.fb
  %i.mh = load i16, ptr %i.c, align 8, !tbaa !83
  %i.mi = icmp eq i16 %i.mh, 6716
  br i1 %i.mi, label %bb.gy, label %.thread283

bb.gx:                                            ; preds = %bb.fb
  %i.mj = load i16, ptr %i.c, align 8, !tbaa !83
  %i.mk = icmp eq i16 %i.mj, 6708
  br i1 %i.mk, label %bb.gy, label %.thread283

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %bb.gv
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3159597, ptr %i.ml, align 8
  br i1 %.1, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.mm, ptr noundef nonnull align 1 dereferenceable(10) @.str.60, i64 10, i1 false) #12
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.not137 = icmp eq i32 %i.fa, 0
  br i1 %.not137, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  store i32 12, ptr %i.ez, align 8, !tbaa !90
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !91
  %.not138 = icmp eq i32 %i.mo, 0
  br i1 %.not138, label %bb.hd, label %.thread292

bb.hd:                                            ; preds = %bb.hc
  store i32 4, ptr %i.mn, align 8, !tbaa !91
  br label %.thread292

bb.he:                                            ; preds = %bb.fb
  %i.mp = load i16, ptr %i.c, align 8, !tbaa !83
  %i.mq = icmp eq i16 %i.mp, 7752
  %i.mr = add nsw i32 %i.i, -80000640
  %or.cond3 = icmp ult i32 %i.mr, 4159360
  %or.cond208 = select i1 %i.mq, i1 true, i1 %or.cond3
  br i1 %or.cond208, label %bb.hf, label %.thread292

.thread283:                                       ; preds = %bb.fb, %bb.fc, %.thread257._crit_edge, %bb.fq, %bb.fe, %bb.fd, %bb.fr, %bb.fs, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gv, %bb.gw, %bb.gx
  %.old207 = add nsw i32 %i.i, -80000640
  %or.cond3.old = icmp ult i32 %.old207, 4159360
  br i1 %or.cond3.old, label %bb.hf, label %bb.hh

bb.hf:                                            ; preds = %.thread283, %bb.he
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 3160109, ptr %i.ms, align 8
  br i1 %.1, label %bb.hg, label %.thread292

bb.hg:                                            ; preds = %bb.hf
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.mt, ptr noundef nonnull align 1 dereferenceable(10) @.str.72, i64 10, i1 false) #12
  br label %.thread292

bb.hh:                                            ; preds = %.thread283
  %i.mu = add i16 %i.hw, -11600                   ; 2 uses
  %i.mv = call i16 @llvm.fshl.i16(i16 %i.mu, i16 %i.mu, i16 13)
  switch i16 %i.mv, label %.thread292 [
    i16 50, label %bb.hi
    i16 1, label %bb.hj
    i16 0, label %bb.hk
    i16 38, label %bb.hr
    i16 8, label %bb.hs
    i16 7, label %bb.ht
  ]

bb.hi:                                            ; preds = %bb.hh
  %i.mw = load i16, ptr %i.c, align 8, !tbaa !83
  %i.mx = icmp eq i16 %i.mw, 8816
  br i1 %i.mx, label %bb.hl, label %.thread292

bb.hj:                                            ; preds = %bb.hh
  %i.my = load i16, ptr %i.c, align 8, !tbaa !83
  %i.mz = icmp eq i16 %i.my, 8708
  br i1 %i.mz, label %bb.hl, label %.thread292

bb.hk:                                            ; preds = %bb.hh
  %i.na = load i16, ptr %i.c, align 8, !tbaa !83
  %i.nb = icmp eq i16 %i.na, 8700
  br i1 %i.nb, label %bb.hl, label %.thread292

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hi
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.nc, ptr noundef nonnull align 1 dereferenceable(6) @.str.61, i64 6, i1 false) #12
  br i1 %.1, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.nd, ptr noundef nonnull align 1 dereferenceable(15) @.str.62, i64 15, i1 false) #12
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.not133 = icmp eq i32 %i.fa, 0
  br i1 %.not133, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  store i32 17, ptr %i.ez, align 8, !tbaa !90
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !91
  %.not134 = icmp eq i32 %i.nf, 0
  br i1 %.not134, label %bb.hq, label %.thread292

bb.hq:                                            ; preds = %bb.hp
  store i32 5, ptr %i.ne, align 8, !tbaa !91
  br label %.thread292

bb.hr:                                            ; preds = %bb.hh
  %i.ng = load i16, ptr %i.c, align 8, !tbaa !83
  %i.nh = icmp eq i16 %i.ng, 8842
  br i1 %i.nh, label %bb.hu, label %.thread292

bb.hs:                                            ; preds = %bb.hh
  %i.ni = load i16, ptr %i.c, align 8, !tbaa !83
  %i.nj = icmp eq i16 %i.ni, 8750
  br i1 %i.nj, label %bb.hu, label %.thread292

bb.ht:                                            ; preds = %bb.hh
  %i.nk = load i16, ptr %i.c, align 8, !tbaa !83
  %i.nl = icmp eq i16 %i.nk, 8742
  br i1 %i.nl, label %bb.hu, label %.thread292

bb.hu:                                            ; preds = %bb.ht, %bb.hs, %bb.hr
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.nm, ptr noundef nonnull align 1 dereferenceable(6) @.str.61, i64 6, i1 false) #12
  br i1 %.1, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.nn, ptr noundef nonnull align 1 dereferenceable(15) @.str.63, i64 15, i1 false) #12
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.not130 = icmp eq i32 %i.fa, 0
  br i1 %.not130, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store i32 20, ptr %i.ez, align 8, !tbaa !90
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 2 uses
  %i.np = load i32, ptr %i.no, align 8, !tbaa !91
  %.not131 = icmp eq i32 %i.np, 0
  br i1 %.not131, label %bb.hz, label %.thread292

bb.hz:                                            ; preds = %bb.hy
  store i32 6, ptr %i.no, align 8, !tbaa !91
  br label %.thread292

.thread292:                                       ; preds = %sub_1389, %sub_0388, %sub_1369, %sub_0368, %bb.hh, %bb.he, %bb.hi, %bb.hr, %bb.hk, %bb.hj, %bb.hs, %bb.gc, %bb.gd, %bb.ci, %bb.ch, %bb.co, %bb.cn, %bb.cu, %bb.ct, %bb.da, %bb.cz, %.tail367, %bb.dk, %bb.dj, %bb.dh, %bb.dq, %bb.dp, %bb.ea, %bb.dz, %bb.eg, %bb.ef, %.tail372.thread, %bb.fa, %bb.ev, %bb.eu, %bb.ez, %bb.ey, %.tail387, %bb.fx, %bb.fy, %bb.hd, %bb.hc, %bb.hq, %bb.hp, %bb.hy, %bb.hz, %bb.ht, %bb.hf, %bb.hg, %.tail392.thread, %bb.gr, %bb.gt, %bb.gs, %bb.gu, %bb.fk, %bb.fj, %bb.fp, %bb.fo, %bb.ej, %bb.ek, %bb.ec, %bb.ds, %bb.dt, %bb.dm, %bb.dn, %bb.db, %bb.dc, %bb.cv, %bb.cw, %bb.cq, %bb.cr, %bb.ck, %bb.cl, %bb.ce, %bb.cf
  %.178 = phi i32 [ %.077, %bb.ce ], [ %.077, %bb.cf ], [ %.077, %bb.ch ], [ %.077, %bb.ci ], [ %.077, %bb.ck ], [ %.077, %bb.cl ], [ %.077, %bb.cn ], [ %.077, %bb.co ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ %.077, %bb.ct ], [ %.077, %bb.cu ], [ %.077, %bb.cv ], [ %.077, %bb.cw ], [ %.077, %bb.cz ], [ %.077, %bb.da ], [ %.077, %bb.db ], [ %.077, %bb.dc ], [ %.077, %.tail367 ], [ 0, %bb.dk ], [ 0, %bb.dj ], [ 0, %bb.dh ], [ %.077, %bb.dm ], [ %.077, %bb.dn ], [ %.077, %bb.dp ], [ %.077, %bb.dq ], [ %.077, %bb.ds ], [ %.077, %bb.dt ], [ %.077, %bb.dz ], [ %.077, %bb.ea ], [ %.077, %bb.ec ], [ %.077, %bb.ef ], [ %.077, %bb.eg ], [ %.077, %bb.ej ], [ %.077, %bb.ek ], [ %.077, %.tail372.thread ], [ %.077, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ez ], [ 0, %bb.eu ], [ 0, %bb.ev ], [ %.077, %bb.fo ], [ %.077, %bb.fp ], [ %.077, %bb.fj ], [ %.077, %bb.fk ], [ %.077, %.tail387 ], [ %.077, %bb.hh ], [ %.077, %bb.fx ], [ %.077, %bb.fy ], [ 0, %bb.gs ], [ 0, %bb.gt ], [ 0, %bb.gr ], [ 0, %bb.gu ], [ %.077, %.tail392.thread ], [ %.077, %bb.hc ], [ %.077, %bb.hd ], [ %.077, %bb.hf ], [ %.077, %bb.hg ], [ %.077, %bb.hp ], [ %.077, %bb.hq ], [ %.077, %bb.hy ], [ %.077, %bb.hz ], [ %.077, %bb.ht ], [ 0, %bb.gd ], [ 0, %bb.gc ], [ %.077, %bb.hs ], [ %.077, %bb.hj ], [ %.077, %bb.hk ], [ %.077, %bb.hr ], [ %.077, %bb.hi ], [ %.077, %bb.he ], [ %.077, %sub_1369 ], [ %.077, %sub_0368 ], [ %.077, %sub_0388 ], [ %.077, %sub_1389 ]
  %i.nq = load i16, ptr %i.d, align 2, !tbaa !82  ; 2 uses
  switch i16 %i.nq, label %1 [
    i16 4090, label %.thread293
    i16 4096, label %bb.ia
  ]

.thread293:                                       ; preds = %.thread292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.j, ptr noundef nonnull align 1 dereferenceable(5) @.str.73, i64 5, i1 false) #12
  br label %bb.im

bb.ia:                                            ; preds = %.thread292
  %i.nr = load i16, ptr %i.c, align 8, !tbaa !83
  switch i16 %i.nr, label %.thread316 [
    i16 4096, label %bb.im
    i16 5456, label %bb.im
  ]

1:                                                ; preds = %.thread292
  switch i16 %i.nq, label %.thread316 [
    i16 5568, label %bb.ib
    i16 11904, label %bb.il
    i16 6542, label %bb.ic
    i16 7262, label %bb.id
    i16 7410, label %bb.ie
    i16 8282, label %bb.if
    i16 8374, label %bb.ig
    i16 8384, label %bb.ih
    i16 9044, label %bb.ii
    i16 10320, label %bb.ij
    i16 12000, label %bb.ik
  ]

bb.ib:                                            ; preds = %1
  %i.ns = load i16, ptr %i.c, align 8, !tbaa !83
  %i.nt = icmp eq i16 %i.ns, 3648
  br i1 %i.nt, label %bb.im, label %.thread316

bb.ic:                                            ; preds = %1
  %i.nu = load i16, ptr %i.c, align 8, !tbaa !83
  %i.nv = icmp eq i16 %i.nu, 4916
  br i1 %i.nv, label %bb.im, label %.thread316

bb.id:                                            ; preds = %1
  %i.nw = load i16, ptr %i.c, align 8, !tbaa !83
  %i.nx = icmp eq i16 %i.nw, 5456
  br i1 %i.nx, label %bb.im, label %.thread316

bb.ie:                                            ; preds = %1
  %i.ny = load i16, ptr %i.c, align 8, !tbaa !83
  %i.nz = icmp eq i16 %i.ny, 5586
  br i1 %i.nz, label %bb.im, label %.thread316

bb.if:                                            ; preds = %1
  %i.oa = load i16, ptr %i.c, align 8, !tbaa !83
  %i.ob = icmp eq i16 %i.oa, 6240
  br i1 %i.ob, label %bb.im, label %.thread316

bb.ig:                                            ; preds = %1
  %i.oc = load i16, ptr %i.c, align 8, !tbaa !83
  %i.od = icmp eq i16 %i.oc, 6304
  br i1 %i.od, label %bb.im, label %.thread316

bb.ih:                                            ; preds = %1
  %i.oe = load i16, ptr %i.c, align 8, !tbaa !83
  %i.of = icmp eq i16 %i.oe, 6304
  br i1 %i.of, label %bb.im, label %.thread316

bb.ii:                                            ; preds = %1
  %i.og = load i16, ptr %i.c, align 8, !tbaa !83
  %i.oh = icmp eq i16 %i.og, 6732
  br i1 %i.oh, label %bb.im, label %.thread316

bb.ij:                                            ; preds = %1
  %i.oi = load i16, ptr %i.c, align 8, !tbaa !83
  %i.oj = icmp eq i16 %i.oi, 7752
  br i1 %i.oj, label %bb.im, label %.thread316

bb.ik:                                            ; preds = %1
  %i.ok = load i16, ptr %i.c, align 8, !tbaa !83
  %i.ol = icmp eq i16 %i.ok, 8816
  br i1 %i.ol, label %bb.im, label %.thread316

bb.il:                                            ; preds = %1
  %i.om = load i16, ptr %i.c, align 8, !tbaa !83
  %i.on = icmp eq i16 %i.om, 8842
  br i1 %i.on, label %bb.im, label %.thread316

bb.im:                                            ; preds = %bb.ia, %bb.ia, %.thread293, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i32 1, ptr %i.oo, align 4, !tbaa !93
  br label %.thread316

.thread316:                                       ; preds = %bb.ia, %1, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.if, %bb.ig, %bb.ih, %bb.ii, %bb.ij, %bb.ik, %bb.im, %bb.il
  %i.op = load i8, ptr %i.j, align 4, !tbaa !15
  %i.oq = icmp ne i8 %i.op, 0
  %i.or = icmp ne i32 %.178, 0
  %or.cond5 = and i1 %i.or, %i.oq
  br i1 %or.cond5, label %bb.in, label %_ZL14limited_strcatPcPKcm.exit

bb.in:                                            ; preds = %.thread316
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 2 uses
  %i.ot = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #11
  %i.ou = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.os) #11
  %i.ov = add i64 %i.ou, %i.ot
  %i.ow = icmp ult i64 %i.ov, 64
  br i1 %i.ow, label %bb.io, label %_ZL14limited_strcatPcPKcm.exit

bb.io:                                            ; preds = %bb.in
  %i.ox = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull readonly dereferenceable(1) %i.os) #12 ; 0 uses
  br label %_ZL14limited_strcatPcPKcm.exit

_ZL14limited_strcatPcPKcm.exit:                   ; preds = %bb.io, %bb.in, %.thread316
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 3 uses
  %i.oz = load i8, ptr %i.oy, align 8, !tbaa !15
  %i.pa = icmp eq i8 %i.oz, 45
  br i1 %i.pa, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %_ZL14limited_strcatPcPKcm.exit
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 2417
  %i.pc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.oy) #11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oy, ptr nonnull align 1 %i.pb, i64 %i.pc, i1 false)
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %_ZL14limited_strcatPcPKcm.exit
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !85
  %.not197 = icmp eq i32 %i.pe, 0
  br i1 %.not197, label %bb.it, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.pf = load i32, ptr %i.ez, align 8, !tbaa !90
  %i.pg = icmp eq i32 %i.pf, 13
  br i1 %i.pg, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !91
  %i.pj = icmp eq i32 %i.pi, 4
  br i1 %i.pj, label %.thread326, label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir, %bb.iq
  %i.pk = load i32, ptr %i.aa, align 8, !tbaa !84 ; 4 uses
  %i.pl = icmp ult i32 %i.pk, 7
  br i1 %i.pl, label %switch.lookup, label %_ZN6LibRaw21HassyRawFormat_idx2HREj.exit

switch.lookup:                                    ; preds = %bb.it
  %i.pm = zext nneg i32 %i.pk to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6LibRaw15parseHassyModelEv, i64 %i.pm
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.pn = zext nneg i32 %i.pk to i64
  %switch.gep470 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6LibRaw15parseHassyModelEv.1, i64 %i.pn
  %switch.load471 = load ptr, ptr %switch.gep470, align 8
  br label %.thread326

.thread326:                                       ; preds = %switch.lookup, %bb.is
  %.4320 = phi i32 [ %switch.ext, %switch.lookup ], [ 5, %bb.is ]
  %.lcssa.i = phi ptr [ %switch.load471, %switch.lookup ], [ getelementptr inbounds nuw (i8, ptr @_ZL14HassyRawFormat, i64 80), %bb.is ]
  %i.po = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !14
  br label %_ZN6LibRaw21HassyRawFormat_idx2HREj.exit

_ZN6LibRaw21HassyRawFormat_idx2HREj.exit:         ; preds = %bb.it, %.thread326
  %.4321 = phi i32 [ %.4320, %.thread326 ], [ %i.pk, %bb.it ]
  %i.pq = phi ptr [ %i.pp, %.thread326 ], [ null, %bb.it ] ; 2 uses
  %i.pr = add i32 %.4321, -1
  %or.cond7 = icmp ult i32 %i.pr, 2
  br i1 %or.cond7, label %bb.iu, label %_ZL14limited_strcatPcPKcm.exit209

bb.iu:                                            ; preds = %_ZN6LibRaw21HassyRawFormat_idx2HREj.exit
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.pt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ps) #11
  %i.pu = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.pq) #11
  %i.pv = add i64 %i.pu, %i.pt
  %i.pw = icmp ult i64 %i.pv, 64
  br i1 %i.pw, label %bb.iv, label %_ZL14limited_strcatPcPKcm.exit209

bb.iv:                                            ; preds = %bb.iu
  %i.px = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.ps, ptr noundef nonnull readonly dereferenceable(1) %i.pq) #12 ; 0 uses
  br label %_ZL14limited_strcatPcPKcm.exit209

_ZL14limited_strcatPcPKcm.exit209:                ; preds = %bb.iv, %bb.iu, %_ZN6LibRaw21HassyRawFormat_idx2HREj.exit
  %i.py = load i8, ptr %i.ci, align 8, !tbaa !15
  switch i8 %i.py, label %sub_0397 [
    i8 72, label %bb.iw
    i8 65, label %bb.ix
    i8 88, label %bb.ja
  ]

bb.iw:                                            ; preds = %_ZL14limited_strcatPcPKcm.exit209
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 2569
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !15
  %.not198 = icmp eq i8 %i.qa, 97
  br i1 %.not198, label %sub_0397, label %bb.iy

bb.ix:                                            ; preds = %_ZL14limited_strcatPcPKcm.exit209
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 2569
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !15
  %i.qd = sext i8 %i.qc to i32
  %isdigittmp = add nsw i32 %i.qd, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.iy, label %sub_0397

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 11, ptr %i.qe, align 8, !tbaa !88
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 14, ptr %i.qf, align 2, !tbaa !89
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.qh = load i8, ptr %i.qg, align 4, !tbaa !15
  %i.qi = icmp eq i8 %i.qh, 72
  br i1 %i.qi, label %bb.iz, label %.thread331.tail.thread

bb.iz:                                            ; preds = %bb.iy
  call void @_ZN6LibRaw18process_Hassy_LensEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 14)
  br label %.thread331.tail.thread

bb.ja:                                            ; preds = %_ZL14limited_strcatPcPKcm.exit209
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 2569
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !15
  %i.ql = sext i8 %i.qk to i32
  %isdigittmp199 = add nsw i32 %i.ql, -48
  %isdigit200 = icmp ult i32 %isdigittmp199, 10
  br i1 %isdigit200, label %bb.jb, label %sub_0397

sub_0397:                                         ; preds = %bb.ja, %bb.ix, %bb.iw, %_ZL14limited_strcatPcPKcm.exit209
  %i.qm = load i8, ptr %i.o, align 8
  %.not420 = icmp eq i8 %i.qm, 57
  br i1 %.not420, label %sub_1398, label %.thread331.tail.thread

sub_1398:                                         ; preds = %sub_0397
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 2489
  %i.qo = load i8, ptr %i.qn, align 1
  %.not421 = icmp eq i8 %i.qo, 48
  br i1 %.not421, label %.thread331.tail, label %.thread331.tail.thread

.thread331.tail:                                  ; preds = %sub_1398
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 2490
  %i.qq = load i8, ptr %i.qp, align 2
  %i.qr = icmp eq i8 %i.qq, 55
  br i1 %i.qr, label %bb.jb, label %.thread331.tail.thread

bb.jb:                                            ; preds = %.thread331.tail, %bb.ja
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 9, ptr %i.qt, align 8, !tbaa !88
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 16, ptr %i.qu, align 2, !tbaa !89
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.qw = load i8, ptr %i.qv, align 4, !tbaa !15
  switch i8 %i.qw, label %.thread331.tail.thread [
    i8 72, label %bb.jc
    i8 88, label %bb.jd
    i8 0, label %bb.je
  ]

bb.jc:                                            ; preds = %bb.jb
  call void @_ZN6LibRaw18process_Hassy_LensEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 14)
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 1664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.qx, ptr noundef nonnull align 1 dereferenceable(3) @.str.75, i64 3, i1 false) #12
  br label %.thread331.tail.thread

bb.jd:                                            ; preds = %bb.jb
  call void @_ZN6LibRaw18process_Hassy_LensEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 16)
  br label %.thread331.tail.thread

bb.je:                                            ; preds = %bb.jb
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 192696
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !94
  %i.ra = fcmp reassoc nsz arcp contract afn ogt float %i.qz, 1.000000e+00
  br i1 %i.ra, label %bb.jf, label %.thread331.tail.thread

bb.jf:                                            ; preds = %bb.je
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 192700
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !95 ; 2 uses
  %i.rd = fcmp reassoc nsz arcp contract afn ogt float %i.rc, 1.000000e+01
  br i1 %i.rd, label %bb.jg, label %.thread331.tail.thread

bb.jg:                                            ; preds = %bb.jf
  %i.re = fptoui float %i.rc to i64               ; 3 uses
  store i64 %i.re, ptr %i.qs, align 8, !tbaa !76
  %i.rf = icmp eq i64 %i.re, 35
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 1420 ; 2 uses
  br i1 %i.rf, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  store i16 2, ptr %i.rg, align 4, !tbaa !77
  store i64 1600350750, ptr %i.qs, align 8, !tbaa !76
  br label %.thread331.tail.thread

bb.ji:                                            ; preds = %bb.jg
  store i16 1, ptr %i.rg, align 4, !tbaa !77
  %reass.mul = mul i64 %i.re, 10010
end_hunk_1
