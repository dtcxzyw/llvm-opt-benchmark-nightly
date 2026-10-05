Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorLinearize?download=true
inline.NumInlined: 4682
inline.NumDeleted: 2527
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZNSt17_Function_handlerIFN4llvm11SmallVectorIN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_9TypeRangeENS2_10ValueRangeENS2_8LocationENS2_4TypeEEZNKS2_13TypeConverter25wrapTargetMaterializationISA_ZNKSC_25wrapTargetMaterializationISA_RZNS2_6vector26populateForVectorLinearizeERSC_RNS2_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_S6_T_S8_S9_EESt8functionISB_EE4typeEOSM_EUlS6_SA_S8_S9_SA_E_EENSL_IXsr3stdE14is_invocable_vISM_S6_SN_S8_S9_SA_EESP_E4typeESS_EUlS6_S7_S8_S9_SA_E_E9_M_invokeERKSt9_Any_dataS6_OS7_OS8_OS9_OSA_":bb.a
  br i1 %i.l, label %bb.e, label %"_ZZNK4mlir13TypeConverter25wrapTargetMaterializationINS_4TypeERZNS_6vector26populateForVectorLinearizeERS0_RNS_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS_9OpBuilderET_NS_10ValueRangeENS_8LocationEEESt8functionIFN4llvm11SmallVectorINS_5ValueELj6EEESC_NS_9TypeRangeESE_SF_S2_EEE4typeEOSA_ENKUlSC_S2_SE_SF_S2_E_clESC_S2_SE_SF_S2_.exit.thread.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i6.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.r = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i6.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.r, label %bb.f, label %"_ZZNK4mlir13TypeConverter25wrapTargetMaterializationINS_4TypeERZNS_6vector26populateForVectorLinearizeERS0_RNS_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS_9OpBuilderET_NS_10ValueRangeENS_8LocationEEESt8functionIFN4llvm11SmallVectorINS_5ValueELj6EEESC_NS_9TypeRangeESE_SF_S2_EEE4typeEOSA_ENKUlSC_S2_SE_SF_S2_E_clESC_S2_SE_SF_S2_.exit.thread.i.i.i"

"_ZZNK4mlir13TypeConverter25wrapTargetMaterializationINS_4TypeERZNS_6vector26populateForVectorLinearizeERS0_RNS_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS_9OpBuilderET_NS_10ValueRangeENS_8LocationEEESt8functionIFN4llvm11SmallVectorINS_5ValueELj6EEESC_NS_9TypeRangeESE_SF_S2_EEE4typeEOSA_ENKUlSC_S2_SE_SF_S2_E_clESC_S2_SE_SF_S2_.exit.thread.i.i.i": ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !583
  br label %"_ZSt10__invoke_rIN4llvm11SmallVectorIN4mlir5ValueELj6EEERZNKS2_13TypeConverter25wrapTargetMaterializationINS2_4TypeEZNKS5_25wrapTargetMaterializationIS7_RZNS2_6vector26populateForVectorLinearizeERS5_RNS2_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS2_9OpBuilderET_NS2_10ValueRangeENS2_8LocationEEESt8functionIFS4_SI_NS2_9TypeRangeESK_SL_S7_EEE4typeEOSG_EUlSI_S7_SK_SL_S7_E_EENSF_IXsr3stdE14is_invocable_vISG_SI_SJ_SK_SL_S7_EESP_E4typeESS_EUlSI_SN_SK_SL_S7_E_JSI_SN_SK_SL_S7_EENSF_IX16is_invocable_r_vISJ_SG_DpT1_EESJ_E4typeESS_DpOSY_.exit"

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @_ZN4mlir6vector11ShapeCastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.val9, ptr nonnull %i.h, ptr nonnull %i.i) #19
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !583
  %i.u = load i32, ptr %i.e, align 8, !tbaa !29, !alias.scope !583 ; 2 uses
  %i.v = load i32, ptr %i.f, align 4, !tbaa !30, !alias.scope !583
  %.not.i.i.i.i = icmp ult i32 %i.u, %i.v
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g, !prof !31

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %i.t)
  br label %"_ZSt10__invoke_rIN4llvm11SmallVectorIN4mlir5ValueELj6EEERZNKS2_13TypeConverter25wrapTargetMaterializationINS2_4TypeEZNKS5_25wrapTargetMaterializationIS7_RZNS2_6vector26populateForVectorLinearizeERS5_RNS2_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS2_9OpBuilderET_NS2_10ValueRangeENS2_8LocationEEESt8functionIFS4_SI_NS2_9TypeRangeESK_SL_S7_EEE4typeEOSG_EUlSI_S7_SK_SL_S7_E_EENSF_IXsr3stdE14is_invocable_vISG_SI_SJ_SK_SL_S7_EESP_E4typeESS_EUlSI_SN_SK_SL_S7_E_JSI_SN_SK_SL_S7_EENSF_IX16is_invocable_r_vISJ_SG_DpT1_EESJ_E4typeESS_DpOSY_.exit"

bb.h:                                             ; preds = %bb.f
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !32, !alias.scope !583
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  store ptr %i.t, ptr %i.y, align 1
  %i.z = load i32, ptr %i.e, align 8, !tbaa !29, !alias.scope !583
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.e, align 8, !tbaa !29, !alias.scope !583
  br label %"_ZSt10__invoke_rIN4llvm11SmallVectorIN4mlir5ValueELj6EEERZNKS2_13TypeConverter25wrapTargetMaterializationINS2_4TypeEZNKS5_25wrapTargetMaterializationIS7_RZNS2_6vector26populateForVectorLinearizeERS5_RNS2_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS2_9OpBuilderET_NS2_10ValueRangeENS2_8LocationEEESt8functionIFS4_SI_NS2_9TypeRangeESK_SL_S7_EEE4typeEOSG_EUlSI_S7_SK_SL_S7_E_EENSF_IXsr3stdE14is_invocable_vISG_SI_SJ_SK_SL_S7_EESP_E4typeESS_EUlSI_SN_SK_SL_S7_E_JSI_SN_SK_SL_S7_EENSF_IX16is_invocable_r_vISJ_SG_DpT1_EESJ_E4typeESS_DpOSY_.exit"

"_ZSt10__invoke_rIN4llvm11SmallVectorIN4mlir5ValueELj6EEERZNKS2_13TypeConverter25wrapTargetMaterializationINS2_4TypeEZNKS5_25wrapTargetMaterializationIS7_RZNS2_6vector26populateForVectorLinearizeERS5_RNS2_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS2_9OpBuilderET_NS2_10ValueRangeENS2_8LocationEEESt8functionIFS4_SI_NS2_9TypeRangeESK_SL_S7_EEE4typeEOSG_EUlSI_S7_SK_SL_S7_E_EENSF_IXsr3stdE14is_invocable_vISG_SI_SJ_SK_SL_S7_EESP_E4typeESS_EUlSI_SN_SK_SL_S7_E_JSI_SN_SK_SL_S7_EENSF_IX16is_invocable_r_vISJ_SG_DpT1_EESJ_E4typeESS_DpOSY_.exit": ; preds = %bb.a, %bb.b, %"_ZZNK4mlir13TypeConverter25wrapTargetMaterializationINS_4TypeERZNS_6vector26populateForVectorLinearizeERS0_RNS_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS_9OpBuilderET_NS_10ValueRangeENS_8LocationEEESt8functionIFN4llvm11SmallVectorINS_5ValueELj6EEESC_NS_9TypeRangeESE_SF_S2_EEE4typeEOSA_ENKUlSC_S2_SE_SF_S2_E_clESC_S2_SE_SF_S2_.exit.thread.i.i.i", %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN4llvm11SmallVectorIN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_9TypeRangeENS2_10ValueRangeENS2_8LocationENS2_4TypeEEZNKS2_13TypeConverter25wrapTargetMaterializationISA_ZNKSC_25wrapTargetMaterializationISA_RZNS2_6vector26populateForVectorLinearizeERSC_RNS2_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_S6_T_S8_S9_EESt8functionISB_EE4typeEOSM_EUlS6_SA_S8_S9_SA_E_EENSL_IXsr3stdE14is_invocable_vISM_S6_SN_S8_S9_SA_EESP_E4typeESS_EUlS6_S7_S8_S9_SA_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter25wrapTargetMaterializationINS1_4TypeEZNKS2_25wrapTargetMaterializationIS4_RZNS1_6vector26populateForVectorLinearizeERS2_RNS1_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS1_9OpBuilderET_NS1_10ValueRangeENS1_8LocationEEESt8functionIFN4llvm11SmallVectorINS1_5ValueELj6EEESF_NS1_9TypeRangeESH_SI_S4_EEE4typeEOSD_EUlSF_S4_SH_SI_S4_E_EENSC_IXsr3stdE14is_invocable_vISD_SF_SG_SH_SI_S4_EESQ_E4typeEST_EUlSF_SO_SH_SI_S4_E_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !35
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter25wrapTargetMaterializationINS1_4TypeEZNKS2_25wrapTargetMaterializationIS4_RZNS1_6vector26populateForVectorLinearizeERS2_RNS1_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS1_9OpBuilderET_NS1_10ValueRangeENS1_8LocationEEESt8functionIFN4llvm11SmallVectorINS1_5ValueELj6EEESF_NS1_9TypeRangeESH_SI_S4_EEE4typeEOSD_EUlSF_S4_SH_SI_S4_E_EENSC_IXsr3stdE14is_invocable_vISD_SF_SG_SH_SI_S4_EESQ_E4typeEST_EUlSF_SO_SH_SI_S4_E_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !124
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter25wrapTargetMaterializationINS1_4TypeEZNKS2_25wrapTargetMaterializationIS4_RZNS1_6vector26populateForVectorLinearizeERS2_RNS1_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS1_9OpBuilderET_NS1_10ValueRangeENS1_8LocationEEESt8functionIFN4llvm11SmallVectorINS1_5ValueELj6EEESF_NS1_9TypeRangeESH_SI_S4_EEE4typeEOSD_EUlSF_S4_SH_SI_S4_E_EENSC_IXsr3stdE14is_invocable_vISD_SF_SG_SH_SI_S4_EESQ_E4typeEST_EUlSF_SO_SH_SI_S4_E_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i8, ptr %1, align 8
  store i8 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter25wrapTargetMaterializationINS1_4TypeEZNKS2_25wrapTargetMaterializationIS4_RZNS1_6vector26populateForVectorLinearizeERS2_RNS1_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS1_9OpBuilderET_NS1_10ValueRangeENS1_8LocationEEESt8functionIFN4llvm11SmallVectorINS1_5ValueELj6EEESF_NS1_9TypeRangeESH_SI_S4_EEE4typeEOSD_EUlSF_S4_SH_SI_S4_E_EENSC_IXsr3stdE14is_invocable_vISD_SF_SG_SH_SI_S4_EESQ_E4typeEST_EUlSF_SO_SH_SI_S4_E_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter25wrapTargetMaterializationINS1_4TypeEZNKS2_25wrapTargetMaterializationIS4_RZNS1_6vector26populateForVectorLinearizeERS2_RNS1_16ConversionTargetEE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_RNS1_9OpBuilderET_NS1_10ValueRangeENS1_8LocationEEESt8functionIFN4llvm11SmallVectorINS1_5ValueELj6EEESF_NS1_9TypeRangeESH_SI_S4_EEE4typeEOSD_EUlSF_S4_SH_SI_S4_E_EENSC_IXsr3stdE14is_invocable_vISD_SF_SG_SH_SI_S4_EESQ_E4typeEST_EUlSF_SO_SH_SI_S4_E_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !32
  %i.g = load i32, ptr %i.a, align 8, !tbaa !29
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !29
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 256, 258) i16 @"_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0E9_M_invokeERKSt9_Any_dataOS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::vector::ExtractOp", align 8 ; 6 uses
  %3 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  %4 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  %5 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  %6 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  %7 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !35
  %.val2 = load ptr, ptr %1, align 8, !tbaa !586  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val2, i64 48 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !587 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !601
  br label %_ZN4mlir9Operation10getDialectEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %7, align 8
  %i.g = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  br label %_ZN4mlir9Operation10getDialectEv.exit.i.i.i.i

_ZN4mlir9Operation10getDialectEv.exit.i.i.i.i:    ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !93
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i:        ; preds = %_ZN4mlir9Operation10getDialectEv.exit.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !94 ; 2 uses
  %i.j = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.k = xor i32 %i.j, 1952671094
  %i.l = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i32
  %i.o = xor i32 %i.n, 29295
  %i.p = or i32 %i.k, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge.i.i.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i, %_ZN4mlir9Operation10getDialectEv.exit.i.i.i.i
  %i.t = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit.i.i.i.i, !prof !68

bb.d:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i
  %i.v = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 49), i64 34) #19
  store ptr %i.w, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit.i.i.i.i

_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !70
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !602  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i) #19, !inline_history !584
  br i1 %i.ab, label %.critedge.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit.i.i.i.i
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12VectorizableEEEbv.exit.i.i.i.i, !prof !68

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i8.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i8.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12VectorizableEEEbv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 49), i64 34) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12VectorizableEEEbv.exit.i.i.i.i

_ZN4mlir9Operation8hasTraitINS_7OpTrait12VectorizableEEEbv.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.01.0.copyload.i.i.i.i.i7.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !70
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !602 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr %.sroa.01.0.copyload.i.i.i.i.i7.i.i.i.i) #19, !inline_history !585
  br i1 %i.ak, label %.critedge.i.i.i.i, label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0JPNS2_9OperationEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.critedge.i.i.i.i:                                ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12VectorizableEEEbv.exit.i.i.i.i, %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit.i.i.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !587
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !129 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, @_ZN4mlir6detail14TypeIDResolverINS_6vector11ShapeCastOpEvE2idE
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0JPNS2_9OperationEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_0EERS6_OT_.exit.i.i.i.i"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_0EERS6_OT_.exit.i.i.i.i": ; preds = %.critedge.i.i.i.i
  %.not111.i.i.i.i = icmp eq ptr %i.am, @_ZN4mlir6detail14TypeIDResolverINS_6vector21ExtractStridedSliceOpEvE2idE
  br i1 %.not111.i.i.i.i, label %bb.i, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_1EERS6_OT_.exit.i.i.i.i"

bb.i:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_0EERS6_OT_.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.an = getelementptr inbounds i8, ptr %.val2, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %6, align 8
  %i.aq = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19 ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 4 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ashr i64 %i.as, 2                       ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.ax = and i64 %i.as, -4
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ar, i64 %i.ax
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.047.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bg, %bb.n ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.n ] ; 9 uses
  %i.ay = load i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i"

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !120, !range !121, !noundef !122
  %.not4.i.i.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not4.i.i.i.i.i.i.i.i, label %bb.l, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit"

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !120, !range !121, !noundef !122
  %.not5.i.i.i.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %bb.m, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit79"

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !120, !range !121, !noundef !122
  %.not6.i.i.i.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not6.i.i.i.i.i.i.i.i, label %bb.n, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit81"

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.bg = add nsw i64 %.047.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bh = icmp sgt i64 %.047.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.j, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.n, %bb.i
  %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.i ], [ %scevgep.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bi = sub i64 %i.au, %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i
  switch i64 %i.bi, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.thread.i.i.i" [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not7.i.i.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not7.i.i.i.i.i.i.i.i, label %bb.p, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.p ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bl = load i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not8.i.i.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %bb.q, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i"

bb.q:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.q ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bn = load i8, ptr %.2.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not9.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.thread.i.i.i", label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.thread.i.i.i": ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit79": ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 2
  br label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit81": ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i.i.i.i, i64 3
  br label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i": ; preds = %bb.j, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit79", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit81", %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o
  %.028.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %.2.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bq, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit81" ], [ %i.bo, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit" ], [ %i.bp, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit79" ], [ %.02946.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.028.i.i.i.i.i.i.i.i.i.i.i.i, %i.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %.not.i.i.i.i.i.i.i, label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i, label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0JPNS2_9OperationEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_1EERS6_OT_.exit.i.i.i.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_0EERS6_OT_.exit.i.i.i.i"
  %.not112.i.i.i.i = icmp eq ptr %i.am, @_ZN4mlir6detail14TypeIDResolverINS_6vector20InsertStridedSliceOpEvE2idE
  br i1 %.not112.i.i.i.i, label %bb.r, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_2EERS6_OT_.exit.i.i.i.i"

bb.r:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_1EERS6_OT_.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.br = getelementptr inbounds i8, ptr %.val2, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i16.i.i.i.i = load i64, ptr %i.br, align 8
  %i.bs = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i16.i.i.i.i, -8
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bt, ptr %5, align 8
  %i.bu = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19 ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0      ; 4 uses
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1      ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ashr i64 %i.bw, 2                       ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i.i.i29.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i17.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i29.i.i.i.i:                 ; preds = %bb.r
  %i.cb = and i64 %i.bw, -4
  %scevgep.i.i.i.i.i.i.i.i30.i.i.i.i = getelementptr i8, ptr %i.bv, i64 %i.cb
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i.i29.i.i.i.i
  %.047.i.i.i.i.i.i.i.i31.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.ck, %bb.w ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i32.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.cj, %bb.w ] ; 9 uses
  %i.cc = load i8, ptr %.02946.i.i.i.i.i.i.i.i32.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not.i.i.i.i33.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i33.i.i.i.i, label %bb.t, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i32.i.i.i.i, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !120, !range !121, !noundef !122
  %.not4.i.i.i.i34.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not4.i.i.i.i34.i.i.i.i, label %bb.u, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit"

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i32.i.i.i.i, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !120, !range !121, !noundef !122
  %.not5.i.i.i.i35.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not5.i.i.i.i35.i.i.i.i, label %bb.v, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit71"

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i32.i.i.i.i, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !120, !range !121, !noundef !122
  %.not6.i.i.i.i36.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not6.i.i.i.i36.i.i.i.i, label %bb.w, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit73"

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i32.i.i.i.i, i64 4
  %i.ck = add nsw i64 %.047.i.i.i.i.i.i.i.i31.i.i.i.i, -1
  %i.cl = icmp sgt i64 %.047.i.i.i.i.i.i.i.i31.i.i.i.i, 1
  br i1 %i.cl, label %bb.s, label %._crit_edge.i.i.i.i.i.i.i.i17.i.i.i.i, !llvm.loop !9

._crit_edge.i.i.i.i.i.i.i.i17.i.i.i.i:            ; preds = %bb.w, %bb.r
  %.029.lcssa.i.i.i.i.i.i.i.i18.i.i.i.i = phi ptr [ %i.bv, %bb.r ], [ %scevgep.i.i.i.i.i.i.i.i30.i.i.i.i, %bb.w ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i19.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i18.i.i.i.i to i64
  %i.cm = sub i64 %i.by, %.pre-phi.i.i.i.i.i.i.i.i19.i.i.i.i
  switch i64 %i.cm, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.thread.i.i.i" [
    i64 3, label %bb.x
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i25.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i20.i.i.i.i
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i17.i.i.i.i
  %i.cn = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i18.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not7.i.i.i.i28.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not7.i.i.i.i28.i.i.i.i, label %bb.y, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i"

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i18.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i25.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i25.i.i.i.i: ; preds = %bb.y, %._crit_edge.i.i.i.i.i.i.i.i17.i.i.i.i
  %.1.i.i.i.i.i.i.i.i26.i.i.i.i = phi ptr [ %i.co, %bb.y ], [ %.029.lcssa.i.i.i.i.i.i.i.i18.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i17.i.i.i.i ] ; 3 uses
  %i.cp = load i8, ptr %.1.i.i.i.i.i.i.i.i26.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not8.i.i.i.i27.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not8.i.i.i.i27.i.i.i.i, label %bb.z, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i"

bb.z:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i25.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i26.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i20.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i.i.i20.i.i.i.i: ; preds = %bb.z, %._crit_edge.i.i.i.i.i.i.i.i17.i.i.i.i
  %.2.i.i.i.i.i.i.i.i21.i.i.i.i = phi ptr [ %i.cq, %bb.z ], [ %.029.lcssa.i.i.i.i.i.i.i.i18.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i17.i.i.i.i ] ; 2 uses
  %i.cr = load i8, ptr %.2.i.i.i.i.i.i.i.i21.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not9.i.i.i.i22.i.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not9.i.i.i.i22.i.i.i.i, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.thread.i.i.i", label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.thread.i.i.i": ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i20.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i17.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i32.i.i.i.i, i64 1
  br label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit71": ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i32.i.i.i.i, i64 2
  br label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit73": ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i32.i.i.i.i, i64 3
  br label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i": ; preds = %bb.s, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit71", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit73", %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i20.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i25.i.i.i.i, %bb.x
  %.028.i.i.i.i.i.i.i.i23.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i26.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i25.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i18.i.i.i.i, %bb.x ], [ %.2.i.i.i.i.i.i.i.i21.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i20.i.i.i.i ], [ %i.cu, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit73" ], [ %i.cs, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit" ], [ %i.ct, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit71" ], [ %.02946.i.i.i.i.i.i.i.i32.i.i.i.i, %bb.s ]
  %.not.i.i.i24.i.i.i.i = icmp eq ptr %.028.i.i.i.i.i.i.i.i23.i.i.i.i, %i.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %.not.i.i.i24.i.i.i.i, label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i, label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0JPNS2_9OperationEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_2EERS6_OT_.exit.i.i.i.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_1EERS6_OT_.exit.i.i.i.i"
  %.not113.i.i.i.i = icmp eq ptr %i.am, @_ZN4mlir6detail14TypeIDResolverINS_6vector8InsertOpEvE2idE
  br i1 %.not113.i.i.i.i, label %bb.aa, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_3EERS6_OT_.exit.i.i.i.i"

bb.aa:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_2EERS6_OT_.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cv = getelementptr inbounds i8, ptr %.val2, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i40.i.i.i.i = load i64, ptr %i.cv, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i40.i.i.i.i, -8
  %i.cx = inttoptr i64 %i.cw to ptr
  store ptr %i.cx, ptr %4, align 8
  %i.cy = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19 ; 2 uses
  %i.cz = extractvalue { ptr, i64 } %i.cy, 0      ; 4 uses
  %i.da = extractvalue { ptr, i64 } %i.cy, 1      ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ashr i64 %i.da, 2                       ; 2 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i.i.i53.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i41.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i53.i.i.i.i:                 ; preds = %bb.aa
  %i.df = and i64 %i.da, -4
  %scevgep.i.i.i.i.i.i.i.i54.i.i.i.i = getelementptr i8, ptr %i.cz, i64 %i.df
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i53.i.i.i.i
  %.047.i.i.i.i.i.i.i.i55.i.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i53.i.i.i.i ], [ %i.do, %bb.af ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i56.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i53.i.i.i.i ], [ %i.dn, %bb.af ] ; 9 uses
  %i.dg = load i8, ptr %.02946.i.i.i.i.i.i.i.i56.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not.i.i.i.i57.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i57.i.i.i.i, label %bb.ac, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i"

bb.ac:                                            ; preds = %bb.ab
  %i.dh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i56.i.i.i.i, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !120, !range !121, !noundef !122
  %.not4.i.i.i.i58.i.i.i.i = icmp eq i8 %i.di, 0
  br i1 %.not4.i.i.i.i58.i.i.i.i, label %bb.ad, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit"

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i56.i.i.i.i, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !120, !range !121, !noundef !122
  %.not5.i.i.i.i59.i.i.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not5.i.i.i.i59.i.i.i.i, label %bb.ae, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit63"

bb.ae:                                            ; preds = %bb.ad
  %i.dl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i56.i.i.i.i, i64 3
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !120, !range !121, !noundef !122
  %.not6.i.i.i.i60.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not6.i.i.i.i60.i.i.i.i, label %bb.af, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit65"

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i56.i.i.i.i, i64 4
  %i.do = add nsw i64 %.047.i.i.i.i.i.i.i.i55.i.i.i.i, -1
  %i.dp = icmp sgt i64 %.047.i.i.i.i.i.i.i.i55.i.i.i.i, 1
  br i1 %i.dp, label %bb.ab, label %._crit_edge.i.i.i.i.i.i.i.i41.i.i.i.i, !llvm.loop !9

._crit_edge.i.i.i.i.i.i.i.i41.i.i.i.i:            ; preds = %bb.af, %bb.aa
  %.029.lcssa.i.i.i.i.i.i.i.i42.i.i.i.i = phi ptr [ %i.cz, %bb.aa ], [ %scevgep.i.i.i.i.i.i.i.i54.i.i.i.i, %bb.af ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i43.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i42.i.i.i.i to i64
  %i.dq = sub i64 %i.dc, %.pre-phi.i.i.i.i.i.i.i.i43.i.i.i.i
  switch i64 %i.dq, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.thread.i.i.i" [
    i64 3, label %bb.ag
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i49.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i44.i.i.i.i
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i41.i.i.i.i
  %i.dr = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i42.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not7.i.i.i.i52.i.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not7.i.i.i.i52.i.i.i.i, label %bb.ah, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i"

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i42.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i49.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i49.i.i.i.i: ; preds = %bb.ah, %._crit_edge.i.i.i.i.i.i.i.i41.i.i.i.i
  %.1.i.i.i.i.i.i.i.i50.i.i.i.i = phi ptr [ %i.ds, %bb.ah ], [ %.029.lcssa.i.i.i.i.i.i.i.i42.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i41.i.i.i.i ] ; 3 uses
  %i.dt = load i8, ptr %.1.i.i.i.i.i.i.i.i50.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not8.i.i.i.i51.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not8.i.i.i.i51.i.i.i.i, label %bb.ai, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i"

bb.ai:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i49.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i50.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i44.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i.i.i44.i.i.i.i: ; preds = %bb.ai, %._crit_edge.i.i.i.i.i.i.i.i41.i.i.i.i
  %.2.i.i.i.i.i.i.i.i45.i.i.i.i = phi ptr [ %i.du, %bb.ai ], [ %.029.lcssa.i.i.i.i.i.i.i.i42.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i41.i.i.i.i ] ; 2 uses
  %i.dv = load i8, ptr %.2.i.i.i.i.i.i.i.i45.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not9.i.i.i.i46.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not9.i.i.i.i46.i.i.i.i, label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.thread.i.i.i", label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.thread.i.i.i": ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i44.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i41.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i56.i.i.i.i, i64 1
  br label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit63": ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i56.i.i.i.i, i64 2
  br label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit65": ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i56.i.i.i.i, i64 3
  br label %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i"

"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i": ; preds = %bb.ab, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit63", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit65", %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i44.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i49.i.i.i.i, %bb.ag
  %.028.i.i.i.i.i.i.i.i47.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i50.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i49.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i42.i.i.i.i, %bb.ag ], [ %.2.i.i.i.i.i.i.i.i45.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i44.i.i.i.i ], [ %i.dy, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit65" ], [ %i.dw, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit" ], [ %i.dx, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i.loopexit.split.loop.exit63" ], [ %.02946.i.i.i.i.i.i.i.i56.i.i.i.i, %bb.ab ]
  %.not.i.i.i48.i.i.i.i = icmp eq ptr %.028.i.i.i.i.i.i.i.i47.i.i.i.i, %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.not.i.i.i48.i.i.i.i, label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i, label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0JPNS2_9OperationEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_3EERS6_OT_.exit.i.i.i.i": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_2EERS6_OT_.exit.i.i.i.i"
  %.not114.i.i.i.i = icmp eq ptr %i.am, @_ZN4mlir6detail14TypeIDResolverINS_6vector9ExtractOpEvE2idE
  br i1 %.not114.i.i.i.i, label %bb.aj, label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i

bb.aj:                                            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_3EERS6_OT_.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.val2, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.dz = call i64 @_ZN4mlir6vector9ExtractOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #19
  %i.ea = load ptr, ptr %2, align 8, !tbaa !133
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !136
  %i.ed = and i64 %i.dz, 4294967295
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !138
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i64.i.i.i.i = load i64, ptr %i.eg, align 8
  %i.eh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i64.i.i.i.i, -8
  %i.ei = inttoptr i64 %i.eh to ptr
  store ptr %i.ei, ptr %3, align 8
  %i.ej = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19 ; 2 uses
  %i.ek = extractvalue { ptr, i64 } %i.ej, 0      ; 4 uses
  %i.el = extractvalue { ptr, i64 } %i.ej, 1      ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el ; 2 uses
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ashr i64 %i.el, 2                       ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i65.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i:                 ; preds = %bb.aj
  %i.eq = and i64 %i.el, -4
  %scevgep.i.i.i.i.i.i.i.i78.i.i.i.i = getelementptr i8, ptr %i.ek, i64 %i.eq
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i
  %.047.i.i.i.i.i.i.i.i79.i.i.i.i = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i ], [ %i.ez, %bb.ao ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i80.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i ], [ %i.ey, %bb.ao ] ; 9 uses
  %i.er = load i8, ptr %.02946.i.i.i.i.i.i.i.i80.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not.i.i.i.i81.i.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i81.i.i.i.i, label %bb.al, label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i80.i.i.i.i, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !120, !range !121, !noundef !122
  %.not4.i.i.i.i82.i.i.i.i = icmp eq i8 %i.et, 0
  br i1 %.not4.i.i.i.i82.i.i.i.i, label %bb.am, label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit57

bb.am:                                            ; preds = %bb.al
  %i.eu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i80.i.i.i.i, i64 2
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !120, !range !121, !noundef !122
  %.not5.i.i.i.i83.i.i.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not5.i.i.i.i83.i.i.i.i, label %bb.an, label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit55

bb.an:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i80.i.i.i.i, i64 3
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !120, !range !121, !noundef !122
  %.not6.i.i.i.i84.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not6.i.i.i.i84.i.i.i.i, label %bb.ao, label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit

bb.ao:                                            ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i80.i.i.i.i, i64 4
  %i.ez = add nsw i64 %.047.i.i.i.i.i.i.i.i79.i.i.i.i, -1
  %i.fa = icmp sgt i64 %.047.i.i.i.i.i.i.i.i79.i.i.i.i, 1
  br i1 %i.fa, label %bb.ak, label %._crit_edge.i.i.i.i.i.i.i.i65.i.i.i.i, !llvm.loop !9

._crit_edge.i.i.i.i.i.i.i.i65.i.i.i.i:            ; preds = %bb.ao, %bb.aj
  %.029.lcssa.i.i.i.i.i.i.i.i66.i.i.i.i = phi ptr [ %i.ek, %bb.aj ], [ %scevgep.i.i.i.i.i.i.i.i78.i.i.i.i, %bb.ao ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i67.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i66.i.i.i.i to i64
  %i.fb = sub i64 %i.en, %.pre-phi.i.i.i.i.i.i.i.i67.i.i.i.i
  switch i64 %i.fb, label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread7.i.i.i [
    i64 3, label %bb.ap
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i73.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i68.i.i.i.i
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i65.i.i.i.i
  %i.fc = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i66.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not7.i.i.i.i76.i.i.i.i = icmp eq i8 %i.fc, 0
  br i1 %.not7.i.i.i.i76.i.i.i.i, label %bb.aq, label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fd = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i66.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i73.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i73.i.i.i.i: ; preds = %bb.aq, %._crit_edge.i.i.i.i.i.i.i.i65.i.i.i.i
  %.1.i.i.i.i.i.i.i.i74.i.i.i.i = phi ptr [ %i.fd, %bb.aq ], [ %.029.lcssa.i.i.i.i.i.i.i.i66.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i65.i.i.i.i ] ; 3 uses
  %i.fe = load i8, ptr %.1.i.i.i.i.i.i.i.i74.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not8.i.i.i.i75.i.i.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not8.i.i.i.i75.i.i.i.i, label %bb.ar, label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i

bb.ar:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i73.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i74.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i68.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i.i.i68.i.i.i.i: ; preds = %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i65.i.i.i.i
  %.2.i.i.i.i.i.i.i.i69.i.i.i.i = phi ptr [ %i.ff, %bb.ar ], [ %.029.lcssa.i.i.i.i.i.i.i.i66.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i65.i.i.i.i ] ; 2 uses
  %i.fg = load i8, ptr %.2.i.i.i.i.i.i.i.i69.i.i.i.i, align 1, !tbaa !120, !range !121, !noundef !122
  %.not9.i.i.i.i70.i.i.i.i = icmp eq i8 %i.fg, 0
  br i1 %.not9.i.i.i.i70.i.i.i.i, label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread7.i.i.i, label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i

_ZL14isLinearizablePN4mlir9OperationE.exit.thread7.i.i.i: ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i68.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i65.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i

_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.an
  %i.fh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i80.i.i.i.i, i64 3
  br label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i

_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit55: ; preds = %bb.am
  %i.fi = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i80.i.i.i.i, i64 2
  br label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i

_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit57: ; preds = %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i80.i.i.i.i, i64 1
  br label %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i

_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i: ; preds = %bb.ak, %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit, %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit55, %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit57, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i68.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i73.i.i.i.i, %bb.ap
  %.028.i.i.i.i.i.i.i.i71.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i74.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i73.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i66.i.i.i.i, %bb.ap ], [ %.2.i.i.i.i.i.i.i.i69.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i68.i.i.i.i ], [ %i.fj, %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit57 ], [ %i.fh, %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit ], [ %i.fi, %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i.loopexit.split.loop.exit55 ], [ %.02946.i.i.i.i.i.i.i.i80.i.i.i.i, %bb.ak ]
  %.not.i.i.i72.i.i.i.i = icmp eq ptr %.028.i.i.i.i.i.i.i.i71.i.i.i.i, %i.em
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not.i.i.i72.i.i.i.i, label %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i, label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0JPNS2_9OperationEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i: ; preds = %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i, %_ZL14isLinearizablePN4mlir9OperationE.exit.thread7.i.i.i, %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZL14isLinearizableS5_E3$_3EERS6_OT_.exit.i.i.i.i", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.thread.i.i.i", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.thread.i.i.i", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.thread.i.i.i"
  %i.fk = call noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(512) %.val, ptr noundef %.val2) #19
  %i.fl = zext i1 %i.fk to i16
  %i.fm = or disjoint i16 %i.fl, 256
  br label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0JPNS2_9OperationEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZSt10__invoke_rISt8optionalIbERZN4mlir6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0JPNS2_9OperationEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12VectorizableEEEbv.exit.i.i.i.i, %.critedge.i.i.i.i, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i", %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i", %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i, %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i
  %.sroa.0.0.i.i.i = phi i16 [ %i.fm, %_ZL14isLinearizablePN4mlir9OperationE.exit.thread5.i.i.i ], [ 257, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_2clENS_6vector20InsertStridedSliceOpE.exit.i.i.i.i.i.i" ], [ 257, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_3clENS_6vector8InsertOpE.exit.i.i.i.i.i.i" ], [ 257, %"_ZZL14isLinearizablePN4mlir9OperationEENK3$_1clENS_6vector21ExtractStridedSliceOpE.exit.i.i.i.i.i.i" ], [ 257, %_ZL14isLinearizablePN4mlir9OperationE.exit.i.i.i ], [ 257, %_ZN4mlir9Operation8hasTraitINS_7OpTrait12VectorizableEEEbv.exit.i.i.i.i ], [ 257, %.critedge.i.i.i.i ]
  ret i16 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_6vector26populateForVectorLinearizeERNS2_13TypeConverterERNS2_16ConversionTargetEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4mlir6vector26populateForVectorLinearizeERNS1_13TypeConverterERNS1_16ConversionTargetEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %.val, ptr %0, align 8, !tbaa !35
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir6vector26populateForVectorLinearizeERNS1_13TypeConverterERNS1_16ConversionTargetEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !124
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir6vector26populateForVectorLinearizeERNS1_13TypeConverterERNS1_16ConversionTargetEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20 ; 2 uses
  tail call void @_ZN4mlir13TypeConverterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(512) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %.val5)
  store ptr %i.a, ptr %0, align 8, !tbaa !35
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir6vector26populateForVectorLinearizeERNS1_13TypeConverterERNS1_16ConversionTargetEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !35 ; 3 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4mlir6vector26populateForVectorLinearizeERNS1_13TypeConverterERNS1_16ConversionTargetEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4mlir13TypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(508) dereferenceable(512) %.val6.i) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 512) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir6vector26populateForVectorLinearizeERNS1_13TypeConverterERNS1_16ConversionTargetEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4mlir6vector26populateForVectorLinearizeERNS1_13TypeConverterERNS1_16ConversionTargetEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK4mlir13TypeConverter7isLegalEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(508), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir6vector9ExtractOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121LinearizeConstantLikeD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #19
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
end_hunk_0
