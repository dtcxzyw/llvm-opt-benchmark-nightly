Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render?download=true
inline.NumInlined: 131
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_CreateTextureFromSurface_REAL:bb.a

bb.w:                                             ; preds = %.lr.ph440, %bb.v
  %indvars.iv472 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next473, %bb.v ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv472
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = and i32 %i.bv, -33554432
  %or.cond417 = icmp eq i32 %i.bw, 436207616
  br i1 %or.cond417, label %.thread407, label %bb.v

.thread404.thread:                                ; preds = %bb.v, %.loopexit.thread, %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 12 uses
  %.in = load ptr, ptr %i.bx, align 8
  %i.by = load i32, ptr %.in, align 4             ; 11 uses
  %i.bz = lshr i32 %i.bm, 24
  %i.ca = and i32 %i.bz, 15                       ; 2 uses
  %.off377 = add nsw i32 %i.ca, -4
  %switch378 = icmp ult i32 %.off377, 3
  br i1 %switch378, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread404.thread
  %i.cb = lshr i32 %i.bm, 20
  %i.cc = and i32 %i.cb, 15
  switch i32 %i.cc, label %.thread505 [
    i32 3, label %bb.aa
    i32 4, label %bb.aa
    i32 7, label %bb.aa
    i32 8, label %bb.aa
  ]

bb.y:                                             ; preds = %.thread404.thread
  %.off379 = add nsw i32 %i.ca, -7
  %switch380 = icmp ult i32 %.off379, 5
  br i1 %switch380, label %bb.z, label %.thread505

bb.z:                                             ; preds = %bb.y
  %i.cd = lshr i32 %i.bm, 20
  %i.ce = and i32 %i.cd, 15
  switch i32 %i.ce, label %.thread505 [
    i32 3, label %bb.aa
    i32 2, label %bb.aa
    i32 6, label %bb.aa
    i32 5, label %bb.aa
  ]

.thread505:                                       ; preds = %bb.x, %.thread404.thread504, %bb.y, %bb.z
  %i.cf = phi i32 [ %i.by, %bb.x ], [ %i.by, %bb.y ], [ %i.by, %bb.z ], [ %i.bl, %.thread404.thread504 ]
  %i.cg = phi ptr [ %i.bx, %bb.x ], [ %i.bx, %bb.y ], [ %i.bx, %bb.z ], [ %i.bj, %.thread404.thread504 ]
  %i.ch = tail call zeroext i1 @SDL_SurfaceHasColorKey_REAL(ptr noundef nonnull %1) #14
  %spec.select381 = zext i1 %i.ch to i8
  br label %bb.aa

bb.aa:                                            ; preds = %.thread505, %bb.x, %bb.x, %bb.x, %bb.x, %bb.z, %bb.z, %bb.z, %bb.z
  %i.ci = phi i32 [ %i.cf, %.thread505 ], [ %i.by, %bb.z ], [ %i.by, %bb.z ], [ %i.by, %bb.z ], [ %i.by, %bb.z ], [ %i.by, %bb.x ], [ %i.by, %bb.x ], [ %i.by, %bb.x ], [ %i.by, %bb.x ] ; 6 uses
  %i.cj = phi ptr [ %i.cg, %.thread505 ], [ %i.bx, %bb.z ], [ %i.bx, %bb.z ], [ %i.bx, %bb.z ], [ %i.bx, %bb.z ], [ %i.bx, %bb.x ], [ %i.bx, %bb.x ], [ %i.bx, %bb.x ], [ %i.bx, %bb.x ]
  %.0 = phi i8 [ %spec.select381, %.thread505 ], [ 1, %bb.z ], [ 1, %bb.z ], [ 1, %bb.z ], [ 1, %bb.z ], [ 1, %bb.x ], [ 1, %bb.x ], [ 1, %bb.x ], [ 1, %bb.x ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not313 = icmp eq ptr %i.cl, null
  br i1 %.not313, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @SDL_DetectPalette(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #14
  %i.cm = load i8, ptr %i.f, align 1, !range !9, !noundef !10
  %i.cn = trunc nuw i8 %i.cm to i1
  %spec.select = select i1 %i.cn, i8 %.0, i8 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2 = phi i8 [ %spec.select, %bb.ab ], [ %.0, %bb.aa ] ; 2 uses
  %i.co = load i32, ptr %i.r, align 4             ; 3 uses
  %.not314 = icmp eq i32 %i.co, 0
  %.mask316 = and i32 %i.co, -268435456
  %.not315 = icmp eq i32 %.mask316, 268435456
  %or.cond356 = or i1 %.not314, %.not315
  br i1 %or.cond356, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cp = lshr i32 %i.co, 24
  %i.cq = and i32 %i.cp, 15
  switch i32 %i.cq, label %bb.af [
    i32 1, label %bb.ae
    i32 12, label %bb.ae
    i32 2, label %bb.ae
    i32 3, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.cr = xor i8 %.2, 1
  %i.cs = zext nneg i8 %i.cr to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ae
  %i.ct = phi i32 [ 0, %bb.ad ], [ 0, %bb.ac ], [ %i.cs, %bb.ae ]
  %.not317 = icmp eq i32 %i.ci, 0
  %.mask319 = and i32 %i.ci, -268435456
  %.not318 = icmp eq i32 %.mask319, 268435456
  %or.cond357 = or i1 %.not317, %.not318
  br i1 %or.cond357, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  switch i32 %i.ci, label %bb.ah [
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 844715353, label %switch.edge
    i32 808530000, label %switch.edge
  ]

bb.ah:                                            ; preds = %bb.ag
  br label %switch.edge

bb.ai:                                            ; preds = %bb.af
  %i.cu = and i32 %i.ci, 255
  br label %switch.edge

switch.edge:                                      ; preds = %bb.ag, %bb.ah, %bb.ag, %bb.ag, %bb.ag, %bb.ai
  %i.cv = phi i32 [ %i.cu, %bb.ai ], [ 2, %bb.ag ], [ 1, %bb.ah ], [ 2, %bb.ag ], [ 2, %bb.ag ], [ 2, %bb.ag ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cx = load i32, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph442, label %.thread407

.lr.ph442:                                        ; preds = %switch.edge
  %i.cz = load ptr, ptr %i.cj, align 8
  %wide.trip.count480 = zext nneg i32 %i.cx to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph442, %bb.ar
  %indvars.iv477 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next478, %bb.ar ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv477
  %i.db = load i32, ptr %i.da, align 4            ; 7 uses
  %.not320 = icmp eq i32 %i.db, 0
  %.mask322 = and i32 %i.db, -268435456
  %.not321 = icmp eq i32 %.mask322, 268435456
  %or.cond = or i1 %.not320, %.not321
  %i.dc = and i32 %i.db, 255
  %i.dd = icmp eq i32 %i.dc, %i.cv
  %or.cond413 = select i1 %or.cond, i1 %i.dd, i1 false
  br i1 %or.cond413, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.de = lshr i32 %i.db, 24
  %i.df = and i32 %i.de, 15                       ; 4 uses
  %.off382 = add nsw i32 %i.df, -4
  %switch383 = icmp ult i32 %.off382, 3
  br i1 %switch383, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dg = lshr i32 %i.db, 20
  %i.dh = and i32 %i.dg, 15
  %i.di = add nsw i32 %i.dh, -3
  %switch.and = and i32 %i.di, -6
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %.off384 = add nsw i32 %i.df, -7
  %switch385 = icmp ult i32 %.off384, 5
  br i1 %switch385, label %switch.lookup, label %bb.an

switch.lookup:                                    ; preds = %bb.am
  %i.dj = lshr i32 %i.db, 20
  %i.dk = trunc nuw nsw i32 %i.dj to i16
  %switch.cast = and i16 %i.dk, 15
  %switch.downshift = lshr i16 108, %switch.cast
  %switch.masked = trunc i16 %switch.downshift to i1
  br label %bb.an

bb.an:                                            ; preds = %switch.lookup, %bb.al, %bb.am
  %.shrunk = phi i1 [ %switch.masked, %switch.lookup ], [ false, %bb.am ], [ %switch.selectcmp, %bb.al ]
  %i.dl = zext i1 %.shrunk to i8
  %i.dm = icmp eq i8 %.2, %i.dl
  br i1 %i.dm, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  switch i32 %i.df, label %bb.ap [
    i32 1, label %bb.aq
    i32 12, label %bb.aq
    i32 2, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dn = icmp eq i32 %i.df, 3
  %i.do = zext i1 %i.dn to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ap
  %i.dp = phi i32 [ %i.do, %bb.ap ], [ 1, %bb.ao ], [ 1, %bb.ao ], [ 1, %bb.ao ]
  %i.dq = icmp eq i32 %i.dp, %i.ct
  br i1 %i.dq, label %.thread407, label %bb.ar

bb.ar:                                            ; preds = %bb.aj, %bb.an, %bb.aq
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %exitcond481.not = icmp eq i64 %indvars.iv.next478, %wide.trip.count480
  br i1 %exitcond481.not, label %.thread407, label %bb.aj, !llvm.loop !37

.thread407:                                       ; preds = %bb.o, %bb.m, %bb.u, %bb.w, %bb.ar, %bb.aq, %switch.edge, %bb.s
  %.4 = phi i32 [ %i.bh, %bb.u ], [ %i.bv, %bb.w ], [ 372645892, %bb.m ], [ %i.db, %bb.aq ], [ %.pre, %bb.s ], [ %i.ci, %switch.edge ], [ %i.ci, %bb.ar ], [ 376840196, %bb.o ] ; 3 uses
  %i.dr = call i32 @SDL_GetSurfaceColorspace_REAL(ptr noundef %1) #14 ; 6 uses
  %i.ds = icmp eq i32 %i.dr, 301991168
  %i.dt = and i32 %i.dr, 992
  %i.du = icmp eq i32 %i.dt, 512
  %or.cond364 = or i1 %i.ds, %i.du
  br i1 %or.cond364, label %bb.as, label %bb.au

bb.as:                                            ; preds = %.thread407
  %i.dv = and i32 %.4, -33554432
  %or.cond418 = icmp eq i32 %i.dv, 436207616
  br i1 %or.cond418, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = and i32 %.4, -15794176
  %or.cond370 = icmp eq i32 %i.dw, 369557504
  %spec.select388 = select i1 %or.cond370, i32 301999616, i32 301991328
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %.thread407
  %.0240 = phi i32 [ 301991168, %bb.as ], [ %spec.select388, %bb.at ], [ %i.dr, %.thread407 ] ; 2 uses
  %i.dx = call i32 @SDL_CreateProperties_REAL() #14 ; 9 uses
  %i.dy = zext i32 %.0240 to i64
  %i.dz = call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.dx, ptr noundef nonnull @.str.43, i64 noundef %i.dy) #14 ; 0 uses
  %i.ea = icmp eq i32 %i.dr, %.0240
  br i1 %i.ea, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.eb = call float @SDL_GetSurfaceSDRWhitePoint(ptr noundef %1, i32 noundef %i.dr) #14
  %i.ec = call zeroext i1 @SDL_SetFloatProperty_REAL(i32 noundef %i.dx, ptr noundef nonnull @.str.44, float noundef %i.eb) #14 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ed = call float @SDL_GetSurfaceHDRHeadroom(ptr noundef %1, i32 noundef %i.dr) #14
  %i.ee = call zeroext i1 @SDL_SetFloatProperty_REAL(i32 noundef %i.dx, ptr noundef nonnull @.str.45, float noundef %i.ed) #14 ; 0 uses
  %i.ef = zext i32 %.4 to i64
  %i.eg = call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.dx, ptr noundef nonnull @.str.33, i64 noundef %i.ef) #14 ; 0 uses
  %i.eh = call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.dx, ptr noundef nonnull @.str.34, i64 noundef 0) #14 ; 0 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = sext i32 %i.ej to i64
  %i.el = call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.dx, ptr noundef nonnull @.str.35, i64 noundef %i.ek) #14 ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = sext i32 %i.en to i64
  %i.ep = call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.dx, ptr noundef nonnull @.str.36, i64 noundef %i.eo) #14 ; 0 uses
  %i.eq = call ptr @SDL_CreateTextureWithProperties_REAL(ptr noundef nonnull %0, i32 noundef %i.dx) ; 22 uses
  call void @SDL_DestroyProperties_REAL(i32 noundef %i.dx) #14
  %.not340 = icmp eq ptr %i.eq, null
  br i1 %.not340, label %SDL_DestroyTexture_REAL.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = load i32, ptr %i.r, align 4
  %i.es = load i32, ptr %i.eq, align 8
  %i.et = icmp eq i32 %i.er, %i.es
  br i1 %i.et, label %bb.ay, label %bb.bi

bb.ay:                                            ; preds = %bb.ax
  %i.eu = call i32 @SDL_GetSurfaceColorspace_REAL(ptr noundef nonnull %1) #14
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = icmp eq i32 %i.eu, %i.ew
  br i1 %i.ex, label %bb.az, label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.ey = load i32, ptr %i.r, align 4             ; 5 uses
  %.not.i389 = icmp eq i32 %i.ey, 0
  %.mask.i = and i32 %i.ey, -268435456
  %.not83.i = icmp eq i32 %.mask.i, 268435456
  %or.cond.i = or i1 %.not.i389, %.not83.i
  br i1 %or.cond.i, label %bb.ba, label %.critedge.i

bb.ba:                                            ; preds = %bb.az
  %i.ez = lshr i32 %i.ey, 24
  %i.fa = and i32 %i.ez, 15                       ; 2 uses
  %.off.i = add nsw i32 %i.fa, -4
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fb = lshr i32 %i.ey, 20
  %i.fc = and i32 %i.fb, 15
  switch i32 %i.fc, label %.critedge.i [
    i32 3, label %bb.be
    i32 4, label %bb.be
    i32 7, label %bb.be
    i32 8, label %bb.be
  ]

bb.bc:                                            ; preds = %bb.ba
  %.off96.i = add nsw i32 %i.fa, -7
  %switch97.i = icmp ult i32 %.off96.i, 5
  br i1 %switch97.i, label %bb.bd, label %.critedge.i

bb.bd:                                            ; preds = %bb.bc
  %i.fd = lshr i32 %i.ey, 20
  %i.fe = and i32 %i.fd, 15
  switch i32 %i.fe, label %.critedge.i [
    i32 3, label %bb.be
    i32 2, label %bb.be
    i32 6, label %bb.be
    i32 5, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.ff = call zeroext i1 @SDL_SurfaceHasColorKey_REAL(ptr noundef nonnull %1) #14
  br i1 %i.ff, label %bb.bi, label %.critedge.i

.critedge.i:                                      ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az
  %i.fg = load i32, ptr %1, align 8
  %i.fh = and i32 %i.fg, 2
  %.not88.i = icmp eq i32 %i.fh, 0
  br i1 %.not88.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.critedge.i
  %i.fi = call zeroext i1 @SDL_LockSurface_REAL(ptr noundef nonnull %1) #14
  br i1 %i.fi, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fm = load i32, ptr %i.fl, align 8
  %i.fn = call zeroext i1 @SDL_UpdateTexture_REAL(ptr noundef nonnull %i.eq, ptr noundef null, ptr noundef %i.fk, i32 noundef %i.fm) ; 0 uses
  call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %1) #14
  br label %bb.bk

bb.bh:                                            ; preds = %.critedge.i
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = call zeroext i1 @SDL_UpdateTexture_REAL(ptr noundef nonnull %i.eq, ptr noundef null, ptr noundef %i.fp, i32 noundef %i.fr) ; 0 uses
  br label %bb.bk

bb.bi:                                            ; preds = %bb.be, %bb.ay, %bb.ax
  %i.ft = load i32, ptr %i.eq, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eq, i64 216
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.fx = load i32, ptr %i.fw, align 8
  %i.fy = call i32 @SDL_GetSurfaceProperties_REAL(ptr noundef nonnull %1) #14
  %i.fz = call ptr @SDL_ConvertSurfaceAndColorspace_REAL(ptr noundef nonnull %1, i32 noundef %i.ft, ptr noundef %i.fv, i32 noundef %i.fx, i32 noundef %i.fy) #14 ; 4 uses
  %.not87.not.i = icmp eq ptr %i.fz, null
  br i1 %.not87.not.i, label %bb.bs, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = call zeroext i1 @SDL_UpdateTexture_REAL(ptr noundef nonnull %i.eq, ptr noundef null, ptr noundef %i.gb, i32 noundef %i.gd) ; 0 uses
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %i.fz) #14
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh, %bb.bg, %bb.bf
  %i.gf = load i32, ptr %i.eq, align 8
  %i.gg = load i32, ptr %i.r, align 4
  %i.gh = icmp eq i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gj = load ptr, ptr %i.gi, align 8            ; 4 uses
  %.not89.i = icmp eq ptr %i.gj, null
  br i1 %.not89.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = call ptr @SDL_CreatePalette_REAL(i32 noundef %i.gk) #14 ; 5 uses
  %.not90.i = icmp eq ptr %i.gl, null
  br i1 %.not90.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = load i32, ptr %i.gj, align 8
  %i.gp = call zeroext i1 @SDL_SetPaletteColors_REAL(ptr noundef nonnull %i.gl, ptr noundef %i.gn, i32 noundef 0, i32 noundef %i.go) #14
  br i1 %i.gp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gq = call zeroext i1 @SDL_SetTexturePalette_REAL(ptr noundef nonnull %i.eq, ptr noundef nonnull %i.gl)
  br i1 %i.gq, label %.critedge95.i, label %bb.bp

.critedge95.i:                                    ; preds = %bb.bo
  call void @SDL_DestroyPalette_REAL(ptr noundef nonnull %i.gl) #14
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  call void @SDL_DestroyPalette_REAL(ptr noundef %i.gl) #14
  br label %bb.bs

bb.bq:                                            ; preds = %.critedge95.i, %bb.bl, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.gr = call zeroext i1 @SDL_GetSurfaceColorMod_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14 ; 0 uses
  %i.gs = load i8, ptr %i.a, align 1
  %i.gt = load i8, ptr %i.b, align 1
end_hunk_0
