Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_Z27lodepng_compute_color_statsP17LodePNGColorStatsPKhjjPK16LodePNGColorMode:bb.a
  %i.bg = add nuw nsw i64 %.0198346, 1            ; 2 uses
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !132 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %.loopexit343.loopexit, !llvm.loop !489

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.0198346 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %bb.f ] ; 3 uses
  %i.bk = shl nuw nsw i64 %.0198346, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bk ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35
  %i.bt = trunc nuw i64 %.0198346 to i32
  %i.bu = call fastcc noundef i32 @_ZL14color_tree_addP9ColorTreehhhhj(ptr noundef %5, i8 noundef zeroext %i.bm, i8 noundef zeroext %i.bo, i8 noundef zeroext %i.bq, i8 noundef zeroext %i.bs, i32 noundef %i.bt) ; 2 uses
  %.not260 = icmp eq i32 %i.bu, 0
  br i1 %.not260, label %bb.f, label %.loopexit344

.loopexit343.loopexit:                            ; preds = %bb.f
  %.pre373 = load i32, ptr %i.ae, align 4, !tbaa !94
  br label %.loopexit343

.loopexit343:                                     ; preds = %.loopexit343.loopexit, %.preheader342, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit._crit_edge
  %i.bv = phi i32 [ %i.bh, %.loopexit343.loopexit ], [ 0, %.preheader342 ], [ %i.aq, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit._crit_edge ]
  %i.bw = phi i32 [ %.pre373, %.loopexit343.loopexit ], [ %i.af, %.preheader342 ], [ %i.af, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit._crit_edge ]
  %.not261 = icmp eq i32 %i.bw, 16
  br i1 %.not261, label %bb.h, label %.thread

bb.h:                                             ; preds = %.loopexit343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i16 0, ptr %i.a, align 2, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i16 0, ptr %i.b, align 2, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i16 0, ptr %i.c, align 2, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i16 0, ptr %i.d, align 2, !tbaa !68
  %.not262347 = icmp eq i64 %i.o, 0
  br i1 %.not262347, label %.thread314, label %.lr.ph349

bb.i:                                             ; preds = %bb.l
  %i.bx = add nuw i64 %.1348, 1                   ; 2 uses
  %.not262 = icmp eq i64 %i.bx, %i.o
  br i1 %.not262, label %.thread314, label %.lr.ph349, !llvm.loop !490

.thread314:                                       ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.thread

.lr.ph349:                                        ; preds = %bb.h, %bb.i
  %.1348 = phi i64 [ %i.bx, %bb.i ], [ 0, %bb.h ] ; 2 uses
  call fastcc void @_ZL19getPixelColorRGBA16PtS_S_S_PKhmPK16LodePNGColorMode(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %1, i64 noundef %.1348, ptr noundef nonnull %4)
  %i.by = load i16, ptr %i.a, align 2, !tbaa !68
  %i.bz = zext i16 %i.by to i32                   ; 2 uses
  %i.ca = and i32 %i.bz, 255
  %i.cb = lshr i32 %i.bz, 8
  %.not263 = icmp eq i32 %i.ca, %i.cb
  br i1 %.not263, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph349
  %i.cc = load i16, ptr %i.b, align 2, !tbaa !68
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = and i32 %i.cd, 255
  %i.cf = lshr i32 %i.cd, 8
  %.not264 = icmp eq i32 %i.ce, %i.cf
  br i1 %.not264, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cg = load i16, ptr %i.c, align 2, !tbaa !68
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = and i32 %i.ch, 255
  %i.cj = lshr i32 %i.ch, 8
  %.not265 = icmp eq i32 %i.ci, %i.cj
  br i1 %.not265, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ck = load i16, ptr %i.d, align 2, !tbaa !68
  %i.cl = zext i16 %i.ck to i32                   ; 2 uses
  %i.cm = and i32 %i.cl, 255
  %i.cn = lshr i32 %i.cl, 8
  %.not266 = icmp eq i32 %i.cm, %i.cn
  br i1 %.not266, label %bb.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph349
  store i32 16, ptr %i.aj, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i16 0, ptr %i.e, align 2, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i16 0, ptr %i.f, align 2, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i16 0, ptr %i.g, align 2, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  store i16 0, ptr %i.h, align 2, !tbaa !68
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread320
  %.2352 = phi i64 [ 0, %bb.m ], [ %i.dp, %.thread320 ] ; 2 uses
  %.1224351 = phi i32 [ %.0223, %bb.m ], [ %.3226325, %.thread320 ]
  %.1232350 = phi i32 [ %.0231, %bb.m ], [ %.2233, %.thread320 ]
  call fastcc void @_ZL19getPixelColorRGBA16PtS_S_S_PKhmPK16LodePNGColorMode(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %1, i64 noundef %.2352, ptr noundef nonnull %4)
  %.not287 = icmp eq i32 %.1232350, 0
  br i1 %.not287, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cs = load i16, ptr %i.e, align 2, !tbaa !68  ; 2 uses
  %i.ct = load i16, ptr %i.f, align 2, !tbaa !68
  %.not288 = icmp eq i16 %i.cs, %i.ct
  %i.cu = load i16, ptr %i.g, align 2
  %.not289 = icmp eq i16 %i.cs, %i.cu
  %or.cond = select i1 %.not288, i1 %.not289, i1 false
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %0, align 8, !tbaa !137
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.cv = phi i1 [ true, %bb.n ], [ true, %bb.p ], [ false, %bb.o ]
  %.2233 = phi i32 [ 1, %bb.n ], [ 1, %bb.p ], [ 0, %bb.o ]
  %.not290 = icmp eq i32 %.1224351, 0
  br i1 %.not290, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.cw = load i16, ptr %i.e, align 2, !tbaa !68  ; 2 uses
  %i.cx = load i16, ptr %i.co, align 8, !tbaa !138
  %i.cy = icmp eq i16 %i.cw, %i.cx
  br i1 %i.cy, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cz = load i16, ptr %i.f, align 2, !tbaa !68
  %i.da = load i16, ptr %i.cp, align 2, !tbaa !139
  %i.db = icmp eq i16 %i.cz, %i.da
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = load i16, ptr %i.g, align 2, !tbaa !68
  %i.dd = load i16, ptr %i.cq, align 4, !tbaa !140
  %i.de = icmp eq i16 %i.dc, %i.dd
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.df = phi i1 [ false, %bb.s ], [ false, %bb.r ], [ %i.de, %bb.t ] ; 2 uses
  %i.dg = load i16, ptr %i.h, align 2, !tbaa !68
  switch i16 %i.dg, label %.sink.split [
    i16 -1, label %bb.y
    i16 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.dh = load i32, ptr %i.cr, align 4, !tbaa !141 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  %or.cond3 = select i1 %i.di, i1 true, i1 %i.df
  br i1 %or.cond3, label %bb.w, label %.sink.split

bb.w:                                             ; preds = %bb.v
  %i.dj = load i32, ptr %i.az, align 8, !tbaa !131
  %i.dk = or i32 %i.dj, %i.dh
  %brmerge.not = icmp eq i32 %i.dk, 0
  br i1 %brmerge.not, label %bb.x, label %.thread320

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.cr, align 4, !tbaa !141
  store i16 %i.cw, ptr %i.co, align 8, !tbaa !138
  %i.dl = load i16, ptr %i.f, align 2, !tbaa !68
  store i16 %i.dl, ptr %i.cp, align 2, !tbaa !139
  %i.dm = load i16, ptr %i.g, align 2, !tbaa !68
  store i16 %i.dm, ptr %i.cq, align 4, !tbaa !140
  br label %.thread320

bb.y:                                             ; preds = %bb.u
  %i.dn = load i32, ptr %i.cr, align 4, !tbaa !141
  %i.do = icmp ne i32 %i.dn, 0
  %or.cond5 = select i1 %i.do, i1 %i.df, i1 false
  br i1 %or.cond5, label %.sink.split, label %.thread320

.sink.split:                                      ; preds = %bb.y, %bb.v, %bb.u
  store i32 1, ptr %i.az, align 8, !tbaa !131
  store i32 0, ptr %i.cr, align 4, !tbaa !141
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.q
  br i1 %i.cv, label %bb.aa, label %.thread320

.thread320:                                       ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %.3226325 = phi i32 [ 1, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ]
  %i.dp = add nuw i64 %.2352, 1                   ; 2 uses
  %.not286 = icmp eq i64 %i.dp, %i.o
  br i1 %.not286, label %bb.aa, label %bb.n, !llvm.loop !491

bb.aa:                                            ; preds = %bb.z, %.thread320
  %i.dq = load i32, ptr %i.cr, align 4, !tbaa !141
  %.not295 = icmp eq i32 %i.dq, 0
  br i1 %.not295, label %.loopexit341, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = load i32, ptr %i.az, align 8, !tbaa !131
  %.not296 = icmp eq i32 %i.dr, 0
  br i1 %.not296, label %.preheader340, label %.loopexit341

.preheader340:                                    ; preds = %bb.ab, %bb.ag
  %.3353 = phi i64 [ %i.ec, %bb.ag ], [ 0, %bb.ab ] ; 2 uses
  call fastcc void @_ZL19getPixelColorRGBA16PtS_S_S_PKhmPK16LodePNGColorMode(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %1, i64 noundef %.3353, ptr noundef nonnull %4)
  %i.ds = load i16, ptr %i.h, align 2, !tbaa !68
  %.not298 = icmp eq i16 %i.ds, 0
  br i1 %.not298, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %.preheader340
  %i.dt = load i16, ptr %i.e, align 2, !tbaa !68
  %i.du = load i16, ptr %i.co, align 8, !tbaa !138
  %i.dv = icmp eq i16 %i.dt, %i.du
  br i1 %i.dv, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dw = load i16, ptr %i.f, align 2, !tbaa !68
  %i.dx = load i16, ptr %i.cp, align 2, !tbaa !139
  %i.dy = icmp eq i16 %i.dw, %i.dx
  br i1 %i.dy, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dz = load i16, ptr %i.g, align 2, !tbaa !68
  %i.ea = load i16, ptr %i.cq, align 4, !tbaa !140
  %i.eb = icmp eq i16 %i.dz, %i.ea
  br i1 %i.eb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %i.az, align 8, !tbaa !131
  store i32 0, ptr %i.cr, align 4, !tbaa !141
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader340, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %i.ec = add nuw i64 %.3353, 1                   ; 2 uses
  %.not297 = icmp eq i64 %i.ec, %i.o
  br i1 %.not297, label %.loopexit341, label %.preheader340, !llvm.loop !492

.loopexit341:                                     ; preds = %bb.ag, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %.loopexit344

.thread:                                          ; preds = %.loopexit343, %.thread314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store i8 0, ptr %i.i, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store i8 0, ptr %i.j, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store i8 0, ptr %i.k, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store i8 0, ptr %i.l, align 1, !tbaa !35
  %.not268354 = icmp eq i64 %i.o, 0               ; 2 uses
  br i1 %.not268354, label %._crit_edge, label %.lr.ph364

.lr.ph364:                                        ; preds = %.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph364, %.thread329
  %i.ei = phi i32 [ %i.bv, %.lr.ph364 ], [ %i.gq, %.thread329 ] ; 4 uses
  %.4363 = phi i64 [ 0, %.lr.ph364 ], [ %i.gr, %.thread329 ] ; 3 uses
  %.0199362 = phi i8 [ 0, %.lr.ph364 ], [ %.1200, %.thread329 ] ; 2 uses
  %.0201361 = phi i8 [ 0, %.lr.ph364 ], [ %.1202, %.thread329 ] ; 2 uses
  %.0203360 = phi i8 [ 0, %.lr.ph364 ], [ %.1204, %.thread329 ] ; 2 uses
  %.0205359 = phi i8 [ 0, %.lr.ph364 ], [ %.1206, %.thread329 ] ; 2 uses
  %.3215358 = phi i32 [ %.0212, %.lr.ph364 ], [ %.4216, %.thread329 ] ; 2 uses
  %.5222357 = phi i32 [ %.2219, %.lr.ph364 ], [ %.7, %.thread329 ] ; 2 uses
  %.4227356 = phi i32 [ %.0223, %.lr.ph364 ], [ %.7230, %.thread329 ] ; 2 uses
  %.3234355 = phi i32 [ %.0231, %.lr.ph364 ], [ %.5236, %.thread329 ] ; 2 uses
  call fastcc void @_ZL18getPixelColorRGBA8PhS_S_S_PKhmPK16LodePNGColorMode(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %1, i64 noundef %.4363, ptr noundef nonnull %4)
  %.not269 = icmp ne i64 %.4363, 0
  %i.ej = load i8, ptr %i.i, align 1              ; 12 uses
  %i.ek = icmp eq i8 %i.ej, %.0205359
  %or.cond301 = select i1 %.not269, i1 %i.ek, i1 false
  %i.el = load i8, ptr %i.j, align 1              ; 9 uses
  %i.em = icmp eq i8 %i.el, %.0203360
  %or.cond303 = select i1 %or.cond301, i1 %i.em, i1 false
  %i.en = load i8, ptr %i.k, align 1              ; 9 uses
  %i.eo = icmp eq i8 %i.en, %.0201361
  %or.cond305 = select i1 %or.cond303, i1 %i.eo, i1 false
  %i.ep = load i8, ptr %i.l, align 1              ; 7 uses
  %i.eq = icmp eq i8 %i.ep, %.0199362
  %or.cond307 = select i1 %or.cond305, i1 %i.eq, i1 false
  br i1 %or.cond307, label %.thread329, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not270 = icmp eq i32 %.3215358, 0
  %.pr.pre = load i32, ptr %i.aj, align 8, !tbaa !133 ; 4 uses
  %i.er = icmp ult i32 %.pr.pre, 8
  %or.cond392 = select i1 %.not270, i1 %i.er, i1 false
  br i1 %or.cond392, label %bb.aj, label %thread-pre-split

bb.aj:                                            ; preds = %bb.ai
  %i.es = add i8 %i.ej, 1
  %or.cond.i = icmp ult i8 %i.es, 2
  br i1 %or.cond.i, label %_ZL20getValueRequiredBitsh.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = urem i8 %i.ej, 17
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.al, label %_ZL20getValueRequiredBitsh.exit

bb.al:                                            ; preds = %bb.ak
  %i.ev = urem i8 %i.ej, 85
  %i.ew = icmp eq i8 %i.ev, 0
  %i.ex = select i1 %i.ew, i32 2, i32 4
  br label %_ZL20getValueRequiredBitsh.exit

_ZL20getValueRequiredBitsh.exit:                  ; preds = %bb.aj, %bb.ak, %bb.al
  %.0.i = phi i32 [ 1, %bb.aj ], [ %i.ex, %bb.al ], [ 8, %bb.ak ] ; 3 uses
  %i.ey = icmp samesign ugt i32 %.0.i, %.pr.pre
  br i1 %i.ey, label %bb.am, label %thread-pre-split

bb.am:                                            ; preds = %_ZL20getValueRequiredBitsh.exit
  store i32 %.0.i, ptr %i.aj, align 8, !tbaa !133
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZL20getValueRequiredBitsh.exit, %bb.ai, %bb.am
  %i.ez = phi i32 [ %.pr.pre, %_ZL20getValueRequiredBitsh.exit ], [ %.0.i, %bb.am ], [ %.pr.pre, %bb.ai ] ; 5 uses
  %i.fa = icmp uge i32 %i.ez, %.0.i.i.i           ; 2 uses
  %i.fb = zext i1 %i.fa to i32                    ; 2 uses
  %.not271 = icmp eq i32 %.3234355, 0
  br i1 %.not271, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %thread-pre-split
  %.not272 = icmp eq i8 %i.ej, %i.el
  %.not273 = icmp eq i8 %i.ej, %i.en
  %or.cond308 = select i1 %.not272, i1 %.not273, i1 false
  br i1 %or.cond308, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 1, ptr %0, align 8, !tbaa !137
  %i.fc = icmp ult i32 %i.ez, 8
  br i1 %i.fc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 8, ptr %i.aj, align 8, !tbaa !133
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %thread-pre-split
  %i.fd = phi i32 [ %i.ez, %thread-pre-split ], [ 8, %bb.ap ], [ %i.ez, %bb.ao ], [ %i.ez, %bb.an ] ; 2 uses
  %i.fe = phi i1 [ true, %thread-pre-split ], [ true, %bb.ap ], [ true, %bb.ao ], [ false, %bb.an ]
  %.4235 = phi i32 [ 1, %thread-pre-split ], [ 1, %bb.ap ], [ 1, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %.not274 = icmp eq i32 %.4227356, 0
  br i1 %.not274, label %bb.ar, label %.thread328

bb.ar:                                            ; preds = %bb.aq
  %i.ff = load i16, ptr %i.ed, align 8, !tbaa !138
  %i.fg = zext i8 %i.ej to i16                    ; 2 uses
  %i.fh = icmp eq i16 %i.ff, %i.fg
  br i1 %i.fh, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.fi = load i16, ptr %i.ee, align 2, !tbaa !139
  %i.fj = zext i8 %i.el to i16
  %i.fk = icmp eq i16 %i.fi, %i.fj
  br i1 %i.fk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fl = load i16, ptr %i.ef, align 4, !tbaa !140
  %i.fm = zext i8 %i.en to i16
  %i.fn = icmp eq i16 %i.fl, %i.fm
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.fo = phi i1 [ false, %bb.as ], [ false, %bb.ar ], [ %i.fn, %bb.at ] ; 2 uses
  switch i8 %i.ep, label %bb.aw [
    i8 -1, label %bb.ba
    i8 0, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.fp = load i32, ptr %i.eg, align 4, !tbaa !141 ; 2 uses
  %i.fq = icmp eq i32 %i.fp, 0
  %or.cond13 = select i1 %i.fq, i1 true, i1 %i.fo
  br i1 %or.cond13, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  store i32 1, ptr %i.az, align 8, !tbaa !131
  store i32 0, ptr %i.eg, align 4, !tbaa !141
  %i.fr = icmp ult i32 %i.fd, 8
  br i1 %i.fr, label %bb.ax, label %.thread328

bb.ax:                                            ; preds = %bb.aw
  store i32 8, ptr %i.aj, align 8, !tbaa !133
  br label %.thread328

bb.ay:                                            ; preds = %bb.av
  %i.fs = load i32, ptr %i.az, align 8, !tbaa !131
  %i.ft = or i32 %i.fs, %i.fp
  %brmerge394.not = icmp eq i32 %i.ft, 0
  br i1 %brmerge394.not, label %bb.az, label %.thread328

bb.az:                                            ; preds = %bb.ay
  store i32 1, ptr %i.eg, align 4, !tbaa !141
  store i16 %i.fg, ptr %i.ed, align 8, !tbaa !138
  %i.fu = zext i8 %i.el to i16
  store i16 %i.fu, ptr %i.ee, align 2, !tbaa !139
  %i.fv = zext i8 %i.en to i16
  store i16 %i.fv, ptr %i.ef, align 4, !tbaa !140
  br label %.thread328

bb.ba:                                            ; preds = %bb.au
  %i.fw = load i32, ptr %i.eg, align 4, !tbaa !141
  %i.fx = icmp ne i32 %i.fw, 0
  %or.cond15 = select i1 %i.fx, i1 %i.fo, i1 false
  br i1 %or.cond15, label %bb.bb, label %.thread328

bb.bb:                                            ; preds = %bb.ba
  store i32 1, ptr %i.az, align 8, !tbaa !131
  store i32 0, ptr %i.eg, align 4, !tbaa !141
  %i.fy = icmp ult i32 %i.fd, 8
  br i1 %i.fy, label %bb.bc, label %.thread328

bb.bc:                                            ; preds = %bb.bb
  store i32 8, ptr %i.aj, align 8, !tbaa !133
  br label %.thread328

.thread328:                                       ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ba, %bb.bc, %bb.bb, %bb.az, %bb.aq
  %i.fz = phi i1 [ true, %bb.aq ], [ true, %bb.ax ], [ true, %bb.aw ], [ true, %bb.bc ], [ true, %bb.bb ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %bb.ay ]
  %.6229 = phi i32 [ 1, %bb.aq ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.bc ], [ 1, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %.not279 = icmp eq i32 %.5222357, 0
  br i1 %.not279, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %.thread328
  %i.ga = call fastcc noundef i32 @_ZL14color_tree_getP9ColorTreehhhh(ptr noundef nonnull readonly %5, i8 noundef zeroext %i.ej, i8 noundef zeroext %i.el, i8 noundef zeroext %i.en, i8 noundef zeroext %i.ep)
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %bb.be, label %.thread329
end_hunk_0
begin_hunk_1_@_ZL13addChunk_PLTEP8ucvectorPK16LodePNGColorMode:bb.a
  %i.p = phi ptr [ %i.o, %.thread.i.i.i ], [ %.pre.i, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %i.r = sub nsw i64 0, %i.d
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -12 ; 3 uses
  store i8 0, ptr %i.t, align 1, !tbaa !35
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -11
  store i8 0, ptr %i.u, align 1, !tbaa !35
  %i.v = lshr i64 %i.d, 8
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -10
  store i8 %i.w, ptr %i.x, align 1, !tbaa !35
  %i.y = trunc i64 %i.d to i8
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 -9
  store i8 %i.y, ptr %i.z, align 1, !tbaa !35
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -8
  store i32 1163152464, ptr %i.aa, align 1, !tbaa !35, !alias.scope !714
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !96
  %.not2331 = icmp eq i64 %i.ab, 0
  br i1 %.not2331, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.01933 = phi i64 [ 8, %.lr.ph ], [ %i.ar, %bb.f ] ; 2 uses
  %.02032 = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.f ] ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !95
  %i.ae = shl i64 %.02032, 2                      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %.01933 ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !35
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = getelementptr i8, ptr %i.ah, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !35
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !95
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ae
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.ar = add i64 %.01933, 3
  %i.as = getelementptr i8, ptr %i.ah, i64 2
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !35
  %i.at = add i64 %.02032, 1                      ; 2 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !96
  %.not23 = icmp eq i64 %i.at, %i.au
  br i1 %.not23, label %._crit_edge, label %bb.f, !llvm.loop !713

._crit_edge:                                      ; preds = %bb.f, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit
  tail call void @_Z26lodepng_chunk_generate_crcPh(ptr noundef nonnull %i.t)
  br label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread: ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %._crit_edge
  %.1 = phi i32 [ 68, %bb.a ], [ 0, %._crit_edge ], [ 83, %bb.e ], [ 77, %bb.b ], [ 77, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_tRNSP8ucvectorPK16LodePNGColorMode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !93
  switch i32 %i.a, label %.thread103 [
    i32 3, label %bb.b
    i32 0, label %bb.i
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !96   ; 3 uses
  %.not56106 = icmp eq i64 %i.c, 0
  br i1 %.not56106, label %.thread103, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.d ] ; 2 uses
  %.044108 = phi i64 [ %i.c, %.lr.ph ], [ %i.j, %bb.d ] ; 10 uses
  %i.f = shl i64 %.044108, 2
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35
  %.not57 = icmp eq i8 %i.i, -1
  br i1 %.not57, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %.044108, -1                     ; 2 uses
  %.not56 = icmp eq i64 %i.j, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not56, label %.thread103, label %bb.c, !llvm.loop !715

._crit_edge:                                      ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %i.m = add i64 %i.l, %.044108                   ; 3 uses
  %.not.i = icmp ult i64 %i.m, %i.l
  br i1 %.not.i, label %.thread103, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.n = add nuw i64 %i.m, 12                     ; 4 uses
  %i.o = icmp ult i64 %i.m, -12
  br i1 %i.o, label %bb.f, label %.thread103

bb.f:                                             ; preds = %bb.e
  store i64 %i.n, ptr %i.k, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %i.r = icmp ugt i64 %i.n, %i.q
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !54  ; 2 uses
  br i1 %i.r, label %bb.g, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit

bb.g:                                             ; preds = %bb.f
  %i.s = lshr i64 %i.q, 1
  %i.t = add i64 %i.s, %i.n                       ; 2 uses
  %i.u = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.t) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %.thread103, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.g
  store i64 %i.t, ptr %i.p, align 8, !tbaa !56
  store ptr %i.u, ptr %0, align 8, !tbaa !54
  br label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit:    ; preds = %bb.f, %.thread.i.i.i
  %i.v = phi ptr [ %i.u, %.thread.i.i.i ], [ %.pre.i, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = sub i64 0, %.044108
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12 ; 8 uses
  %i.aa = lshr i64 %.044108, 24
  %i.ab = trunc i64 %i.aa to i8
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !35
  %i.ac = lshr i64 %.044108, 16
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -11
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !35
  %i.af = lshr i64 %.044108, 8
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds i8, ptr %i.y, i64 -10
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !35
  %i.ai = trunc i64 %.044108 to i8
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 -9
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !35
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 -8
  store i32 1397641844, ptr %i.ak, align 1, !tbaa !35, !alias.scope !727
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %xtraiter = and i64 %.044108, 3                 ; 3 uses
  %i.am = sub i64 %indvar, %i.c
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.epil.preheader, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new: ; preds = %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit
  %unroll_iter = and i64 %.044108, -4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new
  %.146111 = phi i64 [ 0, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new ], [ %i.bt, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.new ], [ %niter.next.3, %bb.h ]
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.ap = shl i64 %.146111, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = getelementptr i8, ptr %i.z, i64 %.146111
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store i8 %i.as, ptr %i.au, align 1, !tbaa !35
  %i.av = or disjoint i64 %.146111, 1             ; 2 uses
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.ax = shl i64 %i.av, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !35
  %i.bb = getelementptr i8, ptr %i.z, i64 %i.av
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !35
  %i.bd = or disjoint i64 %.146111, 2             ; 2 uses
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.bf = shl i64 %i.bd, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !35
  %i.bj = getelementptr i8, ptr %i.z, i64 %i.bd
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !35
  %i.bl = or disjoint i64 %.146111, 3             ; 2 uses
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.bn = shl i64 %i.bl, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  %i.br = getelementptr i8, ptr %i.z, i64 %i.bl
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !35
  %i.bt = add nuw i64 %.146111, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread99.loopexit.unr-lcssa, label %bb.h, !llvm.loop !719

bb.i:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !97
  %.not54 = icmp eq i32 %i.bv, 0
  br i1 %.not54, label %.thread103, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !55 ; 4 uses
  %.not.i62 = icmp ugt i64 %i.bx, -3
  br i1 %.not.i62, label %.thread103, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = add nuw i64 %i.bx, 14                   ; 3 uses
  %i.bz = icmp ult i64 %i.bx, -14
  br i1 %i.bz, label %bb.l, label %.thread103

bb.l:                                             ; preds = %bb.k
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !55
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !56 ; 2 uses
  %i.cc = icmp ugt i64 %i.by, %i.cb
  %.pre.i64 = load ptr, ptr %0, align 8, !tbaa !54 ; 2 uses
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = add i64 %i.cd, %i.by                    ; 2 uses
  %i.cf = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i64, i64 noundef %i.ce) #32 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i65, label %.thread103, label %.thread.i.i.i66

.thread.i.i.i66:                                  ; preds = %bb.m
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !56
  store ptr %i.cf, ptr %0, align 8, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %.thread.i.i.i66, %bb.l
  %i.cg = phi ptr [ %i.cf, %.thread.i.i.i66 ], [ %.pre.i64, %bb.l ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.bx ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 2>, ptr %i.ch, align 1, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1397641844, ptr %i.ci, align 1, !tbaa !35, !alias.scope !728
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !123
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !35
  %i.co = load i32, ptr %i.cj, align 4, !tbaa !123
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !35
  br label %.thread99

bb.o:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !97
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %.thread103, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !55 ; 4 uses
  %.not.i68 = icmp ugt i64 %i.cu, -7
  br i1 %.not.i68, label %.thread103, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = add nuw i64 %i.cu, 18                   ; 3 uses
  %i.cw = icmp ult i64 %i.cu, -18
  br i1 %i.cw, label %bb.r, label %.thread103

bb.r:                                             ; preds = %bb.q
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !55
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !56 ; 2 uses
  %i.cz = icmp ugt i64 %i.cv, %i.cy
  %.pre.i70 = load ptr, ptr %0, align 8, !tbaa !54 ; 2 uses
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = lshr i64 %i.cy, 1
  %i.db = add i64 %i.da, %i.cv                    ; 2 uses
  %i.dc = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i70, i64 noundef %i.db) #32 ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i71, label %.thread103, label %.thread.i.i.i72

.thread.i.i.i72:                                  ; preds = %bb.s
  store i64 %i.db, ptr %i.cx, align 8, !tbaa !56
  store ptr %i.dc, ptr %0, align 8, !tbaa !54
  br label %bb.t

bb.t:                                             ; preds = %.thread.i.i.i72, %bb.r
  %i.dd = phi ptr [ %i.dc, %.thread.i.i.i72 ], [ %.pre.i70, %bb.r ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cu ; 9 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 6>, ptr %i.de, align 1, !tbaa !35
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 1397641844, ptr %i.df, align 1, !tbaa !35, !alias.scope !729
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !123
  %i.di = lshr i32 %i.dh, 8
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !35
  %i.dl = load i32, ptr %i.dg, align 4, !tbaa !123
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 9
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !124
  %i.dq = lshr i32 %i.dp, 8
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 10
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !35
  %i.dt = load i32, ptr %i.do, align 8, !tbaa !124
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 11
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !35
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !125
  %i.dy = lshr i32 %i.dx, 8
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !35
  %i.eb = load i32, ptr %i.dw, align 4, !tbaa !125
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 13
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !35
  br label %.thread99

.thread99.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread99, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread99.loopexit.unr-lcssa, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit
  %.146111.epil.init = phi i64 [ 0, %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit ], [ %i.bt, %.thread99.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %.146111.epil = phi i64 [ %.146111.epil.init, %.epil.preheader ], [ %i.el, %bb.u ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.ee = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.ef = shl i64 %.146111.epil, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !35
  %i.ej = getelementptr i8, ptr %i.z, i64 %.146111.epil
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  store i8 %i.ei, ptr %i.ek, align 1, !tbaa !35
  %i.el = add nuw i64 %.146111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread99, label %bb.u, !llvm.loop !726

.thread99:                                        ; preds = %.thread99.loopexit.unr-lcssa, %bb.u, %bb.t, %bb.n
  %.1102 = phi ptr [ %i.ch, %bb.n ], [ %i.de, %bb.t ], [ %i.z, %bb.u ], [ %i.z, %.thread99.loopexit.unr-lcssa ]
  tail call void @_Z26lodepng_chunk_generate_crcPh(ptr noundef nonnull %.1102)
  br label %.thread103

.thread103:                                       ; preds = %bb.d, %bb.b, %bb.o, %bb.i, %bb.a, %bb.s, %bb.p, %bb.q, %bb.m, %bb.j, %bb.k, %bb.g, %._crit_edge, %bb.e, %.thread99
  %.5 = phi i32 [ 77, %bb.k ], [ 77, %bb.q ], [ 0, %bb.o ], [ 0, %.thread99 ], [ 83, %bb.g ], [ 77, %._crit_edge ], [ 77, %bb.e ], [ 83, %bb.m ], [ 77, %bb.j ], [ 83, %bb.s ], [ 77, %bb.p ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL13addChunk_bKGDP8ucvectorPK11LodePNGInfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !148
  switch i32 %i.b, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread [
    i32 0, label %bb.b
    i32 4, label %bb.b
    i32 2, label %bb.g
    i32 6, label %bb.g
    i32 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55   ; 4 uses
  %.not.i = icmp ugt i64 %i.d, -3
  br i1 %.not.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.d, 14                     ; 3 uses
  %i.f = icmp ult i64 %i.d, -14
  br i1 %i.f, label %bb.d, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

bb.d:                                             ; preds = %bb.c
  store i64 %i.e, ptr %i.c, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !54  ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i64 %i.h, 1
  %i.k = add i64 %i.j, %i.e                       ; 2 uses
  %i.l = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.k) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.e
  store i64 %i.k, ptr %i.g, align 8, !tbaa !56
  store ptr %i.l, ptr %0, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i, %bb.d
  %i.m = phi ptr [ %i.l, %.thread.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.d ; 5 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 2>, ptr %i.n, align 1, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 1145523042, ptr %i.o, align 1, !tbaa !35, !alias.scope !739
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !161
  %i.r = lshr i32 %i.q, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %i.s, ptr %i.t, align 1, !tbaa !35
  %i.u = load i32, ptr %i.p, align 4, !tbaa !161
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 %i.v, ptr %i.w, align 1, !tbaa !35
  br label %bb.q

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !55   ; 4 uses
  %.not.i36 = icmp ugt i64 %i.y, -7
  br i1 %.not.i36, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw i64 %i.y, 18                     ; 3 uses
  %i.aa = icmp ult i64 %i.y, -18
  br i1 %i.aa, label %bb.i, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

bb.i:                                             ; preds = %bb.h
  store i64 %i.z, ptr %i.x, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !56 ; 2 uses
  %i.ad = icmp ugt i64 %i.z, %i.ac
  %.pre.i38 = load ptr, ptr %0, align 8, !tbaa !54 ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = lshr i64 %i.ac, 1
  %i.af = add i64 %i.ae, %i.z                     ; 2 uses
  %i.ag = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i38, i64 noundef %i.af) #32 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i39, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %.thread.i.i.i40

.thread.i.i.i40:                                  ; preds = %bb.j
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !56
  store ptr %i.ag, ptr %0, align 8, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %.thread.i.i.i40, %bb.i
  %i.ah = phi ptr [ %i.ag, %.thread.i.i.i40 ], [ %.pre.i38, %bb.i ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.y ; 9 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 6>, ptr %i.ai, align 1, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1145523042, ptr %i.aj, align 1, !tbaa !35, !alias.scope !740
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !161
  %i.am = lshr i32 %i.al, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !35
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !161
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !160
  %i.au = lshr i32 %i.at, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !35
  %i.ax = load i32, ptr %i.as, align 8, !tbaa !160
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !159
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !35
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !159
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 13
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !35
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !55 ; 4 uses
  %.not.i42 = icmp eq i64 %i.bj, -1
  br i1 %.not.i42, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = add nuw i64 %i.bj, 13                   ; 3 uses
  %i.bl = icmp ult i64 %i.bj, -13
  br i1 %i.bl, label %bb.n, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

bb.n:                                             ; preds = %bb.m
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !55
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !56 ; 2 uses
  %i.bo = icmp ugt i64 %i.bk, %i.bn
  %.pre.i44 = load ptr, ptr %0, align 8, !tbaa !54 ; 2 uses
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = lshr i64 %i.bn, 1
  %i.bq = add i64 %i.bp, %i.bk                    ; 2 uses
  %i.br = tail call noalias noundef ptr @realloc(ptr noundef %.pre.i44, i64 noundef %i.bq) #32 ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i45, label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread, label %.thread.i.i.i46

.thread.i.i.i46:                                  ; preds = %bb.o
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !56
  store ptr %i.br, ptr %0, align 8, !tbaa !54
  br label %bb.p

bb.p:                                             ; preds = %.thread.i.i.i46, %bb.n
  %i.bs = phi ptr [ %i.br, %.thread.i.i.i46 ], [ %.pre.i44, %bb.n ]
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bj ; 4 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.bt, align 1, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 1145523042, ptr %i.bu, align 1, !tbaa !35, !alias.scope !741
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !161
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.k, %bb.p
  %.0.ph = phi ptr [ %i.bt, %bb.p ], [ %i.ai, %bb.k ], [ %i.n, %bb.f ]
  tail call void @_Z26lodepng_chunk_generate_crcPh(ptr noundef nonnull %.0.ph)
  br label %_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread

_ZL18lodepng_chunk_initPPhP8ucvectormPKc.exit.thread: ; preds = %bb.o, %bb.l, %bb.m, %bb.j, %bb.g, %bb.h, %bb.e, %bb.b, %bb.c, %bb.a, %bb.q
  %.3 = phi i32 [ 77, %bb.h ], [ 0, %bb.a ], [ 77, %bb.c ], [ 0, %bb.q ], [ 83, %bb.e ], [ 77, %bb.b ], [ 83, %bb.j ], [ 77, %bb.g ], [ 83, %bb.o ], [ 77, %bb.l ], [ 77, %bb.m ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
end_hunk_1
