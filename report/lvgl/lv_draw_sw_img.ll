Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_img?download=true
inline.NumInlined: 20
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@recolor_only:bb.a

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @lv_color_format_get_size(i32 noundef) local_unnamed_addr #2

declare i32 @lv_display_get_horizontal_resolution(ptr noundef) local_unnamed_addr #2

declare ptr @lv_refr_get_disp_refreshing() local_unnamed_addr #2

declare i32 @lv_display_get_color_format(ptr noundef) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare void @lv_area_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @recolor(i64 %0, i64 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %7 = alloca %struct.lv_area_t, align 8          ; 12 uses
  store i64 %0, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %1, ptr %i.b, align 8
  %i.c = call i32 @lv_area_get_width(ptr noundef nonnull %7) #6 ; 31 uses
  %i.d = call i32 @lv_area_get_height(ptr noundef nonnull %7) #6 ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 116
  %.sroa.0130.0.copyload = load i8, ptr %i.e, align 4, !tbaa !38 ; 16 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 117 ; 3 uses
  %i.f = load i8, ptr %.sroa.10.0..sroa_idx, align 1, !tbaa !38 ; 14 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 118
  %.sroa.15.0.copyload = load i8, ptr %.sroa.15.0..sroa_idx, align 2, !tbaa !38 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 119
  %i.h = load i8, ptr %i.g, align 1, !tbaa !59    ; 5 uses
  %i.i = zext i8 %i.h to i32                      ; 12 uses
  %i.j = xor i8 %i.h, -1                          ; 4 uses
  switch i32 %5, label %bb.f [
    i32 20, label %bb.b
    i32 18, label %bb.b
    i32 27, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 1
  %i.k = zext i16 %.sroa.10.0.copyload to i24
  %i.l = shl nuw i24 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = load i32, ptr %7, align 8, !tbaa !27
  %i.p = sdiv i32 %4, 2
  %.sroa.0130.0.insert.ext135 = zext i8 %.sroa.0130.0.copyload to i24
  %.sroa.0130.0.insert.insert137 = or disjoint i24 %i.l, %.sroa.0130.0.insert.ext135
  %i.q = call zeroext i16 @lv_color_to_u16(i24 %.sroa.0130.0.insert.insert137) #6 ; 3 uses
  %i.r = icmp ugt i8 %i.h, -4
  br i1 %i.r, label %.preheader281, label %bb.c

.preheader281:                                    ; preds = %bb.b
  %i.s = icmp sgt i32 %i.d, 0
  %i.t = icmp sgt i32 %i.c, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %.preheader280.preheader, label %.loopexit

.preheader280.preheader:                          ; preds = %.preheader281
  %i.u = zext nneg i32 %i.c to i64                ; 5 uses
  %min.iters.check512 = icmp ult i32 %i.c, 4
  %min.iters.check514 = icmp ult i32 %i.c, 16
  %i.v = and i64 %i.u, 12
  %n.vec516 = and i64 %i.u, 2147483632            ; 5 uses
  %i.w = trunc nuw nsw i64 %n.vec516 to i32
  %i.x = shl nuw nsw i64 %n.vec516, 1
  %broadcast.splatinsert517 = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat518 = shufflevector <8 x i16> %broadcast.splatinsert517, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n524 = icmp eq i64 %n.vec516, %i.u
  %min.epilog.iters.check528 = icmp eq i64 %i.v, 0
  %n.vec531 = and i64 %i.u, 2147483644            ; 4 uses
  %i.y = trunc nuw nsw i64 %n.vec531 to i32
  %i.z = shl nuw nsw i64 %n.vec531, 1
  %broadcast.splatinsert532 = insertelement <4 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat533 = shufflevector <4 x i16> %broadcast.splatinsert532, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n539 = icmp eq i64 %n.vec531, %i.u
  br label %iter.check525

iter.check525:                                    ; preds = %.preheader280.preheader, %._crit_edge310
  %.0260313 = phi i32 [ %i.aj, %._crit_edge310 ], [ 0, %.preheader280.preheader ]
  %.0261312 = phi ptr [ %.lcssa445, %._crit_edge310 ], [ %3, %.preheader280.preheader ] ; 5 uses
  br i1 %min.iters.check512, label %vec.epilog.scalar.ph527.preheader, label %vector.main.loop.iter.check513

vector.main.loop.iter.check513:                   ; preds = %iter.check525
  br i1 %min.iters.check514, label %vec.epilog.ph529, label %vector.ph515

vector.ph515:                                     ; preds = %vector.main.loop.iter.check513
  %i.aa = getelementptr i8, ptr %.0261312, i64 %i.x ; 2 uses
  br label %vector.body519

vector.body519:                                   ; preds = %vector.ph515, %vector.body519
  %index520 = phi i64 [ 0, %vector.ph515 ], [ %index.next522, %vector.body519 ] ; 2 uses
  %i.ab = shl i64 %index520, 1
  %next.gep521 = getelementptr i8, ptr %.0261312, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep521, i64 16
  store <8 x i16> %broadcast.splat518, ptr %next.gep521, align 2, !tbaa !43
  store <8 x i16> %broadcast.splat518, ptr %i.ac, align 2, !tbaa !43
  %index.next522 = add nuw i64 %index520, 16      ; 2 uses
  %i.ad = icmp eq i64 %index.next522, %n.vec516
  br i1 %i.ad, label %middle.block523, label %vector.body519, !llvm.loop !97

middle.block523:                                  ; preds = %vector.body519
  br i1 %cmp.n524, label %._crit_edge310, label %vec.epilog.iter.check526

vec.epilog.iter.check526:                         ; preds = %middle.block523
  br i1 %min.epilog.iters.check528, label %vec.epilog.scalar.ph527.preheader, label %vec.epilog.ph529, !prof !42

vec.epilog.ph529:                                 ; preds = %vector.main.loop.iter.check513, %vec.epilog.iter.check526
  %vec.epilog.resume.val530 = phi i64 [ %n.vec516, %vec.epilog.iter.check526 ], [ 0, %vector.main.loop.iter.check513 ]
  %i.ae = getelementptr i8, ptr %.0261312, i64 %i.z ; 2 uses
  br label %vec.epilog.vector.body534

vec.epilog.vector.body534:                        ; preds = %vec.epilog.vector.body534, %vec.epilog.ph529
  %index535 = phi i64 [ %vec.epilog.resume.val530, %vec.epilog.ph529 ], [ %index.next537, %vec.epilog.vector.body534 ] ; 2 uses
  %i.af = shl i64 %index535, 1
  %next.gep536 = getelementptr i8, ptr %.0261312, i64 %i.af
  store <4 x i16> %broadcast.splat533, ptr %next.gep536, align 2, !tbaa !43
  %index.next537 = add nuw i64 %index535, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next537, %n.vec531
  br i1 %i.ag, label %vec.epilog.middle.block538, label %vec.epilog.vector.body534, !llvm.loop !98

vec.epilog.middle.block538:                       ; preds = %vec.epilog.vector.body534
  br i1 %cmp.n539, label %._crit_edge310, label %vec.epilog.scalar.ph527.preheader

vec.epilog.scalar.ph527.preheader:                ; preds = %iter.check525, %vec.epilog.iter.check526, %vec.epilog.middle.block538
  %.0259309.ph = phi i32 [ 0, %iter.check525 ], [ %i.w, %vec.epilog.iter.check526 ], [ %i.y, %vec.epilog.middle.block538 ]
  %.1262308.ph = phi ptr [ %.0261312, %iter.check525 ], [ %i.aa, %vec.epilog.iter.check526 ], [ %i.ae, %vec.epilog.middle.block538 ]
  br label %vec.epilog.scalar.ph527

vec.epilog.scalar.ph527:                          ; preds = %vec.epilog.scalar.ph527.preheader, %vec.epilog.scalar.ph527
  %.0259309 = phi i32 [ %i.ai, %vec.epilog.scalar.ph527 ], [ %.0259309.ph, %vec.epilog.scalar.ph527.preheader ]
  %.1262308 = phi ptr [ %i.ah, %vec.epilog.scalar.ph527 ], [ %.1262308.ph, %vec.epilog.scalar.ph527.preheader ] ; 2 uses
  store i16 %i.q, ptr %.1262308, align 2, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %.1262308, i64 2 ; 2 uses
  %i.ai = add nuw nsw i32 %.0259309, 1            ; 2 uses
  %exitcond379.not = icmp eq i32 %i.ai, %i.c
  br i1 %exitcond379.not, label %._crit_edge310, label %vec.epilog.scalar.ph527, !llvm.loop !99

._crit_edge310:                                   ; preds = %vec.epilog.scalar.ph527, %vec.epilog.middle.block538, %middle.block523
  %.lcssa445 = phi ptr [ %i.ae, %vec.epilog.middle.block538 ], [ %i.aa, %middle.block523 ], [ %i.ah, %vec.epilog.scalar.ph527 ]
  %i.aj = add nuw nsw i32 %.0260313, 1            ; 2 uses
  %exitcond380.not = icmp eq i32 %i.aj, %i.d
  br i1 %exitcond380.not, label %.loopexit, label %iter.check525, !llvm.loop !100

bb.c:                                             ; preds = %bb.b
  %i.ak = lshr i8 %.sroa.0130.0.copyload, 3
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.i, %i.al             ; 2 uses
  %i.an = lshr i8 %i.f, 2
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.i, %i.ao             ; 2 uses
  %i.aq = lshr i8 %.sroa.15.0.copyload, 3
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = mul nuw nsw i32 %i.ar, %i.i             ; 2 uses
  %i.at = icmp sgt i32 %i.d, 0
  br i1 %i.at, label %.preheader283.lr.ph, label %.loopexit

.preheader283.lr.ph:                              ; preds = %bb.c
  %i.au = icmp sgt i32 %i.c, 0
  %i.av = zext i8 %i.j to i32                     ; 4 uses
  %i.aw = sext i32 %i.p to i64                    ; 2 uses
  br i1 %i.au, label %.preheader283.preheader, label %.loopexit

.preheader283.preheader:                          ; preds = %.preheader283.lr.ph
  %i.ax = mul i32 %i.n, %4
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %2, i64 %i.ay
  %i.ba = shl i32 %i.o, 1
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  %wide.trip.count376 = zext nneg i32 %i.c to i64 ; 3 uses
  %i.bd = mul nsw i64 %i.aw, -2
  %i.be = add i64 %i.a, %i.ay
  %i.bf = add i64 %i.be, %i.bb
  %min.iters.check489 = icmp ult i32 %i.c, 8
  %n.vec493 = and i64 %wide.trip.count376, 2147483640 ; 4 uses
  %i.bg = shl nuw nsw i64 %n.vec493, 1
  %broadcast.splatinsert494 = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat495 = shufflevector <8 x i32> %broadcast.splatinsert494, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert496 = insertelement <8 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat497 = shufflevector <8 x i32> %broadcast.splatinsert496, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert498 = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat499 = shufflevector <8 x i32> %broadcast.splatinsert498, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert500 = insertelement <8 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat501 = shufflevector <8 x i32> %broadcast.splatinsert500, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n508 = icmp eq i64 %n.vec493, %wide.trip.count376
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.preheader, %._crit_edge303
  %indvar486 = phi i64 [ 0, %.preheader283.preheader ], [ %indvar.next487, %._crit_edge303 ] ; 2 uses
  %.0258307 = phi i32 [ 0, %.preheader283.preheader ], [ %i.df, %._crit_edge303 ]
  %.2263306 = phi ptr [ %3, %.preheader283.preheader ], [ %.lcssa446, %._crit_edge303 ] ; 5 uses
  %.1266305 = phi ptr [ %i.bc, %.preheader283.preheader ], [ %i.de, %._crit_edge303 ] ; 3 uses
  br i1 %min.iters.check489, label %scalar.ph488.preheader, label %vector.memcheck490

vector.memcheck490:                               ; preds = %.preheader283
  %.2263306485 = ptrtoaddr ptr %.2263306 to i64
  %i.bh = mul i64 %indvar486, %i.bd
  %i.bi = sub i64 %i.bh, %i.bf
  %i.bj = add i64 %i.bi, %.2263306485
  %i.bk = add i64 %i.bj, -1
  %diff.check491 = icmp ult i64 %i.bk, 15
  br i1 %diff.check491, label %scalar.ph488.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck490
  %i.bl = getelementptr i8, ptr %.2263306, i64 %i.bg ; 2 uses
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph492
  %index503 = phi i64 [ 0, %vector.ph492 ], [ %index.next506, %vector.body502 ] ; 3 uses
  %i.bm = shl i64 %index503, 1
  %next.gep504 = getelementptr i8, ptr %.2263306, i64 %i.bm
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.1266305, i64 %index503
  %wide.load505 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !43 ; 3 uses
  %i.bo = lshr <8 x i16> %wide.load505, splat (i16 11)
  %i.bp = zext nneg <8 x i16> %i.bo to <8 x i32>
  %i.bq = mul nuw nsw <8 x i32> %broadcast.splat495, %i.bp
  %i.br = add nuw nsw <8 x i32> %i.bq, %broadcast.splat497
  %i.bs = shl nuw nsw <8 x i32> %i.br, splat (i32 3)
  %i.bt = and <8 x i32> %i.bs, splat (i32 63488)
  %i.bu = lshr <8 x i16> %wide.load505, splat (i16 5)
  %.inner = and <8 x i16> %i.bu, splat (i16 63)
  %i.bv = zext nneg <8 x i16> %.inner to <8 x i32>
  %i.bw = mul nuw nsw <8 x i32> %broadcast.splat495, %i.bv
  %i.bx = add nuw nsw <8 x i32> %i.bw, %broadcast.splat499
  %i.by = lshr <8 x i32> %i.bx, splat (i32 3)
  %i.bz = and <8 x i32> %i.by, splat (i32 2016)
  %.inner542 = and <8 x i16> %wide.load505, splat (i16 31)
  %i.ca = zext nneg <8 x i16> %.inner542 to <8 x i32>
  %i.cb = mul nuw nsw <8 x i32> %broadcast.splat495, %i.ca
  %i.cc = add nuw nsw <8 x i32> %i.cb, %broadcast.splat501
  %i.cd = lshr <8 x i32> %i.cc, splat (i32 8)
  %i.ce = or disjoint <8 x i32> %i.bt, %i.cd
  %i.cf = add nuw nsw <8 x i32> %i.ce, %i.bz
  %i.cg = trunc <8 x i32> %i.cf to <8 x i16>
  store <8 x i16> %i.cg, ptr %next.gep504, align 2, !tbaa !43
  %index.next506 = add nuw i64 %index503, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next506, %n.vec493
  br i1 %i.ch, label %middle.block507, label %vector.body502, !llvm.loop !101

middle.block507:                                  ; preds = %vector.body502
  br i1 %cmp.n508, label %._crit_edge303, label %scalar.ph488.preheader

scalar.ph488.preheader:                           ; preds = %vector.memcheck490, %.preheader283, %middle.block507
  %indvars.iv373.ph = phi i64 [ 0, %vector.memcheck490 ], [ 0, %.preheader283 ], [ %n.vec493, %middle.block507 ]
  %.3264301.ph = phi ptr [ %.2263306, %vector.memcheck490 ], [ %.2263306, %.preheader283 ], [ %i.bl, %middle.block507 ]
  br label %scalar.ph488

scalar.ph488:                                     ; preds = %scalar.ph488.preheader, %scalar.ph488
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %scalar.ph488 ], [ %indvars.iv373.ph, %scalar.ph488.preheader ] ; 2 uses
  %.3264301 = phi ptr [ %i.dd, %scalar.ph488 ], [ %.3264301.ph, %scalar.ph488.preheader ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.1266305, i64 %indvars.iv373
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !43
  %i.ck = zext i16 %i.cj to i32                   ; 3 uses
  %i.cl = lshr i32 %i.ck, 11
  %i.cm = mul nuw nsw i32 %i.cl, %i.av
  %i.cn = add nuw nsw i32 %i.cm, %i.as
  %i.co = shl nuw nsw i32 %i.cn, 3
  %i.cp = and i32 %i.co, 63488
  %i.cq = lshr i32 %i.ck, 5
  %i.cr = and i32 %i.cq, 63
  %i.cs = mul nuw nsw i32 %i.cr, %i.av
  %i.ct = add nuw nsw i32 %i.cs, %i.ap
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = and i32 %i.cu, 2016
  %i.cw = and i32 %i.ck, 31
  %i.cx = mul nuw nsw i32 %i.cw, %i.av
  %i.cy = add nuw nsw i32 %i.cx, %i.am
  %i.cz = lshr i32 %i.cy, 8
  %i.da = or disjoint i32 %i.cp, %i.cz
  %i.db = add nuw nsw i32 %i.da, %i.cv
  %i.dc = trunc i32 %i.db to i16
  store i16 %i.dc, ptr %.3264301, align 2, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %.3264301, i64 2 ; 2 uses
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge303, label %scalar.ph488, !llvm.loop !102

._crit_edge303:                                   ; preds = %scalar.ph488, %middle.block507
  %.lcssa446 = phi ptr [ %i.bl, %middle.block507 ], [ %i.dd, %scalar.ph488 ]
  %i.de = getelementptr inbounds [2 x i8], ptr %.1266305, i64 %i.aw
  %i.df = add nuw nsw i32 %.0258307, 1            ; 2 uses
  %exitcond378.not = icmp eq i32 %i.df, %i.d
  %indvar.next487 = add i64 %indvar486, 1
  br i1 %exitcond378.not, label %.loopexit, label %.preheader283, !llvm.loop !103

bb.d:                                             ; preds = %bb.a
  %i.dg = load i16, ptr %.sroa.10.0..sroa_idx, align 1
  %i.dh = zext i16 %i.dg to i24
  %i.di = shl nuw i24 %i.dh, 8
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !25
  %i.dl = load i32, ptr %7, align 8, !tbaa !27
  %i.dm = sdiv i32 %4, 2
  %.sroa.0130.0.insert.ext = zext i8 %.sroa.0130.0.copyload to i24
  %.sroa.0130.0.insert.insert = or disjoint i24 %i.di, %.sroa.0130.0.insert.ext
  %i.dn = call zeroext i16 @lv_color_to_u16(i24 %.sroa.0130.0.insert.insert) #6 ; 3 uses
  %i.do = icmp ugt i8 %i.h, -4
  br i1 %i.do, label %.preheader286, label %bb.e

.preheader286:                                    ; preds = %bb.d
  %i.dp = icmp sgt i32 %i.d, 0
  %i.dq = icmp sgt i32 %i.c, 0
  %or.cond347 = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond347, label %.preheader285.preheader, label %.loopexit

.preheader285.preheader:                          ; preds = %.preheader286
  %i.dr = zext nneg i32 %i.c to i64               ; 5 uses
  %min.iters.check459 = icmp ult i32 %i.c, 4
  %min.iters.check460 = icmp ult i32 %i.c, 16
  %i.ds = and i64 %i.dr, 12
  %n.vec462 = and i64 %i.dr, 2147483632           ; 5 uses
  %i.dt = trunc nuw nsw i64 %n.vec462 to i32
  %i.du = shl nuw nsw i64 %n.vec462, 1
  %broadcast.splatinsert463 = insertelement <8 x i16> poison, i16 %i.dn, i64 0
  %broadcast.splat464 = shufflevector <8 x i16> %broadcast.splatinsert463, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n470 = icmp eq i64 %n.vec462, %i.dr
  %min.epilog.iters.check = icmp eq i64 %i.ds, 0
  %n.vec471 = and i64 %i.dr, 2147483644           ; 4 uses
  %i.dv = trunc nuw nsw i64 %n.vec471 to i32
  %i.dw = shl nuw nsw i64 %n.vec471, 1
  %broadcast.splatinsert472 = insertelement <4 x i16> poison, i16 %i.dn, i64 0
  %broadcast.splat473 = shufflevector <4 x i16> %broadcast.splatinsert472, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n477 = icmp eq i64 %n.vec471, %i.dr
  br label %iter.check

iter.check:                                       ; preds = %.preheader285.preheader, %._crit_edge297
  %.0250300 = phi i32 [ %i.eg, %._crit_edge297 ], [ 0, %.preheader285.preheader ]
  %.0251299 = phi ptr [ %.lcssa447, %._crit_edge297 ], [ %3, %.preheader285.preheader ] ; 5 uses
  br i1 %min.iters.check459, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check460, label %vec.epilog.ph, label %vector.ph461

vector.ph461:                                     ; preds = %vector.main.loop.iter.check
  %i.dx = getelementptr i8, ptr %.0251299, i64 %i.du ; 2 uses
  br label %vector.body465

vector.body465:                                   ; preds = %vector.ph461, %vector.body465
  %index466 = phi i64 [ 0, %vector.ph461 ], [ %index.next468, %vector.body465 ] ; 2 uses
  %i.dy = shl i64 %index466, 1
  %next.gep467 = getelementptr i8, ptr %.0251299, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep467, i64 16
  store <8 x i16> %broadcast.splat464, ptr %next.gep467, align 2, !tbaa !43
  store <8 x i16> %broadcast.splat464, ptr %i.dz, align 2, !tbaa !43
  %index.next468 = add nuw i64 %index466, 16      ; 2 uses
  %i.ea = icmp eq i64 %index.next468, %n.vec462
  br i1 %i.ea, label %middle.block469, label %vector.body465, !llvm.loop !104

middle.block469:                                  ; preds = %vector.body465
  br i1 %cmp.n470, label %._crit_edge297, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block469
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec462, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.eb = getelementptr i8, ptr %.0251299, i64 %i.dw ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index474 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next476, %vec.epilog.vector.body ] ; 2 uses
  %i.ec = shl i64 %index474, 1
  %next.gep475 = getelementptr i8, ptr %.0251299, i64 %i.ec
  store <4 x i16> %broadcast.splat473, ptr %next.gep475, align 2, !tbaa !43
  %index.next476 = add nuw i64 %index474, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next476, %n.vec471
  br i1 %i.ed, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n477, label %._crit_edge297, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0249296.ph = phi i32 [ 0, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.dv, %vec.epilog.middle.block ]
  %.1252295.ph = phi ptr [ %.0251299, %iter.check ], [ %i.dx, %vec.epilog.iter.check ], [ %i.eb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0249296 = phi i32 [ %i.ef, %vec.epilog.scalar.ph ], [ %.0249296.ph, %vec.epilog.scalar.ph.preheader ]
  %.1252295 = phi ptr [ %i.ee, %vec.epilog.scalar.ph ], [ %.1252295.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  store i16 %i.dn, ptr %.1252295, align 2, !tbaa !43
  %i.ee = getelementptr inbounds nuw i8, ptr %.1252295, i64 2 ; 2 uses
  %i.ef = add nuw nsw i32 %.0249296, 1            ; 2 uses
  %exitcond371.not = icmp eq i32 %i.ef, %i.c
  br i1 %exitcond371.not, label %._crit_edge297, label %vec.epilog.scalar.ph, !llvm.loop !106

._crit_edge297:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block469
  %.lcssa447 = phi ptr [ %i.eb, %vec.epilog.middle.block ], [ %i.dx, %middle.block469 ], [ %i.ee, %vec.epilog.scalar.ph ]
  %i.eg = add nuw nsw i32 %.0250300, 1            ; 2 uses
  %exitcond372.not = icmp eq i32 %i.eg, %i.d
  br i1 %exitcond372.not, label %.loopexit, label %iter.check, !llvm.loop !107

bb.e:                                             ; preds = %bb.d
  %i.eh = lshr i8 %.sroa.0130.0.copyload, 3
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.i, %i.ei             ; 2 uses
  %i.ek = lshr i8 %i.f, 2
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = mul nuw nsw i32 %i.i, %i.el             ; 2 uses
  %i.en = lshr i8 %.sroa.15.0.copyload, 3
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = mul nuw nsw i32 %i.eo, %i.i             ; 2 uses
  %i.eq = icmp sgt i32 %i.d, 0
  br i1 %i.eq, label %.preheader288.lr.ph, label %.loopexit

.preheader288.lr.ph:                              ; preds = %bb.e
  %i.er = icmp sgt i32 %i.c, 0
  %i.es = zext i8 %i.j to i32                     ; 4 uses
  %i.et = sext i32 %i.dm to i64                   ; 2 uses
  br i1 %i.er, label %.preheader288.preheader, label %.loopexit

.preheader288.preheader:                          ; preds = %.preheader288.lr.ph
  %i.eu = mul i32 %i.dk, %4
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %2, i64 %i.ev
  %i.ex = shl i32 %i.dl, 1
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 %i.ey
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %i.fa = mul nsw i64 %i.et, -2
  %i.fb = add i64 %i.a, %i.ev
  %i.fc = add i64 %i.fb, %i.ey
  %min.iters.check = icmp ult i32 %i.c, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.fd = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert451 = insertelement <8 x i32> poison, i32 %i.ep, i64 0
  %broadcast.splat452 = shufflevector <8 x i32> %broadcast.splatinsert451, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert453 = insertelement <8 x i32> poison, i32 %i.em, i64 0
  %broadcast.splat454 = shufflevector <8 x i32> %broadcast.splatinsert453, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert455 = insertelement <8 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat456 = shufflevector <8 x i32> %broadcast.splatinsert455, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader288.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.0248294 = phi i32 [ 0, %.preheader288.preheader ], [ %i.hk, %._crit_edge ]
  %.2253293 = phi ptr [ %3, %.preheader288.preheader ], [ %.lcssa448, %._crit_edge ] ; 5 uses
  %.1256292 = phi ptr [ %i.ez, %.preheader288.preheader ], [ %i.hj, %._crit_edge ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader288
  %.2253293450 = ptrtoaddr ptr %.2253293 to i64
  %i.fe = mul i64 %indvar, %i.fa
  %i.ff = sub i64 %i.fe, %i.fc
  %i.fg = add i64 %i.ff, %.2253293450
  %i.fh = add i64 %i.fg, -1
  %diff.check = icmp ult i64 %i.fh, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fi = getelementptr i8, ptr %.2253293, i64 %i.fd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2253293, i64 %i.fj
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.1256292, i64 %index
  %wide.load = load <8 x i16>, ptr %i.fk, align 2, !tbaa !43
  %i.fl = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load) ; 3 uses
  %i.fm = lshr <8 x i16> %i.fl, splat (i16 11)
  %i.fn = zext nneg <8 x i16> %i.fm to <8 x i32>
  %i.fo = mul nuw nsw <8 x i32> %broadcast.splat, %i.fn
  %i.fp = add nuw nsw <8 x i32> %i.fo, %broadcast.splat452
  %i.fq = shl nuw nsw <8 x i32> %i.fp, splat (i32 3)
  %i.fr = and <8 x i32> %i.fq, splat (i32 63488)
  %i.fs = lshr <8 x i16> %i.fl, splat (i16 5)
  %i.ft = and <8 x i16> %i.fs, splat (i16 63)
  %i.fu = zext nneg <8 x i16> %i.ft to <8 x i32>
  %i.fv = mul nuw nsw <8 x i32> %broadcast.splat, %i.fu
  %i.fw = add nuw nsw <8 x i32> %i.fv, %broadcast.splat454
  %i.fx = lshr <8 x i32> %i.fw, splat (i32 3)
  %i.fy = and <8 x i32> %i.fx, splat (i32 2016)
  %i.fz = and <8 x i16> %i.fl, splat (i16 31)
  %i.ga = zext nneg <8 x i16> %i.fz to <8 x i32>
  %i.gb = mul nuw nsw <8 x i32> %broadcast.splat, %i.ga
  %i.gc = add nuw nsw <8 x i32> %i.gb, %broadcast.splat456
  %i.gd = lshr <8 x i32> %i.gc, splat (i32 8)
  %i.ge = or disjoint <8 x i32> %i.fr, %i.gd
  %i.gf = add nuw nsw <8 x i32> %i.ge, %i.fy
  %i.gg = trunc <8 x i32> %i.gf to <8 x i16>
  %i.gh = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.gg)
  store <8 x i16> %i.gh, ptr %next.gep, align 2, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader288, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader288 ], [ %n.vec, %middle.block ]
  %.3254290.ph = phi ptr [ %.2253293, %vector.memcheck ], [ %.2253293, %.preheader288 ], [ %i.fi, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.3254290 = phi ptr [ %i.hi, %scalar.ph ], [ %.3254290.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.1256292, i64 %indvars.iv
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !43
  %i.gl = call noundef i16 @llvm.bswap.i16(i16 %i.gk) ; 3 uses
  %i.gm = lshr i16 %i.gl, 11
  %i.gn = zext nneg i16 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, %i.es
  %i.gp = add nuw nsw i32 %i.go, %i.ep
  %i.gq = shl nuw nsw i32 %i.gp, 3
  %i.gr = and i32 %i.gq, 63488
  %i.gs = lshr i16 %i.gl, 5
  %i.gt = and i16 %i.gs, 63
  %i.gu = zext nneg i16 %i.gt to i32
  %i.gv = mul nuw nsw i32 %i.gu, %i.es
  %i.gw = add nuw nsw i32 %i.gv, %i.em
  %i.gx = lshr i32 %i.gw, 3
  %i.gy = and i32 %i.gx, 2016
  %i.gz = and i16 %i.gl, 31
  %i.ha = zext nneg i16 %i.gz to i32
  %i.hb = mul nuw nsw i32 %i.ha, %i.es
  %i.hc = add nuw nsw i32 %i.hb, %i.ej
  %i.hd = lshr i32 %i.hc, 8
  %i.he = or disjoint i32 %i.gr, %i.hd
  %i.hf = add nuw nsw i32 %i.he, %i.gy
  %i.hg = trunc i32 %i.hf to i16
  %i.hh = call noundef i16 @llvm.bswap.i16(i16 %i.hg)
  store i16 %i.hh, ptr %.3254290, align 2, !tbaa !43
  %i.hi = getelementptr inbounds nuw i8, ptr %.3254290, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa448 = phi ptr [ %i.fi, %middle.block ], [ %i.hi, %scalar.ph ]
  %i.hj = getelementptr inbounds [2 x i8], ptr %.1256292, i64 %i.et
  %i.hk = add nuw nsw i32 %.0248294, 1            ; 2 uses
  %exitcond370.not = icmp eq i32 %i.hk, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond370.not, label %.loopexit, label %.preheader288, !llvm.loop !110

bb.f:                                             ; preds = %bb.a
  %i.hl = icmp eq i32 %5, 16                      ; 2 uses
  %i.hm = add i32 %5, -15
  %or.cond5 = icmp ult i32 %i.hm, 3
  br i1 %or.cond5, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.hn = call zeroext i8 @lv_color_format_get_size(i32 noundef %5) #6 ; 3 uses
  %i.ho = zext i8 %i.hn to i32                    ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !25
  %i.hr = mul nsw i32 %i.hq, %4
  %i.hs = load i32, ptr %7, align 8, !tbaa !27
  %i.ht = mul i32 %i.hs, %i.ho
  %i.hu = add i32 %i.ht, %i.hr
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 %i.hv ; 3 uses
  %i.hx = icmp ugt i8 %i.h, -4
  br i1 %i.hx, label %.preheader275, label %bb.j

.preheader275:                                    ; preds = %bb.g
  %i.hy = icmp sgt i32 %i.d, 0
  br i1 %i.hy, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader275
  %i.hz = icmp sgt i32 %i.c, 0
  %i.ia = zext i8 %i.hn to i64                    ; 16 uses
  %i.ib = mul i32 %i.c, %i.ho
  %i.ic = sub i32 %4, %i.ib
  %i.id = zext i32 %i.ic to i64
  br i1 %i.hz, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %i.hl, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.ie = add nsw i32 %i.c, -1
  %xtraiter = and i32 %i.c, 3                     ; 3 uses
  %i.if = icmp ult i32 %i.ie, 3
  %unroll_iter = and i32 %i.c, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod564 = icmp ne i32 %xtraiter, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.ig = add nsw i32 %i.c, -1
  %xtraiter566 = and i32 %i.c, 3                  ; 3 uses
  %i.ih = icmp ult i32 %i.ig, 3
  %unroll_iter572 = and i32 %i.c, 2147483644
  %lcmp.mod568.not = icmp eq i32 %xtraiter566, 0
  %lcmp.mod571 = icmp ne i32 %xtraiter566, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge338.split.us.us
  %.0344.us = phi ptr [ %i.jt, %._crit_edge338.split.us.us ], [ %i.hw, %.preheader.us.preheader ] ; 2 uses
  %.0235343.us = phi ptr [ %.lcssa, %._crit_edge338.split.us.us ], [ %3, %.preheader.us.preheader ] ; 2 uses
  %.0246342.us = phi i32 [ %i.ju, %._crit_edge338.split.us.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.ih, label %.epil.preheader565, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.1337.us.us = phi ptr [ %i.ji, %.preheader.us.new ], [ %.0344.us, %.preheader.us ] ; 2 uses
  %.1236336.us.us = phi ptr [ %i.jj, %.preheader.us.new ], [ %.0235343.us, %.preheader.us ] ; 5 uses
  %niter573 = phi i32 [ %niter573.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  store i8 %.sroa.0130.0.copyload, ptr %.1236336.us.us, align 1, !tbaa !38
  %i.ii = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 1
  store i8 %i.f, ptr %i.ii, align 1, !tbaa !38
  %i.ij = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.ij, align 1, !tbaa !38
  %i.ik = getelementptr inbounds nuw i8, ptr %.1337.us.us, i64 3
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !38
  %i.im = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 3
  store i8 %i.il, ptr %i.im, align 1, !tbaa !38
  %i.in = getelementptr inbounds nuw i8, ptr %.1337.us.us, i64 %i.ia ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 %i.ia ; 5 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.io, align 1, !tbaa !38
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  store i8 %i.f, ptr %i.ip, align 1, !tbaa !38
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.iq, align 1, !tbaa !38
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !38
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  store i8 %i.is, ptr %i.it, align 1, !tbaa !38
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ia ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ia ; 5 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.iv, align 1, !tbaa !38
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  store i8 %i.f, ptr %i.iw, align 1, !tbaa !38
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.ix, align 1, !tbaa !38
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 3
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !38
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 3
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !38
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ia ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ia ; 5 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.jc, align 1, !tbaa !38
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  store i8 %i.f, ptr %i.jd, align 1, !tbaa !38
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.je, align 1, !tbaa !38
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 3
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !38
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 3
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !38
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ia ; 2 uses
end_hunk_0
