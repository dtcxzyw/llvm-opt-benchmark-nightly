Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetLowering?download=true
inline.NumInlined: 10476
inline.NumDeleted: 2372
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEjb:bb.a
  br i1 %i.dor, label %_ZN4llvm5APIntD2Ev.exit4900, label %bb.agj

bb.agj:                                           ; preds = %bb.agi
  %i.dos = load ptr, ptr %289, align 8, !tbaa !361 ; 2 uses
  %i.dot = icmp eq ptr %i.dos, null
  br i1 %i.dot, label %_ZN4llvm5APIntD2Ev.exit4900, label %bb.agk

bb.agk:                                           ; preds = %bb.agj
  call void @_ZdaPv(ptr noundef nonnull %i.dos) #29
  br label %_ZN4llvm5APIntD2Ev.exit4900

_ZN4llvm5APIntD2Ev.exit4900:                      ; preds = %bb.agk, %bb.agj, %bb.agi
  %i.dou = load i64, ptr %290, align 8
  store i64 %i.dou, ptr %289, align 8
  %i.dov = getelementptr inbounds nuw i8, ptr %290, i64 8
  %i.dow = load i32, ptr %i.dov, align 8, !tbaa !384
  store i32 %i.dow, ptr %i.dop, align 8, !tbaa !384
  call void @llvm.lifetime.end.p0(ptr nonnull %290) #28
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %bb.agh, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZN4llvm5APIntD2Ev.exit4900
  call void @llvm.lifetime.start.p0(ptr nonnull %291) #28
  %i.dox = getelementptr inbounds nuw i8, ptr %291, i64 8 ; 4 uses
  %i.doy = load i32, ptr %i.as, align 8, !tbaa !384 ; 2 uses
  store i32 %i.doy, ptr %i.dox, align 8, !tbaa !384
  %i.doz = icmp ult i32 %i.doy, 65
  br i1 %i.doz, label %bb.agl, label %bb.agm

bb.agl:                                           ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread
  %i.dpa = load i64, ptr %15, align 8, !tbaa !361
  store i64 %i.dpa, ptr %291, align 8, !tbaa !361
  br label %_ZN4llvm5APIntC2ERKS0_.exit4901

bb.agm:                                           ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %291, ptr noundef nonnull align 8 dereferenceable(12) %15) #28
  br label %_ZN4llvm5APIntC2ERKS0_.exit4901

_ZN4llvm5APIntC2ERKS0_.exit4901:                  ; preds = %bb.agl, %bb.agm
  %i.dpb = icmp ugt i32 %i.c, %i.dnz              ; 2 uses
  br i1 %i.dpb, label %bb.agn, label %bb.agq

bb.agn:                                           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit4901
  call void @llvm.lifetime.start.p0(ptr nonnull %292) #28
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %292, ptr noundef nonnull align 8 dereferenceable(12) %291, i32 noundef %i.dnz) #28
  %i.dpc = load i32, ptr %i.dox, align 8, !tbaa !384
  %i.dpd = icmp ult i32 %i.dpc, 65
  br i1 %i.dpd, label %_ZN4llvm5APIntD2Ev.exit4903, label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  %i.dpe = load ptr, ptr %291, align 8, !tbaa !361 ; 2 uses
  %i.dpf = icmp eq ptr %i.dpe, null
  br i1 %i.dpf, label %_ZN4llvm5APIntD2Ev.exit4903, label %bb.agp

bb.agp:                                           ; preds = %bb.ago
  call void @_ZdaPv(ptr noundef nonnull %i.dpe) #29
  br label %_ZN4llvm5APIntD2Ev.exit4903

_ZN4llvm5APIntD2Ev.exit4903:                      ; preds = %bb.agp, %bb.ago, %bb.agn
  %i.dpg = load i64, ptr %292, align 8
  store i64 %i.dpg, ptr %291, align 8
  %i.dph = getelementptr inbounds nuw i8, ptr %292, i64 8
  %i.dpi = load i32, ptr %i.dph, align 8, !tbaa !384
  store i32 %i.dpi, ptr %i.dox, align 8, !tbaa !384
  call void @llvm.lifetime.end.p0(ptr nonnull %292) #28
  br label %bb.agq

bb.agq:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit4903, %_ZN4llvm5APIntC2ERKS0_.exit4901
  %.sroa.0621.0.copyload = load ptr, ptr %287, align 8, !tbaa !258
  %.sroa.2622.0.copyload = load i32, ptr %i.dnq, align 8, !tbaa !257
  %i.dpj = add nuw nsw i32 %7, 1                  ; 2 uses
  %i.dpk = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.0621.0.copyload, i32 %.sroa.2622.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %291, ptr noundef nonnull align 8 dereferenceable(12) %289, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.dpj, i1 noundef zeroext false)
  br i1 %i.dpk, label %bb.agw, label %bb.agr

bb.agr:                                           ; preds = %bb.agq
  %i.dpl = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %291)
  br i1 %i.dpl, label %bb.ags, label %bb.agt

bb.ags:                                           ; preds = %bb.agr
  %i.dpm = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %289)
  br i1 %i.dpm, label %bb.agu, label %bb.agt

bb.agt:                                           ; preds = %bb.ags, %bb.agr
  %.sroa.0618.0.copyload = load ptr, ptr %287, align 8, !tbaa !258
  %.sroa.2619.0.copyload = load i32, ptr %i.dnq, align 8, !tbaa !257
  %i.dpn = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %i.dpo = call { ptr, i32 } @_ZNK4llvm14TargetLowering31SimplifyMultipleUseDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.0618.0.copyload, i32 %.sroa.2619.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %291, ptr noundef nonnull align 8 dereferenceable(12) %289, ptr noundef nonnull align 8 dereferenceable(920) %i.dpn, i32 noundef %i.dpj) ; 2 uses
  %.fca.0.extract614 = extractvalue { ptr, i32 } %i.dpo, 0 ; 2 uses
  %.not5852 = icmp eq ptr %.fca.0.extract614, null
  br i1 %.not5852, label %bb.agu, label %.thread5762

.thread5762:                                      ; preds = %bb.agt
  %.fca.1.extract615 = extractvalue { ptr, i32 } %i.dpo, 1
  %i.dpp = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %i.dpq = load ptr, ptr %12, align 8, !tbaa !261
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dpq, i64 24
  %i.dps = load i32, ptr %i.dpr, align 8, !tbaa !259
  %.sroa.0608.0.copyload = load i16, ptr %14, align 8, !tbaa !351
  %.sroa.2610.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !348
  store ptr %.fca.0.extract614, ptr %293, align 8, !tbaa !258
  %.sroa.55116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %293, i64 8
  store i32 %.fca.1.extract615, ptr %.sroa.55116.0..sroa_idx, align 8, !tbaa !257
  store ptr %.sroa.05120.0.copyload, ptr %294, align 8, !tbaa !258
  %.sroa.55122.0..sroa_idx5123 = getelementptr inbounds nuw i8, ptr %294, i64 8
  store i64 %i.dno, ptr %.sroa.55122.0..sroa_idx5123, align 8
  %i.dpt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.dpp, i32 noundef %i.dps, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 %.sroa.0608.0.copyload, ptr %.sroa.2610.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %293, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %294) #28 ; 2 uses
  %.fca.0.extract604 = extractvalue { ptr, i32 } %i.dpt, 0
  %.fca.1.extract605 = extractvalue { ptr, i32 } %i.dpt, 1
  %.sroa.0601.0.copyload = load ptr, ptr %12, align 8, !tbaa !258
  %.sroa.2602.0.copyload = load i32, ptr %i.a, align 8, !tbaa !257
  %i.dpu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.0601.0.copyload, ptr %i.dpu, align 8, !tbaa !258
  %.sroa.22.0..sroa_idx.i4904 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.2602.0.copyload, ptr %.sroa.22.0..sroa_idx.i4904, align 8, !tbaa !257
  %i.dpv = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract604, ptr %i.dpv, align 8, !tbaa !258
  %.sroa.2.0..sroa_idx.i4905 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract605, ptr %.sroa.2.0..sroa_idx.i4905, align 8, !tbaa !257
  br label %bb.agw

bb.agu:                                           ; preds = %bb.agt, %bb.ags
  %i.dpw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %23) ; 0 uses
  br i1 %i.dpb, label %bb.agv, label %bb.agw

bb.agv:                                           ; preds = %bb.agu
  call void @llvm.lifetime.start.p0(ptr nonnull %295) #28
  call void @_ZNK4llvm9KnownBits6anyextEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %295, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.c)
  %i.dpx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %295) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %295) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %295) #28
  br label %bb.agw

bb.agw:                                           ; preds = %.thread5762, %bb.agu, %bb.agv, %bb.agq
  %i.dpy = phi i1 [ false, %.thread5762 ], [ false, %bb.agq ], [ true, %bb.agv ], [ true, %bb.agu ]
  %i.dpz = load i32, ptr %i.dox, align 8, !tbaa !384
  %i.dqa = icmp ugt i32 %i.dpz, 64
  br i1 %i.dqa, label %bb.agx, label %_ZN4llvm5APIntD2Ev.exit4906

bb.agx:                                           ; preds = %bb.agw
  %i.dqb = load ptr, ptr %291, align 8, !tbaa !361 ; 2 uses
  %i.dqc = icmp eq ptr %i.dqb, null
  br i1 %i.dqc, label %_ZN4llvm5APIntD2Ev.exit4906, label %bb.agy

bb.agy:                                           ; preds = %bb.agx
  call void @_ZdaPv(ptr noundef nonnull %i.dqb) #29
  br label %_ZN4llvm5APIntD2Ev.exit4906

_ZN4llvm5APIntD2Ev.exit4906:                      ; preds = %bb.agw, %bb.agx, %bb.agy
  call void @llvm.lifetime.end.p0(ptr nonnull %291) #28
  %i.dqd = getelementptr inbounds nuw i8, ptr %289, i64 8
  %i.dqe = load i32, ptr %i.dqd, align 8, !tbaa !384
  %i.dqf = icmp ugt i32 %i.dqe, 64
  br i1 %i.dqf, label %bb.agz, label %bb.ahb

bb.agz:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit4906
  %i.dqg = load ptr, ptr %289, align 8, !tbaa !361 ; 2 uses
  %i.dqh = icmp eq ptr %i.dqg, null
  br i1 %i.dqh, label %bb.ahb, label %bb.aha

bb.aha:                                           ; preds = %bb.agz
  call void @_ZdaPv(ptr noundef nonnull %i.dqg) #29
  br label %bb.ahb

bb.ahb:                                           ; preds = %bb.aha, %bb.agz, %_ZN4llvm5APIntD2Ev.exit4906
  call void @llvm.lifetime.end.p0(ptr nonnull %289) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %287) #28
  br i1 %i.dpy, label %_ZN4llvm3ISD10isZEXTLoadEPKNS_6SDNodeE.exit.thread, label %.critedge3992

bb.ahc:                                           ; preds = %bb.al
  %i.dqi = load i16, ptr %14, align 8, !tbaa !366 ; 2 uses
  %.not.i4908 = icmp eq i16 %i.dqi, 0
  br i1 %.not.i4908, label %_ZNK4llvm3EVT16isScalableVectorEv.exit4910, label %.split5766

.split5766:                                       ; preds = %bb.ahc
  %i.dqj = add i16 %i.dqi, -163
  %spec.select.i.i4909 = icmp ult i16 %i.dqj, 53
  br i1 %spec.select.i.i4909, label %.critedge3992, label %bb.ahd

_ZNK4llvm3EVT16isScalableVectorEv.exit4910:       ; preds = %bb.ahc
  %i.dqk = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #32
  br i1 %i.dqk, label %.critedge3992, label %bb.ahd

bb.ahd:                                           ; preds = %.split5766, %_ZNK4llvm3EVT16isScalableVectorEv.exit4910
  %i.dql = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.dqm = load ptr, ptr %i.dql, align 8, !tbaa !260 ; 2 uses
  %.sroa.05107.0.copyload = load ptr, ptr %i.dqm, align 8, !tbaa !258 ; 7 uses
  %.sroa.10.0..sroa_idx5109 = getelementptr inbounds nuw i8, ptr %i.dqm, i64 8 ; 2 uses
  %i.dqn = load <2 x i32>, ptr %.sroa.10.0..sroa_idx5109, align 8
  %.sroa.10.0.copyload5110 = load i32, ptr %.sroa.10.0..sroa_idx5109, align 8, !tbaa !257 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %296) #28
  %i.dqo = getelementptr inbounds nuw i8, ptr %.sroa.05107.0.copyload, i64 48
  %i.dqp = load ptr, ptr %i.dqo, align 8, !tbaa !349
  %i.dqq = zext i32 %.sroa.10.0.copyload5110 to i64
  %i.dqr = getelementptr inbounds nuw [16 x i8], ptr %i.dqp, i64 %i.dqq ; 2 uses
  %.sroa.0.0.copyload.i.i4911 = load i16, ptr %i.dqr, align 8, !tbaa !351
  %.sroa.21.0..sroa_idx.i.i4912 = getelementptr inbounds nuw i8, ptr %i.dqr, i64 8
  %.sroa.21.0.copyload.i.i4913 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i4912, align 8, !tbaa !348
  store i16 %.sroa.0.0.copyload.i.i4911, ptr %296, align 8
  %i.dqs = getelementptr inbounds nuw i8, ptr %296, i64 8
  store ptr %.sroa.21.0.copyload.i.i4913, ptr %i.dqs, align 8
  %i.dqt = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %296)
  %i.dqu = trunc i64 %i.dqt to i32                ; 10 uses
  %i.dqv = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.dqw = load i8, ptr %i.dqv, align 1, !tbaa !400, !range !297, !noundef !55
  %i.dqx = trunc nuw i8 %i.dqw to i1
  br i1 %i.dqx, label %.critedge4025.thread, label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd
  %i.dqy = load i16, ptr %14, align 8, !tbaa !366 ; 2 uses
  %.not.i4916 = icmp eq i16 %i.dqy, 0
  br i1 %.not.i4916, label %_ZNK4llvm3EVT8isVectorEv.exit4918, label %.split5767

.split5767:                                       ; preds = %bb.ahe
  %i.dqz = add i16 %i.dqy, -19
  %spec.select.i.i4917 = icmp ult i16 %i.dqz, 197
  br i1 %spec.select.i.i4917, label %.critedge4025.thread, label %bb.ahf

_ZNK4llvm3EVT8isVectorEv.exit4918:                ; preds = %bb.ahe
  %i.dra = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #32
  br i1 %i.dra, label %.critedge4025.thread, label %bb.ahf

bb.ahf:                                           ; preds = %.split5767, %_ZNK4llvm3EVT8isVectorEv.exit4918
  %i.drb = load i16, ptr %296, align 8, !tbaa !366 ; 3 uses
  %.not.i4919 = icmp eq i16 %i.drb, 0
  br i1 %.not.i4919, label %_ZNK4llvm3EVT8isVectorEv.exit4921, label %.split5768

.split5768:                                       ; preds = %bb.ahf
  %i.drc = add i16 %i.drb, -19
  %spec.select.i.i4920 = icmp ult i16 %i.drc, 197
  br i1 %spec.select.i.i4920, label %.split5774.thread, label %bb.ahg

_ZNK4llvm3EVT8isVectorEv.exit4921:                ; preds = %bb.ahf
  %i.drd = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %296) #32
  br i1 %i.drd, label %_ZNK4llvm3EVT8isVectorEv.exit4934, label %bb.ahg

bb.ahg:                                           ; preds = %.split5768, %_ZNK4llvm3EVT8isVectorEv.exit4921
  call void @llvm.lifetime.start.p0(ptr nonnull %297) #28
  %i.dre = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %12) ; 2 uses
  %.fca.1.extract586 = extractvalue { i64, i8 } %i.dre, 1
  %i.drf = trunc nuw i8 %.fca.1.extract586 to i1
  br i1 %i.drf, label %bb.ahh, label %_ZNK4llvm8TypeSizecvmEv.exit4922

bb.ahh:                                           ; preds = %bb.ahg
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.23) #30
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit4922:                 ; preds = %bb.ahg
  %.fca.0.extract585 = extractvalue { i64, i8 } %i.dre, 0
  %i.drg = trunc i64 %.fca.0.extract585 to i32
  call void @_ZN4llvm5APInt11getSignMaskEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %297, i32 noundef %i.drg)
  %i.drh = load i32, ptr %i.as, align 8, !tbaa !384
  %i.dri = icmp ult i32 %i.drh, 65
  br i1 %i.dri, label %.split5769, label %_ZNK4llvm5APInteqERKS0_.exit4924

.split5769:                                       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit4922
  %i.drj = load i64, ptr %15, align 8, !tbaa !361
  %i.drk = load i64, ptr %297, align 8, !tbaa !361
  %i.drl = icmp eq i64 %i.drj, %i.drk
  br i1 %i.drl, label %bb.ahi, label %bb.ahj

_ZNK4llvm5APInteqERKS0_.exit4924:                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit4922
  %i.drm = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %297) #32
  br i1 %i.drm, label %bb.ahi, label %bb.ahj

bb.ahi:                                           ; preds = %.split5769, %_ZNK4llvm5APInteqERKS0_.exit4924
  %i.drn = call noundef zeroext i1 @_ZNK4llvm3EVT15isFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %296)
  br label %bb.ahj

bb.ahj:                                           ; preds = %_ZNK4llvm5APInteqERKS0_.exit4924, %bb.ahi, %.split5769
  %i.dro = phi i1 [ %i.drn, %bb.ahi ], [ false, %_ZNK4llvm5APInteqERKS0_.exit4924 ], [ false, %.split5769 ]
  %i.drp = getelementptr inbounds nuw i8, ptr %297, i64 8
  %i.drq = load i32, ptr %i.drp, align 8, !tbaa !384
  %i.drr = icmp ugt i32 %i.drq, 64
  br i1 %i.drr, label %bb.ahk, label %.critedge4025

bb.ahk:                                           ; preds = %bb.ahj
  %i.drs = load ptr, ptr %297, align 8, !tbaa !361 ; 2 uses
  %i.drt = icmp eq ptr %i.drs, null
  br i1 %i.drt, label %.critedge4025, label %bb.ahl

bb.ahl:                                           ; preds = %bb.ahk
  call void @_ZdaPv(ptr noundef nonnull %i.drs) #29
  br label %.critedge4025

.critedge4025:                                    ; preds = %bb.ahl, %bb.ahk, %bb.ahj
  call void @llvm.lifetime.end.p0(ptr nonnull %297) #28
  br i1 %i.dro, label %bb.ahm, label %.critedge4025.thread

bb.ahm:                                           ; preds = %.critedge4025
  %.sroa.0581.0.copyload = load i16, ptr %14, align 8, !tbaa !351 ; 4 uses
  %.sroa.2583.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0581.0.copyload, 1
  %i.dru = icmp eq ptr %.sroa.2583.0.copyload, null
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.dru, i1 false
  br i1 %.not4.i.i.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, label %bb.ahn

bb.ahn:                                           ; preds = %bb.ahm
  %.not.i16.i = icmp eq i16 %.sroa.0581.0.copyload, 0
  br i1 %.not.i16.i, label %.critedge4025.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4926

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4926: ; preds = %bb.ahn
  %i.drv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.drw = zext i16 %.sroa.0581.0.copyload to i64 ; 2 uses
  %i.drx = getelementptr inbounds nuw [8 x i8], ptr %i.drv, i64 %i.drw
  %i.dry = load ptr, ptr %i.drx, align 8, !tbaa !363
  %.not.i4927 = icmp eq ptr %i.dry, null
  br i1 %.not.i4927, label %.critedge4025.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit: ; preds = %bb.ahm, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4926
  %.pre-phi5990 = phi i64 [ %i.drw, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4926 ], [ 1, %bb.ahm ]
  %i.drz = getelementptr inbounds nuw [537 x i8], ptr %0, i64 %.pre-phi5990
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.drz, i64 6343
  %i.dsb = load i8, ptr %i.dsa, align 1, !tbaa !369
  %i.dsc = and i8 %i.dsb, -5
  %spec.select.i = icmp eq i8 %i.dsc, 0
  br i1 %spec.select.i, label %bb.aho, label %.critedge4025.thread

bb.aho:                                           ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit
  %i.dsd = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  store ptr %.sroa.05107.0.copyload, ptr %298, align 8, !tbaa !258
  %.sroa.10.0..sroa_idx5111 = getelementptr inbounds nuw i8, ptr %298, i64 8
  store <2 x i32> %i.dqn, ptr %.sroa.10.0..sroa_idx5111, align 8
  %i.dse = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.dsd, i32 noundef 159, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 %.sroa.0581.0.copyload, ptr %.sroa.2583.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %298) #28 ; 2 uses
  %i.dsf = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %12) ; 2 uses
  %.fca.1.extract567 = extractvalue { i64, i8 } %i.dsf, 1
  %i.dsg = trunc nuw i8 %.fca.1.extract567 to i1
  br i1 %i.dsg, label %bb.ahp, label %_ZNK4llvm8TypeSizecvmEv.exit4929

bb.ahp:                                           ; preds = %bb.aho
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.23) #30
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit4929:                 ; preds = %bb.aho
  %.fca.0.extract566 = extractvalue { i64, i8 } %i.dsf, 0
  %.fca.1.extract572 = extractvalue { ptr, i32 } %i.dse, 1
  %.fca.0.extract571 = extractvalue { ptr, i32 } %i.dse, 0
  %i.dsh = add i64 %.fca.0.extract566, 4294967295
  %i.dsi = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %i.dsj = and i64 %i.dsh, 4294967295
  %.sroa.0560.0.copyload = load i16, ptr %14, align 8, !tbaa !351
  %.sroa.2562.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !348
  %i.dsk = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %i.dsi, i64 noundef %i.dsj, i16 %.sroa.0560.0.copyload, ptr %.sroa.2562.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %17) #28 ; 2 uses
  %.fca.0.extract556 = extractvalue { ptr, i32 } %i.dsk, 0
  %.fca.1.extract557 = extractvalue { ptr, i32 } %i.dsk, 1
  %.sroa.0553.0.copyload = load ptr, ptr %12, align 8, !tbaa !258
  %.sroa.2554.0.copyload = load i32, ptr %i.a, align 8, !tbaa !257
  %i.dsl = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %.sroa.0548.0.copyload = load i16, ptr %14, align 8, !tbaa !351
  %.sroa.2550.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !348
  store ptr %.fca.0.extract571, ptr %299, align 8, !tbaa !258
  %.sroa.4579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %299, i64 8
  store i32 %.fca.1.extract572, ptr %.sroa.4579.0..sroa_idx, align 8, !tbaa !257
  store ptr %.fca.0.extract556, ptr %300, align 8, !tbaa !258
  %.sroa.4564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %300, i64 8
  store i32 %.fca.1.extract557, ptr %.sroa.4564.0..sroa_idx, align 8, !tbaa !257
  %i.dsm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.dsl, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 %.sroa.0548.0.copyload, ptr %.sroa.2550.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %299, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %300) #28 ; 2 uses
  %.fca.0.extract544 = extractvalue { ptr, i32 } %i.dsm, 0
  %.fca.1.extract545 = extractvalue { ptr, i32 } %i.dsm, 1
  %i.dsn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.0553.0.copyload, ptr %i.dsn, align 8, !tbaa !258
  %.sroa.22.0..sroa_idx.i4930 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.2554.0.copyload, ptr %.sroa.22.0..sroa_idx.i4930, align 8, !tbaa !257
  %i.dso = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract544, ptr %i.dso, align 8, !tbaa !258
  %.sroa.2.0..sroa_idx.i4931 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract545, ptr %.sroa.2.0..sroa_idx.i4931, align 8, !tbaa !257
  br label %.thread5778

.critedge4025.thread:                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i4926, %bb.ahn, %.split5767, %_ZNK4llvm3EVT8isVectorEv.exit4918, %bb.ahd, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, %.critedge4025
  %.pr5809 = load i16, ptr %296, align 8, !tbaa !366 ; 4 uses
  %.not.i4932 = icmp eq i16 %.pr5809, 0
  br i1 %.not.i4932, label %_ZNK4llvm3EVT8isVectorEv.exit4934, label %.split5774

.split5774:                                       ; preds = %.critedge4025.thread
  %.pre5987 = add i16 %.pr5809, -19
  %i.dsp = icmp ult i16 %.pre5987, 197
  br i1 %i.dsp, label %.split5774.thread, label %bb.aih

_ZNK4llvm3EVT8isVectorEv.exit4934:                ; preds = %_ZNK4llvm3EVT8isVectorEv.exit4921, %.critedge4025.thread
  %i.dsq = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %296) #32
  br i1 %i.dsq, label %.split5774.thread, label %bb.aih

.split5774.thread:                                ; preds = %.split5768, %.split5774, %_ZNK4llvm3EVT8isVectorEv.exit4934
  %.not.i49325812 = phi i1 [ false, %.split5774 ], [ true, %_ZNK4llvm3EVT8isVectorEv.exit4934 ], [ false, %.split5768 ]
  %i.dsr = phi i16 [ %.pr5809, %.split5774 ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit4934 ], [ %i.drb, %.split5768 ]
  %i.dss = urem i32 %i.c, %i.dqu
  %i.dst = udiv exact i32 %i.c, %i.dqu            ; 2 uses
  %i.dsu = icmp eq i32 %i.dss, 0
  br i1 %i.dsu, label %bb.ahq, label %bb.aih

bb.ahq:                                           ; preds = %.split5774.thread
  %i.dsv = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %296)
  call void @llvm.lifetime.start.p0(ptr nonnull %301) #28
  %i.dsw = getelementptr inbounds nuw i8, ptr %301, i64 8 ; 4 uses
  store i32 %i.dqu, ptr %i.dsw, align 8, !tbaa !384, !alias.scope !698
  %i.dsx = icmp ult i32 %i.dqu, 65
  br i1 %i.dsx, label %bb.ahr, label %bb.ahs

bb.ahr:                                           ; preds = %bb.ahq
  store i64 0, ptr %301, align 8, !tbaa !361, !alias.scope !698
  br label %_ZN4llvm5APInt7getZeroEj.exit

bb.ahs:                                           ; preds = %bb.ahq
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %301, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm5APInt7getZeroEj.exit

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.ahr, %bb.ahs
  %.not39485922 = icmp eq i32 %i.c, 0
  br i1 %.not39485922, label %._crit_edge5925, label %.lr.ph5924

.lr.ph5924:                                       ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  %i.dsy = getelementptr inbounds nuw i8, ptr %302, i64 8
  br label %bb.aht

._crit_edge5925:                                  ; preds = %_ZN4llvm5APIntD2Ev.exit4936, %_ZN4llvm5APInt7getZeroEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %303) #28
  call void @_ZN4llvm8APIntOps12ScaleBitMaskERKNS_5APIntEjb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %303, ptr noundef nonnull align 8 dereferenceable(12) %16, i32 noundef %i.dsv, i1 noundef zeroext false) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %304) #28
  %i.dsz = getelementptr inbounds nuw i8, ptr %304, i64 8 ; 3 uses
  store i32 1, ptr %i.dsz, align 8, !tbaa !384
  store i64 0, ptr %304, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %305) #28
  %i.dta = getelementptr inbounds nuw i8, ptr %305, i64 8 ; 3 uses
  store i32 1, ptr %i.dta, align 8, !tbaa !384
  store i64 0, ptr %305, align 8, !tbaa !361
  %i.dtb = add i32 %7, 1                          ; 2 uses
  %i.dtc = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.05107.0.copyload, i32 %.sroa.10.0.copyload5110, ptr noundef nonnull align 8 dereferenceable(12) %303, ptr noundef nonnull align 8 dereferenceable(12) %304, ptr noundef nonnull align 8 dereferenceable(12) %305, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.dtb, i1 noundef zeroext false)
  br i1 %i.dtc, label %.critedge4027, label %bb.ahy

bb.aht:                                           ; preds = %.lr.ph5924, %_ZN4llvm5APIntD2Ev.exit4936
  %.038905923 = phi i32 [ 0, %.lr.ph5924 ], [ %i.dtq, %_ZN4llvm5APIntD2Ev.exit4936 ] ; 3 uses
  %i.dtd = xor i32 %.038905923, -1
  %i.dte = add i32 %i.dst, %i.dtd
  %i.dtf = select i1 %i.ap, i32 %i.dte, i32 %.038905923
  %i.dtg = mul i32 %i.dtf, %i.dqu
  call void @llvm.lifetime.start.p0(ptr nonnull %302) #28
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %302, ptr noundef nonnull align 8 dereferenceable(12) %15, i32 noundef %i.dqu, i32 noundef %i.dtg) #28
  %i.dth = load i32, ptr %i.dsw, align 8, !tbaa !384
  %i.dti = icmp ult i32 %i.dth, 65
  br i1 %i.dti, label %bb.ahu, label %bb.ahv

bb.ahu:                                           ; preds = %bb.aht
  %i.dtj = load i64, ptr %302, align 8, !tbaa !361
  %i.dtk = load i64, ptr %301, align 8, !tbaa !361
  %i.dtl = or i64 %i.dtk, %i.dtj
  store i64 %i.dtl, ptr %301, align 8, !tbaa !361
  br label %_ZN4llvm5APIntoRERKS0_.exit4935

bb.ahv:                                           ; preds = %bb.aht
  call void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %301, ptr noundef nonnull align 8 dereferenceable(12) %302) #28
  br label %_ZN4llvm5APIntoRERKS0_.exit4935

_ZN4llvm5APIntoRERKS0_.exit4935:                  ; preds = %bb.ahu, %bb.ahv
  %i.dtm = load i32, ptr %i.dsy, align 8, !tbaa !384
  %i.dtn = icmp ugt i32 %i.dtm, 64
  br i1 %i.dtn, label %bb.ahw, label %_ZN4llvm5APIntD2Ev.exit4936

bb.ahw:                                           ; preds = %_ZN4llvm5APIntoRERKS0_.exit4935
  %i.dto = load ptr, ptr %302, align 8, !tbaa !361 ; 2 uses
  %i.dtp = icmp eq ptr %i.dto, null
  br i1 %i.dtp, label %_ZN4llvm5APIntD2Ev.exit4936, label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw
  call void @_ZdaPv(ptr noundef nonnull %i.dto) #29
  br label %_ZN4llvm5APIntD2Ev.exit4936

_ZN4llvm5APIntD2Ev.exit4936:                      ; preds = %_ZN4llvm5APIntoRERKS0_.exit4935, %bb.ahw, %bb.ahx
  call void @llvm.lifetime.end.p0(ptr nonnull %302) #28
  %i.dtq = add i32 %.038905923, 1                 ; 2 uses
  %.not3948 = icmp eq i32 %i.dtq, %i.dst
  br i1 %.not3948, label %._crit_edge5925, label %bb.aht, !llvm.loop !690

bb.ahy:                                           ; preds = %._crit_edge5925
  call void @llvm.lifetime.start.p0(ptr nonnull %306) #28
  %i.dtr = getelementptr inbounds nuw i8, ptr %306, i64 8
  store i32 1, ptr %i.dtr, align 8, !tbaa !384
  store i64 0, ptr %306, align 8, !tbaa !361
  %i.dts = getelementptr inbounds nuw i8, ptr %306, i64 16
  %i.dtt = getelementptr inbounds nuw i8, ptr %306, i64 24
  store i32 1, ptr %i.dtt, align 8, !tbaa !384
  store i64 0, ptr %i.dts, align 8, !tbaa !361
  %i.dtu = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.05107.0.copyload, i32 %.sroa.10.0.copyload5110, ptr noundef nonnull align 8 dereferenceable(12) %301, ptr noundef nonnull align 8 dereferenceable(12) %303, ptr noundef nonnull align 8 dereferenceable(32) %306, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.dtb, i1 noundef zeroext false)
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %306) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %306) #28
  %i.dtv = load i32, ptr %i.dta, align 8, !tbaa !384
  %i.dtw = icmp ugt i32 %i.dtv, 64
  br i1 %i.dtw, label %bb.ahz, label %_ZN4llvm5APIntD2Ev.exit4937

bb.ahz:                                           ; preds = %bb.ahy
  %i.dtx = load ptr, ptr %305, align 8, !tbaa !361 ; 2 uses
  %i.dty = icmp eq ptr %i.dtx, null
  br i1 %i.dty, label %_ZN4llvm5APIntD2Ev.exit4937, label %bb.aia

bb.aia:                                           ; preds = %bb.ahz
  call void @_ZdaPv(ptr noundef nonnull %i.dtx) #29
  br label %_ZN4llvm5APIntD2Ev.exit4937

_ZN4llvm5APIntD2Ev.exit4937:                      ; preds = %bb.ahy, %bb.ahz, %bb.aia
  call void @llvm.lifetime.end.p0(ptr nonnull %305) #28
  %i.dtz = load i32, ptr %i.dsz, align 8, !tbaa !384
  %i.dua = icmp ugt i32 %i.dtz, 64
  br i1 %i.dua, label %bb.aib, label %_ZN4llvm5APIntD2Ev.exit4938

bb.aib:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit4937
  %i.dub = load ptr, ptr %304, align 8, !tbaa !361 ; 2 uses
  %i.duc = icmp eq ptr %i.dub, null
  br i1 %i.duc, label %_ZN4llvm5APIntD2Ev.exit4938, label %bb.aic

bb.aic:                                           ; preds = %bb.aib
  call void @_ZdaPv(ptr noundef nonnull %i.dub) #29
  br label %_ZN4llvm5APIntD2Ev.exit4938

_ZN4llvm5APIntD2Ev.exit4938:                      ; preds = %_ZN4llvm5APIntD2Ev.exit4937, %bb.aib, %bb.aic
  call void @llvm.lifetime.end.p0(ptr nonnull %304) #28
  %i.dud = getelementptr inbounds nuw i8, ptr %303, i64 8
  %i.due = load i32, ptr %i.dud, align 8, !tbaa !384
  %i.duf = icmp ugt i32 %i.due, 64
  br i1 %i.duf, label %bb.aid, label %_ZN4llvm5APIntD2Ev.exit4939

bb.aid:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit4938
  %i.dug = load ptr, ptr %303, align 8, !tbaa !361 ; 2 uses
  %i.duh = icmp eq ptr %i.dug, null
  br i1 %i.duh, label %_ZN4llvm5APIntD2Ev.exit4939, label %bb.aie

bb.aie:                                           ; preds = %bb.aid
  call void @_ZdaPv(ptr noundef nonnull %i.dug) #29
  br label %_ZN4llvm5APIntD2Ev.exit4939

_ZN4llvm5APIntD2Ev.exit4939:                      ; preds = %_ZN4llvm5APIntD2Ev.exit4938, %bb.aid, %bb.aie
  call void @llvm.lifetime.end.p0(ptr nonnull %303) #28
  %i.dui = load i32, ptr %i.dsw, align 8, !tbaa !384
  %i.duj = icmp ugt i32 %i.dui, 64
  br i1 %i.duj, label %bb.aif, label %_ZN4llvm5APIntD2Ev.exit4940

bb.aif:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit4939
  %i.duk = load ptr, ptr %301, align 8, !tbaa !361 ; 2 uses
  %i.dul = icmp eq ptr %i.duk, null
  br i1 %i.dul, label %_ZN4llvm5APIntD2Ev.exit4940, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  call void @_ZdaPv(ptr noundef nonnull %i.duk) #29
  br label %_ZN4llvm5APIntD2Ev.exit4940

_ZN4llvm5APIntD2Ev.exit4940:                      ; preds = %_ZN4llvm5APIntD2Ev.exit4939, %bb.aif, %bb.aig
  call void @llvm.lifetime.end.p0(ptr nonnull %301) #28
  br i1 %i.dtu, label %.thread5778, label %bb.ajj

bb.aih:                                           ; preds = %.split5774, %.split5774.thread, %_ZNK4llvm3EVT8isVectorEv.exit4934
  %.not.i49325811 = phi i1 [ false, %.split5774 ], [ %.not.i49325812, %.split5774.thread ], [ true, %_ZNK4llvm3EVT8isVectorEv.exit4934 ]
  %i.dum = phi i16 [ %.pr5809, %.split5774 ], [ %i.dsr, %.split5774.thread ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit4934 ]
  br i1 %i.ap, label %bb.ajj, label %bb.aii

bb.aii:                                           ; preds = %bb.aih
  %i.dun = urem i32 %i.dqu, %i.c
  %i.duo = udiv exact i32 %i.dqu, %i.c            ; 2 uses
  %i.dup = icmp eq i32 %i.dun, 0
  br i1 %i.dup, label %bb.aij, label %bb.ajj

bb.aij:                                           ; preds = %bb.aii
  br i1 %.not.i49325811, label %_ZNK4llvm3EVT8isVectorEv.exit4943, label %.split5775

.split5775:                                       ; preds = %bb.aij
  %i.duq = add i16 %i.dum, -19
  %spec.select.i.i4942 = icmp ult i16 %i.duq, 197
  br i1 %spec.select.i.i4942, label %bb.aik, label %bb.ail

_ZNK4llvm3EVT8isVectorEv.exit4943:                ; preds = %bb.aij
  %i.dur = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %296) #32
  br i1 %i.dur, label %bb.aik, label %bb.ail

bb.aik:                                           ; preds = %.split5775, %_ZNK4llvm3EVT8isVectorEv.exit4943
  %i.dus = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %296)
  br label %bb.ail

bb.ail:                                           ; preds = %.split5775, %_ZNK4llvm3EVT8isVectorEv.exit4943, %bb.aik
  %i.dut = phi i32 [ %i.dus, %bb.aik ], [ 1, %_ZNK4llvm3EVT8isVectorEv.exit4943 ], [ 1, %.split5775 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %307) #28
  %i.duu = getelementptr inbounds nuw i8, ptr %307, i64 8 ; 2 uses
  store i32 %i.dqu, ptr %i.duu, align 8, !tbaa !384, !alias.scope !699
  %i.duv = icmp ult i32 %i.dqu, 65
  br i1 %i.duv, label %bb.aim, label %bb.ain

bb.aim:                                           ; preds = %bb.ail
  store i64 0, ptr %307, align 8, !tbaa !361, !alias.scope !699
  br label %_ZN4llvm5APInt7getZeroEj.exit4944

bb.ain:                                           ; preds = %bb.ail
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %307, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm5APInt7getZeroEj.exit4944

_ZN4llvm5APInt7getZeroEj.exit4944:                ; preds = %bb.aim, %bb.ain
  call void @llvm.lifetime.start.p0(ptr nonnull %308) #28
  %i.duw = getelementptr inbounds nuw i8, ptr %308, i64 8 ; 3 uses
  store i32 %i.dut, ptr %i.duw, align 8, !tbaa !384, !alias.scope !700
  %i.dux = icmp ult i32 %i.dut, 65
  br i1 %i.dux, label %bb.aio, label %bb.aip

bb.aio:                                           ; preds = %_ZN4llvm5APInt7getZeroEj.exit4944
  store i64 0, ptr %308, align 8, !tbaa !361, !alias.scope !700
  br label %_ZN4llvm5APInt7getZeroEj.exit4945

bb.aip:                                           ; preds = %_ZN4llvm5APInt7getZeroEj.exit4944
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %308, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm5APInt7getZeroEj.exit4945

_ZN4llvm5APInt7getZeroEj.exit4945:                ; preds = %bb.aio, %bb.aip
  %.not39475920 = icmp eq i32 %i.ar, 0
  br i1 %.not39475920, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm5APInt6setBitEj.exit4950, %_ZN4llvm5APInt7getZeroEj.exit4945
  %i.duy = load i16, ptr %296, align 8, !tbaa !366 ; 2 uses
  %.not.i4946 = icmp eq i16 %i.duy, 0
  br i1 %.not.i4946, label %_ZNK4llvm3EVT8isVectorEv.exit4948, label %.split5776

.split5776:                                       ; preds = %._crit_edge
  %i.duz = add i16 %i.duy, -19
  %spec.select.i.i4947 = icmp ult i16 %i.duz, 197
  br i1 %spec.select.i.i4947, label %bb.ait, label %bb.aiy

_ZNK4llvm3EVT8isVectorEv.exit4948:                ; preds = %._crit_edge
  %i.dva = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %296) #32
  br i1 %i.dva, label %bb.ait, label %bb.aiy

.lr.ph:                                           ; preds = %_ZN4llvm5APInt7getZeroEj.exit4945, %_ZN4llvm5APInt6setBitEj.exit4950
  %.038915921 = phi i32 [ %i.dwc, %_ZN4llvm5APInt6setBitEj.exit4950 ], [ 0, %_ZN4llvm5APInt7getZeroEj.exit4945 ] ; 5 uses
  %i.dvb = and i32 %.038915921, 63
  %i.dvc = zext nneg i32 %i.dvb to i64
  %i.dvd = shl nuw i64 1, %i.dvc
  %i.dve = load i32, ptr %i.ax, align 8, !tbaa !384
  %i.dvf = icmp ult i32 %i.dve, 65
  %i.dvg = load ptr, ptr %16, align 8
  %i.dvh = lshr i32 %.038915921, 6
  %i.dvi = zext nneg i32 %i.dvh to i64
  %i.dvj = getelementptr inbounds nuw [8 x i8], ptr %i.dvg, i64 %i.dvi
  %.in.i.i4949 = select i1 %i.dvf, ptr %16, ptr %i.dvj
  %i.dvk = load i64, ptr %.in.i.i4949, align 8, !tbaa !361
  %i.dvl = and i64 %i.dvk, %i.dvd
  %.not5848 = icmp eq i64 %i.dvl, 0
  br i1 %.not5848, label %_ZN4llvm5APInt6setBitEj.exit4950, label %bb.aiq

bb.aiq:                                           ; preds = %.lr.ph
  %i.dvm = urem i32 %.038915921, %i.duo
  %i.dvn = mul i32 %i.dvm, %i.c
  call void @_ZN4llvm5APInt10insertBitsERKS0_j(ptr noundef nonnull align 8 dereferenceable(12) %307, ptr noundef nonnull align 8 dereferenceable(12) %15, i32 noundef %i.dvn) #28
  %i.dvo = udiv i32 %.038915921, %i.duo           ; 2 uses
  %i.dvp = and i32 %i.dvo, 63
  %i.dvq = zext nneg i32 %i.dvp to i64
  %i.dvr = shl nuw i64 1, %i.dvq                  ; 2 uses
  %i.dvs = load i32, ptr %i.duw, align 8, !tbaa !384
  %i.dvt = icmp ult i32 %i.dvs, 65
  br i1 %i.dvt, label %bb.air, label %bb.ais

bb.air:                                           ; preds = %bb.aiq
  %i.dvu = load i64, ptr %308, align 8, !tbaa !361
  %i.dvv = or i64 %i.dvu, %i.dvr
  store i64 %i.dvv, ptr %308, align 8, !tbaa !361
  br label %_ZN4llvm5APInt6setBitEj.exit4950

bb.ais:                                           ; preds = %bb.aiq
  %i.dvw = load ptr, ptr %308, align 8, !tbaa !361
  %i.dvx = lshr i32 %i.dvo, 6
  %i.dvy = zext nneg i32 %i.dvx to i64
  %i.dvz = getelementptr inbounds nuw [8 x i8], ptr %i.dvw, i64 %i.dvy ; 2 uses
  %i.dwa = load i64, ptr %i.dvz, align 8, !tbaa !302
  %i.dwb = or i64 %i.dwa, %i.dvr
  store i64 %i.dwb, ptr %i.dvz, align 8, !tbaa !302
  br label %_ZN4llvm5APInt6setBitEj.exit4950

_ZN4llvm5APInt6setBitEj.exit4950:                 ; preds = %bb.ais, %bb.air, %.lr.ph
  %i.dwc = add nuw i32 %.038915921, 1             ; 2 uses
  %.not3947 = icmp eq i32 %i.dwc, %i.ar
  br i1 %.not3947, label %._crit_edge, label %.lr.ph, !llvm.loop !695

bb.ait:                                           ; preds = %.split5776, %_ZNK4llvm3EVT8isVectorEv.exit4948
  call void @llvm.lifetime.start.p0(ptr nonnull %309) #28
  %i.dwd = getelementptr inbounds nuw i8, ptr %309, i64 8 ; 2 uses
  store i32 1, ptr %i.dwd, align 8, !tbaa !384
  store i64 0, ptr %309, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %310) #28
  %i.dwe = getelementptr inbounds nuw i8, ptr %310, i64 8 ; 2 uses
  store i32 1, ptr %i.dwe, align 8, !tbaa !384
  store i64 0, ptr %310, align 8, !tbaa !361
  %i.dwf = add i32 %7, 1
  %i.dwg = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.05107.0.copyload, i32 %.sroa.10.0.copyload5110, ptr noundef nonnull align 8 dereferenceable(12) %308, ptr noundef nonnull align 8 dereferenceable(12) %309, ptr noundef nonnull align 8 dereferenceable(12) %310, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.dwf, i1 noundef zeroext false)
  %i.dwh = load i32, ptr %i.dwe, align 8, !tbaa !384
  %i.dwi = icmp ugt i32 %i.dwh, 64
  br i1 %i.dwi, label %bb.aiu, label %_ZN4llvm5APIntD2Ev.exit4951

bb.aiu:                                           ; preds = %bb.ait
  %i.dwj = load ptr, ptr %310, align 8, !tbaa !361 ; 2 uses
  %i.dwk = icmp eq ptr %i.dwj, null
  br i1 %i.dwk, label %_ZN4llvm5APIntD2Ev.exit4951, label %bb.aiv

bb.aiv:                                           ; preds = %bb.aiu
  call void @_ZdaPv(ptr noundef nonnull %i.dwj) #29
  br label %_ZN4llvm5APIntD2Ev.exit4951

_ZN4llvm5APIntD2Ev.exit4951:                      ; preds = %bb.ait, %bb.aiu, %bb.aiv
  call void @llvm.lifetime.end.p0(ptr nonnull %310) #28
  %i.dwl = load i32, ptr %i.dwd, align 8, !tbaa !384
  %i.dwm = icmp ugt i32 %i.dwl, 64
  br i1 %i.dwm, label %bb.aiw, label %_ZN4llvm5APIntD2Ev.exit4952

bb.aiw:                                           ; preds = %_ZN4llvm5APIntD2Ev.exit4951
  %i.dwn = load ptr, ptr %309, align 8, !tbaa !361 ; 2 uses
  %i.dwo = icmp eq ptr %i.dwn, null
  br i1 %i.dwo, label %_ZN4llvm5APIntD2Ev.exit4952, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  call void @_ZdaPv(ptr noundef nonnull %i.dwn) #29
  br label %_ZN4llvm5APIntD2Ev.exit4952

_ZN4llvm5APIntD2Ev.exit4952:                      ; preds = %_ZN4llvm5APIntD2Ev.exit4951, %bb.aiw, %bb.aix
  call void @llvm.lifetime.end.p0(ptr nonnull %309) #28
  br i1 %i.dwg, label %bb.aje, label %bb.aiy

bb.aiy:                                           ; preds = %.split5776, %_ZN4llvm5APIntD2Ev.exit4952, %_ZNK4llvm3EVT8isVectorEv.exit4948
  call void @llvm.lifetime.start.p0(ptr nonnull %311) #28
  %i.dwp = getelementptr inbounds nuw i8, ptr %311, i64 8
  store i32 1, ptr %i.dwp, align 8, !tbaa !384
  store i64 0, ptr %311, align 8, !tbaa !361
  %i.dwq = getelementptr inbounds nuw i8, ptr %311, i64 16
  %i.dwr = getelementptr inbounds nuw i8, ptr %311, i64 24
  store i32 1, ptr %i.dwr, align 8, !tbaa !384
  store i64 0, ptr %i.dwq, align 8, !tbaa !361
  %i.dws = add i32 %7, 1                          ; 2 uses
  %i.dwt = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.05107.0.copyload, i32 %.sroa.10.0.copyload5110, ptr noundef nonnull align 8 dereferenceable(12) %307, ptr noundef nonnull align 8 dereferenceable(12) %308, ptr noundef nonnull align 8 dereferenceable(32) %311, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.dws, i1 noundef zeroext false)
  br i1 %i.dwt, label %bb.ajd, label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy
  %i.dwu = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %307)
  br i1 %i.dwu, label %bb.aja, label %bb.ajb

bb.aja:                                           ; preds = %bb.aiz
  %i.dwv = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %308)
  br i1 %i.dwv, label %bb.ajd, label %bb.ajb

bb.ajb:                                           ; preds = %bb.aja, %bb.aiz
  %i.dww = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %i.dwx = call { ptr, i32 } @_ZNK4llvm14TargetLowering31SimplifyMultipleUseDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.05107.0.copyload, i32 %.sroa.10.0.copyload5110, ptr noundef nonnull align 8 dereferenceable(12) %307, ptr noundef nonnull align 8 dereferenceable(12) %308, ptr noundef nonnull align 8 dereferenceable(920) %i.dww, i32 noundef %i.dws) ; 2 uses
  %.fca.0.extract507 = extractvalue { ptr, i32 } %i.dwx, 0 ; 2 uses
  %.not5849 = icmp eq ptr %.fca.0.extract507, null
  br i1 %.not5849, label %bb.ajd, label %bb.ajc

bb.ajc:                                           ; preds = %bb.ajb
  %.fca.1.extract508 = extractvalue { ptr, i32 } %i.dwx, 1
  %i.dwy = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %.sroa.0501.0.copyload = load i16, ptr %14, align 8, !tbaa !351
  %.sroa.2503.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !348
  %i.dwz = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.dwy, i16 %.sroa.0501.0.copyload, ptr %.sroa.2503.0.copyload, ptr nonnull %.fca.0.extract507, i32 %.fca.1.extract508) #28 ; 2 uses
  %.fca.0.extract494 = extractvalue { ptr, i32 } %i.dwz, 0
  %.fca.1.extract495 = extractvalue { ptr, i32 } %i.dwz, 1
  %.sroa.0491.0.copyload = load ptr, ptr %12, align 8, !tbaa !258
  %.sroa.2492.0.copyload = load i32, ptr %i.a, align 8, !tbaa !257
  %i.dxa = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_0
begin_hunk_1_@_ZNK4llvm14TargetLowering31SimplifyMultipleUseDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_12SelectionDAGEj:bb.a
  %16 = alloca %"class.llvm::APInt", align 8      ; 13 uses
  %17 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %18 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %19 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %20 = alloca %"struct.llvm::KnownBits", align 8 ; 5 uses
  %21 = alloca %"struct.llvm::KnownBits", align 8 ; 5 uses
  %22 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %23 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %24 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %25 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %26 = alloca %"struct.llvm::KnownBits", align 8 ; 5 uses
  %27 = alloca %"struct.llvm::KnownBits", align 8 ; 5 uses
  %28 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %29 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %30 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %31 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %32 = alloca %"struct.llvm::KnownBits", align 8 ; 5 uses
  %33 = alloca %"struct.llvm::KnownBits", align 8 ; 5 uses
  %34 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %35 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %36 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %37 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %38 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %39 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %40 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !349
  %i.c = zext i32 %2 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !351 ; 12 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !348 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %10, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.e, align 8
  %i.f = icmp ugt i32 %6, 5
  br i1 %i.f, label %bb.fl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !259
  %i.i = add i32 %i.h, -53
  %spec.select.i.i = icmp ult i32 %i.i, 2
  br i1 %spec.select.i.i, label %bb.fl, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !384  ; 2 uses
  %i.l = icmp ult i32 %i.k, 65                    ; 2 uses
  br i1 %i.l, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.c
  %i.m = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #32
  %i.n = sub i32 %i.k, %i.m
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit:                         ; preds = %bb.c, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %i.p = load ptr, ptr %3, align 8
  %spec.select.i.i388 = select i1 %i.l, ptr %3, ptr %i.p
  %.0.i.i = load i64, ptr %spec.select.i.i388, align 8, !tbaa !361
  %i.q = icmp eq i64 %.0.i.i, 0
  br i1 %i.q, label %bb.d, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %_ZNK4llvm5APInteqEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !384  ; 2 uses
  %i.t = icmp ult i32 %i.s, 65                    ; 2 uses
  br i1 %i.t, label %_ZNK4llvm5APInteqEm.exit392, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i389

_ZNK4llvm5APInt13getActiveBitsEv.exit.i389:       ; preds = %_ZNK4llvm5APInteqEm.exit.thread
  %i.u = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %4) #32
  %i.v = sub i32 %i.s, %i.u
  %i.w = icmp ult i32 %i.v, 65
  br i1 %i.w, label %_ZNK4llvm5APInteqEm.exit392, label %_ZNK4llvm5APInteqEm.exit392.thread

_ZNK4llvm5APInteqEm.exit392:                      ; preds = %_ZNK4llvm5APInteqEm.exit.thread, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i389
  %i.x = load ptr, ptr %4, align 8
  %spec.select.i.i390 = select i1 %i.t, ptr %4, ptr %i.x
  %.0.i.i391 = load i64, ptr %spec.select.i.i390, align 8, !tbaa !361
  %i.y = icmp eq i64 %.0.i.i391, 0
  br i1 %i.y, label %bb.d, label %_ZNK4llvm5APInteqEm.exit392.thread

bb.d:                                             ; preds = %_ZNK4llvm5APInteqEm.exit392, %_ZNK4llvm5APInteqEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.fca.0.extract229 = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract230 = extractvalue { ptr, i32 } %i.z, 1
  br label %bb.fl

_ZNK4llvm5APInteqEm.exit392.thread:               ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i389, %_ZNK4llvm5APInteqEm.exit392
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !153
  %i.ac = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ab) #28
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !424, !range !297, !noundef !55
  %i.ae = trunc nuw i8 %i.ad to i1                ; 3 uses
  %i.af = load i32, ptr %i.r, align 8, !tbaa !384 ; 5 uses
  %i.ag = load i32, ptr %i.j, align 8, !tbaa !384 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !384
  store i64 0, ptr %11, align 8, !tbaa !361
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  store i32 1, ptr %i.aj, align 8, !tbaa !384
  store i64 0, ptr %i.ai, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !384
  store i64 0, ptr %12, align 8, !tbaa !361
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  store i32 1, ptr %i.am, align 8, !tbaa !384
  store i64 0, ptr %i.al, align 8, !tbaa !361
  %i.an = load i32, ptr %i.g, align 8, !tbaa !259 ; 3 uses
  switch i32 %i.an, label %bb.ez [
    i32 248, label %bb.e
    i32 193, label %bb.bc
    i32 194, label %bb.bw
    i32 195, label %bb.cq
    i32 59, label %bb.ct
    i32 61, label %bb.ct
    i32 187, label %bb.ct
    i32 188, label %bb.ct
    i32 189, label %bb.ct
    i32 190, label %bb.ct
    i32 198, label %bb.cx
    i32 200, label %bb.dc
    i32 222, label %bb.dj
    i32 236, label %bb.dq
    i32 237, label %bb.dv
    i32 238, label %bb.dv
    i32 239, label %bb.dv
    i32 163, label %bb.eh
    i32 166, label %bb.eo
    i32 171, label %bb.et
  ]

bb.e:                                             ; preds = %_ZNK4llvm5APInteqEm.exit392.thread
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit, label %.split

.split:                                           ; preds = %bb.e
  %i.ao = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i393 = icmp ult i16 %i.ao, 53
  br i1 %spec.select.i.i393, label %bb.f, label %bb.g

_ZNK4llvm3EVT16isScalableVectorEv.exit:           ; preds = %bb.e
  %i.ap = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #32
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split, %_ZNK4llvm3EVT16isScalableVectorEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %.critedge373

bb.g:                                             ; preds = %.split, %_ZNK4llvm3EVT16isScalableVectorEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !260 ; 2 uses
  %.sroa.0216.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !258
  %.sroa.2217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2217.0.copyload = load i32, ptr %.sroa.2217.0..sroa_idx, align 8, !tbaa !257
  %i.as = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0216.0.copyload, i32 %.sroa.2217.0.copyload) #28 ; 2 uses
  %.fca.0.extract212 = extractvalue { ptr, i32 } %i.as, 0 ; 5 uses
  %.fca.1.extract213 = extractvalue { ptr, i32 } %i.as, 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.at = getelementptr inbounds nuw i8, ptr %.fca.0.extract212, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !349
  %i.av = zext i32 %.fca.1.extract213 to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %.sroa.0.0.copyload.i.i394 = load i16, ptr %i.aw, align 8, !tbaa !351 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i395 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.21.0.copyload.i.i396 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i395, align 8, !tbaa !348 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i394, ptr %13, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.21.0.copyload.i.i396, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !349
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i399 = load i16, ptr %i.az, align 8, !tbaa !351 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i400 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.21.0.copyload.i.i401 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i400, align 8, !tbaa !348 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i399, ptr %14, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store ptr %.sroa.21.0.copyload.i.i401, ptr %i.ba, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i394, %.sroa.0.0.copyload.i.i399
  %i.bb = icmp eq ptr %.sroa.21.0.copyload.i.i396, %.sroa.21.0.copyload.i.i401
  %.not4.i = select i1 %.not.i.i, i1 %i.bb, i1 false
  br i1 %.not4.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %.fca.0.extract212, ptr %9, align 8, !tbaa !258
  %.sroa.9543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract213, ptr %.sroa.9543.0..sroa_idx, align 8, !tbaa !257
  br label %.critedge369

bb.i:                                             ; preds = %bb.g
  %i.bc = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
  %i.bd = trunc i64 %i.bc to i32                  ; 13 uses
  %i.be = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
  %i.bf = trunc i64 %i.be to i32                  ; 7 uses
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.j, label %.critedge363

bb.j:                                             ; preds = %bb.i
  %i.bh = add nuw nsw i32 %6, 1
  %i.bi = call { ptr, i32 } @_ZNK4llvm14TargetLowering31SimplifyMultipleUseDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr nonnull %.fca.0.extract212, i32 %.fca.1.extract213, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef %i.bh) ; 2 uses
  %.fca.0.extract187 = extractvalue { ptr, i32 } %i.bi, 0 ; 2 uses
  %.not607 = icmp eq ptr %.fca.0.extract187, null
  br i1 %.not607, label %.critedge363, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.fca.1.extract188 = extractvalue { ptr, i32 } %i.bi, 1
  %.sroa.0184.0.copyload = load i16, ptr %14, align 8, !tbaa !351
  %.sroa.2186.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !348
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0184.0.copyload, ptr %.sroa.2186.0.copyload, ptr nonnull %.fca.0.extract187, i32 %.fca.1.extract188) #28 ; 2 uses
  %.fca.0.extract177 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract178 = extractvalue { ptr, i32 } %i.bj, 1
  store ptr %.fca.0.extract177, ptr %9, align 8
  %.sroa.2180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract178, ptr %.sroa.2180.0..sroa_idx, align 8
  br label %.critedge369

.critedge363:                                     ; preds = %bb.j, %bb.i
  %i.bk = load i16, ptr %13, align 8, !tbaa !366  ; 2 uses
  %.not.i404 = icmp eq i16 %i.bk, 0
  br i1 %.not.i404, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split595

.split595:                                        ; preds = %.critedge363
  %i.bl = add i16 %i.bk, -19
  %spec.select.i.i405 = icmp ult i16 %i.bl, 197
  br i1 %spec.select.i.i405, label %bb.l, label %bb.ag

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %.critedge363
  %i.bm = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #32
  br i1 %i.bm, label %bb.l, label %bb.ag

bb.l:                                             ; preds = %.split595, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.bn = urem i32 %i.bf, %i.bd
  %i.bo = udiv exact i32 %i.bf, %i.bd             ; 3 uses
  %i.bp = icmp eq i32 %i.bn, 0
  br i1 %i.bp, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %bb.l
  %i.bq = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  store i32 %i.bd, ptr %i.br, align 8, !tbaa !384, !alias.scope !710
  %i.bs = icmp ult i32 %i.bd, 65
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %15, align 8, !tbaa !361, !alias.scope !710
  br label %_ZN4llvm5APInt7getZeroEj.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %15, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm5APInt7getZeroEj.exit

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.n, %bb.o
  %.not360619 = icmp eq i32 %i.bf, 0
  br i1 %.not360619, label %._crit_edge622, label %.lr.ph621

.lr.ph621:                                        ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  br i1 %i.ae, label %.lr.ph621.split.us, label %.lr.ph621.split

.lr.ph621.split.us:                               ; preds = %.lr.ph621, %_ZN4llvm5APIntD2Ev.exit.us
  %.0337620.us = phi i32 [ %i.cg, %_ZN4llvm5APIntD2Ev.exit.us ], [ 0, %.lr.ph621 ] ; 2 uses
  %i.bu = xor i32 %.0337620.us, -1
  %i.bv = add i32 %i.bo, %i.bu
  %i.bw = mul i32 %i.bv, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %16, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.bd, i32 noundef %i.bw) #28
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !384
  %i.by = icmp ult i32 %i.bx, 65
  br i1 %i.by, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph621.split.us
  call void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %16) #28
  br label %_ZN4llvm5APIntoRERKS0_.exit.us

bb.q:                                             ; preds = %.lr.ph621.split.us
  %i.bz = load i64, ptr %16, align 8, !tbaa !361
  %i.ca = load i64, ptr %15, align 8, !tbaa !361
  %i.cb = or i64 %i.ca, %i.bz
  store i64 %i.cb, ptr %15, align 8, !tbaa !361
  br label %_ZN4llvm5APIntoRERKS0_.exit.us

_ZN4llvm5APIntoRERKS0_.exit.us:                   ; preds = %bb.q, %bb.p
  %i.cc = load i32, ptr %i.bt, align 8, !tbaa !384
  %i.cd = icmp ugt i32 %i.cc, 64
  br i1 %i.cd, label %bb.r, label %_ZN4llvm5APIntD2Ev.exit.us

bb.r:                                             ; preds = %_ZN4llvm5APIntoRERKS0_.exit.us
  %i.ce = load ptr, ptr %16, align 8, !tbaa !361  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN4llvm5APIntD2Ev.exit.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #29
  br label %_ZN4llvm5APIntD2Ev.exit.us

_ZN4llvm5APIntD2Ev.exit.us:                       ; preds = %bb.s, %bb.r, %_ZN4llvm5APIntoRERKS0_.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.cg = add i32 %.0337620.us, 1                 ; 2 uses
  %.not360.us = icmp eq i32 %i.cg, %i.bo
  br i1 %.not360.us, label %._crit_edge622, label %.lr.ph621.split.us, !llvm.loop !703

._crit_edge622:                                   ; preds = %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm5APIntD2Ev.exit.us, %_ZN4llvm5APInt7getZeroEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN4llvm8APIntOps12ScaleBitMaskERKNS_5APIntEjb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %17, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.bq, i1 noundef zeroext false) #28
  %i.ch = add nuw nsw i32 %6, 1
  %i.ci = call { ptr, i32 } @_ZNK4llvm14TargetLowering31SimplifyMultipleUseDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.fca.0.extract212, i32 %.fca.1.extract213, ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef %i.ch) ; 2 uses
  %.fca.0.extract161 = extractvalue { ptr, i32 } %i.ci, 0 ; 2 uses
  %.not608 = icmp eq ptr %.fca.0.extract161, null
  br i1 %.not608, label %.critedge365, label %bb.x

.lr.ph621.split:                                  ; preds = %.lr.ph621, %_ZN4llvm5APIntD2Ev.exit
  %.0337620 = phi i32 [ %i.ct, %_ZN4llvm5APIntD2Ev.exit ], [ 0, %.lr.ph621 ] ; 2 uses
  %i.cj = mul i32 %.0337620, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %16, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.bd, i32 noundef %i.cj) #28
  %i.ck = load i32, ptr %i.br, align 8, !tbaa !384
  %i.cl = icmp ult i32 %i.ck, 65
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph621.split
  %i.cm = load i64, ptr %16, align 8, !tbaa !361
  %i.cn = load i64, ptr %15, align 8, !tbaa !361
  %i.co = or i64 %i.cn, %i.cm
  store i64 %i.co, ptr %15, align 8, !tbaa !361
  br label %_ZN4llvm5APIntoRERKS0_.exit

bb.u:                                             ; preds = %.lr.ph621.split
  call void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %16) #28
  br label %_ZN4llvm5APIntoRERKS0_.exit

_ZN4llvm5APIntoRERKS0_.exit:                      ; preds = %bb.t, %bb.u
  %i.cp = load i32, ptr %i.bt, align 8, !tbaa !384
  %i.cq = icmp ugt i32 %i.cp, 64
  br i1 %i.cq, label %bb.v, label %_ZN4llvm5APIntD2Ev.exit

bb.v:                                             ; preds = %_ZN4llvm5APIntoRERKS0_.exit
  %i.cr = load ptr, ptr %16, align 8, !tbaa !361  ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN4llvm5APIntD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.cr) #29
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APIntoRERKS0_.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.ct = add i32 %.0337620, 1                    ; 2 uses
  %.not360 = icmp eq i32 %i.ct, %i.bo
  br i1 %.not360, label %._crit_edge622, label %.lr.ph621.split, !llvm.loop !703

bb.x:                                             ; preds = %._crit_edge622
  %.fca.1.extract162 = extractvalue { ptr, i32 } %i.ci, 1
  %.sroa.0158.0.copyload = load i16, ptr %14, align 8, !tbaa !351
  %.sroa.2160.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !348
  %i.cu = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0158.0.copyload, ptr %.sroa.2160.0.copyload, ptr nonnull %.fca.0.extract161, i32 %.fca.1.extract162) #28 ; 2 uses
  %.fca.0.extract151 = extractvalue { ptr, i32 } %i.cu, 0
  %.fca.1.extract152 = extractvalue { ptr, i32 } %i.cu, 1
  store ptr %.fca.0.extract151, ptr %9, align 8
  %.sroa.2154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract152, ptr %.sroa.2154.0..sroa_idx, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !384
  %i.cx = icmp ugt i32 %i.cw, 64
  br i1 %i.cx, label %bb.y, label %_ZN4llvm5APIntD2Ev.exit406

bb.y:                                             ; preds = %bb.x
  %i.cy = load ptr, ptr %17, align 8, !tbaa !361  ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZN4llvm5APIntD2Ev.exit406, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #29
  br label %_ZN4llvm5APIntD2Ev.exit406

_ZN4llvm5APIntD2Ev.exit406:                       ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.da = load i32, ptr %i.br, align 8, !tbaa !384
  %i.db = icmp ugt i32 %i.da, 64
  br i1 %i.db, label %bb.aa, label %_ZN4llvm5APIntD2Ev.exit407

bb.aa:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit406
  %i.dc = load ptr, ptr %15, align 8, !tbaa !361  ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN4llvm5APIntD2Ev.exit407, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #29
  br label %_ZN4llvm5APIntD2Ev.exit407

_ZN4llvm5APIntD2Ev.exit407:                       ; preds = %_ZN4llvm5APIntD2Ev.exit406, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %.critedge369

.critedge365:                                     ; preds = %._crit_edge622
  %i.de = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !384
  %i.dg = icmp ugt i32 %i.df, 64
  br i1 %i.dg, label %bb.ac, label %_ZN4llvm5APIntD2Ev.exit408

bb.ac:                                            ; preds = %.critedge365
  %i.dh = load ptr, ptr %17, align 8, !tbaa !361  ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN4llvm5APIntD2Ev.exit408, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #29
  br label %_ZN4llvm5APIntD2Ev.exit408

_ZN4llvm5APIntD2Ev.exit408:                       ; preds = %.critedge365, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.dj = load i32, ptr %i.br, align 8, !tbaa !384
  %i.dk = icmp ugt i32 %i.dj, 64
  br i1 %i.dk, label %bb.ae, label %_ZN4llvm5APIntD2Ev.exit409

bb.ae:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit408
  %i.dl = load ptr, ptr %15, align 8, !tbaa !361  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZN4llvm5APIntD2Ev.exit409, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #29
  br label %_ZN4llvm5APIntD2Ev.exit409

_ZN4llvm5APIntD2Ev.exit409:                       ; preds = %_ZN4llvm5APIntD2Ev.exit408, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.ag

bb.ag:                                            ; preds = %.split595, %_ZN4llvm5APIntD2Ev.exit409, %bb.l, %_ZNK4llvm3EVT8isVectorEv.exit
  br i1 %i.ae, label %bb.bb, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = urem i32 %i.bd, %i.bf
  %i.do = udiv exact i32 %i.bd, %i.bf             ; 2 uses
  %i.dp = icmp eq i32 %i.dn, 0
  br i1 %i.dp, label %bb.ai, label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.dq = load i16, ptr %13, align 8, !tbaa !366  ; 2 uses
  %.not.i410 = icmp eq i16 %i.dq, 0
  br i1 %.not.i410, label %_ZNK4llvm3EVT8isVectorEv.exit412, label %.split596

.split596:                                        ; preds = %bb.ai
  %i.dr = add i16 %i.dq, -19
  %spec.select.i.i411 = icmp ult i16 %i.dr, 197
  br i1 %spec.select.i.i411, label %bb.aj, label %bb.ak

_ZNK4llvm3EVT8isVectorEv.exit412:                 ; preds = %bb.ai
  %i.ds = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #32
  br i1 %i.ds, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.split596, %_ZNK4llvm3EVT8isVectorEv.exit412
  %i.dt = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
  br label %bb.ak

bb.ak:                                            ; preds = %.split596, %_ZNK4llvm3EVT8isVectorEv.exit412, %bb.aj
  %i.du = phi i32 [ %i.dt, %bb.aj ], [ 1, %_ZNK4llvm3EVT8isVectorEv.exit412 ], [ 1, %.split596 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i32 %i.bd, ptr %i.dv, align 8, !tbaa !384, !alias.scope !711
  %i.dw = icmp ult i32 %i.bd, 65
  br i1 %i.dw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i64 0, ptr %18, align 8, !tbaa !361, !alias.scope !711
  br label %_ZN4llvm5APInt7getZeroEj.exit413

bb.am:                                            ; preds = %bb.ak
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %18, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm5APInt7getZeroEj.exit413

_ZN4llvm5APInt7getZeroEj.exit413:                 ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i32 %i.du, ptr %i.dx, align 8, !tbaa !384, !alias.scope !712
  %i.dy = icmp ult i32 %i.du, 65
  br i1 %i.dy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN4llvm5APInt7getZeroEj.exit413
  store i64 0, ptr %19, align 8, !tbaa !361, !alias.scope !712
  br label %_ZN4llvm5APInt7getZeroEj.exit414

bb.ao:                                            ; preds = %_ZN4llvm5APInt7getZeroEj.exit413
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %19, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm5APInt7getZeroEj.exit414

_ZN4llvm5APInt7getZeroEj.exit414:                 ; preds = %bb.an, %bb.ao
  %.not361623 = icmp eq i32 %i.af, 0
  br i1 %.not361623, label %._crit_edge626, label %.lr.ph625

._crit_edge626:                                   ; preds = %_ZN4llvm5APInt6setBitEj.exit, %_ZN4llvm5APInt7getZeroEj.exit414
  %i.dz = add nuw nsw i32 %6, 1
  %i.ea = call { ptr, i32 } @_ZNK4llvm14TargetLowering31SimplifyMultipleUseDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.fca.0.extract212, i32 %.fca.1.extract213, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef %i.dz) ; 2 uses
  %.fca.0.extract135 = extractvalue { ptr, i32 } %i.ea, 0 ; 2 uses
  %.not610 = icmp eq ptr %.fca.0.extract135, null
  br i1 %.not610, label %.critedge367, label %bb.as

.lr.ph625:                                        ; preds = %_ZN4llvm5APInt7getZeroEj.exit414, %_ZN4llvm5APInt6setBitEj.exit
  %.0345624 = phi i32 [ %i.fc, %_ZN4llvm5APInt6setBitEj.exit ], [ 0, %_ZN4llvm5APInt7getZeroEj.exit414 ] ; 5 uses
  %i.eb = and i32 %.0345624, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = load i32, ptr %i.r, align 8, !tbaa !384
  %i.ef = icmp ult i32 %i.ee, 65
  %i.eg = load ptr, ptr %4, align 8
  %i.eh = lshr i32 %.0345624, 6
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ei
  %.in.i.i = select i1 %i.ef, ptr %4, ptr %i.ej
  %i.ek = load i64, ptr %.in.i.i, align 8, !tbaa !361
  %i.el = and i64 %i.ek, %i.ed
  %.not609 = icmp eq i64 %i.el, 0
  br i1 %.not609, label %_ZN4llvm5APInt6setBitEj.exit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph625
  %i.em = urem i32 %.0345624, %i.do
  %i.en = mul i32 %i.em, %i.bf
  call void @_ZN4llvm5APInt10insertBitsERKS0_j(ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.en) #28
  %i.eo = udiv i32 %.0345624, %i.do               ; 2 uses
  %i.ep = and i32 %i.eo, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq                    ; 2 uses
  %i.es = load i32, ptr %i.dx, align 8, !tbaa !384
  %i.et = icmp ult i32 %i.es, 65
  br i1 %i.et, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eu = load i64, ptr %19, align 8, !tbaa !361
  %i.ev = or i64 %i.eu, %i.er
  store i64 %i.ev, ptr %19, align 8, !tbaa !361
  br label %_ZN4llvm5APInt6setBitEj.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ew = load ptr, ptr %19, align 8, !tbaa !361
  %i.ex = lshr i32 %i.eo, 6
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ey ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !302
  %i.fb = or i64 %i.fa, %i.er
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !302
  br label %_ZN4llvm5APInt6setBitEj.exit

_ZN4llvm5APInt6setBitEj.exit:                     ; preds = %bb.ar, %bb.aq, %.lr.ph625
  %i.fc = add nuw i32 %.0345624, 1                ; 2 uses
  %.not361 = icmp eq i32 %i.fc, %i.af
  br i1 %.not361, label %._crit_edge626, label %.lr.ph625, !llvm.loop !708

bb.as:                                            ; preds = %._crit_edge626
  %.fca.1.extract136 = extractvalue { ptr, i32 } %i.ea, 1
  %.sroa.0132.0.copyload = load i16, ptr %14, align 8, !tbaa !351
  %.sroa.2134.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !348
  %i.fd = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0132.0.copyload, ptr %.sroa.2134.0.copyload, ptr nonnull %.fca.0.extract135, i32 %.fca.1.extract136) #28 ; 2 uses
  %.fca.0.extract125 = extractvalue { ptr, i32 } %i.fd, 0
  %.fca.1.extract126 = extractvalue { ptr, i32 } %i.fd, 1
  store ptr %.fca.0.extract125, ptr %9, align 8
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract126, ptr %.sroa.2128.0..sroa_idx, align 8
  %i.fe = load i32, ptr %i.dx, align 8, !tbaa !384
  %i.ff = icmp ugt i32 %i.fe, 64
  br i1 %i.ff, label %bb.at, label %_ZN4llvm5APIntD2Ev.exit415

bb.at:                                            ; preds = %bb.as
  %i.fg = load ptr, ptr %19, align 8, !tbaa !361  ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN4llvm5APIntD2Ev.exit415, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %i.fg) #29
  br label %_ZN4llvm5APIntD2Ev.exit415

_ZN4llvm5APIntD2Ev.exit415:                       ; preds = %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.fi = load i32, ptr %i.dv, align 8, !tbaa !384
  %i.fj = icmp ugt i32 %i.fi, 64
  br i1 %i.fj, label %bb.av, label %_ZN4llvm5APIntD2Ev.exit416

bb.av:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit415
  %i.fk = load ptr, ptr %18, align 8, !tbaa !361  ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %_ZN4llvm5APIntD2Ev.exit416, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %i.fk) #29
  br label %_ZN4llvm5APIntD2Ev.exit416

_ZN4llvm5APIntD2Ev.exit416:                       ; preds = %_ZN4llvm5APIntD2Ev.exit415, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %.critedge369

.critedge367:                                     ; preds = %._crit_edge626
  %i.fm = load i32, ptr %i.dx, align 8, !tbaa !384
  %i.fn = icmp ugt i32 %i.fm, 64
  br i1 %i.fn, label %bb.ax, label %_ZN4llvm5APIntD2Ev.exit417

bb.ax:                                            ; preds = %.critedge367
  %i.fo = load ptr, ptr %19, align 8, !tbaa !361  ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %_ZN4llvm5APIntD2Ev.exit417, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.fo) #29
  br label %_ZN4llvm5APIntD2Ev.exit417

_ZN4llvm5APIntD2Ev.exit417:                       ; preds = %.critedge367, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.fq = load i32, ptr %i.dv, align 8, !tbaa !384
  %i.fr = icmp ugt i32 %i.fq, 64
  br i1 %i.fr, label %bb.az, label %_ZN4llvm5APIntD2Ev.exit418

bb.az:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit417
  %i.fs = load ptr, ptr %18, align 8, !tbaa !361  ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZN4llvm5APIntD2Ev.exit418, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZdaPv(ptr noundef nonnull %i.fs) #29
  br label %_ZN4llvm5APIntD2Ev.exit418

_ZN4llvm5APIntD2Ev.exit418:                       ; preds = %_ZN4llvm5APIntD2Ev.exit417, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit418, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.critedge371

bb.bc:                                            ; preds = %_ZNK4llvm5APInteqEm.exit392.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !260 ; 2 uses
  %.sroa.0122.0.copyload = load ptr, ptr %i.fv, align 8, !tbaa !258
  %.sroa.2123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.2123.0.copyload = load i32, ptr %.sroa.2123.0..sroa_idx, align 8, !tbaa !257
end_hunk_1
begin_hunk_2_@_ZN4llvm9KnownBitsaSERKS0_:bb.a

_ZN4llvm5APIntaSERKS0_.exit3:                     ; preds = %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %10 = alloca %"class.llvm::ArrayRef.315", align 8 ; 5 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %14 = alloca %"class.llvm::ArrayRef.315", align 8 ; 5 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %17 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 60 uses
  %i.a = alloca i32, align 4                      ; 38 uses
  %20 = alloca %"struct.llvm::EVT", align 8       ; 29 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %21 = alloca %"class.llvm::APInt", align 8      ; 89 uses
  %22 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %23 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %24 = alloca %class.anon.500, align 8           ; 11 uses
  %25 = alloca %class.anon.501, align 8           ; 13 uses
  %26 = alloca %"struct.llvm::EVT", align 8       ; 10 uses
  %27 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %28 = alloca %"struct.llvm::KnownBits", align 8 ; 8 uses
  %29 = alloca %"class.llvm::APInt", align 8      ; 14 uses
  %30 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %31 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %32 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %33 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %34 = alloca %"struct.llvm::KnownBits", align 8 ; 11 uses
  %35 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %36 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %37 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %38 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %40 = alloca %"class.llvm::SmallVector.330", align 8 ; 10 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %42 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %43 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %44 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %45 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %46 = alloca %"class.llvm::SmallVector.503", align 8 ; 11 uses
  %47 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %48 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %49 = alloca %"class.llvm::ArrayRef.315", align 8 ; 3 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 9 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %52 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %53 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %54 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %55 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %56 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %60 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %61 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %62 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %63 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %64 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %65 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %66 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %67 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %68 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %69 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %70 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %71 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %72 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %73 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %74 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %75 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %76 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %77 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %78 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %79 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %80 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %81 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %82 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %83 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %84 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %85 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %86 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %87 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %88 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %89 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %90 = alloca %"class.llvm::APInt", align 8      ; 13 uses
  %91 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %92 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %93 = alloca %"class.llvm::ArrayRef.476", align 8 ; 3 uses
  %94 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %95 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %96 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %97 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %98 = alloca %"class.llvm::SmallVector.505", align 8 ; 8 uses
  %99 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %100 = alloca %"class.llvm::MutableArrayRef", align 8 ; 3 uses
  %101 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %102 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %103 = alloca %"class.llvm::SDValue", align 8   ; 13 uses
  %104 = alloca %"struct.llvm::EVT", align 8      ; 5 uses
  %105 = alloca %"class.llvm::APInt", align 8     ; 8 uses
  %106 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %107 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %108 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %109 = alloca %"class.llvm::SDLoc", align 8     ; 9 uses
  %110 = alloca %"struct.llvm::EVT", align 8      ; 8 uses
  %111 = alloca %"class.llvm::SmallVector.510", align 8 ; 10 uses
  %112 = alloca %"class.llvm::ArrayRef.315", align 8 ; 3 uses
  %113 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %114 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %115 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %116 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %117 = alloca %"class.llvm::APInt", align 8     ; 11 uses
  %118 = alloca %"class.llvm::APInt", align 8     ; 11 uses
  %119 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %120 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %121 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %122 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %123 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %124 = alloca %"class.llvm::APInt", align 8     ; 11 uses
  %125 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %126 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %127 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %128 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %129 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %130 = alloca %"class.llvm::APInt", align 8     ; 9 uses
  %131 = alloca %"class.llvm::APInt", align 8     ; 10 uses
  %132 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %133 = alloca %"class.llvm::APInt", align 8     ; 4 uses
  %134 = alloca %"class.llvm::APInt", align 8     ; 4 uses
  %135 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %136 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %137 = alloca %"class.llvm::APInt", align 8     ; 7 uses
  %138 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %139 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %140 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %141 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %142 = alloca %"struct.llvm::KnownBits", align 8 ; 8 uses
  %143 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  store ptr %1, ptr %19, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 25 uses
  store i32 %2, ptr %i.d, align 8
  store i32 %7, ptr %i.a, align 4, !tbaa !257
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !349
  %i.g = zext i32 %2 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.h, align 8, !tbaa !351
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !348
  store i16 %.sroa.0.0.copyload.i.i, ptr %20, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 19 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !259
  store i32 %i.k, ptr %i.b, align 4, !tbaa !257
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 22 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !384  ; 4 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !384
  %i.o = icmp ult i32 %i.n, 65
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  br i1 %i.o, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit.thread:               ; preds = %bb.a
  %i.q = load i64, ptr %3, align 8, !tbaa !361
  store i64 %i.q, ptr %21, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store i32 %i.n, ptr %i.p, align 8, !tbaa !384, !alias.scope !777
  br label %bb.b

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %3) #28
  %.pr = load i32, ptr %i.l, align 8, !tbaa !384  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store i32 %.pr, ptr %i.p, align 8, !tbaa !384, !alias.scope !778
  %i.r = icmp ult i32 %.pr, 65
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.thread, %_ZN4llvm5APIntC2ERKS0_.exit
  %i.s = phi i32 [ %i.n, %_ZN4llvm5APIntC2ERKS0_.exit.thread ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit ]
  store i64 0, ptr %22, align 8, !tbaa !361, !alias.scope !778
  br label %_ZN4llvm5APInt7getZeroEj.exit

bb.c:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %22, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm5APInt7getZeroEj.exit

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.b, %bb.c
  %i.t = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %i.u = phi i32 [ %i.s, %bb.b ], [ %.pr, %bb.c ] ; 35 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 21 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !384
  %i.x = icmp ult i32 %i.w, 65
  br i1 %i.x, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  %i.y = load ptr, ptr %5, align 8, !tbaa !361    ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN4llvm5APIntaSEOS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.y) #29
  br label %_ZN4llvm5APIntaSEOS0_.exit

_ZN4llvm5APIntaSEOS0_.exit:                       ; preds = %_ZN4llvm5APInt7getZeroEj.exit, %bb.d, %bb.e
  %i.aa = load i64, ptr %22, align 8              ; 2 uses
  store i64 %i.aa, ptr %5, align 8
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !384 ; 2 uses
  store i32 %i.ab, ptr %i.v, align 8, !tbaa !384
  store i32 0, ptr %i.p, align 8, !tbaa !384
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 27 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !384
  %i.ae = icmp ult i32 %i.ad, 65
  %i.af = icmp ult i32 %i.ab, 65
  %or.cond1546 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond1546, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm5APIntaSEOS0_.exit
  store i64 %i.aa, ptr %4, align 8, !tbaa !361
  %i.ag = load i32, ptr %i.v, align 8, !tbaa !384
  store i32 %i.ag, ptr %i.ac, align 8, !tbaa !384
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.g:                                             ; preds = %_ZN4llvm5APIntaSEOS0_.exit
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5) #28
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %bb.f, %bb.g
  %i.ah = load i32, ptr %i.p, align 8, !tbaa !384
  %i.ai = icmp ugt i32 %i.ah, 64
  br i1 %i.ai, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit

bb.h:                                             ; preds = %_ZN4llvm5APIntaSERKS0_.exit
  %i.aj = load ptr, ptr %22, align 8, !tbaa !361  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4llvm5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #29
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APIntaSERKS0_.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  %.sroa.0837.0.copyload = load ptr, ptr %19, align 8, !tbaa !258
  %.sroa.2838.0.copyload = load i32, ptr %i.d, align 8, !tbaa !257
  %i.al = load ptr, ptr %0, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2000
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.0837.0.copyload, i32 %.sroa.2838.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %6) #28
  br i1 %i.ao, label %bb.j, label %_ZN4llvm5APInt10setAllBitsEv.exit

bb.j:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ap = load i16, ptr %20, align 8, !tbaa !366  ; 2 uses
  %.not.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit, label %.split

.split:                                           ; preds = %bb.j
  %i.aq = add i16 %i.ap, -163
  %spec.select.i.i = icmp ult i16 %i.aq, 53
  br i1 %spec.select.i.i, label %_ZN4llvm5APInt10setAllBitsEv.exit, label %bb.k

_ZNK4llvm3EVT16isScalableVectorEv.exit:           ; preds = %bb.j
  %i.ar = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %20) #32
  br i1 %i.ar, label %_ZN4llvm5APInt10setAllBitsEv.exit, label %bb.k

bb.k:                                             ; preds = %.split, %_ZNK4llvm3EVT16isScalableVectorEv.exit
  %i.as = load ptr, ptr %19, align 8, !tbaa !261  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !259
  %i.av = add i32 %i.au, -53
  %spec.select.i.i1147 = icmp ult i32 %i.av, 2
  br i1 %spec.select.i.i1147, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %i.ac, align 8, !tbaa !384 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 65
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 -1, ptr %4, align 8, !tbaa !361
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %4, align 8, !tbaa !361
  %i.az = zext i32 %i.aw to i64
  %i.ba = add nuw nsw i64 %i.az, 63
  %sh.diff.i = lshr i64 %i.ba, 3
  %i.bb = and i64 %sh.diff.i, 1073741816
  call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 -1, i64 %i.bb, i1 false)
  %.pr.i = load i32, ptr %i.ac, align 8, !tbaa !384
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = phi i32 [ %.pr.i, %bb.n ], [ %i.aw, %bb.m ] ; 4 uses
  %i.bd = sub i32 0, %i.bc
  %i.be = and i32 %i.bd, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 -1, %i.bf                      ; 2 uses
  %i.bh = icmp eq i32 %i.bc, 0
  br i1 %i.bh, label %.thread.i.i, label %bb.p, !prof !390

bb.p:                                             ; preds = %bb.o
  %i.bi = icmp ult i32 %i.bc, 65
  br i1 %i.bi, label %.thread.i.i, label %bb.q

.thread.i.i:                                      ; preds = %bb.p, %bb.o
  %.04.i.i = phi i64 [ %i.bg, %bb.p ], [ 0, %bb.o ]
  %i.bj = load i64, ptr %4, align 8, !tbaa !361
  %i.bk = and i64 %i.bj, %.04.i.i
  store i64 %i.bk, ptr %4, align 8, !tbaa !361
  br label %_ZN4llvm5APInt10setAllBitsEv.exit

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %4, align 8, !tbaa !361
  %i.bm = zext i32 %i.bc to i64
  %i.bn = add nuw nsw i64 %i.bm, 63
  %i.bo = lshr i64 %i.bn, 6
  %i.bp = getelementptr [8 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8     ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !302
  %i.bs = and i64 %i.br, %i.bg
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !302
  br label %_ZN4llvm5APInt10setAllBitsEv.exit

bb.r:                                             ; preds = %bb.k
  br i1 %8, label %_ZN4llvm5APInt10setAllBitsEv.exit1152, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !391 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !394
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN4llvm5APInt10setAllBitsEv.exit1152, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %bb.s, %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.by = load i32, ptr %i.l, align 8, !tbaa !384 ; 3 uses
  %i.bz = icmp ult i32 %i.by, 65
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread
  store i64 -1, ptr %21, align 8, !tbaa !361
  br label %bb.v

bb.u:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread
  %i.ca = load ptr, ptr %21, align 8, !tbaa !361
  %i.cb = zext i32 %i.by to i64
  %i.cc = add nuw nsw i64 %i.cb, 63
  %sh.diff.i1148 = lshr i64 %i.cc, 3
  %i.cd = and i64 %sh.diff.i1148, 1073741816
  call void @llvm.memset.p0.i64(ptr align 8 %i.ca, i8 -1, i64 %i.cd, i1 false)
  %.pr.i1149 = load i32, ptr %i.l, align 8, !tbaa !384
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ce = phi i32 [ %.pr.i1149, %bb.u ], [ %i.by, %bb.t ] ; 4 uses
  %i.cf = sub i32 0, %i.ce
  %i.cg = and i32 %i.cf, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = lshr i64 -1, %i.ch                      ; 2 uses
  %i.cj = icmp eq i32 %i.ce, 0
  br i1 %i.cj, label %.thread.i.i1150, label %bb.w, !prof !390

bb.w:                                             ; preds = %bb.v
  %i.ck = icmp ult i32 %i.ce, 65
  br i1 %i.ck, label %.thread.i.i1150, label %bb.x

.thread.i.i1150:                                  ; preds = %bb.w, %bb.v
  %.04.i.i1151 = phi i64 [ %i.ci, %bb.w ], [ 0, %bb.v ]
  %i.cl = load i64, ptr %21, align 8, !tbaa !361
  %i.cm = and i64 %i.cl, %.04.i.i1151
  store i64 %i.cm, ptr %21, align 8, !tbaa !361
  br label %_ZN4llvm5APInt10setAllBitsEv.exit1152

bb.x:                                             ; preds = %bb.w
  %i.cn = load ptr, ptr %21, align 8, !tbaa !361
  %i.co = zext i32 %i.ce to i64
  %i.cp = add nuw nsw i64 %i.co, 63
  %i.cq = lshr i64 %i.cp, 6
  %i.cr = getelementptr [8 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -8     ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !302
  %i.cu = and i64 %i.ct, %i.ci
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !302
  br label %_ZN4llvm5APInt10setAllBitsEv.exit1152

end_hunk_2
begin_hunk_3_@_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb:bb.a
    i32 228, label %bb.pw
    i32 234, label %bb.qf
    i32 235, label %bb.qf
    i32 240, label %bb.qf
    i32 241, label %bb.qf
  ]

bb.ak:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.ga = load i32, ptr %i.l, align 8, !tbaa !384
  %i.gb = icmp ult i32 %i.ga, 65
  %i.gc = load ptr, ptr %21, align 8
  %.in.i.i = select i1 %i.gb, ptr %21, ptr %i.gc
  %i.gd = load i64, ptr %.in.i.i, align 8, !tbaa !361
  %i.ge = and i64 %i.gd, 1
  %.not1573 = icmp eq i64 %i.ge, 0
  br i1 %.not1573, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm5APInt10setAllBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
  %.sroa.0787.0.copyload = load ptr, ptr %19, align 8, !tbaa !258
  %.sroa.2788.0.copyload = load i32, ptr %i.d, align 8, !tbaa !257
  %i.gf = load ptr, ptr %6, align 8, !tbaa !388, !nonnull !55, !align !56
  %.sroa.0782.0.copyload = load i16, ptr %20, align 8, !tbaa !351
  %.sroa.2784.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.gg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.gf, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %.sroa.0782.0.copyload, ptr %.sroa.2784.0.copyload) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %.fca.0.extract778 = extractvalue { ptr, i32 } %i.gg, 0
  %.fca.1.extract779 = extractvalue { ptr, i32 } %i.gg, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.0787.0.copyload, ptr %i.gh, align 8, !tbaa !258
  %.sroa.22.0..sroa_idx.i1160 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.2788.0.copyload, ptr %.sroa.22.0..sroa_idx.i1160, align 8, !tbaa !257
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract778, ptr %i.gi, align 8, !tbaa !258
  %.sroa.2.0..sroa_idx.i1161 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract779, ptr %.sroa.2.0..sroa_idx.i1161, align 8, !tbaa !257
  br label %bb.ro

bb.am:                                            ; preds = %bb.ak
  %i.gj = add i32 %i.u, -1
  call void @_ZN4llvm5APInt11setHighBitsEj(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.gj)
  br label %_ZN4llvm5APInt12clearAllBitsEv.exit1418

bb.an:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.gk = load ptr, ptr %19, align 8, !tbaa !261
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !260 ; 2 uses
  %.sroa.01507.0.copyload = load ptr, ptr %i.gm, align 8, !tbaa !258 ; 6 uses
  %.sroa.91508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %.sroa.91508.0.copyload = load i32, ptr %.sroa.91508.0..sroa_idx, align 8, !tbaa !257 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.01507.0.copyload, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !349
  %i.gp = zext i32 %.sroa.91508.0.copyload to i64
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gp ; 2 uses
  %.sroa.0.0.copyload.i.i1162 = load i16, ptr %i.gq, align 8, !tbaa !351 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i1163 = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.sroa.21.0.copyload.i.i1164 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i1163, align 8, !tbaa !348
  store i16 %.sroa.0.0.copyload.i.i1162, ptr %26, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %.sroa.21.0.copyload.i.i1164, ptr %i.gr, align 8
  %.not.i1167 = icmp eq i16 %.sroa.0.0.copyload.i.i1162, 0
  br i1 %.not.i1167, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split1509

.split1509:                                       ; preds = %bb.an
  %i.gs = add i16 %.sroa.0.0.copyload.i.i1162, -19
  %spec.select.i.i1168 = icmp ult i16 %i.gs, 197
  br i1 %spec.select.i.i1168, label %bb.ay, label %.thread

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.an
  %i.gt = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #32
  br i1 %i.gt, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  br i1 %i.fk, label %.thread1514, label %bb.aq

.thread:                                          ; preds = %.split1509
  br i1 %i.fk, label %.thread1514, label %bb.ap

bb.ap:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.gu = zext i16 %.sroa.0.0.copyload.i.i1162 to i64
  %i.gv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.gu ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 -16
  %.sroa.0.0.copyload.i.i1170 = load i64, ptr %i.gw, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.gv, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i1171 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i1170, 0
  %.fca.1.insert.i.i1172 = insertvalue { i64, i8 } %.fca.0.insert.i.i1171, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.gx = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #32
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.ap, %bb.aq
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i1172, %bb.ap ], [ %i.gx, %bb.aq ] ; 2 uses
  %.fca.1.extract775 = extractvalue { i64, i8 } %.pn.i, 1
  %i.gy = trunc nuw i8 %.fca.1.extract775 to i1
  br i1 %i.gy, label %bb.ar, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.ar:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.23) #30
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract774 = extractvalue { i64, i8 } %.pn.i, 0
  %i.gz = trunc i64 %.fca.0.extract774 to i32     ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store i32 %i.gz, ptr %i.ha, align 8, !tbaa !384, !alias.scope !780
  %i.hb = icmp ult i32 %i.gz, 65
  br i1 %i.hb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  store i64 0, ptr %27, align 8, !tbaa !361, !alias.scope !780
  br label %_ZN4llvm5APInt7getZeroEj.exit1173

bb.at:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %27, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm5APInt7getZeroEj.exit1173

_ZN4llvm5APInt7getZeroEj.exit1173:                ; preds = %bb.as, %bb.at
  %i.hc = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
  %i.hd = trunc i64 %i.hc to i32                  ; 2 uses
  %.not11141617 = icmp eq i32 %i.u, 0
  br i1 %.not11141617, label %._crit_edge1620, label %.lr.ph1619.preheader

.lr.ph1619.preheader:                             ; preds = %_ZN4llvm5APInt7getZeroEj.exit1173
  %.pre1665 = load ptr, ptr %21, align 8
  br label %.lr.ph1619

._crit_edge1620:                                  ; preds = %bb.ax, %_ZN4llvm5APInt7getZeroEj.exit1173
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.he = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 1, ptr %i.he, align 8, !tbaa !384
  store i64 0, ptr %28, align 8, !tbaa !361
  %i.hf = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i32 1, ptr %i.hg, align 8, !tbaa !384
  store i64 0, ptr %i.hf, align 8, !tbaa !361
  %i.hh = load i32, ptr %i.a, align 4, !tbaa !257
  %i.hi = add i32 %i.hh, 1
  %i.hj = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01507.0.copyload, i32 %.sroa.91508.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.hi, i1 noundef zeroext false)
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %i.hk = load i32, ptr %i.ha, align 8, !tbaa !384
  %i.hl = icmp ugt i32 %i.hk, 64
  br i1 %i.hl, label %bb.au, label %_ZN4llvm5APIntD2Ev.exit1174

bb.au:                                            ; preds = %._crit_edge1620
  %i.hm = load ptr, ptr %27, align 8, !tbaa !361  ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %_ZN4llvm5APIntD2Ev.exit1174, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.hm) #29
  br label %_ZN4llvm5APIntD2Ev.exit1174

_ZN4llvm5APIntD2Ev.exit1174:                      ; preds = %._crit_edge1620, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br i1 %i.hj, label %.thread1511, label %.thread1514

.lr.ph1619:                                       ; preds = %.lr.ph1619.preheader, %bb.ax
  %i.ho = phi ptr [ %i.ib, %bb.ax ], [ %.pre1665, %.lr.ph1619.preheader ] ; 2 uses
  %.010731618 = phi i32 [ %i.ic, %bb.ax ], [ 0, %.lr.ph1619.preheader ] ; 4 uses
  %i.hp = and i32 %.010731618, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = shl nuw i64 1, %i.hq
  %i.hs = load i32, ptr %i.l, align 8, !tbaa !384
  %i.ht = icmp ult i32 %i.hs, 65
  %i.hu = lshr i32 %.010731618, 6
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hv
  %.in.i.i1175 = select i1 %i.ht, ptr %21, ptr %i.hw
  %i.hx = load i64, ptr %.in.i.i1175, align 8, !tbaa !361
  %i.hy = and i64 %i.hx, %i.hr
  %.not1566 = icmp eq i64 %i.hy, 0
  br i1 %.not1566, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph1619
  %i.hz = mul i32 %.010731618, %i.hd              ; 2 uses
  %i.ia = add i32 %i.hz, %i.hd
  call void @_ZN4llvm5APInt7setBitsEjj(ptr noundef nonnull align 8 dereferenceable(12) %27, i32 noundef %i.hz, i32 noundef %i.ia)
  %.pre1664 = load ptr, ptr %21, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1619, %bb.aw
  %i.ib = phi ptr [ %i.ho, %.lr.ph1619 ], [ %.pre1664, %bb.aw ]
  %i.ic = add nuw i32 %.010731618, 1              ; 2 uses
  %.not1114 = icmp eq i32 %i.ic, %i.u
  br i1 %.not1114, label %._crit_edge1620, label %.lr.ph1619, !llvm.loop !762

.thread1514:                                      ; preds = %bb.ao, %_ZN4llvm5APIntD2Ev.exit1174, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %_ZN4llvm5APInt12clearAllBitsEv.exit1418

bb.ay:                                            ; preds = %.split1509, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.id = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %26) ; 10 uses
  %i.ie = icmp eq i32 %i.id, %i.u
  br i1 %i.ie, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.if = load i32, ptr %i.a, align 4, !tbaa !257
  %i.ig = add i32 %i.if, 1
  %i.ih = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr nonnull %.sroa.01507.0.copyload, i32 %.sroa.91508.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.ig, i1 noundef zeroext false)
  br label %.thread1511

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  %i.ii = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 7 uses
  store i32 1, ptr %i.ii, align 8, !tbaa !384
  store i64 0, ptr %29, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  %i.ij = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  store i32 1, ptr %i.ij, align 8, !tbaa !384
  store i64 0, ptr %30, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  %i.ik = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  store i32 1, ptr %i.ik, align 8, !tbaa !384
  store i64 0, ptr %31, align 8, !tbaa !361
  %i.il = urem i32 %i.u, %i.id
  %i.im = udiv exact i32 %i.u, %i.id              ; 8 uses
  %i.in = icmp eq i32 %i.il, 0
  br i1 %i.in, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  call void @_ZN4llvm8APIntOps12ScaleBitMaskERKNS_5APIntEjb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %32, ptr noundef nonnull align 8 dereferenceable(12) %21, i32 noundef %i.id, i1 noundef zeroext false) #28
  %i.io = load i32, ptr %i.ii, align 8, !tbaa !384
  %i.ip = icmp ult i32 %i.io, 65
  br i1 %i.ip, label %_ZN4llvm5APIntD2Ev.exit1177, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iq = load ptr, ptr %29, align 8, !tbaa !361  ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %_ZN4llvm5APIntD2Ev.exit1177, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZdaPv(ptr noundef nonnull %i.iq) #29
  br label %_ZN4llvm5APIntD2Ev.exit1177

_ZN4llvm5APIntD2Ev.exit1177:                      ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.is = load i64, ptr %32, align 8
  store i64 %i.is, ptr %29, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !384
  store i32 %i.iu, ptr %i.ii, align 8, !tbaa !384
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.iv = load i32, ptr %i.a, align 4, !tbaa !257
  %i.iw = add i32 %i.iv, 1
  %i.ix = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr nonnull %.sroa.01507.0.copyload, i32 %.sroa.91508.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %29, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr noundef nonnull align 8 dereferenceable(12) %30, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.iw, i1 noundef zeroext false)
  br i1 %i.ix, label %.critedge1123, label %bb.be

bb.be:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1177
  br i1 %i.fk, label %.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iy = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %26)
  %i.iz = trunc i64 %i.iy to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.ja = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  store i32 %i.iz, ptr %i.ja, align 8, !tbaa !384, !alias.scope !781
  %i.jb = icmp ult i32 %i.iz, 65
  br i1 %i.jb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i64 0, ptr %33, align 8, !tbaa !361, !alias.scope !781
  br label %_ZN4llvm5APInt7getZeroEj.exit1178

bb.bh:                                            ; preds = %bb.bf
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %33, i64 noundef 0, i1 noundef zeroext false) #28
  br label %_ZN4llvm5APInt7getZeroEj.exit1178

_ZN4llvm5APInt7getZeroEj.exit1178:                ; preds = %bb.bg, %bb.bh
  %.not11151621 = icmp eq i32 %i.u, 0             ; 2 uses
  br i1 %.not11151621, label %._crit_edge1624, label %.lr.ph1623.preheader

.lr.ph1623.preheader:                             ; preds = %_ZN4llvm5APInt7getZeroEj.exit1178
  %.pre1667 = load ptr, ptr %21, align 8
  br label %.lr.ph1623

._crit_edge1624:                                  ; preds = %bb.bj, %_ZN4llvm5APInt7getZeroEj.exit1178
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.jc = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 1, ptr %i.jc, align 8, !tbaa !384
  store i64 0, ptr %34, align 8, !tbaa !361
  %i.jd = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %34, i64 24
  store i32 1, ptr %i.je, align 8, !tbaa !384
  store i64 0, ptr %i.jd, align 8, !tbaa !361
  %i.jf = load i32, ptr %i.a, align 4, !tbaa !257
  %i.jg = add i32 %i.jf, 1
  %i.jh = call noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01507.0.copyload, i32 %.sroa.91508.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %33, ptr noundef nonnull align 8 dereferenceable(12) %29, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.jg, i1 noundef zeroext false)
  br i1 %i.jh, label %.critedge1121, label %.preheader1576

.preheader1576:                                   ; preds = %._crit_edge1624
  br i1 %.not11151621, label %._crit_edge1630, label %.lr.ph1629

.lr.ph1629:                                       ; preds = %.preheader1576
  %i.ji = getelementptr inbounds nuw i8, ptr %35, i64 8
  br label %bb.bk

.lr.ph1623:                                       ; preds = %.lr.ph1623.preheader, %bb.bj
  %i.jj = phi ptr [ %i.jy, %bb.bj ], [ %.pre1667, %.lr.ph1623.preheader ] ; 2 uses
  %.010741622 = phi i32 [ %i.jz, %bb.bj ], [ 0, %.lr.ph1623.preheader ] ; 4 uses
  %i.jk = and i32 %.010741622, 63
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = shl nuw i64 1, %i.jl
  %i.jn = load i32, ptr %i.l, align 8, !tbaa !384
  %i.jo = icmp ult i32 %i.jn, 65
  %i.jp = lshr i32 %.010741622, 6
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jq
  %.in.i.i1179 = select i1 %i.jo, ptr %21, ptr %i.jr
  %i.js = load i64, ptr %.in.i.i1179, align 8, !tbaa !361
  %i.jt = and i64 %i.js, %i.jm
  %.not1567 = icmp eq i64 %i.jt, 0
  br i1 %.not1567, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph1623
  %i.ju = urem i32 %.010741622, %i.im
  %i.jv = load i32, ptr %i.c, align 4, !tbaa !257 ; 2 uses
  %i.jw = mul i32 %i.jv, %i.ju                    ; 2 uses
  %i.jx = add i32 %i.jw, %i.jv
  call void @_ZN4llvm5APInt7setBitsEjj(ptr noundef nonnull align 8 dereferenceable(12) %33, i32 noundef %i.jw, i32 noundef %i.jx)
  %.pre1666 = load ptr, ptr %21, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph1623, %bb.bi
  %i.jy = phi ptr [ %i.jj, %.lr.ph1623 ], [ %.pre1666, %bb.bi ]
  %i.jz = add nuw i32 %.010741622, 1              ; 2 uses
  %.not1115 = icmp eq i32 %i.jz, %i.u
  br i1 %.not1115, label %._crit_edge1624, label %.lr.ph1623, !llvm.loop !765

bb.bk:                                            ; preds = %.lr.ph1629, %.loopexit1575
  %.010751627 = phi i32 [ 0, %.lr.ph1629 ], [ %i.lx, %.loopexit1575 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  %i.ka = load i32, ptr %i.c, align 4, !tbaa !257 ; 2 uses
  %i.kb = mul i32 %i.ka, %.010751627
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %35, ptr noundef nonnull align 8 dereferenceable(12) %34, i32 noundef %i.ka, i32 noundef %i.kb) #28
  %i.kc = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %35)
  %i.kd = load i32, ptr %i.ji, align 8, !tbaa !384
  %i.ke = icmp ugt i32 %i.kd, 64
  br i1 %i.ke, label %bb.bl, label %_ZN4llvm5APIntD2Ev.exit1180

bb.bl:                                            ; preds = %bb.bk
  %i.kf = load ptr, ptr %35, align 8, !tbaa !361  ; 2 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %_ZN4llvm5APIntD2Ev.exit1180, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZdaPv(ptr noundef nonnull %i.kf) #29
  br label %_ZN4llvm5APIntD2Ev.exit1180

_ZN4llvm5APIntD2Ev.exit1180:                      ; preds = %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br i1 %i.kc, label %.preheader1574, label %.loopexit1575

.preheader1574:                                   ; preds = %_ZN4llvm5APIntD2Ev.exit1180
  %i.kh = load i32, ptr %i.l, align 8, !tbaa !384
  %.fr1635 = freeze i32 %i.kh
  %i.ki = icmp ult i32 %.fr1635, 65
  br i1 %i.ki, label %.preheader1574.split.us.preheader, label %.preheader1574.split.preheader

.preheader1574.split.preheader:                   ; preds = %.preheader1574
  %.pre1669 = load ptr, ptr %21, align 8
  br label %.preheader1574.split

.preheader1574.split.us.preheader:                ; preds = %.preheader1574
  %.pre1671 = load i64, ptr %21, align 8, !tbaa !361
  br label %.preheader1574.split.us

.preheader1574.split.us:                          ; preds = %.preheader1574.split.us.preheader, %_ZN4llvm5APInt6setBitEj.exit.us
  %i.kj = phi i64 [ %i.la, %_ZN4llvm5APInt6setBitEj.exit.us ], [ %.pre1671, %.preheader1574.split.us.preheader ] ; 3 uses
  %.010761625.us = phi i32 [ %i.lb, %_ZN4llvm5APInt6setBitEj.exit.us ], [ 0, %.preheader1574.split.us.preheader ] ; 2 uses
  %i.kk = mul i32 %.010761625.us, %i.im
  %i.kl = add i32 %i.kk, %.010751627              ; 2 uses
  %i.km = and i32 %i.kl, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl nuw i64 1, %i.kn                    ; 3 uses
  %i.kp = lshr i32 %i.kl, 6
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = and i64 %i.kj, %i.ko
  %.not1568.us = icmp eq i64 %i.kr, 0
  br i1 %.not1568.us, label %_ZN4llvm5APInt6setBitEj.exit.us, label %bb.bn

bb.bn:                                            ; preds = %.preheader1574.split.us
  %i.ks = load i32, ptr %i.v, align 8, !tbaa !384
  %i.kt = icmp ult i32 %i.ks, 65
  br i1 %i.kt, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ku = load ptr, ptr %5, align 8, !tbaa !361
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kq ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !302
  %i.kx = or i64 %i.kw, %i.ko
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !302
  %.pre1670 = load i64, ptr %21, align 8, !tbaa !361
  br label %_ZN4llvm5APInt6setBitEj.exit.us

bb.bp:                                            ; preds = %bb.bn
  %i.ky = load i64, ptr %5, align 8, !tbaa !361
  %i.kz = or i64 %i.ky, %i.ko
  store i64 %i.kz, ptr %5, align 8, !tbaa !361
  br label %_ZN4llvm5APInt6setBitEj.exit.us

_ZN4llvm5APInt6setBitEj.exit.us:                  ; preds = %.preheader1574.split.us, %bb.bp, %bb.bo
  %i.la = phi i64 [ %i.kj, %.preheader1574.split.us ], [ %i.kj, %bb.bp ], [ %.pre1670, %bb.bo ]
  %i.lb = add i32 %.010761625.us, 1               ; 2 uses
  %.not1117.us = icmp eq i32 %i.lb, %i.id
  br i1 %.not1117.us, label %.loopexit1575, label %.preheader1574.split.us, !llvm.loop !766

.preheader1574.split:                             ; preds = %.preheader1574.split.preheader, %_ZN4llvm5APInt6setBitEj.exit
  %i.lc = phi ptr [ %i.lv, %_ZN4llvm5APInt6setBitEj.exit ], [ %.pre1669, %.preheader1574.split.preheader ] ; 3 uses
  %.010761625 = phi i32 [ %i.lw, %_ZN4llvm5APInt6setBitEj.exit ], [ 0, %.preheader1574.split.preheader ] ; 2 uses
  %i.ld = mul i32 %.010761625, %i.im
  %i.le = add i32 %i.ld, %.010751627              ; 2 uses
  %i.lf = and i32 %i.le, 63
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = shl nuw i64 1, %i.lg                    ; 3 uses
  %i.li = lshr i32 %i.le, 6
  %i.lj = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lj
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !361
  %i.lm = and i64 %i.ll, %i.lh
  %.not1568 = icmp eq i64 %i.lm, 0
  br i1 %.not1568, label %_ZN4llvm5APInt6setBitEj.exit, label %bb.bq

bb.bq:                                            ; preds = %.preheader1574.split
  %i.ln = load i32, ptr %i.v, align 8, !tbaa !384
  %i.lo = icmp ult i32 %i.ln, 65
  br i1 %i.lo, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.lp = load i64, ptr %5, align 8, !tbaa !361
  %i.lq = or i64 %i.lp, %i.lh
  store i64 %i.lq, ptr %5, align 8, !tbaa !361
  br label %_ZN4llvm5APInt6setBitEj.exit

bb.bs:                                            ; preds = %bb.bq
  %i.lr = load ptr, ptr %5, align 8, !tbaa !361
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.lj ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !302
  %i.lu = or i64 %i.lt, %i.lh
  store i64 %i.lu, ptr %i.ls, align 8, !tbaa !302
  %.pre1668 = load ptr, ptr %21, align 8
  br label %_ZN4llvm5APInt6setBitEj.exit

_ZN4llvm5APInt6setBitEj.exit:                     ; preds = %bb.bs, %bb.br, %.preheader1574.split
  %i.lv = phi ptr [ %.pre1668, %bb.bs ], [ %i.lc, %bb.br ], [ %i.lc, %.preheader1574.split ]
  %i.lw = add i32 %.010761625, 1                  ; 2 uses
  %.not1117 = icmp eq i32 %i.lw, %i.id
  br i1 %.not1117, label %.loopexit1575, label %.preheader1574.split, !llvm.loop !766

.loopexit1575:                                    ; preds = %_ZN4llvm5APInt6setBitEj.exit, %_ZN4llvm5APInt6setBitEj.exit.us, %_ZN4llvm5APIntD2Ev.exit1180
  %i.lx = add i32 %.010751627, 1                  ; 2 uses
  %.not1116 = icmp eq i32 %i.lx, %i.im
  br i1 %.not1116, label %._crit_edge1630, label %bb.bk, !llvm.loop !767

._crit_edge1630:                                  ; preds = %.loopexit1575, %.preheader1576
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.ly = load i32, ptr %i.ja, align 8, !tbaa !384
  %i.lz = icmp ugt i32 %i.ly, 64
  br i1 %i.lz, label %bb.bt, label %_ZN4llvm5APIntD2Ev.exit1182

bb.bt:                                            ; preds = %._crit_edge1630
  %i.ma = load ptr, ptr %33, align 8, !tbaa !361  ; 2 uses
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %_ZN4llvm5APIntD2Ev.exit1182, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZdaPv(ptr noundef nonnull %i.ma) #29
  br label %_ZN4llvm5APIntD2Ev.exit1182

_ZN4llvm5APIntD2Ev.exit1182:                      ; preds = %._crit_edge1630, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %.preheader

.preheader:                                       ; preds = %_ZN4llvm5APIntD2Ev.exit1182, %bb.be
  br label %bb.bv

bb.bv:                                            ; preds = %.preheader, %bb.ca
  %.010771631 = phi i32 [ %i.nf, %bb.ca ], [ 0, %.preheader ] ; 7 uses
  %i.mc = and i32 %.010771631, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = shl nuw i64 1, %i.md                    ; 3 uses
  %i.mf = load i32, ptr %i.ii, align 8, !tbaa !384
  %i.mg = icmp ult i32 %i.mf, 65
  %i.mh = load ptr, ptr %29, align 8
  %i.mi = lshr i32 %.010771631, 6
  %i.mj = zext nneg i32 %i.mi to i64              ; 3 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mj
  %.in.i.i1183 = select i1 %i.mg, ptr %29, ptr %i.mk
  %i.ml = load i64, ptr %.in.i.i1183, align 8, !tbaa !361
  %i.mm = and i64 %i.ml, %i.me
  %.not1569 = icmp eq i64 %i.mm, 0
  br i1 %.not1569, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mn = load i32, ptr %i.ij, align 8, !tbaa !384
  %i.mo = icmp ult i32 %i.mn, 65
  %i.mp = load ptr, ptr %30, align 8
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mj
  %.in.i.i1184 = select i1 %i.mo, ptr %30, ptr %i.mq
  %i.mr = load i64, ptr %.in.i.i1184, align 8, !tbaa !361
  %i.ms = and i64 %i.mr, %i.me
  %.not1570 = icmp eq i64 %i.ms, 0
  br i1 %.not1570, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mt = mul i32 %.010771631, %i.im
  %i.mu = add i32 %.010771631, 1
  %i.mv = mul i32 %i.mu, %i.im
  call void @_ZN4llvm5APInt7setBitsEjj(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %i.mt, i32 noundef %i.mv)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.mw = load i32, ptr %i.ik, align 8, !tbaa !384
  %i.mx = icmp ult i32 %i.mw, 65
  %i.my = load ptr, ptr %31, align 8
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mj
  %.in.i.i1185 = select i1 %i.mx, ptr %31, ptr %i.mz
  %i.na = load i64, ptr %.in.i.i1185, align 8, !tbaa !361
  %i.nb = and i64 %i.na, %i.me
  %.not1571 = icmp eq i64 %i.nb, 0
  br i1 %.not1571, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nc = mul i32 %.010771631, %i.im
  %i.nd = add i32 %.010771631, 1
  %i.ne = mul i32 %i.nd, %i.im
  call void @_ZN4llvm5APInt7setBitsEjj(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.nc, i32 noundef %i.ne)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bv, %bb.bz, %bb.by
  %i.nf = add i32 %.010771631, 1                  ; 2 uses
  %.not1118 = icmp eq i32 %i.nf, %i.id
  br i1 %.not1118, label %.loopexit, label %bb.bv, !llvm.loop !768

.critedge1121:                                    ; preds = %._crit_edge1624
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.ng = load i32, ptr %i.ja, align 8, !tbaa !384
  %i.nh = icmp ugt i32 %i.ng, 64
  br i1 %i.nh, label %bb.cb, label %_ZN4llvm5APIntD2Ev.exit1186

bb.cb:                                            ; preds = %.critedge1121
  %i.ni = load ptr, ptr %33, align 8, !tbaa !361  ; 2 uses
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %_ZN4llvm5APIntD2Ev.exit1186, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZdaPv(ptr noundef nonnull %i.ni) #29
  br label %_ZN4llvm5APIntD2Ev.exit1186

_ZN4llvm5APIntD2Ev.exit1186:                      ; preds = %.critedge1121, %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %.critedge1123

.loopexit:                                        ; preds = %bb.ca, %bb.ba
  %i.nk = urem i32 %i.id, %i.u
  %i.nl = udiv exact i32 %i.id, %i.u              ; 3 uses
  %i.nm = icmp eq i32 %i.nk, 0
  br i1 %i.nm, label %bb.cd, label %.critedge1123

bb.cd:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  call void @_ZN4llvm8APIntOps12ScaleBitMaskERKNS_5APIntEjb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %36, ptr noundef nonnull align 8 dereferenceable(12) %21, i32 noundef %i.id, i1 noundef zeroext false) #28
  %i.nn = load i32, ptr %i.ii, align 8, !tbaa !384
  %i.no = icmp ult i32 %i.nn, 65
  br i1 %i.no, label %_ZN4llvm5APIntD2Ev.exit1188, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.np = load ptr, ptr %29, align 8, !tbaa !361  ; 2 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %_ZN4llvm5APIntD2Ev.exit1188, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZdaPv(ptr noundef nonnull %i.np) #29
  br label %_ZN4llvm5APIntD2Ev.exit1188

_ZN4llvm5APIntD2Ev.exit1188:                      ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.nr = load i64, ptr %36, align 8
  store i64 %i.nr, ptr %29, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !384
  store i32 %i.nt, ptr %i.ii, align 8, !tbaa !384
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.nu = load i32, ptr %i.a, align 4, !tbaa !257
  %i.nv = add i32 %i.nu, 1
  %i.nw = call noundef zeroext i1 @_ZNK4llvm14TargetLowering26SimplifyDemandedVectorEltsENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEjb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %.sroa.01507.0.copyload, i32 %.sroa.91508.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %29, ptr noundef nonnull align 8 dereferenceable(12) %31, ptr noundef nonnull align 8 dereferenceable(12) %30, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %i.nv, i1 noundef zeroext false)
  br i1 %i.nw, label %.critedge1123, label %.lr.ph1634

.lr.ph1634:                                       ; preds = %_ZN4llvm5APIntD2Ev.exit1188
  %i.nx = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %38, i64 8
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph1634, %_ZN4llvm5APInt6setBitEj.exit1193
  %.010781633 = phi i32 [ 0, %.lr.ph1634 ], [ %i.pl, %_ZN4llvm5APInt6setBitEj.exit1193 ] ; 4 uses
  %i.nz = and i32 %.010781633, 63
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = shl nuw i64 1, %i.oa                    ; 5 uses
  %i.oc = load i32, ptr %i.l, align 8, !tbaa !384
  %i.od = icmp ult i32 %i.oc, 65
  %i.oe = load ptr, ptr %21, align 8
  %i.of = lshr i32 %.010781633, 6
  %i.og = zext nneg i32 %i.of to i64              ; 3 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.og
  %.in.i.i1189 = select i1 %i.od, ptr %21, ptr %i.oh
  %i.oi = load i64, ptr %.in.i.i1189, align 8, !tbaa !361
  %i.oj = and i64 %i.oi, %i.ob
  %.not1572 = icmp eq i64 %i.oj, 0
  br i1 %.not1572, label %_ZN4llvm5APInt6setBitEj.exit1193, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  %i.ok = mul i32 %.010781633, %i.nl              ; 2 uses
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %37, ptr noundef nonnull align 8 dereferenceable(12) %30, i32 noundef %i.nl, i32 noundef %i.ok) #28
  %i.ol = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %37)
  %i.om = load i32, ptr %i.nx, align 8, !tbaa !384
  %i.on = icmp ugt i32 %i.om, 64
  br i1 %i.on, label %bb.ci, label %_ZN4llvm5APIntD2Ev.exit1190

bb.ci:                                            ; preds = %bb.ch
  %i.oo = load ptr, ptr %37, align 8, !tbaa !361  ; 2 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %_ZN4llvm5APIntD2Ev.exit1190, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZdaPv(ptr noundef nonnull %i.oo) #29
  br label %_ZN4llvm5APIntD2Ev.exit1190

_ZN4llvm5APIntD2Ev.exit1190:                      ; preds = %bb.ch, %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br i1 %i.ol, label %bb.ck, label %_ZN4llvm5APInt6setBitEj.exit1191

bb.ck:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1190
  %i.oq = load i32, ptr %i.v, align 8, !tbaa !384
  %i.or = icmp ult i32 %i.oq, 65
  br i1 %i.or, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.os = load i64, ptr %5, align 8, !tbaa !361
  %i.ot = or i64 %i.os, %i.ob
  store i64 %i.ot, ptr %5, align 8, !tbaa !361
  br label %_ZN4llvm5APInt6setBitEj.exit1191

bb.cm:                                            ; preds = %bb.ck
  %i.ou = load ptr, ptr %5, align 8, !tbaa !361
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.og ; 2 uses
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !302
  %i.ox = or i64 %i.ow, %i.ob
  store i64 %i.ox, ptr %i.ov, align 8, !tbaa !302
  br label %_ZN4llvm5APInt6setBitEj.exit1191

_ZN4llvm5APInt6setBitEj.exit1191:                 ; preds = %bb.cm, %bb.cl, %_ZN4llvm5APIntD2Ev.exit1190
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %38, ptr noundef nonnull align 8 dereferenceable(12) %31, i32 noundef %i.nl, i32 noundef %i.ok) #28
  %i.oy = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %38)
  %i.oz = load i32, ptr %i.ny, align 8, !tbaa !384
  %i.pa = icmp ugt i32 %i.oz, 64
  br i1 %i.pa, label %bb.cn, label %_ZN4llvm5APIntD2Ev.exit1192

bb.cn:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit1191
  %i.pb = load ptr, ptr %38, align 8, !tbaa !361  ; 2 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %_ZN4llvm5APIntD2Ev.exit1192, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.pb) #29
  br label %_ZN4llvm5APIntD2Ev.exit1192

_ZN4llvm5APIntD2Ev.exit1192:                      ; preds = %_ZN4llvm5APInt6setBitEj.exit1191, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br i1 %i.oy, label %bb.cp, label %_ZN4llvm5APInt6setBitEj.exit1193

bb.cp:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1192
  %i.pd = load i32, ptr %i.ac, align 8, !tbaa !384
  %i.pe = icmp ult i32 %i.pd, 65
  br i1 %i.pe, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pf = load i64, ptr %4, align 8, !tbaa !361
  %i.pg = or i64 %i.pf, %i.ob
  store i64 %i.pg, ptr %4, align 8, !tbaa !361
  br label %_ZN4llvm5APInt6setBitEj.exit1193

bb.cr:                                            ; preds = %bb.cp
  %i.ph = load ptr, ptr %4, align 8, !tbaa !361
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.og ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !302
  %i.pk = or i64 %i.pj, %i.ob
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !302
  br label %_ZN4llvm5APInt6setBitEj.exit1193

_ZN4llvm5APInt6setBitEj.exit1193:                 ; preds = %bb.cr, %bb.cq, %bb.cg, %_ZN4llvm5APIntD2Ev.exit1192
  %i.pl = add nuw i32 %.010781633, 1              ; 2 uses
  %.not1119 = icmp eq i32 %i.pl, %i.u
  br i1 %.not1119, label %.critedge1123, label %bb.cg, !llvm.loop !769

.critedge1123:                                    ; preds = %_ZN4llvm5APInt6setBitEj.exit1193, %.loopexit, %_ZN4llvm5APIntD2Ev.exit1188, %_ZN4llvm5APIntD2Ev.exit1186, %_ZN4llvm5APIntD2Ev.exit1177
  %i.pm = phi i1 [ false, %_ZN4llvm5APIntD2Ev.exit1177 ], [ false, %_ZN4llvm5APIntD2Ev.exit1188 ], [ false, %_ZN4llvm5APIntD2Ev.exit1186 ], [ true, %.loopexit ], [ true, %_ZN4llvm5APInt6setBitEj.exit1193 ]
  %i.pn = load i32, ptr %i.ik, align 8, !tbaa !384
  %i.po = icmp ugt i32 %i.pn, 64
  br i1 %i.po, label %bb.cs, label %_ZN4llvm5APIntD2Ev.exit1194

bb.cs:                                            ; preds = %.critedge1123
  %i.pp = load ptr, ptr %31, align 8, !tbaa !361  ; 2 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %_ZN4llvm5APIntD2Ev.exit1194, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZdaPv(ptr noundef nonnull %i.pp) #29
  br label %_ZN4llvm5APIntD2Ev.exit1194

_ZN4llvm5APIntD2Ev.exit1194:                      ; preds = %.critedge1123, %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.pr = load i32, ptr %i.ij, align 8, !tbaa !384
  %i.ps = icmp ugt i32 %i.pr, 64
  br i1 %i.ps, label %bb.cu, label %_ZN4llvm5APIntD2Ev.exit1195

bb.cu:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1194
  %i.pt = load ptr, ptr %30, align 8, !tbaa !361  ; 2 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %_ZN4llvm5APIntD2Ev.exit1195, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZdaPv(ptr noundef nonnull %i.pt) #29
  br label %_ZN4llvm5APIntD2Ev.exit1195

_ZN4llvm5APIntD2Ev.exit1195:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1194, %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  %i.pv = load i32, ptr %i.ii, align 8, !tbaa !384
  %i.pw = icmp ugt i32 %i.pv, 64
  br i1 %i.pw, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1195
  %i.px = load ptr, ptr %29, align 8, !tbaa !361  ; 2 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_ZdaPv(ptr noundef nonnull %i.px) #29
  br label %bb.cy

.thread1511:                                      ; preds = %_ZN4llvm5APIntD2Ev.exit1174, %bb.az
  %.10.ph = phi i1 [ %i.ih, %bb.az ], [ true, %_ZN4llvm5APIntD2Ev.exit1174 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.ro

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %_ZN4llvm5APIntD2Ev.exit1195
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %i.pm, label %_ZN4llvm5APInt12clearAllBitsEv.exit1418, label %bb.ro

bb.cz:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.pz = load ptr, ptr %19, align 8, !tbaa !261
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 40
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !260 ; 2 uses
  %.sroa.01500.0.copyload = load ptr, ptr %i.qb, align 8, !tbaa !258 ; 4 uses
  %.sroa.71502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
end_hunk_3
