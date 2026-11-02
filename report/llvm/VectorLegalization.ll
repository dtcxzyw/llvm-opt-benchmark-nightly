Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorLegalization?download=true
inline.NumInlined: 5602
inline.NumDeleted: 3286
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt17_Function_handlerIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEZNKS5_13TypeConverter12wrapCallbackIS6_ZNSD_12wrapCallbackIS6_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS6_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionISC_EE4typeEOSK_EUlS6_SB_E_EENSJ_IXaasr3stdE14is_invocable_vISK_SL_SB_Esr3stdE12is_base_of_vIS6_SL_EESN_E4typeESQ_EUlS8_SB_E_E9_M_invokeERKSt9_Any_dataOS8_SB_:bb.a
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_ZSt10__invoke_rISt8optionalIN4llvm13LogicalResultEERZNK4mlir13TypeConverter12wrapCallbackINS4_4TypeEZNS5_12wrapCallbackIS7_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS7_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionIFS3_NS1_12PointerUnionIJS7_NS4_5ValueEEEERNS1_15SmallVectorImplIS7_EEEEE4typeEOSD_EUlS7_SL_E_EENSC_IXaasr3stdE14is_invocable_vISD_SE_SL_Esr3stdE12is_base_of_vIS7_SE_EESN_E4typeESQ_EUlSI_SL_E_JSI_SL_EENSC_IX16is_invocable_r_vISE_SD_DpT1_EESE_E4typeESQ_DpOSW_.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b, %bb.a
  %.sroa.04.09.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %.not.i.i8.i.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not.i.i8.i.i.i, label %bb.d, label %bb.c, !prof !135

bb.c:                                             ; preds = %.thread.i.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %.sroa.04.09.i.i.i)
  br label %_ZSt10__invoke_rISt8optionalIN4llvm13LogicalResultEERZNK4mlir13TypeConverter12wrapCallbackINS4_4TypeEZNS5_12wrapCallbackIS7_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS7_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionIFS3_NS1_12PointerUnionIJS7_NS4_5ValueEEEERNS1_15SmallVectorImplIS7_EEEEE4typeEOSD_EUlS7_SL_E_EENSC_IXaasr3stdE14is_invocable_vISD_SE_SL_Esr3stdE12is_base_of_vIS7_SE_EESN_E4typeESQ_EUlSI_SL_E_JSI_SL_EENSC_IX16is_invocable_r_vISE_SD_DpT1_EESE_E4typeESQ_DpOSW_.exit

bb.d:                                             ; preds = %.thread.i.i.i
  %i.m = zext i32 %i.j to i64
  %i.n = load ptr, ptr %2, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  store ptr %.sroa.04.09.i.i.i, ptr %i.o, align 1
  %i.p = load i32, ptr %i.i, align 8, !tbaa !40
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.i, align 8, !tbaa !40
  br label %_ZSt10__invoke_rISt8optionalIN4llvm13LogicalResultEERZNK4mlir13TypeConverter12wrapCallbackINS4_4TypeEZNS5_12wrapCallbackIS7_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS7_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionIFS3_NS1_12PointerUnionIJS7_NS4_5ValueEEEERNS1_15SmallVectorImplIS7_EEEEE4typeEOSD_EUlS7_SL_E_EENSC_IXaasr3stdE14is_invocable_vISD_SE_SL_Esr3stdE12is_base_of_vIS7_SE_EESN_E4typeESQ_EUlSI_SL_E_JSI_SL_EENSC_IX16is_invocable_r_vISE_SD_DpT1_EESE_E4typeESQ_DpOSW_.exit

_ZSt10__invoke_rISt8optionalIN4llvm13LogicalResultEERZNK4mlir13TypeConverter12wrapCallbackINS4_4TypeEZNS5_12wrapCallbackIS7_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS7_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionIFS3_NS1_12PointerUnionIJS7_NS4_5ValueEEEERNS1_15SmallVectorImplIS7_EEEEE4typeEOSD_EUlS7_SL_E_EENSC_IXaasr3stdE14is_invocable_vISD_SE_SL_Esr3stdE12is_base_of_vIS7_SE_EESN_E4typeESQ_EUlSI_SL_E_JSI_SL_EENSC_IX16is_invocable_r_vISE_SD_DpT1_EESE_E4typeESQ_DpOSW_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.2.0.i.i.i = phi i16 [ 1, %bb.b ], [ 257, %bb.c ], [ 257, %bb.d ]
  ret i16 %.sroa.2.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEZNKS5_13TypeConverter12wrapCallbackIS6_ZNSD_12wrapCallbackIS6_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS6_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionISC_EE4typeEOSK_EUlS6_SB_E_EENSJ_IXaasr3stdE14is_invocable_vISK_SL_SB_Esr3stdE12is_base_of_vIS6_SL_EESN_E4typeESQ_EUlS8_SB_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_4TypeEZNS2_12wrapCallbackIS4_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionIFSt8optionalIN4llvm13LogicalResultEENSE_12PointerUnionIJS4_NS1_5ValueEEEERNSE_15SmallVectorImplIS4_EEEEE4typeEOSA_EUlS4_SM_E_EENS9_IXaasr3stdE14is_invocable_vISA_SB_SM_Esr3stdE12is_base_of_vIS4_SB_EESO_E4typeESR_EUlSJ_SM_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !110
  br label %_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_4TypeEZNS2_12wrapCallbackIS4_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionIFSt8optionalIN4llvm13LogicalResultEENSE_12PointerUnionIJS4_NS1_5ValueEEEERNSE_15SmallVectorImplIS4_EEEEE4typeEOSA_EUlS4_SM_E_EENS9_IXaasr3stdE14is_invocable_vISA_SB_SM_Esr3stdE12is_base_of_vIS4_SB_EESO_E4typeESR_EUlSJ_SM_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !142
  br label %_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_4TypeEZNS2_12wrapCallbackIS4_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionIFSt8optionalIN4llvm13LogicalResultEENSE_12PointerUnionIJS4_NS1_5ValueEEEERNSE_15SmallVectorImplIS4_EEEEE4typeEOSA_EUlS4_SM_E_EENS9_IXaasr3stdE14is_invocable_vISA_SB_SM_Esr3stdE12is_base_of_vIS4_SB_EESO_E4typeESR_EUlSJ_SM_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i8, ptr %1, align 8
  store i8 %.val, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_4TypeEZNS2_12wrapCallbackIS4_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionIFSt8optionalIN4llvm13LogicalResultEENSE_12PointerUnionIJS4_NS1_5ValueEEEERNSE_15SmallVectorImplIS4_EEEEE4typeEOSA_EUlS4_SM_E_EENS9_IXaasr3stdE14is_invocable_vISA_SB_SM_Esr3stdE12is_base_of_vIS4_SB_EESO_E4typeESR_EUlSJ_SM_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_4TypeEZNS2_12wrapCallbackIS4_ZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_E_EENSt9enable_ifIXsr3stdE14is_invocable_vIT0_T_EESt8functionIFSt8optionalIN4llvm13LogicalResultEENSE_12PointerUnionIJS4_NS1_5ValueEEEERNSE_15SmallVectorImplIS4_EEEEE4typeEOSA_EUlS4_SM_E_EENS9_IXaasr3stdE14is_invocable_vISA_SB_SM_Esr3stdE12is_base_of_vIS4_SB_EESO_E4typeESR_EUlSJ_SM_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #22
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  %i.g = load i32, ptr %i.a, align 8, !tbaa !40
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !40
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !40
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 1, 258) i16 @_ZNSt17_Function_handlerIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEZNKS5_13TypeConverter12wrapCallbackINS5_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlSF_SB_E_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SB_Esr3stdE12is_base_of_vIS6_SL_EESt8functionISC_EE4typeEOSK_EUlS8_SB_E_E9_M_invokeERKSt9_Any_dataOS8_SB_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %4 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.246", align 8 ; 10 uses
  %.val = load i64, ptr %1, align 8               ; 2 uses
  %i.a = and i64 %.val, 4
  %i.b = icmp ne i64 %i.a, 0
  %i.c = and i64 %.val, -5                        ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %.not10.i.i.i = icmp eq i64 %i.c, 0
  %.not.i.i.i = or i1 %i.b, %.not10.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.g, label %select.unfold.i.i.i, label %_ZSt10__invoke_rISt8optionalIN4llvm13LogicalResultEERZNK4mlir13TypeConverter12wrapCallbackINS4_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS7_RNS1_15SmallVectorImplINS4_4TypeEEEE_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SD_Esr3stdE12is_base_of_vISB_SH_EESt8functionIFS3_NS1_12PointerUnionIJSB_NS4_5ValueEEEESD_EEE4typeEOSG_EUlSL_SD_E_JSL_SD_EENSF_IX16is_invocable_r_vISH_SG_DpT1_EESH_E4typeESQ_DpOST_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i8.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.m = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i8.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.m, label %select.unfold.i.i.i, label %_ZSt10__invoke_rISt8optionalIN4llvm13LogicalResultEERZNK4mlir13TypeConverter12wrapCallbackINS4_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS7_RNS1_15SmallVectorImplINS4_4TypeEEEE_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SD_Esr3stdE12is_base_of_vISB_SH_EESt8functionIFS3_NS1_12PointerUnionIJSB_NS4_5ValueEEEESD_EEE4typeEOSG_EUlSL_SD_E_JSL_SD_EENSF_IX16is_invocable_r_vISH_SG_DpT1_EESH_E4typeESQ_DpOST_.exit

select.unfold.i.i.i:                              ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.04.0.i.i.i, ptr %4, align 8
  %i.n = tail call noundef zeroext i1 @_ZN4mlir7arm_sme29isMultipleOfSMETileVectorTypeENS_10VectorTypeE(ptr nonnull %.sroa.04.0.i.i.i) #22
  br i1 %i.n, label %bb.d, label %_ZZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvENKUlN4mlir10VectorTypeERN4llvm15SmallVectorImplINS1_4TypeEEEE_clES2_S7_.exit.i.i.i

bb.d:                                             ; preds = %select.unfold.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.04.0.i.i.i, ptr %3, align 8
  %i.o = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = load i64, ptr %i.p, align 8, !tbaa !55
  %i.r = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55
  %i.v = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  %i.w = call noundef i32 @_ZN4mlir7arm_sme25getSMETileSliceMinNumEltsENS_4TypeE(ptr %i.v) #22 ; 2 uses
  %i.x = mul nsw i64 %i.u, %i.q
  %i.y = mul i32 %i.w, %i.w
  %i.z = zext i32 %i.y to i64
  %i.aa = sdiv i64 %i.x, %i.z                     ; 4 uses
  %i.ab = trunc i64 %i.aa to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ac = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %i.ad = call ptr @_ZN4mlir7arm_sme24getSMETileTypeForElementENS_4TypeE(ptr %i.ac) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %sext.i.i.i.i = shl i64 %i.aa, 32               ; 2 uses
  %i.ae = ashr exact i64 %sext.i.i.i.i, 32        ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.ah, align 4, !tbaa !25
  %i.ai = icmp ugt i64 %i.ae, 6
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.d
  store i32 0, ptr %i.ag, align 8, !tbaa !40
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.af, i64 noundef %i.ae, i64 noundef 8) #22
  %i.aj = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ak = ptrtoint ptr %i.ad to i64               ; 4 uses
  %i.al = and i64 %i.aa, 3                        ; 4 uses
  %n.vec11 = sub nuw nsw i64 %i.ae, %i.al         ; 2 uses
  %i.am = shl nsw i64 %n.vec11, 3
  %i.an = getelementptr i8, ptr %i.aj, i64 %i.am  ; 3 uses
  %broadcast.splatinsert12 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat13 = shufflevector <2 x i64> %broadcast.splatinsert12, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body14

vector.body14:                                    ; preds = %vector.body14, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %index15 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %index.next17, %vector.body14 ] ; 2 uses
  %i.ao = shl i64 %index15, 3
  %next.gep16 = getelementptr i8, ptr %i.aj, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep16, i64 16
  store <2 x i64> %broadcast.splat13, ptr %next.gep16, align 8, !tbaa !147
  store <2 x i64> %broadcast.splat13, ptr %i.ap, align 8, !tbaa !147
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next17, %n.vec11
  br i1 %i.aq, label %middle.block18, label %vector.body14, !llvm.loop !564

middle.block18:                                   ; preds = %vector.body14
  %cmp.n19 = icmp eq i64 %i.al, 0
  br i1 %cmp.n19, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %middle.block18
  store i64 %i.ak, ptr %i.an, align 8, !tbaa !147
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.al, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.ak, ptr %i.ar, align 8, !tbaa !147
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.al, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.2:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.ak, ptr %i.as, align 8, !tbaa !147
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i

_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %.not.i.i10.i.i.i = icmp eq i64 %sext.i.i.i.i, 0
  br i1 %.not.i.i10.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i.i
  %i.at = ptrtoint ptr %i.ad to i64               ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %i.au = and i64 %i.aa, 1                        ; 3 uses
  %n.vec = sub nuw nsw i64 %i.ae, %i.au           ; 2 uses
  %i.av = shl nuw nsw i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.af, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.ax
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !565

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, 0
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.aw, %middle.block ]
  %.068.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  store i64 %i.at, ptr %.09.i.i.i.i.i.i.i.i.i, align 8, !tbaa !147
  %i.ba = add nsw i64 %.068.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !566

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, %middle.block, %middle.block18, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i.i.i
  store i32 %i.ab, ptr %i.ag, align 8, !tbaa !40
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir4TypeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.af
  br i1 %i.be, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i
  call void @free(ptr noundef %i.bd) #22
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i.i.i.i: ; preds = %bb.e, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvENKUlN4mlir10VectorTypeERN4llvm15SmallVectorImplINS1_4TypeEEEE_clES2_S7_.exit.i.i.i

_ZZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvENKUlN4mlir10VectorTypeERN4llvm15SmallVectorImplINS1_4TypeEEEE_clES2_S7_.exit.i.i.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i.i.i.i, %select.unfold.i.i.i
  %.sroa.2.0.i.i.i.i = phi i16 [ 257, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i.i.i.i ], [ 1, %select.unfold.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt10__invoke_rISt8optionalIN4llvm13LogicalResultEERZNK4mlir13TypeConverter12wrapCallbackINS4_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS7_RNS1_15SmallVectorImplINS4_4TypeEEEE_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SD_Esr3stdE12is_base_of_vISB_SH_EESt8functionIFS3_NS1_12PointerUnionIJSB_NS4_5ValueEEEESD_EEE4typeEOSG_EUlSL_SD_E_JSL_SD_EENSF_IX16is_invocable_r_vISH_SG_DpT1_EESH_E4typeESQ_DpOST_.exit

_ZSt10__invoke_rISt8optionalIN4llvm13LogicalResultEERZNK4mlir13TypeConverter12wrapCallbackINS4_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS7_RNS1_15SmallVectorImplINS4_4TypeEEEE_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SD_Esr3stdE12is_base_of_vISB_SH_EESt8functionIFS3_NS1_12PointerUnionIJSB_NS4_5ValueEEEESD_EEE4typeEOSG_EUlSL_SD_E_JSL_SD_EENSF_IX16is_invocable_r_vISH_SG_DpT1_EESH_E4typeESQ_DpOST_.exit: ; preds = %bb.b, %bb.c, %_ZZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvENKUlN4mlir10VectorTypeERN4llvm15SmallVectorImplINS1_4TypeEEEE_clES2_S7_.exit.i.i.i
  %.sroa.2.0.i.i.i = phi i16 [ %.sroa.2.0.i.i.i.i, %_ZZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvENKUlN4mlir10VectorTypeERN4llvm15SmallVectorImplINS1_4TypeEEEE_clES2_S7_.exit.i.i.i ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i16 %.sroa.2.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEZNKS5_13TypeConverter12wrapCallbackINS5_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlSF_SB_E_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SB_Esr3stdE12is_base_of_vIS6_SL_EESt8functionISC_EE4typeEOSK_EUlS8_SB_E_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_RN4llvm15SmallVectorImplINS1_4TypeEEEE_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SB_Esr3stdE12is_base_of_vIS9_SF_EESt8functionIFSt8optionalINS7_13LogicalResultEENS7_12PointerUnionIJS9_NS1_5ValueEEEESB_EEE4typeEOSE_EUlSM_SB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !110
  br label %_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_RN4llvm15SmallVectorImplINS1_4TypeEEEE_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SB_Esr3stdE12is_base_of_vIS9_SF_EESt8functionIFSt8optionalINS7_13LogicalResultEENS7_12PointerUnionIJS9_NS1_5ValueEEEESB_EEE4typeEOSE_EUlSM_SB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !142
  br label %_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_RN4llvm15SmallVectorImplINS1_4TypeEEEE_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SB_Esr3stdE12is_base_of_vIS9_SF_EESt8functionIFSt8optionalINS7_13LogicalResultEENS7_12PointerUnionIJS9_NS1_5ValueEEEESB_EEE4typeEOSE_EUlSM_SB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i8, ptr %1, align 8
  store i8 %.val, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_RN4llvm15SmallVectorImplINS1_4TypeEEEE_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SB_Esr3stdE12is_base_of_vIS9_SF_EESt8functionIFSt8optionalINS7_13LogicalResultEENS7_12PointerUnionIJS9_NS1_5ValueEEEESB_EEE4typeEOSE_EUlSM_SB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK4mlir13TypeConverter12wrapCallbackINS1_10VectorTypeEZN12_GLOBAL__N_122VectorLegalizationPass14runOnOperationEvEUlS4_RN4llvm15SmallVectorImplINS1_4TypeEEEE_EENSt9enable_ifIXaasr3stdE14is_invocable_vIT0_T_SB_Esr3stdE12is_base_of_vIS9_SF_EESt8functionIFSt8optionalINS7_13LogicalResultEENS7_12PointerUnionIJS9_NS1_5ValueEEEESB_EEE4typeEOSE_EUlSM_SB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef zeroext i1 @_ZN4mlir7arm_sme29isMultipleOfSMETileVectorTypeENS_10VectorTypeE(ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir7arm_sme24getSMETileTypeForElementENS_4TypeE(ptr) local_unnamed_addr #3

declare ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir4TypeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #22
  %.pre = load ptr, ptr %1, align 8, !tbaa !24
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !129
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !129
  store ptr %i.c, ptr %1, align 8, !tbaa !24
  store i32 0, ptr %i.k, align 4, !tbaa !25
  store i32 0, ptr %i.j, align 8, !tbaa !40
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !40   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit
    i32 1, label %bb.h
  ], !prof !148

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !147
  store i64 %i.t, ptr %i.s, align 8, !tbaa !147
  br label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit

_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit:      ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !40
  store i32 0, ptr %i.m, align 8, !tbaa !40
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #22
  br label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !149

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8, !tbaa !147
  store i64 %i.z, ptr %i.y, align 8, !tbaa !147
  br label %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit34

_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit34:    ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !40
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !24
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt4moveIPN4mlir4TypeES2_ET0_T_S4_S3_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !40
  store i32 0, ptr %i.m, align 8, !tbaa !40
  br label %bb.p

end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_139LegalizeArithConstantOpsByDecomposition15matchAndRewriteEN4mlir5arith10ConstantOpENS2_17ConstantOpAdaptorERNS1_25ConversionPatternRewriterE:bb.a
  %i.ax = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 16) #22
  store ptr %i.ax, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !22 ; 2 uses
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !24 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bc = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.bc ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !22
  %i.be = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = xor i64 %i.bc, -1
  %i.bh = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.bg
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.be, ptr %i.bf, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.be, i64 %i.bh, i64 %i.bc ; 2 uses
  %i.bi = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !5

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.bb, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.bj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.bk = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !107
  %i.bl = icmp eq ptr %i.bk, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bl, label %bb.k, label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !173
  br label %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit

_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit: ; preds = %bb.f, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.j, %bb.k
  %i.bo = phi ptr [ null, %bb.f ], [ %i.bn, %bb.k ], [ null, %bb.j ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ]
  %i.bp = call ptr @_ZN4mlir17DenseElementsAttr11resizeSplatENS_10ShapedTypeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr %i.aa, ptr %i.bo) #22 ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i21, label %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !176 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.m, label %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !171

bb.m:                                             ; preds = %bb.l
  %i.bu = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id) #22
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.29, i64 49), i64 18) #22
  store ptr %i.bv, ptr @_ZZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !22 ; 2 uses
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !24 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ca = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ca ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !22
  %i.cc = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = xor i64 %i.ca, -1
  %i.cf = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ce
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cc, ptr %i.cd, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cc, i64 %i.cf, i64 %i.ca ; 2 uses
  %i.cg = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cg, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bz, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ch
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i22, label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !107
  %i.cj = icmp eq ptr %i.ci, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cj, label %bb.p, label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !173
  br label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i

_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i: ; preds = %bb.p, %bb.o, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.p ], [ null, %bb.o ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.bp, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %i.cm, 1
  br label %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit

_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit: ; preds = %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit, %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i.i ], [ zeroinitializer, %_ZN4mlir10ShapedTypeCI2NS_6detail9InterfaceIS0_NS_4TypeENS1_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEEEINS_10VectorTypeETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S3_S4_S3_S6_E5TraitIT_EESB_EE5valueEvE4typeELPv0EEESB_.exit ] ; 2 uses
  %i.cn = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZNK4mlir17DenseElementsAttrcvNS_9TypedAttrEEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit
  %i.cp = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !179
  br label %_ZNK4mlir17DenseElementsAttrcvNS_9TypedAttrEEv.exit

_ZNK4mlir17DenseElementsAttrcvNS_9TypedAttrEEv.exit: ; preds = %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit, %bb.q
  %.sroa.3.0.i.i = phi ptr [ %i.cr, %bb.q ], [ null, %_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv.exit ]
  %i.cs = call ptr @_ZN4mlir5arith10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_9TypedAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr %.sroa.0.0.copyload.i.i, ptr %i.cn, ptr %.sroa.3.0.i.i) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %sext = shl i64 %i.an, 32                       ; 2 uses
  %i.ct = ashr exact i64 %sext, 32                ; 6 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.cv, ptr %10, align 8, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.cx, align 4, !tbaa !25
  %i.cy = icmp ugt i64 %i.ct, 6
  br i1 %i.cy, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNK4mlir17DenseElementsAttrcvNS_9TypedAttrEEv.exit
  store i32 0, ptr %i.cw, align 8, !tbaa !40
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull %i.cv, i64 noundef %i.ct, i64 noundef 8) #22
  %i.cz = load ptr, ptr %10, align 8, !tbaa !24   ; 6 uses
  %i.da = ptrtoint ptr %i.cu to i64               ; 4 uses
  %i.db = and i64 %i.an, 3                        ; 4 uses
  %n.vec50 = sub nuw nsw i64 %i.ct, %i.db         ; 2 uses
  %i.dc = shl nsw i64 %n.vec50, 3
  %i.dd = getelementptr i8, ptr %i.cz, i64 %i.dc  ; 3 uses
  %broadcast.splatinsert51 = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %broadcast.splat52 = shufflevector <2 x i64> %broadcast.splatinsert51, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %.lr.ph.preheader.i.i.i.i.i.i
  %index54 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %index.next56, %vector.body53 ] ; 2 uses
  %i.de = shl i64 %index54, 3
  %next.gep55 = getelementptr i8, ptr %i.cz, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x i64> %broadcast.splat52, ptr %next.gep55, align 8, !tbaa !155
  store <2 x i64> %broadcast.splat52, ptr %i.df, align 8, !tbaa !155
  %index.next56 = add nuw i64 %index54, 4         ; 2 uses
  %i.dg = icmp eq i64 %index.next56, %n.vec50
  br i1 %i.dg, label %middle.block57, label %vector.body53, !llvm.loop !811

middle.block57:                                   ; preds = %vector.body53
  %cmp.n58 = icmp eq i64 %i.db, 0
  br i1 %cmp.n58, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block57
  store i64 %i.da, ptr %i.dd, align 8, !tbaa !155
  %.not.i.i.i.i.i.i = icmp eq i64 %i.db, 1
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.da, ptr %i.dh, align 8, !tbaa !155
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.db, 2
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %.lr.ph.i.i.i.i.i.i.1
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %i.da, ptr %i.di, align 8, !tbaa !155
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit

_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %_ZNK4mlir17DenseElementsAttrcvNS_9TypedAttrEEv.exit
  %.not.i = icmp eq i64 %sext, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.dj = ptrtoint ptr %i.cu to i64               ; 2 uses
  %min.iters.check = icmp ult i64 %i.ct, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.dk = and i64 %i.an, 1                        ; 3 uses
  %n.vec = sub nuw nsw i64 %i.ct, %i.dk           ; 2 uses
  %i.dl = shl nuw nsw i64 %n.vec, 3
  %i.dm = getelementptr i8, ptr %i.cv, i64 %i.dl
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 3
  %i.do = getelementptr i8, ptr %i.cv, i64 %i.dn
  store <2 x i64> %broadcast.splat, ptr %i.do, align 8, !tbaa !155
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !812

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, 0
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.cv, %.lr.ph.preheader.i.i.i.i.i ], [ %i.dm, %middle.block ]
  %.068.i.i.i.i.i.ph = phi i64 [ %i.ct, %.lr.ph.preheader.i.i.i.i.i ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 %i.dj, ptr %.09.i.i.i.i.i, align 8, !tbaa !155
  %i.dq = add nsw i64 %.068.i.i.i.i.i, -1         ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !813

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.2, %middle.block, %middle.block57, %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.ds = phi ptr [ %i.cz, %middle.block57 ], [ %i.cv, %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.cv, %middle.block ], [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.2 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.cv, %.lr.ph.i.i.i.i.i ]
  store i32 %i.ao, ptr %i.cw, align 8, !tbaa !40
  %i.dt = load ptr, ptr %6, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.du, ptr %12, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 0, ptr %i.dv, align 8, !tbaa !40
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 6, ptr %i.dw, align 4, !tbaa !25
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit
  %i.dx = icmp ugt i32 %i.ao, 6
  br i1 %i.dx, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i: ; preds = %bb.r
  %i.dy = and i64 %i.an, 4294967295
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.du, i64 noundef %i.dy, i64 noundef 8) #22
  %.pre.i = load i32, ptr %i.cw, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i16 = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i16, label %.sink.split.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i
  %.pre = load ptr, ptr %10, align 8, !tbaa !24
  %.pre30 = load ptr, ptr %12, align 8, !tbaa !24
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge, %bb.r
  %i.dz = phi ptr [ %.pre30, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.du, %bb.r ]
  %i.ea = phi ptr [ %.pre, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.ds, %bb.r ]
  %i.eb = phi i32 [ %.pre.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.ao, %bb.r ]
  %i.ec = zext i32 %i.eb to i64
  %gepdiff.i.i = shl nuw nsw i64 %i.ec, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr align 8 %i.ea, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i
  store i32 %i.ao, ptr %i.dv, align 8, !tbaa !40
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit, %.sink.split.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ed, ptr %11, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.ee, align 8, !tbaa !40
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 1, ptr %i.ef, align 4, !tbaa !25
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !24
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store i32 0, ptr %i.eh, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 6, ptr %i.ei, align 4, !tbaa !25
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit
  %i.ej = icmp ugt i32 %i.ao, 6
  br i1 %i.ej, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.ek = and i64 %i.an, 4294967295
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ed, ptr noundef nonnull %i.eg, i64 noundef %i.ek, i64 noundef 8) #22
  %.pre.i.i.i.i.i.i.i.i.i = load i32, ptr %i.dv, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.ed, align 8, !tbaa !24
  br label %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i, %bb.s
  %i.el = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i ], [ %i.eg, %bb.s ]
  %i.em = phi i32 [ %.pre.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i ], [ %i.ao, %bb.s ]
  %i.en = zext i32 %i.em to i64
  %i.eo = load ptr, ptr %12, align 8, !tbaa !24
  %gepdiff.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.en, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 8 %i.eo, i64 %gepdiff.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir5ValueEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i.i.i.i
  store i32 %i.ao, ptr %i.eh, align 8, !tbaa !40
  %.pre8.i.i.i.pre = load i32, ptr %i.ee, align 8, !tbaa !40
  %i.ep = add i32 %.pre8.i.i.i.pre, 1
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit
  %.pre8.i.i.i = phi i32 [ %i.ep, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ 1, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2ERKS3_.exit ]
  store i32 %.pre8.i.i.i, ptr %i.ee, align 8, !tbaa !40
  call void @_ZN4mlir25ConversionPatternRewriter21replaceOpWithMultipleEPNS_9OperationEON4llvm11SmallVectorINS4_INS_5ValueELj6EEELj1EEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(80) %11) #22
  %i.eq = load ptr, ptr %11, align 8, !tbaa !24   ; 3 uses
  %i.er = load i32, ptr %i.ee, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.er, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.es = zext i32 %i.er to i64
  %.idx.i = shl nuw nsw i64 %i.es, 6
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.eu, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i ], [ %i.et, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !24 ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.ev) #22
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i: ; preds = %bb.t, %.lr.ph.i.i
  %.not.i.i18 = icmp eq ptr %i.eq, %i.eu
  br i1 %.not.i.i18, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i
  %.pre.i19 = load ptr, ptr %11, align 8, !tbaa !24
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.ey = phi ptr [ %.pre.i19, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.eq, %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ed
  br i1 %i.ez, label %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i
  call void @free(ptr noundef %i.ey) #22
  br label %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.u
  %i.fa = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit
  call void @free(ptr noundef %i.fa) #22
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS0_IN4mlir5ValueELj6EEELj1EED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.fd = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.cv
  br i1 %i.fe, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit20, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  call void @free(ptr noundef %i.fd) #22
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit20

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit20: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.b, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit20, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith10ConstantOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit
  %.sroa.011.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5arith10ConstantOpEEEN4llvm13LogicalResultEOT_RKNS5_5TwineE.exit ], [ 1, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit20 ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret i8 %.sroa.011.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir19OpConversionPatternINS_5arith10ConstantOpEE15matchAndRewriteES2_NS1_24ConstantOpGenericAdaptorIN4llvm8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef byval(%"class.mlir::arith::ConstantOpGenericAdaptor.1568") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir17ConversionPattern14dispatchTo1To1INS_19OpConversionPatternINS_5arith10ConstantOpEEES4_EEN4llvm13LogicalResultERKT_T0_NSB_14GenericAdaptorINS6_8ArrayRefINS_10ValueRangeEEEEERNS_25ConversionPatternRewriterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, ptr noundef nonnull byval(%"class.mlir::arith::ConstantOpGenericAdaptor.1568") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %i.a
}

declare void @_ZN4mlir5arith6detail28ConstantOpGenericAdaptorBaseC2ENS0_10ConstantOpE(ptr noundef nonnull align 8 dereferenceable(56), ptr) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4mlir5arith10ConstantOp12getValueAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !150    ; 2 uses
end_hunk_1
