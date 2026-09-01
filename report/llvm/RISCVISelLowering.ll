Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVISelLowering?download=true
inline.NumInlined: 26532
inline.NumDeleted: 5745
loop-unroll.NumCompletelyUnrolled: 411
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 438
begin_hunk_0_@_ZNK4llvm19RISCVTargetLowering24lowerVECTOR_DEINTERLEAVEENS_7SDValueERNS_12SelectionDAGE:bb.a
  %i.fm = tail call noundef i32 @_ZNK4llvm14RISCVSubtarget25getMinRVVVectorSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(519768) %i.fk) #34 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.u, label %_ZL32getContainerForFixedLengthVectorN4llvm3MVTERKNS_14RISCVSubtargetE.exit.i

bb.u:                                             ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 680
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !291
  br label %_ZL32getContainerForFixedLengthVectorN4llvm3MVTERKNS_14RISCVSubtargetE.exit.i

_ZL32getContainerForFixedLengthVectorN4llvm3MVTERKNS_14RISCVSubtargetE.exit.i: ; preds = %bb.u, %bb.t
  %i.fq = phi i32 [ %i.fp, %bb.u ], [ %i.fm, %bb.t ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 537
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !192, !range !23, !noundef !24
  %i.ft = shl nuw nsw i32 %.sroa.0.0.extract.trunc.i.i, 6
  %i.fu = udiv i32 %i.ft, %i.fq
  %i.fv = sub nuw nsw i8 2, %i.fs
  %.zext.i.i576 = zext nneg i8 %i.fv to i32
  %.sroa.speculated.i.i577 = tail call i32 @llvm.umax.i32(i32 %i.fu, i32 %.zext.i.i576)
  %i.fw = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.ez, i32 noundef %.sroa.speculated.i.i577) ; 2 uses
  %.pre1015 = add i16 %i.fw, -216
  br label %bb.v

bb.v:                                             ; preds = %_ZL32getContainerForFixedLengthVectorN4llvm3MVTERKNS_14RISCVSubtargetE.exit.i, %bb.s
  %.pre-phi1016 = phi i16 [ %.pre1015, %_ZL32getContainerForFixedLengthVectorN4llvm3MVTERKNS_14RISCVSubtargetE.exit.i ], [ %i.fd, %bb.s ]
  %.sroa.03.0.i = phi i16 [ %i.fw, %_ZL32getContainerForFixedLengthVectorN4llvm3MVTERKNS_14RISCVSubtargetE.exit.i ], [ %.sroa.0.0.copyload.i.i572, %bb.s ]
  %spec.select.i.i.i574 = icmp ult i16 %.pre-phi1016, 32
  br i1 %spec.select.i.i.i574, label %_ZL24isLegalVTForZvzipOperandN4llvm3MVTERKNS_14RISCVSubtargetE.exit.thread, label %_ZL24isLegalVTForZvzipOperandN4llvm3MVTERKNS_14RISCVSubtargetE.exit

_ZL24isLegalVTForZvzipOperandN4llvm3MVTERKNS_14RISCVSubtargetE.exit: ; preds = %bb.v
  %i.fx = zext i16 %.sroa.03.0.i to i64           ; 2 uses
  %i.fy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -16
  %.sroa.0.0.copyload.i.i.i575 = load i64, ptr %i.fz, align 16
  %i.ga = trunc i64 %.sroa.0.0.copyload.i.i.i575 to i32 ; 2 uses
  %i.gb = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.fx
  %i.gc = getelementptr i8, ptr %i.gb, i64 -2
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !194
  %i.ge = icmp eq i16 %i.gd, 2
  %i.gf = shl i32 %i.ga, 3
  %spec.select.i4.i = select i1 %i.ge, i32 %i.gf, i32 %i.ga
  %i.gg = and i32 %spec.select.i4.i, 1023
  %.not966 = icmp eq i32 %i.gg, 512
  br i1 %.not966, label %.thread, label %_ZL24isLegalVTForZvzipOperandN4llvm3MVTERKNS_14RISCVSubtargetE.exit.thread

_ZL24isLegalVTForZvzipOperandN4llvm3MVTERKNS_14RISCVSubtargetE.exit.thread: ; preds = %bb.v, %_ZL24isLegalVTForZvzipOperandN4llvm3MVTERKNS_14RISCVSubtargetE.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !458 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %25, i16 %.sroa.04.0.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.gi, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.gj) #34 ; 2 uses
  %.fca.0.extract387 = extractvalue { ptr, i32 } %i.gk, 0 ; 2 uses
  %.fca.1.extract388 = extractvalue { ptr, i32 } %i.gk, 1 ; 2 uses
  %i.gl = load ptr, ptr %i.ep, align 8, !tbaa !181, !nonnull !24, !align !182
  %i.gm = call fastcc { ptr, i32 } @_ZL16lowerZvzipVUNZIPjN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_14RISCVSubtargetE(i32 noundef 821, ptr %.fca.0.extract387, i32 %.fca.1.extract388, ptr noundef nonnull align 8 dereferenceable(12) %25, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(519768) %i.gl) ; 2 uses
  %.fca.0.extract377 = extractvalue { ptr, i32 } %i.gm, 0
  %.fca.1.extract378 = extractvalue { ptr, i32 } %i.gm, 1
  %i.gn = load ptr, ptr %i.ep, align 8, !tbaa !181, !nonnull !24, !align !182
  %i.go = call fastcc { ptr, i32 } @_ZL16lowerZvzipVUNZIPjN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_14RISCVSubtargetE(i32 noundef 822, ptr %.fca.0.extract387, i32 %.fca.1.extract388, ptr noundef nonnull align 8 dereferenceable(12) %25, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(519768) %i.gn) ; 2 uses
  %.fca.0.extract367 = extractvalue { ptr, i32 } %i.go, 0
  %.fca.1.extract368 = extractvalue { ptr, i32 } %i.go, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #34
  store ptr %.fca.0.extract377, ptr %34, align 8, !tbaa !460
  %.sroa.4385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %.fca.1.extract378, ptr %.sroa.4385.0..sroa_idx, align 8, !tbaa !203
  %i.gp = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %.fca.0.extract367, ptr %i.gp, align 8, !tbaa !460
  %.sroa.4375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 24
  store i32 %.fca.1.extract368, ptr %.sroa.4375.0..sroa_idx, align 8, !tbaa !203
  %i.gq = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %34, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %25) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #34
  br label %bb.bc

.thread:                                          ; preds = %_ZNK4llvm3MVT28getDoubleNumVectorElementsVTEv.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZL24isLegalVTForZvzipOperandN4llvm3MVTERKNS_14RISCVSubtargetE.exit, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #34
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !458 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gu = load i16, ptr %i.gt, align 8, !tbaa !712 ; 4 uses
  %i.gv = zext i16 %i.gu to i64                   ; 2 uses
  %.idx = mul nuw nsw i64 %i.gv, 40               ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx
  %i.gx = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  store ptr %i.gx, ptr %35, align 8, !tbaa !26
  %i.gy = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 9 uses
  store i32 0, ptr %i.gy, align 8, !tbaa !392
  %i.gz = getelementptr inbounds nuw i8, ptr %35, i64 12 ; 2 uses
  store i32 8, ptr %i.gz, align 4, !tbaa !393
  %i.ha = icmp ugt i16 %i.gu, 8
  br i1 %i.ha, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.thread: ; preds = %.thread
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %35, ptr noundef nonnull %i.gx, i64 noundef %i.gv, i64 noundef 16) #34
  %.pre.i.i = load i32, ptr %i.gy, align 8, !tbaa !392
  %.pre12.i.i = zext i32 %.pre.i.i to i64
  br label %.lr.ph.i.i.i.i.preheader.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i: ; preds = %.thread
  %.not7.i.i.i.i.i.i = icmp eq i16 %i.gu, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2INS_6SDNode17value_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.thread, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i
  %.pre-phi.i.i1036 = phi i64 [ %.pre12.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %i.hb = load ptr, ptr %35, align 8, !tbaa !26
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %.pre-phi.i.i1036 ; 2 uses
  %i.hd = add nsw i64 %.idx, -40                  ; 2 uses
  %i.he = udiv i64 %i.hd, 40
  %i.hf = add nuw nsw i64 %i.he, 1
  %xtraiter = and i64 %i.hf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i582.prol.loopexit, label %.lr.ph.i.i.i.i.i.i582.prol

.lr.ph.i.i.i.i.i.i582.prol:                       ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i582.prol
  %.09.i.i.i.i.i.i583.prol = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i.i582.prol ], [ %i.hc, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.prol = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i582.prol ], [ %i.gs, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i582.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i583.prol, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !459
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.prol, i64 40 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i583.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i582.prol.loopexit, label %.lr.ph.i.i.i.i.i.i582.prol, !llvm.loop !1005

.lr.ph.i.i.i.i.i.i582.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i582.prol, %.lr.ph.i.i.i.i.preheader.i.i
  %.09.i.i.i.i.i.i583.unr = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.hh, %.lr.ph.i.i.i.i.i.i582.prol ]
  %.sroa.04.08.i.i.i.i.i.i.unr = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.hg, %.lr.ph.i.i.i.i.i.i582.prol ]
  %i.hi = icmp ult i64 %i.hd, 120
  br i1 %i.hi, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyINS_6SDNode17value_op_iteratorEPS1_EEvT_S7_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i582

.lr.ph.i.i.i.i.i.i582:                            ; preds = %.lr.ph.i.i.i.i.i.i582.prol.loopexit, %.lr.ph.i.i.i.i.i.i582
  %.09.i.i.i.i.i.i583 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i582 ], [ %.09.i.i.i.i.i.i583.unr, %.lr.ph.i.i.i.i.i.i582.prol.loopexit ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i582 ], [ %.sroa.04.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i582.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i583, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !459
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 40
  %i.hk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i583, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.hj, i64 16, i1 false), !tbaa.struct !459
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 80
  %i.hm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i583, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false), !tbaa.struct !459
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 120
  %i.ho = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i583, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i64 16, i1 false), !tbaa.struct !459
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i583, i64 64
  %.not.i.i.i.i.i.i584.3 = icmp eq ptr %i.hp, %i.gw
  br i1 %.not.i.i.i.i.i.i584.3, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyINS_6SDNode17value_op_iteratorEPS1_EEvT_S7_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i582, !llvm.loop !939

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyINS_6SDNode17value_op_iteratorEPS1_EEvT_S7_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i582, %.lr.ph.i.i.i.i.i.i582.prol.loopexit
  %.pre11.i.i = load i32, ptr %i.gy, align 8, !tbaa !392
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2INS_6SDNode17value_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2INS_6SDNode17value_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyINS_6SDNode17value_op_iteratorEPS1_EEvT_S7_T0_.exit.loopexit.i.i
  %i.hr = phi i32 [ %.pre11.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyINS_6SDNode17value_op_iteratorEPS1_EEvT_S7_T0_.exit.loopexit.i.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %i.hs = zext i16 %i.gu to i32
  %i.ht = add i32 %i.hr, %i.hs
  store i32 %i.ht, ptr %i.gy, align 8, !tbaa !392
  %i.hu = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.m
  %i.hv = getelementptr i8, ptr %i.hu, i64 -2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !196
  %i.hx = add i16 %.sroa.0.0.copyload.i.i.i, -216
  %spec.select.i.i585 = icmp ult i16 %i.hx, -53   ; 3 uses
  %or.cond.i = icmp eq i16 %i.k, 0                ; 4 uses
  br i1 %or.cond.i, label %_ZN4llvm12PowerOf2CeilEm.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2INS_6SDNode17value_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit
  %i.hy = add nsw i64 %i.am, -1
  %i.hz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hy, i1 false)
  %i.ia = sub nuw nsw i64 64, %i.hz
  %i.ib = shl nuw nsw i64 1, %i.ia
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  br label %_ZN4llvm12PowerOf2CeilEm.exit

_ZN4llvm12PowerOf2CeilEm.exit:                    ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2INS_6SDNode17value_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit, %bb.w
  %.0.i = phi i32 [ %i.ic, %bb.w ], [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2INS_6SDNode17value_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit ]
  %.sroa.0833.0.extract.trunc = zext i16 %i.hw to i32 ; 2 uses
  %i.id = mul nuw i32 %.0.i, %.sroa.0833.0.extract.trunc ; 2 uses
  %.sroa.2.0.insert.shift.i.i587 = select i1 %spec.select.i.i585, i64 0, i64 4294967296
  br i1 %spec.select.i.i585, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm12PowerOf2CeilEm.exit
  %i.ie = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.p, i32 noundef %i.id)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit

bb.y:                                             ; preds = %_ZN4llvm12PowerOf2CeilEm.exit
  %i.if = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.p, i32 noundef %i.id)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit: ; preds = %bb.x, %bb.y
  %.sroa.04.0.i = phi i16 [ %i.ie, %bb.x ], [ %i.if, %bb.y ] ; 11 uses
  %.pre = load i32, ptr %i.gy, align 8, !tbaa !392 ; 3 uses
  br i1 %or.cond.i, label %_ZN4llvm12PowerOf2CeilEm.exit593.thread, label %_ZN4llvm12PowerOf2CeilEm.exit593

_ZN4llvm12PowerOf2CeilEm.exit593:                 ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit
  %i.ig = zext i32 %.pre to i64
  %i.ih = add nsw i64 %i.am, -1
  %i.ii = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ih, i1 false)
  %i.ij = sub nuw nsw i64 64, %i.ii               ; 2 uses
  %.highbits = lshr i64 %i.ig, %i.ij
  %i.ik = icmp eq i64 %.highbits, 0
  br i1 %i.ik, label %_ZN4llvm12PowerOf2CeilEm.exit596, label %_ZN4llvm12PowerOf2CeilEm.exit593.thread

_ZN4llvm12PowerOf2CeilEm.exit596:                 ; preds = %_ZN4llvm12PowerOf2CeilEm.exit593
  %i.il = shl nuw nsw i64 1, %i.ij                ; 2 uses
  %i.im = sub nsw i64 %i.il, %i.am                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.in = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %19, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  %.fca.0.extract351 = extractvalue { ptr, i32 } %i.in, 0 ; 9 uses
  %.fca.1.extract352 = extractvalue { ptr, i32 } %i.in, 1 ; 9 uses
  %i.io = load i32, ptr %i.gy, align 8, !tbaa !392 ; 2 uses
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = add nsw i64 %i.im, %i.ip                ; 2 uses
  %i.ir = load i32, ptr %i.gz, align 4, !tbaa !393
  %i.is = zext i32 %i.ir to i64
  %.not.i.i.i597 = icmp ugt i64 %i.iq, %i.is
  br i1 %.not.i.i.i597, label %bb.z, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i, !prof !431

bb.z:                                             ; preds = %_ZN4llvm12PowerOf2CeilEm.exit596
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull %i.gx, i64 noundef %i.iq, i64 noundef 16) #34
  %.pre.i598 = load i32, ptr %i.gy, align 8, !tbaa !392 ; 2 uses
  %.pre5.i = zext i32 %.pre.i598 to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i: ; preds = %bb.z, %_ZN4llvm12PowerOf2CeilEm.exit596
  %.pre-phi.i = phi i64 [ %i.ip, %_ZN4llvm12PowerOf2CeilEm.exit596 ], [ %.pre5.i, %bb.z ]
  %i.it = phi i32 [ %i.io, %_ZN4llvm12PowerOf2CeilEm.exit596 ], [ %.pre.i598, %bb.z ]
  %.not7.i.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i
  %i.iu = load ptr, ptr %35, align 8, !tbaa !26
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %.pre-phi.i ; 2 uses
  %xtraiter1043 = and i64 %i.im, 7                ; 2 uses
  %lcmp.mod1044.not = icmp eq i64 %xtraiter1043, 0
  br i1 %lcmp.mod1044.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.preheader.i, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ix, %.lr.ph.i.i.i.i.prol ], [ %i.iv, %.lr.ph.i.i.i.preheader.i ] ; 3 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.iw, %.lr.ph.i.i.i.i.prol ], [ %i.im, %.lr.ph.i.i.i.preheader.i ]
  %prol.iter1045 = phi i64 [ %prol.iter1045.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i ]
  store ptr %.fca.0.extract351, ptr %.09.i.i.i.i.prol, align 8, !tbaa !460
  %.sroa.2.0..09.i.i.i.sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 8
  store i32 %.fca.1.extract352, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.prol, align 8, !tbaa !203
  %i.iw = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter1045.next = add i64 %prol.iter1045, 1 ; 2 uses
  %prol.iter1045.cmp.not = icmp eq i64 %prol.iter1045.next, %xtraiter1043
  br i1 %prol.iter1045.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1006

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i
  %.09.i.i.i.i.unr = phi ptr [ %i.iv, %.lr.ph.i.i.i.preheader.i ], [ %i.ix, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.im, %.lr.ph.i.i.i.preheader.i ], [ %i.iw, %.lr.ph.i.i.i.i.prol ]
  %i.iy = sub nsw i64 %i.am, %i.il
  %i.iz = icmp ugt i64 %i.iy, -8
  br i1 %i.iz, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ji, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i = phi i64 [ %i.jh, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store ptr %.fca.0.extract351, ptr %.09.i.i.i.i, align 8, !tbaa !460
  %.sroa.2.0..09.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i32 %.fca.1.extract352, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i, align 8, !tbaa !203
  %i.ja = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store ptr %.fca.0.extract351, ptr %i.ja, align 8, !tbaa !460
  %.sroa.2.0..09.i.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i32 %.fca.1.extract352, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.1, align 8, !tbaa !203
  %i.jb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  store ptr %.fca.0.extract351, ptr %i.jb, align 8, !tbaa !460
  %.sroa.2.0..09.i.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  store i32 %.fca.1.extract352, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.2, align 8, !tbaa !203
  %i.jc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  store ptr %.fca.0.extract351, ptr %i.jc, align 8, !tbaa !460
  %.sroa.2.0..09.i.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  store i32 %.fca.1.extract352, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.3, align 8, !tbaa !203
  %i.jd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 64
  store ptr %.fca.0.extract351, ptr %i.jd, align 8, !tbaa !460
  %.sroa.2.0..09.i.i.i.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  store i32 %.fca.1.extract352, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.4, align 8, !tbaa !203
  %i.je = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 80
  store ptr %.fca.0.extract351, ptr %i.je, align 8, !tbaa !460
  %.sroa.2.0..09.i.i.i.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 88
  store i32 %.fca.1.extract352, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.5, align 8, !tbaa !203
  %i.jf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96
  store ptr %.fca.0.extract351, ptr %i.jf, align 8, !tbaa !460
  %.sroa.2.0..09.i.i.i.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 104
  store i32 %.fca.1.extract352, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.6, align 8, !tbaa !203
  %i.jg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 112
  store ptr %.fca.0.extract351, ptr %i.jg, align 8, !tbaa !460
  %.sroa.2.0..09.i.i.i.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 120
  store i32 %.fca.1.extract352, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.7, align 8, !tbaa !203
  %i.jh = add i64 %.068.i.i.i.i, -8               ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 128
  %.not.i.i.i.i.7 = icmp eq i64 %i.jh, 0
  br i1 %.not.i.i.i.i.7, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !697

_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre4.i = load i32, ptr %i.gy, align 8, !tbaa !392
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i
  %i.jj = phi i32 [ %.pre4.i, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i ], [ %i.it, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i ]
  %i.jk = trunc nsw i64 %i.im to i32
  %i.jl = add i32 %i.jj, %i.jk                    ; 2 uses
  store i32 %i.jl, ptr %i.gy, align 8, !tbaa !392
  br label %_ZN4llvm12PowerOf2CeilEm.exit593.thread

_ZN4llvm12PowerOf2CeilEm.exit593.thread:          ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit, %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit, %_ZN4llvm12PowerOf2CeilEm.exit593
  %i.jm = phi i32 [ %.pre, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit ], [ %i.jl, %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit ], [ %.pre, %_ZN4llvm12PowerOf2CeilEm.exit593 ]
  %i.jn = load ptr, ptr %35, align 8, !tbaa !26
  store ptr %i.jn, ptr %36, align 8, !tbaa !552
  %i.jo = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jp = zext i32 %i.jm to i64
  store i64 %i.jp, ptr %i.jo, align 8, !tbaa !555
  %i.jq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %25, i16 %.sroa.04.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.308") align 8 %36) #34 ; 2 uses
  %.fca.0.extract335 = extractvalue { ptr, i32 } %i.jq, 0 ; 5 uses
  %.fca.1.extract336 = extractvalue { ptr, i32 } %i.jq, 1 ; 5 uses
  %i.jr = icmp ne i16 %i.k, 2
  %or.cond5 = or i1 %i.jr, %spec.select.i
  br i1 %or.cond5, label %bb.af, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %_ZN4llvm12PowerOf2CeilEm.exit593.thread
  %spec.select.i.i.i599 = icmp ult i16 %i.s, 197
  %spec.select = select i1 %spec.select.i.i.i599, i16 %i.p, i16 %.sroa.0.0.copyload.i.i.i
  %i.js = zext i16 %spec.select to i64
  %i.jt = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 -16
  %.sroa.0.0.copyload.i.i600 = load i64, ptr %i.ju, align 16
  %i.jv = load ptr, ptr %i.ep, align 8, !tbaa !181, !nonnull !24, !align !182
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 537
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !192, !range !23, !noundef !24
  %i.jy = trunc nuw i8 %i.jx to i1
  %i.jz = select i1 %i.jy, i64 64, i64 32
  %i.ka = icmp ult i64 %.sroa.0.0.copyload.i.i600, %i.jz
  br i1 %i.ka, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.kb = call fastcc { ptr, i32 } @_ZL28getDeinterleaveShiftAndTruncRKN4llvm5SDLocENS_3MVTENS_7SDValueEjjRNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %25, i16 %.sroa.0.0.copyload.i.i.i, ptr %.fca.0.extract335, i32 %.fca.1.extract336, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract324 = extractvalue { ptr, i32 } %i.kb, 0
  %.fca.1.extract325 = extractvalue { ptr, i32 } %i.kb, 1
  %i.kc = call fastcc { ptr, i32 } @_ZL28getDeinterleaveShiftAndTruncRKN4llvm5SDLocENS_3MVTENS_7SDValueEjjRNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %25, i16 %.sroa.0.0.copyload.i.i.i, ptr %.fca.0.extract335, i32 %.fca.1.extract336, i32 noundef 2, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract313 = extractvalue { ptr, i32 } %i.kc, 0
  %.fca.1.extract314 = extractvalue { ptr, i32 } %i.kc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #34
  store ptr %.fca.0.extract324, ptr %37, align 8, !tbaa !460
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 %.fca.1.extract325, ptr %.sroa.4333.0..sroa_idx, align 8, !tbaa !203
  %i.kd = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr %.fca.0.extract313, ptr %i.kd, align 8, !tbaa !460
  %.sroa.4322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 24
  store i32 %.fca.1.extract314, ptr %.sroa.4322.0..sroa_idx, align 8, !tbaa !203
  %i.ke = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %37, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %25) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #34
  br label %bb.ba

bb.ab:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.kf = zext i16 %.sroa.04.0.i to i64
  %i.kg = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 -2
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !196 ; 2 uses
  %i.kj = add i16 %.sroa.04.0.i, -216
  %spec.select.i.i.i602 = icmp ult i16 %i.kj, -53
  %.sroa.0.0.extract.trunc.i.i603 = zext i16 %i.ki to i32 ; 2 uses
  br i1 %spec.select.i.i.i602, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kk = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %.sroa.0.0.extract.trunc.i.i603)
  %i.kl = icmp eq i32 %i.kk, 1
  br i1 %i.kl, label %.split, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

.split:                                           ; preds = %bb.ac
  %i.km = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0.extract.trunc.i.i603, i1 true) ; 2 uses
  %i.kn = icmp samesign ult i32 %i.km, 7
  br i1 %i.kn, label %switch.lookup, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

bb.ad:                                            ; preds = %bb.ab
  switch i16 %i.ki, label %bb.ae [
    i16 1, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit
    i16 2, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split948
    i16 3, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split949
    i16 4, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split950
    i16 5, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split951
    i16 6, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split952
    i16 7, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split953
    i16 8, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split954
    i16 16, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split955
    i16 32, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split956
    i16 64, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split957
    i16 128, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split958
    i16 256, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split959
    i16 512, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split960
    i16 1024, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split961
    i16 2048, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split962
    i16 4096, label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split963
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split948: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split949: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split950: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split951: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split952: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split953: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split954: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split955: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split956: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split957: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split958: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split959: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split960: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split961: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split962: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split963: ; preds = %bb.ad
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

switch.lookup:                                    ; preds = %.split
  %switch.idx.cast = trunc nuw nsw i32 %i.km to i16
  %switch.offset = add nuw nsw i16 %switch.idx.cast, 163
  br label %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit

_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit:  ; preds = %bb.ac, %.split, %switch.lookup, %bb.ad, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split963, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split962, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split961, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split960, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split959, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split958, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split957, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split956, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split955, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split954, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split953, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split952, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split951, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split950, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split949, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split948, %bb.ae
  %.sroa.04.0.i.i604 = phi i16 [ 31, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split959 ], [ 35, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split963 ], [ %switch.offset, %switch.lookup ], [ 34, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split962 ], [ 0, %bb.ac ], [ 0, %.split ], [ 33, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split961 ], [ 32, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split960 ], [ 0, %bb.ae ], [ 19, %bb.ad ], [ 30, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split958 ], [ 20, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split948 ], [ 21, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split949 ], [ 22, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split950 ], [ 23, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split951 ], [ 24, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split952 ], [ 25, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split953 ], [ 26, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split954 ], [ 27, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split955 ], [ 28, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split956 ], [ 29, %_ZNK4llvm3MVT23changeVectorElementTypeES0_.exit.fold.split957 ] ; 2 uses
end_hunk_0
