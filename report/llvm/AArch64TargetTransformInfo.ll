Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64TargetTransformInfo?download=true
inline.NumInlined: 13233
inline.NumDeleted: 4962
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK4llvm14AArch64TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionE:bb.a
  br i1 %i.ox, label %bb.ch, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i341
  %.pre.i = or disjoint i64 %indvars.iv.i342, 1
  br label %bb.ci

bb.ch:                                            ; preds = %.lr.ph.i341
  %i.oy = zext nneg i32 %i.ow to i64              ; 2 uses
  %.not65.i = icmp eq i64 %indvars.iv.i342, %i.oy
  %spec.select.i353 = select i1 %.not65.i, i8 %.04978.i, i8 0
  %i.oz = or disjoint i64 %indvars.iv.i342, 1     ; 2 uses
  %.not66.i354 = icmp eq i64 %i.oz, %i.oy
  %.145.i = select i1 %.not66.i354, i8 %.04479.i, i8 0
  %i.pa = trunc nuw i64 %indvars.iv.i342 to i32
  %i.pb = add i32 %i.pa, %i.nu                    ; 2 uses
  %.not67.i = icmp eq i32 %i.ow, %i.pb
  %.140.i = select i1 %.not67.i, i8 %.03980.i, i8 0
  %i.pc = or disjoint i32 %i.pb, 1
  %.not68.i = icmp eq i32 %i.ow, %i.pc
  %.1.i355 = select i1 %.not68.i, i8 %.03881.i, i8 0
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.lr.ph._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.lr.ph._crit_edge.i ], [ %i.oz, %bb.ch ] ; 2 uses
  %.251.i = phi i8 [ %.04978.i, %.lr.ph._crit_edge.i ], [ %spec.select.i353, %bb.ch ] ; 2 uses
  %.246.i = phi i8 [ %.04479.i, %.lr.ph._crit_edge.i ], [ %.145.i, %bb.ch ] ; 2 uses
  %.241.i = phi i8 [ %.03980.i, %.lr.ph._crit_edge.i ], [ %.140.i, %bb.ch ] ; 2 uses
  %.2.i343 = phi i8 [ %.03881.i, %.lr.ph._crit_edge.i ], [ %.1.i355, %bb.ch ] ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.pre-phi.i
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !45 ; 4 uses
  %i.pf = icmp sgt i32 %i.pe, -1
  br i1 %i.pf, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.pg = trunc nuw i64 %indvars.iv.i342 to i32
  %i.ph = add i32 %i.pg, %i.nu                    ; 2 uses
  %.not69.i348 = icmp eq i32 %i.pe, %i.ph
  %spec.select73.i = select i1 %.not69.i348, i8 %.251.i, i8 0
  %i.pi = or disjoint i32 %i.ph, 1
  %.not70.i349 = icmp eq i32 %i.pe, %i.pi
  %.347.i = select i1 %.not70.i349, i8 %.246.i, i8 0
  %i.pj = zext nneg i32 %i.pe to i64              ; 2 uses
  %.not71.i350 = icmp eq i64 %indvars.iv.i342, %i.pj
  %.342.i = select i1 %.not71.i350, i8 %.241.i, i8 0
  %.not72.i351 = icmp eq i64 %.pre-phi.i, %i.pj
  %.3.i352 = select i1 %.not72.i351, i8 %.2.i343, i8 0
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.453.i = phi i8 [ %spec.select73.i, %bb.cj ], [ %.251.i, %bb.ci ] ; 2 uses
  %.448.i = phi i8 [ %.347.i, %bb.cj ], [ %.246.i, %bb.ci ] ; 2 uses
  %.443.i = phi i8 [ %.342.i, %bb.cj ], [ %.241.i, %bb.ci ] ; 2 uses
  %.4.i344 = phi i8 [ %.3.i352, %bb.cj ], [ %.2.i343, %bb.ci ] ; 2 uses
  %indvars.iv.next.i345 = add nuw nsw i64 %indvars.iv.i342, 2 ; 2 uses
  %.not57.i = icmp eq i64 %indvars.iv.next.i345, %5
  br i1 %.not57.i, label %._crit_edge.i346, label %.lr.ph.i341, !llvm.loop !1127

.lr.ph.i359:                                      ; preds = %.lr.ph.i359.preheader, %bb.cl
  %indvars.iv.i360 = phi i64 [ %indvars.iv.next.i361, %bb.cl ], [ 0, %.lr.ph.i359.preheader ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i360
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !45 ; 2 uses
  %i.pm = icmp sgt i32 %i.pl, -1
  br i1 %i.pm, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i359
  %indvars.iv.next.i361 = add nuw nsw i64 %indvars.iv.i360, 1 ; 2 uses
  %.not.i362 = icmp eq i64 %indvars.iv.next.i361, %5
  br i1 %.not.i362, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit369, label %.lr.ph.i359, !llvm.loop !1128

bb.cm:                                            ; preds = %.lr.ph.i359
  %i.pn = trunc nuw i64 %indvars.iv.i360 to i32
  %i.po = shl i32 %i.pn, 1
  %i.pp = icmp ne i32 %i.pl, %i.po
  %i.pq = zext i1 %i.pp to i32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %bb.cm
  %indvars.iv36.i = phi i64 [ 0, %bb.cm ], [ %indvars.iv.next37.i, %bb.cp ] ; 3 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv36.i
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !45 ; 2 uses
  %i.pt = icmp slt i32 %i.ps, 0
  br i1 %i.pt, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pu = trunc nuw i64 %indvars.iv36.i to i32
  %i.pv = shl i32 %i.pu, 1
  %i.pw = or disjoint i32 %i.pv, %i.pq
  %.not22.i = icmp eq i32 %i.ps, %i.pw
  br i1 %.not22.i, label %bb.cp, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit369

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %.not21.i = icmp eq i64 %indvars.iv.next37.i, %5
  br i1 %.not21.i, label %.critedge238, label %bb.cn, !llvm.loop !1129

_ZNK4llvm3MVT20getVectorNumElementsEv.exit369:    ; preds = %bb.cl, %bb.co, %.preheader.i
  %i.px = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.nq
  %i.py = getelementptr i8, ptr %i.px, i64 -2
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !291
  %i.qa = zext i16 %i.pz to i64
  %i.qb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 -16
  %.sroa.0.0.copyload.i.i366 = load i64, ptr %i.qc, align 16
  %i.qd = trunc i64 %.sroa.0.0.copyload.i.i366 to i32 ; 3 uses
  %i.qe = call noundef zeroext i1 @_ZN4llvm9isREVMaskENS_8ArrayRefIiEEjjj(ptr %4, i64 %5, i32 noundef %i.qd, i32 noundef %i.nu, i32 noundef 16)
  br i1 %i.qe, label %.critedge238, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375

_ZNK4llvm3MVT20getVectorNumElementsEv.exit375:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit369
  %i.qf = call noundef zeroext i1 @_ZN4llvm9isREVMaskENS_8ArrayRefIiEEjjj(ptr %4, i64 %5, i32 noundef %i.qd, i32 noundef %i.nu, i32 noundef 32)
  br i1 %i.qf, label %.critedge238, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit381

_ZNK4llvm3MVT20getVectorNumElementsEv.exit381:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375
  %i.qg = call noundef zeroext i1 @_ZN4llvm9isREVMaskENS_8ArrayRefIiEEjjj(ptr %4, i64 %5, i32 noundef %i.qd, i32 noundef %i.nu, i32 noundef 64)
  br i1 %i.qg, label %.critedge238, label %bb.cq

bb.cq:                                            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit381
  %i.qh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.qj = call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofINS_14iterator_rangeIPKiEEZNKS_14AArch64TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES9_NS_8ArrayRefIiEENS6_14TargetCostKindEiS9_NSA_IPKNS_5ValueEEEPKNS_11InstructionEE3$_2EEbOT_T0_"(ptr nonnull %i.qh, ptr %i.qi, ptr %4)
  br i1 %i.qj, label %.critedge238, label %.critedge27

.critedge27:                                      ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit331, %.critedge21, %bb.cb, %bb.cq
  %i.qk = icmp eq i32 %.0557, 8
  switch i32 %.0557, label %bb.df [
    i32 8, label %vector.ph
    i32 7, label %vector.ph
    i32 3, label %vector.ph
    i32 2, label %vector.ph
    i32 1, label %vector.ph
    i32 0, label %vector.ph
  ]

vector.ph:                                        ; preds = %.critedge27, %.critedge27, %.critedge27, %.critedge27, %.critedge27, %.critedge27
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0557, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 12 uses
  %broadcast.splatinsert722 = insertelement <8 x i16> poison, i16 %.sroa.13462.0, i64 0
  %broadcast.splat723 = shufflevector <8 x i16> %broadcast.splatinsert722, <8 x i16> poison, <8 x i32> zeroinitializer ; 12 uses
  %i.ql = icmp eq <8 x i32> %broadcast.splat, <i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 2>
  %i.qm = icmp eq <8 x i16> %broadcast.splat723, <i16 47, i16 71, i16 112, i16 136, i16 58, i16 94, i16 124, i16 71>
  %i.qn = select <8 x i1> %i.ql, <8 x i1> %i.qm, <8 x i1> zeroinitializer ; 2 uses
  %i.qo = icmp eq <8 x i32> %broadcast.splat, <i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 2>
  %i.qp = icmp eq <8 x i16> %broadcast.splat723, <i16 48, i16 73, i16 123, i16 154, i16 62, i16 108, i16 134, i16 73>
  %i.qq = select <8 x i1> %i.qo, <8 x i1> %i.qp, <8 x i1> zeroinitializer ; 2 uses
  %i.qr = icmp eq <8 x i32> %broadcast.splat, <i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 2>
  %i.qs = icmp eq <8 x i16> %broadcast.splat723, <i16 58, i16 94, i16 124, i16 47, i16 71, i16 112, i16 136, i16 94>
  %i.qt = select <8 x i1> %i.qr, <8 x i1> %i.qs, <8 x i1> zeroinitializer ; 2 uses
  %i.qu = icmp eq <8 x i32> %broadcast.splat, <i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 2>
  %i.qv = icmp eq <8 x i16> %broadcast.splat723, <i16 62, i16 108, i16 134, i16 48, i16 73, i16 123, i16 154, i16 134>
  %i.qw = select <8 x i1> %i.qu, <8 x i1> %i.qv, <8 x i1> zeroinitializer
  %i.qx = select <8 x i1> %i.qn, <8 x i1> splat (i1 true), <8 x i1> %i.qq
  %i.qy = select <8 x i1> %i.qx, <8 x i1> splat (i1 true), <8 x i1> %i.qt
  %i.qz = select <8 x i1> %i.qy, <8 x i1> splat (i1 true), <8 x i1> %i.qw
  %i.ra = freeze <8 x i1> %i.qz                   ; 2 uses
  %i.rb = bitcast <8 x i1> %i.ra to i8
  %.not724 = icmp eq i8 %i.rb, 0
  br i1 %.not724, label %vector.body.interim, label %vector.early.exit.check

vector.body.interim:                              ; preds = %vector.ph
  %i.rc = icmp eq <8 x i32> %broadcast.splat, <i32 2, i32 7, i32 7, i32 7, i32 1, i32 1, i32 1, i32 1>
  %i.rd = icmp eq <8 x i16> %broadcast.splat723, <i16 136, i16 94, i16 58, i16 112, i16 71, i16 136, i16 62, i16 58>
  %i.re = select <8 x i1> %i.rc, <8 x i1> %i.rd, <8 x i1> zeroinitializer ; 2 uses
  %i.rf = icmp eq <8 x i32> %broadcast.splat, <i32 2, i32 7, i32 7, i32 7, i32 1, i32 1, i32 1, i32 1>
  %i.rg = icmp eq <8 x i16> %broadcast.splat723, <i16 154, i16 134, i16 108, i16 124, i16 73, i16 154, i16 48, i16 47>
  %i.rh = select <8 x i1> %i.rf, <8 x i1> %i.rg, <8 x i1> zeroinitializer ; 2 uses
  %i.ri = icmp eq <8 x i32> %broadcast.splat, <i32 7, i32 7, i32 7, i32 7, i32 1, i32 1, i32 1, i32 8>
  %i.rj = icmp eq <8 x i16> %broadcast.splat723, <i16 71, i16 136, i16 123, i16 47, i16 94, i16 112, i16 108, i16 71>
  %i.rk = select <8 x i1> %i.ri, <8 x i1> %i.rj, <8 x i1> zeroinitializer ; 2 uses
  %i.rl = icmp eq <8 x i32> %broadcast.splat, <i32 7, i32 7, i32 7, i32 7, i32 1, i32 1, i32 1, i32 8>
  %i.rm = icmp eq <8 x i16> %broadcast.splat723, <i16 73, i16 154, i16 62, i16 48, i16 134, i16 124, i16 123, i16 73>
  %i.rn = select <8 x i1> %i.rl, <8 x i1> %i.rm, <8 x i1> zeroinitializer
  %i.ro = select <8 x i1> %i.re, <8 x i1> splat (i1 true), <8 x i1> %i.rh
  %i.rp = select <8 x i1> %i.ro, <8 x i1> splat (i1 true), <8 x i1> %i.rk
  %i.rq = select <8 x i1> %i.rp, <8 x i1> splat (i1 true), <8 x i1> %i.rn
  %i.rr = freeze <8 x i1> %i.rq                   ; 2 uses
  %i.rs = bitcast <8 x i1> %i.rr to i8
  %.not724.1 = icmp eq i8 %i.rs, 0
  br i1 %.not724.1, label %vector.body.interim.1, label %vector.early.exit.check

vector.body.interim.1:                            ; preds = %vector.body.interim
  %i.rt = icmp eq <8 x i32> %broadcast.splat, <i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.ru = icmp eq <8 x i16> %broadcast.splat723, <i16 94, i16 112, i16 108, i16 174, i16 196, i16 203, i16 213, i16 164>
  %i.rv = select <8 x i1> %i.rt, <8 x i1> %i.ru, <8 x i1> zeroinitializer ; 2 uses
  %i.rw = icmp eq <8 x i32> %broadcast.splat, <i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1>
  %i.rx = icmp eq <8 x i16> %broadcast.splat723, <i16 134, i16 124, i16 123, i16 180, i16 197, i16 204, i16 167, i16 174>
  %i.ry = select <8 x i1> %i.rw, <8 x i1> %i.rx, <8 x i1> zeroinitializer ; 2 uses
  %i.rz = icmp eq <8 x i32> %broadcast.splat, <i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1>
  %i.sa = icmp eq <8 x i16> %broadcast.splat723, <i16 136, i16 62, i16 58, i16 185, i16 198, i16 208, i16 166, i16 180>
  %i.sb = select <8 x i1> %i.rz, <8 x i1> %i.sa, <8 x i1> zeroinitializer ; 2 uses
  %i.sc = icmp eq <8 x i32> %broadcast.splat, <i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1>
  %i.sd = icmp eq <8 x i16> %broadcast.splat723, <i16 154, i16 48, i16 47, i16 190, i16 202, i16 209, i16 165, i16 185>
  %i.se = select <8 x i1> %i.sc, <8 x i1> %i.sd, <8 x i1> zeroinitializer
  %i.sf = select <8 x i1> %i.rv, <8 x i1> splat (i1 true), <8 x i1> %i.ry
  %i.sg = select <8 x i1> %i.sf, <8 x i1> splat (i1 true), <8 x i1> %i.sb
  %i.sh = select <8 x i1> %i.sg, <8 x i1> splat (i1 true), <8 x i1> %i.se
  %i.si = freeze <8 x i1> %i.sh                   ; 2 uses
  %i.sj = bitcast <8 x i1> %i.si to i8
  %.not724.2 = icmp eq i8 %i.sj, 0
  br i1 %.not724.2, label %.lr.ph.i.i, label %vector.early.exit.check

vector.early.exit.check:                          ; preds = %vector.body.interim.1, %vector.body.interim, %vector.ph
  %index.lcssa = phi i64 [ 0, %vector.ph ], [ 8, %vector.body.interim ], [ 16, %vector.body.interim.1 ] ; 2 uses
  %.lcssa738 = phi <8 x i1> [ %i.qn, %vector.ph ], [ %i.re, %vector.body.interim ], [ %i.rv, %vector.body.interim.1 ]
  %.lcssa736 = phi <8 x i64> [ <i64 6, i64 30, i64 54, i64 78, i64 102, i64 126, i64 150, i64 174>, %vector.ph ], [ <i64 198, i64 222, i64 246, i64 270, i64 294, i64 318, i64 342, i64 366>, %vector.body.interim ], [ <i64 390, i64 414, i64 438, i64 462, i64 486, i64 510, i64 534, i64 558>, %vector.body.interim.1 ]
  %.lcssa734 = phi <8 x i1> [ %i.qq, %vector.ph ], [ %i.rh, %vector.body.interim ], [ %i.ry, %vector.body.interim.1 ]
  %.lcssa730 = phi <8 x i1> [ %i.qt, %vector.ph ], [ %i.rk, %vector.body.interim ], [ %i.sb, %vector.body.interim.1 ]
  %.lcssa = phi <8 x i1> [ %i.ra, %vector.ph ], [ %i.rr, %vector.body.interim ], [ %i.si, %vector.body.interim.1 ]
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %.lcssa, i1 false) ; 6 uses
  %i.sk = extractelement <8 x i1> %.lcssa738, i64 %first.active.lane
  br i1 %i.sk, label %vector.early.exit.0, label %vector.early.exit.check.0

vector.early.exit.check.0:                        ; preds = %vector.early.exit.check
  %i.sl = extractelement <8 x i1> %.lcssa734, i64 %first.active.lane
  br i1 %i.sl, label %vector.early.exit.1, label %vector.early.exit.check.1

vector.early.exit.check.1:                        ; preds = %vector.early.exit.check.0
  %i.sm = extractelement <8 x i1> %.lcssa730, i64 %first.active.lane
  %19 = add i64 %index.lcssa, %first.active.lane
  %20 = mul i64 %19, 24                           ; 2 uses
  br i1 %i.sm, label %vector.early.exit.2, label %vector.early.exit.3

vector.early.exit.3:                              ; preds = %vector.early.exit.check.1
  %21 = add i64 %20, 18
  br label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703

vector.early.exit.2:                              ; preds = %vector.early.exit.check.1
  %22 = add i64 %20, 12
  br label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit

vector.early.exit.1:                              ; preds = %vector.early.exit.check.0
  %i.sn = extractelement <8 x i64> %.lcssa736, i64 %first.active.lane
  br label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703

vector.early.exit.0:                              ; preds = %vector.early.exit.check
  %i.so = add i64 %index.lcssa, %first.active.lane
  %i.sp = mul i64 %i.so, 24
  br label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703

.lr.ph.i.i:                                       ; preds = %vector.body.interim.1
  %i.sq = icmp eq i32 %.0557, 1
  %i.sr = icmp eq i16 %.sroa.13462.0, 190
  %i.ss = select i1 %i.sq, i1 %i.sr, i1 false
  br i1 %i.ss, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.i
  %i.st = icmp eq i32 %.0557, 1
  %i.su = icmp eq i16 %.sroa.13462.0, 196
  %i.sv = select i1 %i.st, i1 %i.su, i1 false
  br i1 %i.sv, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sw = icmp eq i32 %.0557, 1
  %i.sx = icmp eq i16 %.sroa.13462.0, 197
  %i.sy = select i1 %i.sw, i1 %i.sx, i1 false
  br i1 %i.sy, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sz = icmp eq i32 %.0557, 1
  %i.ta = icmp eq i16 %.sroa.13462.0, 198
  %i.tb = select i1 %i.sz, i1 %i.ta, i1 false
  br i1 %i.tb, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.ct
  %i.tc = icmp eq i32 %.0557, 1
  %i.td = icmp eq i16 %.sroa.13462.0, 202
  %i.te = select i1 %i.tc, i1 %i.td, i1 false
  br i1 %i.te, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.1
  %i.tf = icmp eq i32 %.0557, 1
  %i.tg = icmp eq i16 %.sroa.13462.0, 203
  %i.th = select i1 %i.tf, i1 %i.tg, i1 false
  br i1 %i.th, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ti = icmp eq i32 %.0557, 1
  %i.tj = icmp eq i16 %.sroa.13462.0, 204
  %i.tk = select i1 %i.ti, i1 %i.tj, i1 false
  br i1 %i.tk, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.tl = icmp eq i32 %.0557, 1
  %i.tm = icmp eq i16 %.sroa.13462.0, 208
  %i.tn = select i1 %i.tl, i1 %i.tm, i1 false
  br i1 %i.tn, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.cw
  %i.to = icmp eq i32 %.0557, 1
  %i.tp = icmp eq i16 %.sroa.13462.0, 209
  %i.tq = select i1 %i.to, i1 %i.tp, i1 false
  br i1 %i.tq, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i.2
  %i.tr = icmp eq i32 %.0557, 1
  %i.ts = icmp eq i16 %.sroa.13462.0, 213
  %i.tt = select i1 %i.tr, i1 %i.ts, i1 false
  br i1 %i.tt, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.tu = icmp eq i32 %.0557, 1
  %i.tv = icmp eq i16 %.sroa.13462.0, 167
  %i.tw = select i1 %i.tu, i1 %i.tv, i1 false
  br i1 %i.tw, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.tx = icmp eq i32 %.0557, 1
  %i.ty = icmp eq i16 %.sroa.13462.0, 166
  %i.tz = select i1 %i.tx, i1 %i.ty, i1 false
  br i1 %i.tz, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.cz
  %i.ua = icmp eq i32 %.0557, 1                   ; 2 uses
  %i.ub = icmp eq i16 %.sroa.13462.0, 165
  %i.uc = select i1 %i.ua, i1 %i.ub, i1 false
  br i1 %i.uc, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread, label %bb.da

bb.da:                                            ; preds = %._crit_edge.loopexit.i.i
  %i.ud = icmp eq i16 %.sroa.13462.0, 164
  %i.ue = select i1 %i.ua, i1 %i.ud, i1 false
  br i1 %i.ue, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread, label %.critedge243

_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703: ; preds = %bb.ct, %bb.cr, %.lr.ph.i.i, %.lr.ph.i.i.1, %bb.cu, %bb.cw, %.lr.ph.i.i.2, %bb.cx, %bb.cz, %vector.early.exit.3, %vector.early.exit.1, %vector.early.exit.0
  %.028.i.i.idx.ph = phi i64 [ %i.sp, %vector.early.exit.0 ], [ %i.sn, %vector.early.exit.1 ], [ %21, %vector.early.exit.3 ], [ 576, %.lr.ph.i.i ], [ 582, %bb.cr ], [ 594, %bb.ct ], [ 600, %.lr.ph.i.i.1 ], [ 606, %bb.cu ], [ 618, %bb.cw ], [ 624, %.lr.ph.i.i.2 ], [ 630, %bb.cx ], [ 642, %bb.cz ]
  %.028.i.i.ptr705 = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm14AArch64TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE10ShuffleTbl, i64 %.028.i.i.idx.ph
  br label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread

_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit: ; preds = %bb.cs, %bb.cv, %bb.cy, %vector.early.exit.2
  %.02952.i.i.add.lcssa = phi i64 [ %22, %vector.early.exit.2 ], [ 588, %bb.cs ], [ 612, %bb.cv ], [ 636, %bb.cy ] ; 2 uses
  %.028.i.i.ptr = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm14AArch64TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE10ShuffleTbl, i64 %.02952.i.i.add.lcssa
  %.not.i.i385 = icmp eq i64 %.02952.i.i.add.lcssa, 660
  br i1 %.not.i.i385, label %.critedge243, label %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread

_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread: ; preds = %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703, %bb.da, %._crit_edge.loopexit.i.i, %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit
  %..i.i588 = phi ptr [ %.028.i.i.ptr, %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm14AArch64TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE10ShuffleTbl, i64 648), %._crit_edge.loopexit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm14AArch64TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionEE10ShuffleTbl, i64 654), %bb.da ], [ %.028.i.i.ptr705, %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread703 ]
  %i.uf = getelementptr inbounds nuw i8, ptr %..i.i588, i64 4
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !293 ; 2 uses
  %i.uh = zext i16 %i.ug to i64
  %i.ui = shl nuw nsw i64 %i.uh, 2
  %i.uj = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.0450.0, i64 %i.ui) ; 2 uses
  %i.uk = extractvalue { i64, i1 } %i.uj, 1
  br i1 %i.uk, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread
  %i.ul = icmp slt i64 %.sroa.0450.0, 1
  %.not626 = icmp eq i16 %i.ug, 0
  %or.cond628 = select i1 %i.ul, i1 true, i1 %.not626
  %spec.select629 = select i1 %or.cond628, i64 -9223372036854775808, i64 9223372036854775807
  br label %.critedge238

bb.dc:                                            ; preds = %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit.thread
  %i.um = extractvalue { i64, i1 } %i.uj, 0
  %i.un = ashr exact i64 %i.um, 2
  br label %.critedge238

.critedge243:                                     ; preds = %bb.da, %_ZN4llvm15CostTableLookupILm110EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE.exit
  br i1 %i.qk, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %.critedge243
  %i.uo = getelementptr inbounds nuw i8, ptr %.0512, i64 8
  %i.up = load i32, ptr %i.uo, align 8
  %i.uq = and i32 %i.up, 255
  %i.ur = icmp eq i32 %i.uq, 19
  br i1 %i.ur, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.us = load i32, ptr %i.c, align 4, !tbaa !45
  %i.ut = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl13getSpliceCostEPNS_10VectorTypeEiNS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.0512, i32 noundef %i.us, i32 noundef %6) ; 2 uses
  %.fca.0.extract50 = extractvalue { i64, i32 } %i.ut, 0
  %.fca.1.extract51 = extractvalue { i64, i32 } %i.ut, 1
  br label %.critedge238

bb.df:                                            ; preds = %.critedge27, %bb.dd, %.critedge243
  %brmerge = or i1 %.not609, %spec.select.i329
  br i1 %brmerge, label %.critedge41, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.uu = zext nneg i16 %.sroa.13462.0 to i64     ; 2 uses
  %i.uv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.uu ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.uv, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.uw = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.uw, label %bb.dh, label %_ZNK4llvm8TypeSizecvmEv.exit398

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.57) #32
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit398:                  ; preds = %bb.dg
  %i.ux = getelementptr i8, ptr %i.uv, i64 -16
  %.sroa.0.0.copyload.i395 = load i64, ptr %i.ux, align 16
  %i.uy = icmp ult i64 %.sroa.0.0.copyload.i395, 129
  br i1 %i.uy, label %bb.di, label %.critedge41

bb.di:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit398
  %i.uz = load ptr, ptr %i.d, align 8, !tbaa !527 ; 2 uses
  %.not234 = icmp eq ptr %i.uz, null
  br i1 %.not234, label %.critedge41, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.uz)
  %i.va = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.vb = load i16, ptr %i.va, align 8, !tbaa !281 ; 3 uses
  %i.vc = add i16 %i.vb, -19
  %spec.select.i399 = icmp ult i16 %i.vc, 197
  br i1 %spec.select.i399, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit401, label %bb.dm

_ZNK4llvm3MVT20getVectorNumElementsEv.exit401:    ; preds = %bb.dj
  %i.vd = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.uu
  %i.ve = getelementptr i8, ptr %i.vd, i64 -2
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !299
  %i.vg = add nsw i16 %i.vb, -163
  %spec.select.i.i402 = icmp ult i16 %i.vg, 53
  br i1 %spec.select.i.i402, label %bb.dk, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit403

bb.dk:                                            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit401
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.59) #32
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit403:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit401
  %i.vh = zext nneg i16 %i.vb to i64
  %i.vi = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.vh
  %i.vj = getelementptr i8, ptr %i.vi, i64 -2
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !299 ; 2 uses
  %i.vl = zext i16 %i.vk to i32
  %i.vm = load i32, ptr %i.c, align 4, !tbaa !45
  %i.vn = srem i32 %i.vm, %i.vl
  %i.vo = icmp eq i32 %i.vn, 0
  br i1 %i.vo, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit403
  %i.vp = urem i16 %i.vf, %i.vk
  %i.vq = icmp eq i16 %i.vp, 0
  br i1 %i.vq, label %.critedge245, label %bb.dm

.critedge245:                                     ; preds = %bb.dl
  %.sroa.0506.0.copyload507 = load i64, ptr %18, align 8, !tbaa !108
  %.sroa.18.0..sroa_idx508 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.18.0.copyload509 = load i32, ptr %.sroa.18.0..sroa_idx508, align 8, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.critedge238

bb.dm:                                            ; preds = %bb.dj, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit403, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.critedge41

.critedge41:                                      ; preds = %bb.df, %_ZNK4llvm8TypeSizecvmEv.exit398, %bb.dm, %bb.di
  %i.vr = load i32, ptr %i.c, align 4, !tbaa !45
  %i.vs = load ptr, ptr %i.d, align 8, !tbaa !527
  %i.vt = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES6_NS_8ArrayRefIiEENS3_14TargetCostKindEiS6_NS7_IPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %spec.select, ptr noundef %2, ptr noundef nonnull %.0512, ptr %4, i64 %5, i32 noundef %6, i32 noundef %i.vr, ptr noundef %i.vs, ptr noundef nonnull byval(%"class.llvm::ArrayRef.168") align 8 %9, ptr noundef %10) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.vt, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.vt, 1
  br label %.critedge238

.lr.ph.i.i.i.i..critedge238.loopexit715_crit_edge: ; preds = %.lr.ph.i.i.i.i
  br label %.critedge238, !llvm.loop !1105

.critedge238:                                     ; preds = %bb.cp, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i..critedge238.loopexit715_crit_edge, %.lr.ph.i.i.i.i14.i.2, %.lr.ph.i.i.i.i.i323.2, %bb.db, %bb.dc, %._crit_edge.i346, %._crit_edge.i, %bb.ca, %.split.i, %bb.de, %.critedge41, %.critedge245, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit381, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit369, %bb.cq, %_ZN4llvm21isDUPFirstSegmentMaskENS_8ArrayRefIiEEjj.exit, %bb.br, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit288, %bb.ba, %bb.t, %bb.s, %._crit_edge, %_ZSt3maxIN4llvm15InstructionCostEERKT_S4_S4_.exit
  %.sroa.0506.3 = phi i64 [ %.sroa.019.1.lcssa.sink.i, %bb.t ], [ 0, %bb.ba ], [ 0, %.split.i ], [ 4, %bb.cq ], [ %.sroa.0450.0, %_ZN4llvm21isDUPFirstSegmentMaskENS_8ArrayRefIiEEjj.exit ], [ %i.un, %bb.dc ], [ %.sroa.0450.0, %bb.br ], [ 4, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit288 ], [ %.sroa.0506.0.lcssa, %._crit_edge ], [ %.sroa.0506.0.copyload.sroa.speculated, %_ZSt3maxIN4llvm15InstructionCostEERKT_S4_S4_.exit ], [ %.sroa.019.1.lcssa.sink.i, %bb.s ], [ %.fca.0.extract, %.critedge41 ], [ %.sroa.0506.0.copyload507, %.critedge245 ], [ %.fca.0.extract50, %bb.de ], [ 4, %._crit_edge.i346 ], [ 4, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit381 ], [ 4, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375 ], [ 4, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit369 ], [ 0, %.lr.ph.i.i.i.i14.i.2 ], [ 4, %._crit_edge.i ], [ %spec.select629, %bb.db ], [ %i.no, %bb.ca ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ 0, %.lr.ph.i.i.i.i.i323.2 ], [ 0, %.lr.ph.i.i.i.i..critedge238.loopexit715_crit_edge ], [ 4, %bb.cp ]
  %.sroa.18.3 = phi i32 [ %.sink.i, %bb.t ], [ 0, %bb.ba ], [ 0, %.split.i ], [ 0, %bb.cq ], [ %.sroa.9453.0, %_ZN4llvm21isDUPFirstSegmentMaskENS_8ArrayRefIiEEjj.exit ], [ %.sroa.9453.0, %bb.dc ], [ %.sroa.9453.0, %bb.br ], [ 0, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit288 ], [ %.sroa.18.0.lcssa, %._crit_edge ], [ %.sroa.18.0.copyload.sroa.speculated, %_ZSt3maxIN4llvm15InstructionCostEERKT_S4_S4_.exit ], [ %.sink.i, %bb.s ], [ %.fca.1.extract, %.critedge41 ], [ %.sroa.18.0.copyload509, %.critedge245 ], [ %.fca.1.extract51, %bb.de ], [ 0, %._crit_edge.i346 ], [ 0, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit381 ], [ 0, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit375 ], [ 0, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit369 ], [ 0, %.lr.ph.i.i.i.i14.i.2 ], [ 0, %._crit_edge.i ], [ %.sroa.9453.0, %bb.db ], [ 0, %bb.ca ], [ 0, %.lr.ph.i.i.i.i.preheader ], [ 0, %.lr.ph.i.i.i.i.i323.2 ], [ 0, %.lr.ph.i.i.i.i..critedge238.loopexit715_crit_edge ], [ 0, %bb.cp ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0506.3, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.18.3, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst16isInterleaveMaskENS_8ArrayRefIiEEjj(ptr %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.234", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !42
  %i.d = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst16isInterleaveMaskENS_8ArrayRefIiEEjjRNS_15SmallVectorImplIjEE(ptr %0, i64 %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %i.e = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.e) #30
  br label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit

_ZN4llvm11SmallVectorIjLj8EED2Ev.exit:            ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindENS_8ArrayRefIiEEPNS_10VectorTypeERiRS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.fr128 = freeze i64 %3                         ; 15 uses
  %i.b = icmp eq i64 %.fr128, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !242  ; 20 uses
  %.idx3.i = shl nuw nsw i64 %.fr128, 2           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx3.i ; 4 uses
  %i.f = lshr i64 %.fr128, 2                      ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %.idx3.i, 9223372036854775792
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %2, i64 %i.g ; 5 uses
  %i.h = and i64 %.fr128, 3
  br i1 %.not.i, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.split

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  switch i32 %1, label %.loopexit [
    i32 7, label %.split.us
    i32 6, label %._crit_edge.i.i.i.i.i.us.peel
  ]

._crit_edge.i.i.i.i.i.us.peel:                    ; preds = %.lr.ph.split.us.split.preheader
  switch i64 %.fr128, label %.split.us [
    i64 3, label %bb.b
    i64 2, label %bb.c
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.us.peel
  %i.j = load i32, ptr %2, align 4, !tbaa !45
  %.not.i.i.i.i.i.us.peel = icmp slt i32 %i.j, %i.d
  br i1 %.not.i.i.i.i.i.us.peel, label %bb.c, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZNKS_16BasicTTIImplBaseINS_14AArch64TTIImplEE26improveShuffleKindFromMaskENS_19TargetTransformInfo11ShuffleKindES2_PNS_10VectorTypeERiRSA_EUliE_EEbOT_T0_.exit.us.peel
end_hunk_0
