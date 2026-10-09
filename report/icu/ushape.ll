Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ushape?download=true
inline.NumInlined: 38
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@u_shapeArabic_78:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv18.i = phi i64 [ %i.ct, %.lr.ph.preheader.i ], [ %indvars.iv.next19.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.cs, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.cu = getelementptr inbounds [2 x i8], ptr %.0297, i64 %indvars.iv18.i ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !14
  %i.cw = getelementptr inbounds [2 x i8], ptr %.0297, i64 %indvars.iv.i ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !14
  store i16 %i.cx, ptr %i.cu, align 2, !tbaa !14
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !14
  %indvars.iv.next19.i = add nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cy = icmp slt i64 %indvars.iv.next19.i, %indvars.iv.next.i
  br i1 %i.cy, label %.lr.ph.i, label %_ZL12invertBufferPDsijii.exit.thread, !llvm.loop !21

_ZL12invertBufferPDsijii.exit:                    ; preds = %bb.ao
  %i.cz = and i32 %4, 67108864
  %.not340 = icmp eq i32 %i.cz, 0
  br i1 %.not340, label %_ZL12invertBufferPDsijii.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZL12invertBufferPDsijii.exit
  br label %_ZL12invertBufferPDsijii.exit.thread

_ZL12invertBufferPDsijii.exit.thread:             ; preds = %.lr.ph.i, %bb.ap, %bb.aq, %_ZL12invertBufferPDsijii.exit
  %.sroa.13.0 = phi i32 [ 1, %bb.aq ], [ 0, %_ZL12invertBufferPDsijii.exit ], [ 0, %bb.ap ], [ 0, %.lr.ph.i ] ; 4 uses
  %.sroa.12.0 = phi i32 [ 262144, %bb.aq ], [ 393216, %_ZL12invertBufferPDsijii.exit ], [ 393216, %bb.ap ], [ 393216, %.lr.ph.i ] ; 4 uses
  %.sroa.11.0 = phi i32 [ 393216, %bb.aq ], [ 262144, %_ZL12invertBufferPDsijii.exit ], [ 262144, %bb.ap ], [ 262144, %.lr.ph.i ] ; 4 uses
  %.sroa.10.0 = phi i32 [ 3, %bb.aq ], [ 2, %_ZL12invertBufferPDsijii.exit ], [ 2, %bb.ap ], [ 2, %.lr.ph.i ] ; 4 uses
  %.sroa.994.0 = phi i32 [ 2, %bb.aq ], [ 3, %_ZL12invertBufferPDsijii.exit ], [ 3, %bb.ap ], [ 3, %.lr.ph.i ] ; 4 uses
  switch i32 %i.m, label %.unreachabledefault [
    i32 8, label %bb.ar
    i32 24, label %bb.av
    i32 16, label %bb.aw
  ]

bb.ar:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread
  switch i32 %i.l, label %bb.as [
    i32 786432, label %bb.at
    i32 0, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  store i16 %., ptr %6, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.994.0, ptr %.sroa.994.0..sroa_idx, align 4, !tbaa !12
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !12
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !12
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !12
  %i.da = call fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef %.0297, i32 noundef %.2310, i32 noundef %4, ptr noundef %5, i32 noundef 2, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %6)
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar, %bb.ar
  store i16 %., ptr %7, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx88, align 2
  %.sroa.994.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.994.0, ptr %.sroa.994.0..sroa_idx96, align 4, !tbaa !12
  %.sroa.10.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx103, align 8, !tbaa !12
  %.sroa.11.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx110, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx117, align 8, !tbaa !12
  %.sroa.13.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx124, align 4, !tbaa !12
  %i.db = call fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef %.0297, i32 noundef %.2310, i32 noundef %4, ptr noundef %5, i32 noundef 1, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %7) ; 3 uses
  %i.dc = icmp eq i32 %i.l, 786432
  br i1 %i.dc, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.dd = call fastcc noundef i32 @_ZL25handleTashkeelWithTatweelPDsiijP10UErrorCode(ptr noundef %.0297, i32 noundef %i.db) ; 0 uses
  br label %bb.ax

bb.av:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread
  store i16 %., ptr %8, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx90, align 2
  %.sroa.994.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.sroa.994.0, ptr %.sroa.994.0..sroa_idx98, align 4, !tbaa !12
  %.sroa.10.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx105, align 8, !tbaa !12
  %.sroa.11.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx112, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx119, align 8, !tbaa !12
  %.sroa.13.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx126, align 4, !tbaa !12
  %i.de = call fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef %.0297, i32 noundef %.2310, i32 noundef %4, ptr noundef %5, i32 noundef 0, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %8)
  br label %bb.ax

bb.aw:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread
  store i16 %., ptr %9, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx92, align 2
  %.sroa.994.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %.sroa.994.0, ptr %.sroa.994.0..sroa_idx100, align 4, !tbaa !12
  %.sroa.10.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx107, align 8, !tbaa !12
  %.sroa.11.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx114, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx121, align 8, !tbaa !12
  %.sroa.13.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx128, align 4, !tbaa !12
  %i.df = call fastcc noundef i32 @_ZL14deShapeUnicodePDsiijP10UErrorCode15uShapeVariables(ptr noundef %.0297, i32 noundef %.2310, i32 noundef %4, ptr noundef %5, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %9)
  br label %bb.ax

.unreachabledefault:                              ; preds = %_ZL12invertBufferPDsijii.exit.thread
  unreachable

bb.ax:                                            ; preds = %bb.as, %bb.au, %bb.at, %bb.aw, %bb.av
  %.0300 = phi i32 [ %i.da, %bb.as ], [ %i.db, %bb.au ], [ %i.db, %bb.at ], [ %i.de, %bb.av ], [ %i.df, %bb.aw ] ; 6 uses
  br i1 %i.cm, label %bb.ay, label %_ZL12invertBufferPDsijii.exit374

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @_ZL11countSpacesPDsijPiS0_(ptr noundef %.0297, i32 noundef %.0300, ptr noundef %i.b, ptr noundef %i.c)
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !12
  %i.di = xor i32 %i.dh, -1
  %i.dj = add i32 %.0300, %i.di                   ; 2 uses
  %i.dk = icmp slt i32 %i.dg, %i.dj
  br i1 %i.dk, label %.lr.ph.preheader.i368, label %_ZL12invertBufferPDsijii.exit374

.lr.ph.preheader.i368:                            ; preds = %bb.ay
  %i.dl = sext i32 %i.dj to i64
  %i.dm = sext i32 %i.dg to i64
  br label %.lr.ph.i369

.lr.ph.i369:                                      ; preds = %.lr.ph.i369, %.lr.ph.preheader.i368
  %indvars.iv18.i370 = phi i64 [ %i.dm, %.lr.ph.preheader.i368 ], [ %indvars.iv.next19.i372, %.lr.ph.i369 ] ; 2 uses
  %indvars.iv.i371 = phi i64 [ %i.dl, %.lr.ph.preheader.i368 ], [ %indvars.iv.next.i373, %.lr.ph.i369 ] ; 2 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %.0297, i64 %indvars.iv18.i370 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !14
  %i.dp = getelementptr inbounds [2 x i8], ptr %.0297, i64 %indvars.iv.i371 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !14
  store i16 %i.dq, ptr %i.dn, align 2, !tbaa !14
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !14
  %indvars.iv.next19.i372 = add nsw i64 %indvars.iv18.i370, 1 ; 2 uses
  %indvars.iv.next.i373 = add nsw i64 %indvars.iv.i371, -1 ; 2 uses
  %i.dr = icmp slt i64 %indvars.iv.next19.i372, %indvars.iv.next.i373
  br i1 %i.dr, label %.lr.ph.i369, label %_ZL12invertBufferPDsijii.exit374, !llvm.loop !21

_ZL12invertBufferPDsijii.exit374:                 ; preds = %.lr.ph.i369, %bb.ay, %bb.ax
  %i.ds = call i32 @uprv_min_78(i32 noundef %.0300, i32 noundef %3)
  %i.dt = call ptr @u_memcpy_78(ptr noundef %2, ptr noundef nonnull %.0297, i32 noundef %i.ds) ; 0 uses
  %.not342 = icmp eq ptr %.0297, %i.a
  br i1 %.not342, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZL12invertBufferPDsijii.exit374
  call void @uprv_free_78(ptr noundef nonnull %.0297)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZL12invertBufferPDsijii.exit374
  %i.du = icmp sgt i32 %.0300, %3
  br i1 %i.du, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 15, ptr %5, align 4, !tbaa !11
  br label %.thread379

.thread379:                                       ; preds = %.thread, %bb.bb, %bb.ai, %bb.ae, %bb.af, %bb.aj
  %.2305.ph = phi i32 [ 0, %bb.aj ], [ %.0294, %bb.af ], [ %.0294, %bb.ae ], [ 0, %bb.ai ], [ %.0300, %bb.bb ], [ 0, %.thread ]
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
  %i.dv = icmp samesign ult i32 %3, %.0308
  br i1 %i.dv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 15, ptr %5, align 4, !tbaa !11
  br label %bb.bo

bb.bf:                                            ; preds = %bb.bd
  %i.dw = tail call ptr @u_memcpy_78(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %.0308) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %bb.bf
  %.2302 = phi i32 [ %.0300, %bb.bc ], [ %.0308, %bb.bf ] ; 9 uses
  %.not344 = icmp eq i32 %i.q, 0
  br i1 %.not344, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dx = and i32 %4, 256
  %i.dy = icmp eq i32 %i.dx, 0                    ; 2 uses
  %.367 = select i1 %i.dy, i16 1632, i16 1776     ; 3 uses
  %i.dz = lshr exact i32 %i.q, 5
  switch i32 %i.dz, label %.loopexit [
    i32 1, label %bb.bi
    i32 2, label %.preheader
    i32 3, label %.loopexit.sink.split
    i32 4, label %bb.bn
  ]

.preheader:                                       ; preds = %bb.bh
  %i.ea = icmp sgt i32 %.2302, 0
  br i1 %i.ea, label %.lr.ph396, label %.loopexit

.lr.ph396:                                        ; preds = %.preheader
  %i.eb = zext nneg i16 %.367 to i32              ; 2 uses
  %.neg = select i1 %i.dy, i16 -1584, i16 -1728   ; 9 uses
  %wide.trip.count = zext nneg i32 %.2302 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %.2302, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph396
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue449, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue449 ] ; 9 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ec, align 2, !tbaa !14 ; 9 uses
  %i.ed = zext <8 x i16> %wide.load to <8 x i32>
  %i.ee = sub nsw <8 x i32> %i.ed, %broadcast.splat
  %i.ef = icmp ult <8 x i32> %i.ee, splat (i32 10) ; 8 uses
  %i.eg = extractelement <8 x i1> %i.ef, i64 0
  br i1 %i.eg, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.eh = extractelement <8 x i16> %wide.load, i64 0
  %10 = add i16 %.neg, %i.eh
  store i16 %10, ptr %i.ec, align 2, !tbaa !14
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ei = extractelement <8 x i1> %i.ef, i64 1
  br i1 %i.ei, label %pred.store.if436, label %pred.store.continue437

pred.store.if436:                                 ; preds = %pred.store.continue
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %11 = extractelement <8 x i16> %wide.load, i64 1
  %12 = add i16 %.neg, %11
  store i16 %12, ptr %i.ek, align 2, !tbaa !14
  br label %pred.store.continue437

pred.store.continue437:                           ; preds = %pred.store.if436, %pred.store.continue
  %i.el = extractelement <8 x i1> %i.ef, i64 2
  br i1 %i.el, label %pred.store.if438, label %pred.store.continue439

pred.store.if438:                                 ; preds = %pred.store.continue437
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %13 = extractelement <8 x i16> %wide.load, i64 2
  %14 = add i16 %.neg, %13
  store i16 %14, ptr %i.en, align 2, !tbaa !14
  br label %pred.store.continue439

pred.store.continue439:                           ; preds = %pred.store.if438, %pred.store.continue437
  %i.eo = extractelement <8 x i1> %i.ef, i64 3
  br i1 %i.eo, label %pred.store.if440, label %pred.store.continue441

pred.store.if440:                                 ; preds = %pred.store.continue439
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  %15 = extractelement <8 x i16> %wide.load, i64 3
  %16 = add i16 %.neg, %15
  store i16 %16, ptr %i.eq, align 2, !tbaa !14
  br label %pred.store.continue441

pred.store.continue441:                           ; preds = %pred.store.if440, %pred.store.continue439
  %i.er = extractelement <8 x i1> %i.ef, i64 4
  br i1 %i.er, label %pred.store.if442, label %pred.store.continue443

pred.store.if442:                                 ; preds = %pred.store.continue441
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %17 = extractelement <8 x i16> %wide.load, i64 4
  %18 = add i16 %.neg, %17
  store i16 %18, ptr %i.et, align 2, !tbaa !14
  br label %pred.store.continue443

pred.store.continue443:                           ; preds = %pred.store.if442, %pred.store.continue441
  %i.eu = extractelement <8 x i1> %i.ef, i64 5
  br i1 %i.eu, label %pred.store.if444, label %pred.store.continue445

pred.store.if444:                                 ; preds = %pred.store.continue443
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 10
  %19 = extractelement <8 x i16> %wide.load, i64 5
  %20 = add i16 %.neg, %19
  store i16 %20, ptr %i.ew, align 2, !tbaa !14
  br label %pred.store.continue445

pred.store.continue445:                           ; preds = %pred.store.if444, %pred.store.continue443
  %i.ex = extractelement <8 x i1> %i.ef, i64 6
  br i1 %i.ex, label %pred.store.if446, label %pred.store.continue447

pred.store.if446:                                 ; preds = %pred.store.continue445
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %21 = extractelement <8 x i16> %wide.load, i64 6
  %22 = add i16 %.neg, %21
  store i16 %22, ptr %i.ez, align 2, !tbaa !14
  br label %pred.store.continue447

pred.store.continue447:                           ; preds = %pred.store.if446, %pred.store.continue445
  %i.fa = extractelement <8 x i1> %i.ef, i64 7
  br i1 %i.fa, label %pred.store.if448, label %pred.store.continue449

pred.store.if448:                                 ; preds = %pred.store.continue447
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 14
  %23 = extractelement <8 x i16> %wide.load, i64 7
  %24 = add i16 %.neg, %23
  store i16 %24, ptr %i.fc, align 2, !tbaa !14
  br label %pred.store.continue449

pred.store.continue449:                           ; preds = %pred.store.if448, %pred.store.continue447
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %pred.store.continue449
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph396, %middle.block
  %indvars.iv412.ph = phi i64 [ 0, %.lr.ph396 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.bi:                                            ; preds = %bb.bh
  %i.fe = add nsw i16 %.367, -48                  ; 21 uses
  %i.ff = icmp sgt i32 %.2302, 0
  br i1 %i.ff, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.bi
  %wide.trip.count418 = zext nneg i32 %.2302 to i64 ; 6 uses
  %min.iters.check451.a = icmp ult i32 %.2302, 4
  br i1 %min.iters.check451.a, label %.lr.ph399.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check452 = icmp ult i32 %.2302, 16
  br i1 %min.iters.check452, label %vec.epilog.ph, label %vector.ph453

vector.ph453:                                     ; preds = %vector.main.loop.iter.check
  %i.fg = and i64 %wide.trip.count418, 12
  %n.vec454 = and i64 %wide.trip.count418, 2147483632 ; 4 uses
  br label %vector.body455

vector.body455:                                   ; preds = %vector.ph453, %pred.store.continue490
  %index456 = phi i64 [ 0, %vector.ph453 ], [ %index.next491, %pred.store.continue490 ] ; 17 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load457.a = load <8 x i16>, ptr %i.fh, align 2, !tbaa !14 ; 9 uses
  %wide.load458 = load <8 x i16>, ptr %i.fi, align 2, !tbaa !14 ; 9 uses
  %i.fj = add <8 x i16> %wide.load457.a, splat (i16 -48)
  %i.fk = add <8 x i16> %wide.load458, splat (i16 -48)
  %i.fl = icmp ult <8 x i16> %i.fj, splat (i16 10) ; 8 uses
  %i.fm = icmp ult <8 x i16> %i.fk, splat (i16 10) ; 8 uses
  %i.fn = extractelement <8 x i1> %i.fl, i64 0
  br i1 %i.fn, label %pred.store.if459, label %pred.store.continue460

pred.store.if459:                                 ; preds = %vector.body455
  %i.fo = extractelement <8 x i16> %wide.load457.a, i64 0
  %i.fp = add nuw nsw i16 %i.fe, %i.fo
  store i16 %i.fp, ptr %i.fh, align 2, !tbaa !14
  br label %pred.store.continue460

pred.store.continue460:                           ; preds = %pred.store.if459, %vector.body455
  %i.fq = extractelement <8 x i1> %i.fl, i64 1
  br i1 %i.fq, label %pred.store.if461, label %pred.store.continue462

pred.store.if461:                                 ; preds = %pred.store.continue460
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  %i.ft = extractelement <8 x i16> %wide.load457.a, i64 1
  %i.fu = add nuw nsw i16 %i.fe, %i.ft
  store i16 %i.fu, ptr %i.fs, align 2, !tbaa !14
  br label %pred.store.continue462

pred.store.continue462:                           ; preds = %pred.store.if461, %pred.store.continue460
  %i.fv = extractelement <8 x i1> %i.fl, i64 2
  br i1 %i.fv, label %pred.store.if463, label %pred.store.continue464

pred.store.if463:                                 ; preds = %pred.store.continue462
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = extractelement <8 x i16> %wide.load457.a, i64 2
  %i.fz = add nuw nsw i16 %i.fe, %i.fy
  store i16 %i.fz, ptr %i.fx, align 2, !tbaa !14
  br label %pred.store.continue464

pred.store.continue464:                           ; preds = %pred.store.if463, %pred.store.continue462
  %i.ga = extractelement <8 x i1> %i.fl, i64 3
  br i1 %i.ga, label %pred.store.if465, label %pred.store.continue466

pred.store.if465:                                 ; preds = %pred.store.continue464
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 6
  %i.gd = extractelement <8 x i16> %wide.load457.a, i64 3
  %i.ge = add nuw nsw i16 %i.fe, %i.gd
  store i16 %i.ge, ptr %i.gc, align 2, !tbaa !14
  br label %pred.store.continue466

pred.store.continue466:                           ; preds = %pred.store.if465, %pred.store.continue464
  %i.gf = extractelement <8 x i1> %i.fl, i64 4
  br i1 %i.gf, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %pred.store.continue466
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = extractelement <8 x i16> %wide.load457.a, i64 4
  %i.gj = add nuw nsw i16 %i.fe, %i.gi
  store i16 %i.gj, ptr %i.gh, align 2, !tbaa !14
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %pred.store.continue466
  %i.gk = extractelement <8 x i1> %i.fl, i64 5
  br i1 %i.gk, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue468
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 10
  %i.gn = extractelement <8 x i16> %wide.load457.a, i64 5
  %i.go = add nuw nsw i16 %i.fe, %i.gn
  store i16 %i.go, ptr %i.gm, align 2, !tbaa !14
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue468
  %i.gp = extractelement <8 x i1> %i.fl, i64 6
  br i1 %i.gp, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  %i.gs = extractelement <8 x i16> %wide.load457.a, i64 6
  %i.gt = add nuw nsw i16 %i.fe, %i.gs
  store i16 %i.gt, ptr %i.gr, align 2, !tbaa !14
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %i.gu = extractelement <8 x i1> %i.fl, i64 7
  br i1 %i.gu, label %pred.store.if473, label %pred.store.continue474

pred.store.if473:                                 ; preds = %pred.store.continue472
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 14
  %i.gx = extractelement <8 x i16> %wide.load457.a, i64 7
  %i.gy = add nuw nsw i16 %i.fe, %i.gx
  store i16 %i.gy, ptr %i.gw, align 2, !tbaa !14
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %i.gz = extractelement <8 x i1> %i.fm, i64 0
  br i1 %i.gz, label %pred.store.if475, label %pred.store.continue476

pred.store.if475:                                 ; preds = %pred.store.continue474
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = extractelement <8 x i16> %wide.load458, i64 0
  %i.hd = add nuw nsw i16 %i.fe, %i.hc
  store i16 %i.hd, ptr %i.hb, align 2, !tbaa !14
  br label %pred.store.continue476

pred.store.continue476:                           ; preds = %pred.store.if475, %pred.store.continue474
  %i.he = extractelement <8 x i1> %i.fm, i64 1
  br i1 %i.he, label %pred.store.if477, label %pred.store.continue478

pred.store.if477:                                 ; preds = %pred.store.continue476
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 18
  %i.hh = extractelement <8 x i16> %wide.load458, i64 1
  %i.hi = add nuw nsw i16 %i.fe, %i.hh
  store i16 %i.hi, ptr %i.hg, align 2, !tbaa !14
  br label %pred.store.continue478

pred.store.continue478:                           ; preds = %pred.store.if477, %pred.store.continue476
  %i.hj = extractelement <8 x i1> %i.fm, i64 2
  br i1 %i.hj, label %pred.store.if479, label %pred.store.continue480

pred.store.if479:                                 ; preds = %pred.store.continue478
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 20
  %i.hm = extractelement <8 x i16> %wide.load458, i64 2
  %i.hn = add nuw nsw i16 %i.fe, %i.hm
  store i16 %i.hn, ptr %i.hl, align 2, !tbaa !14
  br label %pred.store.continue480

pred.store.continue480:                           ; preds = %pred.store.if479, %pred.store.continue478
  %i.ho = extractelement <8 x i1> %i.fm, i64 3
  br i1 %i.ho, label %pred.store.if481, label %pred.store.continue482

pred.store.if481:                                 ; preds = %pred.store.continue480
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 22
  %i.hr = extractelement <8 x i16> %wide.load458, i64 3
  %i.hs = add nuw nsw i16 %i.fe, %i.hr
  store i16 %i.hs, ptr %i.hq, align 2, !tbaa !14
  br label %pred.store.continue482

pred.store.continue482:                           ; preds = %pred.store.if481, %pred.store.continue480
  %i.ht = extractelement <8 x i1> %i.fm, i64 4
  br i1 %i.ht, label %pred.store.if483, label %pred.store.continue484

pred.store.if483:                                 ; preds = %pred.store.continue482
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = extractelement <8 x i16> %wide.load458, i64 4
  %i.hx = add nuw nsw i16 %i.fe, %i.hw
  store i16 %i.hx, ptr %i.hv, align 2, !tbaa !14
  br label %pred.store.continue484

pred.store.continue484:                           ; preds = %pred.store.if483, %pred.store.continue482
  %i.hy = extractelement <8 x i1> %i.fm, i64 5
  br i1 %i.hy, label %pred.store.if485, label %pred.store.continue486

pred.store.if485:                                 ; preds = %pred.store.continue484
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 26
  %i.ib = extractelement <8 x i16> %wide.load458, i64 5
  %i.ic = add nuw nsw i16 %i.fe, %i.ib
  store i16 %i.ic, ptr %i.ia, align 2, !tbaa !14
  br label %pred.store.continue486

pred.store.continue486:                           ; preds = %pred.store.if485, %pred.store.continue484
  %i.id = extractelement <8 x i1> %i.fm, i64 6
  br i1 %i.id, label %pred.store.if487, label %pred.store.continue488

pred.store.if487:                                 ; preds = %pred.store.continue486
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 28
  %i.ig = extractelement <8 x i16> %wide.load458, i64 6
  %i.ih = add nuw nsw i16 %i.fe, %i.ig
  store i16 %i.ih, ptr %i.if, align 2, !tbaa !14
  br label %pred.store.continue488

pred.store.continue488:                           ; preds = %pred.store.if487, %pred.store.continue486
  %i.ii = extractelement <8 x i1> %i.fm, i64 7
  br i1 %i.ii, label %pred.store.if489, label %pred.store.continue490

pred.store.if489:                                 ; preds = %pred.store.continue488
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index456
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 30
  %i.il = extractelement <8 x i16> %wide.load458, i64 7
  %i.im = add nuw nsw i16 %i.fe, %i.il
  store i16 %i.im, ptr %i.ik, align 2, !tbaa !14
  br label %pred.store.continue490

pred.store.continue490:                           ; preds = %pred.store.if489, %pred.store.continue488
  %index.next491 = add nuw i64 %index456, 16      ; 2 uses
  %i.in = icmp eq i64 %index.next491, %n.vec454
  br i1 %i.in, label %middle.block492, label %vector.body455, !llvm.loop !23

middle.block492:                                  ; preds = %pred.store.continue490
  %cmp.n493 = icmp eq i64 %n.vec454, %wide.trip.count418
  br i1 %cmp.n493, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block492
  %min.epilog.iters.check = icmp eq i64 %i.fg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph399.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec454, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec494 = and i64 %wide.trip.count418, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue504, %vec.epilog.ph
  %index495 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next505, %pred.store.continue504 ] ; 5 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index495 ; 2 uses
  %wide.load496 = load <4 x i16>, ptr %i.io, align 2, !tbaa !14 ; 5 uses
  %i.ip = add <4 x i16> %wide.load496, splat (i16 -48)
  %i.iq = icmp ult <4 x i16> %i.ip, splat (i16 10) ; 4 uses
  %i.ir = extractelement <4 x i1> %i.iq, i64 0
  br i1 %i.ir, label %pred.store.if497, label %pred.store.continue498

pred.store.if497:                                 ; preds = %vec.epilog.vector.body
  %i.is = extractelement <4 x i16> %wide.load496, i64 0
  %i.it = add nuw nsw i16 %i.fe, %i.is
  store i16 %i.it, ptr %i.io, align 2, !tbaa !14
  br label %pred.store.continue498

pred.store.continue498:                           ; preds = %pred.store.if497, %vec.epilog.vector.body
  %i.iu = extractelement <4 x i1> %i.iq, i64 1
  br i1 %i.iu, label %pred.store.if499, label %pred.store.continue500

pred.store.if499:                                 ; preds = %pred.store.continue498
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index495
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.ix = extractelement <4 x i16> %wide.load496, i64 1
  %i.iy = add nuw nsw i16 %i.fe, %i.ix
  store i16 %i.iy, ptr %i.iw, align 2, !tbaa !14
  br label %pred.store.continue500

pred.store.continue500:                           ; preds = %pred.store.if499, %pred.store.continue498
  %i.iz = extractelement <4 x i1> %i.iq, i64 2
  br i1 %i.iz, label %pred.store.if501, label %pred.store.continue502

pred.store.if501:                                 ; preds = %pred.store.continue500
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index495
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jc = extractelement <4 x i16> %wide.load496, i64 2
  %i.jd = add nuw nsw i16 %i.fe, %i.jc
  store i16 %i.jd, ptr %i.jb, align 2, !tbaa !14
  br label %pred.store.continue502

pred.store.continue502:                           ; preds = %pred.store.if501, %pred.store.continue500
  %i.je = extractelement <4 x i1> %i.iq, i64 3
  br i1 %i.je, label %pred.store.if503, label %pred.store.continue504

pred.store.if503:                                 ; preds = %pred.store.continue502
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index495
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 6
  %i.jh = extractelement <4 x i16> %wide.load496, i64 3
  %i.ji = add nuw nsw i16 %i.fe, %i.jh
  store i16 %i.ji, ptr %i.jg, align 2, !tbaa !14
  br label %pred.store.continue504

pred.store.continue504:                           ; preds = %pred.store.if503, %pred.store.continue502
  %index.next505 = add nuw i64 %index495, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next505, %n.vec494
  br i1 %i.jj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %pred.store.continue504
  %cmp.n506 = icmp eq i64 %n.vec494, %wide.trip.count418
  br i1 %cmp.n506, label %.loopexit, label %.lr.ph399.preheader

.lr.ph399.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv415.ph = phi i64 [ 0, %iter.check ], [ %n.vec454, %vec.epilog.iter.check ], [ %n.vec494, %vec.epilog.middle.block ]
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399.preheader, %bb.bk
  %indvars.iv415 = phi i64 [ %indvars.iv.next416, %bb.bk ], [ %indvars.iv415.ph, %.lr.ph399.preheader ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv415 ; 2 uses
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !14 ; 2 uses
  %i.jm = add i16 %i.jl, -48
  %i.jn = icmp ult i16 %i.jm, 10
  br i1 %i.jn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph399
  %i.jo = add nuw nsw i16 %i.fe, %i.jl
  store i16 %i.jo, ptr %i.jk, align 2, !tbaa !14
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph399, %bb.bj
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next416, %wide.trip.count418
  br i1 %exitcond419.not, label %.loopexit, label %.lr.ph399, !llvm.loop !25

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bm
  %indvars.iv412 = phi i64 [ %indvars.iv.next413, %bb.bm ], [ %indvars.iv412.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv412 ; 2 uses
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !14 ; 2 uses
  %i.jr = zext i16 %i.jq to i32
  %i.js = sub nsw i32 %i.jr, %i.eb
  %i.jt = icmp ult i32 %i.js, 10
  br i1 %i.jt, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %scalar.ph
  %25 = add i16 %.neg, %i.jq
  store i16 %25, ptr %i.jp, align 2, !tbaa !14
  br label %bb.bm

bb.bm:                                            ; preds = %scalar.ph, %bb.bl
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next413, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !26

bb.bn:                                            ; preds = %bb.bh
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.bh, %bb.bn
  %.sink433 = phi i8 [ 1, %bb.bn ], [ 0, %bb.bh ]
  %i.ju = and i32 %4, 4
  %i.jv = icmp eq i32 %i.ju, 0
  %i.jw = zext i1 %i.jv to i8
  call fastcc void @_ZL31_shapeToArabicDigitsWithContextPDsiDsaa(ptr noundef %2, i32 noundef %.2302, i16 noundef zeroext %.367, i8 noundef signext %i.jw, i8 noundef signext %.sink433)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bm, %bb.bk, %middle.block, %middle.block492, %vec.epilog.middle.block, %.loopexit.sink.split, %.preheader, %bb.bi, %bb.bh, %bb.bg
  %i.jx = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.2302, ptr noundef nonnull %5)
  br label %bb.bo

bb.bo:                                            ; preds = %.thread379, %bb.a, %bb.b, %.loopexit, %bb.be, %bb.u, %bb.q, %bb.m, %bb.k, %bb.i
  %.3 = phi i32 [ 0, %bb.k ], [ 0, %bb.i ], [ %i.z, %bb.q ], [ 0, %bb.u ], [ %i.jx, %.loopexit ], [ %.2305.ph, %.thread379 ], [ %.0308, %bb.be ], [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i16 @_ZL7getLinkDs(i16 noundef zeroext %0) unnamed_addr #4 {
bb.a:
  %i.a = add i16 %0, -1570
  %or.cond = icmp ult i16 %i.a, 178
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %i.c = getelementptr [2 x i8], ptr @_ZL7araLink, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -3140
  %i.e = load i16, ptr %i.d, align 2, !tbaa !14
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i16 %0, 8205
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i16 %0, -8301
  %or.cond5 = icmp ult i16 %i.g, 3
  br i1 %or.cond5, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i16 %0, 1200
  %or.cond8 = icmp ult i16 %i.h, 275
  br i1 %or.cond8, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = zext i16 %0 to i64
  %i.j = getelementptr i8, ptr @_ZL9presALink, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -64336
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  %i.m = zext i8 %i.l to i16
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.n = add i16 %0, 400
  %or.cond11 = icmp ult i16 %i.n, 141
  br i1 %or.cond11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = zext i16 %0 to i64
  %i.p = getelementptr i8, ptr @_ZL9presBLink, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -65136
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19
  %i.s = zext i8 %i.r to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.h, %bb.f, %bb.b
  %.0 = phi i16 [ %i.e, %bb.b ], [ 4, %bb.d ], [ 3, %bb.c ], [ %i.m, %bb.f ], [ %i.s, %bb.h ], [ 0, %bb.g ]
  ret i16 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL13calculateSizePKDsiij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = and i32 %2, 65547
  %or.cond59 = icmp eq i32 %i.a, 8
  %i.b = and i32 %2, 917528
  %or.cond61 = icmp eq i32 %i.b, 524296
  %brmerge = or i1 %or.cond61, %or.cond59
  br i1 %brmerge, label %.critedge, label %.loopexit76

.critedge:                                        ; preds = %bb.a
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader75, label %.preheader77

.preheader77:                                     ; preds = %.critedge
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader77
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.preheader75:                                     ; preds = %.critedge
  br i1 %i.d, label %.lr.ph83, label %.loopexit

.lr.ph83:                                         ; preds = %.preheader75
  %i.h = add nsw i32 %1, -1
  %i.i = zext nneg i32 %i.h to i64                ; 3 uses
  %wide.trip.count96 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter10 = and i64 %wide.trip.count96, 1
  %i.j = icmp eq i32 %1, 1
  br i1 %i.j, label %.epil.preheader9, label %.lr.ph83.new

.lr.ph83.new:                                     ; preds = %.lr.ph83
  %unroll_iter14 = and i64 %wide.trip.count96, 2147483646
  br label %bb.i

bb.b:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.04579 = phi i32 [ %1, %.lr.ph.new ], [ %.146.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !14   ; 2 uses
  switch i16 %i.l, label %_ZL10isAlefCharDs.exit.thread [
    i16 1573, label %_ZL10isAlefCharDs.exit
    i16 1571, label %_ZL10isAlefCharDs.exit
    i16 1570, label %_ZL10isAlefCharDs.exit
    i16 1575, label %_ZL10isAlefCharDs.exit
  ]

_ZL10isAlefCharDs.exit:                           ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = icmp samesign ult i64 %indvars.iv, %i.f
  br i1 %i.m, label %bb.c, label %_ZL10isAlefCharDs.exit.thread

bb.c:                                             ; preds = %_ZL10isAlefCharDs.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !14
  %i.p = icmp eq i16 %i.o, 1604
  br i1 %i.p, label %bb.d, label %bb.e

_ZL10isAlefCharDs.exit.thread:                    ; preds = %bb.b, %_ZL10isAlefCharDs.exit
  %.old = and i16 %i.l, -16
  %.not71.old = icmp eq i16 %.old, -400
  br i1 %.not71.old, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL10isAlefCharDs.exit.thread, %bb.c
  %i.q = add nsw i32 %.04579, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZL10isAlefCharDs.exit.thread, %bb.d
  %.146 = phi i32 [ %i.q, %bb.d ], [ %.04579, %_ZL10isAlefCharDs.exit.thread ], [ %.04579, %bb.c ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !14   ; 2 uses
  switch i16 %i.s, label %_ZL10isAlefCharDs.exit.thread.1 [
    i16 1573, label %_ZL10isAlefCharDs.exit.1
    i16 1571, label %_ZL10isAlefCharDs.exit.1
    i16 1570, label %_ZL10isAlefCharDs.exit.1
    i16 1575, label %_ZL10isAlefCharDs.exit.1
  ]

_ZL10isAlefCharDs.exit.1:                         ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.t, label %bb.f, label %_ZL10isAlefCharDs.exit.thread.1

bb.f:                                             ; preds = %_ZL10isAlefCharDs.exit.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !14
  %i.w = icmp eq i16 %i.v, 1604
  br i1 %i.w, label %bb.g, label %bb.h

_ZL10isAlefCharDs.exit.thread.1:                  ; preds = %_ZL10isAlefCharDs.exit.1, %bb.e
  %.old.1 = and i16 %i.s, -16
  %.not71.old.1 = icmp eq i16 %.old.1, -400
end_hunk_0
