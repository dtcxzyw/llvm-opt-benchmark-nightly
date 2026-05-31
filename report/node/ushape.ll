inline.NumInlined: 38
inline.NumDeleted: 17
begin_hunk_0_@u_shapeArabic_78:bb.a
  %i.at = select i1 %i.ai, i32 0, i32 %i.as
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = sext i32 %i.aj to i64                   ; 3 uses
  br i1 %i.ar, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.aw = sext i32 %i.al to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.aa
  %indvars.iv411 = phi i64 [ %indvars.iv.next412, %bb.aa ], [ %i.au, %.lr.ph ] ; 2 uses
  %.0283393.us = phi i32 [ %.1284.us, %bb.aa ], [ 0, %.lr.ph ] ; 2 uses
  %.0285392.us = phi i16 [ %.1286.us, %bb.aa ], [ 0, %.lr.ph ]
  %.0289391.us = phi i16 [ %.1290.us, %bb.aa ], [ 0, %.lr.ph ] ; 2 uses
  %.0291390.us = phi i32 [ %.1292.us, %bb.aa ], [ 1, %.lr.ph ]
  %.0296389.us = phi i32 [ %.1297.us, %bb.aa ], [ %i.al, %.lr.ph ] ; 3 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv411
  %i.ay = load i16, ptr %i.ax, align 2            ; 4 uses
  %i.az = tail call fastcc noundef zeroext i16 @_ZL7getLinkDs(i16 noundef zeroext %i.ay) ; 2 uses
  %i.ba = or i16 %i.az, %.0285392.us
  %i.bb = and i16 %i.ba, 192
  %i.bc = icmp eq i16 %i.bb, 192
  %i.bd = icmp ne i32 %.0291390.us, 0
  %or.cond8.us = and i1 %i.bd, %i.bc
  br i1 %or.cond8.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.us
  %i.be = add nsw i32 %.0296389.us, %i.aj         ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bf
  store i16 %i.ay, ptr %i.bg, align 2
  %i.bh = add nsw i32 %.0283393.us, 1
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.split.us
  %.0289..us = tail call i16 @llvm.umin.i16(i16 %.0289391.us, i16 %i.ay)
  %i.bi = add i16 %.0289..us, -2542               ; 2 uses
  %i.bj = sext i32 %.0296389.us to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bj
  store i16 %i.bi, ptr %i.bk, align 2
  %i.bl = tail call fastcc noundef zeroext i16 @_ZL7getLinkDs(i16 noundef zeroext %i.bi)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1297.us = phi i32 [ %.0296389.us, %bb.z ], [ %i.be, %bb.y ] ; 2 uses
  %.1292.us = phi i32 [ 0, %bb.z ], [ 1, %bb.y ]
  %.1290.us = phi i16 [ %.0289391.us, %bb.z ], [ %i.ay, %bb.y ]
  %.1286.us = phi i16 [ %i.bl, %bb.z ], [ %i.az, %bb.y ]
  %.1284.us = phi i32 [ %.0283393.us, %bb.z ], [ %i.bh, %bb.y ] ; 2 uses
  %indvars.iv.next412 = add nsw i64 %indvars.iv411, %i.av ; 2 uses
  %i.bm = trunc nsw i64 %indvars.iv.next412 to i32
  %.not335.us = icmp eq i32 %i.am, %i.bm
  br i1 %.not335.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !5

.thread:                                          ; preds = %bb.x
  store i32 7, ptr %5, align 4
  br label %.thread380

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv406 = phi i64 [ %i.aw, %.lr.ph.split.preheader ], [ %indvars.iv.next407, %.lr.ph.split ]
  %indvars.iv = phi i64 [ %i.au, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %.0283393 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %i.bq, %.lr.ph.split ]
  %i.bn = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv
  %i.bo = load i16, ptr %i.bn, align 2
  %indvars.iv.next407 = add nsw i64 %indvars.iv406, %i.av ; 3 uses
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %indvars.iv.next407
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = add nuw nsw i32 %.0283393, 1            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.av ; 2 uses
  %i.br = trunc nsw i64 %indvars.iv.next to i32
  %.not335 = icmp eq i32 %i.am, %i.br
  br i1 %.not335, label %._crit_edge.loopexit404, label %.lr.ph.split, !llvm.loop !5

._crit_edge.loopexit404:                          ; preds = %.lr.ph.split
  %i.bs = trunc nsw i64 %indvars.iv.next407 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %._crit_edge.loopexit404
  %.0296.lcssa = phi i32 [ %i.bs, %._crit_edge.loopexit404 ], [ %.1297.us, %bb.aa ]
  %.0283.lcssa = phi i32 [ %i.bq, %._crit_edge.loopexit404 ], [ %.1284.us, %bb.aa ]
  %i.bt = select i1 %i.ai, i32 0, i32 %.0296.lcssa
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bu
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.w
  %.0307 = phi ptr [ %i.ap, %._crit_edge ], [ null, %bb.w ] ; 6 uses
  %.2300 = phi i32 [ %.0283.lcssa, %._crit_edge ], [ %.0298, %bb.w ] ; 13 uses
  %.1294 = phi ptr [ %i.bv, %._crit_edge ], [ %0, %bb.w ] ; 2 uses
  %i.bw = icmp eq i32 %i.l, 524288
  %or.cond363 = or i1 %.not324, %i.bw
  br i1 %or.cond363, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bx = tail call fastcc noundef i32 @_ZL13calculateSizePKDsiij(ptr noundef %.1294, i32 noundef %.2300, i32 noundef %4)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0304 = phi i32 [ %i.bx, %bb.ac ], [ %.2300, %bb.ab ] ; 4 uses
  %i.by = icmp sgt i32 %.0304, %3
  br i1 %i.by, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  store i32 15, ptr %5, align 4
  %.not343 = icmp eq ptr %.0307, null
  br i1 %.not343, label %.thread380, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @uprv_free_78(ptr noundef nonnull %.0307) #10
  br label %.thread380

bb.ag:                                            ; preds = %bb.ad
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.2300, i32 %.0304) ; 3 uses
  %i.bz = icmp slt i32 %spec.select, 301
  br i1 %i.bz, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = shl nuw nsw i32 %spec.select, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cb) #11 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  store i32 7, ptr %5, align 4
  %.not337 = icmp eq ptr %.0307, null
  br i1 %.not337, label %.thread380, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @uprv_free_78(ptr noundef nonnull %.0307) #10
  br label %.thread380

bb.ak:                                            ; preds = %bb.ag, %bb.ah
  %.0308 = phi ptr [ %i.cc, %bb.ah ], [ %i.a, %bb.ag ] ; 16 uses
  %.2306 = phi i32 [ %spec.select, %bb.ah ], [ 300, %bb.ag ] ; 2 uses
  %i.ce = call ptr @u_memcpy_78(ptr noundef nonnull %.0308, ptr noundef %.1294, i32 noundef %.2300) #10 ; 0 uses
  %.not338 = icmp eq ptr %.0307, null
  br i1 %.not338, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @uprv_free_78(ptr noundef nonnull %.0307) #10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cf = icmp slt i32 %.2300, %.2306
  br i1 %i.cf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cg = sext i32 %.2300 to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %.0308, i64 %i.cg
  %i.ci = sub nsw i32 %.2306, %.2300
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = zext nneg i32 %i.cj to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ch, i8 0, i64 %i.ck, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cl = and i32 %4, 4
  %i.cm = icmp eq i32 %i.cl, 0                    ; 2 uses
  br i1 %i.cm, label %bb.ap, label %_ZL12invertBufferPDsijii.exit

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @_ZL11countSpacesPDsijPiS0_(ptr noundef %.0308, i32 noundef %.2300, ptr noundef %i.b, ptr noundef %i.c)
  %i.cn = load i32, ptr %i.b, align 4             ; 2 uses
  %i.co = load i32, ptr %i.c, align 4
  %i.cp = xor i32 %i.co, -1
  %i.cq = add i32 %.2300, %i.cp                   ; 2 uses
  %i.cr = icmp slt i32 %i.cn, %i.cq
  br i1 %i.cr, label %.lr.ph.preheader.i, label %_ZL12invertBufferPDsijii.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.ap
  %i.cs = sext i32 %i.cq to i64
  %i.ct = sext i32 %i.cn to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv18.i = phi i64 [ %i.ct, %.lr.ph.preheader.i ], [ %indvars.iv.next19.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.cs, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.cu = getelementptr inbounds [2 x i8], ptr %.0308, i64 %indvars.iv18.i ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = getelementptr inbounds [2 x i8], ptr %.0308, i64 %indvars.iv.i ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2
  store i16 %i.cx, ptr %i.cu, align 2
  store i16 %i.cv, ptr %i.cw, align 2
  %indvars.iv.next19.i = add nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cy = icmp slt i64 %indvars.iv.next19.i, %indvars.iv.next.i
  br i1 %i.cy, label %.lr.ph.i, label %_ZL12invertBufferPDsijii.exit.thread, !llvm.loop !7

_ZL12invertBufferPDsijii.exit:                    ; preds = %bb.ao
  %i.cz = and i32 %4, 67108864
  %.not340 = icmp eq i32 %i.cz, 0
  br i1 %.not340, label %_ZL12invertBufferPDsijii.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZL12invertBufferPDsijii.exit
  br label %_ZL12invertBufferPDsijii.exit.thread

_ZL12invertBufferPDsijii.exit.thread:             ; preds = %.lr.ph.i, %bb.ap, %bb.aq, %_ZL12invertBufferPDsijii.exit
  %.sroa.13.0 = phi i32 [ 1, %bb.aq ], [ 0, %_ZL12invertBufferPDsijii.exit ], [ 0, %bb.ap ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.da = phi <4 x i32> [ <i32 2, i32 3, i32 393216, i32 262144>, %bb.aq ], [ <i32 3, i32 2, i32 262144, i32 393216>, %_ZL12invertBufferPDsijii.exit ], [ <i32 3, i32 2, i32 262144, i32 393216>, %bb.ap ], [ <i32 3, i32 2, i32 262144, i32 393216>, %.lr.ph.i ] ; 4 uses
  %10 = lshr exact i32 %i.m, 3                    ; 2 uses
  switch i32 %10, label %default.unreachable [
    i32 1, label %bb.ar
    i32 3, label %bb.av
    i32 2, label %bb.aw
    i32 0, label %bb.ax
  ]

bb.ar:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread
  switch i32 %i.l, label %bb.as [
    i32 786432, label %bb.at
    i32 0, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  store i16 %., ptr %6, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store <4 x i32> %i.da, ptr %.sroa.994.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4
  %i.db = call fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef %.0308, i32 noundef %.2300, i32 noundef %4, ptr noundef %5, i32 noundef 2, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %6)
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar, %bb.ar
  store i16 %., ptr %7, align 8
  %.sroa.9.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx88, align 2
  %.sroa.994.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store <4 x i32> %i.da, ptr %.sroa.994.0..sroa_idx96, align 4
  %.sroa.13.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx124, align 4
  %i.dc = call fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef %.0308, i32 noundef %.2300, i32 noundef %4, ptr noundef %5, i32 noundef 1, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %7) ; 3 uses
  %i.dd = icmp eq i32 %i.l, 786432
  br i1 %i.dd, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.de = call fastcc noundef i32 @_ZL25handleTashkeelWithTatweelPDsiijP10UErrorCode(ptr noundef %.0308, i32 noundef %i.dc) ; 0 uses
  br label %bb.ax

bb.av:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread
  store i16 %., ptr %8, align 8
  %.sroa.9.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx90, align 2
  %.sroa.994.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store <4 x i32> %i.da, ptr %.sroa.994.0..sroa_idx98, align 4
  %.sroa.13.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx126, align 4
  %i.df = call fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef %.0308, i32 noundef %.2300, i32 noundef %4, ptr noundef %5, i32 noundef 0, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %8)
  br label %bb.ax

bb.aw:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread
  store i16 %., ptr %9, align 8
  %.sroa.9.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx92, align 2
  %.sroa.994.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store <4 x i32> %i.da, ptr %.sroa.994.0..sroa_idx100, align 4
  %.sroa.13.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx128, align 4
  %i.dg = call fastcc noundef i32 @_ZL14deShapeUnicodePDsiijP10UErrorCode15uShapeVariables(ptr noundef %.0308, i32 noundef %.2300, i32 noundef %4, ptr noundef %5, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %9)
  br label %bb.ax

default.unreachable:                              ; preds = %_ZL12invertBufferPDsijii.exit.thread
  unreachable

bb.ax:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread, %bb.as, %bb.au, %bb.at, %bb.aw, %bb.av
  %.0301 = phi i32 [ %i.db, %bb.as ], [ %i.dc, %bb.au ], [ %i.dc, %bb.at ], [ %i.df, %bb.av ], [ %i.dg, %bb.aw ], [ %10, %_ZL12invertBufferPDsijii.exit.thread ] ; 6 uses
  br i1 %i.cm, label %bb.ay, label %_ZL12invertBufferPDsijii.exit375

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @_ZL11countSpacesPDsijPiS0_(ptr noundef %.0308, i32 noundef %.0301, ptr noundef %i.b, ptr noundef %i.c)
  %i.dh = load i32, ptr %i.b, align 4             ; 2 uses
  %i.di = load i32, ptr %i.c, align 4
  %i.dj = xor i32 %i.di, -1
  %i.dk = add i32 %.0301, %i.dj                   ; 2 uses
  %i.dl = icmp slt i32 %i.dh, %i.dk
  br i1 %i.dl, label %.lr.ph.preheader.i369, label %_ZL12invertBufferPDsijii.exit375

.lr.ph.preheader.i369:                            ; preds = %bb.ay
  %i.dm = sext i32 %i.dk to i64
  %i.dn = sext i32 %i.dh to i64
  br label %.lr.ph.i370

.lr.ph.i370:                                      ; preds = %.lr.ph.i370, %.lr.ph.preheader.i369
  %indvars.iv18.i371 = phi i64 [ %i.dn, %.lr.ph.preheader.i369 ], [ %indvars.iv.next19.i373, %.lr.ph.i370 ] ; 2 uses
  %indvars.iv.i372 = phi i64 [ %i.dm, %.lr.ph.preheader.i369 ], [ %indvars.iv.next.i374, %.lr.ph.i370 ] ; 2 uses
  %i.do = getelementptr inbounds [2 x i8], ptr %.0308, i64 %indvars.iv18.i371 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = getelementptr inbounds [2 x i8], ptr %.0308, i64 %indvars.iv.i372 ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2
  store i16 %i.dr, ptr %i.do, align 2
  store i16 %i.dp, ptr %i.dq, align 2
  %indvars.iv.next19.i373 = add nsw i64 %indvars.iv18.i371, 1 ; 2 uses
  %indvars.iv.next.i374 = add nsw i64 %indvars.iv.i372, -1 ; 2 uses
  %i.ds = icmp slt i64 %indvars.iv.next19.i373, %indvars.iv.next.i374
  br i1 %i.ds, label %.lr.ph.i370, label %_ZL12invertBufferPDsijii.exit375, !llvm.loop !7

_ZL12invertBufferPDsijii.exit375:                 ; preds = %.lr.ph.i370, %bb.ay, %bb.ax
  %i.dt = call i32 @uprv_min_78(i32 noundef %.0301, i32 noundef %3) #10
  %i.du = call ptr @u_memcpy_78(ptr noundef %2, ptr noundef nonnull %.0308, i32 noundef %i.dt) #10 ; 0 uses
  %.not342 = icmp eq ptr %.0308, %i.a
  br i1 %.not342, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZL12invertBufferPDsijii.exit375
  call void @uprv_free_78(ptr noundef nonnull %.0308) #10
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZL12invertBufferPDsijii.exit375
  %i.dv = icmp sgt i32 %.0301, %3
  br i1 %i.dv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 15, ptr %5, align 4
  br label %.thread380

.thread380:                                       ; preds = %.thread, %bb.bb, %bb.ai, %bb.ae, %bb.af, %bb.aj
  %.2.ph = phi i32 [ 0, %bb.aj ], [ %.0304, %bb.af ], [ %.0304, %bb.ae ], [ 0, %bb.ai ], [ %.0301, %bb.bb ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bo

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bg

bb.bd:                                            ; preds = %bb.v
  %i.dw = icmp samesign ult i32 %3, %.0298
  br i1 %i.dw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 15, ptr %5, align 4
  br label %bb.bo

bb.bf:                                            ; preds = %bb.bd
  %i.dx = tail call ptr @u_memcpy_78(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %.0298) #10 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %bb.bf
  %.2303 = phi i32 [ %.0301, %bb.bc ], [ %.0298, %bb.bf ] ; 9 uses
  %.not344 = icmp eq i32 %i.q, 0
  br i1 %.not344, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dy = and i32 %4, 256
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %.368 = select i1 %i.dz, i16 1632, i16 1776     ; 3 uses
  %i.ea = add nsw i32 %i.q, -32
  %i.eb = lshr exact i32 %i.ea, 5
  switch i32 %i.eb, label %.loopexit [
    i32 0, label %bb.bi
    i32 1, label %.preheader
    i32 2, label %.loopexit.sink.split
    i32 3, label %bb.bn
  ]

.preheader:                                       ; preds = %bb.bh
  %i.ec = icmp sgt i32 %.2303, 0
  br i1 %i.ec, label %.lr.ph397, label %.loopexit

.lr.ph397:                                        ; preds = %.preheader
  %i.ed = zext nneg i16 %.368 to i32              ; 2 uses
  %.neg = select i1 %i.dz, i16 -1584, i16 -1728   ; 9 uses
  %wide.trip.count = zext nneg i32 %.2303 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %.2303, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph397
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue450, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue450 ] ; 9 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ee, align 2 ; 9 uses
  %i.ef = zext <8 x i16> %wide.load to <8 x i32>
  %i.eg = sub nsw <8 x i32> %i.ef, %broadcast.splat
  %i.eh = icmp ult <8 x i32> %i.eg, splat (i32 10) ; 8 uses
  %i.ei = extractelement <8 x i1> %i.eh, i64 0
  br i1 %i.ei, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ej = extractelement <8 x i16> %wide.load, i64 0
  %i.ek = add i16 %.neg, %i.ej
  store i16 %i.ek, ptr %i.ee, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.el = extractelement <8 x i1> %i.eh, i64 1
  br i1 %i.el, label %pred.store.if437, label %pred.store.continue438

pred.store.if437:                                 ; preds = %pred.store.continue
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.eo = extractelement <8 x i16> %wide.load, i64 1
  %i.ep = add i16 %.neg, %i.eo
  store i16 %i.ep, ptr %i.en, align 2
  br label %pred.store.continue438

pred.store.continue438:                           ; preds = %pred.store.if437, %pred.store.continue
  %i.eq = extractelement <8 x i1> %i.eh, i64 2
  br i1 %i.eq, label %pred.store.if439, label %pred.store.continue440

pred.store.if439:                                 ; preds = %pred.store.continue438
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = extractelement <8 x i16> %wide.load, i64 2
  %i.eu = add i16 %.neg, %i.et
  store i16 %i.eu, ptr %i.es, align 2
  br label %pred.store.continue440

pred.store.continue440:                           ; preds = %pred.store.if439, %pred.store.continue438
  %i.ev = extractelement <8 x i1> %i.eh, i64 3
  br i1 %i.ev, label %pred.store.if441, label %pred.store.continue442

pred.store.if441:                                 ; preds = %pred.store.continue440
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 6
  %i.ey = extractelement <8 x i16> %wide.load, i64 3
  %i.ez = add i16 %.neg, %i.ey
  store i16 %i.ez, ptr %i.ex, align 2
  br label %pred.store.continue442

pred.store.continue442:                           ; preds = %pred.store.if441, %pred.store.continue440
  %i.fa = extractelement <8 x i1> %i.eh, i64 4
  br i1 %i.fa, label %pred.store.if443, label %pred.store.continue444

pred.store.if443:                                 ; preds = %pred.store.continue442
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = extractelement <8 x i16> %wide.load, i64 4
  %i.fe = add i16 %.neg, %i.fd
  store i16 %i.fe, ptr %i.fc, align 2
  br label %pred.store.continue444

pred.store.continue444:                           ; preds = %pred.store.if443, %pred.store.continue442
  %i.ff = extractelement <8 x i1> %i.eh, i64 5
  br i1 %i.ff, label %pred.store.if445, label %pred.store.continue446

pred.store.if445:                                 ; preds = %pred.store.continue444
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 10
  %i.fi = extractelement <8 x i16> %wide.load, i64 5
  %i.fj = add i16 %.neg, %i.fi
  store i16 %i.fj, ptr %i.fh, align 2
  br label %pred.store.continue446

pred.store.continue446:                           ; preds = %pred.store.if445, %pred.store.continue444
  %i.fk = extractelement <8 x i1> %i.eh, i64 6
  br i1 %i.fk, label %pred.store.if447, label %pred.store.continue448

pred.store.if447:                                 ; preds = %pred.store.continue446
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fn = extractelement <8 x i16> %wide.load, i64 6
  %i.fo = add i16 %.neg, %i.fn
  store i16 %i.fo, ptr %i.fm, align 2
  br label %pred.store.continue448

pred.store.continue448:                           ; preds = %pred.store.if447, %pred.store.continue446
  %i.fp = extractelement <8 x i1> %i.eh, i64 7
  br i1 %i.fp, label %pred.store.if449, label %pred.store.continue450

end_hunk_0
