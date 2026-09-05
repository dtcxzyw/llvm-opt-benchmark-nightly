Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimplifyCFG?download=true
inline.NumInlined: 15223
inline.NumDeleted: 6880
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN12_GLOBAL__N_114SimplifyCFGOpt18simplifyCondBranchEPN4llvm10CondBrInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE:bb.a
bb.gn:                                            ; preds = %bb.gm
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i222.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.aiy
  br i1 %.not.i.i222.i.i, label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i224.i.i, label %bb.gm, !llvm.loop !3

_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i224.i.i: ; preds = %bb.gn, %bb.gm, %bb.gl
  %i.ajc = phi i64 [ 4294967295, %bb.gl ], [ 4294967295, %bb.gn ], [ %indvars.iv.i.i.i.i, %bb.gm ]
  %i.ajd = getelementptr inbounds nuw [32 x i8], ptr %.pre.i.i.i, i64 %i.ajc
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !106 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  store i64 2, ptr %i.yy, align 8, !alias.scope !950
  store ptr null, ptr %i.yz, align 8, !tbaa !200, !alias.scope !950
  store ptr %spec.select.i.i.i220.i.i, ptr %i.za, align 8, !tbaa !201, !alias.scope !950
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yy) #27, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %19, align 8, !tbaa !65, !alias.scope !950
  store ptr %26, ptr %i.zb, align 8, !tbaa !205, !alias.scope !950
  %i.ajf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E24lookupOrInsertIntoBucketISC_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(176) %26, ptr noundef nonnull align 8 dereferenceable(40) %19)
  %i.ajg = load ptr, ptr %i.za, align 8, !tbaa !201
  %.not.i.i.i225.i.i = icmp eq ptr %i.ajg, null
  br i1 %.not.i.i.i225.i.i, label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit227.i.i, label %bb.go

bb.go:                                            ; preds = %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i224.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yy) #27
  br label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit227.i.i

_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit227.i.i: ; preds = %bb.go, %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i224.i.i
  %.fca.0.extract.i.i226.i.i = extractvalue { ptr, i8 } %i.ajf, 0 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i226.i.i, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.aji = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i226.i.i, i64 56 ; 2 uses
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !201 ; 2 uses
  %i.ajk = icmp eq ptr %i.ajj, %i.aje
  br i1 %i.ajk, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i, label %bb.gp

bb.gp:                                            ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit227.i.i
  %.not.i.i228.i.i = icmp eq ptr %i.ajj, null
  br i1 %.not.i.i228.i.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajh) #27
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  store ptr %i.aje, ptr %i.aji, align 8, !tbaa !201
  %.not6.i.i229.i.i = icmp eq ptr %i.aje, null
  br i1 %.not6.i.i229.i.i, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajh) #27
  br label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i

_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.i.i: ; preds = %bb.gk
  %i.ajl = call noundef ptr @_ZNK4llvm11Instruction5cloneEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aip) #27 ; 13 uses
  %i.ajm = call { ptr, i64 } @_ZN4llvm11Instruction10insertIntoEPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ES1_EELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ajl, ptr noundef nonnull %i.aho, ptr %.fca.0.extract1.i.i.i, i64 %.sroa.6.8.insert.ext.i.i) #27 ; 0 uses
  %i.ajn = getelementptr inbounds i8, ptr %.sroa.0272.0394.i.i, i64 -20
  %i.ajo = load i32, ptr %i.ajn, align 4
  %i.ajp = and i32 %i.ajo, 536870912
  %.not357.i.i = icmp eq i32 %i.ajp, 0
  br i1 %.not357.i.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.ajq = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aip) #27 ; 2 uses
  %i.ajr = extractvalue { ptr, i64 } %i.ajq, 0
  %i.ajs = extractvalue { ptr, i64 } %i.ajq, 1
  store i8 5, ptr %i.yg, align 8, !tbaa !194, !alias.scope !951
  store i8 3, ptr %i.yh, align 1, !tbaa !195, !alias.scope !951
  store ptr %i.ajr, ptr %27, align 8, !tbaa !153, !alias.scope !951
  store i64 %i.ajs, ptr %i.yi, align 8, !tbaa !153, !alias.scope !951
  store ptr @.str.79, ptr %i.yj, align 8, !tbaa !153, !alias.scope !951
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %i.ajl, ptr noundef nonnull align 8 dereferenceable(34) %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.i.i
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.0272.0394.i.i, i64 24 ; 2 uses
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !154
  %.not358.i.i = icmp eq ptr %i.aju, null
  br i1 %.not358.i.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @_ZN4llvm15mapAtomInstanceERKNS_8DebugLocERNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS6_NS_3sys10SmartMutexILb0EEEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ajt, ptr noundef nonnull align 8 dereferenceable(176) %26) #27
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @_ZN4llvm11ValueMapperC1ERNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEENS_10RemapFlagsEPNS_20ValueMapTypeRemapperEPNS_17ValueMaterializerEPKSt8functionIFbPKNS_8MetadataEEE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(176) %26, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef null) #27
  call void @_ZN4llvm11ValueMapper16remapInstructionERNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(72) %i.ajl) #27
  call void @_ZN4llvm11ValueMapperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  store ptr %i.zj, ptr %28, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yk, i8 0, i64 16, i1 false)
  store ptr %i.zm, ptr %i.yl, align 8, !tbaa !952
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ym, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.yn, align 8, !tbaa !289
  store i8 1, ptr %i.yo, align 1, !tbaa !290
  store i8 0, ptr %i.yp, align 2, !tbaa !291
  %i.ajv = call noundef ptr @_ZN4llvm19simplifyInstructionEPNS_11InstructionERKNS_13SimplifyQueryE(ptr noundef nonnull %i.ajl, ptr noundef nonnull align 8 dereferenceable(59) %28) #27 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  %.not164.i.i = icmp eq ptr %i.ajv, null
  %i.ajw = getelementptr inbounds i8, ptr %.sroa.0272.0394.i.i, i64 -8
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !108
  %i.ajy = icmp eq ptr %i.ajx, null               ; 2 uses
  br i1 %.not164.i.i, label %bb.hc, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.ajy, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit238.i.i, label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i232.i.i

_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i232.i.i: ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store i64 2, ptr %i.yq, align 8, !alias.scope !953
  store ptr null, ptr %i.yr, align 8, !tbaa !200, !alias.scope !953
  store ptr %i.aip, ptr %i.ys, align 8, !tbaa !201, !alias.scope !953
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yq) #27, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %17, align 8, !tbaa !65, !alias.scope !953
  store ptr %26, ptr %i.yt, align 8, !tbaa !205, !alias.scope !953
  %i.ajz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E24lookupOrInsertIntoBucketISC_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(176) %26, ptr noundef nonnull align 8 dereferenceable(40) %17)
  %i.aka = load ptr, ptr %i.ys, align 8, !tbaa !201
  %.not.i.i.i233.i.i = icmp eq ptr %i.aka, null
  br i1 %.not.i.i.i233.i.i, label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit235.i.i, label %bb.gy

bb.gy:                                            ; preds = %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i232.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yq) #27
  br label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit235.i.i

_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit235.i.i: ; preds = %bb.gy, %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i232.i.i
  %.fca.0.extract.i.i234.i.i = extractvalue { ptr, i8 } %i.ajz, 0 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i234.i.i, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.akc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i234.i.i, i64 56 ; 2 uses
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !201 ; 2 uses
  %i.ake = icmp eq ptr %i.akd, %i.ajv
  br i1 %i.ake, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit238.i.i, label %bb.gz

bb.gz:                                            ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit235.i.i
  %.not.i.i236.i.i = icmp eq ptr %i.akd, null
  br i1 %.not.i.i236.i.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akb) #27
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  store ptr %i.ajv, ptr %i.akc, align 8, !tbaa !201
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akb) #27
  br label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit238.i.i

_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit238.i.i: ; preds = %bb.hb, %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit235.i.i, %bb.gx
  %i.akf = call noundef zeroext i1 @_ZNK4llvm11Instruction18mayHaveSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ajl) #28
  br i1 %i.akf, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.i.i, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.thread.i.i

_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.thread.i.i: ; preds = %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit238.i.i
  %i.akg = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ajl) #27 ; 0 uses
  br label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i

bb.hc:                                            ; preds = %bb.gw
  br i1 %i.ajy, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.i.i, label %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i240.i.i

_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i240.i.i: ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store i64 2, ptr %i.yu, align 8, !alias.scope !954
  store ptr null, ptr %i.yv, align 8, !tbaa !200, !alias.scope !954
  store ptr %i.aip, ptr %i.yw, align 8, !tbaa !201, !alias.scope !954
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yu) #27, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %16, align 8, !tbaa !65, !alias.scope !954
  store ptr %26, ptr %i.yx, align 8, !tbaa !205, !alias.scope !954
  %i.akh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E24lookupOrInsertIntoBucketISC_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(176) %26, ptr noundef nonnull align 8 dereferenceable(40) %16)
  %i.aki = load ptr, ptr %i.yw, align 8, !tbaa !201
  %.not.i.i.i241.i.i = icmp eq ptr %i.aki, null
  br i1 %.not.i.i.i241.i.i, label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit243.i.i, label %bb.hd

bb.hd:                                            ; preds = %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i240.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yu) #27
  br label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit243.i.i

_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit243.i.i: ; preds = %bb.hd, %_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_.exit.i240.i.i
  %.fca.0.extract.i.i242.i.i = extractvalue { ptr, i8 } %i.akh, 0 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i242.i.i, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.akk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i242.i.i, i64 56 ; 2 uses
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !201 ; 2 uses
  %i.akm = icmp eq ptr %i.akl, %i.ajl
  br i1 %i.akm, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.i.i, label %bb.he

bb.he:                                            ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit243.i.i
  %.not.i.i244.i.i = icmp eq ptr %i.akl, null
  br i1 %.not.i.i244.i.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akj) #27
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  store ptr %i.ajl, ptr %i.akk, align 8, !tbaa !201
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akj) #27
  br label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.i.i

_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.i.i: ; preds = %bb.hg, %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit243.i.i, %bb.hc, %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit238.i.i
  %.not359389.i.i = icmp eq ptr %.sroa.0288.0393.i.i, %.sroa.0272.0394.i.i
  br i1 %.not359389.i.i, label %.preheader360.i.i.a, label %.lr.ph391.i.i

.preheader360.i.i.a:                              ; preds = %.lr.ph391.i.i, %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.i.i
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.0272.0394.i.i, i64 8
  %57 = load ptr, ptr %i.akn, align 8, !tbaa !130 ; 6 uses
  %58 = call { ptr, ptr } @_ZN4llvm11Instruction18cloneDebugInfoFromEPKS0_St8optionalINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ajl, ptr noundef nonnull %i.aip, ptr undef, i8 0, i1 noundef zeroext false) #27 ; 0 uses
  %59 = load i8, ptr %i.ajl, align 8, !tbaa !107
  %i.ako = icmp eq i8 %59, 88
  br i1 %i.ako, label %bb.hh, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i

.lr.ph391.i.i:                                    ; preds = %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.i.i, %.lr.ph391.i.i
  %.sroa.0288.1390.i.i = phi ptr [ %62, %.lr.ph391.i.i ], [ %.sroa.0288.0393.i.i, %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.i.i ] ; 2 uses
  %i.akp = getelementptr inbounds i8, ptr %.sroa.0288.1390.i.i, i64 -24
  %60 = call { ptr, ptr } @_ZN4llvm11Instruction18cloneDebugInfoFromEPKS0_St8optionalINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ajl, ptr noundef nonnull %i.akp, ptr undef, i8 0, i1 noundef zeroext false) #27 ; 0 uses
  %61 = getelementptr inbounds nuw i8, ptr %.sroa.0288.1390.i.i, i64 8
  %62 = load ptr, ptr %61, align 8, !tbaa !130    ; 2 uses
  %.not359.i.i = icmp eq ptr %62, %.sroa.0272.0394.i.i
  br i1 %.not359.i.i, label %.preheader360.i.i.a, label %.lr.ph391.i.i, !llvm.loop !926

bb.hh:                                            ; preds = %.preheader360.i.i.a
  %i.akq = getelementptr inbounds i8, ptr %i.ajl, i64 -32
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !106 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.akr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.aks = load i8, ptr %i.akr, align 8, !tbaa !107
  %i.akt = icmp eq i8 %i.aks, 14
  br i1 %i.akt, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hi
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akr, i64 32
  %i.akv = load i32, ptr %i.aku, align 8
  %i.akw = and i32 %i.akv, 8192
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.akw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i, label %_ZN4llvm8dyn_castINS_10AssumeInstENS_11InstructionEEEDcPT0_.exit.i.i

_ZN4llvm8dyn_castINS_10AssumeInstENS_11InstructionEEEDcPT0_.exit.i.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akr, i64 36
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !135
  %i.akz = icmp eq i32 %i.aky, 16
  %or.cond.i.i = and i1 %i.aim, %i.akz
  br i1 %or.cond.i.i, label %bb.hj, label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i

bb.hj:                                            ; preds = %_ZN4llvm8dyn_castINS_10AssumeInstENS_11InstructionEEEDcPT0_.exit.i.i
  call void @_ZN4llvm15AssumptionCache18registerAssumptionEPNS_10AssumeInstE(ptr noundef nonnull align 8 dereferenceable(153) %i.zm, ptr noundef nonnull %i.ajl) #27
  br label %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i

_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit230.thread.i.i: ; preds = %bb.hj, %_ZN4llvm8dyn_castINS_10AssumeInstENS_11InstructionEEEDcPT0_.exit.i.i, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i, %bb.hi, %bb.hh, %.preheader360.i.i.a, %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.thread.i.i, %bb.gs, %bb.gr, %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit227.i.i
  %.sroa.0288.2.i.i = phi ptr [ %.sroa.0288.0393.i.i, %_ZN4llvm14WeakTrackingVHaSEPNS_5ValueE.exit246.thread.i.i ], [ %57, %bb.hj ], [ %57, %_ZN4llvm8dyn_castINS_10AssumeInstENS_11InstructionEEEDcPT0_.exit.i.i ], [ %.sroa.0288.0393.i.i, %bb.gs ], [ %.sroa.0288.0393.i.i, %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEixERKS3_.exit227.i.i ], [ %.sroa.0288.0393.i.i, %bb.gr ], [ %57, %bb.hh ], [ %57, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i ], [ %57, %.preheader360.i.i.a ], [ %57, %bb.hi ] ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.sroa.0272.0394.i.i, i64 8
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !130 ; 2 uses
  %i.alc = getelementptr inbounds i8, ptr %i.alb, i64 -24 ; 2 uses
  %.not160.i.i = icmp eq ptr %i.alc, %1
  br i1 %.not160.i.i, label %.preheader.i.i, label %bb.gk, !llvm.loop !927

bb.hk:                                            ; preds = %bb.hk, %.lr.ph399.i.i
  %i.ald = phi ptr [ %i.ain, %.lr.ph399.i.i ], [ %i.alh, %bb.hk ]
  %.sroa.0288.3398.i.i = phi ptr [ %.sroa.0288.0.lcssa.i.i, %.lr.ph399.i.i ], [ %i.alg, %bb.hk ]
  %i.ale = call { ptr, ptr } @_ZN4llvm11Instruction18cloneDebugInfoFromEPKS0_St8optionalINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEb(ptr noundef nonnull align 8 dereferenceable(72) %i.aio, ptr noundef nonnull %i.ald, ptr undef, i8 0, i1 noundef zeroext false) #27 ; 0 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.0288.3398.i.i, i64 8
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !130 ; 2 uses
  %i.alh = getelementptr inbounds i8, ptr %i.alg, i64 -24 ; 2 uses
  %.not161.i.i = icmp eq ptr %i.alh, %1
  br i1 %.not161.i.i, label %._crit_edge.i.i, label %bb.hk, !llvm.loop !928

._crit_edge.i.i:                                  ; preds = %bb.hk, %.preheader.i.i
  %i.ali = getelementptr inbounds i8, ptr %.fca.0.extract1.i.i.i, i64 -24
  %i.alj = call { ptr, ptr } @_ZN4llvm11Instruction18cloneDebugInfoFromEPKS0_St8optionalINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ali, ptr noundef nonnull %1, ptr undef, i8 0, i1 noundef zeroext false) #27 ; 0 uses
  call void @_ZN4llvm10BasicBlock17removePredecessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(80) %i.zn, ptr noundef nonnull %i.aho, i1 noundef zeroext false) #27
  %i.alk = getelementptr inbounds nuw i8, ptr %i.aho, i64 48
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !110 ; 5 uses
  %i.alm = getelementptr inbounds i8, ptr %i.all, i64 -56 ; 2 uses
  %i.aln = getelementptr inbounds i8, ptr %i.all, i64 -40 ; 3 uses
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !178 ; 3 uses
  %.not.i.i.i.i.i.i141 = icmp eq ptr %i.alo, null
  br i1 %.not.i.i.i.i.i.i141, label %bb.ho, label %bb.hl

bb.hl:                                            ; preds = %._crit_edge.i.i
  %i.alp = getelementptr inbounds i8, ptr %i.all, i64 -48 ; 2 uses
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !109 ; 3 uses
  store ptr %i.alq, ptr %i.alo, align 8, !tbaa !114
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.alq, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 16
  store ptr %i.alo, ptr %i.alr, align 8, !tbaa !178
  store ptr null, ptr %i.alp, align 8, !tbaa !109
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  store ptr null, ptr %i.aln, align 8, !tbaa !178
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %._crit_edge.i.i
  store ptr %i.aft, ptr %i.alm, align 8, !tbaa !106
  %i.als = load i8, ptr %i.aft, align 8, !tbaa !107
  %i.alt = icmp ugt i8 %i.als, 10
  br i1 %i.alt, label %bb.hp, label %_ZN4llvm12UncondBrInst12setSuccessorEjPNS_10BasicBlockE.exit.i.i

bb.hp:                                            ; preds = %bb.ho
  %i.alu = getelementptr inbounds nuw i8, ptr %i.aft, i64 16 ; 3 uses
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !114 ; 3 uses
  %i.alw = getelementptr inbounds i8, ptr %i.all, i64 -48 ; 2 uses
  store ptr %i.alv, ptr %i.alw, align 8, !tbaa !109
  %.not.i.i.i.i.i250.i.i = icmp eq ptr %i.alv, null
  br i1 %.not.i.i.i.i.i250.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  store ptr %i.alw, ptr %i.alx, align 8, !tbaa !178
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i:    ; preds = %bb.hq, %bb.hp
  store ptr %i.alu, ptr %i.aln, align 8, !tbaa !178
  store ptr %i.alm, ptr %i.alu, align 8, !tbaa !114
  br label %_ZN4llvm12UncondBrInst12setSuccessorEjPNS_10BasicBlockE.exit.i.i

_ZN4llvm12UncondBrInst12setSuccessorEjPNS_10BasicBlockE.exit.i.i: ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, %bb.ho
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.zc, align 8, !tbaa !177
  %i.aly = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.aly, align 8, !tbaa !177
  %.not162.i.i = icmp eq ptr %i.zi, null
  br i1 %.not162.i.i, label %bb.hs, label %_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit254.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit254.i.i: ; preds = %_ZN4llvm12UncondBrInst12setSuccessorEjPNS_10BasicBlockE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  store ptr %i.zd, ptr %29, align 8, !tbaa !77
  store i32 2, ptr %i.zf, align 4, !tbaa !113
  %i.alz = ptrtoint ptr %i.zn to i64
  %i.ama = or i64 %i.alz, 4
  store ptr %i.aho, ptr %i.zd, align 8
  store i64 %i.ama, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  %i.amb = ptrtoint ptr %i.aft to i64
  store ptr %i.aho, ptr %i.zg, align 8
  store i64 %i.amb, ptr %.sroa.3.0..sroa_idx.i253.i.i, align 8
  store i32 2, ptr %i.ze, align 8, !tbaa !112
  call void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE12applyUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEE(ptr noundef nonnull align 8 dereferenceable(658) %i.zi, ptr nonnull %i.zd, i64 2) #27
  %i.amc = load ptr, ptr %29, align 8, !tbaa !77  ; 2 uses
  %i.amd = icmp eq ptr %i.amc, %i.zd
  br i1 %i.amd, label %_ZN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj2EED2Ev.exit.i.i, label %bb.hr

bb.hr:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit254.i.i
  call void @free(ptr noundef %i.amc) #27
  br label %_ZN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj2EED2Ev.exit.i.i: ; preds = %bb.hr, %_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit254.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.hs

.critedge170.i.i:                                 ; preds = %.lr.ph.i.i205.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit209.thread.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit209.i.i, %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10BasicBlockEEEZL43foldCondBranchOnValueKnownInPredecessorImplPNS_10CondBrInstEPNS_14DomTreeUpdaterERKNS_10DataLayoutEPNS_15AssumptionCacheEE3$_0EEbOT_T0_.exit.i.i", %.lr.ph388.i.i
  %i.ame = getelementptr inbounds nuw i8, ptr %.0143387.i.i, i64 64 ; 2 uses
  %.not157.i.i = icmp eq ptr %i.ame, %i.aff
  br i1 %.not157.i.i, label %.critedge174.i.i, label %.lr.ph388.i.i

bb.hs:                                            ; preds = %_ZN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj2EED2Ev.exit.i.i, %_ZN4llvm12UncondBrInst12setSuccessorEjPNS_10BasicBlockE.exit.i.i
  %i.amf = call noundef zeroext i1 @_ZN4llvm25MergeBlockIntoPredecessorEPNS_10BasicBlockEPNS_14DomTreeUpdaterEPNS_8LoopInfoEPNS_16MemorySSAUpdaterEPNS_23MemoryDependenceResultsEbPNS_13DominatorTreeE(ptr noundef nonnull %i.aho, ptr noundef %i.zi, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #27 ; 0 uses
  call void @_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %.critedge174.i.i

.critedge174.i.i:                                 ; preds = %.lr.ph.i.i186.i.i, %.lr.ph377.i.i, %.critedge170.i.i, %bb.hs, %.critedge168.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit190.i.i, %_ZL34blockIsSimpleEnoughToThreadThroughPN4llvm10BasicBlockERNS_11SmallPtrSetIS1_Lj8EEE.exit.i.i
  %.sroa.7324.0.i.i = phi i1 [ true, %_ZL34blockIsSimpleEnoughToThreadThroughPN4llvm10BasicBlockERNS_11SmallPtrSetIS1_Lj8EEE.exit.i.i ], [ true, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit190.i.i ], [ true, %.lr.ph377.i.i ], [ false, %bb.hs ], [ true, %.critedge168.i.i ], [ true, %.critedge170.i.i ], [ true, %.lr.ph.i.i186.i.i ]
  %i.amg = load i8, ptr %i.xm, align 8, !tbaa !72, !range !73, !noundef !74
  %i.amh = trunc nuw i8 %i.amg to i1
  br i1 %i.amh, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.ht

bb.ht:                                            ; preds = %.critedge174.i.i
  %i.ami = load ptr, ptr %24, align 8, !tbaa !75
  call void @free(ptr noundef %i.ami) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.ht, %.critedge174.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.amj = load i8, ptr %i.xi, align 8, !tbaa !72, !range !73, !noundef !74
  %i.amk = trunc nuw i8 %i.amj to i1
  br i1 %i.amk, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit255.i.i, label %bb.hu

bb.hu:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  %i.aml = load ptr, ptr %23, align 8, !tbaa !75
  call void @free(ptr noundef %i.aml) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit255.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit255.i.i:    ; preds = %bb.hu, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.hv

bb.hv:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit255.i.i, %bb.ei
  %.sroa.0323.2.ph.i.i = phi i32 [ 0, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit255.i.i ], [ 1, %bb.ei ] ; 2 uses
  %.sroa.7324.1.ph.i.i = phi i1 [ %.sroa.7324.0.i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit255.i.i ], [ true, %bb.ei ] ; 2 uses
  %.pr.i.i = load i32, ptr %i.xd, align 8, !tbaa !112 ; 2 uses
  %i.amm = load ptr, ptr %i.xb, align 8, !tbaa !77 ; 3 uses
  %.not4.i.i.i.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.hv
  %i.amn = zext i32 %.pr.i.i to i64
  %.idx.i.i256.i.i = shl nuw nsw i64 %i.amn, 6
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 %.idx.i.i256.i.i
  br label %.lr.ph.i.i.i257.i.i

.lr.ph.i.i.i257.i.i:                              ; preds = %_ZNSt4pairIPN4llvm11ConstantIntENS0_14SmallSetVectorIPNS0_10BasicBlockELj2EEEED2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.amp, %_ZNSt4pairIPN4llvm11ConstantIntENS0_14SmallSetVectorIPNS0_10BasicBlockELj2EEEED2Ev.exit.i.i.i.i.i ], [ %i.amo, %.lr.ph.i.preheader.i.i.i.i ] ; 5 uses
  %i.amp = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -64 ; 2 uses
  %i.amq = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -56
  %i.amr = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -32
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !77 ; 2 uses
  %i.amt = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -16
  %i.amu = icmp eq ptr %i.ams, %i.amt
  br i1 %i.amu, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i.i.i.i.i.i, label %bb.hw

bb.hw:                                            ; preds = %.lr.ph.i.i.i257.i.i
  call void @free(ptr noundef %i.ams) #27
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.hw, %.lr.ph.i.i.i257.i.i
  %i.amv = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -36
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !273 ; 2 uses
  %i.amx = icmp eq i32 %i.amw, 0
  br i1 %i.amx, label %_ZNSt4pairIPN4llvm11ConstantIntENS0_14SmallSetVectorIPNS0_10BasicBlockELj2EEEED2Ev.exit.i.i.i.i.i, label %bb.hx

bb.hx:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i.i.i.i.i.i
  %i.amy = load ptr, ptr %i.amq, align 8, !tbaa !274
  %i.amz = zext i32 %i.amw to i64                 ; 2 uses
  %i.ana = shl nuw nsw i64 %i.amz, 3
  %i.anb = add nuw nsw i64 %i.amz, 31
  %i.anc = lshr i64 %i.anb, 3
  %i.and = and i64 %i.anc, 1073741820
  %i.ane = add nuw nsw i64 %i.and, %i.ana
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.amy, i64 noundef %i.ane, i64 noundef 8) #27
  br label %_ZNSt4pairIPN4llvm11ConstantIntENS0_14SmallSetVectorIPNS0_10BasicBlockELj2EEEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm11ConstantIntENS0_14SmallSetVectorIPNS0_10BasicBlockELj2EEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.hx, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i.i.i.i.i.i
  %.not.i.i.i258.i.i = icmp eq ptr %i.amm, %i.amp
  br i1 %.not.i.i.i258.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i257.i.i, !llvm.loop !25

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i.i.i: ; preds = %_ZNSt4pairIPN4llvm11ConstantIntENS0_14SmallSetVectorIPNS0_10BasicBlockELj2EEEED2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i140 = load ptr, ptr %i.xb, align 8, !tbaa !77
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i.i.i, %bb.hv, %.thread.i.i147
  %.sroa.7324.1348.i.i = phi i1 [ %.sroa.7324.1.ph.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i.i.i ], [ %.sroa.7324.1.ph.i.i, %bb.hv ], [ true, %.thread.i.i147 ]
  %.sroa.0323.2347.i.i = phi i32 [ %.sroa.0323.2.ph.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i.i.i ], [ %.sroa.0323.2.ph.i.i, %bb.hv ], [ 0, %.thread.i.i147 ]
  %i.anf = phi ptr [ %.pre.i.i.i.i140, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i.i.i ], [ %i.amm, %bb.hv ], [ %i.acg, %.thread.i.i147 ] ; 2 uses
  %i.ang = icmp eq ptr %i.anf, %i.xc
  br i1 %i.ang, label %_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELj2EED2Ev.exit.i.i.i, label %bb.hy

bb.hy:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntENS_14SmallSetVectorIPNS_10BasicBlockELj2EEEELb0EE13destroy_rangeEPS8_SA_.exit.i.i.i.i
  call void @free(ptr noundef %i.anf) #27
end_hunk_0
