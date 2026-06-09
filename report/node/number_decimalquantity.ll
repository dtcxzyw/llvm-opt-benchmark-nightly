inline.NumInlined: 255
inline.NumDeleted: 67
begin_hunk_0_@_ZN6icu_786number4impl15DecimalQuantity16roundToMagnitudeEi25UNumberFormatRoundingModebR10UErrorCode:bb.a
  %or.cond10.i217 = select i1 %i.o, i1 %.not.i, i1 false
  br i1 %or.cond10.i217, label %bb.c, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = zext nneg i32 %.0.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.d:                                             ; preds = %bb.a
  %or.cond.i215 = icmp ugt i32 %.0.i, 15
  br i1 %or.cond.i215, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl nuw nsw i32 %.0.i, 2
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %i.x, %i.z
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = and i8 %i.ab, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i216 = phi i8 [ %i.ac, %bb.e ], [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ] ; 20 uses
  %i.ad = icmp slt i32 %.0.i, 1                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 1
  %.not187 = icmp eq i8 %i.af, 0                  ; 2 uses
  %or.cond203 = select i1 %i.ad, i1 %.not187, i1 false
  br i1 %or.cond203, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  br i1 %3, label %switch.early.test, label %.critedge214

switch.early.test:                                ; preds = %bb.f
  switch i8 %.0.i216, label %bb.g [
    i8 5, label %.critedge214
    i8 0, label %.critedge214
  ]

bb.g:                                             ; preds = %switch.early.test, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.ah = load i32, ptr %i.ag, align 8            ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge214, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.select.i220 = tail call i32 @llvm.sadd.sat.i32(i32 %.0.i, i32 -1) ; 6 uses
  br i1 %i.n, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp sgt i32 %spec.select.i220, -1
  %.not.i224 = icmp slt i32 %spec.select.i220, %i.ah
  %or.cond10.i225 = and i1 %i.aj, %.not.i224
  br i1 %or.cond10.i225, label %bb.j, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit226

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = zext nneg i32 %spec.select.i220 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit226

bb.k:                                             ; preds = %bb.h
  %or.cond.i222 = icmp ugt i32 %spec.select.i220, 15
  br i1 %or.cond.i222, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit226, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = shl nuw nsw i32 %spec.select.i220, 2
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.aq, %i.as
  %i.au = trunc i64 %i.at to i8
  %i.av = and i8 %i.au, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit226

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit226: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i223 = phi i8 [ %i.av, %bb.l ], [ %i.ao, %bb.j ], [ 0, %bb.i ], [ 0, %bb.k ] ; 4 uses
  br i1 %.not187, label %bb.m, label %bb.t

bb.m:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit226
  br i1 %3, label %switch.early.test204, label %bb.q

switch.early.test204:                             ; preds = %bb.m
  switch i8 %.0.i216, label %bb.n [
    i8 7, label %bb.q
    i8 2, label %bb.q
  ]

bb.n:                                             ; preds = %switch.early.test204
  %i.aw = icmp slt i8 %.0.i216, 2
  br i1 %i.aw, label %.thread.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp samesign ult i8 %.0.i216, 5
  br i1 %i.ax, label %.thread297, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp samesign ult i8 %.0.i216, 7
  %. = select i1 %i.ay, i32 1, i32 3
  br label %.thread

bb.q:                                             ; preds = %switch.early.test204, %switch.early.test204, %bb.m
  %i.az = icmp slt i8 %.0.i223, 5
  br i1 %i.az, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not189 = icmp eq i8 %.0.i223, 5
  br i1 %.not189, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.sadd.sat.i32(i32 %.0.i, i32 -2) ; 2 uses
  %i.ba = icmp sgt i32 %spec.select, -1
  br i1 %i.ba, label %.lr.ph364, label %.loopexit

.lr.ph364:                                        ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %.cast378 = inttoptr i64 %i.bc to ptr
  %i.bd = zext nneg i32 %spec.select to i64       ; 2 uses
  br i1 %i.n, label %.lr.ph364.split.us.preheader, label %.lr.ph364.split

.lr.ph364.split.us.preheader:                     ; preds = %.lr.ph364
  %i.be = sext i32 %i.ah to i64
  br label %.lr.ph364.split.us

.lr.ph364.split.us:                               ; preds = %.lr.ph364.split.us.preheader, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread.us
  %indvars.iv402 = phi i64 [ %i.bd, %.lr.ph364.split.us.preheader ], [ %indvars.iv.next403, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread.us ] ; 4 uses
  %.not.i233.us = icmp slt i64 %indvars.iv402, %i.be
  br i1 %.not.i233.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread.us

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.us: ; preds = %.lr.ph364.split.us
  %i.bf = getelementptr inbounds nuw i8, ptr %.cast378, i64 %indvars.iv402
  %i.bg = load i8, ptr %i.bf, align 1
  %.not190.us = icmp eq i8 %i.bg, 0
  br i1 %.not190.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread.us, label %.loopexit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread.us: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.us, %.lr.ph364.split.us
  %indvars.iv.next403 = add nsw i64 %indvars.iv402, -1
  %i.bh = icmp sgt i64 %indvars.iv402, 0
  br i1 %i.bh, label %.lr.ph364.split.us, label %.loopexit, !llvm.loop !36

.lr.ph364.split:                                  ; preds = %.lr.ph364, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread ], [ %i.bd, %.lr.ph364 ] ; 4 uses
  %or.cond.i231 = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %or.cond.i231, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235: ; preds = %.lr.ph364.split
  %i.bi = shl nuw nsw i64 %indvars.iv, 2
  %i.bj = shl nuw i64 15, %i.bi
  %i.bk = and i64 %i.bc, %i.bj
  %.not190 = icmp eq i64 %i.bk, 0
  br i1 %.not190, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread, label %.loopexit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread: ; preds = %.lr.ph364.split, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bl = icmp sgt i64 %indvars.iv, 0
  br i1 %i.bl, label %.lr.ph364.split, label %.loopexit, !llvm.loop !36

bb.t:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit226
  %spec.select.i238 = tail call i32 @llvm.sadd.sat.i32(i32 %.0.i, i32 -2) ; 26 uses
  %i.bm = add nsw i32 %i.ah, -14
  %i.bn = tail call i32 @uprv_max_78(i32 noundef 0, i32 noundef %i.bm) #21 ; 16 uses
  switch i8 %.0.i223, label %bb.ag [
    i8 0, label %bb.u
    i8 4, label %bb.w
    i8 5, label %bb.aa
    i8 9, label %bb.ac
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %3, label %switch.early.test205, label %bb.v

switch.early.test205:                             ; preds = %bb.u
  switch i8 %.0.i216, label %bb.ah [
    i8 5, label %bb.v
    i8 0, label %bb.v
    i8 7, label %bb.ak
    i8 2, label %bb.ak
  ]

bb.v:                                             ; preds = %switch.early.test205, %switch.early.test205, %bb.u
  %.not197354 = icmp slt i32 %spec.select.i238, %i.bn
  br i1 %.not197354, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %.lr.ph357

.lr.ph357:                                        ; preds = %bb.v
  %i.bo = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  %i.bs = load i32, ptr %i.ag, align 8
  %.cast377 = inttoptr i64 %i.br to ptr
  br i1 %i.bp, label %.lr.ph357.split.us, label %.lr.ph357.split.preheader

.lr.ph357.split.preheader:                        ; preds = %.lr.ph357
  %5 = add nsw i32 %spec.select.i238, 1
  %6 = sub i32 %5, %i.bn                          ; 3 uses
  %min.iters.check523 = icmp ult i32 %6, 16
  br i1 %min.iters.check523, label %.lr.ph357.split.preheader548, label %vector.ph524

vector.ph524:                                     ; preds = %.lr.ph357.split.preheader
  %n.vec526 = and i32 %6, -16                     ; 3 uses
  %i.bt = sub i32 %spec.select.i238, %n.vec526
  %broadcast.splatinsert527 = insertelement <16 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat528 = shufflevector <16 x i64> %broadcast.splatinsert527, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert529 = insertelement <16 x i32> poison, i32 %spec.select.i238, i64 0
  %broadcast.splat530 = shufflevector <16 x i32> %broadcast.splatinsert529, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bu = add nsw <16 x i32> %broadcast.splat530, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body.interim536, %vector.ph524
  %index532 = phi i32 [ 0, %vector.ph524 ], [ %index.next534, %vector.body.interim536 ]
  %vec.ind533 = phi <16 x i32> [ %i.bu, %vector.ph524 ], [ %vec.ind.next535, %vector.body.interim536 ] ; 3 uses
  %i.bv = icmp ult <16 x i32> %vec.ind533, splat (i32 16)
  %i.bw = shl nuw nsw <16 x i32> %vec.ind533, splat (i32 2)
  %i.bx = zext nneg <16 x i32> %i.bw to <16 x i64>
  %i.by = shl nuw <16 x i64> splat (i64 15), %i.bx
  %i.bz = and <16 x i64> %broadcast.splat528, %i.by
  %i.ca = icmp ne <16 x i64> %i.bz, zeroinitializer
  %i.cb = select <16 x i1> %i.bv, <16 x i1> %i.ca, <16 x i1> zeroinitializer
  %i.cc = freeze <16 x i1> %i.cb
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %.not543 = icmp eq i16 %i.cd, 0
  br i1 %.not543, label %vector.body.interim536, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

vector.body.interim536:                           ; preds = %vector.body531
  %vec.ind.next535 = add nsw <16 x i32> %vec.ind533, splat (i32 -16)
  %index.next534 = add nuw i32 %index532, 16      ; 2 uses
  %i.ce = icmp eq i32 %index.next534, %n.vec526
  br i1 %i.ce, label %middle.block537, label %vector.body531, !llvm.loop !37

middle.block537:                                  ; preds = %vector.body.interim536
  %cmp.n538 = icmp eq i32 %6, %n.vec526
  br i1 %cmp.n538, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %.lr.ph357.split.preheader548

.lr.ph357.split.preheader548:                     ; preds = %.lr.ph357.split.preheader, %middle.block537
  %.0178355.ph = phi i32 [ %spec.select.i238, %.lr.ph357.split.preheader ], [ %i.bt, %middle.block537 ]
  br label %.lr.ph357.split

.lr.ph357.split.us:                               ; preds = %.lr.ph357, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread.us
  %.0178355.us = phi i32 [ %i.cj, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread.us ], [ %spec.select.i238, %.lr.ph357 ] ; 5 uses
  %i.cf = icmp sgt i32 %.0178355.us, -1
  %.not.i242.us = icmp slt i32 %.0178355.us, %i.bs
  %or.cond10.i243.us = select i1 %i.cf, i1 %.not.i242.us, i1 false
  br i1 %or.cond10.i243.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread.us

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.us: ; preds = %.lr.ph357.split.us
  %i.cg = zext nneg i32 %.0178355.us to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.cast377, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %.not198.us = icmp eq i8 %i.ci, 0
  br i1 %.not198.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread.us: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.us, %.lr.ph357.split.us
  %i.cj = add nsw i32 %.0178355.us, -1
  %.not197.us.not = icmp sgt i32 %.0178355.us, %i.bn
  br i1 %.not197.us.not, label %.lr.ph357.split.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, !llvm.loop !40

.lr.ph357.split:                                  ; preds = %.lr.ph357.split.preheader548, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread
  %.0178355 = phi i32 [ %i.co, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread ], [ %.0178355.ph, %.lr.ph357.split.preheader548 ] ; 4 uses
  %or.cond.i240 = icmp ugt i32 %.0178355, 15
  br i1 %or.cond.i240, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244: ; preds = %.lr.ph357.split
  %i.ck = shl nuw nsw i32 %.0178355, 2
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw i64 15, %i.cl
  %i.cn = and i64 %i.br, %i.cm
  %.not198 = icmp eq i64 %i.cn, 0
  br i1 %.not198, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread: ; preds = %.lr.ph357.split, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244
  %i.co = add nsw i32 %.0178355, -1
  %.not197.not = icmp sgt i32 %.0178355, %i.bn
  br i1 %.not197.not, label %.lr.ph357.split, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, !llvm.loop !41

bb.w:                                             ; preds = %bb.t
  br i1 %3, label %switch.early.test206, label %bb.x

switch.early.test206:                             ; preds = %bb.w
  switch i8 %.0.i216, label %bb.ah [
    i8 7, label %bb.x
    i8 2, label %bb.x
  ]

bb.x:                                             ; preds = %switch.early.test206, %switch.early.test206, %bb.w
  %.not195335 = icmp slt i32 %spec.select.i238, %i.bn
  br i1 %.not195335, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %.lr.ph337

.lr.ph337:                                        ; preds = %bb.x
  %i.cp = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = load i64, ptr %i.cr, align 8            ; 3 uses
  %.cast376 = inttoptr i64 %i.cs to ptr
  br i1 %i.cq, label %.lr.ph337.split.us.preheader, label %.lr.ph337.split.preheader

.lr.ph337.split.preheader:                        ; preds = %.lr.ph337
  %7 = add nsw i32 %spec.select.i238, 1
  %8 = sub i32 %7, %i.bn                          ; 3 uses
  %min.iters.check501 = icmp ult i32 %8, 16
  br i1 %min.iters.check501, label %.lr.ph337.split.preheader553, label %vector.ph502

vector.ph502:                                     ; preds = %.lr.ph337.split.preheader
  %n.vec504 = and i32 %8, -16                     ; 3 uses
  %i.ct = sub i32 %spec.select.i238, %n.vec504
  %broadcast.splatinsert505 = insertelement <16 x i64> poison, i64 %i.cs, i64 0
  %broadcast.splat506 = shufflevector <16 x i64> %broadcast.splatinsert505, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert507 = insertelement <16 x i32> poison, i32 %spec.select.i238, i64 0
  %broadcast.splat508 = shufflevector <16 x i32> %broadcast.splatinsert507, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cu = add nsw <16 x i32> %broadcast.splat508, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  br label %vector.body509

vector.body509:                                   ; preds = %vector.body.interim514, %vector.ph502
  %index510 = phi i32 [ 0, %vector.ph502 ], [ %index.next512, %vector.body.interim514 ]
  %vec.ind511 = phi <16 x i32> [ %i.cu, %vector.ph502 ], [ %vec.ind.next513, %vector.body.interim514 ] ; 3 uses
  %i.cv = icmp ugt <16 x i32> %vec.ind511, splat (i32 15)
  %i.cw = shl nuw nsw <16 x i32> %vec.ind511, splat (i32 2)
  %i.cx = zext nneg <16 x i32> %i.cw to <16 x i64>
  %i.cy = lshr <16 x i64> %broadcast.splat506, %i.cx
  %i.cz = and <16 x i64> %i.cy, splat (i64 15)
  %i.da = icmp ne <16 x i64> %i.cz, splat (i64 9)
  %i.db = select <16 x i1> %i.cv, <16 x i1> splat (i1 true), <16 x i1> %i.da
  %i.dc = freeze <16 x i1> %i.db
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %.not542 = icmp eq i16 %i.dd, 0
  br i1 %.not542, label %vector.body.interim514, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

vector.body.interim514:                           ; preds = %vector.body509
  %vec.ind.next513 = add nsw <16 x i32> %vec.ind511, splat (i32 -16)
  %index.next512 = add nuw i32 %index510, 16      ; 2 uses
  %i.de = icmp eq i32 %index.next512, %n.vec504
  br i1 %i.de, label %middle.block515, label %vector.body509, !llvm.loop !42

middle.block515:                                  ; preds = %vector.body.interim514
  %cmp.n516 = icmp eq i32 %8, %n.vec504
  br i1 %cmp.n516, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %.lr.ph337.split.preheader553

.lr.ph337.split.preheader553:                     ; preds = %.lr.ph337.split.preheader, %middle.block515
  %.1179336.ph = phi i32 [ %spec.select.i238, %.lr.ph337.split.preheader ], [ %i.ct, %middle.block515 ]
  br label %.lr.ph337.split

.lr.ph337.split.us.preheader:                     ; preds = %.lr.ph337
  %i.df = load i32, ptr %i.ag, align 8
  %.not.i247.us = icmp slt i32 %spec.select.i238, %i.df
  br label %.lr.ph337.split.us

.lr.ph337.split.us:                               ; preds = %.lr.ph337.split.us.preheader, %bb.y
  %.1179336.us = phi i32 [ %i.dh, %bb.y ], [ %spec.select.i238, %.lr.ph337.split.us.preheader ] ; 4 uses
  %i.dg = icmp sgt i32 %.1179336.us, -1
  %or.cond10.i248.us = select i1 %i.dg, i1 %.not.i247.us, i1 false
  br i1 %or.cond10.i248.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

bb.y:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.us
  %i.dh = add nsw i32 %.1179336.us, -1
  %.not195.us.not = icmp sgt i32 %.1179336.us, %i.bn
  br i1 %.not195.us.not, label %.lr.ph337.split.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, !llvm.loop !43

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.us: ; preds = %.lr.ph337.split.us
  %i.di = zext nneg i32 %.1179336.us to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.cast376, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %.not196.us = icmp eq i8 %i.dk, 9
  br i1 %.not196.us, label %bb.y, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

bb.z:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249
  %i.dl = add nsw i32 %.1179336, -1
  %.not195.not = icmp sgt i32 %.1179336, %i.bn
  br i1 %.not195.not, label %.lr.ph337.split, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, !llvm.loop !44

.lr.ph337.split:                                  ; preds = %.lr.ph337.split.preheader553, %bb.z
  %.1179336 = phi i32 [ %i.dl, %bb.z ], [ %.1179336.ph, %.lr.ph337.split.preheader553 ] ; 4 uses
  %or.cond.i245 = icmp ugt i32 %.1179336, 15
  br i1 %or.cond.i245, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249: ; preds = %.lr.ph337.split
  %i.dm = shl nuw nsw i32 %.1179336, 2
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = lshr i64 %i.cs, %i.dn
  %i.dp = and i64 %i.do, 15
  %.not196 = icmp eq i64 %i.dp, 9
  br i1 %.not196, label %bb.z, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

bb.aa:                                            ; preds = %bb.t
  br i1 %3, label %switch.early.test207, label %bb.ab

switch.early.test207:                             ; preds = %bb.aa
  switch i8 %.0.i216, label %bb.ah [
    i8 7, label %bb.ab
    i8 2, label %bb.ab
  ]

bb.ab:                                            ; preds = %switch.early.test207, %switch.early.test207, %bb.aa
  %.not193323 = icmp slt i32 %spec.select.i238, %i.bn
  br i1 %.not193323, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.ab
  %i.dq = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dt = load i64, ptr %i.ds, align 8            ; 3 uses
  %i.du = load i32, ptr %i.ag, align 8
  %.cast375 = inttoptr i64 %i.dt to ptr
  br i1 %i.dr, label %.lr.ph326.split.us, label %.lr.ph326.split.preheader

.lr.ph326.split.preheader:                        ; preds = %.lr.ph326
  %9 = add nsw i32 %spec.select.i238, 1
  %10 = sub i32 %9, %i.bn                         ; 3 uses
  %min.iters.check483 = icmp ult i32 %10, 16
  br i1 %min.iters.check483, label %.lr.ph326.split.preheader561, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph326.split.preheader
  %n.vec486 = and i32 %10, -16                    ; 3 uses
  %i.dv = sub i32 %spec.select.i238, %n.vec486
  %broadcast.splatinsert487 = insertelement <16 x i64> poison, i64 %i.dt, i64 0
  %broadcast.splat488 = shufflevector <16 x i64> %broadcast.splatinsert487, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert489 = insertelement <16 x i32> poison, i32 %spec.select.i238, i64 0
  %broadcast.splat490 = shufflevector <16 x i32> %broadcast.splatinsert489, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dw = add nsw <16 x i32> %broadcast.splat490, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body.interim496, %vector.ph484
  %index492 = phi i32 [ 0, %vector.ph484 ], [ %index.next494, %vector.body.interim496 ]
  %vec.ind493 = phi <16 x i32> [ %i.dw, %vector.ph484 ], [ %vec.ind.next495, %vector.body.interim496 ] ; 3 uses
  %i.dx = icmp ult <16 x i32> %vec.ind493, splat (i32 16)
  %i.dy = shl nuw nsw <16 x i32> %vec.ind493, splat (i32 2)
  %i.dz = zext nneg <16 x i32> %i.dy to <16 x i64>
  %i.ea = shl nuw <16 x i64> splat (i64 15), %i.dz
  %i.eb = and <16 x i64> %broadcast.splat488, %i.ea
  %i.ec = icmp ne <16 x i64> %i.eb, zeroinitializer
  %i.ed = select <16 x i1> %i.dx, <16 x i1> %i.ec, <16 x i1> zeroinitializer
  %i.ee = freeze <16 x i1> %i.ed
  %i.ef = bitcast <16 x i1> %i.ee to i16
  %.not541 = icmp eq i16 %i.ef, 0
  br i1 %.not541, label %vector.body.interim496, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

vector.body.interim496:                           ; preds = %vector.body491
  %vec.ind.next495 = add nsw <16 x i32> %vec.ind493, splat (i32 -16)
  %index.next494 = add nuw i32 %index492, 16      ; 2 uses
  %i.eg = icmp eq i32 %index.next494, %n.vec486
  br i1 %i.eg, label %middle.block497, label %vector.body491, !llvm.loop !45

middle.block497:                                  ; preds = %vector.body.interim496
  %cmp.n498 = icmp eq i32 %10, %n.vec486
  br i1 %cmp.n498, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %.lr.ph326.split.preheader561

.lr.ph326.split.preheader561:                     ; preds = %.lr.ph326.split.preheader, %middle.block497
  %.2180324.ph = phi i32 [ %spec.select.i238, %.lr.ph326.split.preheader ], [ %i.dv, %middle.block497 ]
  br label %.lr.ph326.split

.lr.ph326.split.us:                               ; preds = %.lr.ph326, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread.us
  %.2180324.us = phi i32 [ %i.el, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread.us ], [ %spec.select.i238, %.lr.ph326 ] ; 5 uses
  %i.eh = icmp sgt i32 %.2180324.us, -1
  %.not.i252.us = icmp slt i32 %.2180324.us, %i.du
  %or.cond10.i253.us = select i1 %i.eh, i1 %.not.i252.us, i1 false
  br i1 %or.cond10.i253.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread.us

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.us: ; preds = %.lr.ph326.split.us
  %i.ei = zext nneg i32 %.2180324.us to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %.cast375, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1
  %.not194.us = icmp eq i8 %i.ek, 0
  br i1 %.not194.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread.us: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.us, %.lr.ph326.split.us
  %i.el = add nsw i32 %.2180324.us, -1
  %.not193.us.not = icmp sgt i32 %.2180324.us, %i.bn
  br i1 %.not193.us.not, label %.lr.ph326.split.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, !llvm.loop !46

.lr.ph326.split:                                  ; preds = %.lr.ph326.split.preheader561, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread
  %.2180324 = phi i32 [ %i.eq, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread ], [ %.2180324.ph, %.lr.ph326.split.preheader561 ] ; 4 uses
  %or.cond.i250 = icmp ugt i32 %.2180324, 15
  br i1 %or.cond.i250, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254: ; preds = %.lr.ph326.split
  %i.em = shl nuw nsw i32 %.2180324, 2
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl nuw i64 15, %i.en
  %i.ep = and i64 %i.dt, %i.eo
  %.not194 = icmp eq i64 %i.ep, 0
  br i1 %.not194, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread: ; preds = %.lr.ph326.split, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254
  %i.eq = add nsw i32 %.2180324, -1
  %.not193.not = icmp sgt i32 %.2180324, %i.bn
  br i1 %.not193.not, label %.lr.ph326.split, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, !llvm.loop !47

bb.ac:                                            ; preds = %bb.t
  br i1 %3, label %switch.early.test208, label %bb.ad

switch.early.test208:                             ; preds = %bb.ac
  switch i8 %.0.i216, label %bb.ah [
    i8 9, label %bb.ad
    i8 4, label %bb.ad
    i8 7, label %bb.ak
    i8 2, label %bb.ak
  ]

bb.ad:                                            ; preds = %switch.early.test208, %switch.early.test208, %bb.ac
  %.not191314 = icmp slt i32 %spec.select.i238, %i.bn
  br i1 %.not191314, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.er = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eu = load i64, ptr %i.et, align 8            ; 3 uses
  %.cast = inttoptr i64 %i.eu to ptr
  br i1 %i.es, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %11 = add nsw i32 %spec.select.i238, 1
  %12 = sub i32 %11, %i.bn                        ; 3 uses
  %min.iters.check = icmp ult i32 %12, 16
  br i1 %min.iters.check, label %.lr.ph.split.preheader568, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i32 %12, -16                       ; 3 uses
  %i.ev = sub i32 %spec.select.i238, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.eu, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert480 = insertelement <16 x i32> poison, i32 %spec.select.i238, i64 0
  %broadcast.splat481 = shufflevector <16 x i32> %broadcast.splatinsert480, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ew = add nsw <16 x i32> %broadcast.splat481, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ %i.ew, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.ex = icmp ugt <16 x i32> %vec.ind, splat (i32 15)
  %i.ey = shl nuw nsw <16 x i32> %vec.ind, splat (i32 2)
  %i.ez = zext nneg <16 x i32> %i.ey to <16 x i64>
  %i.fa = lshr <16 x i64> %broadcast.splat, %i.ez
  %i.fb = and <16 x i64> %i.fa, splat (i64 15)
  %i.fc = icmp ne <16 x i64> %i.fb, splat (i64 9)
  %i.fd = select <16 x i1> %i.ex, <16 x i1> splat (i1 true), <16 x i1> %i.fc
  %i.fe = freeze <16 x i1> %i.fd
  %i.ff = bitcast <16 x i1> %i.fe to i16
  %.not = icmp eq i16 %i.ff, 0
  br i1 %.not, label %vector.body.interim, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.fg = icmp eq i32 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %12, %n.vec
  br i1 %cmp.n, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %.lr.ph.split.preheader568

.lr.ph.split.preheader568:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %.3181315.ph = phi i32 [ %spec.select.i238, %.lr.ph.split.preheader ], [ %i.ev, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.fh = load i32, ptr %i.ag, align 8
  %.not.i257.us = icmp slt i32 %spec.select.i238, %i.fh
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.ae
  %.3181315.us = phi i32 [ %i.fj, %bb.ae ], [ %spec.select.i238, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.fi = icmp sgt i32 %.3181315.us, -1
  %or.cond10.i258.us = select i1 %i.fi, i1 %.not.i257.us, i1 false
  br i1 %or.cond10.i258.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

bb.ae:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259.us
  %i.fj = add nsw i32 %.3181315.us, -1
  %.not191.us.not = icmp sgt i32 %.3181315.us, %i.bn
  br i1 %.not191.us.not, label %.lr.ph.split.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, !llvm.loop !49

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259.us: ; preds = %.lr.ph.split.us
  %i.fk = zext nneg i32 %.3181315.us to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.cast, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %.not192.us = icmp eq i8 %i.fm, 9
  br i1 %.not192.us, label %bb.ae, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

bb.af:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259
  %i.fn = add nsw i32 %.3181315, -1
  %.not191.not = icmp sgt i32 %.3181315, %i.bn
  br i1 %.not191.not, label %.lr.ph.split, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, !llvm.loop !50

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader568, %bb.af
  %.3181315 = phi i32 [ %i.fn, %bb.af ], [ %.3181315.ph, %.lr.ph.split.preheader568 ] ; 4 uses
  %or.cond.i255 = icmp ugt i32 %.3181315, 15
  br i1 %or.cond.i255, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259: ; preds = %.lr.ph.split
  %i.fo = shl nuw nsw i32 %.3181315, 2
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = lshr i64 %i.eu, %i.fp
  %i.fr = and i64 %i.fq, 15
  %.not192 = icmp eq i64 %i.fr, 9
  br i1 %.not192, label %bb.af, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

bb.ag:                                            ; preds = %bb.t
  br i1 %3, label %switch.early.test209, label %bb.ak

switch.early.test209:                             ; preds = %bb.ag
  switch i8 %.0.i216, label %bb.ah [
    i8 7, label %bb.ak
    i8 2, label %bb.ak
  ]

bb.ah:                                            ; preds = %switch.early.test208, %switch.early.test205, %switch.early.test206, %switch.early.test207, %switch.early.test209
  %i.fs = icmp slt i8 %.0.i216, 2
  br i1 %i.fs, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ft = icmp samesign ult i8 %.0.i216, 5
  br i1 %i.ft, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fu = icmp samesign ult i8 %.0.i216, 7
  %.210 = select i1 %i.fu, i32 1, i32 3
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

bb.ak:                                            ; preds = %switch.early.test208, %switch.early.test208, %switch.early.test205, %switch.early.test205, %switch.early.test209, %switch.early.test209, %bb.ag
  %i.fv = icmp slt i8 %.0.i223, 5
  %.211 = select i1 %i.fv, i32 1, i32 3
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread: ; preds = %vector.body, %bb.af, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259, %.lr.ph.split, %bb.ae, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259.us, %.lr.ph.split.us, %vector.body491, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread.us, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.us, %vector.body509, %bb.z, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249, %.lr.ph337.split, %bb.y, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.us, %.lr.ph337.split.us, %vector.body531, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread.us, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.us, %middle.block, %middle.block497, %middle.block515, %middle.block537, %bb.ad, %bb.ab, %bb.x, %bb.v, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.fw = phi i1 [ false, %bb.ak ], [ false, %bb.ah ], [ false, %middle.block537 ], [ false, %bb.ai ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread ], [ false, %bb.aj ], [ false, %bb.v ], [ true, %bb.z ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread.us ], [ false, %bb.ad ], [ true, %middle.block497 ], [ true, %bb.ab ], [ false, %vector.body509 ], [ false, %bb.ae ], [ true, %bb.x ], [ false, %middle.block ], [ false, %vector.body531 ], [ false, %bb.af ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread.us ], [ false, %vector.body491 ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread ], [ true, %middle.block515 ], [ false, %.lr.ph337.split.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244 ], [ true, %bb.y ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249 ], [ false, %.lr.ph337.split ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254 ], [ false, %.lr.ph.split.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259.us ], [ false, %.lr.ph.split ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259 ], [ false, %vector.body ]
  %.not199 = phi i1 [ true, %bb.ak ], [ true, %bb.ah ], [ false, %middle.block537 ], [ true, %bb.ai ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread ], [ true, %bb.aj ], [ false, %bb.v ], [ true, %bb.z ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread.us ], [ false, %bb.ad ], [ true, %middle.block497 ], [ true, %bb.ab ], [ true, %vector.body509 ], [ true, %.lr.ph.split.us ], [ true, %bb.x ], [ false, %middle.block ], [ true, %vector.body531 ], [ true, %.lr.ph.split ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread.us ], [ true, %vector.body491 ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244 ], [ true, %middle.block515 ], [ true, %bb.y ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread ], [ true, %.lr.ph337.split.us ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.us ], [ true, %.lr.ph337.split ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249 ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.us ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254 ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259.us ], [ false, %bb.ae ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259 ], [ false, %bb.af ], [ true, %vector.body ]
  %spec.store.select68 = phi i32 [ %.211, %bb.ak ], [ 1, %bb.ah ], [ 1, %middle.block537 ], [ 3, %bb.ai ], [ 2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread ], [ %.210, %bb.aj ], [ 1, %bb.v ], [ 2, %bb.z ], [ 2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.thread.us ], [ 3, %bb.ad ], [ 2, %middle.block497 ], [ 2, %bb.ab ], [ 1, %vector.body509 ], [ 3, %bb.ae ], [ 2, %bb.x ], [ 3, %middle.block ], [ 1, %vector.body531 ], [ 3, %bb.af ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread.us ], [ 3, %vector.body491 ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.thread ], [ 2, %middle.block515 ], [ 1, %.lr.ph337.split.us ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244.us ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit244 ], [ 2, %bb.y ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.us ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249 ], [ 1, %.lr.ph337.split ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254.us ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit254 ], [ 3, %.lr.ph.split.us ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259.us ], [ 3, %.lr.ph.split ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit259 ], [ 3, %vector.body ] ; 2 uses
  %switch.i = icmp ugt i32 %2, 3                  ; 2 uses
  %i.fx = load i32, ptr %i.ag, align 8
  %i.fy = add nsw i32 %i.fx, -14
  %i.fz = icmp slt i32 %spec.select.i220, %i.fy
  %or.cond48 = and i1 %switch.i, %i.fw
  %or.cond = or i1 %or.cond48, %i.fz
  %or.cond.not = xor i1 %or.cond, true
  %or.cond51.not = or i1 %switch.i, %.not199
  %or.cond212 = and i1 %or.cond51.not, %or.cond.not
  br i1 %or.cond212, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8
  call void @_ZN6icu_7817double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef %i.gd, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #21
  %i.ge = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.am, label %_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit

bb.am:                                            ; preds = %bb.al
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8
  call void @uprv_free_78(ptr noundef %i.gh) #21
  store i8 0, ptr %i.l, align 8
  br label %_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit

_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit: ; preds = %bb.al, %bb.am
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.gi, align 8
  store i32 0, ptr %i.e, align 4
  store i32 0, ptr %i.ag, align 8
  store i8 0, ptr %i.ae, align 1
  store double 0.000000e+00, ptr %i.gc, align 8
  store i32 0, ptr %i.ga, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.gj, align 4
  %i.gk = load i32, ptr %i.c, align 4
  %i.gl = load i32, ptr %i.d, align 4
  call void @_ZN6icu_786number4impl15DecimalQuantity25readDoubleConversionToBcdEPKcii(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %i.a, i32 noundef %i.gk, i32 noundef %i.gl)
  %i.gm = load i32, ptr %i.e, align 4
  %i.gn = add nsw i32 %i.gm, %i.gb
  store i32 %i.gn, ptr %i.e, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 1, ptr %i.go, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZN6icu_786number4impl15DecimalQuantity16roundToMagnitudeEi25UNumberFormatRoundingModebR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %.critedge214

bb.an:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit249.thread
  store i8 0, ptr %i.ae, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.gq, align 8
  br i1 %i.ad, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %switch.early.test213, label %.critedge214

switch.early.test213:                             ; preds = %bb.ao
  switch i8 %.0.i216, label %.thread [
    i8 5, label %.critedge214
    i8 0, label %.critedge214
  ]

.loopexit:                                        ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.us, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread.us, %bb.s, %bb.an, %bb.r, %bb.q
  %.3 = phi i32 [ %spec.store.select68, %bb.an ], [ 3, %bb.r ], [ 1, %bb.q ], [ 2, %bb.s ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.us ], [ 2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread.us ], [ 2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235.thread ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit235 ] ; 2 uses
  br i1 %3, label %.thread, label %bb.aq

.thread:                                          ; preds = %switch.early.test213, %bb.p, %.loopexit
  %.3287 = phi i32 [ %.3, %.loopexit ], [ %., %bb.p ], [ %spec.store.select68, %switch.early.test213 ] ; 4 uses
  %i.gr = add i8 %.0.i216, -8
  %or.cond61 = icmp ult i8 %i.gr, -6
  br i1 %or.cond61, label %.thread.thread, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.gs = icmp eq i8 %.0.i216, 2
end_hunk_0
