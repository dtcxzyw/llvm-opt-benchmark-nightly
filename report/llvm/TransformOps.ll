Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TransformOps?download=true
inline.NumInlined: 26617
inline.NumDeleted: 8590
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 29
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir9transform14AlternativesOp5printERNS_12OpAsmPrinterE:bb.a
bb.aj:                                            ; preds = %bb.ai
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 44
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = and i32 %i.ip, 8388608
  %.not.i.i15.i.i.i = icmp eq i32 %i.iq, 0
  br i1 %.not.i.i15.i.i.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit.thread.i18.i.i.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit.i16.i.i.i, !prof !85

_ZN4mlir9Operation14getNumOperandsEv.exit.i16.i.i.i: ; preds = %bb.aj
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 68
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !89
  %.not9.i17.i.i.i = icmp eq i32 %i.is, 0
  br i1 %.not9.i17.i.i.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit.thread.i18.i.i.i, label %bb.ak

_ZN4mlir9Operation14getNumOperandsEv.exit.thread.i18.i.i.i: ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.i16.i.i.i, %bb.aj
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 36
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !93
  %i.iv = icmp ne i32 %i.iu, 0
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.thread.i18.i.i.i, %_ZN4mlir9Operation14getNumOperandsEv.exit.i16.i.i.i, %bb.ai
  %i.iw = phi i1 [ true, %_ZN4mlir9Operation14getNumOperandsEv.exit.i16.i.i.i ], [ true, %bb.ai ], [ %i.iv, %_ZN4mlir9Operation14getNumOperandsEv.exit.thread.i18.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %"_ZZN4mlir9transform14AlternativesOp5printERNS_12OpAsmPrinterEENK3$_0clERNS_6RegionE.exit19.i.i.i"

"_ZZN4mlir9transform14AlternativesOp5printERNS_12OpAsmPrinterEENK3$_0clERNS_6RegionE.exit19.i.i.i": ; preds = %bb.ak, %bb.ah, %"_ZZN4llvm10interleaveINS_15MutableArrayRefIN4mlir6RegionEEEZNS2_9transform14AlternativesOp5printERNS2_12OpAsmPrinterEE3$_0S7_S3_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i"
  %.0.i14.i.i.i = phi i1 [ %i.iw, %bb.ak ], [ true, %bb.ah ], [ true, %"_ZZN4llvm10interleaveINS_15MutableArrayRefIN4mlir6RegionEEEZNS2_9transform14AlternativesOp5printERNS2_12OpAsmPrinterEE3$_0S7_S3_EEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i" ]
  %i.ix = load ptr, ptr %1, align 8, !tbaa !145
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 232
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %.024.i.i.i, i1 noundef zeroext true, i1 noundef zeroext %.0.i14.i.i.i, i1 noundef zeroext false) #26, !inline_history !577
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.gu
  br i1 %.not.i.i.i, label %"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIN4mlir6RegionEEEZNS2_9transform14AlternativesOp5printERNS2_12OpAsmPrinterEE3$_0S7_S3_EEvRKT_RT1_T0_.exit", label %bb.ae, !llvm.loop !579

"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIN4mlir6RegionEEEZNS2_9transform14AlternativesOp5printERNS2_12OpAsmPrinterEE3$_0S7_S3_EEvRKT_RT1_T0_.exit": ; preds = %"_ZZN4mlir9transform14AlternativesOp5printERNS_12OpAsmPrinterEENK3$_0clERNS_6RegionE.exit19.i.i.i", %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit47, %"_ZZN4mlir9transform14AlternativesOp5printERNS_12OpAsmPrinterEENK3$_0clERNS_6RegionE.exit.i.i.i"
  %i.ja = load ptr, ptr %8, align 8, !tbaa !118   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ff
  br i1 %i.jb, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIN4mlir6RegionEEEZNS2_9transform14AlternativesOp5printERNS2_12OpAsmPrinterEE3$_0S7_S3_EEvRKT_RT1_T0_.exit"
  call void @free(ptr noundef %i.ja) #26
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %"_ZN4llvm15interleaveCommaINS_15MutableArrayRefIN4mlir6RegionEEEZNS2_9transform14AlternativesOp5printERNS2_12OpAsmPrinterEE3$_0S7_S3_EEvRKT_RT1_T0_.exit", %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK4mlir6detail10TypedValueINS_9transform28TransformHandleTypeInterfaceEE7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !159
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i, -8       ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4castIN4mlir9transform28TransformHandleTypeInterfaceENS1_4TypeEEEDcRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !139  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !140

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.369, i64 49), i64 45) #26
  store ptr %i.j, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !98 ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !118  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.o = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.o ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !98
  %i.q = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = xor i64 %i.o, -1
  %i.t = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.q, ptr %i.r, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.q, i64 %i.t, i64 %i.o ; 2 uses
  %i.u = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir9transform28TransformHandleTypeInterfaceENS1_4TypeEEEDcRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126
  %i.x = icmp eq ptr %i.w, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.x, label %bb.f, label %_ZN4llvm4castIN4mlir9transform28TransformHandleTypeInterfaceENS1_4TypeEEEDcRKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !142
  br label %_ZN4llvm4castIN4mlir9transform28TransformHandleTypeInterfaceENS1_4TypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir9transform28TransformHandleTypeInterfaceENS1_4TypeEEEDcRKT0_.exit: ; preds = %bb.a, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.aa = phi ptr [ null, %bb.a ], [ %i.z, %bb.f ], [ null, %bb.e ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %i.aa, 1
  ret { ptr, ptr } %.fca.1.insert.i.i
}

declare void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind writable sret(%"class.mlir::ValueTypeRange") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6detail28AnnotateOpGenericAdaptorBaseC2ENS0_10AnnotateOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.f, align 8
  %i.n = load i32, ptr %i.g, align 4              ; 3 uses
  %i.o = and i32 %i.n, 8388607                    ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %i.o to i64
  %i.r = lshr i32 %i.n, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.s
  %i.u = lshr i32 %i.n, 21
  %i.v = and i32 %i.u, 2040
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !84
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir9transform6detail28AnnotateOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi18, splat (i32 1)
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi18, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !580

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01114.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 %i.e, i32 1
  %i.i = zext i32 %5 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %i.l, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader19 ] ; 2 uses
  %6 = icmp eq i32 %.01114, 1
  %i.k = zext i1 %6 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %i.l = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !581
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4mlir9transform6detail28AnnotateOpGenericAdaptorBase7getNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !162
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret { ptr, i64 } %i.b
}

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform17AnnotateOpAdaptorC2ENS0_10AnnotateOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !89
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #26
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.o, align 8
  %i.v = load i32, ptr %i.a, align 4              ; 3 uses
  %i.w = and i32 %i.v, 8388607                    ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4mlir9transform24AnnotateOpGenericAdaptorINS_10ValueRangeEEC2INS0_10AnnotateOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.y = zext nneg i32 %i.w to i64
  %i.z = lshr i32 %i.v, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.z, 1
  %i.aa = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.aa
  %i.ac = lshr i32 %i.v, 21
  %i.ad = and i32 %i.ac, 2040
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !84
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ai
  br label %_ZN4mlir9transform24AnnotateOpGenericAdaptorINS_10ValueRangeEEC2INS0_10AnnotateOpEvEES2_T_.exit

_ZN4mlir9transform24AnnotateOpGenericAdaptorINS_10ValueRangeEEC2INS0_10AnnotateOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.aj, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.y, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #26
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.al, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir9transform17AnnotateOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !132
  store ptr @.str.8, ptr %3, align 8, !tbaa !133
  store i8 3, ptr %i.d, align 8, !tbaa !134
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #26
  %i.f = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  %i.g = load ptr, ptr %2, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !119, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !119
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.03.0
}

declare void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform10AnnotateOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !582

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !85

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.l, i32 1
  %i.p = zext i32 %4 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.s, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.r = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %i.s = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !583
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform10AnnotateOp15getParamMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
.lr.ph.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir9transform10AnnotateOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !85

bb.a:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir9transform10AnnotateOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir9transform10AnnotateOp27getODSOperandIndexAndLengthEj.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %.lr.ph.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform10AnnotateOp21setPropertiesFromAttrERNS0_6detail28AnnotateOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #26, !inline_history !0
  %i.e = load ptr, ptr %8, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 3, ptr %6, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str, ptr %i.g, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !117

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !115
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pr = load ptr, ptr %8, align 8, !tbaa !106
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !119, !range !120, !noundef !121
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !119
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.10, i64 4) #26 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i5 = load ptr, ptr %i.w, align 8, !tbaa !98
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i5, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, i64 noundef %3) #26, !inline_history !0
  %i.z = load ptr, ptr %9, align 8, !tbaa !106
  %.not.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 3, ptr %5, align 8, !tbaa !109
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.11, ptr %i.ab, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 49, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i8, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !116
  %.not.i.i.i.i.i9 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i9, label %bb.n, label %bb.m, !prof !117

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !115
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pr21 = load ptr, ptr %9, align 8, !tbaa !106
  %.not.i.i10 = icmp eq ptr %.pr21, null
  br i1 %.not.i.i10, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.u) #26
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !116
  %.not.i.i.i.i.i11 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i11, label %bb.q, label %bb.p, !prof !117

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !115
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pr23 = load ptr, ptr %9, align 8, !tbaa !106
  %.not.i12 = icmp eq ptr %.pr23, null
  br i1 %.not.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

end_hunk_0
begin_hunk_1_@_ZN4mlir9transform15ApplyPatternsOp5printERNS_12OpAsmPrinterE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.dq = load ptr, ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.dr = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dq) #26
  store ptr %i.dr, ptr %2, align 8
  %i.ds = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.dt = extractvalue { ptr, i64 } %i.ds, 0
  %i.du = extractvalue { ptr, i64 } %i.ds, 1
  %i.dv = load ptr, ptr %3, align 8, !tbaa !118
  %i.dw = load i32, ptr %i.bv, align 8, !tbaa !115
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load ptr, ptr %1, align 8, !tbaa !145
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 200
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.dt, i64 %i.du, ptr %i.dv, i64 %i.dx) #26
  %i.eb = load ptr, ptr %1, align 8, !tbaa !145
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef nonnull align 8 dereferenceable(48) ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !6 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !156 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !157
  %.not.i.i46 = icmp ult ptr %i.eg, %i.ei
  br i1 %.not.i.i46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge4
  %i.ej = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ee, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit47

bb.s:                                             ; preds = %.critedge4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store ptr %i.ek, ptr %i.ef, align 8, !tbaa !156
  store i8 32, ptr %i.eg, align 1, !tbaa !133
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit47

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit47: ; preds = %bb.r, %bb.s
  %i.el = load ptr, ptr %1, align 8, !tbaa !145
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call noundef nonnull align 8 dereferenceable(48) ptr %i.en(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !156 ; 2 uses
  %i.et = icmp eq ptr %i.eq, %i.es
  br i1 %i.et, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit47
  %i.eu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eo, ptr noundef nonnull @.str.6, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.u:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit47
  store i8 58, ptr %i.es, align 1
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !156
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store ptr %i.ew, ptr %i.er, align 8, !tbaa !156
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.t, %bb.u
  %i.ex = load ptr, ptr %1, align 8, !tbaa !145
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call noundef nonnull align 8 dereferenceable(48) ptr %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !6 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !156 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !157
  %.not.i.i49 = icmp ult ptr %i.fc, %i.fe
  br i1 %.not.i.i49, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.ff = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.fa, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit50

bb.w:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.fg, ptr %i.fb, align 8, !tbaa !156
  store i8 32, ptr %i.fc, align 1, !tbaa !133
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit50

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit50: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.fh = load ptr, ptr %0, align 8, !tbaa !92
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !88
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %.sroa.0.0.copyload.i.i.i.i52 = load ptr, ptr %i.fk, align 8, !tbaa !136
  store ptr %.sroa.0.0.copyload.i.i.i.i52, ptr %6, align 8
  %i.fl = call { ptr, ptr } @_ZNK4mlir6detail10TypedValueINS_9transform28TransformHandleTypeInterfaceEE7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.fm = extractvalue { ptr, ptr } %i.fl, 0      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm8dyn_castIN4mlir9transform28TransformHandleTypeInterfaceES3_EEDcRT0_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit50
  %i.fn = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.fo = icmp eq i8 %i.fn, 0
  br i1 %i.fo, label %bb.y, label %_ZN4llvm8dyn_castIN4mlir9transform28TransformHandleTypeInterfaceES3_EEDcRT0_.exit, !prof !140

bb.y:                                             ; preds = %bb.x
  %i.fp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castIN4mlir9transform28TransformHandleTypeInterfaceES3_EEDcRT0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.369, i64 49), i64 45) #26
  store ptr %i.fq, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4llvm8dyn_castIN4mlir9transform28TransformHandleTypeInterfaceES3_EEDcRT0_.exit

_ZN4llvm8dyn_castIN4mlir9transform28TransformHandleTypeInterfaceES3_EEDcRT0_.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit50, %bb.z, %bb.y, %bb.x
  %.sink = phi ptr [ %i.fm, %bb.z ], [ %i.fm, %bb.x ], [ %i.fm, %bb.y ], [ null, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit50 ]
  %i.fr = load ptr, ptr %1, align 8, !tbaa !145
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sink) #26
  %i.fu = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.bu
  br i1 %i.fv, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm8dyn_castIN4mlir9transform28TransformHandleTypeInterfaceES3_EEDcRT0_.exit
  call void @free(ptr noundef %i.fu) #26
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm8dyn_castIN4mlir9transform28TransformHandleTypeInterfaceES3_EEDcRT0_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6detail39ApplyRegisteredPassOpGenericAdaptorBaseC2ENS0_21ApplyRegisteredPassOpE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = load i32, ptr %i.g, align 4              ; 3 uses
  %i.n = and i32 %i.m, 8388607                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.n to i64
  %i.q = lshr i32 %i.m, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.q, 1
  %i.r = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r
  %i.t = lshr i32 %i.m, 21
  %i.u = and i32 %i.t, 2040
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !84
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.z
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir9transform6detail39ApplyRegisteredPassOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi18, splat (i32 1)
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi18, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !620

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01114.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 %i.e, i32 1
  %i.i = zext i32 %5 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %i.l, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader19 ] ; 2 uses
  %6 = icmp eq i32 %.01114, 1
  %i.k = zext i1 %6 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %i.l = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !621
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4mlir9transform6detail39ApplyRegisteredPassOpGenericAdaptorBase11getPassNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !162
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir9transform6detail39ApplyRegisteredPassOpGenericAdaptorBase14getOptionsAttrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir9transform6detail39ApplyRegisteredPassOpGenericAdaptorBase10getOptionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform28ApplyRegisteredPassOpAdaptorC2ENS0_21ApplyRegisteredPassOpE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !89
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #26
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = load i32, ptr %i.a, align 4              ; 3 uses
  %i.v = and i32 %i.u, 8388607                    ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4mlir9transform35ApplyRegisteredPassOpGenericAdaptorINS_10ValueRangeEEC2INS0_21ApplyRegisteredPassOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = lshr i32 %i.u, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.y, 1
  %i.z = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.z
  %i.ab = lshr i32 %i.u, 21
  %i.ac = and i32 %i.ab, 2040
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !84
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ah
  br label %_ZN4mlir9transform35ApplyRegisteredPassOpGenericAdaptorINS_10ValueRangeEEC2INS0_21ApplyRegisteredPassOpEvEES2_T_.exit

_ZN4mlir9transform35ApplyRegisteredPassOpGenericAdaptorINS_10ValueRangeEEC2INS0_21ApplyRegisteredPassOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.i, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir9transform28ApplyRegisteredPassOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !132
  store ptr @.str.48, ptr %3, align 8, !tbaa !133
  store i8 3, ptr %i.d, align 8, !tbaa !134
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #26
  %i.f = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  %i.g = load ptr, ptr %2, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !119, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !119
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.04.0 = phi i8 [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.04.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform21ApplyRegisteredPassOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !85

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.l, i32 1
  %i.p = zext i32 %4 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.s, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.r = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %i.s = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !623
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform21ApplyRegisteredPassOp24getDynamicOptionsMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
.lr.ph.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir9transform21ApplyRegisteredPassOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !85

bb.a:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir9transform21ApplyRegisteredPassOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir9transform21ApplyRegisteredPassOp27getODSOperandIndexAndLengthEj.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %.lr.ph.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform21ApplyRegisteredPassOp21setPropertiesFromAttrERNS0_6detail39ApplyRegisteredPassOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::DictionaryAttr", align 8 ; 5 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %9, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, i64 noundef %3) #26, !inline_history !0
  %i.e = load ptr, ptr %10, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 3, ptr %8, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str, ptr %i.g, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !117

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !115
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.pr = load ptr, ptr %10, align 8, !tbaa !106
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !119, !range !120, !noundef !121
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !119
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr nonnull @.str.51, i64 7) #26 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %i.w, align 8, !tbaa !98
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i12, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, i64 noundef %3) #26, !inline_history !0
  %i.z = load ptr, ptr %11, align 8, !tbaa !106
  %.not.i.i14 = icmp eq ptr %i.z, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 3, ptr %7, align 8, !tbaa !109
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.52, ptr %i.ab, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 52, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !116
  %.not.i.i.i.i.i16 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i16, label %bb.n, label %bb.m, !prof !117

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !115
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.pr47 = load ptr, ptr %11, align 8, !tbaa !106
  %.not.i.i17 = icmp eq ptr %.pr47, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %i.u) #26
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !116
  %.not.i.i.i.i.i18 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i18, label %bb.q, label %bb.p, !prof !117

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !115
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pr49 = load ptr, ptr %11, align 8, !tbaa !106
  %.not.i19 = icmp eq ptr %.pr49, null
  br i1 %.not.i19, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
end_hunk_1
begin_hunk_2_@_ZN4mlir9transform17CollectMatchingOp5printERNS_12OpAsmPrinterE:bb.a
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 -16
  %.sroa.0.0.i.i.i.i = select i1 %i.dq, ptr null, ptr %i.dr
  %i.ds = zext i32 %i.dp to i64
  store ptr %.sroa.0.0.i.i.i.i, ptr %8, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ds, ptr %i.dt, align 8
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  call void @_ZN4mlir10AsmPrinter19printFunctionalTypeIN4llvm8ArrayRefINS_4TypeEEENS_14ValueTypeRangeINS_11ResultRangeEEEEEvOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.du = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bk
  br i1 %i.dv, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit22
  call void @free(ptr noundef %i.du) #26
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit22, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10AsmPrinter19printFunctionalTypeIN4llvm8ArrayRefINS_4TypeEEENS_14ValueTypeRangeINS_11ResultRangeEEEEEvOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157
  %.not.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 40) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !156
  store i8 40, ptr %i.f, align 1, !tbaa !133
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !180    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !181  ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_ZN4llvm15interleaveCommaINS_8ArrayRefIN4mlir4TypeEEENS2_10AsmPrinterEKS3_EEvRKT_RT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.p = load ptr, ptr %0, align 8, !tbaa !145
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %.sroa.0.0.copyload.i.i.i.i.i) #26, !inline_history !676
  %.not14.i.i.i.i = icmp eq i64 %i.m, 1
  br i1 %.not14.i.i.i.i, label %_ZN4llvm15interleaveCommaINS_8ArrayRefIN4mlir4TypeEEENS2_10AsmPrinterEKS3_EEvRKT_RT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %.013.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm10interleaveINS_8ArrayRefIN4mlir4TypeEEEZNS_15interleaveCommaIS4_NS2_10AsmPrinterEKS3_EEvRKT_RT0_EUlRS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %.013.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i, %_ZZN4llvm10interleaveINS_8ArrayRefIN4mlir4TypeEEEZNS_15interleaveCommaIS4_NS2_10AsmPrinterEKS3_EEvRKT_RT0_EUlRS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i ] ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !145
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !677 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !157
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !156  ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, 2
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull @.str.458, i64 noundef 2) #26 ; 0 uses
  br label %_ZZN4llvm10interleaveINS_8ArrayRefIN4mlir4TypeEEEZNS_15interleaveCommaIS4_NS2_10AsmPrinterEKS3_EEvRKT_RT0_EUlRS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  store i16 8236, ptr %i.z, align 1
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !156
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !156
  br label %_ZZN4llvm10interleaveINS_8ArrayRefIN4mlir4TypeEEEZNS_15interleaveCommaIS4_NS2_10AsmPrinterEKS3_EEvRKT_RT0_EUlRS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i

_ZZN4llvm10interleaveINS_8ArrayRefIN4mlir4TypeEEEZNS_15interleaveCommaIS4_NS2_10AsmPrinterEKS3_EEvRKT_RT0_EUlRS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.copyload.i10.i.i.i.i = load ptr, ptr %.015.i.i.i.i, align 8, !tbaa !123
  %i.ah = load ptr, ptr %0, align 8, !tbaa !145
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %.sroa.0.0.copyload.i10.i.i.i.i) #26, !inline_history !676
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, %i.n
  br i1 %.not.i.i.i.i, label %_ZN4llvm15interleaveCommaINS_8ArrayRefIN4mlir4TypeEEENS2_10AsmPrinterEKS3_EEvRKT_RT0_.exit, label %bb.e, !llvm.loop !678

_ZN4llvm15interleaveCommaINS_8ArrayRefIN4mlir4TypeEEENS2_10AsmPrinterEKS3_EEvRKT_RT0_.exit: ; preds = %_ZZN4llvm10interleaveINS_8ArrayRefIN4mlir4TypeEEEZNS_15interleaveCommaIS4_NS2_10AsmPrinterEKS3_EEvRKT_RT0_EUlRS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i, %_ZN4llvm11raw_ostreamlsEc.exit, %bb.d
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !156 ; 3 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !157
  %.not.i5 = icmp ult ptr %i.ak, %i.al
  br i1 %.not.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15interleaveCommaINS_8ArrayRefIN4mlir4TypeEEENS2_10AsmPrinterEKS3_EEvRKT_RT0_.exit
  %i.am = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 41) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit7

bb.i:                                             ; preds = %_ZN4llvm15interleaveCommaINS_8ArrayRefIN4mlir4TypeEEENS2_10AsmPrinterEKS3_EEvRKT_RT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.an, ptr %i.e, align 8, !tbaa !156
  store i8 41, ptr %i.ak, align 1, !tbaa !133
  br label %_ZN4llvm11raw_ostreamlsEc.exit7

_ZN4llvm11raw_ostreamlsEc.exit7:                  ; preds = %bb.h, %bb.i
  tail call void @_ZN4mlir10AsmPrinter18printArrowTypeListIRNS_14ValueTypeRangeINS_11ResultRangeEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6detail32ForeachMatchOpGenericAdaptorBaseC2ENS0_14ForeachMatchOpE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 17), (24, 56)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.m = load i32, ptr %i.g, align 4              ; 3 uses
  %i.n = and i32 %i.m, 8388607                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.n to i64
  %i.q = lshr i32 %i.m, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.q, 1
  %i.r = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r
  %i.t = lshr i32 %i.m, 21
  %i.u = and i32 %i.t, 2040
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !84
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.z
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir9transform6detail32ForeachMatchOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi18, splat (i32 1)
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi18, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01114.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 %i.e, i32 1
  %i.i = zext i32 %5 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %i.l, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader19 ] ; 2 uses
  %6 = icmp eq i32 %.01114, 1
  %i.k = zext i1 %6 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %i.l = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir9transform6detail32ForeachMatchOpGenericAdaptorBase19getRestrictRootAttrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir9transform6detail32ForeachMatchOpGenericAdaptorBase15getRestrictRootEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir9transform6detail32ForeachMatchOpGenericAdaptorBase21getFlattenResultsAttrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir9transform6detail32ForeachMatchOpGenericAdaptorBase17getFlattenResultsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir9transform6detail32ForeachMatchOpGenericAdaptorBase11getMatchersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !162
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir9transform6detail32ForeachMatchOpGenericAdaptorBase10getActionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !162
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform21ForeachMatchOpAdaptorC2ENS0_14ForeachMatchOpE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 17), (24, 56)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !89
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #26
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %i.u = load i32, ptr %i.a, align 4              ; 3 uses
  %i.v = and i32 %i.u, 8388607                    ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4mlir9transform28ForeachMatchOpGenericAdaptorINS_10ValueRangeEEC2INS0_14ForeachMatchOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = lshr i32 %i.u, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.y, 1
  %i.z = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.z
  %i.ab = lshr i32 %i.u, 21
  %i.ac = and i32 %i.ab, 2040
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !84
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ah
  br label %_ZN4mlir9transform28ForeachMatchOpGenericAdaptorINS_10ValueRangeEEC2INS0_14ForeachMatchOpEvEES2_T_.exit

_ZN4mlir9transform28ForeachMatchOpGenericAdaptorINS_10ValueRangeEEC2INS0_14ForeachMatchOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x i64> %i.i, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !132
  store ptr @.str.67, ptr %3, align 8, !tbaa !133
  store i8 3, ptr %i.e, align 8, !tbaa !134
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #26
  %i.g = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  %i.h = load ptr, ptr %2, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !119, !range !120, !noundef !121
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.i, align 8, !tbaa !119
  br i1 %i.k, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.l) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.am

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !132
  store ptr @.str.68, ptr %5, align 8, !tbaa !133
  store i8 3, ptr %i.p, align 8, !tbaa !134
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #26
  %i.r = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #26
end_hunk_2
begin_hunk_3_@_ZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS_8LocationE:bb.a
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i48 = load ptr, ptr %i.ci, align 8, !tbaa !98
  %.not53.i.i.i.i.i49 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i48, @_ZN4mlir6detail14TypeIDResolverINS_13SymbolRefAttrEvE2idE
  br i1 %.not53.i.i.i.i.i49, label %bb.z, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

bb.z:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit.i.i.i.i.i"
  %i.cj = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 8
  %.val31.i.i.i.i.i50 = load ptr, ptr %i.cj, align 8, !tbaa !162 ; 2 uses
  %.not.i.i33.i.i.i.i.i51 = icmp eq ptr %.val31.i.i.i.i.i50, null
  br i1 %.not.i.i33.i.i.i.i.i51, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit152", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit35.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit35.i.i.i.i.i": ; preds = %bb.z
  %i.ck = load ptr, ptr %.val31.i.i.i.i.i50, align 8, !tbaa !96
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i34.i.i.i.i.i52 = load ptr, ptr %i.cl, align 8, !tbaa !98
  %.not54.i.i.i.i.i53 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i34.i.i.i.i.i52, @_ZN4mlir6detail14TypeIDResolverINS_13SymbolRefAttrEvE2idE
  br i1 %.not54.i.i.i.i.i53, label %bb.aa, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit"

bb.aa:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit35.i.i.i.i.i"
  %i.cm = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 16
  %.val30.i.i.i.i.i54 = load ptr, ptr %i.cm, align 8, !tbaa !162 ; 2 uses
  %.not.i.i36.i.i.i.i.i55 = icmp eq ptr %.val30.i.i.i.i.i54, null
  br i1 %.not.i.i36.i.i.i.i.i55, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit154", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit38.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit38.i.i.i.i.i": ; preds = %bb.aa
  %i.cn = load ptr, ptr %.val30.i.i.i.i.i54, align 8, !tbaa !96
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i37.i.i.i.i.i56 = load ptr, ptr %i.co, align 8, !tbaa !98
  %.not55.i.i.i.i.i57 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i37.i.i.i.i.i56, @_ZN4mlir6detail14TypeIDResolverINS_13SymbolRefAttrEvE2idE
  br i1 %.not55.i.i.i.i.i57, label %bb.ab, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit148"

bb.ab:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit38.i.i.i.i.i"
  %i.cp = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 24
  %.val.i.i.i.i.i58 = load ptr, ptr %i.cp, align 8, !tbaa !162 ; 2 uses
  %.not.i.i39.i.i.i.i.i59 = icmp eq ptr %.val.i.i.i.i.i58, null
  br i1 %.not.i.i39.i.i.i.i.i59, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit156", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit41.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit41.i.i.i.i.i": ; preds = %bb.ab
  %i.cq = load ptr, ptr %.val.i.i.i.i.i58, align 8, !tbaa !96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i40.i.i.i.i.i60 = load ptr, ptr %i.cr, align 8, !tbaa !98
  %.not56.i.i.i.i.i61 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i40.i.i.i.i.i60, @_ZN4mlir6detail14TypeIDResolverINS_13SymbolRefAttrEvE2idE
  br i1 %.not56.i.i.i.i.i61, label %bb.ac, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit150"

bb.ac:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit41.i.i.i.i.i"
  %i.cs = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 32
  %i.ct = add nsw i64 %.079.i.i.i.i.i44, -1
  %i.cu = icmp sgt i64 %.079.i.i.i.i.i44, 1
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i43, label %._crit_edge.loopexit.i.i.i.i.i62, !llvm.loop !682

._crit_edge.loopexit.i.i.i.i.i62:                 ; preds = %bb.ac
  %.pre.i.i.i.i.i63 = ptrtoint ptr %scevgep.i.i.i.i.i42 to i64
  %.pre87.i.i.i.i.i64 = sub i64 %i.cb, %.pre.i.i.i.i.i63
  br label %._crit_edge.i.i.i.i.i23

._crit_edge.i.i.i.i.i23:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i62, %bb.y
  %.pre-phi88.i.i.i.i.i24 = phi i64 [ %.pre87.i.i.i.i.i64, %._crit_edge.loopexit.i.i.i.i.i62 ], [ %i.cd, %bb.y ]
  %.029.lcssa.i.i.i.i.i25 = phi ptr [ %scevgep.i.i.i.i.i42, %._crit_edge.loopexit.i.i.i.i.i62 ], [ %i.bw, %bb.y ] ; 6 uses
  %i.cv = ashr exact i64 %.pre-phi88.i.i.i.i.i24, 3
  switch i64 %i.cv, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.thread" [
    i64 3, label %bb.ad
    i64 2, label %bb.af
    i64 1, label %bb.ah
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i23
  %.029.val.i.i.i.i.i37 = load ptr, ptr %.029.lcssa.i.i.i.i.i25, align 8, !tbaa !162 ; 2 uses
  %.not.i.i42.i.i.i.i.i38 = icmp eq ptr %.029.val.i.i.i.i.i37, null
  br i1 %.not.i.i42.i.i.i.i.i38, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i": ; preds = %bb.ad
  %i.cw = load ptr, ptr %.029.val.i.i.i.i.i37, align 8, !tbaa !96
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i43.i.i.i.i.i39 = load ptr, ptr %i.cx, align 8, !tbaa !98
  %.not.i.i.i.i.i40 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i43.i.i.i.i.i39, @_ZN4mlir6detail14TypeIDResolverINS_13SymbolRefAttrEvE2idE
  br i1 %.not.i.i.i.i.i40, label %bb.ae, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

bb.ae:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i"
  %i.cy = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i25, i64 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i.i.i.i.i23
  %.1.i.i.i.i.i32 = phi ptr [ %i.cy, %bb.ae ], [ %.029.lcssa.i.i.i.i.i25, %._crit_edge.i.i.i.i.i23 ] ; 4 uses
  %.1.val.i.i.i.i.i33 = load ptr, ptr %.1.i.i.i.i.i32, align 8, !tbaa !162 ; 2 uses
  %.not.i.i45.i.i.i.i.i34 = icmp eq ptr %.1.val.i.i.i.i.i33, null
  br i1 %.not.i.i45.i.i.i.i.i34, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i": ; preds = %bb.af
  %i.cz = load ptr, ptr %.1.val.i.i.i.i.i33, align 8, !tbaa !96
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i46.i.i.i.i.i35 = load ptr, ptr %i.da, align 8, !tbaa !98
  %.not51.i.i.i.i.i36 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i46.i.i.i.i.i35, @_ZN4mlir6detail14TypeIDResolverINS_13SymbolRefAttrEvE2idE
  br i1 %.not51.i.i.i.i.i36, label %bb.ag, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

bb.ag:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i"
  %i.db = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i32, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i.i.i.i.i23
  %.2.i.i.i.i.i26 = phi ptr [ %i.db, %bb.ag ], [ %.029.lcssa.i.i.i.i.i25, %._crit_edge.i.i.i.i.i23 ] ; 3 uses
  %.2.val.i.i.i.i.i27 = load ptr, ptr %.2.i.i.i.i.i26, align 8, !tbaa !162 ; 2 uses
  %.not.i.i48.i.i.i.i.i28 = icmp eq ptr %.2.val.i.i.i.i.i27, null
  br i1 %.not.i.i48.i.i.i.i.i28, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i": ; preds = %bb.ah
  %i.dc = load ptr, ptr %.2.val.i.i.i.i.i27, align 8, !tbaa !96
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i49.i.i.i.i.i29 = load ptr, ptr %i.dd, align 8, !tbaa !98
  %.not52.i.i.i.i.i30 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i49.i.i.i.i.i29, @_ZN4mlir6detail14TypeIDResolverINS_13SymbolRefAttrEvE2idE
  br i1 %.not52.i.i.i.i.i30, label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.thread", label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.thread": ; preds = %._crit_edge.i.i.i.i.i23, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.am

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit35.i.i.i.i.i"
  %i.de = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 8
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit148": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit38.i.i.i.i.i"
  %i.df = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 16
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit150": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit41.i.i.i.i.i"
  %i.dg = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 24
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit152": ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 8
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit154": ; preds = %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 16
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit156": ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %.02978.i.i.i.i.i45, i64 24
  br label %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"

"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i43, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit.i.i.i.i.i", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit148", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit150", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit152", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit154", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit156", %bb.ad, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i", %bb.af, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i", %bb.ah, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i"
  %.028.i.i.i.i.i31 = phi ptr [ %.1.i.i.i.i.i32, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit47.i.i.i.i.i" ], [ %.2.i.i.i.i.i26, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit50.i.i.i.i.i" ], [ %.1.i.i.i.i.i32, %bb.af ], [ %.029.lcssa.i.i.i.i.i25, %bb.ad ], [ %.029.lcssa.i.i.i.i.i25, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit44.i.i.i.i.i" ], [ %.2.i.i.i.i.i26, %bb.ah ], [ %i.dh, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit152" ], [ %i.dj, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit156" ], [ %i.df, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit148" ], [ %i.de, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.di, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit154" ], [ %i.dg, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.loopexit.split.loop.exit150" ], [ %.02978.i.i.i.i.i45, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4mlir9transform21ForeachMatchOpAdaptor6verifyENS2_8LocationEE3$_1EclIPKNS2_9AttributeEEEbT_.exit.i.i.i.i.i" ], [ %.02978.i.i.i.i.i45, %.lr.ph.i.i.i.i.i43 ]
  %.not74 = icmp eq ptr %i.ca, %.028.i.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %.not74, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.dl, align 1, !tbaa !132
  store ptr @.str.72, ptr %11, align 8, !tbaa !133
  store i8 3, ptr %i.dk, align 8, !tbaa !134
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %11) #26
  %i.dm = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  %i.dn = load ptr, ptr %10, align 8, !tbaa !106
  %.not.i65 = icmp eq ptr %i.dn, null
  br i1 %.not.i65, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !119, !range !120, !noundef !121
  %i.dq = trunc nuw i8 %i.dp to i1
  store i8 0, ptr %i.do, align 8, !tbaa !119
  br i1 %i.dq, label %bb.al, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit66

bb.al:                                            ; preds = %bb.ak
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.dr) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit66

_ZN4mlir18InFlightDiagnosticD2Ev.exit66:          ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.am

bb.am:                                            ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit15, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit", %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.thread", %_ZN4mlir18InFlightDiagnosticD2Ev.exit66, %_ZN4mlir18InFlightDiagnosticD2Ev.exit21, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.09.2 = phi i8 [ %i.g, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.r, %_ZN4mlir18InFlightDiagnosticD2Ev.exit15 ], [ %i.bp, %_ZN4mlir18InFlightDiagnosticD2Ev.exit21 ], [ %i.dm, %_ZN4mlir18InFlightDiagnosticD2Ev.exit66 ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit.thread" ], [ 1, %"_ZN4llvm6all_ofIN4mlir9ArrayAttrEZNS1_9transform21ForeachMatchOpAdaptor6verifyENS1_8LocationEE3$_1EEbOT_T0_.exit" ]
  ret i8 %.sroa.09.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform14ForeachMatchOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !683

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !85

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.l, i32 1
  %i.p = zext i32 %4 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.s, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.r = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %i.s = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !684
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform14ForeachMatchOp25getForwardedInputsMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
.lr.ph.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir9transform14ForeachMatchOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !85

bb.a:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir9transform14ForeachMatchOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir9transform14ForeachMatchOp27getODSOperandIndexAndLengthEj.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %.lr.ph.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform14ForeachMatchOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !93   ; 2 uses
  %i.h = add i32 %i.g, -1
  %i.i = add i32 %i.g, -2
  %i.j = mul nsw i32 %i.i, %.0.lcssa
  %i.k = add i32 %i.j, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.h, i32 1
  %i.l = zext i32 %4 to i64
  %i.m = shl nuw i64 %i.l, 32
  %.sroa.0.0.insert.ext = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.m, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.o, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.n = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.n      ; 2 uses
  %i.o = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !686
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform14ForeachMatchOp21setPropertiesFromAttrERNS0_6detail32ForeachMatchOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DictionaryAttr", align 8 ; 7 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %16 = alloca %"class.mlir::Attribute", align 8  ; 5 uses
  %17 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %11, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, i64 noundef %3) #26, !inline_history !0
  %i.e = load ptr, ptr %12, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i32 3, ptr %10, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str, ptr %i.g, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !117

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !115
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %.pr = load ptr, ptr %12, align 8, !tbaa !106
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !119, !range !120, !noundef !121
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !119
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.az

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr nonnull @.str.73, i64 7) #26 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i26 = load ptr, ptr %i.w, align 8, !tbaa !98
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i26, @_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, i64 noundef %3) #26, !inline_history !0
  %i.z = load ptr, ptr %13, align 8, !tbaa !106
  %.not.i.i28 = icmp eq ptr %i.z, null
  br i1 %.not.i.i28, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 3, ptr %9, align 8, !tbaa !109
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.74, ptr %i.ab, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 52, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i29, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !116
  %.not.i.i.i.i.i30 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i30, label %bb.n, label %bb.m, !prof !117

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !115
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %.pr88 = load ptr, ptr %13, align 8, !tbaa !106
  %.not.i.i31 = icmp eq ptr %.pr88, null
  br i1 %.not.i.i31, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull %i.u) #26
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !116
  %.not.i.i.i.i.i32 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i32, label %bb.q, label %bb.p, !prof !117

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !115
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.pr90 = load ptr, ptr %13, align 8, !tbaa !106
  %.not.i33 = icmp eq ptr %.pr90, null
  br i1 %.not.i33, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread: ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRA53_KcEEOS0_OT_.exit, %bb.r, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !119, !range !120, !noundef !121
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !119
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
end_hunk_3
begin_hunk_4_@_ZN4mlir9transform14ForeachMatchOp20verifyInvariantsImplEv:bb.a
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !132
  store ptr @.str.82, ptr %8, align 8, !tbaa !133
  store i8 3, ptr %i.x, align 8, !tbaa !134
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #26
  %i.z = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #26
  %i.aa = load ptr, ptr %7, align 8, !tbaa !106
  %.not.i60 = icmp eq ptr %i.aa, null
  br i1 %.not.i60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !119, !range !120, !noundef !121
  %i.ad = trunc nuw i8 %i.ac to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !119
  br i1 %i.ad, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit61

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ae) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit61

_ZN4mlir18InFlightDiagnosticD2Ev.exit61:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread143

bb.k:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.036.0.copyload = load ptr, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.a, ptr %4, align 8, !tbaa !196
  %i.ag = ptrtoint ptr %4 to i64
  %i.ah = call fastcc i8 @_ZL46__mlir_ods_local_attr_constraint_TransformOps3N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.036.0.copyload, ptr nonnull @.str.79, i64 13, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL46__mlir_ods_local_attr_constraint_TransformOps3PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %.thread143

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.aj, ptr %3, align 8, !tbaa !196
  %i.ak = ptrtoint ptr %3 to i64
  %i.al = call fastcc i8 @_ZL46__mlir_ods_local_attr_constraint_TransformOps3N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.037.0.copyload, ptr nonnull @.str.75, i64 15, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL46__mlir_ods_local_attr_constraint_TransformOps3PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.m, label %.thread143

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.an, ptr %2, align 8, !tbaa !261
  %i.ao = ptrtoint ptr %2 to i64
  %i.ap = call fastcc i8 @_ZL46__mlir_ods_local_attr_constraint_TransformOps7N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.v, ptr nonnull @.str.77, i64 8, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL46__mlir_ods_local_attr_constraint_TransformOps7PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %.thread143

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.ar, ptr %1, align 8, !tbaa !261
  %i.as = ptrtoint ptr %1 to i64
  %i.at = call fastcc i8 @_ZL46__mlir_ods_local_attr_constraint_TransformOps7N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.i, ptr nonnull @.str.73, i64 7, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL46__mlir_ods_local_attr_constraint_TransformOps7PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4mlir9transform14ForeachMatchOp14getODSOperandsEj.exit, label %.thread143

_ZN4mlir9transform14ForeachMatchOp14getODSOperandsEj.exit: ; preds = %bb.n
  %i.av = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !136
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.az, align 8
  %i.ba = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = call fastcc i8 @_ZL46__mlir_ods_local_type_constraint_TransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.av, ptr %i.bb, ptr nonnull @.str.3, i64 7, i32 noundef 0)
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.o, label %.thread143

bb.o:                                             ; preds = %_ZN4mlir9transform14ForeachMatchOp14getODSOperandsEj.exit
  %i.be = call { ptr, i64 } @_ZN4mlir9transform14ForeachMatchOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1) ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 1      ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.be, 0
  %.not161171 = icmp eq i64 %i.bf, 0
  br i1 %.not161171, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.255173 = phi i32 [ %i.bp, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %.sroa.4109.0172 = phi i64 [ %i.bq, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %.sroa.4109.0172
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.0.0.copyload.i.i.i72 = load ptr, ptr %i.bi, align 8, !tbaa !136
  %i.bj = load ptr, ptr %0, align 8, !tbaa !92
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i72, i64 8
  %.0.copyload.i.i.i.i.i73 = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i73, -8
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = call fastcc i8 @_ZL46__mlir_ods_local_type_constraint_TransformOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bj, ptr %i.bm, ptr nonnull @.str.3, i64 7, i32 noundef %.255173)
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.p, label %.thread143

bb.p:                                             ; preds = %.lr.ph
  %i.bp = add i32 %.255173, 1
  %i.bq = add nuw nsw i64 %.sroa.4109.0172, 1     ; 2 uses
  %.not161 = icmp eq i64 %i.bq, %i.bf
  br i1 %.not161, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %bb.o
  %i.br = call { ptr, i64 } @_ZN4mlir9transform14ForeachMatchOp13getODSResultsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 1      ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.br, 0
  %.not162174 = icmp eq i64 %i.bs, 0
  br i1 %.not162174, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %._crit_edge, %bb.q
  %.sroa.497.0175 = phi i64 [ %i.cb, %bb.q ], [ 0, %._crit_edge ] ; 3 uses
  %indvars193 = trunc i64 %.sroa.497.0175 to i32
  %i.bu = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 noundef %.sroa.497.0175) #26
  %i.bv = load ptr, ptr %0, align 8, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.0.copyload.i.i.i.i.i78 = load i64, ptr %i.bw, align 8
  %i.bx = and i64 %.0.copyload.i.i.i.i.i78, -8
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = call fastcc i8 @_ZL46__mlir_ods_local_type_constraint_TransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bv, ptr %i.by, ptr nonnull @.str.4, i64 6, i32 noundef %indvars193)
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.q, label %.thread143

bb.q:                                             ; preds = %.lr.ph178
  %i.cb = add nuw i64 %.sroa.497.0175, 1          ; 3 uses
  %.not162 = icmp eq i64 %i.cb, %i.bs
  br i1 %.not162, label %._crit_edge179.loopexit, label %.lr.ph178

._crit_edge179.loopexit:                          ; preds = %bb.q
  %indvars = trunc i64 %i.cb to i32
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %._crit_edge179.loopexit, %._crit_edge
  %.050.lcssa = phi i32 [ 0, %._crit_edge ], [ %indvars, %._crit_edge179.loopexit ]
  %i.cc = call { ptr, i64 } @_ZN4mlir9transform14ForeachMatchOp13getODSResultsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1) ; 2 uses
  %i.cd = extractvalue { ptr, i64 } %i.cc, 1      ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cc, 0
  %.not163180 = icmp eq i64 %i.cd, 0
  br i1 %.not163180, label %.thread143, label %.lr.ph184

.lr.ph184:                                        ; preds = %._crit_edge179, %bb.r
  %.252182 = phi i32 [ %i.cm, %bb.r ], [ %.050.lcssa, %._crit_edge179 ] ; 2 uses
  %.sroa.4.0181 = phi i64 [ %i.cn, %bb.r ], [ 0, %._crit_edge179 ] ; 2 uses
  %i.cf = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 noundef %.sroa.4.0181) #26
  %i.cg = load ptr, ptr %0, align 8, !tbaa !92
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.0.copyload.i.i.i.i.i83 = load i64, ptr %i.ch, align 8
  %i.ci = and i64 %.0.copyload.i.i.i.i.i83, -8
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = call fastcc i8 @_ZL46__mlir_ods_local_type_constraint_TransformOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.cg, ptr %i.cj, ptr nonnull @.str.4, i64 6, i32 noundef %.252182)
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.r, label %.thread143

bb.r:                                             ; preds = %.lr.ph184
  %i.cm = add i32 %.252182, 1
  %i.cn = add nuw nsw i64 %.sroa.4.0181, 1        ; 2 uses
  %.not163 = icmp eq i64 %i.cn, %i.cd
  br i1 %.not163, label %.thread143, label %.lr.ph184

.thread143:                                       ; preds = %.lr.ph, %.lr.ph178, %bb.r, %.lr.ph184, %_ZN4mlir9transform14ForeachMatchOp14getODSOperandsEj.exit, %._crit_edge179, %_ZN4mlir18InFlightDiagnosticD2Ev.exit61, %bb.k, %bb.l, %bb.m, %bb.n, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.049.16 = phi i8 [ %i.m, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.z, %_ZN4mlir18InFlightDiagnosticD2Ev.exit61 ], [ 1, %._crit_edge179 ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %_ZN4mlir9transform14ForeachMatchOp14getODSOperandsEj.exit ], [ 0, %.lr.ph184 ], [ 0, %bb.n ], [ 0, %.lr.ph178 ], [ 1, %bb.r ], [ 0, %.lr.ph ]
  ret i8 %.sroa.049.16
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4mlir9transform14ForeachMatchOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi27 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi27, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi27, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !688

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader28

.lr.ph.i.preheader28:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.014.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.d, %middle.block ]
  %.01013.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation13operand_beginEv.exit, label %bb.b, !prof !85

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader28, %.lr.ph.i
  %.014.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader28 ]
  %.01013.i = phi i32 [ %i.j, %.lr.ph.i ], [ %.01013.i.ph, %.lr.ph.i.preheader28 ] ; 2 uses
  %3 = icmp eq i32 %.01013.i, 1
  %i.i = zext i1 %3 to i32
  %spec.select.i = add nuw nsw i32 %.014.i, %i.i  ; 2 uses
  %i.j = add nuw i32 %.01013.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.j, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !689

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88
  br label %_ZN4mlir9Operation13operand_beginEv.exit

_ZN4mlir9Operation13operand_beginEv.exit:         ; preds = %._crit_edge.i, %bb.b
  %i.o = phi i32 [ %i.l, %bb.b ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.n, %bb.b ], [ null, %._crit_edge.i ]
  %4 = add i32 %i.o, -2
  %5 = mul nsw i32 %4, %.0.lcssa.i
  %i.p = add i32 %5, %1                           ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.p to i64  ; 2 uses
  %6 = icmp eq i32 %1, 1
  %i.q = add i32 %i.o, -1
  %7 = select i1 %6, i32 %i.q, i32 1
  %.narrow = add i32 %i.p, %7
  %i.r = zext i32 %.narrow to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i, i64 %.sroa.0.0.insert.ext.i
  %i.t = sub nsw i64 %i.r, %.sroa.0.0.insert.ext.i
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.s, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.t, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4mlir9transform14ForeachMatchOp13getODSResultsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN4mlir9transform14ForeachMatchOp26getODSResultIndexAndLengthEj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi25 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi25, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi25, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !690

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %_ZN4mlir9transform14ForeachMatchOp26getODSResultIndexAndLengthEj.exit, label %.lr.ph.i.preheader26

.lr.ph.i.preheader26:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.014.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.d, %middle.block ]
  %.01013.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader26, %.lr.ph.i
  %.014.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader26 ]
  %.01013.i = phi i32 [ %i.f, %.lr.ph.i ], [ %.01013.i.ph, %.lr.ph.i.preheader26 ] ; 2 uses
  %3 = icmp eq i32 %.01013.i, 1
  %i.e = zext i1 %3 to i32
  %spec.select.i = add nuw nsw i32 %.014.i, %i.e  ; 2 uses
  %i.f = add nuw i32 %.01013.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.f, %1
  br i1 %exitcond.not.i, label %_ZN4mlir9transform14ForeachMatchOp26getODSResultIndexAndLengthEj.exit, label %.lr.ph.i, !llvm.loop !691

_ZN4mlir9transform14ForeachMatchOp26getODSResultIndexAndLengthEj.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !93   ; 3 uses
  %i.j = add i32 %i.i, -2
  %i.k = mul nsw i32 %i.j, %.0.lcssa.i
  %i.l = add i32 %i.k, %1                         ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.l to i64  ; 2 uses
  %i.m = icmp eq i32 %i.i, 0
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -16 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.m, ptr null, ptr %i.n
  %i.o = icmp eq i32 %i.l, 0
  br i1 %i.o, label %_ZN4mlir11ResultRangeCI2N4llvm6detail27indexed_accessor_range_baseIS0_PNS_6detail12OpResultImplENS_8OpResultES7_S7_EEENS3_IS0_S6_S7_S7_S7_E8iteratorES9_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir9transform14ForeachMatchOp26getODSResultIndexAndLengthEj.exit
  %i.p = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %.sroa.0.0.insert.ext.i) #26
  br label %_ZN4mlir11ResultRangeCI2N4llvm6detail27indexed_accessor_range_baseIS0_PNS_6detail12OpResultImplENS_8OpResultES7_S7_EEENS3_IS0_S6_S7_S7_S7_E8iteratorES9_.exit

_ZN4mlir11ResultRangeCI2N4llvm6detail27indexed_accessor_range_baseIS0_PNS_6detail12OpResultImplENS_8OpResultES7_S7_EEENS3_IS0_S6_S7_S7_S7_E8iteratorES9_.exit: ; preds = %_ZN4mlir9transform14ForeachMatchOp26getODSResultIndexAndLengthEj.exit, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %.sroa.0.0.i.i, %_ZN4mlir9transform14ForeachMatchOp26getODSResultIndexAndLengthEj.exit ]
  %.not16.i = icmp eq i32 %1, 1
  %i.r = add i32 %i.i, -1
  %narrow = select i1 %.not16.i, i32 %i.r, i32 1
  %.narrow = add i32 %i.l, %narrow
  %i.s = zext i32 %.narrow to i64
  %i.t = sub nsw i64 %i.s, %.sroa.0.0.insert.ext.i
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.q, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.t, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform14ForeachMatchOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir9transform14ForeachMatchOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir9transform14ForeachMatchOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir9transform14ForeachMatchOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::ArrayAttr", align 8   ; 4 uses
  %7 = alloca %"class.mlir::ArrayAttr", align 8   ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %10 = alloca %"class.mlir::ArrayAttr", align 8  ; 4 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SmallPtrSet", align 8 ; 10 uses
  %14 = alloca %"class.mlir::ArrayAttr", align 8  ; 5 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !162
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %6, align 8
  %i.h = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.j = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not.i.i.i.i9 = icmp ugt i32 %i.l, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.n = lshr i32 %i.l, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i10 = and i32 %i.n, 1
  %i.o = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i10 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.o
  %.sroa.0.0.copyload.i.i.i11 = load ptr, ptr %i.p, align 8, !tbaa !162
  store ptr %.sroa.0.0.copyload.i.i.i11, ptr %7, align 8
  %i.q = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  %i.r = extractvalue { ptr, i64 } %i.q, 1
  %.not = icmp eq i64 %i.i, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 1, ptr %i.s, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.t, align 1, !tbaa !132
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %9) #26
  %i.u = load ptr, ptr %8, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA49_KcEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 3, ptr %5, align 8, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.282, ptr %i.w, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 48, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !115  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !116
  %.not.i.i.i.i.i = icmp ult i32 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !117

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA49_KcEERS0_OT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ab = zext i32 %i.y to i64
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !118
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !115
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.x, align 8, !tbaa !115
  br label %_ZN4mlir10Diagnostic6appendIRA49_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA49_KcEERS0_OT_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA49_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA49_KcEEOS0_OT_.exit: ; preds = %bb.b, %_ZN4mlir10Diagnostic6appendIRA49_KcEERS0_OT_.exit.i.i
  %i.ag = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #26
  %i.ah = load ptr, ptr %8, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA49_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA49_KcEEOS0_OT_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !119, !range !120, !noundef !121
  %i.ak = trunc nuw i8 %i.aj to i1
  store i8 0, ptr %i.ai, align 8, !tbaa !119
  br i1 %i.ak, label %bb.h, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.al) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ag

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.am = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %.not.i.i.i.i12 = icmp ugt i32 %i.ao, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.ap = lshr i32 %i.ao, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i13 = and i32 %i.ap, 1
  %i.aq = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i13 to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %.sroa.0.0.copyload.i.i.i14 = load ptr, ptr %i.as, align 8, !tbaa !162
  store ptr %.sroa.0.0.copyload.i.i.i14, ptr %10, align 8
  %i.at = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %i.au = extractvalue { ptr, i64 } %i.at, 1
  %i.av = icmp eq i64 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %i.av, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.aw, align 8, !tbaa !134
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ax, align 1, !tbaa !132
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %12) #26
  %i.ay = load ptr, ptr %11, align 8, !tbaa !106
  %.not.i.i15 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i15, label %_ZNO4mlir18InFlightDiagnosticlsIRA40_KcEEOS0_OT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 3, ptr %4, align 8, !tbaa !109
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.283, ptr %i.ba, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 39, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i16, align 8, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !115 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !116
  %.not.i.i.i.i.i17 = icmp ult i32 %i.bc, %i.be
  br i1 %.not.i.i.i.i.i17, label %bb.m, label %bb.l, !prof !117
end_hunk_4
begin_hunk_5_@_ZN4mlir9transform7PrintOp5printERNS_12OpAsmPrinterE:bb.a
  %i.ao = and i32 %i.an, 8388608
  %.not.i.i.i.i9 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i9, label %_ZN4mlir9transform7PrintOp9getTargetEv.exit13.thread, label %_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i10, !prof !85

_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i10: ; preds = %_ZN4mlir9transform7PrintOp9getTargetEv.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !89
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN4mlir9transform7PrintOp9getTargetEv.exit13.thread, label %_ZN4mlir9transform7PrintOp9getTargetEv.exit13

_ZN4mlir9transform7PrintOp9getTargetEv.exit13:    ; preds = %_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i10
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.0.0.copyload.i.i.i.i11 = load ptr, ptr %i.au, align 8, !tbaa !136
  %.not41 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i11, null
  br i1 %.not41, label %_ZN4mlir9transform7PrintOp9getTargetEv.exit13.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9transform7PrintOp9getTargetEv.exit13
  %i.av = load ptr, ptr %1, align 8, !tbaa !145
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !6 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !156 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !157
  %.not.i.i14 = icmp ult ptr %i.ba, %i.bc
  br i1 %.not.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15

bb.g:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.be, ptr %i.az, align 8, !tbaa !156
  store i8 32, ptr %i.ba, align 1, !tbaa !133
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15: ; preds = %bb.f, %bb.g
  %i.bf = load ptr, ptr %1, align 8, !tbaa !145
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef nonnull align 8 dereferenceable(48) ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !157
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !156 ; 2 uses
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull @.str.6, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15
  store i8 58, ptr %i.bm, align 1
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !156
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !156
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.h, %bb.i
  %i.br = load ptr, ptr %1, align 8, !tbaa !145
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !6 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !156 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !157
  %.not.i.i16 = icmp ult ptr %i.bw, %i.by
  br i1 %.not.i.i16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit17

bb.k:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !156
  store i8 32, ptr %i.bw, align 1, !tbaa !133
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit17

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit17: ; preds = %bb.j, %bb.k
  %i.cb = load ptr, ptr %0, align 8, !tbaa !92    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = and i32 %i.cd, 8388608
  %.not.i.i.i.i18 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i18, label %_ZN4mlir9transform7PrintOp9getTargetEv.exit22.thread, label %_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i19, !prof !85

_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i19: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit17
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 68
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !89
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_ZN4mlir9transform7PrintOp9getTargetEv.exit22.thread, label %_ZN4mlir9transform7PrintOp9getTargetEv.exit22

_ZN4mlir9transform7PrintOp9getTargetEv.exit22.thread: ; preds = %_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i19, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  br label %_ZN4mlirlsINS_12OpAsmPrinterENS_4TypeEvEERT_S4_N4llvm8ArrayRefIT0_EE.exit

_ZN4mlir9transform7PrintOp9getTargetEv.exit22:    ; preds = %_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !88
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sroa.0.0.copyload.i.i.i.i20 = load ptr, ptr %i.ck, align 8, !tbaa !136 ; 2 uses
  %.not42 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i20, null
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  br i1 %.not42, label %_ZN4mlirlsINS_12OpAsmPrinterENS_4TypeEvEERT_S4_N4llvm8ArrayRefIT0_EE.exit, label %_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i24

_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i24: ; preds = %_ZN4mlir9transform7PrintOp9getTargetEv.exit22
  store ptr %.sroa.0.0.copyload.i.i.i.i20, ptr %4, align 8
  %i.cl = call { ptr, ptr } @_ZNK4mlir6detail10TypedValueINS_9transform28TransformHandleTypeInterfaceEE7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.cm = extractvalue { ptr, ptr } %i.cl, 0
  %i.cn = load ptr, ptr %1, align 8, !tbaa !145
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.cm) #26, !inline_history !9
  br label %_ZN4mlirlsINS_12OpAsmPrinterENS_4TypeEvEERT_S4_N4llvm8ArrayRefIT0_EE.exit

_ZN4mlirlsINS_12OpAsmPrinterENS_4TypeEvEERT_S4_N4llvm8ArrayRefIT0_EE.exit: ; preds = %_ZN4mlir9transform7PrintOp9getTargetEv.exit22, %_ZN4mlir9transform7PrintOp9getTargetEv.exit22.thread, %_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4mlir9transform7PrintOp9getTargetEv.exit13.thread

_ZN4mlir9transform7PrintOp9getTargetEv.exit13.thread: ; preds = %_ZN4mlir9transform7PrintOp9getTargetEv.exit.thread, %_ZN4mlir9transform7PrintOp14getODSOperandsEj.exit.i10, %_ZN4mlirlsINS_12OpAsmPrinterENS_4TypeEvEERT_S4_N4llvm8ArrayRefIT0_EE.exit, %_ZN4mlir9transform7PrintOp9getTargetEv.exit13
  %i.cq = load ptr, ptr %3, align 8, !tbaa !118   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.y
  br i1 %i.cr, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4mlir9transform7PrintOp9getTargetEv.exit13.thread
  call void @free(ptr noundef %i.cq) #26
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlir9transform7PrintOp9getTargetEv.exit13.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6detail29ReplicateOpGenericAdaptorBaseC2ENS0_11ReplicateOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = and i32 %i.g, 8388607                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.l, 1
  %i.m = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.m
  %i.o = lshr i32 %i.g, 21
  %i.p = and i32 %i.o, 2040
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !84
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir9transform6detail29ReplicateOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi18, splat (i32 1)
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi18, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !937

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01114.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 %i.e, i32 1
  %i.i = zext i32 %5 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %i.l, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader19 ] ; 2 uses
  %6 = icmp eq i32 %.01114, 1
  %i.k = zext i1 %6 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %i.l = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !938
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform18ReplicateOpAdaptorC2ENS0_11ReplicateOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !89
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #26
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !68
  %i.o = load i32, ptr %i.a, align 4              ; 3 uses
  %i.p = and i32 %i.o, 8388607                    ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4mlir9transform25ReplicateOpGenericAdaptorINS_10ValueRangeEEC2INS0_11ReplicateOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = lshr i32 %i.o, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.t, 1
  %i.u = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.u
  %i.w = lshr i32 %i.o, 21
  %i.x = and i32 %i.w, 2040
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !84
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  br label %_ZN4mlir9transform25ReplicateOpGenericAdaptorINS_10ValueRangeEEC2INS0_11ReplicateOpEvEES2_T_.exit

_ZN4mlir9transform25ReplicateOpGenericAdaptorINS_10ValueRangeEEC2INS0_11ReplicateOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #26
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir9transform18ReplicateOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform11ReplicateOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !939

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !85

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.l, i32 1
  %i.p = zext i32 %4 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.s, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.r = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %i.s = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !940
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform11ReplicateOp17getHandlesMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
.lr.ph.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir9transform11ReplicateOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !85

bb.a:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir9transform11ReplicateOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir9transform11ReplicateOp27getODSOperandIndexAndLengthEj.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %.lr.ph.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir9transform11ReplicateOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
._crit_edge:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !93   ; 2 uses
  %i.d = mul i32 %i.c, %1
  %.sroa.2.0.insert.ext = zext i32 %i.c to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform11ReplicateOp21setPropertiesFromAttrERNS_15EmptyPropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !98
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, i64 noundef %3) #26, !inline_history !0
  %i.c = load ptr, ptr %5, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 3, ptr %4, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %i.e, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !116
  %.not.i.i.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !117

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !115
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !115
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pr = load ptr, ptr %5, align 8, !tbaa !106
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !119, !range !120, !noundef !121
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !119
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir9transform11ReplicateOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #3 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir9transform11ReplicateOp21computePropertiesHashERKNS_15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.2479", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #26
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir9transform11ReplicateOp15getInherentAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir9transform11ReplicateOp15setInherentAttrERNS_15EmptyPropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir9transform11ReplicateOp21populateInherentAttrsEPNS_11MLIRContextERKNS_15EmptyPropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir9transform11ReplicateOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform11ReplicateOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueENS_10ValueRangeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %4, ptr %6, align 8
  %i.a = ptrtoint ptr %6 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #26
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = add i64 %3, %i.e                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 8) #26
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.a ], [ %.pre28.i.i, %bb.b ]
  %i.l = phi i32 [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i
end_hunk_5
