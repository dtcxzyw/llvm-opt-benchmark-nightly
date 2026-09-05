Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/encode?download=true
begin_hunk_0_@flac__encode_file:bb.a
  %i.sq = load i32, ptr %i.b, align 1
  %i.sr = icmp ne i32 %i.sq, 1296912195
  %i.ss = zext i1 %i.sr to i32
  %.not186.i = icmp eq i32 %i.ss, 0
  br i1 %.not186.i, label %bb.dv, label %bb.eq

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.st = load i32, ptr %i.ap, align 8, !tbaa !28
  %i.su = icmp eq i32 %i.st, 5                    ; 5 uses
  %.neg599.i = select i1 %i.su, i32 -22, i32 -18
  %i.sv = select i1 %i.su, i32 22, i32 18         ; 2 uses
  %.not187.i = icmp eq i32 %.0164586.i, 0
  %i.sw = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  br i1 %.not187.i, label %fread.inline.exit.i.i.i383, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sx = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.sx, i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef %i.sw) #18
  br label %.thread.i382

fread.inline.exit.i.i.i383:                       ; preds = %bb.dv
  %i.sy = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.sz = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.sy)
  %i.ta = icmp ult i64 %i.sz, 4
  br i1 %i.ta, label %read_uint32.exit.thread.i387, label %bb.dx

read_uint32.exit.thread.i387:                     ; preds = %fread.inline.exit.i.i.i383
  %i.tb = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.tb, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.sw) #18
  br label %.thread.i382

bb.dx:                                            ; preds = %fread.inline.exit.i.i.i383
  %i.tc = load <4 x i8>, ptr %i.d, align 4, !tbaa !29
  %i.td = shufflevector <4 x i8> %i.tc, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.td, ptr %i.d, align 4, !tbaa !29
  %.cast3853 = bitcast <4 x i8> %i.td to i32      ; 5 uses
  %i.te = icmp ugt i32 %i.sv, %.cast3853
  br i1 %i.te, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.tf = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.tg = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.th = select i1 %i.su, ptr @.str.61, ptr @.str.62
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.tf, i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %i.tg, ptr noundef nonnull %i.th, i32 noundef %.cast3853) #18
  br label %.thread.i382

bb.dz:                                            ; preds = %bb.dx
  %.not189.i = icmp eq i32 %i.sv, %.cast3853
  %or.cond215.i = or i1 %i.su, %.not189.i
  br i1 %or.cond215.i, label %fread.inline.exit.i.i222.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ti = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.tj = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ti, i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef %i.tj, ptr noundef nonnull @.str.62, i32 noundef %.cast3853, i32 noundef 18) #18
  %i.tk = load i32, ptr %i.v, align 8, !tbaa !39
  %.not190.i = icmp eq i32 %i.tk, 0
  br i1 %.not190.i, label %.fread.inline.exit.i.i222_crit_edge.i, label %.thread.i382

.fread.inline.exit.i.i222_crit_edge.i:            ; preds = %bb.ea
  %.pre.i384 = load i32, ptr %i.d, align 4, !tbaa !14
  br label %fread.inline.exit.i.i222.i

fread.inline.exit.i.i222.i:                       ; preds = %.fread.inline.exit.i.i222_crit_edge.i, %bb.dz
  %i.tl = phi i32 [ %.pre.i384, %.fread.inline.exit.i.i222_crit_edge.i ], [ %.cast3853, %bb.dz ] ; 2 uses
  %i.tm = add i32 %i.tl, %.neg599.i
  %i.tn = and i32 %i.tl, 1
  %i.to = add i32 %i.tm, %i.tn
  %i.tp = zext i32 %i.to to i64                   ; 2 uses
  %i.tq = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.tr = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.ts = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.tq)
  %i.tt = icmp ult i64 %i.ts, 2
  br i1 %i.tt, label %read_uint16.exit.thread.i386, label %bb.eb

read_uint16.exit.thread.i386:                     ; preds = %fread.inline.exit.i.i222.i
  %i.tu = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.tu, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.tr) #18
  br label %.thread.i382

bb.eb:                                            ; preds = %fread.inline.exit.i.i222.i
  %i.tv = load i8, ptr %i.rt, align 1, !tbaa !29
  %i.tw = load i8, ptr %i.c, align 2, !tbaa !29
  store i8 %i.tw, ptr %i.rt, align 1, !tbaa !29
  store i8 %i.tv, ptr %i.c, align 2, !tbaa !29
  %i.tx = load i16, ptr %i.c, align 2, !tbaa !88  ; 3 uses
  %i.ty = zext i16 %i.tx to i32                   ; 4 uses
  %i.tz = icmp ult i16 %i.tx, 3
  %or.cond.i385 = or i1 %i.rv, %i.tz
  %i.ua = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  br i1 %or.cond.i385, label %fread.inline.exit.i.i228.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ub = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ub, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef %i.ua, i32 noundef %i.ty) #18
  br label %.thread.i382

fread.inline.exit.i.i228.i:                       ; preds = %bb.eb
  %i.uc = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.ud = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.uc)
  %i.ue = icmp ult i64 %i.ud, 4
  br i1 %i.ue, label %read_uint32.exit233.thread.i, label %fread.inline.exit.i.i474

read_uint32.exit233.thread.i:                     ; preds = %fread.inline.exit.i.i228.i
  %i.uf = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.uf, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.ua) #18
  br label %.thread.i382

fread.inline.exit.i.i474:                         ; preds = %fread.inline.exit.i.i228.i
  %i.ug = load <4 x i8>, ptr %i.d, align 4, !tbaa !29
  %i.uh = shufflevector <4 x i8> %i.ug, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.uh, ptr %i.d, align 4, !tbaa !29
  %.cast3854 = bitcast <4 x i8> %i.uh to i32
  %i.ui = zext i32 %.cast3854 to i64
  %i.uj = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.uk = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.ul = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.uj)
  %i.um = icmp ult i64 %i.ul, 2
  br i1 %i.um, label %read_uint16.exit479.thread, label %bb.ed

read_uint16.exit479.thread:                       ; preds = %fread.inline.exit.i.i474
  %i.un = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.un, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.uk) #18
  br label %.thread.i382

bb.ed:                                            ; preds = %fread.inline.exit.i.i474
  %i.uo = load i8, ptr %i.rt, align 1, !tbaa !29
  %i.up = load i8, ptr %i.c, align 2, !tbaa !29
  store i8 %i.up, ptr %i.rt, align 1, !tbaa !29
  store i8 %i.uo, ptr %i.c, align 2, !tbaa !29
  %i.uq = load i16, ptr %i.c, align 2, !tbaa !88
  %i.ur = zext i16 %i.uq to i32                   ; 2 uses
  %i.us = and i32 %i.ur, 7                        ; 2 uses
  %.not194.i = icmp eq i32 %i.us, 0
  %i.ut = sub nuw nsw i32 8, %i.us
  %i.uu = select i1 %.not194.i, i32 0, i32 %i.ut  ; 2 uses
  %i.uv = add nuw nsw i32 %i.uu, %i.ur            ; 2 uses
  %i.uw = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.ux = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.uy = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 10, ptr noundef nonnull %i.uw)
  %i.uz = icmp ult i64 %i.uy, 10
  br i1 %i.uz, label %read_sane_extended.exit.thread, label %read_bytes.exit.i471

read_bytes.exit.i471:                             ; preds = %bb.ed
  %i.va = load i8, ptr %i.a, align 1, !tbaa !29   ; 2 uses
  %i.vb = zext i8 %i.va to i16
  %i.vc = shl nuw i16 %i.vb, 8
  %i.vd = load i8, ptr %i.rw, align 1, !tbaa !29
  %i.ve = zext i8 %i.vd to i16
  %i.vf = or disjoint i16 %i.vc, %i.ve            ; 2 uses
  %i.vg = icmp slt i8 %i.va, 0
  %i.vh = add i16 %i.vf, -16446
  %i.vi = icmp ult i16 %i.vh, -63
  %or.cond5.i = select i1 %i.vg, i1 true, i1 %i.vi
  br i1 %or.cond5.i, label %read_sane_extended.exit.thread, label %bb.ee

read_sane_extended.exit.thread:                   ; preds = %read_bytes.exit.i471, %bb.ed
  %.str.75.sink = phi ptr [ @.str.57, %bb.ed ], [ @.str.75, %read_bytes.exit.i471 ]
  %i.vj = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.vj, i32 noundef 1, ptr noundef nonnull %.str.75.sink, ptr noundef %i.ux) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread.i382

bb.ee:                                            ; preds = %read_bytes.exit.i471
  %i.vk = sub nuw nsw i16 16446, %i.vf
  %i.vl = load i8, ptr %i.rx, align 1, !tbaa !29
  %i.vm = zext i8 %i.vl to i64
  %i.vn = shl nuw i64 %i.vm, 56
  %i.vo = load i8, ptr %i.ry, align 1, !tbaa !29
  %i.vp = zext i8 %i.vo to i64
  %i.vq = shl nuw nsw i64 %i.vp, 48
  %i.vr = or disjoint i64 %i.vq, %i.vn
  %i.vs = load i8, ptr %i.rz, align 1, !tbaa !29
  %i.vt = zext i8 %i.vs to i64
  %i.vu = shl nuw nsw i64 %i.vt, 40
  %i.vv = or disjoint i64 %i.vr, %i.vu
  %i.vw = load i8, ptr %i.sa, align 1, !tbaa !29
  %i.vx = zext i8 %i.vw to i64
  %i.vy = shl nuw nsw i64 %i.vx, 32
  %i.vz = or disjoint i64 %i.vv, %i.vy
  %i.wa = load i8, ptr %i.sb, align 1, !tbaa !29
  %i.wb = zext i8 %i.wa to i64
  %i.wc = shl nuw nsw i64 %i.wb, 24
  %i.wd = or disjoint i64 %i.vz, %i.wc
  %i.we = load i8, ptr %i.sc, align 1, !tbaa !29
  %i.wf = zext i8 %i.we to i64
  %i.wg = shl nuw nsw i64 %i.wf, 16
  %i.wh = or disjoint i64 %i.wd, %i.wg
  %i.wi = load i8, ptr %i.sd, align 1, !tbaa !29
  %i.wj = zext i8 %i.wi to i64
  %i.wk = shl nuw nsw i64 %i.wj, 8
  %i.wl = or i64 %i.wh, %i.wk
  %i.wm = load i8, ptr %i.se, align 1, !tbaa !29
  %i.wn = zext i8 %i.wm to i64
  %i.wo = or i64 %i.wl, %i.wn                     ; 2 uses
  %i.wp = zext nneg i16 %i.vk to i64              ; 2 uses
  %i.wq = lshr i64 %i.wo, %i.wp
  %i.wr = add nuw nsw i64 %i.wp, 4294967295
  %15 = and i64 %i.wr, 4294967295
  %i.ws = lshr i64 %i.wo, %15
  %i.wt = and i64 %i.ws, 1
  %i.wu = add nuw i64 %i.wt, %i.wq
  %i.wv = trunc i64 %i.wu to i32                  ; 2 uses
  store i32 %i.wv, ptr %i.d, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.su, label %bb.ef, label %bb.ej

bb.ef:                                            ; preds = %bb.ee
  %i.ww = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.wx = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.wy = call fastcc i32 @read_uint32(ptr noundef %i.ww, i32 noundef 1, ptr noundef %i.d, ptr noundef %i.wx)
  %.not196.i = icmp eq i32 %i.wy, 0
  br i1 %.not196.i, label %.thread.i382, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.wz = load i32, ptr %i.d, align 4, !tbaa !14  ; 5 uses
  switch i32 %i.wz, label %bb.ei [
    i32 1936684916, label %bb.eh
    i32 1313820229, label %bb.ej
  ]

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.rm, align 8, !tbaa !87
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.xa = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.xb = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.xc = ashr i32 %i.wz, 24
  %i.xd = lshr i32 %i.wz, 16
  %i.xe = and i32 %i.xd, 8
  %i.xf = lshr i32 %i.wz, 8
  %i.xg = and i32 %i.xf, 8
  %i.xh = and i32 %i.wz, 8
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.xa, i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef %i.xb, i32 noundef %i.xc, i32 noundef %i.xe, i32 noundef %i.xg, i32 noundef %i.xh) #18
  br label %.thread.i382

bb.ej:                                            ; preds = %bb.eh, %bb.eg, %bb.ee
  br i1 %i.rv, label %bb.el, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.ej
  switch i16 %i.tx, label %bb.ek [
    i16 5, label %bb.el
    i16 3, label %bb.el
    i16 2, label %bb.el
    i16 1, label %bb.el
  ]

bb.ek:                                            ; preds = %switch.early.test.i
  %i.xi = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.xj = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.xi, i32 noundef 1, ptr noundef nonnull @.str.64, ptr noundef %i.xj, i32 noundef %i.ty) #18
  br label %.thread.i382

bb.el:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.ej
  %i.xk = lshr i32 %i.uv, 3
  %i.xl = mul nuw nsw i32 %i.xk, %i.ty
  store i32 %i.xl, ptr %i.rq, align 8, !tbaa !85
  %i.xm = load ptr, ptr %i.az, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.xn = call i32 @fileno(ptr noundef %i.xm) #18
  %i.xo = call i32 @fstat64(i32 noundef %i.xn, ptr noundef nonnull %7) #18
  %i.xp = icmp eq i32 %i.xo, 0
  br i1 %i.xp, label %bb.em, label %.preheader4389

bb.em:                                            ; preds = %bb.el
  %i.xq = load i32, ptr %i.sf, align 8, !tbaa !48
  %i.xr = and i32 %i.xq, 61440
  %i.xs = icmp eq i32 %i.xr, 32768
  br i1 %i.xs, label %bb.en, label %.preheader4389

bb.en:                                            ; preds = %bb.em
  %i.xt = call i32 @fseeko64(ptr noundef %i.xm, i64 noundef %i.tp, i32 noundef 1)
  %i.xu = icmp eq i32 %i.xt, 0
  br i1 %i.xu, label %.loopexit586, label %.preheader4389

.preheader4389:                                   ; preds = %bb.en, %bb.em, %bb.el
  br label %bb.eo

bb.eo:                                            ; preds = %.preheader4389, %fread.inline.exit.i466
  %.013.i464 = phi i64 [ %i.xy, %fread.inline.exit.i466 ], [ %i.tp, %.preheader4389 ] ; 3 uses
  %.not.i465 = icmp eq i64 %.013.i464, 0
  br i1 %.not.i465, label %.loopexit586, label %fread.inline.exit.i466

fread.inline.exit.i466:                           ; preds = %bb.eo
  %i.xv = call i64 @llvm.umin.i64(i64 %.013.i464, i64 8192) ; 3 uses
  %i.xw = call i64 @fread(ptr noundef nonnull @fskip_ahead.dump, i64 noundef 1, i64 noundef %i.xv, ptr noundef nonnull %i.xm)
  %i.xx = icmp slt i64 %i.xw, %i.xv
  %i.xy = sub nuw nsw i64 %.013.i464, %i.xv
  br i1 %i.xx, label %bb.ep, label %bb.eo, !llvm.loop !0

bb.ep:                                            ; preds = %fread.inline.exit.i466
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.xz = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.ya = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.xz, i32 noundef 1, ptr noundef nonnull @.str.66, ptr noundef %i.ya) #18
  br label %.thread.i382

.thread.i382:                                     ; preds = %bb.ef, %bb.ea, %read_sane_extended.exit.thread, %read_uint16.exit479.thread, %bb.ep, %bb.ek, %bb.ei, %read_uint32.exit233.thread.i, %bb.ec, %read_uint16.exit.thread.i386, %bb.dy, %read_uint32.exit.thread.i387, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.thread304.i

.loopexit586:                                     ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.fp

bb.eq:                                            ; preds = %bb.du
  %i.yb = load i32, ptr %i.b, align 1
  %i.yc = icmp ne i32 %i.yb, 1145983827
  %i.yd = zext i1 %i.yc to i32
  %.not199.i = icmp eq i32 %i.yd, 0
  br i1 %.not199.i, label %bb.er, label %bb.fi

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %.not200.i = icmp eq i32 %.0164586.i, 0
  %i.ye = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  br i1 %.not200.i, label %bb.es, label %fread.inline.exit.i.i235.i

bb.es:                                            ; preds = %bb.er
  %i.yf = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.yf, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef %i.ye) #18
  br label %.thread296.i

fread.inline.exit.i.i235.i:                       ; preds = %bb.er
  %i.yg = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.yh = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.yg)
  %i.yi = icmp ult i64 %i.yh, 4
  br i1 %i.yi, label %read_uint32.exit240.thread.i, label %bb.et

read_uint32.exit240.thread.i:                     ; preds = %fread.inline.exit.i.i235.i
  %i.yj = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.yj, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.ye) #18
  br label %.thread296.i

bb.et:                                            ; preds = %fread.inline.exit.i.i235.i
  %i.yk = load <4 x i8>, ptr %i.e, align 4, !tbaa !29
  %i.yl = shufflevector <4 x i8> %i.yk, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.yl, ptr %i.e, align 4, !tbaa !29
  %.cast3850 = bitcast <4 x i8> %i.yl to i32      ; 3 uses
  %i.ym = zext i32 %.cast3850 to i64
  br i1 %.not202.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.not203.i = icmp eq i32 %.cast3850, 0
  br i1 %.not203.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.yn = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.yo = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.yn, i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef %i.yo, ptr noundef nonnull %i.b) #18
  %i.yp = load i32, ptr %i.v, align 8, !tbaa !39
  %.not204.i = icmp eq i32 %i.yp, 0
  br i1 %.not204.i, label %bb.ew, label %.thread296.i

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.yq = load i32, ptr %i.rq, align 8, !tbaa !85
  %i.yr = zext i32 %i.yq to i64
  %i.ys = sub nsw i64 0, %i.yr
  br label %fread.inline.exit.i.i242.i

bb.ex:                                            ; preds = %bb.et
  %i.yt = icmp ult i32 %.cast3850, 9
  br i1 %i.yt, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.yu = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.yv = load ptr, ptr %i.ah, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.yu, i32 noundef 1, ptr noundef nonnull @.str.70, ptr noundef %i.yv) #18
  br label %.thread296.i

bb.ez:                                            ; preds = %bb.ex
  %i.yw = add nsw i64 %i.ym, -8
  br label %fread.inline.exit.i.i242.i

fread.inline.exit.i.i242.i:                       ; preds = %bb.ez, %bb.ew
  %.0.i380 = phi i64 [ %i.ys, %bb.ew ], [ %i.yw, %bb.ez ]
  %i.yx = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.yy = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.yz = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.yx)
  %i.za = icmp ult i64 %i.yz, 4
  br i1 %i.za, label %read_uint32.exit247.thread.i, label %fread.inline.exit.i.i249.i

read_uint32.exit247.thread.i:                     ; preds = %fread.inline.exit.i.i242.i
  %i.zb = load ptr, ptr @stderr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.zb, i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.yy) #18
  br label %.thread296.i

fread.inline.exit.i.i249.i:                       ; preds = %fread.inline.exit.i.i242.i
  %i.zc = load <4 x i8>, ptr %i.e, align 4, !tbaa !29
  %i.zd = shufflevector <4 x i8> %i.zc, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.zd, ptr %i.e, align 4, !tbaa !29
  %.cast3851 = bitcast <4 x i8> %i.zd to i32
  %i.ze = zext i32 %.cast3851 to i64              ; 3 uses
  %i.zf = sub nsw i64 %.0.i380, %i.ze             ; 4 uses
  %i.zg = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.zh = load ptr, ptr %i.ah, align 8, !tbaa !24
end_hunk_0
