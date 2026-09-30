Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_dirwrite?download=true
inline.NumInlined: 123
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_TIFFRewriteField:bb.a
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !50
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.ay = call i64 %i.aw(ptr noundef %i.ax, ptr noundef nonnull %i.b, i64 noundef %.1297) #8
  %i.az = icmp eq i64 %i.ay, %.1297
  br i1 %i.az, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %0, align 8, !tbaa !49
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.6, ptr noundef %i.ba) #8
  br label %bb.di

bb.t:                                             ; preds = %bb.r
  %i.bb = load i16, ptr %i.b, align 16            ; 2 uses
  store i16 %i.bb, ptr %i.c, align 2
  %i.bc = load i32, ptr %i.l, align 8, !tbaa !29
  %i.bd = and i32 %i.bc, 128
  %.not314 = icmp eq i32 %i.bd, 0
  br i1 %.not314, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @TIFFSwabShort(ptr noundef nonnull %i.c) #8
  %.pre398 = load i16, ptr %i.c, align 2, !tbaa !34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.be = phi i16 [ %.pre398, %bb.u ], [ %i.bb, %bb.t ]
  %i.bf = icmp eq i16 %i.be, %1                   ; 3 uses
  br i1 %i.bf, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = add i64 %.2294381, %.1297               ; 2 uses
  %i.bh = load i16, ptr %i.a, align 2, !tbaa !34
  %.not313 = icmp eq i16 %i.bh, 0
  br i1 %.not313, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %bb.w, %bb.v, %.._crit_edge_crit_edge
  %.not315 = phi i1 [ %i.at, %.._crit_edge_crit_edge ], [ %i.bf, %bb.v ], [ %i.bf, %bb.w ]
  %.2294.lcssa = phi i64 [ %.1293, %.._crit_edge_crit_edge ], [ %i.bg, %bb.w ], [ %.2294381, %bb.v ] ; 2 uses
  br i1 %.not315, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.bi = load ptr, ptr %0, align 8, !tbaa !49
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.7, ptr noundef %i.bi, i32 noundef %i.j) #8
  br label %bb.di

bb.y:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2
  store i16 %i.bk, ptr %i.d, align 2
  %i.bl = load i32, ptr %i.l, align 8, !tbaa !29  ; 2 uses
  %i.bm = and i32 %i.bl, 128
  %.not316 = icmp eq i32 %i.bm, 0
  br i1 %.not316, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @TIFFSwabShort(ptr noundef nonnull %i.d) #8
  %.pre400.a = load i32, ptr %i.l, align 8, !tbaa !29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bn = phi i32 [ %.pre400.a, %bb.z ], [ %i.bl, %bb.y ] ; 3 uses
  %i.bo = and i32 %i.bn, 524288
  %.not317 = icmp eq i32 %i.bo, 0
  br i1 %.not317, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  store i32 %i.bq, ptr %i.h, align 4
  %i.br = and i32 %i.bn, 128
  %.not318 = icmp eq i32 %i.br, 0
  br i1 %.not318, label %.thread428, label %bb.ac

.thread428:                                       ; preds = %bb.ab
  %i.bs = zext i32 %i.bq to i64
  store i64 %i.bs, ptr %i.e, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bu = load i32, ptr %i.bt, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @TIFFSwabLong(ptr noundef nonnull %i.h) #8
  %.pre402.a = load i32, ptr %i.h, align 4, !tbaa !30
  %.pre403.a = load i32, ptr %i.l, align 8, !tbaa !29
  %.pre409.a = and i32 %.pre403.a, 128
  %i.bv = icmp eq i32 %.pre409.a, 0
  %i.bw = zext i32 %.pre402.a to i64
  store i64 %i.bw, ptr %i.e, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  store i32 %i.by, ptr %i.h, align 4
  br i1 %i.bv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @TIFFSwabLong(ptr noundef nonnull %i.h) #8
  %.pre404.a = load i32, ptr %i.h, align 4, !tbaa !30
  br label %bb.ae

bb.ae:                                            ; preds = %.thread428, %bb.ad, %bb.ac
  %i.bz = phi i32 [ %.pre404.a, %bb.ad ], [ %i.by, %bb.ac ], [ %i.bu, %.thread428 ]
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  store i64 %i.ca, ptr %i.f, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %bb.ai

bb.af:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cc = load i64, ptr %i.cb, align 4
  store i64 %i.cc, ptr %i.e, align 8
  %i.cd = and i32 %i.bn, 128
  %.not320 = icmp eq i32 %i.cd, 0
  br i1 %.not320, label %.thread430, label %bb.ag

.thread430:                                       ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cf = load i64, ptr %i.ce, align 4            ; 2 uses
  store i64 %i.cf, ptr %i.f, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @TIFFSwabLong8(ptr noundef nonnull %i.e) #8
  %.pre401 = load i32, ptr %i.l, align 8, !tbaa !29
  %.pre414 = and i32 %.pre401, 128
  %i.cg = icmp eq i32 %.pre414, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ci = load i64, ptr %i.ch, align 4            ; 2 uses
  store i64 %i.ci, ptr %i.f, align 8
  br i1 %i.cg, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @TIFFSwabLong8(ptr noundef nonnull %i.f) #8
  %.pre405.a = load i64, ptr %i.f, align 8, !tbaa !39
  br label %bb.ai

bb.ai:                                            ; preds = %.thread430, %bb.ag, %bb.ah, %bb.ae
  %i.cj = phi i64 [ %i.ci, %bb.ag ], [ %.pre405.a, %bb.ah ], [ %i.ca, %bb.ae ], [ %i.cf, %.thread430 ]
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = load i64, ptr %i.e, align 8
  %i.cm = icmp eq i64 %i.cl, 0
  %or.cond = select i1 %i.ck, i1 %i.cm, i1 false
  %i.cn = load i16, ptr %i.d, align 2
  %i.co = icmp eq i16 %i.cn, 0
  %or.cond7 = select i1 %or.cond, i1 %i.co, i1 false
  br i1 %or.cond7, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  switch i16 %1, label %bb.al [
    i16 324, label %bb.ak
    i16 273, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.cp = load i32, ptr %i.l, align 8, !tbaa !29
  %i.cq = and i32 %i.cp, 524288
  %.not325 = icmp eq i32 %i.cq, 0
  %i.cr = select i1 %.not325, i16 4, i16 16
  br label %.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.cs = icmp sgt i64 %3, 1                      ; 2 uses
  %i.ct = icmp eq i16 %1, 279
  %or.cond13 = and i1 %i.ct, %i.cs
  br i1 %or.cond13, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cu = icmp eq i16 %1, 325
  %or.cond16 = and i1 %i.cu, %i.cs
  br i1 %or.cond16, label %.thread359, label %.sink.split

bb.an:                                            ; preds = %bb.al
  %i.cv = call i64 @TIFFStripSize64(ptr noundef nonnull %0) #8
  %i.cw = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %.val352 = load i16, ptr %i.cw, align 8, !tbaa !31
  %i.cx = call fastcc i32 @WriteAsLong8(i16 %.val352, i64 noundef %i.cv)
  %.not322 = icmp eq i32 %i.cx, 0
  br i1 %.not322, label %bb.ao, label %.sink.split

.thread359:                                       ; preds = %bb.am
  %i.cy = call i64 @TIFFTileSize64(ptr noundef nonnull %0) #8
  %i.cz = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %.val = load i16, ptr %i.cz, align 8, !tbaa !31
  %i.da = call fastcc i32 @WriteAsLong8(i16 %.val, i64 noundef %i.cy)
  %.not322361 = icmp eq i32 %i.da, 0
  br i1 %.not322361, label %bb.ap, label %.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.db = call i64 @TIFFStripSize64(ptr noundef nonnull %0) #8
  %.val354 = load i16, ptr %i.cw, align 8, !tbaa !31
  %i.dc = call fastcc i32 @WriteAsLong4(i16 %.val354, i64 noundef %i.db)
  br label %bb.aq

bb.ap:                                            ; preds = %.thread359
  %i.dd = call i64 @TIFFTileSize64(ptr noundef nonnull %0) #8
  %.val353 = load i16, ptr %i.cz, align 8, !tbaa !31
  %i.de = call fastcc i32 @WriteAsLong4(i16 %.val353, i64 noundef %i.dd)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0288 = phi i32 [ %i.dc, %bb.ao ], [ %i.de, %bb.ap ]
  %.not323 = icmp eq i32 %.0288, 0
  %spec.select = select i1 %.not323, i16 3, i16 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.an, %bb.am, %.thread359, %bb.aq, %bb.ak
  %.sink = phi i16 [ %i.cr, %bb.ak ], [ 16, %.thread359 ], [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select, %bb.aq ]
  store i16 %.sink, ptr %i.d, align 2, !tbaa !34
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.ai
  %i.df = call i32 @TIFFDataWidth(i32 noundef %2) #8
  %i.dg = icmp eq i32 %i.df, 8
  br i1 %i.dg, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.dh = load i32, ptr %i.l, align 8, !tbaa !29
  %i.di = and i32 %i.dh, 524288
  %.not326 = icmp eq i32 %i.di, 0
  br i1 %.not326, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  switch i32 %2, label %bb.aw [
    i32 16, label %bb.au
    i32 17, label %bb.bb
    i32 18, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.dj = load i16, ptr %i.d, align 2, !tbaa !34
  %i.dk = icmp eq i16 %i.dj, 3
  %i.dl = select i1 %i.dk, i32 3, i32 4
  br label %bb.bb

bb.av:                                            ; preds = %bb.at
  br label %bb.bb

bb.aw:                                            ; preds = %bb.at
  br label %bb.bb

bb.ax:                                            ; preds = %bb.as, %bb.ar
  switch i32 %2, label %bb.bb [
    i32 16, label %bb.ay
    i32 17, label %bb.az
    i32 18, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.dm = load i16, ptr %i.d, align 2, !tbaa !34
  %switch.tableidx = add i16 %i.dm, -3            ; 2 uses
  %i.dn = icmp ult i16 %switch.tableidx, 14
  br i1 %i.dn, label %switch.lookup, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.do = load i16, ptr %i.d, align 2, !tbaa !34
  %switch.selectcmp = icmp eq i16 %i.do, 9
  %switch.select = select i1 %switch.selectcmp, i32 9, i32 17
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.dp = load i16, ptr %i.d, align 2, !tbaa !34
  %switch.selectcmp372 = icmp eq i16 %i.dp, 13
  %switch.select373 = select i1 %switch.selectcmp372, i32 13, i32 18
  br label %bb.bb

switch.lookup:                                    ; preds = %bb.ay
  %i.dq = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._TIFFRewriteField, i64 %i.dq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.bb

bb.bb:                                            ; preds = %switch.lookup, %bb.ay, %bb.ba, %bb.az, %bb.ax, %bb.at, %bb.au, %bb.av, %bb.aw
  %.0291 = phi i32 [ %switch.ext, %switch.lookup ], [ %switch.select, %bb.az ], [ %switch.select373, %bb.ba ], [ 9, %bb.at ], [ %i.dl, %bb.au ], [ %2, %bb.aw ], [ 13, %bb.av ], [ 16, %bb.ay ], [ %2, %bb.ax ] ; 21 uses
  %i.dr = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.ds = sext i32 %i.dr to i64
  %i.dt = call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %3, i64 noundef %i.ds, ptr noundef nonnull @.str.8) #8 ; 19 uses
  %.not327 = icmp eq ptr %i.dt, null
  br i1 %.not327, label %bb.di, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.du = icmp eq i32 %.0291, %2
  br i1 %i.du, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dv = call i32 @TIFFDataWidth(i32 noundef %2) #8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul nsw i64 %3, %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dt, ptr align 1 %4, i64 %i.dx, i1 false)
  br label %.critedge

bb.be:                                            ; preds = %bb.bc
  %i.dy = icmp eq i32 %.0291, 9
  %i.dz = icmp eq i32 %2, 17
  %or.cond36 = and i1 %i.dz, %i.dy
  br i1 %or.cond36, label %.preheader, label %bb.bh

.preheader:                                       ; preds = %bb.be
  %.not333391 = icmp sgt i64 %3, 0
  br i1 %.not333391, label %.lr.ph393, label %.critedge

bb.bf:                                            ; preds = %.lr.ph393
  %i.ea = add nuw nsw i64 %.0287392, 1            ; 2 uses
  %exitcond397.not = icmp eq i64 %i.ea, %3
  br i1 %exitcond397.not, label %.critedge, label %.lr.ph393

.lr.ph393:                                        ; preds = %.preheader, %bb.bf
  %.0287392 = phi i64 [ %i.ea, %bb.bf ], [ 0, %.preheader ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0287392
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !39 ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.0287392
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !30
  %i.ef = add i64 %i.ec, 2147483648
  %.not332 = icmp ult i64 %i.ef, 4294967296
  br i1 %.not332, label %bb.bf, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph393
  call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.dt) #8
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.9) #8
  br label %bb.di

bb.bh:                                            ; preds = %bb.be
  %i.eg = icmp eq i32 %.0291, 4
  %i.eh = icmp eq i32 %2, 16                      ; 2 uses
  %or.cond38 = and i1 %i.eh, %i.eg
  br i1 %or.cond38, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ei = icmp eq i32 %.0291, 13
  %i.ej = icmp eq i32 %2, 18
  %or.cond40 = and i1 %i.ej, %i.ei
  br i1 %or.cond40, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.not331387 = icmp sgt i64 %3, 0
  br i1 %.not331387, label %.lr.ph390, label %.critedge

bb.bk:                                            ; preds = %.lr.ph390
  %i.ek = add nuw nsw i64 %.0286388, 1            ; 2 uses
  %exitcond396.not = icmp eq i64 %i.ek, %3
  br i1 %exitcond396.not, label %.critedge, label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.bj, %bb.bk
  %.0286388 = phi i64 [ %i.ek, %bb.bk ], [ 0, %bb.bj ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0286388
  %i.em = load i64, ptr %i.el, align 8, !tbaa !39 ; 2 uses
  %i.en = trunc i64 %i.em to i32
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.0286388
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !30
  %.not330 = icmp ult i64 %i.em, 4294967296
  br i1 %.not330, label %bb.bk, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph390
  call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.dt) #8
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.9) #8
  br label %bb.di

bb.bm:                                            ; preds = %bb.bi
  %i.ep = icmp eq i32 %.0291, 3
  %or.cond42 = and i1 %i.eh, %i.ep
  br i1 %or.cond42, label %.preheader377, label %bb.bp

.preheader377:                                    ; preds = %bb.bm
  %.not329384 = icmp sgt i64 %3, 0
  br i1 %.not329384, label %.lr.ph386, label %.critedge

bb.bn:                                            ; preds = %.lr.ph386
  %i.eq = add nuw nsw i64 %.0385, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.eq, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph386

.lr.ph386:                                        ; preds = %.preheader377, %bb.bn
  %.0385 = phi i64 [ %i.eq, %bb.bn ], [ 0, %.preheader377 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0385
  %i.es = load i64, ptr %i.er, align 8, !tbaa !39 ; 2 uses
  %i.et = trunc i64 %i.es to i16
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %.0385
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !34
  %.not328 = icmp ult i64 %i.es, 65536
  br i1 %.not328, label %bb.bn, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph386
  call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.dt) #8
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.10) #8
  br label %bb.di

bb.bp:                                            ; preds = %bb.bm
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.11) #8
  br label %bb.di

.critedge:                                        ; preds = %bb.bn, %bb.bk, %bb.bf, %.preheader377, %bb.bj, %.preheader, %bb.bd
  %i.ev = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %.critedge
  %i.ex = load i32, ptr %i.l, align 8, !tbaa !29
  %i.ey = and i32 %i.ex, 128
  %.not334 = icmp eq i32 %i.ey, 0
  br i1 %.not334, label %bb.bx, label %bb.br

end_hunk_0
begin_hunk_1_@_TIFFRewriteField:bb.a
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !45
  %i.gt = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.gu = sext i32 %i.gt to i64
  %i.gv = mul nsw i64 %3, %i.gu
  %i.gw = call i64 %i.gq(ptr noundef %i.gs, ptr noundef nonnull %i.dt, i64 noundef %i.gv) #8
  %i.gx = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.gy = sext i32 %i.gx to i64
  %i.gz = mul nsw i64 %3, %i.gy
  %i.ha = icmp eq i64 %i.gw, %i.gz
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.dt) #8
  br i1 %i.ha, label %bb.di, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.12) #8
  br label %bb.di

bb.cp:                                            ; preds = %bb.ck
  br i1 %.not336, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !44
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !45
  %i.hf = call i64 %i.hc(ptr noundef %i.he, i64 noundef 0, i32 noundef 2) #8
  store i64 %i.hf, ptr %i.f, align 8, !tbaa !39
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !46
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !45
  %i.hj = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.hk = sext i32 %i.hj to i64
  %i.hl = mul nsw i64 %3, %i.hk
  %i.hm = call i64 %i.hh(ptr noundef %i.hi, ptr noundef nonnull %i.dt, i64 noundef %i.hl) #8
  %i.hn = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.ho = sext i32 %i.hn to i64
  %i.hp = mul nsw i64 %3, %i.ho
  %i.hq = icmp eq i64 %i.hm, %i.hp
  br i1 %i.hq, label %bb.cv, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.dt) #8
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.12) #8
  br label %bb.di

bb.cs:                                            ; preds = %bb.cp
  %i.hr = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.hs = sext i32 %i.hr to i64
  %i.ht = mul nsw i64 %3, %i.hs
  %i.hu = icmp eq i64 %i.ht, 4
  br i1 %i.hu, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.hv = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.hw = sext i32 %i.hv to i64
  %i.hx = mul nsw i64 %3, %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 1 %i.dt, i64 %i.hx, i1 false)
  %.0..0..0..0. = load i32, ptr %i.i, align 4, !tbaa !30
  %i.hy = zext i32 %.0..0..0..0. to i64
  store i64 %i.hy, ptr %i.f, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.hz = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.ia = sext i32 %i.hz to i64
  %i.ib = mul nsw i64 %3, %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 1 %i.dt, i64 %i.ib, i1 false)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu, %bb.cq
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.dt) #8
  store i16 %i.gk, ptr %i.d, align 2, !tbaa !34
  store i64 %3, ptr %i.e, align 8, !tbaa !39
  store i16 %i.gk, ptr %i.bj, align 2
  %i.ic = load i32, ptr %i.l, align 8, !tbaa !29  ; 2 uses
  %i.id = and i32 %i.ic, 128
  %.not337 = icmp eq i32 %i.id, 0
  br i1 %.not337, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @TIFFSwabShort(ptr noundef nonnull %i.bj) #8
  %.pre406.a = load i32, ptr %i.l, align 8, !tbaa !29
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ie = phi i32 [ %.pre406.a, %bb.cw ], [ %i.ic, %bb.cv ] ; 3 uses
  %i.if = and i32 %i.ie, 524288
  %.not338 = icmp eq i32 %i.if, 0
  br i1 %.not338, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.ig = load i64, ptr %i.e, align 8, !tbaa !39
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %i.ih, ptr %i.ii, align 4
  %i.ij = and i32 %i.ie, 128
  %.not339 = icmp eq i32 %i.ij, 0
  br i1 %.not339, label %.thread432, label %bb.cz

.thread432:                                       ; preds = %bb.cy
  %i.ik = load i64, ptr %i.f, align 8, !tbaa !39
  %i.il = trunc i64 %i.ik to i32
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.il, ptr %i.im, align 8
  br label %bb.de

bb.cz:                                            ; preds = %bb.cy
  call void @TIFFSwabLong(ptr noundef nonnull %i.ii) #8
  %.pre408 = load i32, ptr %i.l, align 8, !tbaa !29
  %.pre410 = and i32 %.pre408, 128
  %i.in = icmp eq i32 %.pre410, 0
  %i.io = load i64, ptr %i.f, align 8, !tbaa !39
  %i.ip = trunc i64 %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.ip, ptr %i.iq, align 8
  br i1 %i.in, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @TIFFSwabLong(ptr noundef nonnull %i.iq) #8
  br label %bb.de

bb.db:                                            ; preds = %bb.cx
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.is = load i64, ptr %i.e, align 8
  store i64 %i.is, ptr %i.ir, align 4
  %i.it = and i32 %i.ie, 128
  %.not341 = icmp eq i32 %i.it, 0
  br i1 %.not341, label %.thread434, label %bb.dc

.thread434:                                       ; preds = %bb.db
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.iv = load i64, ptr %i.f, align 8
  store i64 %i.iv, ptr %i.iu, align 4
  br label %bb.de

bb.dc:                                            ; preds = %bb.db
  call void @TIFFSwabLong8(ptr noundef nonnull %i.ir) #8
  %.pre407 = load i32, ptr %i.l, align 8, !tbaa !29
  %.pre412 = and i32 %.pre407, 128
  %i.iw = icmp eq i32 %.pre412, 0
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.iy = load i64, ptr %i.f, align 8
  store i64 %i.iy, ptr %i.ix, align 4
  br i1 %i.iw, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @TIFFSwabLong8(ptr noundef nonnull %i.ix) #8
  br label %bb.de

bb.de:                                            ; preds = %.thread434, %.thread432, %bb.cz, %bb.da, %bb.dc, %bb.dd
  %i.iz = call i32 @_TIFFSeekOK(ptr noundef nonnull %0, i64 noundef %.2294.lcssa) #8
  %.not343 = icmp eq i32 %i.iz, 0
  br i1 %.not343, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ja = load ptr, ptr %0, align 8, !tbaa !49
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.4, ptr noundef %i.ja) #8
  br label %bb.di

bb.dg:                                            ; preds = %bb.de
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !46
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !45
  %i.jf = call i64 %i.jc(ptr noundef %i.je, ptr noundef nonnull %i.b, i64 noundef %.1297) #8
  %i.jg = icmp eq i64 %i.jf, %.1297
  br i1 %i.jg, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jh = load ptr, ptr %0, align 8, !tbaa !49
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.13, ptr noundef %i.jh) #8
  br label %bb.di

bb.di:                                            ; preds = %bb.cn, %bb.bo, %bb.bl, %bb.bg, %bb.p, %bb.dg, %bb.bb, %bb.dh, %bb.df, %bb.cr, %bb.co, %bb.cm, %bb.bp, %bb.x, %bb.s, %bb.i, %bb.f, %bb.d, %bb.b
  %.5 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.x ], [ 1, %bb.dg ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.bb ], [ 0, %bb.dh ], [ 0, %bb.df ], [ 0, %bb.cr ], [ 0, %bb.bg ], [ 0, %bb.bl ], [ 0, %bb.bo ], [ 0, %bb.bp ], [ 0, %bb.f ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %bb.i ], [ 1, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.5
}

declare ptr @TIFFFindField(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_TIFFSeekOK(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFSwabShort(ptr noundef) local_unnamed_addr #1

declare void @TIFFSwabLong8(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @TIFFSwabLong(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @WriteAsLong8(i16 %.120.val, i64 noundef %0) unnamed_addr #3 {
bb.a:
  switch i16 %.120.val, label %_WriteAsType.exit [
    i16 1, label %bb.b
    i16 -15534, label %bb.c
    i16 -15535, label %bb.c
    i16 -15536, label %bb.c
    i16 -30611, label %bb.c
    i16 -30649, label %bb.c
    i16 -32590, label %bb.c
    i16 8, label %bb.c
    i16 7, label %bb.c
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %0, 4294967295
  br label %_WriteAsType.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = icmp ugt i64 %0, 429496728
  br label %_WriteAsType.exit

_WriteAsType.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %.0.shrunk.i = phi i1 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ true, %bb.a ]
  %.0.i = zext i1 %.0.shrunk.i to i32
  ret i32 %.0.i
}

declare i64 @TIFFStripSize64(ptr noundef) local_unnamed_addr #1

declare i64 @TIFFTileSize64(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @WriteAsLong4(i16 %.120.val, i64 noundef %0) unnamed_addr #3 {
bb.a:
  switch i16 %.120.val, label %_WriteAsType.exit [
    i16 1, label %bb.b
    i16 -15534, label %bb.c
    i16 -15535, label %bb.c
    i16 -15536, label %bb.c
    i16 -30611, label %bb.c
    i16 -30649, label %bb.c
    i16 -32590, label %bb.c
    i16 8, label %bb.c
    i16 7, label %bb.c
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %0, 65535
  br label %_WriteAsType.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = icmp ugt i64 %0, 6552
  br label %_WriteAsType.exit

_WriteAsType.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %.0.shrunk.i = phi i1 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ true, %bb.a ]
  %.0.i = zext i1 %.0.shrunk.i to i32
  ret i32 %.0.i
}

declare i32 @TIFFDataWidth(i32 noundef) local_unnamed_addr #1

declare ptr @_TIFFCheckMalloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfLong8(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @_TIFFRemoveEntryFromDirectoryListByOffset(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @_TIFFFillStriles(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #1

declare void @TIFFWarningExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFWriteDirectoryTagShortLong(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i16 noundef zeroext range(i16 256, 324) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = icmp ult i32 %4, 65536
  %i.d = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4, !tbaa !30
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagCheckedShort.exit

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw i32 %4 to i16
  store i16 %i.g, ptr %i.b, align 2, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29
  %i.j = and i32 %i.i, 128
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @TIFFSwabShort(ptr noundef nonnull %i.b) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 3, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.b)
  br label %TIFFWriteDirectoryTagCheckedShort.exit

TIFFWriteDirectoryTagCheckedShort.exit:           ; preds = %bb.c, %bb.f
  %.0.i = phi i32 [ 1, %bb.c ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = load i32, ptr %1, align 4, !tbaa !30
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagCheckedLong.exit

bb.i:                                             ; preds = %bb.g
  store i32 %4, ptr %i.a, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29
  %i.p = and i32 %i.o, 128
  %.not.i12 = icmp eq i32 %i.p, 0
  br i1 %.not.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @TIFFSwabLong(ptr noundef nonnull %i.a) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 4, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a)
  br label %TIFFWriteDirectoryTagCheckedLong.exit

TIFFWriteDirectoryTagCheckedLong.exit:            ; preds = %bb.h, %bb.k
  %.0.i13 = phi i32 [ 1, %bb.h ], [ %i.q, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.l

bb.l:                                             ; preds = %TIFFWriteDirectoryTagCheckedLong.exit, %TIFFWriteDirectoryTagCheckedShort.exit
  %.0 = phi i32 [ %.0.i, %TIFFWriteDirectoryTagCheckedShort.exit ], [ %.0.i13, %TIFFWriteDirectoryTagCheckedLong.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFWriteDirectoryTagRational(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i16 noundef zeroext range(i16 282, 288) %3, double noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = fcmp olt double %4, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @TIFFWriteDirectoryTagCheckedRational.module, ptr noundef nonnull @.str.37) #8
  br label %TIFFWriteDirectoryTagCheckedRational.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp uno double %4, 0.000000e+00
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @TIFFWriteDirectoryTagCheckedRational.module, ptr noundef nonnull @.str.38) #8
  br label %TIFFWriteDirectoryTagCheckedRational.exit

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %i.g = lshr i32 %i.f, 16
  %i.h = and i32 %i.g, 8
  %i.i = xor i32 %i.h, 8
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8, !tbaa !32
  %i.n = load i32, ptr %1, align 4, !tbaa !30
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagCheckedRational.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  call fastcc void @DoubleToRational(double noundef %4, ptr noundef %i.a, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29
  %i.s = and i32 %i.r, 128
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @TIFFSwabLong(ptr noundef nonnull %i.a) #8
  call void @TIFFSwabLong(ptr noundef nonnull %i.p) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext range(i16 282, 288) %3, i16 noundef zeroext 5, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %i.a)
  br label %TIFFWriteDirectoryTagCheckedRational.exit

TIFFWriteDirectoryTagCheckedRational.exit:        ; preds = %bb.b, %bb.d, %bb.f, %bb.i
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.f ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFWriteDirectoryTagShortPerSample(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i16 noundef zeroext range(i16 258, 340) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 3 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !35
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
