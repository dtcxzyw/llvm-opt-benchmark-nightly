Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZNK4llvm21AArch64TargetLowering35LowerFixedLengthVECTOR_SHUFFLEToSVEENS_7SDValueERNS_12SelectionDAGE:bb.a
  %i.jo = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %.sroa.2295.0.copyload, ptr %i.jo, align 8
  br i1 %.not.i.i617, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i660, label %.split.i657

.split.i657:                                      ; preds = %.loopexit804
  %i.jp = add i16 %i.fy, -19
  %spec.select.i.i.i658 = icmp ult i16 %i.jp, 144
  br i1 %spec.select.i.i.i658, label %bb.az, label %bb.ba

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i660:   ; preds = %.loopexit804
  %i.jq = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %20) #37
  br i1 %i.jq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i660, %.split.i657
  %i.jr = call fastcc { ptr, i32 } @_ZL32getPredicateForFixedLengthVectorRN4llvm12SelectionDAGERNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %i.fy, ptr %.sroa.2295.0.copyload)
  br label %_ZL21getPredicateForVectorRN4llvm12SelectionDAGERNS_5SDLocENS_3EVTE.exit661

bb.ba:                                            ; preds = %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i660, %.split.i657
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store i16 %i.fy, ptr %19, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.sroa.2295.0.copyload, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !883
  %i.jv = call { i16, ptr } @_ZNK4llvm3EVT23changeVectorElementTypeERNS_11LLVMContextES0_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ju, i16 2, ptr null) ; 2 uses
  %i.jw = extractvalue { i16, ptr } %i.jv, 0
  %i.jx = extractvalue { i16, ptr } %i.jv, 1
  %i.jy = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %i.jw, ptr %i.jx, i1 noundef zeroext false, i1 noundef zeroext false) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZL21getPredicateForVectorRN4llvm12SelectionDAGERNS_5SDLocENS_3EVTE.exit661

_ZL21getPredicateForVectorRN4llvm12SelectionDAGERNS_5SDLocENS_3EVTE.exit661: ; preds = %bb.az, %bb.ba
  %.pn.i659 = phi { ptr, i32 } [ %i.jr, %bb.az ], [ %i.jy, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %.fca.0.extract289 = extractvalue { ptr, i32 } %.pn.i659, 0
  %.fca.1.extract290 = extractvalue { ptr, i32 } %.pn.i659, 1
  store ptr %.fca.0.extract289, ptr %60, align 8, !tbaa !391
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i32 %.fca.1.extract290, ptr %.sroa.4297.0..sroa_idx, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.jz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 %switch.ext, ptr null) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  %.fca.0.extract276 = extractvalue { ptr, i32 } %i.jz, 0
  %.fca.1.extract277 = extractvalue { ptr, i32 } %i.jz, 1
  store ptr %.fca.0.extract276, ptr %61, align 8
  %.sroa.2279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i32 %.fca.1.extract277, ptr %.sroa.2279.0..sroa_idx, align 8
  %i.ka = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 749, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %60, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %61) #35 ; 2 uses
  %.fca.0.extract272 = extractvalue { ptr, i32 } %i.ka, 0 ; 3 uses
  %.fca.1.extract273 = extractvalue { ptr, i32 } %i.ka, 1
  %.sroa.0269.0.copyload = load i16, ptr %48, align 8, !tbaa !189
  %.sroa.2271.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.kb = getelementptr inbounds nuw i8, ptr %.fca.0.extract272, i64 72
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !385
  store i64 %i.kc, ptr %15, align 8, !tbaa !385
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %.fca.0.extract272, i64 68
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !386
  store i32 %i.kf, ptr %i.kd, align 8, !tbaa !387
  %i.kg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract4.i662 = extractvalue { ptr, i32 } %i.kg, 0
  %.fca.1.extract5.i663 = extractvalue { ptr, i32 } %i.kg, 1
  store ptr %.fca.0.extract272, ptr %16, align 8, !tbaa !391
  %.sroa.313.0..sroa_idx.i664 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract273, ptr %.sroa.313.0..sroa_idx.i664, align 8, !tbaa !310
  store ptr %.fca.0.extract4.i662, ptr %17, align 8, !tbaa !391
  %.sroa.4.0..sroa_idx.i665 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract5.i663, ptr %.sroa.4.0..sroa_idx.i665, align 8, !tbaa !310
  %i.kh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0269.0.copyload, ptr %.sroa.2271.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.dd

_ZN4llvm9isREVMaskENS_8ArrayRefIiEEjjj.exit655:   ; preds = %bb.ax, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit641, %.critedge557.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  br i1 %.not.i.i617, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i670, label %.split.i667

.split.i667:                                      ; preds = %_ZN4llvm9isREVMaskENS_8ArrayRefIiEEjjj.exit655
  br i1 %spec.select.i.i.i619, label %bb.bb, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i669

_ZNK4llvm3EVT16isScalableVectorEv.exit.i670:      ; preds = %_ZN4llvm9isREVMaskENS_8ArrayRefIiEEjjj.exit655
  %i.ki = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #37
  br i1 %i.ki, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i670, %.split.i667
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i669:  ; preds = %.split.i667
  %i.kj = load i16, ptr %i.gc, align 2, !tbaa !191
  %i.kk = zext i16 %i.kj to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit671

bb.bc:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i670
  %i.kl = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit671

_ZNK4llvm3EVT20getVectorNumElementsEv.exit671:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i669, %bb.bc
  %i.km = phi i32 [ %i.kk, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i669 ], [ %i.kl, %bb.bc ] ; 7 uses
  %i.kn = and i32 %i.km, 1
  %.not.i672 = icmp eq i32 %i.kn, 0
  br i1 %.not.i672, label %.preheader.i673, label %_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit.thread

.preheader.i673:                                  ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit671
  %.not6179.i = icmp eq i32 %i.km, 0
  br i1 %.not6179.i, label %._crit_edge.i, label %.lr.ph.i674

.lr.ph.i674:                                      ; preds = %.preheader.i673
  %i.ko = lshr exact i32 %i.km, 1                 ; 2 uses
  %invariant.op.i = add i32 %i.ko, %i.km          ; 2 uses
  %i.kp = zext nneg i32 %i.ko to i64              ; 2 uses
  %i.kq = zext i32 %i.km to i64
  br label %bb.bd

._crit_edge.i:                                    ; preds = %bb.bh, %.preheader.i673
  %.053.lcssa.i = phi i8 [ 1, %.preheader.i673 ], [ %.457.i, %bb.bh ] ; 2 uses
  %.048.lcssa.i = phi i8 [ 1, %.preheader.i673 ], [ %.452.i, %bb.bh ] ; 2 uses
  %.043.lcssa.i = phi i8 [ 1, %.preheader.i673 ], [ %.447.i, %bb.bh ] ; 2 uses
  %.042.lcssa.i = phi i8 [ 1, %.preheader.i673 ], [ %.4.i, %bb.bh ]
  %narrow.i = add nuw nsw i8 %.048.lcssa.i, %.053.lcssa.i
  %narrow64.i = add nuw nsw i8 %narrow.i, %.043.lcssa.i
  %narrow65.i = add nuw nsw i8 %narrow64.i, %.042.lcssa.i
  %.not66.i = icmp eq i8 %narrow65.i, 1
  br i1 %.not66.i, label %_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit, label %_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit.thread

bb.bd:                                            ; preds = %bb.bh, %.lr.ph.i674
  %indvars.iv.i675 = phi i64 [ 0, %.lr.ph.i674 ], [ %indvars.iv.next.i676, %bb.bh ] ; 4 uses
  %.084.i = phi i32 [ 0, %.lr.ph.i674 ], [ %i.lh, %bb.bh ] ; 3 uses
  %.04283.i = phi i8 [ 1, %.lr.ph.i674 ], [ %.4.i, %bb.bh ] ; 2 uses
  %.04382.i = phi i8 [ 1, %.lr.ph.i674 ], [ %.447.i, %bb.bh ] ; 2 uses
  %.04881.i = phi i8 [ 1, %.lr.ph.i674 ], [ %.452.i, %bb.bh ] ; 2 uses
  %.05380.i = phi i8 [ 1, %.lr.ph.i674 ], [ %.457.i, %bb.bh ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i675 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !310 ; 4 uses
  %i.kt = icmp sgt i32 %i.ks, -1
  br i1 %i.kt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ku = lshr exact i64 %indvars.iv.i675, 1      ; 2 uses
  %i.kv = lshr exact i32 %.084.i, 1               ; 2 uses
  %i.kw = zext nneg i32 %i.ks to i64              ; 2 uses
  %.not67.i.a = icmp eq i64 %i.ku, %i.kw
  %spec.select.i677 = select i1 %.not67.i.a, i8 %.05380.i, i8 0
  %i.kx = add nuw nsw i64 %i.ku, %i.kp
  %.not68.i.a = icmp eq i64 %i.kx, %i.kw
  %.149.i = select i1 %.not68.i.a, i8 %.04881.i, i8 0
  %i.ky = add i32 %i.kv, %i.km
  %.not69.i = icmp eq i32 %i.ks, %i.ky
  %.144.i = select i1 %.not69.i, i8 %.04382.i, i8 0
  %.reass.i = add i32 %i.kv, %invariant.op.i
  %.not70.i = icmp eq i32 %i.ks, %.reass.i
  %.1.i678 = select i1 %.not70.i, i8 %.04283.i, i8 0
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.255.i = phi i8 [ %spec.select.i677, %bb.be ], [ %.05380.i, %bb.bd ] ; 2 uses
  %.250.i = phi i8 [ %.149.i, %bb.be ], [ %.04881.i, %bb.bd ] ; 2 uses
  %.245.i = phi i8 [ %.144.i, %bb.be ], [ %.04382.i, %bb.bd ] ; 2 uses
  %.2.i = phi i8 [ %.1.i678, %bb.be ], [ %.04283.i, %bb.bd ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !310 ; 4 uses
  %i.lb = icmp sgt i32 %i.la, -1
  br i1 %i.lb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lc = lshr exact i64 %indvars.iv.i675, 1      ; 2 uses
  %i.ld = lshr exact i32 %.084.i, 1               ; 2 uses
  %i.le = add i32 %i.ld, %i.km
  %.not71.i = icmp eq i32 %i.la, %i.le
  %spec.select75.i = select i1 %.not71.i, i8 %.255.i, i8 0
  %.reass89.i = add i32 %i.ld, %invariant.op.i
  %.not72.i = icmp eq i32 %i.la, %.reass89.i
  %.351.i = select i1 %.not72.i, i8 %.250.i, i8 0
  %i.lf = zext nneg i32 %i.la to i64              ; 2 uses
  %.not73.i = icmp eq i64 %i.lc, %i.lf
  %.346.i = select i1 %.not73.i, i8 %.245.i, i8 0
  %i.lg = add nuw nsw i64 %i.lc, %i.kp
  %.not74.i = icmp eq i64 %i.lg, %i.lf
  %.3.i = select i1 %.not74.i, i8 %.2.i, i8 0
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.457.i = phi i8 [ %spec.select75.i, %bb.bg ], [ %.255.i, %bb.bf ] ; 2 uses
  %.452.i = phi i8 [ %.351.i, %bb.bg ], [ %.250.i, %bb.bf ] ; 2 uses
  %.447.i = phi i8 [ %.346.i, %bb.bg ], [ %.245.i, %bb.bf ] ; 2 uses
  %.4.i = phi i8 [ %.3.i, %bb.bg ], [ %.2.i, %bb.bf ] ; 2 uses
  %indvars.iv.next.i676 = add nuw nsw i64 %indvars.iv.i675, 2 ; 2 uses
  %i.lh = add nuw i32 %.084.i, 2
  %.not61.i = icmp eq i64 %indvars.iv.next.i676, %i.kq
  br i1 %.not61.i, label %._crit_edge.i, label %bb.bd, !llvm.loop !1675

_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit:   ; preds = %._crit_edge.i
  %i.li = trunc nuw i8 %.053.lcssa.i to i1        ; 2 uses
  %i.lj = xor i8 %.043.lcssa.i, 1
  %64 = select i1 %i.li, i8 0, i8 %i.lj           ; 2 uses
  %65 = zext nneg i8 %64 to i32
  store i32 %65, ptr %i.c, align 4, !tbaa !310
  %i.lk = xor i8 %.048.lcssa.i, 1
  %66 = select i1 %i.li, i8 0, i8 %i.lk           ; 2 uses
  %67 = zext nneg i8 %66 to i32
  store i32 %67, ptr %i.d, align 4, !tbaa !310
  %i.ll = icmp eq i8 %64, 0
  br i1 %i.ll, label %bb.bi, label %_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit.thread

bb.bi:                                            ; preds = %_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit
  %i.lm = icmp eq i8 %66, 0                       ; 2 uses
  %. = select i1 %i.lm, ptr %50, ptr %51
  %i.ln = select i1 %i.lm, ptr %51, ptr %50
  %i.lo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 892, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %., ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ln) #35 ; 2 uses
  %.fca.0.extract250 = extractvalue { ptr, i32 } %i.lo, 0 ; 3 uses
  %.fca.1.extract251 = extractvalue { ptr, i32 } %i.lo, 1
  %.sroa.0247.0.copyload = load i16, ptr %48, align 8, !tbaa !189
  %.sroa.2249.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.lp = getelementptr inbounds nuw i8, ptr %.fca.0.extract250, i64 72
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !385
  store i64 %i.lq, ptr %12, align 8, !tbaa !385
  %i.lr = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.fca.0.extract250, i64 68
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !386
  store i32 %i.lt, ptr %i.lr, align 8, !tbaa !387
  %i.lu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract4.i679 = extractvalue { ptr, i32 } %i.lu, 0
  %.fca.1.extract5.i680 = extractvalue { ptr, i32 } %i.lu, 1
  store ptr %.fca.0.extract250, ptr %13, align 8, !tbaa !391
  %.sroa.313.0..sroa_idx.i681 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract251, ptr %.sroa.313.0..sroa_idx.i681, align 8, !tbaa !310
  store ptr %.fca.0.extract4.i679, ptr %14, align 8, !tbaa !391
  %.sroa.4.0..sroa_idx.i682 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract5.i680, ptr %.sroa.4.0..sroa_idx.i682, align 8, !tbaa !310
  %i.lv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0247.0.copyload, ptr %.sroa.2249.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %.fca.0.extract240 = extractvalue { ptr, i32 } %i.lv, 0
  %.fca.1.extract241 = extractvalue { ptr, i32 } %i.lv, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit.thread: ; preds = %._crit_edge.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit671, %_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit
  br i1 %.not.i.i617, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i687, label %.split.i684

.split.i684:                                      ; preds = %_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit.thread
  br i1 %spec.select.i.i.i619, label %bb.bj, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i686

_ZNK4llvm3EVT16isScalableVectorEv.exit.i687:      ; preds = %_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_.exit.thread
  %i.lw = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #37
  br i1 %i.lw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i687, %.split.i684
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i686:  ; preds = %.split.i684
  %i.lx = load i16, ptr %i.gc, align 2, !tbaa !191
  %i.ly = zext i16 %i.lx to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit688

bb.bk:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i687
  %i.lz = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit688

_ZNK4llvm3EVT20getVectorNumElementsEv.exit688:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i686, %bb.bk
  %i.ma = phi i32 [ %i.ly, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i686 ], [ %i.lz, %bb.bk ] ; 5 uses
  %i.mb = and i32 %i.ma, 1
  %.not.i689 = icmp eq i32 %i.mb, 0
  br i1 %.not.i689, label %.preheader.i690, label %bb.bq

.preheader.i690:                                  ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit688
  %.not5775.i = icmp eq i32 %i.ma, 0
  br i1 %.not5775.i, label %._crit_edge.i697, label %.lr.ph.preheader.i691

.lr.ph.preheader.i691:                            ; preds = %.preheader.i690
  %i.mc = zext i32 %i.ma to i64
  br label %.lr.ph.i692

._crit_edge.i697:                                 ; preds = %bb.bo, %.preheader.i690
  %.049.lcssa.i = phi i8 [ 1, %.preheader.i690 ], [ %.453.i, %bb.bo ] ; 2 uses
  %.044.lcssa.i = phi i8 [ 1, %.preheader.i690 ], [ %.448.i, %bb.bo ] ; 2 uses
  %.039.lcssa.i = phi i8 [ 1, %.preheader.i690 ], [ %.443.i, %bb.bo ] ; 2 uses
  %.038.lcssa.i = phi i8 [ 1, %.preheader.i690 ], [ %.4.i695, %bb.bo ]
  %narrow.i698 = add nuw nsw i8 %.044.lcssa.i, %.049.lcssa.i
  %narrow60.i = add nuw nsw i8 %narrow.i698, %.039.lcssa.i
  %narrow61.i = add nuw nsw i8 %narrow60.i, %.038.lcssa.i
  %.not62.i = icmp eq i8 %narrow61.i, 1
  br i1 %.not62.i, label %bb.bp, label %bb.bq

.lr.ph.i692:                                      ; preds = %bb.bo, %.lr.ph.preheader.i691
  %indvars.iv.i693 = phi i64 [ 0, %.lr.ph.preheader.i691 ], [ %indvars.iv.next.i696, %bb.bo ] ; 8 uses
  %.03879.i = phi i8 [ 1, %.lr.ph.preheader.i691 ], [ %.4.i695, %bb.bo ] ; 2 uses
  %.03978.i = phi i8 [ 1, %.lr.ph.preheader.i691 ], [ %.443.i, %bb.bo ] ; 2 uses
  %.04477.i = phi i8 [ 1, %.lr.ph.preheader.i691 ], [ %.448.i, %bb.bo ] ; 2 uses
  %.04976.i = phi i8 [ 1, %.lr.ph.preheader.i691 ], [ %.453.i, %bb.bo ] ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i693
  %i.me = load i32, ptr %i.md, align 4, !tbaa !310 ; 4 uses
  %i.mf = icmp sgt i32 %i.me, -1
  br i1 %i.mf, label %bb.bl, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i692
  %.pre.i = or disjoint i64 %indvars.iv.i693, 1
  br label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i692
  %i.mg = zext nneg i32 %i.me to i64              ; 2 uses
  %.not63.i = icmp eq i64 %indvars.iv.i693, %i.mg
  %spec.select.i704 = select i1 %.not63.i, i8 %.04976.i, i8 0
  %i.mh = or disjoint i64 %indvars.iv.i693, 1     ; 2 uses
  %.not64.i = icmp eq i64 %i.mh, %i.mg
  %.145.i = select i1 %.not64.i, i8 %.04477.i, i8 0
  %i.mi = trunc nuw i64 %indvars.iv.i693 to i32
  %i.mj = add i32 %i.ma, %i.mi                    ; 2 uses
  %.not65.i = icmp eq i32 %i.me, %i.mj
  %.140.i = select i1 %.not65.i, i8 %.03978.i, i8 0
  %i.mk = or disjoint i32 %i.mj, 1
  %.not66.i705 = icmp eq i32 %i.me, %i.mk
  %.1.i706 = select i1 %.not66.i705, i8 %.03879.i, i8 0
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.lr.ph._crit_edge.i ], [ %i.mh, %bb.bl ] ; 2 uses
  %.251.i = phi i8 [ %.04976.i, %.lr.ph._crit_edge.i ], [ %spec.select.i704, %bb.bl ] ; 2 uses
  %.246.i = phi i8 [ %.04477.i, %.lr.ph._crit_edge.i ], [ %.145.i, %bb.bl ] ; 2 uses
  %.241.i = phi i8 [ %.03978.i, %.lr.ph._crit_edge.i ], [ %.140.i, %bb.bl ] ; 2 uses
  %.2.i694 = phi i8 [ %.03879.i, %.lr.ph._crit_edge.i ], [ %.1.i706, %bb.bl ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.pre-phi.i
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !310 ; 4 uses
  %i.mn = icmp sgt i32 %i.mm, -1
  br i1 %i.mn, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.mo = trunc nuw i64 %indvars.iv.i693 to i32
  %i.mp = add i32 %i.ma, %i.mo                    ; 2 uses
  %.not67.i699 = icmp eq i32 %i.mm, %i.mp
  %spec.select71.i = select i1 %.not67.i699, i8 %.251.i, i8 0
  %i.mq = or disjoint i32 %i.mp, 1
  %.not68.i700 = icmp eq i32 %i.mm, %i.mq
  %.347.i = select i1 %.not68.i700, i8 %.246.i, i8 0
  %i.mr = zext nneg i32 %i.mm to i64              ; 2 uses
  %.not69.i701 = icmp eq i64 %indvars.iv.i693, %i.mr
  %.342.i = select i1 %.not69.i701, i8 %.241.i, i8 0
  %.not70.i702 = icmp eq i64 %.pre-phi.i, %i.mr
  %.3.i703 = select i1 %.not70.i702, i8 %.2.i694, i8 0
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.453.i = phi i8 [ %spec.select71.i, %bb.bn ], [ %.251.i, %bb.bm ] ; 2 uses
  %.448.i = phi i8 [ %.347.i, %bb.bn ], [ %.246.i, %bb.bm ] ; 2 uses
  %.443.i = phi i8 [ %.342.i, %bb.bn ], [ %.241.i, %bb.bm ] ; 2 uses
  %.4.i695 = phi i8 [ %.3.i703, %bb.bn ], [ %.2.i694, %bb.bm ] ; 2 uses
  %indvars.iv.next.i696 = add nuw nsw i64 %indvars.iv.i693, 2 ; 2 uses
  %.not57.i = icmp eq i64 %indvars.iv.next.i696, %i.mc
  br i1 %.not57.i, label %._crit_edge.i697, label %.lr.ph.i692, !llvm.loop !1676

bb.bp:                                            ; preds = %._crit_edge.i697
  %i.ms = trunc nuw i8 %.049.lcssa.i to i1        ; 2 uses
  %i.mt = icmp eq i8 %.039.lcssa.i, 1
  %i.mu = or i1 %i.mt, %i.ms
  %i.mv = select i1 %i.mu, i32 844, i32 845
  %i.mw = icmp eq i8 %.044.lcssa.i, 1
  %i.mx = or i1 %i.mw, %i.ms                      ; 2 uses
  %.7 = select i1 %i.mx, ptr %50, ptr %51
  %i.my = select i1 %i.mx, ptr %51, ptr %50
  %i.mz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.mv, ptr noundef nonnull align 8 dereferenceable(12) %49, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %.7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.my) #35 ; 2 uses
  %.fca.0.extract227 = extractvalue { ptr, i32 } %i.mz, 0 ; 3 uses
  %.fca.1.extract228 = extractvalue { ptr, i32 } %i.mz, 1
  %.sroa.0224.0.copyload = load i16, ptr %48, align 8, !tbaa !189
  %.sroa.2226.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.na = getelementptr inbounds nuw i8, ptr %.fca.0.extract227, i64 72
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !385
  store i64 %i.nb, ptr %9, align 8, !tbaa !385
  %i.nc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %.fca.0.extract227, i64 68
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !386
  store i32 %i.ne, ptr %i.nc, align 8, !tbaa !387
  %i.nf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract4.i707 = extractvalue { ptr, i32 } %i.nf, 0
  %.fca.1.extract5.i708 = extractvalue { ptr, i32 } %i.nf, 1
  store ptr %.fca.0.extract227, ptr %10, align 8, !tbaa !391
  %.sroa.313.0..sroa_idx.i709 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract228, ptr %.sroa.313.0..sroa_idx.i709, align 8, !tbaa !310
  store ptr %.fca.0.extract4.i707, ptr %11, align 8, !tbaa !391
  %.sroa.4.0..sroa_idx.i710 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract5.i708, ptr %.sroa.4.0..sroa_idx.i710, align 8, !tbaa !310
  %i.ng = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0224.0.copyload, ptr %.sroa.2226.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.fca.0.extract217 = extractvalue { ptr, i32 } %i.ng, 0
  %.fca.1.extract218 = extractvalue { ptr, i32 } %i.ng, 1
  br label %_ZNK4llvm16AArch64Subtarget15isNeonAvailableEv.exit.thread797

bb.bq:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit688, %._crit_edge.i697
  %.sroa.2214.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !374 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i16 %i.fy, ptr %8, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.2214.0.copyload, ptr %i.nh, align 8
  br i1 %.not.i.i617, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i720, label %.split.i.i712

.split.i.i712:                                    ; preds = %bb.bq
  br i1 %spec.select.i.i.i619, label %bb.br, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i714

end_hunk_0
begin_hunk_1_@_ZL9isEXTMaskN4llvm8ArrayRefIiEENS_3EVTERbRj:bb.a

bb.au:                                            ; preds = %"_ZSt6any_ofIPKiZL9isEXTMaskN4llvm8ArrayRefIiEENS2_3EVTERbRjE3$_1EbT_S9_T0_.exit.thread"
  store i8 1, ptr %4, align 1, !tbaa !436
  br label %bb.aw

bb.av:                                            ; preds = %"_ZSt6any_ofIPKiZL9isEXTMaskN4llvm8ArrayRefIiEENS2_3EVTERbRjE3$_1EbT_S9_T0_.exit.thread"
  %i.hm = sub nuw i32 %i.hk, %i.af
  store i32 %i.hm, ptr %5, align 4, !tbaa !310
  br label %bb.aw

bb.aw:                                            ; preds = %"_ZSt6any_ofIPKiZL9isEXTMaskN4llvm8ArrayRefIiEENS2_3EVTERbRjE3$_1EbT_S9_T0_.exit._crit_edge", %bb.au, %bb.av
  %i.hn = phi i32 [ %i.hh, %bb.au ], [ %i.hh, %bb.av ], [ %.pre, %"_ZSt6any_ofIPKiZL9isEXTMaskN4llvm8ArrayRefIiEENS2_3EVTERbRjE3$_1EbT_S9_T0_.exit._crit_edge" ]
  %.0 = phi i1 [ true, %bb.au ], [ true, %bb.av ], [ false, %"_ZSt6any_ofIPKiZL9isEXTMaskN4llvm8ArrayRefIiEENS2_3EVTERbRjE3$_1EbT_S9_T0_.exit._crit_edge" ]
  %i.ho = icmp ugt i32 %i.hn, 64
  br i1 %i.ho, label %bb.ax, label %_ZN4llvm5APIntD2Ev.exit15

bb.ax:                                            ; preds = %bb.aw
  %i.hp = load ptr, ptr %14, align 8, !tbaa !299  ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %_ZN4llvm5APIntD2Ev.exit15, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.hp) #38
  br label %_ZN4llvm5APIntD2Ev.exit15

_ZN4llvm5APIntD2Ev.exit15:                        ; preds = %bb.aw, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18isSingletonEXTMaskN4llvm8ArrayRefIiEENS_3EVTERj(ptr nofree readonly captures(none) %0, i16 %1, ptr %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %1, -163
  %spec.select.i.i.i = icmp ult i16 %i.b, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.d = zext i16 %1 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !191
  %i.h = zext i16 %i.g to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.i = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.j = phi i32 [ %i.h, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !310    ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  store i32 %i.k, ptr %3, align 4, !tbaa !310
  %.not16.not20 = icmp ugt i32 %i.j, 1
  br i1 %.not16.not20, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext i32 %i.j to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.01221 = phi i32 [ %i.k, %.lr.ph.preheader ], [ %spec.store.select, %.lr.ph ]
  %i.m = add i32 %.01221, 1                       ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.j
  %spec.store.select = select i1 %i.n, i32 0, i32 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !310  ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  %.not = icmp eq i32 %spec.store.select, %i.p
  %or.cond = select i1 %i.q, i1 true, i1 %.not    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond1.not = select i1 %or.cond, i1 %exitcond.not, i1 false
  br i1 %or.cond1.not, label %.lr.ph, label %.critedge, !llvm.loop !1708

.critedge:                                        ; preds = %.lr.ph, %bb.d, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.2 = phi i1 [ false, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ true, %bb.d ], [ %or.cond, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9isZIPMaskENS_8ArrayRefIiEEjRjS2_(ptr %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a
  %.not6179 = icmp eq i32 %2, 0
  br i1 %.not6179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = lshr exact i32 %2, 1                     ; 2 uses
  %invariant.op = add i32 %2, %i.b                ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = zext i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.053.lcssa = phi i8 [ 1, %.preheader ], [ %.457, %bb.f ] ; 2 uses
  %.048.lcssa = phi i8 [ 1, %.preheader ], [ %.452, %bb.f ] ; 2 uses
  %.043.lcssa = phi i8 [ 1, %.preheader ], [ %.447, %bb.f ] ; 2 uses
  %.042.lcssa = phi i8 [ 1, %.preheader ], [ %.4, %bb.f ]
  %narrow = add nuw nsw i8 %.048.lcssa, %.053.lcssa
  %narrow64 = add nuw nsw i8 %narrow, %.043.lcssa
  %narrow65 = add nuw nsw i8 %narrow64, %.042.lcssa
  %.not66 = icmp eq i8 %narrow65, 1
  br i1 %.not66, label %bb.g, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %.084 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.f ] ; 3 uses
  %.04283 = phi i8 [ 1, %.lr.ph ], [ %.4, %bb.f ] ; 2 uses
  %.04382 = phi i8 [ 1, %.lr.ph ], [ %.447, %bb.f ] ; 2 uses
  %.04881 = phi i8 [ 1, %.lr.ph ], [ %.452, %bb.f ] ; 2 uses
  %.05380 = phi i8 [ 1, %.lr.ph ], [ %.457, %bb.f ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !310  ; 4 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = lshr exact i64 %indvars.iv, 1            ; 2 uses
  %i.i = lshr exact i32 %.084, 1                  ; 2 uses
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %.not67 = icmp eq i64 %i.h, %i.j
  %spec.select = select i1 %.not67, i8 %.05380, i8 0
  %i.k = add nuw nsw i64 %i.h, %i.c
  %.not68 = icmp eq i64 %i.k, %i.j
  %.149 = select i1 %.not68, i8 %.04881, i8 0
  %i.l = add i32 %i.i, %2
  %.not69 = icmp eq i32 %i.f, %i.l
  %.144 = select i1 %.not69, i8 %.04382, i8 0
  %.reass = add i32 %i.i, %invariant.op
  %.not70 = icmp eq i32 %i.f, %.reass
  %.1 = select i1 %.not70, i8 %.04283, i8 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.255 = phi i8 [ %spec.select, %bb.c ], [ %.05380, %bb.b ] ; 2 uses
  %.250 = phi i8 [ %.149, %bb.c ], [ %.04881, %bb.b ] ; 2 uses
  %.245 = phi i8 [ %.144, %bb.c ], [ %.04382, %bb.b ] ; 2 uses
  %.2 = phi i8 [ %.1, %bb.c ], [ %.04283, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !310  ; 4 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = lshr exact i64 %indvars.iv, 1            ; 2 uses
  %i.r = lshr exact i32 %.084, 1                  ; 2 uses
  %i.s = add i32 %i.r, %2
  %.not71 = icmp eq i32 %i.o, %i.s
  %spec.select75 = select i1 %.not71, i8 %.255, i8 0
  %.reass89 = add i32 %i.r, %invariant.op
  %.not72 = icmp eq i32 %i.o, %.reass89
  %.351 = select i1 %.not72, i8 %.250, i8 0
  %i.t = zext nneg i32 %i.o to i64                ; 2 uses
  %.not73 = icmp eq i64 %i.q, %i.t
  %.346 = select i1 %.not73, i8 %.245, i8 0
  %i.u = add nuw nsw i64 %i.q, %i.c
  %.not74 = icmp eq i64 %i.u, %i.t
  %.3 = select i1 %.not74, i8 %.2, i8 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.457 = phi i8 [ %spec.select75, %bb.e ], [ %.255, %bb.d ] ; 2 uses
  %.452 = phi i8 [ %.351, %bb.e ], [ %.250, %bb.d ] ; 2 uses
  %.447 = phi i8 [ %.346, %bb.e ], [ %.245, %bb.d ] ; 2 uses
  %.4 = phi i8 [ %.3, %bb.e ], [ %.2, %bb.d ]     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.v = add nuw i32 %.084, 2
  %.not61 = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %.not61, label %._crit_edge, label %bb.b, !llvm.loop !1675

bb.g:                                             ; preds = %._crit_edge
  %i.w = trunc nuw i8 %.053.lcssa to i1           ; 2 uses
  %i.x = xor i8 %.043.lcssa, 1
  %5 = select i1 %i.w, i8 0, i8 %i.x
  %6 = zext nneg i8 %5 to i32
  store i32 %6, ptr %3, align 4, !tbaa !310
  %i.y = xor i8 %.048.lcssa, 1
  %7 = select i1 %i.w, i8 0, i8 %i.y
  %8 = zext nneg i8 %7 to i32
  store i32 %8, ptr %4, align 4, !tbaa !310
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge, %bb.a
  %.159 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ true, %bb.g ]
  ret i1 %.159
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9isUZPMaskENS_8ArrayRefIiEEjRj(ptr %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat {
bb.a:
  %.not29 = icmp eq i32 %2, 0
  br i1 %.not29, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !310  ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !1709

bb.c:                                             ; preds = %.lr.ph
  %i.e = trunc nuw i64 %indvars.iv to i32
  %i.f = shl i32 %i.e, 1
  %i.g = icmp ne i32 %i.c, %i.f
  %i.h = zext i1 %i.g to i32                      ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.f
  %indvars.iv36 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next37, %bb.f ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !310  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = trunc nuw i64 %indvars.iv36 to i32
  %i.m = shl i32 %i.l, 1
  %i.n = or disjoint i32 %i.m, %i.h
  %.not22 = icmp eq i32 %i.j, %i.n
  br i1 %.not22, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %.not21 = icmp eq i64 %indvars.iv.next37, %i.a
  br i1 %.not21, label %.critedge, label %bb.d, !llvm.loop !1710

.critedge:                                        ; preds = %bb.f
  store i32 %i.h, ptr %3, align 4, !tbaa !310
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.a, %.critedge
  %.1 = phi i1 [ false, %bb.a ], [ true, %.critedge ], [ false, %bb.e ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9isTRNMaskENS_8ArrayRefIiEEjRjS2_(ptr %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %.not5775 = icmp eq i32 %2, 0
  br i1 %.not5775, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.b = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.049.lcssa = phi i8 [ 1, %.preheader ], [ %.453, %bb.e ] ; 2 uses
  %.044.lcssa = phi i8 [ 1, %.preheader ], [ %.448, %bb.e ] ; 2 uses
  %.039.lcssa = phi i8 [ 1, %.preheader ], [ %.443, %bb.e ] ; 2 uses
  %.038.lcssa = phi i8 [ 1, %.preheader ], [ %.4, %bb.e ]
  %narrow = add nuw nsw i8 %.044.lcssa, %.049.lcssa
  %narrow60 = add nuw nsw i8 %narrow, %.039.lcssa
  %narrow61 = add nuw nsw i8 %narrow60, %.038.lcssa
  %.not62 = icmp eq i8 %narrow61, 1
  br i1 %.not62, label %bb.f, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 8 uses
  %.03879 = phi i8 [ 1, %.lr.ph.preheader ], [ %.4, %bb.e ] ; 2 uses
  %.03978 = phi i8 [ 1, %.lr.ph.preheader ], [ %.443, %bb.e ] ; 2 uses
  %.04477 = phi i8 [ 1, %.lr.ph.preheader ], [ %.448, %bb.e ] ; 2 uses
  %.04976 = phi i8 [ 1, %.lr.ph.preheader ], [ %.453, %bb.e ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !310  ; 4 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = or disjoint i64 %indvars.iv, 1
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %.not63 = icmp eq i64 %indvars.iv, %i.f
  %spec.select = select i1 %.not63, i8 %.04976, i8 0
  %i.g = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %.not64 = icmp eq i64 %i.g, %i.f
  %.145 = select i1 %.not64, i8 %.04477, i8 0
  %i.h = trunc nuw i64 %indvars.iv to i32
  %i.i = add i32 %2, %i.h                         ; 2 uses
  %.not65 = icmp eq i32 %i.d, %i.i
  %.140 = select i1 %.not65, i8 %.03978, i8 0
  %i.j = or disjoint i32 %i.i, 1
  %.not66 = icmp eq i32 %i.d, %i.j
  %.1 = select i1 %.not66, i8 %.03879, i8 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph._crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %.lr.ph._crit_edge ], [ %i.g, %bb.b ] ; 2 uses
  %.251 = phi i8 [ %.04976, %.lr.ph._crit_edge ], [ %spec.select, %bb.b ] ; 2 uses
  %.246 = phi i8 [ %.04477, %.lr.ph._crit_edge ], [ %.145, %bb.b ] ; 2 uses
  %.241 = phi i8 [ %.03978, %.lr.ph._crit_edge ], [ %.140, %bb.b ] ; 2 uses
  %.2 = phi i8 [ %.03879, %.lr.ph._crit_edge ], [ %.1, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre-phi
  %i.l = load i32, ptr %i.k, align 4, !tbaa !310  ; 4 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %indvars.iv to i32
  %i.o = add i32 %2, %i.n                         ; 2 uses
  %.not67 = icmp eq i32 %i.l, %i.o
  %spec.select71 = select i1 %.not67, i8 %.251, i8 0
  %i.p = or disjoint i32 %i.o, 1
  %.not68 = icmp eq i32 %i.l, %i.p
  %.347 = select i1 %.not68, i8 %.246, i8 0
  %i.q = zext nneg i32 %i.l to i64                ; 2 uses
  %.not69 = icmp eq i64 %indvars.iv, %i.q
  %.342 = select i1 %.not69, i8 %.241, i8 0
  %.not70 = icmp eq i64 %.pre-phi, %i.q
  %.3 = select i1 %.not70, i8 %.2, i8 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.453 = phi i8 [ %spec.select71, %bb.d ], [ %.251, %bb.c ] ; 2 uses
  %.448 = phi i8 [ %.347, %bb.d ], [ %.246, %bb.c ] ; 2 uses
  %.443 = phi i8 [ %.342, %bb.d ], [ %.241, %bb.c ] ; 2 uses
  %.4 = phi i8 [ %.3, %bb.d ], [ %.2, %bb.c ]     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not57 = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %.not57, label %._crit_edge, label %.lr.ph, !llvm.loop !1676

bb.f:                                             ; preds = %._crit_edge
  %i.r = trunc nuw i8 %.049.lcssa to i1           ; 2 uses
  %i.s = xor i8 %.039.lcssa, 1
  %5 = select i1 %i.r, i8 0, i8 %i.s
  %6 = zext nneg i8 %5 to i32
  store i32 %6, ptr %3, align 4, !tbaa !310
  %i.t = xor i8 %.044.lcssa, 1
  %7 = select i1 %i.r, i8 0, i8 %i.t
  %8 = zext nneg i8 %7 to i32
  store i32 %8, ptr %4, align 4, !tbaa !310
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.a
  %.155 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ true, %bb.f ]
  ret i1 %.155
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18isZIP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj(ptr nofree readonly captures(none) %0, i16 %1, ptr %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %1, -163
  %spec.select.i.i.i = icmp ult i16 %i.b, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.d = zext i16 %1 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !191
  %i.h = zext i16 %i.g to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.i = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.j = phi i32 [ %i.h, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.i, %bb.c ] ; 4 uses
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.l = load i32, ptr %0, align 4, !tbaa !310
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = zext i1 %i.m to i32
  store i32 %i.n, ptr %3, align 4, !tbaa !310
  %.not1826 = icmp eq i32 %i.j, 0
  br i1 %.not1826, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.o = lshr exact i32 %i.j, 1
  %i.p = select i1 %i.m, i32 %i.o, i32 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.028 = phi i32 [ %i.aa, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.01527 = phi i32 [ %i.z, %bb.f ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %i.q = zext i32 %.028 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !310  ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %.not19 = icmp eq i32 %i.s, %.01527
  %or.cond = select i1 %i.t, i1 true, i1 %.not19
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.u = or disjoint i32 %.028, 1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !310  ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  %.not20 = icmp eq i32 %i.x, %.01527
  %or.cond25 = select i1 %i.y, i1 true, i1 %.not20
  br i1 %or.cond25, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.z = add i32 %.01527, 1
  %i.aa = add i32 %.028, 2                        ; 2 uses
  %.not18 = icmp eq i32 %i.aa, %i.j
  br i1 %.not18, label %.critedge, label %.lr.ph, !llvm.loop !1677

.critedge:                                        ; preds = %bb.f, %.lr.ph, %bb.e, %bb.d, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.2 = phi i1 [ false, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ true, %bb.d ], [ true, %bb.f ], [ false, %.lr.ph ], [ false, %bb.e ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18isUZP_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj(ptr nofree readonly captures(none) %0, i16 %1, ptr %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %1, -163
  %spec.select.i.i.i = icmp ult i16 %i.b, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.d = zext i16 %1 to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !191
  %i.h = zext i16 %i.g to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.i = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.j = phi i32 [ %i.h, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.i, %bb.c ]
  %i.k = lshr i32 %i.j, 1                         ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !310
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32                      ; 3 uses
  store i32 %i.n, ptr %3, align 4, !tbaa !310
  %.not3039 = icmp eq i32 %i.k, 0
  br i1 %.not3039, label %.critedge33, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.o = zext nneg i32 %i.k to i64                ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.02140 = phi i32 [ %i.n, %.preheader.preheader ], [ %i.s, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !310  ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %.not31 = icmp eq i32 %i.q, %.02140
  %or.cond = select i1 %i.r, i1 true, i1 %.not31
  br i1 %or.cond, label %bb.e, label %.critedge33

bb.e:                                             ; preds = %bb.d
  %i.s = add nuw i32 %.02140, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not30 = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %.not30, label %..critedge_crit_edge, label %bb.d, !llvm.loop !1711

..critedge_crit_edge:                             ; preds = %bb.e
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %..critedge_crit_edge
  %indvars.iv.1 = phi i64 [ 0, %..critedge_crit_edge ], [ %indvars.iv.next.1, %bb.g ] ; 2 uses
  %.02140.1 = phi i32 [ %i.n, %..critedge_crit_edge ], [ %i.v, %bb.g ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.1
  %i.t = load i32, ptr %gep, align 4, !tbaa !310  ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  %.not31.1 = icmp eq i32 %i.t, %.02140.1
  %or.cond.1 = select i1 %i.u, i1 true, i1 %.not31.1 ; 3 uses
  br i1 %or.cond.1, label %bb.g, label %.critedge33

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i32 %.02140.1, 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %.not30.1 = icmp eq i64 %indvars.iv.next.1, %i.o
  br i1 %.not30.1, label %.critedge33, label %bb.f, !llvm.loop !1711

.critedge33:                                      ; preds = %bb.d, %bb.f, %bb.g, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not38 = phi i1 [ true, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ %or.cond.1, %bb.f ], [ %or.cond.1, %bb.g ], [ false, %bb.d ]
  ret i1 %.not38
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18isTRN_v_undef_MaskN4llvm8ArrayRefIiEENS_3EVTERj(ptr nofree readonly captures(none) %0, i16 %1, ptr %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  store i16 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %.not.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.b = add i16 %1, -163
  %spec.select.i.i.i = icmp ult i16 %i.b, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
end_hunk_1
