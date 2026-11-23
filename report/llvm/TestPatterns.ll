Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestPatterns?download=true
inline.NumInlined: 29626
inline.NumDeleted: 13973
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZN12_GLOBAL__N_141__mlir_ods_local_prop_constraint_TestOps3ERNS1_15PatternRewriterEPNS1_9OperationEbNS_9StringRefEE3$_0EEvlS3_":bb.a
  %i.p = load i32, ptr %i.i, align 8, !tbaa !84
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.i, align 8, !tbaa !84
  br label %"_ZZN12_GLOBAL__N_141__mlir_ods_local_prop_constraint_TestOps3ERN4mlir15PatternRewriterEPNS0_9OperationEbN4llvm9StringRefEENK3$_0clERNS0_10DiagnosticE.exit"

"_ZZN12_GLOBAL__N_141__mlir_ods_local_prop_constraint_TestOps3ERN4mlir15PatternRewriterEPNS0_9OperationEbN4llvm9StringRefEENK3$_0clERNS0_10DiagnosticE.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZN12_GLOBAL__N_141__mlir_ods_local_prop_constraint_TestOps4INS_9StringRefEEENS_13LogicalResultERNS1_15PatternRewriterEPNS1_9OperationET_S9_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2464 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !83
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val1 = load i64, ptr %i.b, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.c, align 8, !tbaa !143
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !144
  store ptr %.val.val, ptr %3, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.val.val1, ptr %i.e, align 8, !tbaa !100
  %i.f = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #30 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i32 3, ptr %2, align 8, !tbaa !120
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.351, ptr %i.h, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !84   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !85
  %.not.i.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZZN12_GLOBAL__N_141__mlir_ods_local_prop_constraint_TestOps4IN4llvm9StringRefEEENS1_13LogicalResultERN4mlir15PatternRewriterEPNS4_9OperationET_S2_ENKUlRNS4_10DiagnosticEE_clESB_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = zext i32 %i.j to i64
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.p = load i32, ptr %i.i, align 8, !tbaa !84
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.i, align 8, !tbaa !84
  br label %_ZZN12_GLOBAL__N_141__mlir_ods_local_prop_constraint_TestOps4IN4llvm9StringRefEEENS1_13LogicalResultERN4mlir15PatternRewriterEPNS4_9OperationET_S2_ENKUlRNS4_10DiagnosticEE_clESB_.exit

_ZZN12_GLOBAL__N_141__mlir_ods_local_prop_constraint_TestOps4IN4llvm9StringRefEEENS1_13LogicalResultERN4mlir15PatternRewriterEPNS4_9OperationET_S2_ENKUlRNS4_10DiagnosticEE_clESB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFSt10unique_ptrIN4mlir4PassESt14default_deleteIS2_EEvEZNS1_16PassRegistrationIN12_GLOBAL__N_120TestReturnTypeDriverEEC1EvEUlvE_E9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.2928") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #29, !noalias !2474 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.b, i8 0, i64 240, i1 false), !noalias !2474
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN12_GLOBAL__N_120TestReturnTypeDriver13resolveTypeIDEvE2id, ptr %i.c, align 8, !tbaa !135, !noalias !2474
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.358, ptr %i.d, align 16, !noalias !2474
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 9, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2474
  store i8 1, ptr %i.b, align 16, !noalias !2474
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false), !noalias !2474
  store ptr %i.g, ptr %i.f, align 16, !tbaa !103, !noalias !2474
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.h, align 4, !tbaa !85, !noalias !2474
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.j, ptr %i.i, align 16, !tbaa !103, !noalias !2474
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.k, align 4, !tbaa !85, !noalias !2474
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.l, i8 0, i64 64, i1 false), !noalias !2474
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_120TestReturnTypeDriverE, i64 16), ptr %i.a, align 16, !tbaa !79, !noalias !2474
  store ptr %i.a, ptr %0, align 8, !tbaa !184, !alias.scope !2473
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFSt10unique_ptrIN4mlir4PassESt14default_deleteIS2_EEvEZNS1_16PassRegistrationIN12_GLOBAL__N_120TestReturnTypeDriverEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_120TestReturnTypeDriverEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_120TestReturnTypeDriverEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_120TestReturnTypeDriverEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_120TestReturnTypeDriverEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !185
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_120TestReturnTypeDriverEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_120TestReturnTypeDriverEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_120TestReturnTypeDriverEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120TestReturnTypeDriverD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir11PassWrapperIN12_GLOBAL__N_120TestReturnTypeDriverENS_13OperationPassINS_4func6FuncOpEEEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr (i8, ptr @.str.360, i64 49), i64 43 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120TestReturnTypeDriver20getDependentDialectsERN4mlir15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function.2998", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6tensor13TensorDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !187
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6tensor13TensorDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !102
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_6tensor13TensorDialectEvE2idE, ptr nonnull @.str.361, i64 6, ptr noundef nonnull align 8 dereferenceable(32) %2) #30
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_6tensor13TensorDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #30, !inline_history !2475 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_6tensor13TensorDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_6tensor13TensorDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_120TestReturnTypeDriver11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.362, i64 16 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_120TestReturnTypeDriver14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.363, i64 25 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120TestReturnTypeDriver14runOnOperationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::OpBuilder", align 8   ; 7 uses
  %5 = alloca %"class.test::OpWithShapedTypeInferTypeInterfaceOp", align 8 ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.1031", align 8 ; 9 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %10 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %11 = alloca %"class.mlir::NamedAttribute", align 16 ; 10 uses
  %12 = alloca %"class.mlir::NamedAttribute", align 16 ; 10 uses
  %13 = alloca %"class.mlir::NamedAttribute", align 16 ; 5 uses
  %14 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %15 = alloca %"class.llvm::SmallVector.3141", align 8 ; 11 uses
  %16 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %17 = alloca %"class.mlir::func::FuncOp", align 8 ; 5 uses
  %18 = alloca %"class.mlir::OpBuilder", align 8  ; 8 uses
  %19 = alloca %"struct.std::array.3102", align 8 ; 6 uses
  %20 = alloca %"class.llvm::SmallVector.3103", align 8 ; 8 uses
  %21 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %22 = alloca %"class.mlir::PropertyRef", align 8 ; 5 uses
  %23 = alloca %"class.mlir::RegionRange", align 8 ; 4 uses
  %24 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %25 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %26 = alloca %"class.mlir::NamedAttribute", align 16 ; 10 uses
  %27 = alloca %"class.mlir::NamedAttribute", align 16 ; 10 uses
  %28 = alloca %"class.mlir::NamedAttribute", align 16 ; 5 uses
  %29 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %30 = alloca %"class.llvm::SmallVector.3141", align 8 ; 11 uses
  %31 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %32 = alloca %"class.mlir::func::FuncOp", align 8 ; 5 uses
  %33 = alloca %"class.mlir::OpBuilder", align 8  ; 8 uses
  %34 = alloca %"struct.std::array.3102", align 8 ; 6 uses
  %35 = alloca %"class.llvm::SmallVector.3103", align 8 ; 8 uses
  %36 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %37 = alloca %"class.mlir::PropertyRef", align 8 ; 5 uses
  %38 = alloca %"class.mlir::RegionRange", align 8 ; 4 uses
  %39 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %40 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %41 = alloca %"class.mlir::NamedAttribute", align 16 ; 10 uses
  %42 = alloca %"class.mlir::NamedAttribute", align 16 ; 10 uses
  %43 = alloca %"class.mlir::NamedAttribute", align 16 ; 5 uses
  %44 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %45 = alloca %"class.llvm::SmallVector.3141", align 8 ; 11 uses
  %46 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %47 = alloca %"class.mlir::func::FuncOp", align 8 ; 5 uses
  %48 = alloca %"class.mlir::OpBuilder", align 8  ; 8 uses
  %49 = alloca %"struct.std::array.3102", align 8 ; 6 uses
  %50 = alloca %"class.llvm::SmallVector.3103", align 8 ; 8 uses
  %51 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %52 = alloca %"class.mlir::PropertyRef", align 8 ; 5 uses
  %53 = alloca %"class.mlir::RegionRange", align 8 ; 4 uses
  %54 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %55 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %56 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #30
  %i.d = tail call ptr @_ZN4mlir11SymbolTable13getSymbolNameEPNS_9OperationE(ptr noundef %i.c) #30
  store ptr %i.d, ptr %56, align 8
  %i.e = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %56) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #30
  %i.f = extractvalue { ptr, i64 } %i.e, 1
  %.not.i = icmp eq i64 %i.f, 19
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread558

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.g = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.h = load i128, ptr %i.g, align 1
  %i.i = xor i128 %i.h, 140173262702949694806584005667209831796
  %i.j = getelementptr i8, ptr %i.g, i64 3
  %i.k = load i128, ptr %i.j, align 1
  %i.l = xor i128 %i.k, 153434631872147692175321309057788298100
  %i.m = or i128 %i.i, %i.l
  %i.n = icmp ne i128 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread558

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %.0.copyload.i.i.i.i.i22 = load i64, ptr %i.a, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i22, -8
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = and i32 %i.t, 8388607
  %i.v = icmp ne i32 %i.u, 0
  call void @llvm.assume(i1 %i.v)
  %i.w = lshr i32 %i.t, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.w, 1
  %i.x = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.x
  %i.z = lshr i32 %i.t, 21
  %i.aa = and i32 %i.z, 2040
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !199
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !200 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %.sroa.0542.0612 = load ptr, ptr %i.aj, align 8, !tbaa !200 ; 2 uses
  %.not565613 = icmp eq ptr %.sroa.0542.0612, %i.ak
  br i1 %.not565613, label %._crit_edge619, label %.lr.ph618

._crit_edge619.loopexit:                          ; preds = %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit
  %i.al = ptrtoint ptr %.sroa.7549.1 to i64
  %i.am = ptrtoint ptr %.sroa.11551.1 to i64
  br label %._crit_edge619

._crit_edge619:                                   ; preds = %._crit_edge619.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %.sroa.11551.0.lcssa = phi i64 [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %i.am, %._crit_edge619.loopexit ]
  %.sroa.7549.0.lcssa = phi i64 [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %i.al, %._crit_edge619.loopexit ]
  %.sroa.0546.0.lcssa = phi ptr [ null, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %.sroa.0546.1, %._crit_edge619.loopexit ] ; 5 uses
  %i.an = ptrtoint ptr %.sroa.0546.0.lcssa to i64 ; 2 uses
  %i.ao = sub i64 %.sroa.7549.0.lcssa, %i.an
  %i.ap = add i64 %i.ao, -8                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.0546.0.lcssa, i64 %i.ap
  %.not695 = icmp eq i64 %i.ap, 0
  br i1 %.not695, label %._crit_edge699, label %.lr.ph698

.lr.ph698:                                        ; preds = %._crit_edge619
  %57 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %58 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %59 = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %50, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %45, i64 12 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %35, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %30, i64 12 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %25, i64 8
  br label %bb.h

.lr.ph618:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit
  %.sroa.0542.0617 = phi ptr [ %.sroa.0542.0, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0542.0612, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ] ; 2 uses
  %.sroa.0546.0616 = phi ptr [ %.sroa.0546.1, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit ], [ null, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ] ; 5 uses
  %.sroa.7549.0615 = phi ptr [ %.sroa.7549.1, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit ], [ null, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ] ; 4 uses
  %.sroa.11551.0614 = phi ptr [ %.sroa.11551.1, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit ], [ null, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ] ; 2 uses
  %i.cb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0542.0617) #30 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.7549.0615, %.sroa.11551.0614
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph618
  store ptr %i.cb, ptr %.sroa.7549.0615, align 8, !tbaa !116
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %.lr.ph618
  %i.cc = ptrtoint ptr %.sroa.7549.0615 to i64
  %i.cd = ptrtoint ptr %.sroa.0546.0616 to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.d, label %_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #31
  unreachable

_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #29 ; 4 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store ptr %i.cb, ptr %i.cn, align 8, !tbaa !116
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.e, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %.sroa.0546.0616, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0546.0616, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0546.0616, i64 noundef %i.ce) #32
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.sroa.11551.1 = phi ptr [ %i.cp, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.11551.0614, %bb.b ] ; 2 uses
  %.pn = phi ptr [ %i.cn, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.7549.0615, %bb.b ]
  %.sroa.0546.1 = phi ptr [ %i.cm, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0546.0616, %bb.b ] ; 2 uses
  %.sroa.7549.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0542.0617, i64 8
  %.sroa.0542.0 = load ptr, ptr %i.cq, align 8, !tbaa !200 ; 2 uses
  %.not565 = icmp eq ptr %.sroa.0542.0, %i.ak
  br i1 %.not565, label %._crit_edge619.loopexit, label %.lr.ph618

._crit_edge699:                                   ; preds = %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test36OpWithShapedTypeInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit, %._crit_edge619
  %.not.i.i.i = icmp eq ptr %.sroa.0546.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge699
  %i.cr = sub i64 %.sroa.11551.0.lcssa, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0546.0.lcssa, i64 noundef %i.cr) #32
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EED2Ev.exit

bb.h:                                             ; preds = %.lr.ph698, %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test36OpWithShapedTypeInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit
  %.0696 = phi ptr [ %.sroa.0546.0.lcssa, %.lr.ph698 ], [ %i.abz, %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test36OpWithShapedTypeInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit ] ; 2 uses
  %i.cs = load ptr, ptr %.0696, align 8, !tbaa !116 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 9 uses
  %i.cu = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0.i.i = phi ptr [ %i.cs, %bb.h ], [ %i.cx, %bb.j ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !201 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i23, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i

_ZN4mlir9Operation11getParentOpEv.exit.i.i:       ; preds = %bb.i
  %i.cx = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cw) #30 ; 4 uses
  %.not.i.i24 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i24, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !123
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !126
  %i.db = icmp eq ptr %i.da, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  br i1 %i.db, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i, label %bb.i, !llvm.loop !2476

_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i: ; preds = %bb.j, %_ZN4mlir9Operation11getParentOpEv.exit.i.i, %bb.i
  %.sroa.0.0.i.i = phi ptr [ %i.cx, %bb.j ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit.i.i ], [ null, %bb.i ]
  store ptr %.sroa.0.0.i.i, ptr %47, align 8
  %i.dc = call ptr @_ZN4mlir10UnknownLoc3getEPNS_11MLIRContextE(ptr noundef %i.cu) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #30
  %i.dd = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #30
  store ptr %i.dd, ptr %48, align 8, !tbaa !145
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  store i64 0, ptr %57, align 8
  %i.df = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cs) #30 ; 0 uses
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !201
  %i.dh = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cs) #30
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !200
  store ptr %i.dg, ptr %58, align 8, !tbaa !202
  store ptr %i.dj, ptr %59, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #30
  %i.dk = call ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %47) #30
  store ptr %i.dk, ptr %46, align 8
  %i.dl = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %46) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #30
  %i.dm = extractvalue { ptr, i64 } %i.dl, 1      ; 2 uses
  %i.dn = trunc i64 %i.dm to i32
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.preheader.lr.ph.i, label %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test26OpWithInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit

.preheader.lr.ph.i:                               ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 44 ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cs, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %wide.trip.count251.i = and i64 %i.dm, 2147483647 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv248.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next249.i, %._crit_edge.i ] ; 2 uses
  br label %bb.k

._crit_edge.i:                                    ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i
  %indvars.iv.next249.i = add nuw nsw i64 %indvars.iv248.i, 1 ; 2 uses
  %exitcond252.not.i = icmp eq i64 %indvars.iv.next249.i, %wide.trip.count251.i
  br i1 %exitcond252.not.i, label %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test26OpWithInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit, label %.preheader.i, !llvm.loop !2477

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #30
  %i.du = load ptr, ptr %47, align 8, !tbaa !159  ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 44
  %i.dw = load i32, ptr %i.dv, align 4            ; 3 uses
  %i.dx = and i32 %i.dw, 8388607
  %i.dy = icmp ne i32 %i.dx, 0
  call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.ea = lshr i32 %i.dw, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ea, 1
  %i.eb = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = lshr i32 %i.dw, 21
  %i.ee = and i32 %i.ed, 2040
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !199
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %i.ej ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !203
  %i.em = icmp ne ptr %i.ek, %i.el
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !200
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !206 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv248.i
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.er, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %49, align 8, !tbaa !108
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i31.i = load ptr, ptr %i.es, align 8
  store ptr %.sroa.0.0.copyload.i.i31.i, ptr %i.ar, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  store ptr %i.as, ptr %50, align 8, !tbaa !103
  store i32 0, ptr %i.at, align 8, !tbaa !84
  store i32 2, ptr %i.au, align 4, !tbaa !85
  %i.et = load i32, ptr %i.dp, align 4            ; 2 uses
  %.not.i32.i = icmp ult i32 %i.et, 16777216
  br i1 %.not.i32.i, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i

_ZN4mlir9Operation20getPropertiesStorageEv.exit.i: ; preds = %bb.k
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !150
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 112
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ev, align 8, !tbaa !135 ; 2 uses
  %i.ew = lshr i32 %i.et, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.ew, 1
  %i.ex = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.ex
  %.not.i25 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE
  br i1 %.not.i25, label %bb.l, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i

_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i: ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i, %bb.k
  br label %bb.l

bb.l:                                             ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i
  %.sroa.6.0.i = phi ptr [ null, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i ], [ %i.ey, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i ]
  %.sroa.0156.0.i = phi ptr [ @_ZN4mlir6detail14TypeIDResolverIvvE2idE, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i ], [ %.sroa.0.0.copyload.i.i.i.i, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i ]
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr nonnull align 8 dereferenceable(16) %49, i64 2) #30
  %i.ez = load i32, ptr %i.dp, align 4            ; 2 uses
  %.not.i.i34.i = icmp ult i32 %i.ez, 16777216
  br i1 %.not.i.i34.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i35.i = load ptr, ptr %i.ds, align 8
  br label %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.fa = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  %.sroa.0.0.copyload.i.i.i1.i.i = load ptr, ptr %i.dq, align 8, !tbaa !123, !noalias !2509 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.i.i, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !126, !noalias !2509
  %.not.i.i.not.i.i.i = icmp eq ptr %i.fc, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.i.not.i.i.i, label %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.i.i, i64 96
  %.sroa.0.0.copyload.i.i6.i.i.i = load ptr, ptr %i.fd, align 8, !tbaa !2510, !noalias !2509
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.i.i, i64 104
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !81, !noalias !2509
  %i.fe = freeze i64 %.sroa.2.0.copyload.i.i.i.i.i
  br label %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i

_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i: ; preds = %bb.o, %bb.n
  %.sroa.6.0.i.i.i = phi i64 [ %i.fe, %bb.o ], [ 0, %bb.n ] ; 12 uses
  %.sroa.012.0.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i6.i.i.i, %bb.o ], [ null, %bb.n ] ; 20 uses
  %i.ff = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #30, !noalias !2509 ; 2 uses
  %i.fg = extractvalue { ptr, i64 } %i.ff, 0      ; 3 uses
  %i.fh = extractvalue { ptr, i64 } %i.ff, 1      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.fh, 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx.i ; 16 uses
  %.not12.i44.i = icmp eq i64 %i.fh, 0
  br i1 %.not12.i44.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i, label %.lr.ph.i45.i

.lr.ph.i45.i:                                     ; preds = %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i
  %.idx4.i.i.i51.i = shl nuw nsw i64 %.sroa.6.0.i.i.i, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 %.idx4.i.i.i51.i
  %i.fk = lshr i64 %.sroa.6.0.i.i.i, 2            ; 2 uses
  %.not.i1.i.i52.i = icmp eq i64 %i.fk, 0
  %i.fl = and i64 %.idx4.i.i.i51.i, 9223372036854775776
  %scevgep.i.i.i.i.i.i54.i = getelementptr i8, ptr %.sroa.012.0.i.i.i, i64 %i.fl
  %i.fm = and i64 %.sroa.6.0.i.i.i, 3
  br label %bb.p

bb.p:                                             ; preds = %bb.y, %.lr.ph.i45.i
  %.sroa.0163.0.i = phi ptr [ %i.fg, %.lr.ph.i45.i ], [ %i.gi, %bb.y ] ; 4 uses
  %i.fn = load <2 x ptr>, ptr %.sroa.0163.0.i, align 8, !tbaa !128, !noalias !2511
  call void @llvm.lifetime.start.p0(ptr nonnull %43), !noalias !2511
  store <2 x ptr> %i.fn, ptr %43, align 16, !noalias !2511
  %i.fo = load i32, ptr %i.dp, align 4, !noalias !2511
  %.not.i.i.i49.i = icmp ult i32 %i.fo, 16777216
  br i1 %.not.i.i.i49.i, label %bb.q, label %.critedge.sink.split.i50.i

bb.q:                                             ; preds = %bb.p
  %i.fp = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %43) #30, !noalias !2511 ; 7 uses
  br i1 %.not.i1.i.i52.i, label %._crit_edge.i.i.i.i.i.i62.i, label %.lr.ph.i.i.i.i.i.i53.i

.lr.ph.i.i.i.i.i.i53.i:                           ; preds = %bb.q, %bb.u
  %.059.i.i.i.i.i.i55.i = phi i64 [ %i.fy, %bb.u ], [ %i.fk, %bb.q ] ; 2 uses
  %.02958.i.i.i.i.i.i56.i = phi ptr [ %i.fx, %bb.u ], [ %.sroa.012.0.i.i.i, %bb.q ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i57.i = load ptr, ptr %.02958.i.i.i.i.i.i56.i, align 8, !noalias !2511
  %i.fq = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i57.i, %i.fp
  br i1 %i.fq, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i53.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i.i.i58.i = load ptr, ptr %i.fr, align 8, !noalias !2511
  %i.fs = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i.i.i58.i, %i.fp
  br i1 %i.fs, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit944, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i.i.i59.i = load ptr, ptr %i.ft, align 8, !noalias !2511
  %i.fu = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i.i.i59.i, %i.fp
  br i1 %i.fu, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit942, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i.i.i60.i = load ptr, ptr %i.fv, align 8, !noalias !2511
  %i.fw = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i.i.i60.i, %i.fp
  br i1 %i.fw, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i, i64 32
  %i.fy = add nsw i64 %.059.i.i.i.i.i.i55.i, -1
  %i.fz = icmp sgt i64 %.059.i.i.i.i.i.i55.i, 1
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i53.i, label %._crit_edge.i.i.i.i.i.i62.i, !llvm.loop !2482

._crit_edge.i.i.i.i.i.i62.i:                      ; preds = %bb.u, %bb.q
  %.pre-phi68.i.i.i.i.i.i63.i = phi i64 [ %.sroa.6.0.i.i.i, %bb.q ], [ %i.fm, %bb.u ]
  %.029.lcssa.i.i.i.i.i.i64.i = phi ptr [ %.sroa.012.0.i.i.i, %bb.q ], [ %scevgep.i.i.i.i.i.i54.i, %bb.u ] ; 5 uses
  switch i64 %.pre-phi68.i.i.i.i.i.i63.i, label %.critedge.sink.split.i50.i [
    i64 3, label %bb.v
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i72.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i65.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i62.i
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i75.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i64.i, align 8, !noalias !2511
  %i.ga = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i75.i, %i.fp
  br i1 %i.ga, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i64.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i72.i

._crit_edge._crit_edge.i.i.i.i.i.i72.i:           ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i62.i
  %.1.i.i.i.i.i.i73.i = phi ptr [ %i.gb, %bb.w ], [ %.029.lcssa.i.i.i.i.i.i64.i, %._crit_edge.i.i.i.i.i.i62.i ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i74.i = load ptr, ptr %.1.i.i.i.i.i.i73.i, align 8, !noalias !2511
  %i.gc = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i74.i, %i.fp
  br i1 %i.gc, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i72.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i73.i, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i65.i

._crit_edge._crit_edge65.i.i.i.i.i.i65.i:         ; preds = %bb.x, %._crit_edge.i.i.i.i.i.i62.i
  %.2.i.i.i.i.i.i66.i = phi ptr [ %i.gd, %bb.x ], [ %.029.lcssa.i.i.i.i.i.i64.i, %._crit_edge.i.i.i.i.i.i62.i ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i67.i = load ptr, ptr %.2.i.i.i.i.i.i66.i, align 8, !noalias !2511
  %i.ge = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i67.i, %i.fp
  br i1 %i.ge, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i, label %.critedge.sink.split.i50.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit: ; preds = %bb.t
  %i.gf = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i, i64 24
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit942: ; preds = %bb.s
  %i.gg = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i, i64 16
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit944: ; preds = %bb.r
  %i.gh = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i, i64 8
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i: ; preds = %.lr.ph.i.i.i.i.i.i53.i, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit942, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit944, %._crit_edge._crit_edge65.i.i.i.i.i.i65.i, %._crit_edge._crit_edge.i.i.i.i.i.i72.i, %bb.v
  %.028.i.i.i.i.i.i69.i = phi ptr [ %.1.i.i.i.i.i.i73.i, %._crit_edge._crit_edge.i.i.i.i.i.i72.i ], [ %.029.lcssa.i.i.i.i.i.i64.i, %bb.v ], [ %.2.i.i.i.i.i.i66.i, %._crit_edge._crit_edge65.i.i.i.i.i.i65.i ], [ %i.gh, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit944 ], [ %i.gg, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit942 ], [ %i.gf, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i.loopexit.split.loop.exit ], [ %.02958.i.i.i.i.i.i56.i, %.lr.ph.i.i.i.i.i.i53.i ]
  %.not.i.i70.i = icmp eq ptr %.028.i.i.i.i.i.i69.i, %i.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %43), !noalias !2511
  br i1 %.not.i.i70.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0163.0.i, i64 16 ; 2 uses
  %.not.i71.i = icmp eq ptr %i.gi, %i.fi
  br i1 %.not.i71.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i, label %bb.p, !llvm.loop !2483

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i: ; preds = %bb.y
  store ptr %i.av, ptr %45, align 8, !tbaa !103, !alias.scope !2512
  store i32 0, ptr %i.aw, align 8, !tbaa !84, !alias.scope !2512
  store i32 3, ptr %i.ax, align 4, !tbaa !85, !alias.scope !2512
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i

.critedge.sink.split.i50.i:                       ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i65.i, %._crit_edge.i.i.i.i.i.i62.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %43), !noalias !2511
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i: ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i, %.critedge.sink.split.i50.i, %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i
  %.sroa.0163.1.i = phi ptr [ %i.fg, %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i ], [ %.sroa.0163.0.i, %.critedge.sink.split.i50.i ], [ %.sroa.0163.0.i, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i ] ; 4 uses
  store ptr %i.av, ptr %45, align 8, !tbaa !103, !alias.scope !2512
  store i32 0, ptr %i.aw, align 8, !tbaa !84, !alias.scope !2512
  store i32 3, ptr %i.ax, align 4, !tbaa !85, !alias.scope !2512
  %.not2.i.i.i.i.i = icmp eq ptr %.sroa.0163.1.i, %i.fi
  br i1 %.not2.i.i.i.i.i, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i
  %.idx4.i.i.i123.i = shl nuw nsw i64 %.sroa.6.0.i.i.i, 3 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 %.idx4.i.i.i123.i ; 2 uses
  %i.gk = lshr i64 %.sroa.6.0.i.i.i, 2            ; 2 uses
  %.not.i1.i.i124.i = icmp eq i64 %i.gk, 0
  %i.gl = and i64 %.idx4.i.i.i123.i, 9223372036854775776
  %scevgep.i.i.i.i.i.i126.i = getelementptr i8, ptr %.sroa.012.0.i.i.i, i64 %i.gl ; 5 uses
  %i.gm = and i64 %.sroa.6.0.i.i.i, 3
  %i.gn = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i126.i, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 8
  br i1 %.not.i1.i.i124.i, label %.lr.ph.i.i.i.i.us.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.us.i:                              ; preds = %.lr.ph.i.i.i.i.preheader.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i
  %i.gp = phi ptr [ %.sroa.0171.1.us.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i ], [ %.sroa.0163.1.i, %.lr.ph.i.i.i.i.preheader.i ]
  %.03.i.i.i.i.us.i = phi i64 [ %i.gz, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 4 uses
  %.not12.i116.us.i = icmp eq ptr %i.gq, %i.fi
  br i1 %.not12.i116.us.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i, label %.lr.ph.i117.us.i

.lr.ph.i117.us.i:                                 ; preds = %.lr.ph.i.i.i.i.us.i, %bb.ab
  %.sroa.0171.0.us.us.i = phi ptr [ %i.gy, %bb.ab ], [ %i.gq, %.lr.ph.i.i.i.i.us.i ] ; 5 uses
  %i.gr = load <2 x ptr>, ptr %.sroa.0171.0.us.us.i, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  store <2 x ptr> %i.gr, ptr %41, align 16
  %i.gs = load i32, ptr %i.dp, align 4
  %.not.i.i.i121.us.us.i = icmp ult i32 %i.gs, 16777216
  br i1 %.not.i.i.i121.us.us.i, label %._crit_edge.i.i.i.i.i.i134.us.us.i, label %.critedge.sink.split.i122.split.us.us.i

._crit_edge.i.i.i.i.i.i134.us.us.i:               ; preds = %.lr.ph.i117.us.i
  %i.gt = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %41) #30 ; 3 uses
  switch i64 %.sroa.6.0.i.i.i, label %.critedge.sink.split.i122.split.us.us.i [
    i64 3, label %bb.z
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i134.us.us.i
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.us.us.i = load ptr, ptr %.sroa.012.0.i.i.i, align 8
  %i.gu = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.us.us.i, %i.gt
  br i1 %i.gu, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i, label %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i

._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i:    ; preds = %bb.z, %._crit_edge.i.i.i.i.i.i134.us.us.i
  %.1.i.i.i.i.i.i145.us.us.i = phi ptr [ %.sroa.012.0.i.i.i, %._crit_edge.i.i.i.i.i.i134.us.us.i ], [ %i.go, %bb.z ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.us.us.i = load ptr, ptr %.1.i.i.i.i.i.i145.us.us.i, align 8
  %i.gv = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.us.us.i, %i.gt
  br i1 %i.gv, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i145.us.us.i, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i

._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i:  ; preds = %bb.aa, %._crit_edge.i.i.i.i.i.i134.us.us.i
  %.2.i.i.i.i.i.i138.us.us.i = phi ptr [ %i.gw, %bb.aa ], [ %.sroa.012.0.i.i.i, %._crit_edge.i.i.i.i.i.i134.us.us.i ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.us.us.i = load ptr, ptr %.2.i.i.i.i.i.i138.us.us.i, align 8
  %i.gx = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.us.us.i, %i.gt
  br i1 %i.gx, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i, label %.critedge.sink.split.i122.split.us.us.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i: ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i, %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i, %bb.z
  %.028.i.i.i.i.i.i141.us.us.i = phi ptr [ %.1.i.i.i.i.i.i145.us.us.i, %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i ], [ %.sroa.012.0.i.i.i, %bb.z ], [ %.2.i.i.i.i.i.i138.us.us.i, %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i ]
  %.not.i.i142.us.us.i = icmp eq ptr %.028.i.i.i.i.i.i141.us.us.i, %i.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  br i1 %.not.i.i142.us.us.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i, label %bb.ab

bb.ab:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0171.0.us.us.i, i64 16 ; 3 uses
  %.not.i143.us.us.i = icmp eq ptr %i.gy, %i.fi
  br i1 %.not.i143.us.us.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i, label %.lr.ph.i117.us.i, !llvm.loop !2483

.critedge.sink.split.i122.split.us.us.i:          ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i, %._crit_edge.i.i.i.i.i.i134.us.us.i, %.lr.ph.i117.us.i
  %.sroa.0171.0.us.us.lcssa.i = phi ptr [ %.sroa.0171.0.us.us.i, %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i ], [ %i.gq, %._crit_edge.i.i.i.i.i.i134.us.us.i ], [ %.sroa.0171.0.us.us.i, %.lr.ph.i117.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i: ; preds = %bb.ab, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i, %.critedge.sink.split.i122.split.us.us.i, %.lr.ph.i.i.i.i.us.i
  %.sroa.0171.1.us.i = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.us.i ], [ %.sroa.0171.0.us.us.lcssa.i, %.critedge.sink.split.i122.split.us.us.i ], [ %.sroa.0171.0.us.us.i, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i ], [ %i.gy, %bb.ab ] ; 2 uses
  %i.gz = add nuw nsw i64 %.03.i.i.i.i.us.i, 1    ; 2 uses
  %.not.i.i.i.i.us.i = icmp eq ptr %.sroa.0171.1.us.i, %i.fi
  br i1 %.not.i.i.i.i.us.i, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.us.i, !llvm.loop !2486

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.preheader.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i
  %i.ha = phi ptr [ %.sroa.0171.0.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i ], [ %.sroa.0163.1.i, %.lr.ph.i.i.i.i.preheader.i ]
  %.03.i.i.i.i.i = phi i64 [ %i.hy, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %.not12.i116.i = icmp eq ptr %i.hb, %i.fi
  br i1 %.not12.i116.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i.thread, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %bb.aj
  %.sroa.0171.0.i = phi ptr [ %i.hw, %bb.aj ], [ %i.hb, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.hc = load <2 x ptr>, ptr %.sroa.0171.0.i, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  store <2 x ptr> %i.hc, ptr %41, align 16
  %i.hd = load i32, ptr %i.dp, align 4
  %.not.i.i.i121.i = icmp ult i32 %i.hd, 16777216
  br i1 %.not.i.i.i121.i, label %.lr.ph.i.i.i.i.i.i125.i, label %.critedge.sink.split.i122.split.i

.lr.ph.i.i.i.i.i.i125.i:                          ; preds = %.lr.ph.i117.i
  %i.he = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %41) #30 ; 7 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i125.i
  %.059.i.i.i.i.i.i127.i = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.i125.i ], [ %i.hn, %bb.ag ] ; 2 uses
  %.02958.i.i.i.i.i.i128.i = phi ptr [ %.sroa.012.0.i.i.i, %.lr.ph.i.i.i.i.i.i125.i ], [ %i.hm, %bb.ag ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i129.i = load ptr, ptr %.02958.i.i.i.i.i.i128.i, align 8
  %i.hf = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i129.i, %i.he
  br i1 %i.hf, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i.i.i130.i = load ptr, ptr %i.hg, align 8
  %i.hh = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i.i.i130.i, %i.he
  br i1 %i.hh, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit952, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hi = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i.i.i131.i = load ptr, ptr %i.hi, align 8
  %i.hj = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i.i.i131.i, %i.he
  br i1 %i.hj, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit950, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hk = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i.i.i132.i = load ptr, ptr %i.hk, align 8
  %i.hl = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i.i.i132.i, %i.he
  br i1 %i.hl, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hm = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i, i64 32
  %i.hn = add nsw i64 %.059.i.i.i.i.i.i127.i, -1
  %i.ho = icmp sgt i64 %.059.i.i.i.i.i.i127.i, 1
  br i1 %i.ho, label %bb.ac, label %._crit_edge.loopexit.i.i.i.i.i.i133.i, !llvm.loop !2482

._crit_edge.loopexit.i.i.i.i.i.i133.i:            ; preds = %bb.ag
  switch i64 %i.gm, label %._crit_edge.loopexit.i.i.i.i.i.i133.i.unreachabledefault [
    i64 3, label %bb.ah
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i144.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i137.i
    i64 0, label %.critedge.sink.split.i122.split.i
  ]

bb.ah:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i133.i
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.i = load ptr, ptr %scevgep.i.i.i.i.i.i126.i, align 8
  %i.hp = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.i, %i.he
  br i1 %i.hp, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i, label %._crit_edge._crit_edge.i.i.i.i.i.i144.i

._crit_edge._crit_edge.i.i.i.i.i.i144.i:          ; preds = %bb.ah, %._crit_edge.loopexit.i.i.i.i.i.i133.i
  %.1.i.i.i.i.i.i145.i = phi ptr [ %scevgep.i.i.i.i.i.i126.i, %._crit_edge.loopexit.i.i.i.i.i.i133.i ], [ %i.gn, %bb.ah ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.i = load ptr, ptr %.1.i.i.i.i.i.i145.i, align 8
  %i.hq = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.i, %i.he
  br i1 %i.hq, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i144.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i145.i, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i137.i

._crit_edge._crit_edge65.i.i.i.i.i.i137.i:        ; preds = %bb.ai, %._crit_edge.loopexit.i.i.i.i.i.i133.i
  %.2.i.i.i.i.i.i138.i = phi ptr [ %i.hr, %bb.ai ], [ %scevgep.i.i.i.i.i.i126.i, %._crit_edge.loopexit.i.i.i.i.i.i133.i ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.i = load ptr, ptr %.2.i.i.i.i.i.i138.i, align 8
  %i.hs = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.i, %i.he
  br i1 %i.hs, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i, label %.critedge.sink.split.i122.split.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit: ; preds = %bb.af
  %i.ht = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i, i64 24
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit950: ; preds = %bb.ae
  %i.hu = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i, i64 16
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit952: ; preds = %bb.ad
  %i.hv = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i, i64 8
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i: ; preds = %bb.ac, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit950, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit952, %._crit_edge._crit_edge65.i.i.i.i.i.i137.i, %._crit_edge._crit_edge.i.i.i.i.i.i144.i, %bb.ah
  %.028.i.i.i.i.i.i141.i = phi ptr [ %.1.i.i.i.i.i.i145.i, %._crit_edge._crit_edge.i.i.i.i.i.i144.i ], [ %scevgep.i.i.i.i.i.i126.i, %bb.ah ], [ %.2.i.i.i.i.i.i138.i, %._crit_edge._crit_edge65.i.i.i.i.i.i137.i ], [ %i.hv, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit952 ], [ %i.hu, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit950 ], [ %i.ht, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i.loopexit.split.loop.exit ], [ %.02958.i.i.i.i.i.i128.i, %bb.ac ]
  %.not.i.i142.i = icmp eq ptr %.028.i.i.i.i.i.i141.i, %i.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  br i1 %.not.i.i142.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i, label %bb.aj

bb.aj:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0171.0.i, i64 16 ; 2 uses
  %.not.i143.i = icmp eq ptr %i.hw, %i.fi
  br i1 %.not.i143.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i.thread, label %.lr.ph.i117.i, !llvm.loop !2483

._crit_edge.loopexit.i.i.i.i.i.i133.i.unreachabledefault: ; preds = %._crit_edge.loopexit.i.i.i.i.i.i133.i
  unreachable

default.unreachable:                              ; preds = %._crit_edge.loopexit.i.i.i.i.i.i97.i, %._crit_edge.loopexit.i.i.i.i.i.i133.i196, %._crit_edge.loopexit.i.i.i.i.i.i97.i145, %._crit_edge.loopexit.i.i.i.i.i.i133.i433, %._crit_edge.loopexit.i.i.i.i.i.i97.i382
  unreachable

.critedge.sink.split.i122.split.i:                ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i137.i, %._crit_edge.loopexit.i.i.i.i.i.i133.i, %.lr.ph.i117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.aj
  %i.hx = add nuw nsw i64 %.03.i.i.i.i.i, 1
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i: ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i, %.critedge.sink.split.i122.split.i
  %i.hy = add nuw nsw i64 %.03.i.i.i.i.i, 1       ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0171.0.i, %i.fi
  br i1 %.not.i.i.i.i.i, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2486

_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i: ; preds = %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i.thread
  %.us-phi211.i = phi i64 [ %i.gz, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i ], [ %i.hx, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i.thread ], [ %i.hy, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i ]
  %.pre.i.i.i = load i32, ptr %i.aw, align 8, !tbaa !84, !alias.scope !2512
  %.pre4.i.i.i = load i32, ptr %i.ax, align 4, !tbaa !85, !alias.scope !2512
  %i.hz = zext i32 %.pre4.i.i.i to i64
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i

_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i
  %.not2.i.i.i.i289.i = phi i1 [ true, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i ], [ false, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i ], [ true, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i ]
  %.sroa.0163.1288.i = phi ptr [ %i.fi, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i ], [ %.sroa.0163.1.i, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i ], [ %i.fi, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i ] ; 2 uses
  %i.ia = phi i64 [ 3, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i ], [ %i.hz, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i ], [ 3, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i ]
  %i.ib = phi i32 [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i ], [ %.pre.i.i.i, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i ], [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i ], [ %.us-phi211.i, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i ], [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i ] ; 2 uses
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = add i64 %.0.lcssa.i.i.i.i.i, %i.ic      ; 2 uses
  %i.ie = icmp ugt i64 %i.id, %i.ia
  br i1 %i.ie, label %bb.ak, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.ak:                                            ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %45, ptr noundef nonnull %i.av, i64 noundef %i.id, i64 noundef 16) #30
  %.pre.i.i.i.i = load i32, ptr %i.aw, align 8, !tbaa !84, !alias.scope !2512 ; 2 uses
  %.pre18.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.ak, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %i.ic, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i ], [ %.pre18.i.i.i.i, %bb.ak ]
  %i.if = phi i32 [ %i.ib, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.ak ]
  %.pre253.i = load ptr, ptr %45, align 8, !tbaa !103 ; 2 uses
  br i1 %.not2.i.i.i.i289.i, label %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %.pre253.i, i64 %.pre-phi.i.i.i.i ; 2 uses
  %.idx4.i.i.i87.i = shl nuw nsw i64 %.sroa.6.0.i.i.i, 3 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 %.idx4.i.i.i87.i ; 2 uses
  %i.ii = lshr i64 %.sroa.6.0.i.i.i, 2            ; 2 uses
  %.not.i1.i.i88.i = icmp eq i64 %i.ii, 0
  %i.ij = and i64 %.idx4.i.i.i87.i, 9223372036854775776
  %scevgep.i.i.i.i.i.i90.i = getelementptr i8, ptr %.sroa.012.0.i.i.i, i64 %i.ij ; 5 uses
  %i.ik = and i64 %.sroa.6.0.i.i.i, 3
  %i.il = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i90.i, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 8
  br i1 %.not.i1.i.i88.i, label %.lr.ph.i.i.i.i.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i:                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i
  %i.in = phi ptr [ %.sroa.0178.1.us.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i ], [ %.sroa.0163.1288.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.05.i.i.i.i.i.i.i.us.i = phi ptr [ %i.ix, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i ], [ %i.ig, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i.i.i.i.i.us.i, ptr noundef nonnull align 8 dereferenceable(16) %i.in, i64 16, i1 false), !tbaa.struct !208
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 4 uses
  %.not12.i80.us.i = icmp eq ptr %i.io, %i.fi
  br i1 %.not12.i80.us.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i, label %.lr.ph.i81.us.i

.lr.ph.i81.us.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i, %bb.an
  %.sroa.0178.0.us.us.i = phi ptr [ %i.iw, %bb.an ], [ %i.io, %.lr.ph.i.i.i.i.i.i.i.us.i ] ; 5 uses
  %i.ip = load <2 x ptr>, ptr %.sroa.0178.0.us.us.i, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  store <2 x ptr> %i.ip, ptr %42, align 16
  %i.iq = load i32, ptr %i.dp, align 4
  %.not.i.i.i85.us.us.i = icmp ult i32 %i.iq, 16777216
  br i1 %.not.i.i.i85.us.us.i, label %._crit_edge.i.i.i.i.i.i98.us.us.i, label %.critedge.sink.split.i86.split.us.us.i

._crit_edge.i.i.i.i.i.i98.us.us.i:                ; preds = %.lr.ph.i81.us.i
  %i.ir = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %42) #30 ; 3 uses
  switch i64 %.sroa.6.0.i.i.i, label %.critedge.sink.split.i86.split.us.us.i [
    i64 3, label %bb.al
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i98.us.us.i
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.us.us.i = load ptr, ptr %.sroa.012.0.i.i.i, align 8
  %i.is = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.us.us.i, %i.ir
  br i1 %i.is, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i, label %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i

._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i:    ; preds = %bb.al, %._crit_edge.i.i.i.i.i.i98.us.us.i
  %.1.i.i.i.i.i.i109.us.us.i = phi ptr [ %.sroa.012.0.i.i.i, %._crit_edge.i.i.i.i.i.i98.us.us.i ], [ %i.im, %bb.al ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.us.us.i = load ptr, ptr %.1.i.i.i.i.i.i109.us.us.i, align 8
  %i.it = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.us.us.i, %i.ir
  br i1 %i.it, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i109.us.us.i, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i

._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i:  ; preds = %bb.am, %._crit_edge.i.i.i.i.i.i98.us.us.i
  %.2.i.i.i.i.i.i102.us.us.i = phi ptr [ %i.iu, %bb.am ], [ %.sroa.012.0.i.i.i, %._crit_edge.i.i.i.i.i.i98.us.us.i ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.us.us.i = load ptr, ptr %.2.i.i.i.i.i.i102.us.us.i, align 8
  %i.iv = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.us.us.i, %i.ir
  br i1 %i.iv, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i, label %.critedge.sink.split.i86.split.us.us.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i: ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i, %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i, %bb.al
  %.028.i.i.i.i.i.i105.us.us.i = phi ptr [ %.1.i.i.i.i.i.i109.us.us.i, %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i ], [ %.sroa.012.0.i.i.i, %bb.al ], [ %.2.i.i.i.i.i.i102.us.us.i, %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i ]
  %.not.i.i106.us.us.i = icmp eq ptr %.028.i.i.i.i.i.i105.us.us.i, %i.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  br i1 %.not.i.i106.us.us.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i, label %bb.an

bb.an:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0178.0.us.us.i, i64 16 ; 3 uses
  %.not.i107.us.us.i = icmp eq ptr %i.iw, %i.fi
  br i1 %.not.i107.us.us.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i, label %.lr.ph.i81.us.i, !llvm.loop !2483

.critedge.sink.split.i86.split.us.us.i:           ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i, %._crit_edge.i.i.i.i.i.i98.us.us.i, %.lr.ph.i81.us.i
  %.sroa.0178.0.us.us.lcssa.i = phi ptr [ %.sroa.0178.0.us.us.i, %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i ], [ %i.io, %._crit_edge.i.i.i.i.i.i98.us.us.i ], [ %.sroa.0178.0.us.us.i, %.lr.ph.i81.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i: ; preds = %bb.an, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i, %.critedge.sink.split.i86.split.us.us.i, %.lr.ph.i.i.i.i.i.i.i.us.i
  %.sroa.0178.1.us.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.i.i.us.i ], [ %.sroa.0178.0.us.us.lcssa.i, %.critedge.sink.split.i86.split.us.us.i ], [ %.sroa.0178.0.us.us.i, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i ], [ %i.iw, %bb.an ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.us.i, i64 16
  %.not.i.i.i.i.i.i.i.us.i = icmp eq ptr %.sroa.0178.1.us.i, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.us.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.us.i, !llvm.loop !2487

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i
  %i.iy = phi ptr [ %.sroa.0178.1.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i ], [ %.sroa.0163.1288.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.jv, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i ], [ %i.ig, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i64 16, i1 false), !tbaa.struct !208
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 3 uses
  %.not12.i80.i = icmp eq ptr %i.iz, %i.fi
  br i1 %.not12.i80.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i, label %.lr.ph.i81.i

.lr.ph.i81.i:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.av
  %.sroa.0178.0.i = phi ptr [ %i.ju, %bb.av ], [ %i.iz, %.lr.ph.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ja = load <2 x ptr>, ptr %.sroa.0178.0.i, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  store <2 x ptr> %i.ja, ptr %42, align 16
  %i.jb = load i32, ptr %i.dp, align 4
  %.not.i.i.i85.i = icmp ult i32 %i.jb, 16777216
  br i1 %.not.i.i.i85.i, label %.lr.ph.i.i.i.i.i.i89.i, label %.critedge.sink.split.i86.split.i

.lr.ph.i.i.i.i.i.i89.i:                           ; preds = %.lr.ph.i81.i
  %i.jc = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %42) #30 ; 7 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.as, %.lr.ph.i.i.i.i.i.i89.i
  %.059.i.i.i.i.i.i91.i = phi i64 [ %i.ii, %.lr.ph.i.i.i.i.i.i89.i ], [ %i.jl, %bb.as ] ; 2 uses
  %.02958.i.i.i.i.i.i92.i = phi ptr [ %.sroa.012.0.i.i.i, %.lr.ph.i.i.i.i.i.i89.i ], [ %i.jk, %bb.as ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i93.i = load ptr, ptr %.02958.i.i.i.i.i.i92.i, align 8
  %i.jd = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i93.i, %i.jc
  br i1 %i.jd, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.je = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i.i.i94.i = load ptr, ptr %i.je, align 8
  %i.jf = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i.i.i94.i, %i.jc
  br i1 %i.jf, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit960, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jg = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i.i.i95.i = load ptr, ptr %i.jg, align 8
  %i.jh = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i.i.i95.i, %i.jc
  br i1 %i.jh, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit958, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ji = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i.i.i96.i = load ptr, ptr %i.ji, align 8
  %i.jj = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i.i.i96.i, %i.jc
  br i1 %i.jj, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jk = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i, i64 32
  %i.jl = add nsw i64 %.059.i.i.i.i.i.i91.i, -1
  %i.jm = icmp sgt i64 %.059.i.i.i.i.i.i91.i, 1
  br i1 %i.jm, label %bb.ao, label %._crit_edge.loopexit.i.i.i.i.i.i97.i, !llvm.loop !2482

._crit_edge.loopexit.i.i.i.i.i.i97.i:             ; preds = %bb.as
  switch i64 %i.ik, label %default.unreachable [
    i64 3, label %bb.at
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i108.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i101.i
    i64 0, label %.critedge.sink.split.i86.split.i
  ]

bb.at:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i97.i
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.i = load ptr, ptr %scevgep.i.i.i.i.i.i90.i, align 8
  %i.jn = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.i, %i.jc
  br i1 %i.jn, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i, label %._crit_edge._crit_edge.i.i.i.i.i.i108.i

._crit_edge._crit_edge.i.i.i.i.i.i108.i:          ; preds = %bb.at, %._crit_edge.loopexit.i.i.i.i.i.i97.i
  %.1.i.i.i.i.i.i109.i = phi ptr [ %scevgep.i.i.i.i.i.i90.i, %._crit_edge.loopexit.i.i.i.i.i.i97.i ], [ %i.il, %bb.at ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.i = load ptr, ptr %.1.i.i.i.i.i.i109.i, align 8
  %i.jo = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.i, %i.jc
  br i1 %i.jo, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i108.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i109.i, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i101.i

._crit_edge._crit_edge65.i.i.i.i.i.i101.i:        ; preds = %bb.au, %._crit_edge.loopexit.i.i.i.i.i.i97.i
  %.2.i.i.i.i.i.i102.i = phi ptr [ %i.jp, %bb.au ], [ %scevgep.i.i.i.i.i.i90.i, %._crit_edge.loopexit.i.i.i.i.i.i97.i ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.i = load ptr, ptr %.2.i.i.i.i.i.i102.i, align 8
  %i.jq = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.i, %i.jc
  br i1 %i.jq, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i, label %.critedge.sink.split.i86.split.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit: ; preds = %bb.ar
  %i.jr = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i, i64 24
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit958: ; preds = %bb.aq
  %i.js = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i, i64 16
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit960: ; preds = %bb.ap
  %i.jt = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i, i64 8
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i: ; preds = %bb.ao, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit958, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit960, %._crit_edge._crit_edge65.i.i.i.i.i.i101.i, %._crit_edge._crit_edge.i.i.i.i.i.i108.i, %bb.at
  %.028.i.i.i.i.i.i105.i = phi ptr [ %.1.i.i.i.i.i.i109.i, %._crit_edge._crit_edge.i.i.i.i.i.i108.i ], [ %scevgep.i.i.i.i.i.i90.i, %bb.at ], [ %.2.i.i.i.i.i.i102.i, %._crit_edge._crit_edge65.i.i.i.i.i.i101.i ], [ %i.jt, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit960 ], [ %i.js, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit958 ], [ %i.jr, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i.loopexit.split.loop.exit ], [ %.02958.i.i.i.i.i.i92.i, %bb.ao ]
  %.not.i.i106.i = icmp eq ptr %.028.i.i.i.i.i.i105.i, %i.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  br i1 %.not.i.i106.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i, label %bb.av

bb.av:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0178.0.i, i64 16 ; 3 uses
  %.not.i107.i = icmp eq ptr %i.ju, %i.fi
  br i1 %.not.i107.i, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i, label %.lr.ph.i81.i, !llvm.loop !2483

.critedge.sink.split.i86.split.i:                 ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i101.i, %._crit_edge.loopexit.i.i.i.i.i.i97.i, %.lr.ph.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i: ; preds = %bb.av, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i, %.critedge.sink.split.i86.split.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0178.1.i = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0178.0.i, %.critedge.sink.split.i86.split.i ], [ %.sroa.0178.0.i, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i ], [ %i.ju, %bb.av ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0178.1.i, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2487

_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i: ; preds = %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i
  %.pre17.i.i.i.i = load i32, ptr %i.aw, align 8, !tbaa !84, !alias.scope !2512
  %.pre.i = load ptr, ptr %45, align 8, !tbaa !103
  br label %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i

_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.jw = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i ], [ %.pre253.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ]
  %i.jx = phi i32 [ %.pre17.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i ], [ %i.if, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ]
  %i.jy = trunc i64 %.0.lcssa.i.i.i.i.i to i32
  %i.jz = add i32 %i.jx, %i.jy                    ; 2 uses
  store i32 %i.jz, ptr %i.aw, align 8, !tbaa !84, !alias.scope !2512
  %i.ka = zext i32 %i.jz to i64
  %i.kb = call ptr @_ZN4mlir14DictionaryAttr3getEPNS_11MLIRContextEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef %i.fa, ptr %i.jw, i64 %i.ka) #30
  %i.kc = load ptr, ptr %45, align 8, !tbaa !103  ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.av
  br i1 %i.kd, label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i
  call void @free(ptr noundef %i.kc) #30
  br label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i: ; preds = %bb.aw, %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  %.pre254.i = load i32, ptr %i.dp, align 4
  br label %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i

_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i, %bb.m
  %i.ke = phi i32 [ %i.ez, %bb.m ], [ %.pre254.i, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i ] ; 3 uses
  %.sroa.0.0.i36.i = phi ptr [ %.sroa.0.0.copyload.i35.i, %bb.m ], [ %i.kb, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i ]
  store ptr %.sroa.0156.0.i, ptr %52, align 8, !tbaa !135
  store ptr %.sroa.6.0.i, ptr %i.ay, align 8, !tbaa !185
  %i.kf = and i32 %i.ke, 8388607                  ; 2 uses
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %_ZN4mlir9Operation10getRegionsEv.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i
  %i.kh = zext nneg i32 %i.kf to i64
  %i.ki = lshr i32 %i.ke, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.ki, 1
  %i.kj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.kj
  %i.kl = lshr i32 %i.ke, 21
  %i.km = and i32 %i.kl, 2040
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kn
  %i.kp = load i32, ptr %i.dt, align 8, !tbaa !199
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [32 x i8], ptr %i.ko, i64 %i.kq
  br label %_ZN4mlir9Operation10getRegionsEv.exit.i

_ZN4mlir9Operation10getRegionsEv.exit.i:          ; preds = %bb.ax, %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i
  %.sroa.0.0.i37.i = phi ptr [ %i.kr, %bb.ax ], [ null, %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i ]
  %.sroa.4.0.i38.i = phi i64 [ %i.kh, %bb.ax ], [ 0, %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i ]
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr %.sroa.0.0.i37.i, i64 %.sroa.4.0.i38.i) #30
  %i.ks = load i64, ptr %51, align 8
  %i.kt = load i64, ptr %i.az, align 8
  %i.ku = call i8 @_ZN4test26OpWithInferTypeInterfaceOp16inferReturnTypesEPN4mlir11MLIRContextESt8optionalINS1_8LocationEENS1_10ValueRangeENS1_14DictionaryAttrENS1_11PropertyRefENS1_11RegionRangeERN4llvm15SmallVectorImplINS1_4TypeEEE(ptr noundef %i.cu, ptr undef, i8 0, i64 %i.ks, i64 %i.kt, ptr %.sroa.0.0.i36.i, ptr noundef nonnull byval(%"class.mlir::PropertyRef") align 8 %52, ptr noundef nonnull byval(%"class.mlir::RegionRange") align 8 %53, ptr noundef nonnull align 8 dereferenceable(16) %50) #30
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN4mlir9Operation10getRegionsEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #30
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %54, ptr %i.dc, ptr nonnull @.str.366, i64 26) #30
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr nonnull align 8 dereferenceable(16) %49, i64 2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #30
  %i.kw = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cs) #30
  store ptr %i.kw, ptr %44, align 8
  %i.kx = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  %i.ky = extractvalue { ptr, i64 } %i.kx, 0
  %i.kz = extractvalue { ptr, i64 } %i.kx, 1
  %i.la = load i64, ptr %55, align 8
  %i.lb = load i64, ptr %i.ba, align 8
  call void @_ZN4test26OpWithInferTypeInterfaceOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(304) %54, i64 %i.la, i64 %i.lb, ptr %i.ky, i64 %i.kz) #30
  %i.lc = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(304) %54) #30 ; 0 uses
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %54) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #30
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN4mlir9Operation10getRegionsEv.exit.i
  %i.ld = load ptr, ptr %50, align 8, !tbaa !103  ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.as
  br i1 %i.le, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef %i.ld) #30
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count251.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.k, !llvm.loop !2488

_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test26OpWithInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit: ; preds = %._crit_edge.i, %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  %i.lf = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test26OpWithInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit
  %.0.i.i26 = phi ptr [ %i.cs, %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test26OpWithInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit ], [ %i.li, %bb.bc ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.0.i.i26, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !201 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i27, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i31, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i28

_ZN4mlir9Operation11getParentOpEv.exit.i.i28:     ; preds = %bb.bb
  %i.li = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.lh) #30 ; 4 uses
  %.not.i.i29 = icmp eq ptr %i.li, null
  br i1 %.not.i.i29, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i31, label %bb.bc

bb.bc:                                            ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i28
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i30 = load ptr, ptr %i.lj, align 8, !tbaa !123
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i30, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !126
  %i.lm = icmp eq ptr %i.ll, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  br i1 %i.lm, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i31, label %bb.bb, !llvm.loop !2476

_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i31: ; preds = %bb.bc, %_ZN4mlir9Operation11getParentOpEv.exit.i.i28, %bb.bb
  %.sroa.0.0.i.i32 = phi ptr [ %i.li, %bb.bc ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit.i.i28 ], [ null, %bb.bb ]
  store ptr %.sroa.0.0.i.i32, ptr %32, align 8
  %i.ln = call ptr @_ZN4mlir10UnknownLoc3getEPNS_11MLIRContextE(ptr noundef %i.lf) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.lo = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #30
  store ptr %i.lo, ptr %33, align 8, !tbaa !145
  store i64 0, ptr %i.bb, align 8
  %i.lp = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cs) #30 ; 0 uses
  %i.lq = load ptr, ptr %i.de, align 8, !tbaa !201
  %i.lr = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cs) #30
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !200
  store ptr %i.lq, ptr %i.bc, align 8, !tbaa !202
  store ptr %i.lt, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  %i.lu = call ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #30
  store ptr %i.lu, ptr %31, align 8
  %i.lv = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  %i.lw = extractvalue { ptr, i64 } %i.lv, 1      ; 2 uses
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %.preheader.lr.ph.i33, label %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test33OpWithInferTypeAdaptorInterfaceOpEEEvPN4mlir9OperationE.exit

.preheader.lr.ph.i33:                             ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i31
  %i.lz = getelementptr inbounds nuw i8, ptr %i.cs, i64 44 ; 8 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.cs, i64 56 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %wide.trip.count251.i35 = and i64 %i.lw, 2147483647 ; 2 uses
  br label %.preheader.i36

.preheader.i36:                                   ; preds = %._crit_edge.i61, %.preheader.lr.ph.i33
  %indvars.iv248.i37 = phi i64 [ 0, %.preheader.lr.ph.i33 ], [ %indvars.iv.next249.i62, %._crit_edge.i61 ] ; 2 uses
  br label %bb.bd

._crit_edge.i61:                                  ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i58
  %indvars.iv.next249.i62 = add nuw nsw i64 %indvars.iv248.i37, 1 ; 2 uses
  %exitcond252.not.i63 = icmp eq i64 %indvars.iv.next249.i62, %wide.trip.count251.i35
  br i1 %exitcond252.not.i63, label %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test33OpWithInferTypeAdaptorInterfaceOpEEEvPN4mlir9OperationE.exit, label %.preheader.i36, !llvm.loop !2489

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i58, %.preheader.i36
  %indvars.iv.i38 = phi i64 [ 0, %.preheader.i36 ], [ %indvars.iv.next.i59, %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i58 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  %i.me = load ptr, ptr %32, align 8, !tbaa !159  ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 44
  %i.mg = load i32, ptr %i.mf, align 4            ; 3 uses
  %i.mh = and i32 %i.mg, 8388607
  %i.mi = icmp ne i32 %i.mh, 0
  call void @llvm.assume(i1 %i.mi)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 64
  %i.mk = lshr i32 %i.mg, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i39 = and i32 %i.mk, 1
  %i.ml = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i39 to i64
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.ml
  %i.mn = lshr i32 %i.mg, 21
  %i.mo = and i32 %i.mn, 2040
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !199
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %i.mt ; 3 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !203
  %i.mw = icmp ne ptr %i.mu, %i.mv
  call void @llvm.assume(i1 %i.mw)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !200
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 48
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !206 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv248.i37
  %.sroa.0.0.copyload.i.i.i40 = load ptr, ptr %i.nb, align 8
  store ptr %.sroa.0.0.copyload.i.i.i40, ptr %34, align 8, !tbaa !108
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv.i38
  %.sroa.0.0.copyload.i.i31.i41 = load ptr, ptr %i.nc, align 8
  store ptr %.sroa.0.0.copyload.i.i31.i41, ptr %i.be, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store ptr %i.bf, ptr %35, align 8, !tbaa !103
  store i32 0, ptr %i.bg, align 8, !tbaa !84
  store i32 2, ptr %i.bh, align 4, !tbaa !85
  %i.nd = load i32, ptr %i.lz, align 4            ; 2 uses
  %.not.i32.i42 = icmp ult i32 %i.nd, 16777216
  br i1 %.not.i32.i42, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i47, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i43

_ZN4mlir9Operation20getPropertiesStorageEv.exit.i43: ; preds = %bb.bd
  %i.ne = load ptr, ptr %i.ma, align 8, !tbaa !150
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 112
  %.sroa.0.0.copyload.i.i.i.i44 = load ptr, ptr %i.nf, align 8, !tbaa !135 ; 2 uses
  %i.ng = lshr i32 %i.nd, 23
  %.lobit.i.i.i.i.i.i.i.i45 = and i32 %i.ng, 1
  %i.nh = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i45 to i64
  %i.ni = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.nh
  %.not.i46 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i44, @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE
  br i1 %.not.i46, label %bb.be, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i47

_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i47: ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i43, %bb.bd
  br label %bb.be

bb.be:                                            ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i47, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i43
  %.sroa.6.0.i48 = phi ptr [ null, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i47 ], [ %i.ni, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i43 ]
  %.sroa.0156.0.i49 = phi ptr [ @_ZN4mlir6detail14TypeIDResolverIvvE2idE, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i47 ], [ %.sroa.0.0.copyload.i.i.i.i44, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i43 ]
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr nonnull align 8 dereferenceable(16) %34, i64 2) #30
  %i.nj = load i32, ptr %i.lz, align 4            ; 2 uses
  %.not.i.i34.i50 = icmp ult i32 %i.nj, 16777216
  br i1 %.not.i.i34.i50, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.0.0.copyload.i35.i51 = load ptr, ptr %i.mc, align 8
  br label %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i52

bb.bg:                                            ; preds = %bb.be
  %i.nk = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  %.sroa.0.0.copyload.i.i.i1.i.i64 = load ptr, ptr %i.ma, align 8, !tbaa !123, !noalias !2513 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.i.i64, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !126, !noalias !2513
  %.not.i.i.not.i.i.i65 = icmp eq ptr %i.nm, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.i.not.i.i.i65, label %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i69, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.i.i64, i64 96
  %.sroa.0.0.copyload.i.i6.i.i.i66 = load ptr, ptr %i.nn, align 8, !tbaa !2510, !noalias !2513
  %.sroa.2.0..sroa_idx.i.i.i.i.i67 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.i.i64, i64 104
  %.sroa.2.0.copyload.i.i.i.i.i68 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i67, align 8, !tbaa !81, !noalias !2513
  %i.no = freeze i64 %.sroa.2.0.copyload.i.i.i.i.i68
  br label %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i69

_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i69: ; preds = %bb.bh, %bb.bg
  %.sroa.6.0.i.i.i70 = phi i64 [ %i.no, %bb.bh ], [ 0, %bb.bg ] ; 12 uses
  %.sroa.012.0.i.i.i71 = phi ptr [ %.sroa.0.0.copyload.i.i6.i.i.i66, %bb.bh ], [ null, %bb.bg ] ; 20 uses
  %i.np = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mc) #30, !noalias !2513 ; 2 uses
  %i.nq = extractvalue { ptr, i64 } %i.np, 0      ; 3 uses
  %i.nr = extractvalue { ptr, i64 } %i.np, 1      ; 2 uses
  %.idx.i72 = shl nuw nsw i64 %i.nr, 4
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.idx.i72 ; 16 uses
  %.not12.i44.i73 = icmp eq i64 %i.nr, 0
  br i1 %.not12.i44.i73, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84, label %.lr.ph.i45.i74

.lr.ph.i45.i74:                                   ; preds = %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i69
  %.idx4.i.i.i51.i75 = shl nuw nsw i64 %.sroa.6.0.i.i.i70, 3 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i71, i64 %.idx4.i.i.i51.i75
  %i.nu = lshr i64 %.sroa.6.0.i.i.i70, 2          ; 2 uses
  %.not.i1.i.i52.i76 = icmp eq i64 %i.nu, 0
  %i.nv = and i64 %.idx4.i.i.i51.i75, 9223372036854775776
  %scevgep.i.i.i.i.i.i54.i77 = getelementptr i8, ptr %.sroa.012.0.i.i.i71, i64 %i.nv
  %i.nw = and i64 %.sroa.6.0.i.i.i70, 3
  br label %bb.bi

bb.bi:                                            ; preds = %bb.br, %.lr.ph.i45.i74
  %.sroa.0163.0.i78 = phi ptr [ %i.nq, %.lr.ph.i45.i74 ], [ %i.os, %bb.br ] ; 4 uses
  %i.nx = load <2 x ptr>, ptr %.sroa.0163.0.i78, align 8, !tbaa !128, !noalias !2514
  call void @llvm.lifetime.start.p0(ptr nonnull %28), !noalias !2514
  store <2 x ptr> %i.nx, ptr %28, align 16, !noalias !2514
  %i.ny = load i32, ptr %i.lz, align 4, !noalias !2514
  %.not.i.i.i49.i82 = icmp ult i32 %i.ny, 16777216
  br i1 %.not.i.i.i49.i82, label %bb.bj, label %.critedge.sink.split.i50.i83

bb.bj:                                            ; preds = %bb.bi
  %i.nz = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #30, !noalias !2514 ; 7 uses
  br i1 %.not.i1.i.i52.i76, label %._crit_edge.i.i.i.i.i.i62.i245, label %.lr.ph.i.i.i.i.i.i53.i238

.lr.ph.i.i.i.i.i.i53.i238:                        ; preds = %bb.bj, %bb.bn
  %.059.i.i.i.i.i.i55.i239 = phi i64 [ %i.oi, %bb.bn ], [ %i.nu, %bb.bj ] ; 2 uses
  %.02958.i.i.i.i.i.i56.i240 = phi ptr [ %i.oh, %bb.bn ], [ %.sroa.012.0.i.i.i71, %bb.bj ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i57.i241 = load ptr, ptr %.02958.i.i.i.i.i.i56.i240, align 8, !noalias !2514
  %i.oa = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i57.i241, %i.nz
  br i1 %i.oa, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i.i.i53.i238
  %i.ob = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i240, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i.i.i58.i242 = load ptr, ptr %i.ob, align 8, !noalias !2514
  %i.oc = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i.i.i58.i242, %i.nz
  br i1 %i.oc, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit968, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.od = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i240, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i.i.i59.i243 = load ptr, ptr %i.od, align 8, !noalias !2514
  %i.oe = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i.i.i59.i243, %i.nz
  br i1 %i.oe, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit966, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.of = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i240, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i.i.i60.i244 = load ptr, ptr %i.of, align 8, !noalias !2514
  %i.og = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i.i.i60.i244, %i.nz
  br i1 %i.og, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.oh = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i240, i64 32
  %i.oi = add nsw i64 %.059.i.i.i.i.i.i55.i239, -1
  %i.oj = icmp sgt i64 %.059.i.i.i.i.i.i55.i239, 1
  br i1 %i.oj, label %.lr.ph.i.i.i.i.i.i53.i238, label %._crit_edge.i.i.i.i.i.i62.i245, !llvm.loop !2482

._crit_edge.i.i.i.i.i.i62.i245:                   ; preds = %bb.bn, %bb.bj
  %.pre-phi68.i.i.i.i.i.i63.i246 = phi i64 [ %.sroa.6.0.i.i.i70, %bb.bj ], [ %i.nw, %bb.bn ]
  %.029.lcssa.i.i.i.i.i.i64.i247 = phi ptr [ %.sroa.012.0.i.i.i71, %bb.bj ], [ %scevgep.i.i.i.i.i.i54.i77, %bb.bn ] ; 5 uses
  switch i64 %.pre-phi68.i.i.i.i.i.i63.i246, label %.critedge.sink.split.i50.i83 [
    i64 3, label %bb.bo
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i72.i256
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i65.i248
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i.i.i62.i245
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i75.i259 = load ptr, ptr %.029.lcssa.i.i.i.i.i.i64.i247, align 8, !noalias !2514
  %i.ok = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i75.i259, %i.nz
  br i1 %i.ok, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ol = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i64.i247, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i72.i256

._crit_edge._crit_edge.i.i.i.i.i.i72.i256:        ; preds = %bb.bp, %._crit_edge.i.i.i.i.i.i62.i245
  %.1.i.i.i.i.i.i73.i257 = phi ptr [ %i.ol, %bb.bp ], [ %.029.lcssa.i.i.i.i.i.i64.i247, %._crit_edge.i.i.i.i.i.i62.i245 ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i74.i258 = load ptr, ptr %.1.i.i.i.i.i.i73.i257, align 8, !noalias !2514
  %i.om = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i74.i258, %i.nz
  br i1 %i.om, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i72.i256
  %i.on = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i73.i257, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i65.i248

._crit_edge._crit_edge65.i.i.i.i.i.i65.i248:      ; preds = %bb.bq, %._crit_edge.i.i.i.i.i.i62.i245
  %.2.i.i.i.i.i.i66.i249 = phi ptr [ %i.on, %bb.bq ], [ %.029.lcssa.i.i.i.i.i.i64.i247, %._crit_edge.i.i.i.i.i.i62.i245 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i67.i250 = load ptr, ptr %.2.i.i.i.i.i.i66.i249, align 8, !noalias !2514
  %i.oo = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i67.i250, %i.nz
  br i1 %i.oo, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251, label %.critedge.sink.split.i50.i83

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit: ; preds = %bb.bm
  %i.op = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i240, i64 24
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit966: ; preds = %bb.bl
  %i.oq = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i240, i64 16
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit968: ; preds = %bb.bk
  %i.or = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i240, i64 8
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251: ; preds = %.lr.ph.i.i.i.i.i.i53.i238, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit966, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit968, %._crit_edge._crit_edge65.i.i.i.i.i.i65.i248, %._crit_edge._crit_edge.i.i.i.i.i.i72.i256, %bb.bo
  %.028.i.i.i.i.i.i69.i252 = phi ptr [ %.1.i.i.i.i.i.i73.i257, %._crit_edge._crit_edge.i.i.i.i.i.i72.i256 ], [ %.029.lcssa.i.i.i.i.i.i64.i247, %bb.bo ], [ %.2.i.i.i.i.i.i66.i249, %._crit_edge._crit_edge65.i.i.i.i.i.i65.i248 ], [ %i.or, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit968 ], [ %i.oq, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit966 ], [ %i.op, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251.loopexit.split.loop.exit ], [ %.02958.i.i.i.i.i.i56.i240, %.lr.ph.i.i.i.i.i.i53.i238 ]
  %.not.i.i70.i253 = icmp eq ptr %.028.i.i.i.i.i.i69.i252, %i.nt
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !2514
  br i1 %.not.i.i70.i253, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84, label %bb.br

bb.br:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0163.0.i78, i64 16 ; 2 uses
  %.not.i71.i254 = icmp eq ptr %i.os, %i.ns
  br i1 %.not.i71.i254, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i255, label %bb.bi, !llvm.loop !2483

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i255: ; preds = %bb.br
  store ptr %i.bi, ptr %30, align 8, !tbaa !103, !alias.scope !2515
  store i32 0, ptr %i.bj, align 8, !tbaa !84, !alias.scope !2515
  store i32 3, ptr %i.bk, align 4, !tbaa !85, !alias.scope !2515
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i108

.critedge.sink.split.i50.i83:                     ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i65.i248, %._crit_edge.i.i.i.i.i.i62.i245, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !2514
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84: ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251, %.critedge.sink.split.i50.i83, %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i69
  %.sroa.0163.1.i85 = phi ptr [ %i.nq, %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i69 ], [ %.sroa.0163.0.i78, %.critedge.sink.split.i50.i83 ], [ %.sroa.0163.0.i78, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i251 ] ; 4 uses
  store ptr %i.bi, ptr %30, align 8, !tbaa !103, !alias.scope !2515
  store i32 0, ptr %i.bj, align 8, !tbaa !84, !alias.scope !2515
  store i32 3, ptr %i.bk, align 4, !tbaa !85, !alias.scope !2515
  %.not2.i.i.i.i.i86 = icmp eq ptr %.sroa.0163.1.i85, %i.ns
  br i1 %.not2.i.i.i.i.i86, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i108, label %.lr.ph.i.i.i.i.preheader.i87

.lr.ph.i.i.i.i.preheader.i87:                     ; preds = %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84
  %.idx4.i.i.i123.i88 = shl nuw nsw i64 %.sroa.6.0.i.i.i70, 3 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i71, i64 %.idx4.i.i.i123.i88 ; 2 uses
  %i.ou = lshr i64 %.sroa.6.0.i.i.i70, 2          ; 2 uses
  %.not.i1.i.i124.i89 = icmp eq i64 %i.ou, 0
  %i.ov = and i64 %.idx4.i.i.i123.i88, 9223372036854775776
  %scevgep.i.i.i.i.i.i126.i90 = getelementptr i8, ptr %.sroa.012.0.i.i.i71, i64 %i.ov ; 5 uses
  %i.ow = and i64 %.sroa.6.0.i.i.i70, 3
  %i.ox = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i126.i90, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i71, i64 8
  br i1 %.not.i1.i.i124.i89, label %.lr.ph.i.i.i.i.us.i212, label %.lr.ph.i.i.i.i.i91

.lr.ph.i.i.i.i.us.i212:                           ; preds = %.lr.ph.i.i.i.i.preheader.i87, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223
  %i.oz = phi ptr [ %.sroa.0171.1.us.i224, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223 ], [ %.sroa.0163.1.i85, %.lr.ph.i.i.i.i.preheader.i87 ]
  %.03.i.i.i.i.us.i213 = phi i64 [ %i.pj, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223 ], [ 0, %.lr.ph.i.i.i.i.preheader.i87 ]
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16 ; 4 uses
  %.not12.i116.us.i214 = icmp eq ptr %i.pa, %i.ns
  br i1 %.not12.i116.us.i214, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223, label %.lr.ph.i117.us.i215

.lr.ph.i117.us.i215:                              ; preds = %.lr.ph.i.i.i.i.us.i212, %bb.bu
  %.sroa.0171.0.us.us.i216 = phi ptr [ %i.pi, %bb.bu ], [ %i.pa, %.lr.ph.i.i.i.i.us.i212 ] ; 5 uses
  %i.pb = load <2 x ptr>, ptr %.sroa.0171.0.us.us.i216, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store <2 x ptr> %i.pb, ptr %26, align 16
  %i.pc = load i32, ptr %i.lz, align 4
  %.not.i.i.i121.us.us.i220 = icmp ult i32 %i.pc, 16777216
  br i1 %.not.i.i.i121.us.us.i220, label %._crit_edge.i.i.i.i.i.i134.us.us.i226, label %.critedge.sink.split.i122.split.us.us.i221

._crit_edge.i.i.i.i.i.i134.us.us.i226:            ; preds = %.lr.ph.i117.us.i215
  %i.pd = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #30 ; 3 uses
  switch i64 %.sroa.6.0.i.i.i70, label %.critedge.sink.split.i122.split.us.us.i221 [
    i64 3, label %bb.bs
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i234
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i227
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i.i.i134.us.us.i226
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.us.us.i237 = load ptr, ptr %.sroa.012.0.i.i.i71, align 8
  %i.pe = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.us.us.i237, %i.pd
  br i1 %i.pe, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i230, label %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i234

._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i234: ; preds = %bb.bs, %._crit_edge.i.i.i.i.i.i134.us.us.i226
  %.1.i.i.i.i.i.i145.us.us.i235 = phi ptr [ %.sroa.012.0.i.i.i71, %._crit_edge.i.i.i.i.i.i134.us.us.i226 ], [ %i.oy, %bb.bs ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.us.us.i236 = load ptr, ptr %.1.i.i.i.i.i.i145.us.us.i235, align 8
  %i.pf = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.us.us.i236, %i.pd
  br i1 %i.pf, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i230, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i234
  %i.pg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i145.us.us.i235, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i227

._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i227: ; preds = %bb.bt, %._crit_edge.i.i.i.i.i.i134.us.us.i226
  %.2.i.i.i.i.i.i138.us.us.i228 = phi ptr [ %i.pg, %bb.bt ], [ %.sroa.012.0.i.i.i71, %._crit_edge.i.i.i.i.i.i134.us.us.i226 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.us.us.i229 = load ptr, ptr %.2.i.i.i.i.i.i138.us.us.i228, align 8
  %i.ph = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.us.us.i229, %i.pd
  br i1 %i.ph, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i230, label %.critedge.sink.split.i122.split.us.us.i221

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i230: ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i227, %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i234, %bb.bs
  %.028.i.i.i.i.i.i141.us.us.i231 = phi ptr [ %.1.i.i.i.i.i.i145.us.us.i235, %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i234 ], [ %.sroa.012.0.i.i.i71, %bb.bs ], [ %.2.i.i.i.i.i.i138.us.us.i228, %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i227 ]
  %.not.i.i142.us.us.i232 = icmp eq ptr %.028.i.i.i.i.i.i141.us.us.i231, %i.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br i1 %.not.i.i142.us.us.i232, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223, label %bb.bu

bb.bu:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i230
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0171.0.us.us.i216, i64 16 ; 3 uses
  %.not.i143.us.us.i233 = icmp eq ptr %i.pi, %i.ns
  br i1 %.not.i143.us.us.i233, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223, label %.lr.ph.i117.us.i215, !llvm.loop !2483

.critedge.sink.split.i122.split.us.us.i221:       ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i227, %._crit_edge.i.i.i.i.i.i134.us.us.i226, %.lr.ph.i117.us.i215
  %.sroa.0171.0.us.us.lcssa.i222 = phi ptr [ %.sroa.0171.0.us.us.i216, %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i227 ], [ %i.pa, %._crit_edge.i.i.i.i.i.i134.us.us.i226 ], [ %.sroa.0171.0.us.us.i216, %.lr.ph.i117.us.i215 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223: ; preds = %bb.bu, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i230, %.critedge.sink.split.i122.split.us.us.i221, %.lr.ph.i.i.i.i.us.i212
  %.sroa.0171.1.us.i224 = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.us.i212 ], [ %.sroa.0171.0.us.us.lcssa.i222, %.critedge.sink.split.i122.split.us.us.i221 ], [ %.sroa.0171.0.us.us.i216, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i230 ], [ %i.pi, %bb.bu ] ; 2 uses
  %i.pj = add nuw nsw i64 %.03.i.i.i.i.us.i213, 1 ; 2 uses
  %.not.i.i.i.i.us.i225 = icmp eq ptr %.sroa.0171.1.us.i224, %i.ns
  br i1 %.not.i.i.i.i.us.i225, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104, label %.lr.ph.i.i.i.i.us.i212, !llvm.loop !2486

.lr.ph.i.i.i.i.i91:                               ; preds = %.lr.ph.i.i.i.i.preheader.i87, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101
  %i.pk = phi ptr [ %.sroa.0171.0.i95, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101 ], [ %.sroa.0163.1.i85, %.lr.ph.i.i.i.i.preheader.i87 ]
  %.03.i.i.i.i.i92 = phi i64 [ %i.qi, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101 ], [ 0, %.lr.ph.i.i.i.i.preheader.i87 ] ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 2 uses
  %.not12.i116.i93 = icmp eq ptr %i.pl, %i.ns
  br i1 %.not12.i116.i93, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101.thread, label %.lr.ph.i117.i94

.lr.ph.i117.i94:                                  ; preds = %.lr.ph.i.i.i.i.i91, %bb.cc
  %.sroa.0171.0.i95 = phi ptr [ %i.qg, %bb.cc ], [ %i.pl, %.lr.ph.i.i.i.i.i91 ] ; 4 uses
  %i.pm = load <2 x ptr>, ptr %.sroa.0171.0.i95, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store <2 x ptr> %i.pm, ptr %26, align 16
  %i.pn = load i32, ptr %i.lz, align 4
  %.not.i.i.i121.i99 = icmp ult i32 %i.pn, 16777216
  br i1 %.not.i.i.i121.i99, label %.lr.ph.i.i.i.i.i.i125.i189, label %.critedge.sink.split.i122.split.i100

.lr.ph.i.i.i.i.i.i125.i189:                       ; preds = %.lr.ph.i117.i94
  %i.po = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #30 ; 7 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bz, %.lr.ph.i.i.i.i.i.i125.i189
  %.059.i.i.i.i.i.i127.i190 = phi i64 [ %i.ou, %.lr.ph.i.i.i.i.i.i125.i189 ], [ %i.px, %bb.bz ] ; 2 uses
  %.02958.i.i.i.i.i.i128.i191 = phi ptr [ %.sroa.012.0.i.i.i71, %.lr.ph.i.i.i.i.i.i125.i189 ], [ %i.pw, %bb.bz ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i129.i192 = load ptr, ptr %.02958.i.i.i.i.i.i128.i191, align 8
  %i.pp = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i129.i192, %i.po
  br i1 %i.pp, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pq = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i191, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i.i.i130.i193 = load ptr, ptr %i.pq, align 8
  %i.pr = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i.i.i130.i193, %i.po
  br i1 %i.pr, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit976, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ps = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i191, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i.i.i131.i194 = load ptr, ptr %i.ps, align 8
  %i.pt = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i.i.i131.i194, %i.po
  br i1 %i.pt, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit974, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pu = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i191, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i.i.i132.i195 = load ptr, ptr %i.pu, align 8
  %i.pv = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i.i.i132.i195, %i.po
  br i1 %i.pv, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pw = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i191, i64 32
  %i.px = add nsw i64 %.059.i.i.i.i.i.i127.i190, -1
  %i.py = icmp sgt i64 %.059.i.i.i.i.i.i127.i190, 1
  br i1 %i.py, label %bb.bv, label %._crit_edge.loopexit.i.i.i.i.i.i133.i196, !llvm.loop !2482

._crit_edge.loopexit.i.i.i.i.i.i133.i196:         ; preds = %bb.bz
  switch i64 %i.ow, label %default.unreachable [
    i64 3, label %bb.ca
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i144.i204
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i137.i197
    i64 0, label %.critedge.sink.split.i122.split.i100
  ]

bb.ca:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i133.i196
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.i207 = load ptr, ptr %scevgep.i.i.i.i.i.i126.i90, align 8
  %i.pz = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.i207, %i.po
  br i1 %i.pz, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200, label %._crit_edge._crit_edge.i.i.i.i.i.i144.i204

._crit_edge._crit_edge.i.i.i.i.i.i144.i204:       ; preds = %bb.ca, %._crit_edge.loopexit.i.i.i.i.i.i133.i196
  %.1.i.i.i.i.i.i145.i205 = phi ptr [ %scevgep.i.i.i.i.i.i126.i90, %._crit_edge.loopexit.i.i.i.i.i.i133.i196 ], [ %i.ox, %bb.ca ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.i206 = load ptr, ptr %.1.i.i.i.i.i.i145.i205, align 8
  %i.qa = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.i206, %i.po
  br i1 %i.qa, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i144.i204
  %i.qb = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i145.i205, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i137.i197

._crit_edge._crit_edge65.i.i.i.i.i.i137.i197:     ; preds = %bb.cb, %._crit_edge.loopexit.i.i.i.i.i.i133.i196
  %.2.i.i.i.i.i.i138.i198 = phi ptr [ %i.qb, %bb.cb ], [ %scevgep.i.i.i.i.i.i126.i90, %._crit_edge.loopexit.i.i.i.i.i.i133.i196 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.i199 = load ptr, ptr %.2.i.i.i.i.i.i138.i198, align 8
  %i.qc = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.i199, %i.po
  br i1 %i.qc, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200, label %.critedge.sink.split.i122.split.i100

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit: ; preds = %bb.by
  %i.qd = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i191, i64 24
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit974: ; preds = %bb.bx
  %i.qe = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i191, i64 16
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit976: ; preds = %bb.bw
  %i.qf = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i191, i64 8
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200: ; preds = %bb.bv, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit974, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit976, %._crit_edge._crit_edge65.i.i.i.i.i.i137.i197, %._crit_edge._crit_edge.i.i.i.i.i.i144.i204, %bb.ca
  %.028.i.i.i.i.i.i141.i201 = phi ptr [ %.1.i.i.i.i.i.i145.i205, %._crit_edge._crit_edge.i.i.i.i.i.i144.i204 ], [ %scevgep.i.i.i.i.i.i126.i90, %bb.ca ], [ %.2.i.i.i.i.i.i138.i198, %._crit_edge._crit_edge65.i.i.i.i.i.i137.i197 ], [ %i.qf, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit976 ], [ %i.qe, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit974 ], [ %i.qd, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200.loopexit.split.loop.exit ], [ %.02958.i.i.i.i.i.i128.i191, %bb.bv ]
  %.not.i.i142.i202 = icmp eq ptr %.028.i.i.i.i.i.i141.i201, %i.ot
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br i1 %.not.i.i142.i202, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101, label %bb.cc

bb.cc:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0171.0.i95, i64 16 ; 2 uses
  %.not.i143.i203 = icmp eq ptr %i.qg, %i.ns
  br i1 %.not.i143.i203, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101.thread, label %.lr.ph.i117.i94, !llvm.loop !2483

.critedge.sink.split.i122.split.i100:             ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i137.i197, %._crit_edge.loopexit.i.i.i.i.i.i133.i196, %.lr.ph.i117.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101.thread: ; preds = %.lr.ph.i.i.i.i.i91, %bb.cc
  %i.qh = add nuw nsw i64 %.03.i.i.i.i.i92, 1
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101: ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i200, %.critedge.sink.split.i122.split.i100
  %i.qi = add nuw nsw i64 %.03.i.i.i.i.i92, 1     ; 2 uses
  %.not.i.i.i.i.i103 = icmp eq ptr %.sroa.0171.0.i95, %i.ns
  br i1 %.not.i.i.i.i.i103, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104, label %.lr.ph.i.i.i.i.i91, !llvm.loop !2486

_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104: ; preds = %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101.thread
  %.us-phi211.i105 = phi i64 [ %i.pj, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i223 ], [ %i.qh, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101.thread ], [ %i.qi, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i101 ]
  %.pre.i.i.i106 = load i32, ptr %i.bj, align 8, !tbaa !84, !alias.scope !2515
  %.pre4.i.i.i107 = load i32, ptr %i.bk, align 4, !tbaa !85, !alias.scope !2515
  %i.qj = zext i32 %.pre4.i.i.i107 to i64
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i108

_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i108: ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i255
  %.not2.i.i.i.i289.i109 = phi i1 [ true, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84 ], [ false, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104 ], [ true, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i255 ]
  %.sroa.0163.1288.i110 = phi ptr [ %i.ns, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84 ], [ %.sroa.0163.1.i85, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104 ], [ %i.ns, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i255 ] ; 2 uses
  %i.qk = phi i64 [ 3, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84 ], [ %i.qj, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104 ], [ 3, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i255 ]
  %i.ql = phi i32 [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84 ], [ %.pre.i.i.i106, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104 ], [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i255 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i111 = phi i64 [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i84 ], [ %.us-phi211.i105, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i104 ], [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i255 ] ; 2 uses
  %i.qm = zext i32 %i.ql to i64                   ; 2 uses
  %i.qn = add i64 %.0.lcssa.i.i.i.i.i111, %i.qm   ; 2 uses
  %i.qo = icmp ugt i64 %i.qn, %i.qk
  br i1 %i.qo, label %bb.cd, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i112

bb.cd:                                            ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i108
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %30, ptr noundef nonnull %i.bi, i64 noundef %i.qn, i64 noundef 16) #30
  %.pre.i.i.i.i187 = load i32, ptr %i.bj, align 8, !tbaa !84, !alias.scope !2515 ; 2 uses
  %.pre18.i.i.i.i188 = zext i32 %.pre.i.i.i.i187 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i112

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i112: ; preds = %bb.cd, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i108
  %.pre-phi.i.i.i.i113 = phi i64 [ %i.qm, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i108 ], [ %.pre18.i.i.i.i188, %bb.cd ]
  %i.qp = phi i32 [ %i.ql, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i108 ], [ %.pre.i.i.i.i187, %bb.cd ]
  %.pre253.i114 = load ptr, ptr %30, align 8, !tbaa !103 ; 2 uses
  br i1 %.not2.i.i.i.i289.i109, label %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i135, label %.lr.ph.i.i.i.i.preheader.i.i.i.i115

.lr.ph.i.i.i.i.preheader.i.i.i.i115:              ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i112
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %.pre253.i114, i64 %.pre-phi.i.i.i.i113 ; 2 uses
  %.idx4.i.i.i87.i116 = shl nuw nsw i64 %.sroa.6.0.i.i.i70, 3 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i71, i64 %.idx4.i.i.i87.i116 ; 2 uses
  %i.qs = lshr i64 %.sroa.6.0.i.i.i70, 2          ; 2 uses
  %.not.i1.i.i88.i117 = icmp eq i64 %i.qs, 0
  %i.qt = and i64 %.idx4.i.i.i87.i116, 9223372036854775776
  %scevgep.i.i.i.i.i.i90.i118 = getelementptr i8, ptr %.sroa.012.0.i.i.i71, i64 %i.qt ; 5 uses
  %i.qu = and i64 %.sroa.6.0.i.i.i70, 3
  %i.qv = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i90.i118, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i71, i64 8
  br i1 %.not.i1.i.i88.i117, label %.lr.ph.i.i.i.i.i.i.i.us.i161, label %.lr.ph.i.i.i.i.i.i.i.i119

.lr.ph.i.i.i.i.i.i.i.us.i161:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i115, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i172
  %i.qx = phi ptr [ %.sroa.0178.1.us.i173, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i172 ], [ %.sroa.0163.1288.i110, %.lr.ph.i.i.i.i.preheader.i.i.i.i115 ] ; 2 uses
  %.05.i.i.i.i.i.i.i.us.i162 = phi ptr [ %i.rh, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i172 ], [ %i.qq, %.lr.ph.i.i.i.i.preheader.i.i.i.i115 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i.i.i.i.i.us.i162, ptr noundef nonnull align 8 dereferenceable(16) %i.qx, i64 16, i1 false), !tbaa.struct !208
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16 ; 4 uses
  %.not12.i80.us.i163 = icmp eq ptr %i.qy, %i.ns
  br i1 %.not12.i80.us.i163, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i172, label %.lr.ph.i81.us.i164

.lr.ph.i81.us.i164:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i161, %bb.cg
  %.sroa.0178.0.us.us.i165 = phi ptr [ %i.rg, %bb.cg ], [ %i.qy, %.lr.ph.i.i.i.i.i.i.i.us.i161 ] ; 5 uses
  %i.qz = load <2 x ptr>, ptr %.sroa.0178.0.us.us.i165, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  store <2 x ptr> %i.qz, ptr %27, align 16
  %i.ra = load i32, ptr %i.lz, align 4
  %.not.i.i.i85.us.us.i169 = icmp ult i32 %i.ra, 16777216
  br i1 %.not.i.i.i85.us.us.i169, label %._crit_edge.i.i.i.i.i.i98.us.us.i175, label %.critedge.sink.split.i86.split.us.us.i170

._crit_edge.i.i.i.i.i.i98.us.us.i175:             ; preds = %.lr.ph.i81.us.i164
  %i.rb = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #30 ; 3 uses
  switch i64 %.sroa.6.0.i.i.i70, label %.critedge.sink.split.i86.split.us.us.i170 [
    i64 3, label %bb.ce
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i183
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i176
  ]

bb.ce:                                            ; preds = %._crit_edge.i.i.i.i.i.i98.us.us.i175
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.us.us.i186 = load ptr, ptr %.sroa.012.0.i.i.i71, align 8
  %i.rc = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.us.us.i186, %i.rb
  br i1 %i.rc, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i179, label %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i183

._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i183: ; preds = %bb.ce, %._crit_edge.i.i.i.i.i.i98.us.us.i175
  %.1.i.i.i.i.i.i109.us.us.i184 = phi ptr [ %.sroa.012.0.i.i.i71, %._crit_edge.i.i.i.i.i.i98.us.us.i175 ], [ %i.qw, %bb.ce ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.us.us.i185 = load ptr, ptr %.1.i.i.i.i.i.i109.us.us.i184, align 8
  %i.rd = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.us.us.i185, %i.rb
  br i1 %i.rd, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i179, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i183
  %i.re = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i109.us.us.i184, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i176

._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i176: ; preds = %bb.cf, %._crit_edge.i.i.i.i.i.i98.us.us.i175
  %.2.i.i.i.i.i.i102.us.us.i177 = phi ptr [ %i.re, %bb.cf ], [ %.sroa.012.0.i.i.i71, %._crit_edge.i.i.i.i.i.i98.us.us.i175 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.us.us.i178 = load ptr, ptr %.2.i.i.i.i.i.i102.us.us.i177, align 8
  %i.rf = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.us.us.i178, %i.rb
  br i1 %i.rf, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i179, label %.critedge.sink.split.i86.split.us.us.i170

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i179: ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i176, %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i183, %bb.ce
  %.028.i.i.i.i.i.i105.us.us.i180 = phi ptr [ %.1.i.i.i.i.i.i109.us.us.i184, %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i183 ], [ %.sroa.012.0.i.i.i71, %bb.ce ], [ %.2.i.i.i.i.i.i102.us.us.i177, %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i176 ]
  %.not.i.i106.us.us.i181 = icmp eq ptr %.028.i.i.i.i.i.i105.us.us.i180, %i.qr
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br i1 %.not.i.i106.us.us.i181, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i172, label %bb.cg

bb.cg:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i179
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.0178.0.us.us.i165, i64 16 ; 3 uses
  %.not.i107.us.us.i182 = icmp eq ptr %i.rg, %i.ns
  br i1 %.not.i107.us.us.i182, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i172, label %.lr.ph.i81.us.i164, !llvm.loop !2483

.critedge.sink.split.i86.split.us.us.i170:        ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i176, %._crit_edge.i.i.i.i.i.i98.us.us.i175, %.lr.ph.i81.us.i164
  %.sroa.0178.0.us.us.lcssa.i171 = phi ptr [ %.sroa.0178.0.us.us.i165, %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i176 ], [ %i.qy, %._crit_edge.i.i.i.i.i.i98.us.us.i175 ], [ %.sroa.0178.0.us.us.i165, %.lr.ph.i81.us.i164 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i172

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i172: ; preds = %bb.cg, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i179, %.critedge.sink.split.i86.split.us.us.i170, %.lr.ph.i.i.i.i.i.i.i.us.i161
  %.sroa.0178.1.us.i173 = phi ptr [ %i.qy, %.lr.ph.i.i.i.i.i.i.i.us.i161 ], [ %.sroa.0178.0.us.us.lcssa.i171, %.critedge.sink.split.i86.split.us.us.i170 ], [ %.sroa.0178.0.us.us.i165, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i179 ], [ %i.rg, %bb.cg ] ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.us.i162, i64 16
  %.not.i.i.i.i.i.i.i.us.i174 = icmp eq ptr %.sroa.0178.1.us.i173, %i.ns
  br i1 %.not.i.i.i.i.i.i.i.us.i174, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.us.i161, !llvm.loop !2487

.lr.ph.i.i.i.i.i.i.i.i119:                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i115, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i129
  %i.ri = phi ptr [ %.sroa.0178.1.i130, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i129 ], [ %.sroa.0163.1288.i110, %.lr.ph.i.i.i.i.preheader.i.i.i.i115 ] ; 2 uses
  %.05.i.i.i.i.i.i.i.i120 = phi ptr [ %i.sf, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i129 ], [ %i.qq, %.lr.ph.i.i.i.i.preheader.i.i.i.i115 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i.i.i.i.i.i120, ptr noundef nonnull align 8 dereferenceable(16) %i.ri, i64 16, i1 false), !tbaa.struct !208
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16 ; 3 uses
  %.not12.i80.i121 = icmp eq ptr %i.rj, %i.ns
  br i1 %.not12.i80.i121, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i129, label %.lr.ph.i81.i122

.lr.ph.i81.i122:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i119, %bb.co
  %.sroa.0178.0.i123 = phi ptr [ %i.se, %bb.co ], [ %i.rj, %.lr.ph.i.i.i.i.i.i.i.i119 ] ; 4 uses
  %i.rk = load <2 x ptr>, ptr %.sroa.0178.0.i123, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  store <2 x ptr> %i.rk, ptr %27, align 16
  %i.rl = load i32, ptr %i.lz, align 4
  %.not.i.i.i85.i127 = icmp ult i32 %i.rl, 16777216
  br i1 %.not.i.i.i85.i127, label %.lr.ph.i.i.i.i.i.i89.i138, label %.critedge.sink.split.i86.split.i128

.lr.ph.i.i.i.i.i.i89.i138:                        ; preds = %.lr.ph.i81.i122
  %i.rm = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #30 ; 7 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cl, %.lr.ph.i.i.i.i.i.i89.i138
  %.059.i.i.i.i.i.i91.i139 = phi i64 [ %i.qs, %.lr.ph.i.i.i.i.i.i89.i138 ], [ %i.rv, %bb.cl ] ; 2 uses
  %.02958.i.i.i.i.i.i92.i140 = phi ptr [ %.sroa.012.0.i.i.i71, %.lr.ph.i.i.i.i.i.i89.i138 ], [ %i.ru, %bb.cl ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i93.i141 = load ptr, ptr %.02958.i.i.i.i.i.i92.i140, align 8
  %i.rn = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i93.i141, %i.rm
  br i1 %i.rn, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ro = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i140, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i.i.i94.i142 = load ptr, ptr %i.ro, align 8
  %i.rp = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i.i.i94.i142, %i.rm
  br i1 %i.rp, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit984, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rq = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i140, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i.i.i95.i143 = load ptr, ptr %i.rq, align 8
  %i.rr = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i.i.i95.i143, %i.rm
  br i1 %i.rr, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit982, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rs = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i140, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i.i.i96.i144 = load ptr, ptr %i.rs, align 8
  %i.rt = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i.i.i96.i144, %i.rm
  br i1 %i.rt, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ru = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i140, i64 32
  %i.rv = add nsw i64 %.059.i.i.i.i.i.i91.i139, -1
  %i.rw = icmp sgt i64 %.059.i.i.i.i.i.i91.i139, 1
  br i1 %i.rw, label %bb.ch, label %._crit_edge.loopexit.i.i.i.i.i.i97.i145, !llvm.loop !2482

._crit_edge.loopexit.i.i.i.i.i.i97.i145:          ; preds = %bb.cl
  switch i64 %i.qu, label %default.unreachable [
    i64 3, label %bb.cm
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i108.i153
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i101.i146
    i64 0, label %.critedge.sink.split.i86.split.i128
  ]

bb.cm:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i97.i145
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.i156 = load ptr, ptr %scevgep.i.i.i.i.i.i90.i118, align 8
  %i.rx = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.i156, %i.rm
  br i1 %i.rx, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149, label %._crit_edge._crit_edge.i.i.i.i.i.i108.i153

._crit_edge._crit_edge.i.i.i.i.i.i108.i153:       ; preds = %bb.cm, %._crit_edge.loopexit.i.i.i.i.i.i97.i145
  %.1.i.i.i.i.i.i109.i154 = phi ptr [ %scevgep.i.i.i.i.i.i90.i118, %._crit_edge.loopexit.i.i.i.i.i.i97.i145 ], [ %i.qv, %bb.cm ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.i155 = load ptr, ptr %.1.i.i.i.i.i.i109.i154, align 8
  %i.ry = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.i155, %i.rm
  br i1 %i.ry, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i108.i153
  %i.rz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i109.i154, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i101.i146

._crit_edge._crit_edge65.i.i.i.i.i.i101.i146:     ; preds = %bb.cn, %._crit_edge.loopexit.i.i.i.i.i.i97.i145
  %.2.i.i.i.i.i.i102.i147 = phi ptr [ %i.rz, %bb.cn ], [ %scevgep.i.i.i.i.i.i90.i118, %._crit_edge.loopexit.i.i.i.i.i.i97.i145 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.i148 = load ptr, ptr %.2.i.i.i.i.i.i102.i147, align 8
  %i.sa = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.i148, %i.rm
  br i1 %i.sa, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149, label %.critedge.sink.split.i86.split.i128

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit: ; preds = %bb.ck
  %i.sb = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i140, i64 24
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit982: ; preds = %bb.cj
  %i.sc = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i140, i64 16
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit984: ; preds = %bb.ci
  %i.sd = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i140, i64 8
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149: ; preds = %bb.ch, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit982, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit984, %._crit_edge._crit_edge65.i.i.i.i.i.i101.i146, %._crit_edge._crit_edge.i.i.i.i.i.i108.i153, %bb.cm
  %.028.i.i.i.i.i.i105.i150 = phi ptr [ %.1.i.i.i.i.i.i109.i154, %._crit_edge._crit_edge.i.i.i.i.i.i108.i153 ], [ %scevgep.i.i.i.i.i.i90.i118, %bb.cm ], [ %.2.i.i.i.i.i.i102.i147, %._crit_edge._crit_edge65.i.i.i.i.i.i101.i146 ], [ %i.sd, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit984 ], [ %i.sc, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit982 ], [ %i.sb, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149.loopexit.split.loop.exit ], [ %.02958.i.i.i.i.i.i92.i140, %bb.ch ]
  %.not.i.i106.i151 = icmp eq ptr %.028.i.i.i.i.i.i105.i150, %i.qr
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br i1 %.not.i.i106.i151, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i129, label %bb.co

bb.co:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0178.0.i123, i64 16 ; 3 uses
  %.not.i107.i152 = icmp eq ptr %i.se, %i.ns
  br i1 %.not.i107.i152, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i129, label %.lr.ph.i81.i122, !llvm.loop !2483

.critedge.sink.split.i86.split.i128:              ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i101.i146, %._crit_edge.loopexit.i.i.i.i.i.i97.i145, %.lr.ph.i81.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i129

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i129: ; preds = %bb.co, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149, %.critedge.sink.split.i86.split.i128, %.lr.ph.i.i.i.i.i.i.i.i119
  %.sroa.0178.1.i130 = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i.i.i.i119 ], [ %.sroa.0178.0.i123, %.critedge.sink.split.i86.split.i128 ], [ %.sroa.0178.0.i123, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i149 ], [ %i.se, %bb.co ] ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i120, i64 16
  %.not.i.i.i.i.i.i.i.i131 = icmp eq ptr %.sroa.0178.1.i130, %i.ns
  br i1 %.not.i.i.i.i.i.i.i.i131, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i.i119, !llvm.loop !2487

_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i132: ; preds = %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i129, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i172
  %.pre17.i.i.i.i133 = load i32, ptr %i.bj, align 8, !tbaa !84, !alias.scope !2515
  %.pre.i134 = load ptr, ptr %30, align 8, !tbaa !103
  br label %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i135

_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i135: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i132, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i112
  %i.sg = phi ptr [ %.pre.i134, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i132 ], [ %.pre253.i114, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i112 ]
  %i.sh = phi i32 [ %.pre17.i.i.i.i133, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i132 ], [ %i.qp, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i112 ]
  %i.si = trunc i64 %.0.lcssa.i.i.i.i.i111 to i32
  %i.sj = add i32 %i.sh, %i.si                    ; 2 uses
  store i32 %i.sj, ptr %i.bj, align 8, !tbaa !84, !alias.scope !2515
  %i.sk = zext i32 %i.sj to i64
  %i.sl = call ptr @_ZN4mlir14DictionaryAttr3getEPNS_11MLIRContextEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef %i.nk, ptr %i.sg, i64 %i.sk) #30
  %i.sm = load ptr, ptr %30, align 8, !tbaa !103  ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.bi
  br i1 %i.sn, label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i136, label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i135
  call void @free(ptr noundef %i.sm) #30
  br label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i136

_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i136: ; preds = %bb.cp, %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  %.pre254.i137 = load i32, ptr %i.lz, align 4
  br label %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i52

_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i52: ; preds = %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i136, %bb.bf
  %i.so = phi i32 [ %i.nj, %bb.bf ], [ %.pre254.i137, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i136 ] ; 3 uses
  %.sroa.0.0.i36.i53 = phi ptr [ %.sroa.0.0.copyload.i35.i51, %bb.bf ], [ %i.sl, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i136 ]
  store ptr %.sroa.0156.0.i49, ptr %37, align 8, !tbaa !135
  store ptr %.sroa.6.0.i48, ptr %i.bl, align 8, !tbaa !185
  %i.sp = and i32 %i.so, 8388607                  ; 2 uses
  %i.sq = icmp eq i32 %i.sp, 0
  br i1 %i.sq, label %_ZN4mlir9Operation10getRegionsEv.exit.i55, label %bb.cq

bb.cq:                                            ; preds = %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i52
  %i.sr = zext nneg i32 %i.sp to i64
  %i.ss = lshr i32 %i.so, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i54 = and i32 %i.ss, 1
  %i.st = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i54 to i64
  %i.su = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.st
  %i.sv = lshr i32 %i.so, 21
  %i.sw = and i32 %i.sv, 2040
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sx
  %i.sz = load i32, ptr %i.md, align 8, !tbaa !199
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [32 x i8], ptr %i.sy, i64 %i.ta
  br label %_ZN4mlir9Operation10getRegionsEv.exit.i55

_ZN4mlir9Operation10getRegionsEv.exit.i55:        ; preds = %bb.cq, %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i52
  %.sroa.0.0.i37.i56 = phi ptr [ %i.tb, %bb.cq ], [ null, %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i52 ]
  %.sroa.4.0.i38.i57 = phi i64 [ %i.sr, %bb.cq ], [ 0, %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i52 ]
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr %.sroa.0.0.i37.i56, i64 %.sroa.4.0.i38.i57) #30
  %i.tc = load i64, ptr %36, align 8
  %i.td = load i64, ptr %i.bm, align 8
  %i.te = call i8 @_ZN4test33OpWithInferTypeAdaptorInterfaceOp16inferReturnTypesEPN4mlir11MLIRContextESt8optionalINS1_8LocationEENS1_10ValueRangeENS1_14DictionaryAttrENS1_11PropertyRefENS1_11RegionRangeERN4llvm15SmallVectorImplINS1_4TypeEEE(ptr noundef %i.lf, ptr undef, i8 0, i64 %i.tc, i64 %i.td, ptr %.sroa.0.0.i36.i53, ptr noundef nonnull byval(%"class.mlir::PropertyRef") align 8 %37, ptr noundef nonnull byval(%"class.mlir::RegionRange") align 8 %38, ptr noundef nonnull align 8 dereferenceable(16) %35) #30
  %i.tf = trunc nuw i8 %i.te to i1
  br i1 %i.tf, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN4mlir9Operation10getRegionsEv.exit.i55
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #30
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %39, ptr %i.ln, ptr nonnull @.str.367, i64 34) #30
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr nonnull align 8 dereferenceable(16) %34, i64 2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  %i.tg = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cs) #30
  store ptr %i.tg, ptr %29, align 8
  %i.th = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  %i.ti = extractvalue { ptr, i64 } %i.th, 0
  %i.tj = extractvalue { ptr, i64 } %i.th, 1
  %i.tk = load i64, ptr %40, align 8
  %i.tl = load i64, ptr %i.bn, align 8
  call void @_ZN4test33OpWithInferTypeAdaptorInterfaceOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(304) %39, i64 %i.tk, i64 %i.tl, ptr %i.ti, i64 %i.tj) #30
  %i.tm = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(304) %39) #30 ; 0 uses
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %39) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN4mlir9Operation10getRegionsEv.exit.i55
  %i.tn = load ptr, ptr %35, align 8, !tbaa !103  ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.bf
  br i1 %i.to, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i58, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @free(ptr noundef %i.tn) #30
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i58

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i58: ; preds = %bb.ct, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %indvars.iv.next.i59, %wide.trip.count251.i35
  br i1 %exitcond.not.i60, label %._crit_edge.i61, label %bb.bd, !llvm.loop !2496

_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test33OpWithInferTypeAdaptorInterfaceOpEEEvPN4mlir9OperationE.exit: ; preds = %._crit_edge.i61, %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  %i.tp = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test33OpWithInferTypeAdaptorInterfaceOpEEEvPN4mlir9OperationE.exit
  %.0.i.i263 = phi ptr [ %i.cs, %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test33OpWithInferTypeAdaptorInterfaceOpEEEvPN4mlir9OperationE.exit ], [ %i.ts, %bb.cv ]
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i.i263, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !201 ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i264, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i268, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i265

_ZN4mlir9Operation11getParentOpEv.exit.i.i265:    ; preds = %bb.cu
  %i.ts = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.tr) #30 ; 4 uses
  %.not.i.i266 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i266, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i268, label %bb.cv

bb.cv:                                            ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i265
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i267 = load ptr, ptr %i.tt, align 8, !tbaa !123
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i267, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !126
  %i.tw = icmp eq ptr %i.tv, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  br i1 %i.tw, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i268, label %bb.cu, !llvm.loop !2476

_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i268: ; preds = %bb.cv, %_ZN4mlir9Operation11getParentOpEv.exit.i.i265, %bb.cu
  %.sroa.0.0.i.i269 = phi ptr [ %i.ts, %bb.cv ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit.i.i265 ], [ null, %bb.cu ]
  store ptr %.sroa.0.0.i.i269, ptr %17, align 8
  %i.tx = call ptr @_ZN4mlir10UnknownLoc3getEPNS_11MLIRContextE(ptr noundef %i.tp) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.ty = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #30
  store ptr %i.ty, ptr %18, align 8, !tbaa !145
  store i64 0, ptr %i.bo, align 8
  %i.tz = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cs) #30 ; 0 uses
  %i.ua = load ptr, ptr %i.de, align 8, !tbaa !201
  %i.ub = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cs) #30
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !200
  store ptr %i.ua, ptr %i.bp, align 8, !tbaa !202
  store ptr %i.ud, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ue = call ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #30
  store ptr %i.ue, ptr %16, align 8
  %i.uf = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.ug = extractvalue { ptr, i64 } %i.uf, 1      ; 2 uses
  %i.uh = trunc i64 %i.ug to i32
  %i.ui = icmp sgt i32 %i.uh, 0
  br i1 %i.ui, label %.preheader.lr.ph.i270, label %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test36OpWithShapedTypeInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit

.preheader.lr.ph.i270:                            ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i268
  %i.uj = getelementptr inbounds nuw i8, ptr %i.cs, i64 44 ; 8 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.cs, i64 56 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %wide.trip.count251.i272 = and i64 %i.ug, 2147483647 ; 2 uses
  br label %.preheader.i273

.preheader.i273:                                  ; preds = %._crit_edge.i298, %.preheader.lr.ph.i270
  %indvars.iv248.i274 = phi i64 [ 0, %.preheader.lr.ph.i270 ], [ %indvars.iv.next249.i299, %._crit_edge.i298 ] ; 2 uses
  br label %bb.cw

._crit_edge.i298:                                 ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i295
  %indvars.iv.next249.i299 = add nuw nsw i64 %indvars.iv248.i274, 1 ; 2 uses
  %exitcond252.not.i300 = icmp eq i64 %indvars.iv.next249.i299, %wide.trip.count251.i272
  br i1 %exitcond252.not.i300, label %_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test36OpWithShapedTypeInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit, label %.preheader.i273, !llvm.loop !2497

bb.cw:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i295, %.preheader.i273
  %indvars.iv.i275 = phi i64 [ 0, %.preheader.i273 ], [ %indvars.iv.next.i296, %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i295 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.uo = load ptr, ptr %17, align 8, !tbaa !159  ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 44
  %i.uq = load i32, ptr %i.up, align 4            ; 3 uses
  %i.ur = and i32 %i.uq, 8388607
  %i.us = icmp ne i32 %i.ur, 0
  call void @llvm.assume(i1 %i.us)
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 64
  %i.uu = lshr i32 %i.uq, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i276 = and i32 %i.uu, 1
  %i.uv = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i276 to i64
  %i.uw = getelementptr inbounds nuw [16 x i8], ptr %i.ut, i64 %i.uv
  %i.ux = lshr i32 %i.uq, 21
  %i.uy = and i32 %i.ux, 2040
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uo, i64 40
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !199
  %i.vd = zext i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw [32 x i8], ptr %i.va, i64 %i.vd ; 3 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !203
  %i.vg = icmp ne ptr %i.ve, %i.vf
  call void @llvm.assume(i1 %i.vg)
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !200
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 48
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !206 ; 2 uses
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv248.i274
  %.sroa.0.0.copyload.i.i.i277 = load ptr, ptr %i.vl, align 8
  store ptr %.sroa.0.0.copyload.i.i.i277, ptr %19, align 8, !tbaa !108
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv.i275
  %.sroa.0.0.copyload.i.i31.i278 = load ptr, ptr %i.vm, align 8
  store ptr %.sroa.0.0.copyload.i.i31.i278, ptr %i.br, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  store ptr %i.bs, ptr %20, align 8, !tbaa !103
  store i32 0, ptr %i.bt, align 8, !tbaa !84
  store i32 2, ptr %i.bu, align 4, !tbaa !85
  %i.vn = load i32, ptr %i.uj, align 4            ; 2 uses
  %.not.i32.i279 = icmp ult i32 %i.vn, 16777216
  br i1 %.not.i32.i279, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i284, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i280

_ZN4mlir9Operation20getPropertiesStorageEv.exit.i280: ; preds = %bb.cw
  %i.vo = load ptr, ptr %i.uk, align 8, !tbaa !150
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 112
  %.sroa.0.0.copyload.i.i.i.i281 = load ptr, ptr %i.vp, align 8, !tbaa !135 ; 2 uses
  %i.vq = lshr i32 %i.vn, 23
  %.lobit.i.i.i.i.i.i.i.i282 = and i32 %i.vq, 1
  %i.vr = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i282 to i64
  %i.vs = getelementptr inbounds nuw [16 x i8], ptr %i.ul, i64 %i.vr
  %.not.i283 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i281, @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE
  br i1 %.not.i283, label %bb.cx, label %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i284

_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i284: ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i280, %bb.cw
  br label %bb.cx

bb.cx:                                            ; preds = %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i284, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i280
  %.sroa.6.0.i285 = phi ptr [ null, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i284 ], [ %i.vs, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i280 ]
  %.sroa.0156.0.i286 = phi ptr [ @_ZN4mlir6detail14TypeIDResolverIvvE2idE, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.thread.i284 ], [ %.sroa.0.0.copyload.i.i.i.i281, %_ZN4mlir9Operation20getPropertiesStorageEv.exit.i280 ]
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr nonnull align 8 dereferenceable(16) %19, i64 2) #30
  %i.vt = load i32, ptr %i.uj, align 4            ; 2 uses
  %.not.i.i34.i287 = icmp ult i32 %i.vt, 16777216
  br i1 %.not.i.i34.i287, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload.i35.i288 = load ptr, ptr %i.um, align 8
  br label %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i289

bb.cz:                                            ; preds = %bb.cx
  %i.vu = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %.sroa.0.0.copyload.i.i.i1.i.i301 = load ptr, ptr %i.uk, align 8, !tbaa !123, !noalias !2516 ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.i.i301, i64 16
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !126, !noalias !2516
  %.not.i.i.not.i.i.i302 = icmp eq ptr %i.vw, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.i.not.i.i.i302, label %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i306, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.i.i301, i64 96
  %.sroa.0.0.copyload.i.i6.i.i.i303 = load ptr, ptr %i.vx, align 8, !tbaa !2510, !noalias !2516
  %.sroa.2.0..sroa_idx.i.i.i.i.i304 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i1.i.i301, i64 104
  %.sroa.2.0.copyload.i.i.i.i.i305 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i304, align 8, !tbaa !81, !noalias !2516
  %i.vy = freeze i64 %.sroa.2.0.copyload.i.i.i.i.i305
  br label %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i306

_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i306: ; preds = %bb.da, %bb.cz
  %.sroa.6.0.i.i.i307 = phi i64 [ %i.vy, %bb.da ], [ 0, %bb.cz ] ; 12 uses
  %.sroa.012.0.i.i.i308 = phi ptr [ %.sroa.0.0.copyload.i.i6.i.i.i303, %bb.da ], [ null, %bb.cz ] ; 20 uses
  %i.vz = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.um) #30, !noalias !2516 ; 2 uses
  %i.wa = extractvalue { ptr, i64 } %i.vz, 0      ; 3 uses
  %i.wb = extractvalue { ptr, i64 } %i.vz, 1      ; 2 uses
  %.idx.i309 = shl nuw nsw i64 %i.wb, 4
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 %.idx.i309 ; 16 uses
  %.not12.i44.i310 = icmp eq i64 %i.wb, 0
  br i1 %.not12.i44.i310, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321, label %.lr.ph.i45.i311

.lr.ph.i45.i311:                                  ; preds = %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i306
  %.idx4.i.i.i51.i312 = shl nuw nsw i64 %.sroa.6.0.i.i.i307, 3 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i308, i64 %.idx4.i.i.i51.i312
  %i.we = lshr i64 %.sroa.6.0.i.i.i307, 2         ; 2 uses
  %.not.i1.i.i52.i313 = icmp eq i64 %i.we, 0
  %i.wf = and i64 %.idx4.i.i.i51.i312, 9223372036854775776
  %scevgep.i.i.i.i.i.i54.i314 = getelementptr i8, ptr %.sroa.012.0.i.i.i308, i64 %i.wf
  %i.wg = and i64 %.sroa.6.0.i.i.i307, 3
  br label %bb.db

bb.db:                                            ; preds = %bb.dk, %.lr.ph.i45.i311
  %.sroa.0163.0.i315 = phi ptr [ %i.wa, %.lr.ph.i45.i311 ], [ %i.xc, %bb.dk ] ; 4 uses
  %i.wh = load <2 x ptr>, ptr %.sroa.0163.0.i315, align 8, !tbaa !128, !noalias !2517
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !2517
  store <2 x ptr> %i.wh, ptr %13, align 16, !noalias !2517
  %i.wi = load i32, ptr %i.uj, align 4, !noalias !2517
  %.not.i.i.i49.i319 = icmp ult i32 %i.wi, 16777216
  br i1 %.not.i.i.i49.i319, label %bb.dc, label %.critedge.sink.split.i50.i320

bb.dc:                                            ; preds = %bb.db
  %i.wj = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #30, !noalias !2517 ; 7 uses
  br i1 %.not.i1.i.i52.i313, label %._crit_edge.i.i.i.i.i.i62.i482, label %.lr.ph.i.i.i.i.i.i53.i475

.lr.ph.i.i.i.i.i.i53.i475:                        ; preds = %bb.dc, %bb.dg
  %.059.i.i.i.i.i.i55.i476 = phi i64 [ %i.ws, %bb.dg ], [ %i.we, %bb.dc ] ; 2 uses
  %.02958.i.i.i.i.i.i56.i477 = phi ptr [ %i.wr, %bb.dg ], [ %.sroa.012.0.i.i.i308, %bb.dc ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i57.i478 = load ptr, ptr %.02958.i.i.i.i.i.i56.i477, align 8, !noalias !2517
  %i.wk = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i57.i478, %i.wj
  br i1 %i.wk, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph.i.i.i.i.i.i53.i475
  %i.wl = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i477, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i.i.i58.i479 = load ptr, ptr %i.wl, align 8, !noalias !2517
  %i.wm = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i.i.i58.i479, %i.wj
  br i1 %i.wm, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit992, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wn = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i477, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i.i.i59.i480 = load ptr, ptr %i.wn, align 8, !noalias !2517
  %i.wo = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i.i.i59.i480, %i.wj
  br i1 %i.wo, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit990, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.wp = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i477, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i.i.i60.i481 = load ptr, ptr %i.wp, align 8, !noalias !2517
  %i.wq = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i.i.i60.i481, %i.wj
  br i1 %i.wq, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wr = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i477, i64 32
  %i.ws = add nsw i64 %.059.i.i.i.i.i.i55.i476, -1
  %i.wt = icmp sgt i64 %.059.i.i.i.i.i.i55.i476, 1
  br i1 %i.wt, label %.lr.ph.i.i.i.i.i.i53.i475, label %._crit_edge.i.i.i.i.i.i62.i482, !llvm.loop !2482

._crit_edge.i.i.i.i.i.i62.i482:                   ; preds = %bb.dg, %bb.dc
  %.pre-phi68.i.i.i.i.i.i63.i483 = phi i64 [ %.sroa.6.0.i.i.i307, %bb.dc ], [ %i.wg, %bb.dg ]
  %.029.lcssa.i.i.i.i.i.i64.i484 = phi ptr [ %.sroa.012.0.i.i.i308, %bb.dc ], [ %scevgep.i.i.i.i.i.i54.i314, %bb.dg ] ; 5 uses
  switch i64 %.pre-phi68.i.i.i.i.i.i63.i483, label %.critedge.sink.split.i50.i320 [
    i64 3, label %bb.dh
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i72.i493
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i65.i485
  ]

bb.dh:                                            ; preds = %._crit_edge.i.i.i.i.i.i62.i482
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i75.i496 = load ptr, ptr %.029.lcssa.i.i.i.i.i.i64.i484, align 8, !noalias !2517
  %i.wu = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i75.i496, %i.wj
  br i1 %i.wu, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wv = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i64.i484, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i72.i493

._crit_edge._crit_edge.i.i.i.i.i.i72.i493:        ; preds = %bb.di, %._crit_edge.i.i.i.i.i.i62.i482
  %.1.i.i.i.i.i.i73.i494 = phi ptr [ %i.wv, %bb.di ], [ %.029.lcssa.i.i.i.i.i.i64.i484, %._crit_edge.i.i.i.i.i.i62.i482 ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i74.i495 = load ptr, ptr %.1.i.i.i.i.i.i73.i494, align 8, !noalias !2517
  %i.ww = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i74.i495, %i.wj
  br i1 %i.ww, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488, label %bb.dj

bb.dj:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i72.i493
  %i.wx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i73.i494, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i65.i485

._crit_edge._crit_edge65.i.i.i.i.i.i65.i485:      ; preds = %bb.dj, %._crit_edge.i.i.i.i.i.i62.i482
  %.2.i.i.i.i.i.i66.i486 = phi ptr [ %i.wx, %bb.dj ], [ %.029.lcssa.i.i.i.i.i.i64.i484, %._crit_edge.i.i.i.i.i.i62.i482 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i67.i487 = load ptr, ptr %.2.i.i.i.i.i.i66.i486, align 8, !noalias !2517
  %i.wy = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i67.i487, %i.wj
  br i1 %i.wy, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488, label %.critedge.sink.split.i50.i320

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit: ; preds = %bb.df
  %i.wz = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i477, i64 24
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit990: ; preds = %bb.de
  %i.xa = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i477, i64 16
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit992: ; preds = %bb.dd
  %i.xb = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i56.i477, i64 8
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488: ; preds = %.lr.ph.i.i.i.i.i.i53.i475, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit990, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit992, %._crit_edge._crit_edge65.i.i.i.i.i.i65.i485, %._crit_edge._crit_edge.i.i.i.i.i.i72.i493, %bb.dh
  %.028.i.i.i.i.i.i69.i489 = phi ptr [ %.1.i.i.i.i.i.i73.i494, %._crit_edge._crit_edge.i.i.i.i.i.i72.i493 ], [ %.029.lcssa.i.i.i.i.i.i64.i484, %bb.dh ], [ %.2.i.i.i.i.i.i66.i486, %._crit_edge._crit_edge65.i.i.i.i.i.i65.i485 ], [ %i.xb, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit992 ], [ %i.xa, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit990 ], [ %i.wz, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488.loopexit.split.loop.exit ], [ %.02958.i.i.i.i.i.i56.i477, %.lr.ph.i.i.i.i.i.i53.i475 ]
  %.not.i.i70.i490 = icmp eq ptr %.028.i.i.i.i.i.i69.i489, %i.wd
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !2517
  br i1 %.not.i.i70.i490, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321, label %bb.dk

bb.dk:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0163.0.i315, i64 16 ; 2 uses
  %.not.i71.i491 = icmp eq ptr %i.xc, %i.wc
  br i1 %.not.i71.i491, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i492, label %bb.db, !llvm.loop !2483

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i492: ; preds = %bb.dk
  store ptr %i.bv, ptr %15, align 8, !tbaa !103, !alias.scope !2518
  store i32 0, ptr %i.bw, align 8, !tbaa !84, !alias.scope !2518
  store i32 3, ptr %i.bx, align 4, !tbaa !85, !alias.scope !2518
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i345

.critedge.sink.split.i50.i320:                    ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i65.i485, %._crit_edge.i.i.i.i.i.i62.i482, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !2517
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321: ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488, %.critedge.sink.split.i50.i320, %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i306
  %.sroa.0163.1.i322 = phi ptr [ %i.wa, %_ZN4mlir9Operation19getDiscardableAttrsEv.exit.i.i306 ], [ %.sroa.0163.0.i315, %.critedge.sink.split.i50.i320 ], [ %.sroa.0163.0.i315, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i68.i488 ] ; 4 uses
  store ptr %i.bv, ptr %15, align 8, !tbaa !103, !alias.scope !2518
  store i32 0, ptr %i.bw, align 8, !tbaa !84, !alias.scope !2518
  store i32 3, ptr %i.bx, align 4, !tbaa !85, !alias.scope !2518
  %.not2.i.i.i.i.i323 = icmp eq ptr %.sroa.0163.1.i322, %i.wc
  br i1 %.not2.i.i.i.i.i323, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i345, label %.lr.ph.i.i.i.i.preheader.i324

.lr.ph.i.i.i.i.preheader.i324:                    ; preds = %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321
  %.idx4.i.i.i123.i325 = shl nuw nsw i64 %.sroa.6.0.i.i.i307, 3 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i308, i64 %.idx4.i.i.i123.i325 ; 2 uses
  %i.xe = lshr i64 %.sroa.6.0.i.i.i307, 2         ; 2 uses
  %.not.i1.i.i124.i326 = icmp eq i64 %i.xe, 0
  %i.xf = and i64 %.idx4.i.i.i123.i325, 9223372036854775776
  %scevgep.i.i.i.i.i.i126.i327 = getelementptr i8, ptr %.sroa.012.0.i.i.i308, i64 %i.xf ; 5 uses
  %i.xg = and i64 %.sroa.6.0.i.i.i307, 3
  %i.xh = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i126.i327, i64 8
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i308, i64 8
  br i1 %.not.i1.i.i124.i326, label %.lr.ph.i.i.i.i.us.i449, label %.lr.ph.i.i.i.i.i328

.lr.ph.i.i.i.i.us.i449:                           ; preds = %.lr.ph.i.i.i.i.preheader.i324, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460
  %i.xj = phi ptr [ %.sroa.0171.1.us.i461, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460 ], [ %.sroa.0163.1.i322, %.lr.ph.i.i.i.i.preheader.i324 ]
  %.03.i.i.i.i.us.i450 = phi i64 [ %i.xt, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460 ], [ 0, %.lr.ph.i.i.i.i.preheader.i324 ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16 ; 4 uses
  %.not12.i116.us.i451 = icmp eq ptr %i.xk, %i.wc
  br i1 %.not12.i116.us.i451, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460, label %.lr.ph.i117.us.i452

.lr.ph.i117.us.i452:                              ; preds = %.lr.ph.i.i.i.i.us.i449, %bb.dn
  %.sroa.0171.0.us.us.i453 = phi ptr [ %i.xs, %bb.dn ], [ %i.xk, %.lr.ph.i.i.i.i.us.i449 ] ; 5 uses
  %i.xl = load <2 x ptr>, ptr %.sroa.0171.0.us.us.i453, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store <2 x ptr> %i.xl, ptr %11, align 16
  %i.xm = load i32, ptr %i.uj, align 4
  %.not.i.i.i121.us.us.i457 = icmp ult i32 %i.xm, 16777216
  br i1 %.not.i.i.i121.us.us.i457, label %._crit_edge.i.i.i.i.i.i134.us.us.i463, label %.critedge.sink.split.i122.split.us.us.i458

._crit_edge.i.i.i.i.i.i134.us.us.i463:            ; preds = %.lr.ph.i117.us.i452
  %i.xn = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #30 ; 3 uses
  switch i64 %.sroa.6.0.i.i.i307, label %.critedge.sink.split.i122.split.us.us.i458 [
    i64 3, label %bb.dl
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i471
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i464
  ]

bb.dl:                                            ; preds = %._crit_edge.i.i.i.i.i.i134.us.us.i463
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.us.us.i474 = load ptr, ptr %.sroa.012.0.i.i.i308, align 8
  %i.xo = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.us.us.i474, %i.xn
  br i1 %i.xo, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i467, label %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i471

._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i471: ; preds = %bb.dl, %._crit_edge.i.i.i.i.i.i134.us.us.i463
  %.1.i.i.i.i.i.i145.us.us.i472 = phi ptr [ %.sroa.012.0.i.i.i308, %._crit_edge.i.i.i.i.i.i134.us.us.i463 ], [ %i.xi, %bb.dl ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.us.us.i473 = load ptr, ptr %.1.i.i.i.i.i.i145.us.us.i472, align 8
  %i.xp = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.us.us.i473, %i.xn
  br i1 %i.xp, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i467, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i471
  %i.xq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i145.us.us.i472, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i464

._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i464: ; preds = %bb.dm, %._crit_edge.i.i.i.i.i.i134.us.us.i463
  %.2.i.i.i.i.i.i138.us.us.i465 = phi ptr [ %i.xq, %bb.dm ], [ %.sroa.012.0.i.i.i308, %._crit_edge.i.i.i.i.i.i134.us.us.i463 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.us.us.i466 = load ptr, ptr %.2.i.i.i.i.i.i138.us.us.i465, align 8
  %i.xr = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.us.us.i466, %i.xn
  br i1 %i.xr, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i467, label %.critedge.sink.split.i122.split.us.us.i458

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i467: ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i464, %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i471, %bb.dl
  %.028.i.i.i.i.i.i141.us.us.i468 = phi ptr [ %.1.i.i.i.i.i.i145.us.us.i472, %._crit_edge._crit_edge.i.i.i.i.i.i144.us.us.i471 ], [ %.sroa.012.0.i.i.i308, %bb.dl ], [ %.2.i.i.i.i.i.i138.us.us.i465, %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i464 ]
  %.not.i.i142.us.us.i469 = icmp eq ptr %.028.i.i.i.i.i.i141.us.us.i468, %i.xd
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %.not.i.i142.us.us.i469, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460, label %bb.dn

bb.dn:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i467
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.0171.0.us.us.i453, i64 16 ; 3 uses
  %.not.i143.us.us.i470 = icmp eq ptr %i.xs, %i.wc
  br i1 %.not.i143.us.us.i470, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460, label %.lr.ph.i117.us.i452, !llvm.loop !2483

.critedge.sink.split.i122.split.us.us.i458:       ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i464, %._crit_edge.i.i.i.i.i.i134.us.us.i463, %.lr.ph.i117.us.i452
  %.sroa.0171.0.us.us.lcssa.i459 = phi ptr [ %.sroa.0171.0.us.us.i453, %._crit_edge._crit_edge65.i.i.i.i.i.i137.us.us.i464 ], [ %i.xk, %._crit_edge.i.i.i.i.i.i134.us.us.i463 ], [ %.sroa.0171.0.us.us.i453, %.lr.ph.i117.us.i452 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460: ; preds = %bb.dn, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i467, %.critedge.sink.split.i122.split.us.us.i458, %.lr.ph.i.i.i.i.us.i449
  %.sroa.0171.1.us.i461 = phi ptr [ %i.xk, %.lr.ph.i.i.i.i.us.i449 ], [ %.sroa.0171.0.us.us.lcssa.i459, %.critedge.sink.split.i122.split.us.us.i458 ], [ %.sroa.0171.0.us.us.i453, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.us.us.i467 ], [ %i.xs, %bb.dn ] ; 2 uses
  %i.xt = add nuw nsw i64 %.03.i.i.i.i.us.i450, 1 ; 2 uses
  %.not.i.i.i.i.us.i462 = icmp eq ptr %.sroa.0171.1.us.i461, %i.wc
  br i1 %.not.i.i.i.i.us.i462, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341, label %.lr.ph.i.i.i.i.us.i449, !llvm.loop !2486

.lr.ph.i.i.i.i.i328:                              ; preds = %.lr.ph.i.i.i.i.preheader.i324, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338
  %i.xu = phi ptr [ %.sroa.0171.0.i332, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338 ], [ %.sroa.0163.1.i322, %.lr.ph.i.i.i.i.preheader.i324 ]
  %.03.i.i.i.i.i329 = phi i64 [ %i.ys, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338 ], [ 0, %.lr.ph.i.i.i.i.preheader.i324 ] ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16 ; 2 uses
  %.not12.i116.i330 = icmp eq ptr %i.xv, %i.wc
  br i1 %.not12.i116.i330, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338.thread, label %.lr.ph.i117.i331

.lr.ph.i117.i331:                                 ; preds = %.lr.ph.i.i.i.i.i328, %bb.dv
  %.sroa.0171.0.i332 = phi ptr [ %i.yq, %bb.dv ], [ %i.xv, %.lr.ph.i.i.i.i.i328 ] ; 4 uses
  %i.xw = load <2 x ptr>, ptr %.sroa.0171.0.i332, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store <2 x ptr> %i.xw, ptr %11, align 16
  %i.xx = load i32, ptr %i.uj, align 4
  %.not.i.i.i121.i336 = icmp ult i32 %i.xx, 16777216
  br i1 %.not.i.i.i121.i336, label %.lr.ph.i.i.i.i.i.i125.i426, label %.critedge.sink.split.i122.split.i337

.lr.ph.i.i.i.i.i.i125.i426:                       ; preds = %.lr.ph.i117.i331
  %i.xy = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #30 ; 7 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.ds, %.lr.ph.i.i.i.i.i.i125.i426
  %.059.i.i.i.i.i.i127.i427 = phi i64 [ %i.xe, %.lr.ph.i.i.i.i.i.i125.i426 ], [ %i.yh, %bb.ds ] ; 2 uses
  %.02958.i.i.i.i.i.i128.i428 = phi ptr [ %.sroa.012.0.i.i.i308, %.lr.ph.i.i.i.i.i.i125.i426 ], [ %i.yg, %bb.ds ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i129.i429 = load ptr, ptr %.02958.i.i.i.i.i.i128.i428, align 8
  %i.xz = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i129.i429, %i.xy
  br i1 %i.xz, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ya = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i428, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i.i.i130.i430 = load ptr, ptr %i.ya, align 8
  %i.yb = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i.i.i130.i430, %i.xy
  br i1 %i.yb, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit1000, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.yc = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i428, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i.i.i131.i431 = load ptr, ptr %i.yc, align 8
  %i.yd = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i.i.i131.i431, %i.xy
  br i1 %i.yd, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit998, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ye = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i428, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i.i.i132.i432 = load ptr, ptr %i.ye, align 8
  %i.yf = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i.i.i132.i432, %i.xy
  br i1 %i.yf, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.yg = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i428, i64 32
  %i.yh = add nsw i64 %.059.i.i.i.i.i.i127.i427, -1
  %i.yi = icmp sgt i64 %.059.i.i.i.i.i.i127.i427, 1
  br i1 %i.yi, label %bb.do, label %._crit_edge.loopexit.i.i.i.i.i.i133.i433, !llvm.loop !2482

._crit_edge.loopexit.i.i.i.i.i.i133.i433:         ; preds = %bb.ds
  switch i64 %i.xg, label %default.unreachable [
    i64 3, label %bb.dt
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i144.i441
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i137.i434
    i64 0, label %.critedge.sink.split.i122.split.i337
  ]

bb.dt:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i133.i433
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.i444 = load ptr, ptr %scevgep.i.i.i.i.i.i126.i327, align 8
  %i.yj = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i147.i444, %i.xy
  br i1 %i.yj, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437, label %._crit_edge._crit_edge.i.i.i.i.i.i144.i441

._crit_edge._crit_edge.i.i.i.i.i.i144.i441:       ; preds = %bb.dt, %._crit_edge.loopexit.i.i.i.i.i.i133.i433
  %.1.i.i.i.i.i.i145.i442 = phi ptr [ %scevgep.i.i.i.i.i.i126.i327, %._crit_edge.loopexit.i.i.i.i.i.i133.i433 ], [ %i.xh, %bb.dt ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.i443 = load ptr, ptr %.1.i.i.i.i.i.i145.i442, align 8
  %i.yk = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i146.i443, %i.xy
  br i1 %i.yk, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437, label %bb.du

bb.du:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i144.i441
  %i.yl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i145.i442, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i137.i434

._crit_edge._crit_edge65.i.i.i.i.i.i137.i434:     ; preds = %bb.du, %._crit_edge.loopexit.i.i.i.i.i.i133.i433
  %.2.i.i.i.i.i.i138.i435 = phi ptr [ %i.yl, %bb.du ], [ %scevgep.i.i.i.i.i.i126.i327, %._crit_edge.loopexit.i.i.i.i.i.i133.i433 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.i436 = load ptr, ptr %.2.i.i.i.i.i.i138.i435, align 8
  %i.ym = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i139.i436, %i.xy
  br i1 %i.ym, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437, label %.critedge.sink.split.i122.split.i337

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit: ; preds = %bb.dr
  %i.yn = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i428, i64 24
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit998: ; preds = %bb.dq
  %i.yo = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i428, i64 16
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit1000: ; preds = %bb.dp
  %i.yp = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i128.i428, i64 8
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437: ; preds = %bb.do, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit998, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit1000, %._crit_edge._crit_edge65.i.i.i.i.i.i137.i434, %._crit_edge._crit_edge.i.i.i.i.i.i144.i441, %bb.dt
  %.028.i.i.i.i.i.i141.i438 = phi ptr [ %.1.i.i.i.i.i.i145.i442, %._crit_edge._crit_edge.i.i.i.i.i.i144.i441 ], [ %scevgep.i.i.i.i.i.i126.i327, %bb.dt ], [ %.2.i.i.i.i.i.i138.i435, %._crit_edge._crit_edge65.i.i.i.i.i.i137.i434 ], [ %i.yp, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit1000 ], [ %i.yo, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit998 ], [ %i.yn, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437.loopexit.split.loop.exit ], [ %.02958.i.i.i.i.i.i128.i428, %bb.do ]
  %.not.i.i142.i439 = icmp eq ptr %.028.i.i.i.i.i.i141.i438, %i.xd
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %.not.i.i142.i439, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338, label %bb.dv

bb.dv:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.0171.0.i332, i64 16 ; 2 uses
  %.not.i143.i440 = icmp eq ptr %i.yq, %i.wc
  br i1 %.not.i143.i440, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338.thread, label %.lr.ph.i117.i331, !llvm.loop !2483

.critedge.sink.split.i122.split.i337:             ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i137.i434, %._crit_edge.loopexit.i.i.i.i.i.i133.i433, %.lr.ph.i117.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338.thread: ; preds = %.lr.ph.i.i.i.i.i328, %bb.dv
  %i.yr = add nuw nsw i64 %.03.i.i.i.i.i329, 1
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338: ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i140.i437, %.critedge.sink.split.i122.split.i337
  %i.ys = add nuw nsw i64 %.03.i.i.i.i.i329, 1    ; 2 uses
  %.not.i.i.i.i.i340 = icmp eq ptr %.sroa.0171.0.i332, %i.wc
  br i1 %.not.i.i.i.i.i340, label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341, label %.lr.ph.i.i.i.i.i328, !llvm.loop !2486

_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341: ; preds = %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338.thread
  %.us-phi211.i342 = phi i64 [ %i.xt, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.us.i460 ], [ %i.yr, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338.thread ], [ %i.ys, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit151.i338 ]
  %.pre.i.i.i343 = load i32, ptr %i.bw, align 8, !tbaa !84, !alias.scope !2518
  %.pre4.i.i.i344 = load i32, ptr %i.bx, align 4, !tbaa !85, !alias.scope !2518
  %i.yt = zext i32 %.pre4.i.i.i344 to i64
  br label %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i345

_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i345: ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i492
  %.not2.i.i.i.i289.i346 = phi i1 [ true, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321 ], [ false, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341 ], [ true, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i492 ]
  %.sroa.0163.1288.i347 = phi ptr [ %i.wc, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321 ], [ %.sroa.0163.1.i322, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341 ], [ %i.wc, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i492 ] ; 2 uses
  %i.yu = phi i64 [ 3, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321 ], [ %i.yt, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341 ], [ 3, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i492 ]
  %i.yv = phi i32 [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321 ], [ %.pre.i.i.i343, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341 ], [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i492 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i348 = phi i64 [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.i321 ], [ %.us-phi211.i342, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.loopexit.i.i.i341 ], [ 0, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit.thread.i492 ] ; 2 uses
  %i.yw = zext i32 %i.yv to i64                   ; 2 uses
  %i.yx = add i64 %.0.lcssa.i.i.i.i.i348, %i.yw   ; 2 uses
  %i.yy = icmp ugt i64 %i.yx, %i.yu
  br i1 %i.yy, label %bb.dw, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i349

bb.dw:                                            ; preds = %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i345
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull %i.bv, i64 noundef %i.yx, i64 noundef 16) #30
  %.pre.i.i.i.i424 = load i32, ptr %i.bw, align 8, !tbaa !84, !alias.scope !2518 ; 2 uses
  %.pre18.i.i.i.i425 = zext i32 %.pre.i.i.i.i424 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i349

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i349: ; preds = %bb.dw, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i345
  %.pre-phi.i.i.i.i350 = phi i64 [ %i.yw, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i345 ], [ %.pre18.i.i.i.i425, %bb.dw ]
  %i.yz = phi i32 [ %i.yv, %_ZSt10__distanceIN4llvm20filter_iterator_implIPKN4mlir14NamedAttributeEZNS2_9Operation19getDiscardableAttrsEvEUlS3_E_St26bidirectional_iterator_tagEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i.i.i345 ], [ %.pre.i.i.i.i424, %bb.dw ]
  %.pre253.i351 = load ptr, ptr %15, align 8, !tbaa !103 ; 2 uses
  br i1 %.not2.i.i.i.i289.i346, label %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i372, label %.lr.ph.i.i.i.i.preheader.i.i.i.i352

.lr.ph.i.i.i.i.preheader.i.i.i.i352:              ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i349
  %i.za = getelementptr inbounds nuw [16 x i8], ptr %.pre253.i351, i64 %.pre-phi.i.i.i.i350 ; 2 uses
  %.idx4.i.i.i87.i353 = shl nuw nsw i64 %.sroa.6.0.i.i.i307, 3 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i308, i64 %.idx4.i.i.i87.i353 ; 2 uses
  %i.zc = lshr i64 %.sroa.6.0.i.i.i307, 2         ; 2 uses
  %.not.i1.i.i88.i354 = icmp eq i64 %i.zc, 0
  %i.zd = and i64 %.idx4.i.i.i87.i353, 9223372036854775776
  %scevgep.i.i.i.i.i.i90.i355 = getelementptr i8, ptr %.sroa.012.0.i.i.i308, i64 %i.zd ; 5 uses
  %i.ze = and i64 %.sroa.6.0.i.i.i307, 3
  %i.zf = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i90.i355, i64 8
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i308, i64 8
  br i1 %.not.i1.i.i88.i354, label %.lr.ph.i.i.i.i.i.i.i.us.i398, label %.lr.ph.i.i.i.i.i.i.i.i356

.lr.ph.i.i.i.i.i.i.i.us.i398:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i352, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i409
  %i.zh = phi ptr [ %.sroa.0178.1.us.i410, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i409 ], [ %.sroa.0163.1288.i347, %.lr.ph.i.i.i.i.preheader.i.i.i.i352 ] ; 2 uses
  %.05.i.i.i.i.i.i.i.us.i399 = phi ptr [ %i.zr, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i409 ], [ %i.za, %.lr.ph.i.i.i.i.preheader.i.i.i.i352 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i.i.i.i.i.us.i399, ptr noundef nonnull align 8 dereferenceable(16) %i.zh, i64 16, i1 false), !tbaa.struct !208
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16 ; 4 uses
  %.not12.i80.us.i400 = icmp eq ptr %i.zi, %i.wc
  br i1 %.not12.i80.us.i400, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i409, label %.lr.ph.i81.us.i401

.lr.ph.i81.us.i401:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i398, %bb.dz
  %.sroa.0178.0.us.us.i402 = phi ptr [ %i.zq, %bb.dz ], [ %i.zi, %.lr.ph.i.i.i.i.i.i.i.us.i398 ] ; 5 uses
  %i.zj = load <2 x ptr>, ptr %.sroa.0178.0.us.us.i402, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store <2 x ptr> %i.zj, ptr %12, align 16
  %i.zk = load i32, ptr %i.uj, align 4
  %.not.i.i.i85.us.us.i406 = icmp ult i32 %i.zk, 16777216
  br i1 %.not.i.i.i85.us.us.i406, label %._crit_edge.i.i.i.i.i.i98.us.us.i412, label %.critedge.sink.split.i86.split.us.us.i407

._crit_edge.i.i.i.i.i.i98.us.us.i412:             ; preds = %.lr.ph.i81.us.i401
  %i.zl = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #30 ; 3 uses
  switch i64 %.sroa.6.0.i.i.i307, label %.critedge.sink.split.i86.split.us.us.i407 [
    i64 3, label %bb.dx
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i420
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i413
  ]

bb.dx:                                            ; preds = %._crit_edge.i.i.i.i.i.i98.us.us.i412
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.us.us.i423 = load ptr, ptr %.sroa.012.0.i.i.i308, align 8
  %i.zm = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.us.us.i423, %i.zl
  br i1 %i.zm, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i416, label %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i420

._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i420: ; preds = %bb.dx, %._crit_edge.i.i.i.i.i.i98.us.us.i412
  %.1.i.i.i.i.i.i109.us.us.i421 = phi ptr [ %.sroa.012.0.i.i.i308, %._crit_edge.i.i.i.i.i.i98.us.us.i412 ], [ %i.zg, %bb.dx ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.us.us.i422 = load ptr, ptr %.1.i.i.i.i.i.i109.us.us.i421, align 8
  %i.zn = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.us.us.i422, %i.zl
  br i1 %i.zn, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i416, label %bb.dy

bb.dy:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i420
  %i.zo = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i109.us.us.i421, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i413

._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i413: ; preds = %bb.dy, %._crit_edge.i.i.i.i.i.i98.us.us.i412
  %.2.i.i.i.i.i.i102.us.us.i414 = phi ptr [ %i.zo, %bb.dy ], [ %.sroa.012.0.i.i.i308, %._crit_edge.i.i.i.i.i.i98.us.us.i412 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.us.us.i415 = load ptr, ptr %.2.i.i.i.i.i.i102.us.us.i414, align 8
  %i.zp = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.us.us.i415, %i.zl
  br i1 %i.zp, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i416, label %.critedge.sink.split.i86.split.us.us.i407

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i416: ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i413, %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i420, %bb.dx
  %.028.i.i.i.i.i.i105.us.us.i417 = phi ptr [ %.1.i.i.i.i.i.i109.us.us.i421, %._crit_edge._crit_edge.i.i.i.i.i.i108.us.us.i420 ], [ %.sroa.012.0.i.i.i308, %bb.dx ], [ %.2.i.i.i.i.i.i102.us.us.i414, %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i413 ]
  %.not.i.i106.us.us.i418 = icmp eq ptr %.028.i.i.i.i.i.i105.us.us.i417, %i.zb
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %.not.i.i106.us.us.i418, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i409, label %bb.dz

bb.dz:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i416
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.0178.0.us.us.i402, i64 16 ; 3 uses
  %.not.i107.us.us.i419 = icmp eq ptr %i.zq, %i.wc
  br i1 %.not.i107.us.us.i419, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i409, label %.lr.ph.i81.us.i401, !llvm.loop !2483

.critedge.sink.split.i86.split.us.us.i407:        ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i413, %._crit_edge.i.i.i.i.i.i98.us.us.i412, %.lr.ph.i81.us.i401
  %.sroa.0178.0.us.us.lcssa.i408 = phi ptr [ %.sroa.0178.0.us.us.i402, %._crit_edge._crit_edge65.i.i.i.i.i.i101.us.us.i413 ], [ %i.zi, %._crit_edge.i.i.i.i.i.i98.us.us.i412 ], [ %.sroa.0178.0.us.us.i402, %.lr.ph.i81.us.i401 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i409

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i409: ; preds = %bb.dz, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i416, %.critedge.sink.split.i86.split.us.us.i407, %.lr.ph.i.i.i.i.i.i.i.us.i398
  %.sroa.0178.1.us.i410 = phi ptr [ %i.zi, %.lr.ph.i.i.i.i.i.i.i.us.i398 ], [ %.sroa.0178.0.us.us.lcssa.i408, %.critedge.sink.split.i86.split.us.us.i407 ], [ %.sroa.0178.0.us.us.i402, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.us.us.i416 ], [ %i.zq, %bb.dz ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.us.i399, i64 16
  %.not.i.i.i.i.i.i.i.us.i411 = icmp eq ptr %.sroa.0178.1.us.i410, %i.wc
  br i1 %.not.i.i.i.i.i.i.i.us.i411, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i369, label %.lr.ph.i.i.i.i.i.i.i.us.i398, !llvm.loop !2487

.lr.ph.i.i.i.i.i.i.i.i356:                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i352, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i366
  %i.zs = phi ptr [ %.sroa.0178.1.i367, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i366 ], [ %.sroa.0163.1288.i347, %.lr.ph.i.i.i.i.preheader.i.i.i.i352 ] ; 2 uses
  %.05.i.i.i.i.i.i.i.i357 = phi ptr [ %i.aap, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i366 ], [ %i.za, %.lr.ph.i.i.i.i.preheader.i.i.i.i352 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i.i.i.i.i.i357, ptr noundef nonnull align 8 dereferenceable(16) %i.zs, i64 16, i1 false), !tbaa.struct !208
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16 ; 3 uses
  %.not12.i80.i358 = icmp eq ptr %i.zt, %i.wc
  br i1 %.not12.i80.i358, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i366, label %.lr.ph.i81.i359

.lr.ph.i81.i359:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i356, %bb.eh
  %.sroa.0178.0.i360 = phi ptr [ %i.aao, %bb.eh ], [ %i.zt, %.lr.ph.i.i.i.i.i.i.i.i356 ] ; 4 uses
  %i.zu = load <2 x ptr>, ptr %.sroa.0178.0.i360, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store <2 x ptr> %i.zu, ptr %12, align 16
  %i.zv = load i32, ptr %i.uj, align 4
  %.not.i.i.i85.i364 = icmp ult i32 %i.zv, 16777216
  br i1 %.not.i.i.i85.i364, label %.lr.ph.i.i.i.i.i.i89.i375, label %.critedge.sink.split.i86.split.i365

.lr.ph.i.i.i.i.i.i89.i375:                        ; preds = %.lr.ph.i81.i359
  %i.zw = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #30 ; 7 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ee, %.lr.ph.i.i.i.i.i.i89.i375
  %.059.i.i.i.i.i.i91.i376 = phi i64 [ %i.zc, %.lr.ph.i.i.i.i.i.i89.i375 ], [ %i.aaf, %bb.ee ] ; 2 uses
  %.02958.i.i.i.i.i.i92.i377 = phi ptr [ %.sroa.012.0.i.i.i308, %.lr.ph.i.i.i.i.i.i89.i375 ], [ %i.aae, %bb.ee ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i93.i378 = load ptr, ptr %.02958.i.i.i.i.i.i92.i377, align 8
  %i.zx = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i93.i378, %i.zw
  br i1 %i.zx, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.zy = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i377, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i.i.i94.i379 = load ptr, ptr %i.zy, align 8
  %i.zz = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i.i.i94.i379, %i.zw
  br i1 %i.zz, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit1008, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aaa = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i377, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i.i.i95.i380 = load ptr, ptr %i.aaa, align 8
  %i.aab = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i.i.i95.i380, %i.zw
  br i1 %i.aab, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit1006, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aac = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i377, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i.i.i96.i381 = load ptr, ptr %i.aac, align 8
  %i.aad = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i.i.i96.i381, %i.zw
  br i1 %i.aad, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aae = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i377, i64 32
  %i.aaf = add nsw i64 %.059.i.i.i.i.i.i91.i376, -1
  %i.aag = icmp sgt i64 %.059.i.i.i.i.i.i91.i376, 1
  br i1 %i.aag, label %bb.ea, label %._crit_edge.loopexit.i.i.i.i.i.i97.i382, !llvm.loop !2482

._crit_edge.loopexit.i.i.i.i.i.i97.i382:          ; preds = %bb.ee
  switch i64 %i.ze, label %default.unreachable [
    i64 3, label %bb.ef
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i108.i390
    i64 1, label %._crit_edge._crit_edge65.i.i.i.i.i.i101.i383
    i64 0, label %.critedge.sink.split.i86.split.i365
  ]

bb.ef:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i97.i382
  %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.i393 = load ptr, ptr %scevgep.i.i.i.i.i.i90.i355, align 8
  %i.aah = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i.i.i111.i393, %i.zw
  br i1 %i.aah, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386, label %._crit_edge._crit_edge.i.i.i.i.i.i108.i390

._crit_edge._crit_edge.i.i.i.i.i.i108.i390:       ; preds = %bb.ef, %._crit_edge.loopexit.i.i.i.i.i.i97.i382
  %.1.i.i.i.i.i.i109.i391 = phi ptr [ %scevgep.i.i.i.i.i.i90.i355, %._crit_edge.loopexit.i.i.i.i.i.i97.i382 ], [ %i.zf, %bb.ef ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.i392 = load ptr, ptr %.1.i.i.i.i.i.i109.i391, align 8
  %i.aai = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i.i.i110.i392, %i.zw
  br i1 %i.aai, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386, label %bb.eg

bb.eg:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i108.i390
  %i.aaj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i109.i391, i64 8
  br label %._crit_edge._crit_edge65.i.i.i.i.i.i101.i383

._crit_edge._crit_edge65.i.i.i.i.i.i101.i383:     ; preds = %bb.eg, %._crit_edge.loopexit.i.i.i.i.i.i97.i382
  %.2.i.i.i.i.i.i102.i384 = phi ptr [ %i.aaj, %bb.eg ], [ %scevgep.i.i.i.i.i.i90.i355, %._crit_edge.loopexit.i.i.i.i.i.i97.i382 ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.i385 = load ptr, ptr %.2.i.i.i.i.i.i102.i384, align 8
  %i.aak = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i.i.i103.i385, %i.zw
  br i1 %i.aak, label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386, label %.critedge.sink.split.i86.split.i365

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit: ; preds = %bb.ed
  %i.aal = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i377, i64 24
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit1006: ; preds = %bb.ec
  %i.aam = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i377, i64 16
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit1008: ; preds = %bb.eb
  %i.aan = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i.i.i92.i377, i64 8
  br label %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386

_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386: ; preds = %bb.ea, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit1006, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit1008, %._crit_edge._crit_edge65.i.i.i.i.i.i101.i383, %._crit_edge._crit_edge.i.i.i.i.i.i108.i390, %bb.ef
  %.028.i.i.i.i.i.i105.i387 = phi ptr [ %.1.i.i.i.i.i.i109.i391, %._crit_edge._crit_edge.i.i.i.i.i.i108.i390 ], [ %scevgep.i.i.i.i.i.i90.i355, %bb.ef ], [ %.2.i.i.i.i.i.i102.i384, %._crit_edge._crit_edge65.i.i.i.i.i.i101.i383 ], [ %i.aan, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit1008 ], [ %i.aam, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit1006 ], [ %i.aal, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386.loopexit.split.loop.exit ], [ %.02958.i.i.i.i.i.i92.i377, %bb.ea ]
  %.not.i.i106.i388 = icmp eq ptr %.028.i.i.i.i.i.i105.i387, %i.zb
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %.not.i.i106.i388, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i366, label %bb.eh

bb.eh:                                            ; preds = %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.0178.0.i360, i64 16 ; 3 uses
  %.not.i107.i389 = icmp eq ptr %i.aao, %i.wc
  br i1 %.not.i107.i389, label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i366, label %.lr.ph.i81.i359, !llvm.loop !2483

.critedge.sink.split.i86.split.i365:              ; preds = %._crit_edge._crit_edge65.i.i.i.i.i.i101.i383, %._crit_edge.loopexit.i.i.i.i.i.i97.i382, %.lr.ph.i81.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i366

_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i366: ; preds = %bb.eh, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386, %.critedge.sink.split.i86.split.i365, %.lr.ph.i.i.i.i.i.i.i.i356
  %.sroa.0178.1.i367 = phi ptr [ %i.zt, %.lr.ph.i.i.i.i.i.i.i.i356 ], [ %.sroa.0178.0.i360, %.critedge.sink.split.i86.split.i365 ], [ %.sroa.0178.0.i360, %_ZZN4mlir9Operation19getDiscardableAttrsEvENKUlNS_14NamedAttributeEE_clES1_.exit.i104.i386 ], [ %i.aao, %bb.eh ] ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i357, i64 16
  %.not.i.i.i.i.i.i.i.i368 = icmp eq ptr %.sroa.0178.1.i367, %i.wc
  br i1 %.not.i.i.i.i.i.i.i.i368, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i369, label %.lr.ph.i.i.i.i.i.i.i.i356, !llvm.loop !2487

_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i369: ; preds = %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.i366, %_ZN4llvm20filter_iterator_baseIPKN4mlir14NamedAttributeEZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagE13findNextValidEv.exit115.us.i409
  %.pre17.i.i.i.i370 = load i32, ptr %i.bw, align 8, !tbaa !84, !alias.scope !2518
  %.pre.i371 = load ptr, ptr %15, align 8, !tbaa !103
  br label %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i372

_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i372: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i369, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i349
  %i.aaq = phi ptr [ %.pre.i371, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i369 ], [ %.pre253.i351, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i349 ]
  %i.aar = phi i32 [ %.pre17.i.i.i.i370, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE18uninitialized_copyINS_20filter_iterator_implIPKS2_ZNS1_9Operation19getDiscardableAttrsEvEUlS2_E_St26bidirectional_iterator_tagEEPS2_EEvT_SD_T0_.exit.loopexit.i.i.i.i369 ], [ %i.yz, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i349 ]
  %i.aas = trunc i64 %.0.lcssa.i.i.i.i.i348 to i32
  %i.aat = add i32 %i.aar, %i.aas                 ; 2 uses
  store i32 %i.aat, ptr %i.bw, align 8, !tbaa !84, !alias.scope !2518
  %i.aau = zext i32 %i.aat to i64
  %i.aav = call ptr @_ZN4mlir14DictionaryAttr3getEPNS_11MLIRContextEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef %i.vu, ptr %i.aaq, i64 %i.aau) #30
  %i.aaw = load ptr, ptr %15, align 8, !tbaa !103 ; 2 uses
  %i.aax = icmp eq ptr %i.aaw, %i.bv
  br i1 %i.aax, label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i373, label %bb.ei

bb.ei:                                            ; preds = %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i372
  call void @free(ptr noundef %i.aaw) #30
  br label %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i373

_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i373: ; preds = %bb.ei, %_ZN4llvm9to_vectorINS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir14NamedAttributeEZNS3_9Operation19getDiscardableAttrsEvEUlS4_E_St26bidirectional_iterator_tagEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISL_EE5valueEEEOSF_.exit.i372
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %.pre254.i374 = load i32, ptr %i.uj, align 4
  br label %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i289

_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i289: ; preds = %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i373, %bb.cy
  %i.aay = phi i32 [ %i.vt, %bb.cy ], [ %.pre254.i374, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i373 ] ; 3 uses
  %.sroa.0.0.i36.i290 = phi ptr [ %.sroa.0.0.copyload.i35.i288, %bb.cy ], [ %i.aav, %_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit.i.i373 ]
  store ptr %.sroa.0156.0.i286, ptr %22, align 8, !tbaa !135
  store ptr %.sroa.6.0.i285, ptr %i.by, align 8, !tbaa !185
  %i.aaz = and i32 %i.aay, 8388607                ; 2 uses
  %i.aba = icmp eq i32 %i.aaz, 0
  br i1 %i.aba, label %_ZN4mlir9Operation10getRegionsEv.exit.i292, label %bb.ej

bb.ej:                                            ; preds = %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i289
  %i.abb = zext nneg i32 %i.aaz to i64
  %i.abc = lshr i32 %i.aay, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i291 = and i32 %i.abc, 1
  %i.abd = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i291 to i64
  %i.abe = getelementptr inbounds nuw [16 x i8], ptr %i.ul, i64 %i.abd
  %i.abf = lshr i32 %i.aay, 21
  %i.abg = and i32 %i.abf, 2040
  %i.abh = zext nneg i32 %i.abg to i64
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.abh
  %i.abj = load i32, ptr %i.un, align 8, !tbaa !199
  %i.abk = zext i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw [32 x i8], ptr %i.abi, i64 %i.abk
  br label %_ZN4mlir9Operation10getRegionsEv.exit.i292

_ZN4mlir9Operation10getRegionsEv.exit.i292:       ; preds = %bb.ej, %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i289
  %.sroa.0.0.i37.i293 = phi ptr [ %i.abl, %bb.ej ], [ null, %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i289 ]
  %.sroa.4.0.i38.i294 = phi i64 [ %i.abb, %bb.ej ], [ 0, %_ZN4mlir9Operation28getDiscardableAttrDictionaryEv.exit.i289 ]
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr %.sroa.0.0.i37.i293, i64 %.sroa.4.0.i38.i294) #30
  %i.abm = load i64, ptr %21, align 8
  %i.abn = load i64, ptr %i.bz, align 8
  %i.abo = call i8 @_ZN4test36OpWithShapedTypeInferTypeInterfaceOp16inferReturnTypesEPN4mlir11MLIRContextESt8optionalINS1_8LocationEENS1_10ValueRangeENS1_14DictionaryAttrENS1_11PropertyRefENS1_11RegionRangeERN4llvm15SmallVectorImplINS1_4TypeEEE(ptr noundef %i.tp, ptr undef, i8 0, i64 %i.abm, i64 %i.abn, ptr %.sroa.0.0.i36.i290, ptr noundef nonnull byval(%"class.mlir::PropertyRef") align 8 %22, ptr noundef nonnull byval(%"class.mlir::RegionRange") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %20) #30
  %i.abp = trunc nuw i8 %i.abo to i1
  br i1 %i.abp, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_ZN4mlir9Operation10getRegionsEv.exit.i292
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %24, ptr %i.tx, ptr nonnull @.str.368, i64 38) #30
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr nonnull align 8 dereferenceable(16) %19, i64 2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.abq = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cs) #30
  store ptr %i.abq, ptr %14, align 8
  %i.abr = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.abs = extractvalue { ptr, i64 } %i.abr, 0
  %i.abt = extractvalue { ptr, i64 } %i.abr, 1
  %i.abu = load i64, ptr %25, align 8
  %i.abv = load i64, ptr %i.ca, align 8
  call void @_ZN4test36OpWithShapedTypeInferTypeInterfaceOp5buildERN4mlir9OpBuilderERNS1_14OperationStateENS1_10ValueRangeEN4llvm8ArrayRefINS1_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(304) %24, i64 %i.abu, i64 %i.abv, ptr %i.abs, i64 %i.abt) #30
  %i.abw = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(304) %24) #30 ; 0 uses
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %_ZN4mlir9Operation10getRegionsEv.exit.i292
  %i.abx = load ptr, ptr %20, align 8, !tbaa !103 ; 2 uses
  %i.aby = icmp eq ptr %i.abx, %i.bs
  br i1 %i.aby, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i295, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @free(ptr noundef %i.abx) #30
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i295

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit.i295: ; preds = %bb.em, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %indvars.iv.next.i296 = add nuw nsw i64 %indvars.iv.i275, 1 ; 2 uses
  %exitcond.not.i297 = icmp eq i64 %indvars.iv.next.i296, %wide.trip.count251.i272
  br i1 %exitcond.not.i297, label %._crit_edge.i298, label %bb.cw, !llvm.loop !2504

_ZN12_GLOBAL__N_134invokeCreateWithInferredReturnTypeIN4test36OpWithShapedTypeInferTypeInterfaceOpEEEvPN4mlir9OperationE.exit: ; preds = %._crit_edge.i298, %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  %i.abz = getelementptr inbounds nuw i8, ptr %.0696, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.abz, %i.aq
  br i1 %.not, label %._crit_edge699, label %bb.h

_ZN4llvmeqENS_9StringRefES0_.exit.thread558:      ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  %.0.copyload.i.i.i.i.i500 = load i64, ptr %i.a, align 8
  %i.aca = and i64 %.0.copyload.i.i.i.i.i500, -8
  %i.acb = inttoptr i64 %i.aca to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.acc = call ptr @_ZN4mlir11SymbolTable13getSymbolNameEPNS_9OperationE(ptr noundef %i.acb) #30
  store ptr %i.acc, ptr %10, align 8
  %i.acd = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.ace = extractvalue { ptr, i64 } %i.acd, 1
  %.not.i501 = icmp eq i64 %i.ace, 18
  br i1 %.not.i501, label %_ZN4llvmeqENS_9StringRefES0_.exit504, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit504:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread558
  %i.acf = extractvalue { ptr, i64 } %i.acd, 0    ; 2 uses
  %i.acg = load i128, ptr %i.acf, align 1
  %i.ach = xor i128 %i.acg, 148091859339559059505589129284112573812
  %i.aci = getelementptr i8, ptr %i.acf, i64 16
  %i.acj = load i16, ptr %i.aci, align 1
  %i.ack = zext i16 %i.acj to i128
  %i.acl = xor i128 %i.ack, 29550
  %i.acm = or i128 %i.ach, %i.acl
  %i.acn = icmp ne i128 %i.acm, 0
  %i.aco = zext i1 %i.acn to i32
  %i.acp = icmp eq i32 %i.aco, 0
  br i1 %i.acp, label %_ZN4llvmeqENS_9StringRefES0_.exit504.thread, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit504.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit504
  %.0.copyload.i.i.i.i.i505 = load i64, ptr %i.a, align 8
  %i.acq = and i64 %.0.copyload.i.i.i.i.i505, -8
  %i.acr = inttoptr i64 %i.acq to ptr             ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 44
  %i.act = load i32, ptr %i.acs, align 4          ; 3 uses
  %i.acu = and i32 %i.act, 8388607
  %i.acv = icmp ne i32 %i.acu, 0
  call void @llvm.assume(i1 %i.acv)
  %i.acw = lshr i32 %i.act, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i506 = and i32 %i.acw, 1
  %i.acx = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i506 to i64
  %i.acy = getelementptr inbounds nuw [16 x i8], ptr %i.acr, i64 %i.acx
  %i.acz = lshr i32 %i.act, 21
  %i.ada = and i32 %i.acz, 2040
  %i.adb = zext nneg i32 %i.ada to i64
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.adb
  %i.add = getelementptr inbounds nuw i8, ptr %i.acr, i64 40
  %i.ade = load i32, ptr %i.add, align 8, !tbaa !199
  %i.adf = zext i32 %i.ade to i64
  %i.adg = getelementptr inbounds nuw [32 x i8], ptr %i.adc, i64 %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 72
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !200 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 40
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adi, i64 32 ; 2 uses
  %.sroa.0524.0601 = load ptr, ptr %i.adj, align 8, !tbaa !200 ; 2 uses
  %.not563602 = icmp eq ptr %.sroa.0524.0601, %i.adk
  br i1 %.not563602, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EED2Ev.exit, label %.lr.ph

.preheader:                                       ; preds = %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514
  %i.adl = ptrtoint ptr %.sroa.11.1 to i64
  %.not564609 = icmp eq ptr %.sroa.0528.1, %.sroa.7.1
  br i1 %.not564609, label %._crit_edge, label %.lr.ph611

.lr.ph611:                                        ; preds = %.preheader
  %i.adm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.adn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ado = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.adp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ads = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.adt = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.adu = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.adv = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 9 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 3 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i13.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aea = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aec = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.eu

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit504.thread, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514
  %.sroa.0524.0606 = phi ptr [ %.sroa.0524.0, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514 ], [ %.sroa.0524.0601, %_ZN4llvmeqENS_9StringRefES0_.exit504.thread ] ; 2 uses
  %.sroa.11.0605 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514 ], [ null, %_ZN4llvmeqENS_9StringRefES0_.exit504.thread ] ; 4 uses
  %.sroa.7.0604 = phi ptr [ %.sroa.7.1, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514 ], [ null, %_ZN4llvmeqENS_9StringRefES0_.exit504.thread ] ; 4 uses
  %.sroa.0528.0603 = phi ptr [ %.sroa.0528.1, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514 ], [ null, %_ZN4llvmeqENS_9StringRefES0_.exit504.thread ] ; 6 uses
  %i.aed = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0524.0606) #30 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aee, align 8, !tbaa !123
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !126
  %i.aeh = icmp eq ptr %i.aeg, @_ZN4mlir6detail14TypeIDResolverIN4test36OpWithShapedTypeInferTypeInterfaceOpEvE2idE
  br i1 %i.aeh, label %bb.en, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514

bb.en:                                            ; preds = %.lr.ph
  %.not.i.i507 = icmp eq ptr %.sroa.7.0604, %.sroa.11.0605
  br i1 %.not.i.i507, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  store ptr %i.aed, ptr %.sroa.7.0604, align 8, !tbaa !116
  %i.aei = getelementptr inbounds nuw i8, ptr %.sroa.7.0604, i64 8
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514

bb.ep:                                            ; preds = %bb.en
  %i.aej = ptrtoint ptr %.sroa.11.0605 to i64
  %i.aek = ptrtoint ptr %.sroa.0528.0603 to i64
  %i.ael = sub i64 %i.aej, %i.aek                 ; 6 uses
  %i.aem = icmp eq i64 %i.ael, 9223372036854775800
  br i1 %i.aem, label %bb.eq, label %_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i508

bb.eq:                                            ; preds = %bb.ep
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #31
  unreachable

_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i508: ; preds = %bb.ep
  %i.aen = ashr exact i64 %i.ael, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i509 = call i64 @llvm.umax.i64(i64 %i.aen, i64 1)
  %i.aeo = add nsw i64 %.sroa.speculated.i.i.i.i509, %i.aen ; 2 uses
  %i.aep = icmp ult i64 %i.aeo, %i.aen
  %i.aeq = call i64 @llvm.umin.i64(i64 %i.aeo, i64 1152921504606846975)
  %i.aer = select i1 %i.aep, i64 1152921504606846975, i64 %i.aeq ; 3 uses
  %.not.i.i.i.i510 = icmp ne i64 %i.aer, 0
  call void @llvm.assume(i1 %.not.i.i.i.i510)
  %i.aes = shl nuw nsw i64 %i.aer, 3
  %i.aet = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aes) #29 ; 4 uses
  %i.aeu = getelementptr inbounds i8, ptr %i.aet, i64 %i.ael ; 2 uses
  store ptr %i.aed, ptr %i.aeu, align 8, !tbaa !116
  %i.aev = icmp sgt i64 %i.ael, 0
  br i1 %i.aev, label %bb.er, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i511

bb.er:                                            ; preds = %_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i508
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aet, ptr align 8 %.sroa.0528.0603, i64 %i.ael, i1 false)
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i511

_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i511: ; preds = %bb.er, %_ZNKSt6vectorIPN4mlir9OperationESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i508
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %.not.i17.i.i.i512 = icmp eq ptr %.sroa.0528.0603, null
  br i1 %.not.i17.i.i.i512, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i513, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i511
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0528.0603, i64 noundef %i.ael) #32
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i513

_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i513: ; preds = %bb.es, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i511
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aet, i64 %i.aer
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514

_ZNSt6vectorIPN4mlir9OperationESaIS2_EE9push_backEOS2_.exit514: ; preds = %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i513, %bb.eo, %.lr.ph
  %.sroa.0528.1 = phi ptr [ %.sroa.0528.0603, %.lr.ph ], [ %i.aet, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i513 ], [ %.sroa.0528.0603, %bb.eo ] ; 6 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.0604, %.lr.ph ], [ %i.aew, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i513 ], [ %i.aei, %bb.eo ] ; 3 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0605, %.lr.ph ], [ %i.aex, %_ZNSt6vectorIPN4mlir9OperationESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i513 ], [ %.sroa.11.0605, %bb.eo ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.sroa.0524.0606, i64 8
  %.sroa.0524.0 = load ptr, ptr %i.aey, align 8, !tbaa !200 ; 2 uses
  %.not563 = icmp eq ptr %.sroa.0524.0, %i.adk
  br i1 %.not563, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_116reifyReturnShapeEPN4mlir9OperationE.exit, %.preheader
  %.not.i.i.i515 = icmp eq ptr %.sroa.0528.1, null
  br i1 %.not.i.i.i515, label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EED2Ev.exit, label %bb.et

bb.et:                                            ; preds = %._crit_edge
  %i.aez = ptrtoint ptr %.sroa.0528.1 to i64
  %i.afa = sub i64 %i.adl, %i.aez
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0528.1, i64 noundef %i.afa) #32
  br label %_ZNSt6vectorIPN4mlir9OperationESaIS2_EED2Ev.exit

bb.eu:                                            ; preds = %.lr.ph611, %_ZN12_GLOBAL__N_116reifyReturnShapeEPN4mlir9OperationE.exit
  %.sroa.0519.0610 = phi ptr [ %.sroa.0528.1, %.lr.ph611 ], [ %i.agz, %_ZN12_GLOBAL__N_116reifyReturnShapeEPN4mlir9OperationE.exit ] ; 2 uses
  %i.afb = load ptr, ptr %.sroa.0519.0610, align 8, !tbaa !116 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.afd = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afc) #30
  store ptr %i.afd, ptr %4, align 8, !tbaa !145
end_hunk_0
