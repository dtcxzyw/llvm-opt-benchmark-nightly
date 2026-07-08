inline.NumInlined: 38
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@u_shapeArabic_78:bb.a
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

.unreachabledefault:                              ; preds = %_ZL12invertBufferPDsijii.exit.thread
  unreachable

bb.ax:                                            ; preds = %bb.as, %bb.au, %bb.at, %bb.aw, %bb.av
  %.0301 = phi i32 [ %i.db, %bb.as ], [ %i.dc, %bb.au ], [ %i.dc, %bb.at ], [ %i.df, %bb.av ], [ %i.dg, %bb.aw ] ; 6 uses
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
  %10 = add nsw i32 %i.q, -32
  %i.ea = lshr exact i32 %10, 5
  switch i32 %i.ea, label %.loopexit [
    i32 0, label %bb.bi
    i32 1, label %.preheader
    i32 2, label %.loopexit.sink.split
    i32 3, label %bb.bn
  ]

.preheader:                                       ; preds = %bb.bh
  %i.eb = icmp sgt i32 %.2303, 0
  br i1 %i.eb, label %.lr.ph397, label %.loopexit

.lr.ph397:                                        ; preds = %.preheader
  %i.ec = zext nneg i16 %.368 to i32              ; 2 uses
  %.neg = select i1 %i.dz, i16 -1584, i16 -1728   ; 9 uses
  %wide.trip.count = zext nneg i32 %.2303 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %.2303, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph397
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ec, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue450, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue450 ] ; 9 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ed, align 2 ; 9 uses
  %i.ee = zext <8 x i16> %wide.load to <8 x i32>
  %i.ef = sub nsw <8 x i32> %i.ee, %broadcast.splat
  %i.eg = icmp ult <8 x i32> %i.ef, splat (i32 10) ; 8 uses
  %i.eh = extractelement <8 x i1> %i.eg, i64 0
  br i1 %i.eh, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ei = extractelement <8 x i16> %wide.load, i64 0
  %i.ej = add i16 %.neg, %i.ei
  store i16 %i.ej, ptr %i.ed, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ek = extractelement <8 x i1> %i.eg, i64 1
  br i1 %i.ek, label %pred.store.if437, label %pred.store.continue438

pred.store.if437:                                 ; preds = %pred.store.continue
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.en = extractelement <8 x i16> %wide.load, i64 1
  %i.eo = add i16 %.neg, %i.en
  store i16 %i.eo, ptr %i.em, align 2
  br label %pred.store.continue438

pred.store.continue438:                           ; preds = %pred.store.if437, %pred.store.continue
  %i.ep = extractelement <8 x i1> %i.eg, i64 2
  br i1 %i.ep, label %pred.store.if439, label %pred.store.continue440

pred.store.if439:                                 ; preds = %pred.store.continue438
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = extractelement <8 x i16> %wide.load, i64 2
  %i.et = add i16 %.neg, %i.es
  store i16 %i.et, ptr %i.er, align 2
  br label %pred.store.continue440

pred.store.continue440:                           ; preds = %pred.store.if439, %pred.store.continue438
  %i.eu = extractelement <8 x i1> %i.eg, i64 3
  br i1 %i.eu, label %pred.store.if441, label %pred.store.continue442

pred.store.if441:                                 ; preds = %pred.store.continue440
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 6
  %i.ex = extractelement <8 x i16> %wide.load, i64 3
  %i.ey = add i16 %.neg, %i.ex
  store i16 %i.ey, ptr %i.ew, align 2
  br label %pred.store.continue442

pred.store.continue442:                           ; preds = %pred.store.if441, %pred.store.continue440
  %i.ez = extractelement <8 x i1> %i.eg, i64 4
  br i1 %i.ez, label %pred.store.if443, label %pred.store.continue444

pred.store.if443:                                 ; preds = %pred.store.continue442
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = extractelement <8 x i16> %wide.load, i64 4
  %i.fd = add i16 %.neg, %i.fc
  store i16 %i.fd, ptr %i.fb, align 2
  br label %pred.store.continue444

pred.store.continue444:                           ; preds = %pred.store.if443, %pred.store.continue442
  %i.fe = extractelement <8 x i1> %i.eg, i64 5
  br i1 %i.fe, label %pred.store.if445, label %pred.store.continue446

pred.store.if445:                                 ; preds = %pred.store.continue444
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 10
  %i.fh = extractelement <8 x i16> %wide.load, i64 5
  %i.fi = add i16 %.neg, %i.fh
  store i16 %i.fi, ptr %i.fg, align 2
  br label %pred.store.continue446

pred.store.continue446:                           ; preds = %pred.store.if445, %pred.store.continue444
  %i.fj = extractelement <8 x i1> %i.eg, i64 6
  br i1 %i.fj, label %pred.store.if447, label %pred.store.continue448

pred.store.if447:                                 ; preds = %pred.store.continue446
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %i.fm = extractelement <8 x i16> %wide.load, i64 6
  %i.fn = add i16 %.neg, %i.fm
  store i16 %i.fn, ptr %i.fl, align 2
  br label %pred.store.continue448

pred.store.continue448:                           ; preds = %pred.store.if447, %pred.store.continue446
  %i.fo = extractelement <8 x i1> %i.eg, i64 7
  br i1 %i.fo, label %pred.store.if449, label %pred.store.continue450

pred.store.if449:                                 ; preds = %pred.store.continue448
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 14
  %i.fr = extractelement <8 x i16> %wide.load, i64 7
  %i.fs = add i16 %.neg, %i.fr
  store i16 %i.fs, ptr %i.fq, align 2
  br label %pred.store.continue450

pred.store.continue450:                           ; preds = %pred.store.if449, %pred.store.continue448
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %pred.store.continue450
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph397, %middle.block
  %indvars.iv413.ph = phi i64 [ 0, %.lr.ph397 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.bi:                                            ; preds = %bb.bh
  %i.fu = add nsw i16 %.368, -48                  ; 21 uses
  %i.fv = icmp sgt i32 %.2303, 0
  br i1 %i.fv, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.bi
  %wide.trip.count419 = zext nneg i32 %.2303 to i64 ; 6 uses
  %min.iters.check452 = icmp ult i32 %.2303, 4
  br i1 %min.iters.check452, label %.lr.ph400.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check453 = icmp ult i32 %.2303, 16
  br i1 %min.iters.check453, label %vec.epilog.ph, label %vector.ph454

vector.ph454:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf455 = and i64 %wide.trip.count419, 12
  %n.vec456 = and i64 %wide.trip.count419, 2147483632 ; 4 uses
  br label %vector.body457

vector.body457:                                   ; preds = %pred.store.continue492, %vector.ph454
  %index458 = phi i64 [ 0, %vector.ph454 ], [ %index.next493, %pred.store.continue492 ] ; 17 uses
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index458 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load459 = load <8 x i16>, ptr %i.fw, align 2 ; 9 uses
  %wide.load460 = load <8 x i16>, ptr %i.fx, align 2 ; 9 uses
  %i.fy = add <8 x i16> %wide.load459, splat (i16 -48)
  %i.fz = add <8 x i16> %wide.load460, splat (i16 -48)
  %i.ga = icmp ult <8 x i16> %i.fy, splat (i16 10) ; 8 uses
  %i.gb = icmp ult <8 x i16> %i.fz, splat (i16 10) ; 8 uses
  %i.gc = extractelement <8 x i1> %i.ga, i64 0
  br i1 %i.gc, label %pred.store.if461, label %pred.store.continue462

pred.store.if461:                                 ; preds = %vector.body457
  %i.gd = extractelement <8 x i16> %wide.load459, i64 0
  %i.ge = add nuw nsw i16 %i.fu, %i.gd
  store i16 %i.ge, ptr %i.fw, align 2
  br label %pred.store.continue462

pred.store.continue462:                           ; preds = %pred.store.if461, %vector.body457
  %i.gf = extractelement <8 x i1> %i.ga, i64 1
  br i1 %i.gf, label %pred.store.if463, label %pred.store.continue464

pred.store.if463:                                 ; preds = %pred.store.continue462
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index458
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gi = extractelement <8 x i16> %wide.load459, i64 1
  %i.gj = add nuw nsw i16 %i.fu, %i.gi
  store i16 %i.gj, ptr %i.gh, align 2
  br label %pred.store.continue464

pred.store.continue464:                           ; preds = %pred.store.if463, %pred.store.continue462
  %i.gk = extractelement <8 x i1> %i.ga, i64 2
  br i1 %i.gk, label %pred.store.if465, label %pred.store.continue466

pred.store.if465:                                 ; preds = %pred.store.continue464
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index458
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = extractelement <8 x i16> %wide.load459, i64 2
  %i.go = add nuw nsw i16 %i.fu, %i.gn
  store i16 %i.go, ptr %i.gm, align 2
  br label %pred.store.continue466

pred.store.continue466:                           ; preds = %pred.store.if465, %pred.store.continue464
  %i.gp = extractelement <8 x i1> %i.ga, i64 3
  br i1 %i.gp, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %pred.store.continue466
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index458
end_hunk_0
