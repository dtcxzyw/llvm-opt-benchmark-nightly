Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUToROCDL?download=true
inline.NumInlined: 14684
inline.NumDeleted: 6739
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK12_GLOBAL__N_112_GLOBAL__N_131ScaledExtPackedMatrixOpLowering15matchAndRewriteEN4mlir6amdgpu23ScaledExtPackedMatrixOpENS3_30ScaledExtPackedMatrixOpAdaptorERNS2_25ConversionPatternRewriterE:bb.a
  %12 = alloca %"class.mlir::amdgpu::ScaledExtPackedMatrixOp", align 8 ; 10 uses
  %13 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %14 = alloca %"class.mlir::FloatType", align 8  ; 7 uses
  %15 = alloca %"class.mlir::VectorType", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %16 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"struct.mlir::OperationState", align 8 ; 15 uses
  %19 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %20 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  %21 = alloca %"class.llvm::SmallVector.2657", align 8 ; 10 uses
  %22 = alloca %"class.mlir::NamedAttribute", align 8 ; 3 uses
  store ptr %1, ptr %12, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !204, !noalias !1888
  %i.f = icmp eq i32 %i.e, 12
  br i1 %i.f, label %_ZN4mlir6amdgpuneERKNS0_7ChipsetES3_.exit, label %_ZN4mlir6amdgpuneERKNS0_7ChipsetES3_.exit.thread

_ZN4mlir6amdgpuneERKNS0_7ChipsetES3_.exit:        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !204, !noalias !1888
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !204, !noalias !1888
  %i.k = icmp ne i32 %i.h, 5
  %i.l = icmp ne i32 %i.j, 0
  %.not3.i.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %.not3.i.i, label %_ZN4mlir6amdgpuneERKNS0_7ChipsetES3_.exit.thread, label %bb.c

_ZN4mlir6amdgpuneERKNS0_7ChipsetES3_.exit.thread: ; preds = %bb.a, %_ZN4mlir6amdgpuneERKNS0_7ChipsetES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !976
  store ptr @.str.285, ptr %11, align 8, !tbaa !34
  store i8 3, ptr %i.m, align 8, !tbaa !973
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr %11, ptr %10, align 8, !tbaa !1325
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1309 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir6amdgpuneERKNS0_7ChipsetES3_.exit.thread
  %i.q = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #29
  br i1 %i.q, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.b
  %i.r = ptrtoint ptr %10 to i64
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.r) #29, !inline_history !1873
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_8LocationEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %_ZN4mlir6amdgpuneERKNS0_7ChipsetES3_.exit.thread, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.ay

bb.c:                                             ; preds = %_ZN4mlir6amdgpuneERKNS0_7ChipsetES3_.exit
  %i.v = call noundef i32 @_ZN4mlir6amdgpu23ScaledExtPackedMatrixOp17getFirstScaleLaneEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29
  %i.w = lshr i32 %i.v, 4                         ; 2 uses
  %i.x = call noundef i32 @_ZN4mlir6amdgpu23ScaledExtPackedMatrixOp17getFirstScaleByteEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29 ; 2 uses
  %i.y = call noundef i32 @_ZN4mlir6amdgpu23ScaledExtPackedMatrixOp12getBlockSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.z = load ptr, ptr %12, align 8, !tbaa !1178
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1262
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !1255
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.ag = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #29 ; 3 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i46, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1186 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !1189

bb.e:                                             ; preds = %bb.d
  %i.al = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #29
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 15) #29
  store ptr %i.am, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #29
  br label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !14 ; 2 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aq, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ar = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ar ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.at = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = xor i64 %i.ar, -1
  %i.aw = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.av
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.at, ptr %i.au, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.at, i64 %i.aw, i64 %i.ar ; 2 uses
  %i.ax = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !1396

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.aq, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.ay
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1039
  %i.ba = icmp eq ptr %i.az, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ba, label %bb.h, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1397
  br label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit: ; preds = %bb.c, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.g, %bb.h
  %i.bd = phi ptr [ null, %bb.c ], [ %i.bc, %bb.h ], [ null, %bb.g ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.ag, ptr %14, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = call noundef i32 @_ZN4mlir9FloatType8getWidthEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.bg = load ptr, ptr %12, align 8, !tbaa !1178
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %.0.copyload.i.i.i.i.i47 = load i64, ptr %i.bh, align 8
  %i.bi = and i64 %.0.copyload.i.i.i.i.i47, -8
  %i.bj = inttoptr i64 %i.bi to ptr
  store ptr %i.bj, ptr %15, align 8
  %i.bk = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #29 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i50, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit70, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit
  %i.bl = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.j, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit70, !prof !1189

bb.j:                                             ; preds = %bb.i
  %i.bn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #29
  %.not.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i69, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit70, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 15) #29
  store ptr %i.bo, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #29
  br label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit70

_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit70: ; preds = %bb.i, %bb.j, %bb.k, %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.bq = call ptr @_ZN4mlir7Builder10getI32TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.0.0.copyload.i13.i.i = load i64, ptr %i.br, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %9, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bs, align 8
  %i.bt = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 0) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1352
  %i.bw = load ptr, ptr %12, align 8, !tbaa !1178
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %.0.copyload.i.i.i.i.i71 = load i64, ptr %i.bx, align 8
  %i.by = and i64 %.0.copyload.i.i.i.i.i71, -8
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.bv, ptr %i.bz) #29 ; 2 uses
  %.sroa.0.0.copyload.i72 = load ptr, ptr %14, align 8, !tbaa !1192
  %i.cb = load ptr, ptr %.sroa.0.0.copyload.i72, align 8, !tbaa !1186
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !tbaa !14 ; 3 uses
  %i.cd = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float4E2M1FNTypeEvE2idE
  br i1 %i.cd, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit70
  %i.ce = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float8E4M3FNTypeEvE2idE
  %i.cf = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14Float8E5M2TypeEvE2idE
  %spec.select.i = or i1 %i.ce, %i.cf
  br i1 %spec.select.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 2, ptr %i.a, align 8, !tbaa !24
  %i.cg = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.a, i64 1, ptr %i.bq, ptr null, i64 0) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 3, ptr %i.b, align 8, !tbaa !24
  %i.ch = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.b, i64 1, ptr %i.bq, ptr null, i64 0) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit70, %bb.m, %bb.n
  %.sink124 = phi ptr [ %i.cg, %bb.m ], [ %i.ch, %bb.n ], [ %i.bq, %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit70 ]
  %i.ci = call noundef ptr @_ZNK4mlir20ConvertToLLVMPattern16getTypeConverterEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #29
  %i.cj = call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.ci, ptr %.sink124) #29 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  %i.cl = icmp eq ptr %i.ca, null
  %or.cond = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.cn, align 1, !tbaa !976
  store ptr @.str.134, ptr %8, align 8, !tbaa !34
  store i8 3, ptr %i.cm, align 8, !tbaa !973
  %i.co = load ptr, ptr %12, align 8, !tbaa !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %8, ptr %7, align 8, !tbaa !1325
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1309 ; 4 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i77, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6amdgpu23ScaledExtPackedMatrixOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.cq) #29
  br i1 %i.cr, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i78, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6amdgpu23ScaledExtPackedMatrixOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i78: ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.sroa.0.0.copyload.i.i.i.i79 = load ptr, ptr %i.cs, align 8
  %i.ct = ptrtoint ptr %7 to i64
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(12) %i.cq, ptr %.sroa.0.0.copyload.i.i.i.i79, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6amdgpu23ScaledExtPackedMatrixOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ct) #29, !inline_history !1891
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6amdgpu23ScaledExtPackedMatrixOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6amdgpu23ScaledExtPackedMatrixOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.p, %bb.q, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ax

bb.r:                                             ; preds = %bb.o
  %.sroa.015.0.copyload = load ptr, ptr %14, align 8, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.bk, ptr %6, align 8, !noalias !1892
  %i.cx = load ptr, ptr %.sroa.015.0.copyload, align 8, !tbaa !1186, !noalias !1892
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !14, !noalias !1892 ; 5 uses
  %i.cz = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float4E2M1FNTypeEvE2idE
  br i1 %i.cz, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.da = call noundef zeroext i1 @_ZNK4mlir4Type5isF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.da, label %bb.ao, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = call noundef zeroext i1 @_ZNK4mlir4Type6isBF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.db, label %bb.ao, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.dc, label %bb.ao, label %bb.ak

bb.v:                                             ; preds = %bb.r
  %i.dd = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float8E4M3FNTypeEvE2idE
  br i1 %i.dd, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.de = call noundef zeroext i1 @_ZNK4mlir4Type5isF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.de, label %bb.ao, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = call noundef zeroext i1 @_ZNK4mlir4Type6isBF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.df, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.dg, label %bb.ao, label %bb.ak

bb.z:                                             ; preds = %bb.v
  %i.dh = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14Float8E5M2TypeEvE2idE
  br i1 %i.dh, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.di = call noundef zeroext i1 @_ZNK4mlir4Type5isF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.di, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = call noundef zeroext i1 @_ZNK4mlir4Type6isBF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.dj, label %bb.ao, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.dk, label %bb.ao, label %bb.ak

bb.ad:                                            ; preds = %bb.z
  %i.dl = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float6E2M3FNTypeEvE2idE
  br i1 %i.dl, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dm = call noundef zeroext i1 @_ZNK4mlir4Type5isF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.dm, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = call noundef zeroext i1 @_ZNK4mlir4Type6isBF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.dn, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.do, label %bb.ao, label %bb.ak

bb.ah:                                            ; preds = %bb.ad
  %i.dp = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float6E3M2FNTypeEvE2idE
  call void @llvm.assume(i1 %i.dp)
  %i.dq = call noundef zeroext i1 @_ZNK4mlir4Type5isF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.dq, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = call noundef zeroext i1 @_ZNK4mlir4Type6isBF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.dr, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #29, !noalias !1892
  br i1 %i.ds, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.y, %bb.aj, %bb.u, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.du, align 1, !tbaa !976
  store ptr @.str.286, ptr %17, align 8, !tbaa !34
  store i8 3, ptr %i.dt, align 8, !tbaa !973
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(34) %17) #29
  %i.dv = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %16) #29
  %i.dw = load ptr, ptr %16, align 8, !tbaa !977
  %.not.i = icmp eq ptr %i.dw, null
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %16) #29
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dx = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !985, !range !960, !noundef !961
  %i.dz = trunc nuw i8 %i.dy to i1
  store i8 0, ptr %i.dx, align 8, !tbaa !985
  br i1 %i.dz, label %bb.an, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ea) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.ax

bb.ao:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s
  %.str.302.sink.i = phi ptr [ @.str.301, %bb.ai ], [ @.str.300, %bb.ah ], [ @.str.299, %bb.ag ], [ @.str.298, %bb.af ], [ @.str.297, %bb.ae ], [ @.str.296, %bb.ac ], [ @.str.295, %bb.ab ], [ @.str.294, %bb.aa ], [ @.str.293, %bb.y ], [ @.str.292, %bb.x ], [ @.str.291, %bb.w ], [ @.str.290, %bb.u ], [ @.str.289, %bb.t ], [ @.str.288, %bb.s ], [ @.str.302, %bb.aj ]
  %.sink39.i = phi i64 [ 29, %bb.ai ], [ 28, %bb.ah ], [ 28, %bb.ag ], [ 29, %bb.af ], [ 28, %bb.ae ], [ 27, %bb.ac ], [ 28, %bb.ab ], [ 27, %bb.aa ], [ 27, %bb.y ], [ 28, %bb.x ], [ 27, %bb.w ], [ 27, %bb.u ], [ 28, %bb.t ], [ 27, %bb.s ], [ 28, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.eb = icmp eq i32 %i.bf, 8
  br i1 %i.eb, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = icmp eq i32 %i.x, 2
  %i.ed = select i1 %i.ec, i32 2, i32 0
  %i.ee = shl nuw nsw i32 %i.w, 2
  %i.ef = or disjoint i32 %i.ed, %i.ee
  br label %_ZN12_GLOBAL__N_111getScaleSelEijii.exit

bb.aq:                                            ; preds = %bb.ao
  %i.eg = shl i32 %i.x, 1
  %i.eh = shl nuw nsw i32 %i.w, 3
  %i.ei = or i32 %i.eh, %i.eg
  br label %_ZN12_GLOBAL__N_111getScaleSelEijii.exit

_ZN12_GLOBAL__N_111getScaleSelEijii.exit:         ; preds = %bb.ap, %bb.aq
  %.pn.i = phi i32 [ %i.ei, %bb.aq ], [ %i.ef, %bb.ap ]
  %i.ej = icmp eq i32 %i.y, 16
  %i.ek = zext i1 %i.ej to i32
  %.0.i = or disjoint i32 %.pn.i, %i.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i13.i.i, ptr %4, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.el, align 8
  %i.em = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #29
end_hunk_0
