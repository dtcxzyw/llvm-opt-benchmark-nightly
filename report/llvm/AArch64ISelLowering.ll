Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 162
begin_hunk_0_@_ZN4llvm21AArch64TargetLowering24addTypeForFixedLengthSVEENS_3MVTE:bb.a
  store i32 %i.aq, ptr %gep.i303, align 4, !tbaa !337
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm18TargetLoweringBase17setCondCodeActionENS_8ArrayRefINS_3ISD8CondCodeEEENS_3MVTENS0_14LegalizeActionE.exit, %bb.a
  %i.ar = icmp eq i16 %1, 153
  %i.as = select i1 %i.ar, i8 2, i8 4             ; 72 uses
  %i.at = add i16 %1, -2
  %or.cond.i306 = icmp ult i16 %i.at, 10
  %i.au = add i16 %1, -19                         ; 3 uses
  %or.cond3.i307 = icmp ult i16 %i.au, 86
  %or.cond4.i308 = or i1 %or.cond.i306, %or.cond3.i307
  %i.av = add i16 %1, -163                        ; 2 uses
  %spec.select.i309 = icmp ult i16 %i.av, 32
  %i.aw = or i1 %spec.select.i309, %or.cond4.i308
  br i1 %i.aw, label %bb.c, label %.loopexit776

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.b
  %i.ay = getelementptr i8, ptr %i.ax, i64 -2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !228 ; 2 uses
  %spec.select.i.i.i = icmp samesign ult i16 %1, 163
  %.sroa.0.0.extract.trunc.i.i = zext i16 %i.az to i32 ; 2 uses
  br i1 %spec.select.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %.sroa.0.0.extract.trunc.i.i)
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %.split, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

.split:                                           ; preds = %bb.d
  %i.bc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0.extract.trunc.i.i, i1 true) ; 2 uses
  %i.bd = icmp samesign ult i32 %i.bc, 7
  br i1 %i.bd, label %switch.lookup, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

bb.e:                                             ; preds = %bb.c
  switch i16 %i.az, label %bb.f [
    i16 1, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit
    i16 2, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split661
    i16 3, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split662
    i16 4, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split663
    i16 5, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split664
    i16 6, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split665
    i16 7, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split666
    i16 8, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split667
    i16 16, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split668
    i16 32, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split669
    i16 64, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split670
    i16 128, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split671
    i16 256, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split672
    i16 512, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split673
    i16 1024, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split674
  ]

bb.f:                                             ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split661: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split662: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split663: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split664: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split665: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split666: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split667: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split668: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split669: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split670: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split671: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split672: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split673: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split674: ; preds = %bb.e
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

switch.lookup:                                    ; preds = %.split
  %switch.idx.cast = trunc nuw nsw i32 %i.bc to i16
  %switch.offset = add nuw nsw i16 %switch.idx.cast, 170
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit:  ; preds = %bb.d, %.split, %switch.lookup, %bb.e, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split674, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split673, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split672, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split671, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split670, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split669, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split668, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split667, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split666, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split665, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split664, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split663, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split662, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split661, %bb.f
  %.sroa.04.0.i.i = phi i16 [ 44, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split664 ], [ 54, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split674 ], [ %switch.offset, %switch.lookup ], [ 47, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split667 ], [ 0, %bb.d ], [ 0, %.split ], [ 46, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split666 ], [ 45, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split665 ], [ 0, %bb.f ], [ 48, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split668 ], [ 49, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split669 ], [ 50, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split670 ], [ 51, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split671 ], [ 52, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split672 ], [ 53, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split673 ], [ 40, %bb.e ], [ 43, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split663 ], [ 41, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split661 ], [ 42, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split662 ] ; 2 uses
  %.not778 = icmp eq i16 %.sroa.04.0.i.i, %1
  br i1 %.not778, label %.loopexit776, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 426736
  %i.bf = getelementptr inbounds nuw [264 x i8], ptr %i.be, i64 %i.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 147952
  %i.bh = getelementptr inbounds nuw [528 x i8], ptr %i.bg, i64 %i.b
  %.tr773 = zext nneg i8 %i.as to i16             ; 2 uses
  %i.bi = shl nuw nsw i16 %.tr773, 12
  %i.bj = shl nuw nsw i16 %.tr773, 8
  %invariant.op = or disjoint i16 %i.bi, %i.bj
  %i.bk = shl nuw nsw i8 %i.as, 4
  %i.bl = zext nneg i8 %i.bk to i16
  %invariant.op780 = or disjoint i16 %invariant.op, %i.bl
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit314
  %storemerge779 = phi i16 [ %.sroa.04.0.i.i, %.lr.ph ], [ %.sroa.04.0.i.i313, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit314 ] ; 3 uses
  %i.bm = zext i16 %storemerge779 to i64          ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bm
  store i8 %i.as, ptr %i.bn, align 1, !tbaa !218
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.bm ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !228
  %i.bq = and i16 %i.bp, 15
  %.reass781 = or disjoint i16 %i.bq, %invariant.op780
  store i16 %.reass781, ptr %i.bo, align 2, !tbaa !228
  %i.br = add i16 %storemerge779, -19
  %spec.select.i.i.i310 = icmp ult i16 %i.br, 197
  br i1 %spec.select.i.i.i310, label %bb.h, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bm
  %i.bt = getelementptr i8, ptr %i.bs, i64 -2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !227
  %.pre795 = zext i16 %i.bu to i64
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.g, %bb.h
  %.pre-phi796 = phi i64 [ %i.bm, %bb.g ], [ %.pre795, %bb.h ]
  %i.bv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.pre-phi796
  %i.bw = getelementptr i8, ptr %i.bv, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bw, align 16
  %.tr265 = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.bx = shl i32 %.tr265, 1                      ; 2 uses
  %i.by = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.bx)
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.ca = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bx, i1 true) ; 2 uses
  %i.cb = icmp samesign ult i32 %i.ca, 10
  br i1 %i.cb, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.ca to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %.split.i, %switch.lookup.i
  %.sroa.0.0.i = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ] ; 2 uses
  %i.cc = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bm
  %i.cd = getelementptr i8, ptr %i.cc, i64 -2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !228
  %i.cf = add i16 %storemerge779, -216
  %spec.select.i.i.i311 = icmp ult i16 %i.cf, -53
  %.sroa.0.0.extract.trunc.i.i312 = zext i16 %i.ce to i32 ; 2 uses
  br i1 %spec.select.i.i.i311, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.cg = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %.sroa.0.0.extract.trunc.i.i312)
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit314

bb.j:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.ch = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %.sroa.0.0.extract.trunc.i.i312)
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit314

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit314: ; preds = %bb.i, %bb.j
  %.sroa.04.0.i.i313 = phi i16 [ %i.cg, %bb.i ], [ %i.ch, %bb.j ] ; 2 uses
  %.not = icmp eq i16 %.sroa.04.0.i.i313, %1
  br i1 %.not, label %.loopexit776, label %bb.g, !llvm.loop !1265

.loopexit776:                                     ; preds = %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit314, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit, %bb.b
  %spec.select.i.i = icmp ult i16 %i.au, 197
  br i1 %spec.select.i.i, label %_ZNK4llvm3MVT13getScalarTypeEv.exit, label %_ZNK4llvm3MVT13getScalarTypeEv.exit.thread

_ZNK4llvm3MVT13getScalarTypeEv.exit:              ; preds = %.loopexit776
  %i.ci = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.cj = getelementptr i8, ptr %i.ci, i64 -2
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !227 ; 2 uses
  %i.cl = icmp eq i16 %i.ck, 14
  br i1 %i.cl, label %.critedge, label %_ZNK4llvm3MVT13getScalarTypeEv.exit318

_ZNK4llvm3MVT13getScalarTypeEv.exit.thread:       ; preds = %.loopexit776
  %i.cm = icmp eq i16 %1, 14
  br i1 %i.cm, label %.lr.ph784, label %_ZNK4llvm3MVT13getScalarTypeEv.exit318

_ZNK4llvm3MVT13getScalarTypeEv.exit318:           ; preds = %_ZNK4llvm3MVT13getScalarTypeEv.exit, %_ZNK4llvm3MVT13getScalarTypeEv.exit.thread
  %.sroa.0.0.i317 = phi i16 [ %1, %_ZNK4llvm3MVT13getScalarTypeEv.exit.thread ], [ %i.ck, %_ZNK4llvm3MVT13getScalarTypeEv.exit ]
  %i.cn = icmp eq i16 %.sroa.0.0.i317, 15
  br i1 %i.cn, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %_ZNK4llvm3MVT13getScalarTypeEv.exit, %_ZNK4llvm3MVT13getScalarTypeEv.exit318
  %i.co = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.b
  %i.cp = getelementptr i8, ptr %i.co, i64 -2
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !228 ; 2 uses
  %i.cr = add i16 %1, -216
  %spec.select.i.i.i319 = icmp ult i16 %i.cr, -53
  %.sroa.0.0.extract.trunc.i.i320 = zext i16 %i.cq to i32 ; 2 uses
  br i1 %spec.select.i.i.i319, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.cs = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %.sroa.0.0.extract.trunc.i.i320)
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %.split768, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

.split768:                                        ; preds = %bb.k
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0.extract.trunc.i.i320, i1 true) ; 2 uses
  %i.cv = icmp samesign ult i32 %i.cu, 6
  br i1 %i.cv, label %switch.lookup806, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

.critedge.thread:                                 ; preds = %.critedge
  switch i16 %i.cq, label %bb.l [
    i16 1, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322
    i16 2, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split679
    i16 3, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split680
    i16 4, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split681
    i16 5, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split682
    i16 6, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split683
    i16 7, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split684
    i16 8, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split685
    i16 16, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split686
    i16 32, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split687
    i16 64, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split688
    i16 128, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split689
    i16 256, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split690
    i16 512, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split691
    i16 4096, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split692
  ]

bb.l:                                             ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split679: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split680: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split681: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split682: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split683: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split684: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split685: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split686: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split687: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split688: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split689: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split690: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split691: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split692: ; preds = %.critedge.thread
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

switch.lookup806:                                 ; preds = %.split768
  %switch.idx.cast807 = trunc nuw nsw i32 %i.cu to i16
  %switch.offset808 = add nuw nsw i16 %switch.idx.cast807, 195
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322: ; preds = %bb.k, %.split768, %switch.lookup806, %.critedge.thread, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split692, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split691, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split690, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split689, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split688, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split687, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split686, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split685, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split684, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split683, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split682, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split681, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split680, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split679, %bb.l
  %.sroa.04.0.i.i321 = phi i16 [ 0, %bb.l ], [ %switch.offset808, %switch.lookup806 ], [ 119, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split692 ], [ 0, %bb.k ], [ 0, %.split768 ], [ 118, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split691 ], [ 117, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split690 ], [ 105, %.critedge.thread ], [ 116, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split689 ], [ 106, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split679 ], [ 107, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split680 ], [ 108, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split681 ], [ 109, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split682 ], [ 110, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split683 ], [ 111, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split684 ], [ 112, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split685 ], [ 113, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split686 ], [ 114, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split687 ], [ 115, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322.fold.split688 ] ; 2 uses
  %.not772782 = icmp eq i16 %.sroa.04.0.i.i321, %1
  br i1 %.not772782, label %.loopexit, label %.lr.ph784

.lr.ph784:                                        ; preds = %_ZNK4llvm3MVT13getScalarTypeEv.exit.thread, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322
  %.sroa.04.0.i.i321808 = phi i16 [ %.sroa.04.0.i.i321, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322 ], [ 0, %_ZNK4llvm3MVT13getScalarTypeEv.exit.thread ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 426736
  %i.cx = getelementptr inbounds nuw [264 x i8], ptr %i.cw, i64 %i.b
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 147952
  %i.cz = getelementptr inbounds nuw [528 x i8], ptr %i.cy, i64 %i.b
  %i.da = shl nuw nsw i8 %i.as, 4
  %i.db = zext nneg i8 %i.da to i16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph784, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit331
  %storemerge264783 = phi i16 [ %.sroa.04.0.i.i321808, %.lr.ph784 ], [ %.sroa.04.0.i.i330, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit331 ] ; 3 uses
  %i.dc = zext i16 %storemerge264783 to i64       ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dc
  store i8 4, ptr %i.dd, align 1, !tbaa !218
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dc ; 2 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !228
  %i.dg = and i16 %i.df, -241
  %i.dh = or disjoint i16 %i.dg, %i.db
  store i16 %i.dh, ptr %i.de, align 2, !tbaa !228
  %i.di = add i16 %storemerge264783, -19
  %spec.select.i.i.i323 = icmp ult i16 %i.di, 197
  br i1 %spec.select.i.i.i323, label %bb.n, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dc
  %i.dk = getelementptr i8, ptr %i.dj, i64 -2
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !227
  %.pre = zext i16 %i.dl to i64
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326:     ; preds = %bb.m, %bb.n
  %.pre-phi = phi i64 [ %i.dc, %bb.m ], [ %.pre, %bb.n ]
  %i.dm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.pre-phi
  %i.dn = getelementptr i8, ptr %i.dm, i64 -16
  %.sroa.0.0.copyload.i.i325 = load i64, ptr %i.dn, align 16
  %.tr = trunc i64 %.sroa.0.0.copyload.i.i325 to i32
  %i.do = shl i32 %.tr, 1                         ; 3 uses
  %i.dp = tail call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 28)
  switch i32 %i.dp, label %.unreachabledefault.i [
    i32 1, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit
    i32 2, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 8, label %bb.r
  ]

bb.o:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

bb.p:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

bb.q:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

.unreachabledefault.i:                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326
  unreachable

bb.r:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326
  %i.dq = icmp eq i32 %i.do, 128
  tail call void @llvm.assume(i1 %i.dq)
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

_ZN4llvm3MVT18getFloatingPointVTEj.exit:          ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326, %bb.o, %bb.p, %bb.q, %bb.r
  %.sroa.0.0.i327 = phi i16 [ 17, %bb.r ], [ 14, %bb.o ], [ 15, %bb.p ], [ 16, %bb.q ], [ 13, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit326 ] ; 2 uses
  %i.dr = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.dc
  %i.ds = getelementptr i8, ptr %i.dr, i64 -2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !228
  %i.du = add i16 %storemerge264783, -216
  %spec.select.i.i.i328 = icmp ult i16 %i.du, -53
  %.sroa.0.0.extract.trunc.i.i329 = zext i16 %i.dt to i32 ; 2 uses
  br i1 %spec.select.i.i.i328, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm3MVT18getFloatingPointVTEj.exit
  %i.dv = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.0.0.i327, i32 noundef %.sroa.0.0.extract.trunc.i.i329)
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit331

bb.t:                                             ; preds = %_ZN4llvm3MVT18getFloatingPointVTEj.exit
  %i.dw = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i327, i32 noundef %.sroa.0.0.extract.trunc.i.i329)
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit331

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit331: ; preds = %bb.s, %bb.t
  %.sroa.04.0.i.i330 = phi i16 [ %i.dv, %bb.s ], [ %i.dw, %bb.t ] ; 2 uses
  %.not772 = icmp eq i16 %.sroa.04.0.i.i330, %1
  br i1 %.not772, label %.loopexit, label %bb.m, !llvm.loop !1266

.loopexit:                                        ; preds = %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit331, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit322, %_ZNK4llvm3MVT13getScalarTypeEv.exit318
  %spec.select.i.i332 = icmp ult i16 %i.au, 144
  br i1 %spec.select.i.i332, label %_ZNK4llvm3MVT13is64BitVectorEv.exit, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread651

_ZNK4llvm3MVT13is64BitVectorEv.exit:              ; preds = %.loopexit
  %i.dx = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.b
  %i.dy = getelementptr i8, ptr %i.dx, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dy, align 16
  switch i64 %.sroa.0.0.copyload.i.i.i, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread651 [
    i64 64, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread
    i64 128, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread
  ]

_ZNK4llvm3MVT14is128BitVectorEv.exit.thread651:   ; preds = %_ZNK4llvm3MVT13is64BitVectorEv.exit, %.loopexit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !94 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 513
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !224, !range !58, !noundef !59
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.u, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.u:                                             ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread651
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 498
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !221, !range !58, !noundef !59
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit.thread653, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 865
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !222, !range !58, !noundef !59
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit: ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 866
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !223, !range !58, !noundef !59
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread, label %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit.thread653

_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit.thread653: ; preds = %bb.u, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit
  br label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit.thread:      ; preds = %_ZNK4llvm3MVT13is64BitVectorEv.exit, %_ZNK4llvm3MVT13is64BitVectorEv.exit, %bb.v, %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread651, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit.thread653, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit
  %i.en = phi i1 [ true, %_ZNK4llvm3MVT13is64BitVectorEv.exit ], [ false, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit.thread653 ], [ true, %_ZNK4llvm3MVT13is64BitVectorEv.exit ], [ false, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit ], [ false, %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread651 ], [ false, %bb.v ] ; 2 uses
  %i.eo = phi i8 [ 2, %_ZNK4llvm3MVT13is64BitVectorEv.exit ], [ %i.as, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit.thread653 ], [ 2, %_ZNK4llvm3MVT13is64BitVectorEv.exit ], [ 2, %_ZNK4llvm16AArch64Subtarget14isSVEAvailableEv.exit ], [ 2, %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread651 ], [ 2, %bb.v ] ; 3 uses
  %spec.select.i.i335 = icmp ult i16 %i.av, 53
  br i1 %spec.select.i.i335, label %bb.w, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.w:                                             ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.118) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread
  %i.ep = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.b
  %i.eq = getelementptr i8, ptr %i.ep, i64 -2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !228 ; 5 uses
  %i.es = zext i16 %i.er to i32                   ; 5 uses
  %i.et = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.eu = getelementptr i8, ptr %i.et, i64 -2
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !227 ; 4 uses
  %i.ew = icmp eq i16 %i.ev, 8                    ; 2 uses
  br i1 %i.ew, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.ex = shl nuw nsw i32 %i.es, 3                ; 2 uses
  %i.ey = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.ex)
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %.split769, label %.lr.ph.i

.split769:                                        ; preds = %bb.x
  %i.fa = tail call range(i32 3, 33) i32 @llvm.cttz.i32(i32 %i.ex, i1 true) ; 2 uses
  %i.fb = icmp samesign ult i32 %i.fa, 11
  br i1 %i.fb, label %switch.lookup809, label %.lr.ph.i

switch.lookup809:                                 ; preds = %.split769
  %i.fc = trunc nuw nsw i32 %i.fa to i16
  %switch.offset811 = add nuw nsw i16 %i.fc, 44
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.split769, %switch.lookup809
  %.sroa.0.0.i339 = phi i16 [ %switch.offset811, %switch.lookup809 ], [ 0, %bb.x ], [ 0, %.split769 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 2 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 502240 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  store i16 %.sroa.0.0.i339, ptr %10, align 4, !tbaa !342
  store i16 %1, ptr %i.fd, align 2, !tbaa !344
  store i32 414, ptr %i.fe, align 4, !tbaa !346
  %i.fg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ff, ptr noundef nonnull align 4 dereferenceable(8) %10)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.fg, 0
  %i.fh = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store i8 4, ptr %i.fh, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  store i16 %.sroa.0.0.i339, ptr %10, align 4, !tbaa !342
  store i16 %1, ptr %i.fd, align 2, !tbaa !344
  store i32 415, ptr %i.fe, align 4, !tbaa !346
  %i.fi = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ff, ptr noundef nonnull align 4 dereferenceable(8) %10)
  %.fca.0.extract.i.i.i.1 = extractvalue { ptr, i8 } %i.fi, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.1, i64 8
  store i8 4, ptr %i.fj, align 1, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.fk = shl nuw nsw i32 %i.es, 2                ; 2 uses
  %i.fl = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.fk)
  %i.fm = icmp eq i32 %i.fl, 1
  br i1 %i.fm, label %_ZN4llvm18TargetLoweringBase25setPartialReduceMLAActionENS_8ArrayRefIjEENS_3MVTES3_NS0_14LegalizeActionE.exit.split, label %.lr.ph.i348

_ZN4llvm18TargetLoweringBase25setPartialReduceMLAActionENS_8ArrayRefIjEENS_3MVTES3_NS0_14LegalizeActionE.exit.split: ; preds = %.lr.ph.i
  %i.fn = call range(i32 2, 33) i32 @llvm.cttz.i32(i32 %i.fk, i1 true) ; 2 uses
  %i.fo = icmp samesign ult i32 %i.fn, 13
  br i1 %i.fo, label %switch.lookup816.a, label %.lr.ph.i348

switch.lookup816.a:                               ; preds = %_ZN4llvm18TargetLoweringBase25setPartialReduceMLAActionENS_8ArrayRefIjEENS_3MVTES3_NS0_14LegalizeActionE.exit.split
  %i.fp = zext nneg i32 %i.fn to i64
  %i.fq = getelementptr i8, ptr @switch.table._ZN4llvm21AArch64TargetLowering24addTypeForFixedLengthSVEENS_3MVTE, i64 %i.fp
  %switch.gep = getelementptr i8, ptr %i.fq, i64 -2
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %.lr.ph.i348

.lr.ph.i348:                                      ; preds = %.lr.ph.i, %_ZN4llvm18TargetLoweringBase25setPartialReduceMLAActionENS_8ArrayRefIjEENS_3MVTES3_NS0_14LegalizeActionE.exit.split, %switch.lookup816.a
  %.sroa.0.0.i344 = phi i16 [ %switch.ext, %switch.lookup816.a ], [ 0, %_ZN4llvm18TargetLoweringBase25setPartialReduceMLAActionENS_8ArrayRefIjEENS_3MVTES3_NS0_14LegalizeActionE.exit.split ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
end_hunk_0
