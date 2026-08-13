inline.NumInlined: 251
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6icu_786number4impl15DecimalQuantity16roundToMagnitudeEi25UNumberFormatRoundingModebR10UErrorCode:bb.a
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit224

bb.l:                                             ; preds = %bb.i
  %or.cond.i220 = icmp ugt i32 %spec.select.i218, 15
  br i1 %or.cond.i220, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit224, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !19
  %i.ar = shl nuw nsw i32 %spec.select.i218, 2
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.aq, %i.as
  %i.au = trunc i64 %i.at to i8
  %i.av = and i8 %i.au, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit224

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit224: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i221 = phi i8 [ %i.av, %bb.m ], [ %i.ao, %bb.k ], [ 0, %bb.j ], [ 0, %bb.l ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !22
  %.not188 = icmp eq i8 %i.ax, 0
  br i1 %.not188, label %bb.n, label %bb.u

bb.n:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit224
  br i1 %3, label %switch.early.test202, label %bb.r

switch.early.test202:                             ; preds = %bb.n
  switch i8 %.0.i214, label %bb.o [
    i8 7, label %bb.r
    i8 2, label %bb.r
  ]

bb.o:                                             ; preds = %switch.early.test202
  %i.ay = icmp slt i8 %.0.i214, 2
  br i1 %i.ay, label %.thread.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = icmp samesign ult i8 %.0.i214, 5
  br i1 %i.az, label %.thread295, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp samesign ult i8 %.0.i214, 7
  %. = select i1 %i.ba, i32 1, i32 3
  br label %.thread

bb.r:                                             ; preds = %switch.early.test202, %switch.early.test202, %bb.n
  %i.bb = icmp slt i8 %.0.i221, 5
  br i1 %i.bb, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not189 = icmp eq i8 %.0.i221, 5
  br i1 %.not189, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %spec.select = tail call i32 @llvm.sadd.sat.i32(i32 %.0.i, i32 -2) ; 2 uses
  %i.bc = icmp sgt i32 %spec.select, -1
  br i1 %i.bc, label %.lr.ph361, label %.loopexit

.lr.ph361:                                        ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = zext nneg i32 %spec.select to i64       ; 2 uses
  br i1 %i.n, label %.lr.ph361.split.us.preheader, label %.lr.ph361.split

.lr.ph361.split.us.preheader:                     ; preds = %.lr.ph361
  %i.bf = sext i32 %i.ah to i64
  br label %.lr.ph361.split.us

.lr.ph361.split.us:                               ; preds = %.lr.ph361.split.us.preheader, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread.us
  %indvars.iv394 = phi i64 [ %i.be, %.lr.ph361.split.us.preheader ], [ %indvars.iv.next395, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread.us ] ; 4 uses
  %.not.i231.us = icmp slt i64 %indvars.iv394, %i.bf
  br i1 %.not.i231.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread.us

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.us: ; preds = %.lr.ph361.split.us
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv394
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19
  %.not190.us = icmp eq i8 %i.bi, 0
  br i1 %.not190.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread.us, label %.loopexit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread.us: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.us, %.lr.ph361.split.us
  %indvars.iv.next395 = add nsw i64 %indvars.iv394, -1
  %i.bj = icmp sgt i64 %indvars.iv394, 0
  br i1 %i.bj, label %.lr.ph361.split.us, label %.loopexit, !llvm.loop !87

.lr.ph361.split:                                  ; preds = %.lr.ph361, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread ], [ %i.be, %.lr.ph361 ] ; 4 uses
  %or.cond.i229 = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %or.cond.i229, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233: ; preds = %.lr.ph361.split
  %i.bk = load i64, ptr %i.bd, align 8, !tbaa !19
  %i.bl = shl nuw nsw i64 %indvars.iv, 2
  %i.bm = shl nuw i64 15, %i.bl
  %i.bn = and i64 %i.bk, %i.bm
  %.not190 = icmp eq i64 %i.bn, 0
  br i1 %.not190, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread, label %.loopexit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread: ; preds = %.lr.ph361.split, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bo = icmp sgt i64 %indvars.iv, 0
  br i1 %i.bo, label %.lr.ph361.split, label %.loopexit, !llvm.loop !87

bb.u:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit224
  %spec.select.i236 = tail call i32 @llvm.sadd.sat.i32(i32 %.0.i, i32 -2) ; 14 uses
  %i.bp = add nsw i32 %i.ah, -14
  %i.bq = tail call i32 @uprv_max_78(i32 noundef 0, i32 noundef %i.bp) ; 12 uses
  switch i8 %.0.i221, label %bb.al [
    i8 0, label %bb.v
    i8 4, label %bb.y
    i8 5, label %bb.ad
    i8 9, label %bb.ag
  ]

bb.v:                                             ; preds = %bb.u
  br i1 %3, label %switch.early.test203, label %bb.w

switch.early.test203:                             ; preds = %bb.v
  switch i8 %.0.i214, label %bb.am [
    i8 5, label %bb.w
    i8 0, label %bb.w
    i8 7, label %bb.ap
    i8 2, label %bb.ap
  ]

bb.w:                                             ; preds = %switch.early.test203, %switch.early.test203, %bb.v
  %.not197351 = icmp slt i32 %spec.select.i236, %i.bq
  br i1 %.not197351, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, label %.lr.ph354

.lr.ph354:                                        ; preds = %bb.w
  %i.br = load i8, ptr %i.l, align 8, !tbaa !15, !range !17, !noundef !18
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.bs, label %.lr.ph354.split.us, label %.lr.ph354.split

.lr.ph354.split.us:                               ; preds = %.lr.ph354
  %i.bu = load i32, ptr %i.ag, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread.us, %.lr.ph354.split.us
  %.0178352.us = phi i32 [ %spec.select.i236, %.lr.ph354.split.us ], [ %i.ca, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread.us ] ; 5 uses
  %i.bv = icmp sgt i32 %.0178352.us, -1
  %.not.i240.us = icmp slt i32 %.0178352.us, %i.bu
  %or.cond10.i241.us = select i1 %i.bv, i1 %.not.i240.us, i1 false
  br i1 %or.cond10.i241.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread.us

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.us: ; preds = %bb.x
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.bx = zext nneg i32 %.0178352.us to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !19
  %.not198.us = icmp eq i8 %i.bz, 0
  br i1 %.not198.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread.us: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.us, %bb.x
  %i.ca = add nsw i32 %.0178352.us, -1
  %.not197.us.not = icmp sgt i32 %.0178352.us, %i.bq
  br i1 %.not197.us.not, label %bb.x, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, !llvm.loop !88

.lr.ph354.split:                                  ; preds = %.lr.ph354, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread
  %.0178352 = phi i32 [ %i.cg, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread ], [ %spec.select.i236, %.lr.ph354 ] ; 4 uses
  %or.cond.i238 = icmp ugt i32 %.0178352, 15
  br i1 %or.cond.i238, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242: ; preds = %.lr.ph354.split
  %i.cb = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.cc = shl nuw nsw i32 %.0178352, 2
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 15, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not198 = icmp eq i64 %i.cf, 0
  br i1 %.not198, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread: ; preds = %.lr.ph354.split, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242
  %i.cg = add nsw i32 %.0178352, -1
  %.not197.not = icmp sgt i32 %.0178352, %i.bq
  br i1 %.not197.not, label %.lr.ph354.split, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, !llvm.loop !88

bb.y:                                             ; preds = %bb.u
  br i1 %3, label %switch.early.test204, label %bb.z

switch.early.test204:                             ; preds = %bb.y
  switch i8 %.0.i214, label %bb.am [
    i8 7, label %bb.z
    i8 2, label %bb.z
  ]

bb.z:                                             ; preds = %switch.early.test204, %switch.early.test204, %bb.y
  %.not195332 = icmp slt i32 %spec.select.i236, %i.bq
  br i1 %.not195332, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, label %.lr.ph334

.lr.ph334:                                        ; preds = %bb.z
  %i.ch = load i8, ptr %i.l, align 8, !tbaa !15, !range !17, !noundef !18
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.ci, label %.lr.ph334.split.us, label %.lr.ph334.split

.lr.ph334.split.us:                               ; preds = %.lr.ph334
  %i.ck = load i32, ptr %i.ag, align 8
  %.not.i245.us = icmp slt i32 %spec.select.i236, %i.ck
  %.not.i245.us.fr = freeze i1 %.not.i245.us
  br i1 %.not.i245.us.fr, label %bb.aa, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

bb.aa:                                            ; preds = %.lr.ph334.split.us, %bb.ab
  %.1179333.us = phi i32 [ %i.cm, %bb.ab ], [ %spec.select.i236, %.lr.ph334.split.us ] ; 4 uses
  %i.cl = icmp sgt i32 %.1179333.us, -1
  br i1 %i.cl, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

bb.ab:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.us
  %i.cm = add nsw i32 %.1179333.us, -1
  %.not195.us.not = icmp sgt i32 %.1179333.us, %i.bq
  br i1 %.not195.us.not, label %bb.aa, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, !llvm.loop !89

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.us: ; preds = %bb.aa
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.co = zext nneg i32 %.1179333.us to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !19
  %.not196.us = icmp eq i8 %i.cq, 9
  br i1 %.not196.us, label %bb.ab, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

bb.ac:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247
  %i.cr = add nsw i32 %.1179333, -1
  %.not195.not = icmp sgt i32 %.1179333, %i.bq
  br i1 %.not195.not, label %.lr.ph334.split, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, !llvm.loop !89

.lr.ph334.split:                                  ; preds = %.lr.ph334, %bb.ac
  %.1179333 = phi i32 [ %i.cr, %bb.ac ], [ %spec.select.i236, %.lr.ph334 ] ; 4 uses
  %or.cond.i243 = icmp ugt i32 %.1179333, 15
  br i1 %or.cond.i243, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247: ; preds = %.lr.ph334.split
  %i.cs = load i64, ptr %i.cj, align 8, !tbaa !19
  %i.ct = shl nuw nsw i32 %.1179333, 2
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = lshr i64 %i.cs, %i.cu
  %i.cw = and i64 %i.cv, 15
  %.not196 = icmp eq i64 %i.cw, 9
  br i1 %.not196, label %bb.ac, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

bb.ad:                                            ; preds = %bb.u
  br i1 %3, label %switch.early.test205, label %bb.ae

switch.early.test205:                             ; preds = %bb.ad
  switch i8 %.0.i214, label %bb.am [
    i8 7, label %bb.ae
    i8 2, label %bb.ae
  ]

bb.ae:                                            ; preds = %switch.early.test205, %switch.early.test205, %bb.ad
  %.not193320 = icmp slt i32 %spec.select.i236, %i.bq
  br i1 %.not193320, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, label %.lr.ph323

.lr.ph323:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.l, align 8, !tbaa !15, !range !17, !noundef !18
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.cy, label %.lr.ph323.split.us, label %.lr.ph323.split

.lr.ph323.split.us:                               ; preds = %.lr.ph323
  %i.da = load i32, ptr %i.ag, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread.us, %.lr.ph323.split.us
  %.2180321.us = phi i32 [ %spec.select.i236, %.lr.ph323.split.us ], [ %i.dg, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread.us ] ; 5 uses
  %i.db = icmp sgt i32 %.2180321.us, -1
  %.not.i250.us = icmp slt i32 %.2180321.us, %i.da
  %or.cond10.i251.us = select i1 %i.db, i1 %.not.i250.us, i1 false
  br i1 %or.cond10.i251.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread.us

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.us: ; preds = %bb.af
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !19
  %i.dd = zext nneg i32 %.2180321.us to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19
  %.not194.us = icmp eq i8 %i.df, 0
  br i1 %.not194.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread.us: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.us, %bb.af
  %i.dg = add nsw i32 %.2180321.us, -1
  %.not193.us.not = icmp sgt i32 %.2180321.us, %i.bq
  br i1 %.not193.us.not, label %bb.af, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, !llvm.loop !90

.lr.ph323.split:                                  ; preds = %.lr.ph323, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread
  %.2180321 = phi i32 [ %i.dm, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread ], [ %spec.select.i236, %.lr.ph323 ] ; 4 uses
  %or.cond.i248 = icmp ugt i32 %.2180321, 15
  br i1 %or.cond.i248, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252: ; preds = %.lr.ph323.split
  %i.dh = load i64, ptr %i.cz, align 8, !tbaa !19
  %i.di = shl nuw nsw i32 %.2180321, 2
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw i64 15, %i.dj
  %i.dl = and i64 %i.dh, %i.dk
  %.not194 = icmp eq i64 %i.dl, 0
  br i1 %.not194, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread: ; preds = %.lr.ph323.split, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252
  %i.dm = add nsw i32 %.2180321, -1
  %.not193.not = icmp sgt i32 %.2180321, %i.bq
  br i1 %.not193.not, label %.lr.ph323.split, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, !llvm.loop !90

bb.ag:                                            ; preds = %bb.u
  br i1 %3, label %switch.early.test206, label %bb.ah

switch.early.test206:                             ; preds = %bb.ag
  switch i8 %.0.i214, label %bb.am [
    i8 9, label %bb.ah
    i8 4, label %bb.ah
    i8 7, label %bb.ap
    i8 2, label %bb.ap
  ]

bb.ah:                                            ; preds = %switch.early.test206, %switch.early.test206, %bb.ag
  %.not191311 = icmp slt i32 %spec.select.i236, %i.bq
  br i1 %.not191311, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.dn = load i8, ptr %i.l, align 8, !tbaa !15, !range !17, !noundef !18
  %i.do = trunc nuw i8 %i.dn to i1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.do, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.dq = load i32, ptr %i.ag, align 8
  %.not.i255.us = icmp slt i32 %spec.select.i236, %i.dq
  %.not.i255.us.fr = freeze i1 %.not.i255.us
  br i1 %.not.i255.us.fr, label %bb.ai, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

bb.ai:                                            ; preds = %.lr.ph.split.us, %bb.aj
  %.3181312.us = phi i32 [ %i.ds, %bb.aj ], [ %spec.select.i236, %.lr.ph.split.us ] ; 4 uses
  %i.dr = icmp sgt i32 %.3181312.us, -1
  br i1 %i.dr, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257.us, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

bb.aj:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257.us
  %i.ds = add nsw i32 %.3181312.us, -1
  %.not191.us.not = icmp sgt i32 %.3181312.us, %i.bq
  br i1 %.not191.us.not, label %bb.ai, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, !llvm.loop !91

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257.us: ; preds = %bb.ai
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.du = zext nneg i32 %.3181312.us to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !19
  %.not192.us = icmp eq i8 %i.dw, 9
  br i1 %.not192.us, label %bb.aj, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

bb.ak:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257
  %i.dx = add nsw i32 %.3181312, -1
  %.not191.not = icmp sgt i32 %.3181312, %i.bq
  br i1 %.not191.not, label %.lr.ph.split, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, !llvm.loop !91

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ak
  %.3181312 = phi i32 [ %i.dx, %bb.ak ], [ %spec.select.i236, %.lr.ph ] ; 4 uses
  %or.cond.i253 = icmp ugt i32 %.3181312, 15
  br i1 %or.cond.i253, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257: ; preds = %.lr.ph.split
  %i.dy = load i64, ptr %i.dp, align 8, !tbaa !19
  %i.dz = shl nuw nsw i32 %.3181312, 2
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = lshr i64 %i.dy, %i.ea
  %i.ec = and i64 %i.eb, 15
  %.not192 = icmp eq i64 %i.ec, 9
  br i1 %.not192, label %bb.ak, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

bb.al:                                            ; preds = %bb.u
  br i1 %3, label %switch.early.test207, label %bb.ap

switch.early.test207:                             ; preds = %bb.al
  switch i8 %.0.i214, label %bb.am [
    i8 7, label %bb.ap
    i8 2, label %bb.ap
  ]

bb.am:                                            ; preds = %switch.early.test206, %switch.early.test203, %switch.early.test204, %switch.early.test205, %switch.early.test207
  %i.ed = icmp slt i8 %.0.i214, 2
  br i1 %i.ed, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ee = icmp samesign ult i8 %.0.i214, 5
  br i1 %i.ee, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = icmp samesign ult i8 %.0.i214, 7
  %.208 = select i1 %i.ef, i32 1, i32 3
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

bb.ap:                                            ; preds = %switch.early.test206, %switch.early.test206, %switch.early.test203, %switch.early.test203, %switch.early.test207, %switch.early.test207, %bb.al
  %i.eg = icmp slt i8 %.0.i221, 5
  %.209 = select i1 %i.eg, i32 1, i32 3
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread: ; preds = %bb.ak, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257, %.lr.ph.split, %bb.ai, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257.us, %bb.aj, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread.us, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.us, %bb.ac, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247, %.lr.ph334.split, %bb.aa, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.us, %bb.ab, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread.us, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.us, %.lr.ph.split.us, %.lr.ph334.split.us, %bb.ah, %bb.ae, %bb.z, %bb.w, %bb.ap, %bb.ao, %bb.an, %bb.am
  %5 = phi i1 [ false, %bb.ap ], [ false, %bb.am ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread ], [ false, %bb.an ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread.us ], [ false, %bb.ao ], [ false, %bb.w ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread ], [ false, %.lr.ph334.split.us ], [ false, %bb.ah ], [ false, %bb.aa ], [ true, %bb.ae ], [ false, %bb.ai ], [ false, %.lr.ph.split.us ], [ true, %bb.z ], [ false, %.lr.ph334.split ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242 ], [ true, %bb.ab ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247 ], [ true, %bb.ac ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.us ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252 ], [ false, %bb.aj ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257.us ], [ false, %.lr.ph.split ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257 ], [ false, %bb.ak ]
  %.not199 = phi i1 [ true, %bb.ap ], [ true, %bb.am ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread ], [ true, %bb.an ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread.us ], [ true, %bb.ao ], [ false, %bb.w ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread ], [ true, %.lr.ph334.split.us ], [ false, %bb.ah ], [ true, %bb.aa ], [ true, %bb.ae ], [ false, %bb.aj ], [ true, %.lr.ph.split.us ], [ true, %bb.z ], [ true, %bb.ac ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread.us ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.us ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242 ], [ true, %bb.ab ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.us ], [ true, %.lr.ph334.split ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247 ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.us ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252 ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257.us ], [ true, %bb.ai ], [ false, %bb.ak ], [ true, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257 ], [ true, %.lr.ph.split ]
  %spec.store.select68 = phi i32 [ %.209, %bb.ap ], [ 1, %bb.am ], [ 2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread ], [ 3, %bb.an ], [ 2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.thread.us ], [ %.208, %bb.ao ], [ 1, %bb.w ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread ], [ 1, %.lr.ph334.split.us ], [ 3, %bb.ah ], [ 1, %bb.aa ], [ 2, %bb.ae ], [ 3, %bb.ai ], [ 3, %.lr.ph.split.us ], [ 2, %bb.z ], [ 1, %.lr.ph334.split ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.thread.us ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242.us ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit242 ], [ 2, %bb.ab ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.us ], [ 1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247 ], [ 2, %bb.ac ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252.us ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit252 ], [ 3, %bb.aj ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257.us ], [ 3, %.lr.ph.split ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit257 ], [ 3, %bb.ak ] ; 2 uses
  %switch.i = icmp ugt i32 %2, 3                  ; 2 uses
  %i.eh = load i32, ptr %i.ag, align 8, !tbaa !21
  %i.ei = add nsw i32 %i.eh, -14
  %i.ej = icmp slt i32 %spec.select.i218, %i.ei
  %or.cond48 = and i1 %switch.i, %5
  %or.cond = or i1 %or.cond48, %i.ej
  %or.cond.not = xor i1 %or.cond, true
  %or.cond51.not = or i1 %switch.i, %.not199
  %or.cond210 = and i1 %or.cond51.not, %or.cond.not
  br i1 %or.cond210, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !23
  call void @_ZN6icu_7817double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef %i.en, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.eo = load i8, ptr %i.l, align 8, !tbaa !15, !range !17, !noundef !18
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ar, label %_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit

bb.ar:                                            ; preds = %bb.aq
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !19
  call void @uprv_free_78(ptr noundef %i.er)
  store i8 0, ptr %i.l, align 8, !tbaa !15
  br label %_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit

_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit: ; preds = %bb.aq, %bb.ar
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.es, align 8, !tbaa !19
  store i32 0, ptr %i.e, align 4, !tbaa !20
  store i32 0, ptr %i.ag, align 8, !tbaa !21
  store i8 0, ptr %i.aw, align 1, !tbaa !22
  store double 0.000000e+00, ptr %i.em, align 8, !tbaa !23
  store i32 0, ptr %i.ek, align 8, !tbaa !24
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.et, align 4, !tbaa !25
  %i.eu = load i32, ptr %i.c, align 4, !tbaa !29
  %i.ev = load i32, ptr %i.d, align 4, !tbaa !29
  call void @_ZN6icu_786number4impl15DecimalQuantity25readDoubleConversionToBcdEPKcii(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %i.a, i32 noundef %i.eu, i32 noundef %i.ev)
  %i.ew = load i32, ptr %i.e, align 4, !tbaa !20
  %i.ex = add nsw i32 %i.ew, %i.el
  store i32 %i.ex, ptr %i.e, align 4, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 1, ptr %i.ey, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_786number4impl15DecimalQuantity16roundToMagnitudeEi25UNumberFormatRoundingModebR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %.critedge212

bb.as:                                            ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit247.thread
  store i8 0, ptr %i.aw, align 1, !tbaa !22
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.ez, align 8, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.fa, align 8, !tbaa !24
  br i1 %i.ad, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  br i1 %3, label %switch.early.test211, label %.critedge212

switch.early.test211:                             ; preds = %bb.at
  switch i8 %.0.i214, label %.thread [
    i8 5, label %.critedge212
    i8 0, label %.critedge212
  ]

.loopexit:                                        ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.us, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread.us, %bb.t, %bb.as, %bb.s, %bb.r
  %.3 = phi i32 [ %spec.store.select68, %bb.as ], [ 3, %bb.s ], [ 1, %bb.r ], [ 2, %bb.t ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.us ], [ 2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread.us ], [ 2, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233.thread ], [ 3, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit233 ] ; 2 uses
  br i1 %3, label %.thread, label %bb.av

.thread:                                          ; preds = %switch.early.test211, %bb.q, %.loopexit
  %.3285 = phi i32 [ %.3, %.loopexit ], [ %., %bb.q ], [ %spec.store.select68, %switch.early.test211 ] ; 4 uses
  %i.fb = add i8 %.0.i214, -8
  %or.cond61 = icmp ult i8 %i.fb, -6
  br i1 %or.cond61, label %.thread.thread, label %bb.au

bb.au:                                            ; preds = %.thread
  %i.fc = icmp eq i8 %.0.i214, 2
  %i.fd = icmp ne i32 %.3285, 3
  %or.cond63 = and i1 %i.fc, %i.fd
  br i1 %or.cond63, label %.thread.thread, label %.thread295

.thread295:                                       ; preds = %bb.p, %bb.au
  %.3285294298 = phi i32 [ %.3285, %bb.au ], [ 3, %bb.p ] ; 2 uses
  %i.fe = icmp eq i8 %.0.i214, 7
  %i.ff = icmp eq i32 %.3285294298, 3
  %i.fg = and i1 %i.fe, %i.ff
  br label %.thread.thread

bb.av:                                            ; preds = %.loopexit
  %i.fh = and i8 %.0.i214, 1
  %i.fi = icmp eq i8 %i.fh, 0
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.o, %.thread, %.thread295, %bb.au, %bb.av
  %.3286 = phi i32 [ %.3, %bb.av ], [ %.3285, %bb.au ], [ %.3285294298, %.thread295 ], [ %.3285, %.thread ], [ 1, %bb.o ] ; 6 uses
  %i.fj = phi i1 [ %i.fi, %bb.av ], [ true, %bb.au ], [ %i.fg, %.thread295 ], [ true, %.thread ], [ true, %bb.o ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fl = load i8, ptr %i.fk, align 4, !tbaa !28
  %i.fm = trunc i8 %i.fl to i1                    ; 4 uses
  %i.fn = load i32, ptr %4, align 4, !tbaa !40
  %i.fo = icmp slt i32 %i.fn, 1
  br i1 %i.fo, label %bb.aw, label %.critedge212

bb.aw:                                            ; preds = %.thread.thread
  switch i32 %2, label %bb.bj [
    i32 3, label %bb.bk
    i32 2, label %bb.bf
    i32 0, label %bb.ax
    i32 1, label %bb.ay
    i32 6, label %bb.az
    i32 5, label %bb.ba
    i32 4, label %bb.bb
    i32 8, label %bb.bc
    i32 9, label %bb.be
    i32 10, label %bb.bg
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %bb.bk

bb.ay:                                            ; preds = %bb.aw
  %i.fp = xor i1 %i.fm, true
  br label %bb.bk

bb.az:                                            ; preds = %bb.aw
  %i.fq = icmp eq i32 %.3286, 1
  br i1 %i.fq, label %bb.bf, label %bb.bk

bb.ba:                                            ; preds = %bb.aw
  %i.fr = icmp eq i32 %.3286, 3
  br i1 %i.fr, label %bb.bi, label %bb.bk

bb.bb:                                            ; preds = %bb.aw
  switch i32 %.3286, label %default.unreachable300 [
    i32 2, label %bb.bk
    i32 1, label %bb.bf
    i32 3, label %bb.bi
  ]

bb.bc:                                            ; preds = %bb.aw
  switch i32 %.3286, label %default.unreachable301 [
    i32 2, label %bb.bd
    i32 1, label %bb.bk
    i32 3, label %bb.bi
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.fs = xor i1 %i.fj, true
  br label %bb.bk

bb.be:                                            ; preds = %bb.aw
  switch i32 %.3286, label %default.unreachable302 [
    i32 2, label %bb.bk
    i32 1, label %bb.bf
    i32 3, label %bb.bi
  ]

bb.bf:                                            ; preds = %bb.az, %bb.be, %bb.bb, %bb.aw
  br label %bb.bk

bb.bg:                                            ; preds = %bb.aw
  switch i32 %.3286, label %default.unreachable303 [
    i32 2, label %bb.bh
    i32 1, label %bb.bk
    i32 3, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.ft = xor i1 %i.fm, true
  br label %bb.bk

bb.bi:                                            ; preds = %bb.ba, %bb.bg, %bb.be, %bb.bc, %bb.bb
  br label %bb.bk

default.unreachable300:                           ; preds = %bb.bb
  unreachable

default.unreachable301:                           ; preds = %bb.bc
  unreachable

default.unreachable302:                           ; preds = %bb.be
  unreachable

default.unreachable303:                           ; preds = %bb.bg
  unreachable

bb.bj:                                            ; preds = %bb.aw
  store i32 65809, ptr %4, align 4, !tbaa !40
  br label %.critedge212

bb.bk:                                            ; preds = %bb.bi, %bb.bg, %bb.ax, %bb.ay, %bb.aw, %bb.be, %bb.bb, %bb.az, %bb.bd, %bb.bh, %bb.ba, %bb.bc, %bb.bf
end_hunk_0
