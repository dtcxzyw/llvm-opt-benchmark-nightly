Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUAsmParser?download=true
inline.NumInlined: 20691
inline.NumDeleted: 2705
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEjENK4$_10clES9_":bb.a
_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @"_ZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEjENK4$_11clES9_"(ptr nonnull %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::function.357", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_11clESC_EUlS0_E_E9_M_invokeERKSt9_Any_dataS0_", ptr %i.b, align 8, !tbaa !378
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_11clESC_EUlS0_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.a, align 8, !tbaa !347
  %i.c = call fastcc i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser18parseIntWithPrefixEPKcRN4llvm15SmallVectorImplISt10unique_ptrINS3_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS_13AMDGPUOperand5ImmTyESt8functionIFbRlEE(ptr noundef nonnull align 8 dereferenceable(1017) %.0.val, ptr noundef nonnull @.str.1913, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 62, ptr nofree noundef align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #30, !inline_history !16 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @"_ZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEjENK4$_12clES9_"(ptr nonnull %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::function.357", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_12clESC_EUlS0_E_E9_M_invokeERKSt9_Any_dataS0_", ptr %i.b, align 8, !tbaa !378
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_12clESC_EUlS0_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.a, align 8, !tbaa !347
  %i.c = call fastcc i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser18parseIntWithPrefixEPKcRN4llvm15SmallVectorImplISt10unique_ptrINS3_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS_13AMDGPUOperand5ImmTyESt8functionIFbRlEE(ptr noundef nonnull align 8 dereferenceable(1017) %.0.val, ptr noundef nonnull @.str.1914, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 63, ptr nofree noundef align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #30, !inline_history !16 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @"_ZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEjENK4$_13clES9_"(ptr nonnull %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::function.357", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_13clESC_EUlS0_E_E9_M_invokeERKSt9_Any_dataS0_", ptr %i.b, align 8, !tbaa !378
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_13clESC_EUlS0_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.a, align 8, !tbaa !347
  %i.c = call fastcc i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser18parseIntWithPrefixEPKcRN4llvm15SmallVectorImplISt10unique_ptrINS3_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS_13AMDGPUOperand5ImmTyESt8functionIFbRlEE(ptr noundef nonnull align 8 dereferenceable(1017) %.0.val, ptr noundef nonnull @.str.1915, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 64, ptr nofree noundef align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #30, !inline_history !16 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @"_ZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEjENK4$_14clES9_"(ptr nonnull %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::function.357", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_14clESC_EUlS0_E_E9_M_invokeERKSt9_Any_dataS0_", ptr %i.b, align 8, !tbaa !378
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_14clESC_EUlS0_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.a, align 8, !tbaa !347
  %i.c = call fastcc i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser18parseIntWithPrefixEPKcRN4llvm15SmallVectorImplISt10unique_ptrINS3_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS_13AMDGPUOperand5ImmTyESt8functionIFbRlEE(ptr noundef nonnull align 8 dereferenceable(1017) %.0.val, ptr noundef nonnull @.str.1916, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 75, ptr nofree noundef align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #30, !inline_history !16 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @"_ZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEjENK4$_15clES9_"(ptr nonnull %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::function.357", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_15clESC_EUlS0_E_E9_M_invokeERKSt9_Any_dataS0_", ptr %i.b, align 8, !tbaa !378
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_15clESC_EUlS0_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.a, align 8, !tbaa !347
  %i.c = call fastcc i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser18parseIntWithPrefixEPKcRN4llvm15SmallVectorImplISt10unique_ptrINS3_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS_13AMDGPUOperand5ImmTyESt8functionIFbRlEE(ptr noundef nonnull align 8 dereferenceable(1017) %.0.val, ptr noundef nonnull @.str.1917, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 65, ptr nofree noundef align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #30, !inline_history !16 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @"_ZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEjENK4$_16clES9_"(ptr nonnull %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::function.357", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_16clESC_EUlS0_E_E9_M_invokeERKSt9_Any_dataS0_", ptr %i.b, align 8, !tbaa !378
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_16clESC_EUlS0_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.a, align 8, !tbaa !347
  %i.c = call fastcc i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser18parseIntWithPrefixEPKcRN4llvm15SmallVectorImplISt10unique_ptrINS3_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS_13AMDGPUOperand5ImmTyESt8functionIFbRlEE(ptr noundef nonnull align 8 dereferenceable(1017) %.0.val, ptr noundef nonnull @.str.1936, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 74, ptr nofree noundef align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #30, !inline_history !16 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser15parseGPRIdxModeERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::AsmToken", align 8    ; 20 uses
  %3 = alloca %"class.llvm::AsmToken", align 8    ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::AsmToken", align 8    ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.std::unique_ptr.287", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 0, ptr %i.a, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %.val) #30, !noalias !1423 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !259, !noalias !1423 ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !259, !alias.scope !1423
  %i.i = icmp ult i32 %i.h, 65
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !tbaa !69, !noalias !1423
  store i64 %i.j, ptr %i.d, align 8, !tbaa !69, !alias.scope !1423
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.e) #30
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i: ; preds = %bb.c, %bb.b
  %i.k = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #30 ; 3 uses
  %i.l = load i32, ptr %i.f, align 8, !tbaa !259
  %i.m = icmp ugt i32 %i.l, 64
  br i1 %i.m, label %bb.d, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.n) #32
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit

_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit: ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.p = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefENS1_8AsmToken9TokenKindE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr nonnull @.str.1937, i64 7, i32 noundef 17)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.val22.i = load ptr, ptr %i.q, align 8, !tbaa !76 ; 3 uses
  br i1 %i.p, label %bb.f, label %bb.au

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit
  %i.r = getelementptr i8, ptr %.val22.i, i64 48
  %.val22.val.i = load ptr, ptr %i.r, align 8, !tbaa !254
  %.val22.val.val.i = load i32, ptr %.val22.val.i, align 8, !tbaa !258
  %i.s = icmp eq i32 %.val22.val.val.i, 18
  br i1 %i.s, label %.sink.split, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.preheader.i

_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.preheader.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.i

_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.i: ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit26.i, %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.preheader.i
  %.015.i = phi i64 [ %i.dr, %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit26.i ], [ 0, %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.preheader.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.y = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %.val.i) #30, !noalias !1424 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !259, !noalias !1424 ; 2 uses
  store i32 %i.ab, ptr %i.u, align 8, !tbaa !259, !alias.scope !1424
  %i.ac = icmp ult i32 %i.ab, 65
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.i
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !69, !noalias !1424
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !69, !alias.scope !1424
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(12) %i.z) #30
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ae = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #30 ; 2 uses
  %i.af = load i32, ptr %i.u, align 8, !tbaa !259
  %i.ag = icmp ugt i32 %i.af, 64
  br i1 %i.ag, label %bb.i, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit.i

bb.i:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !69  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #32
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit.i: ; preds = %bb.j, %bb.i, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.aj = load ptr, ptr @_ZN4llvm6AMDGPU13VGPRIndexMode10IdSymbolicE, align 8, !tbaa !260 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN4llvm9StringRefC2EPKc.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit.i
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #30
  br label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.k, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit.i
  %.sroa.0.0.i.i = phi i64 [ %i.ak, %bb.k ], [ 0, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit.i ] ; 3 uses
  %.val4.i.i = load ptr, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.al = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %.val4.i.i) #30, !noalias !1425 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !259, !noalias !1425 ; 2 uses
  store i32 %i.ao, ptr %i.w, align 8, !tbaa !259, !alias.scope !1425
  %i.ap = icmp ult i32 %i.ao, 65
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !69, !noalias !1425
  store i64 %i.aq, ptr %i.v, align 8, !tbaa !69, !alias.scope !1425
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.i

bb.m:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.am) #30
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ar = load i32, ptr %2, align 8, !tbaa !258
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.n, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.i

bb.n:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !260
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !101
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i, %.sroa.0.0.i.i
  br i1 %.not.i.i.i.i.i, label %bb.o, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.at = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.at, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr readonly %i.aj, i64 %.sroa.0.0.i.i)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.i
  %i.av = phi i1 [ false, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.i ], [ %i.au, %bb.p ], [ false, %bb.n ], [ true, %bb.o ]
  %i.aw = load i32, ptr %i.w, align 8, !tbaa !259
  %i.ax = icmp ugt i32 %i.aw, 64
  br i1 %i.ax, label %bb.q, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.i

bb.q:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.i
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !69  ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #32
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.i: ; preds = %bb.r, %bb.q, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.av, label %bb.aq, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.i

_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.i: ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.i
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPU13VGPRIndexMode10IdSymbolicE, i64 8), align 8, !tbaa !260 ; 3 uses
  %.not.i.1.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.1.i, label %_ZN4llvm9StringRefC2EPKc.exit.1.i, label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.i
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #30
  br label %_ZN4llvm9StringRefC2EPKc.exit.1.i

_ZN4llvm9StringRefC2EPKc.exit.1.i:                ; preds = %bb.s, %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.i
  %.sroa.0.0.i.1.i = phi i64 [ %i.bb, %bb.s ], [ 0, %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.i ] ; 3 uses
  %.val4.i.1.i = load ptr, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %i.bc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %.val4.i.1.i) #30, !noalias !1426 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !259, !noalias !1426 ; 2 uses
  store i32 %i.bf, ptr %i.w, align 8, !tbaa !259, !alias.scope !1426
  %i.bg = icmp ult i32 %i.bf, 65
  br i1 %i.bg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.1.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.bd) #30
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.1.i

bb.u:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.1.i
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !69, !noalias !1426
  store i64 %i.bh, ptr %i.v, align 8, !tbaa !69, !alias.scope !1426
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.1.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.1.i: ; preds = %bb.u, %bb.t
  %i.bi = load i32, ptr %2, align 8, !tbaa !258
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.v, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.1.i

bb.v:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.1.i
  %.sroa.0.0.copyload.i.i.i.i.1.i = load ptr, ptr %i.x, align 8, !tbaa !260
  %.sroa.2.0.copyload.i.i.i.i.1.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !101
  %.not.i.i.i.i.1.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.1.i, %.sroa.0.0.i.1.i
  br i1 %.not.i.i.i.i.1.i, label %bb.w, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.1.i

bb.w:                                             ; preds = %bb.v
  %i.bk = icmp eq i64 %.sroa.0.0.i.1.i, 0
  br i1 %i.bk, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.1.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %bcmp.i.i.i.i.1.i = call i32 @bcmp(ptr %.sroa.0.0.copyload.i.i.i.i.1.i, ptr readonly %i.ba, i64 %.sroa.0.0.i.1.i)
  %i.bl = icmp eq i32 %bcmp.i.i.i.i.1.i, 0
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.1.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.1.i: ; preds = %bb.x, %bb.w, %bb.v, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.1.i
  %i.bm = phi i1 [ false, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.1.i ], [ %i.bl, %bb.x ], [ false, %bb.v ], [ true, %bb.w ]
  %i.bn = load i32, ptr %i.w, align 8, !tbaa !259
  %i.bo = icmp ugt i32 %i.bn, 64
  br i1 %i.bo, label %bb.y, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.1.i

bb.y:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.1.i
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !69  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.1.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #32
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.1.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.1.i: ; preds = %bb.z, %bb.y, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.bm, label %bb.aq, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.1.i

_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.1.i: ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.1.i
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPU13VGPRIndexMode10IdSymbolicE, i64 16), align 8, !tbaa !260 ; 3 uses
  %.not.i.2.i = icmp eq ptr %i.br, null
  br i1 %.not.i.2.i, label %_ZN4llvm9StringRefC2EPKc.exit.2.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.1.i
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #30
  br label %_ZN4llvm9StringRefC2EPKc.exit.2.i

_ZN4llvm9StringRefC2EPKc.exit.2.i:                ; preds = %bb.aa, %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.1.i
  %.sroa.0.0.i.2.i = phi i64 [ %i.bs, %bb.aa ], [ 0, %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.1.i ] ; 3 uses
  %.val4.i.2.i = load ptr, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.bt = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %.val4.i.2.i) #30, !noalias !1427 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !259, !noalias !1427 ; 2 uses
  store i32 %i.bw, ptr %i.w, align 8, !tbaa !259, !alias.scope !1427
  %i.bx = icmp ult i32 %i.bw, 65
  br i1 %i.bx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.2.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.bu) #30
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.2.i

bb.ac:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.2.i
  %i.by = load i64, ptr %i.bu, align 8, !tbaa !69, !noalias !1427
  store i64 %i.by, ptr %i.v, align 8, !tbaa !69, !alias.scope !1427
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.2.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.2.i: ; preds = %bb.ac, %bb.ab
  %i.bz = load i32, ptr %2, align 8, !tbaa !258
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.ad, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.2.i

bb.ad:                                            ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.2.i
  %.sroa.0.0.copyload.i.i.i.i.2.i = load ptr, ptr %i.x, align 8, !tbaa !260
  %.sroa.2.0.copyload.i.i.i.i.2.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !101
  %.not.i.i.i.i.2.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.2.i, %.sroa.0.0.i.2.i
  br i1 %.not.i.i.i.i.2.i, label %bb.ae, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.2.i

bb.ae:                                            ; preds = %bb.ad
  %i.cb = icmp eq i64 %.sroa.0.0.i.2.i, 0
  br i1 %i.cb, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.2.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %bcmp.i.i.i.i.2.i = call i32 @bcmp(ptr %.sroa.0.0.copyload.i.i.i.i.2.i, ptr readonly %i.br, i64 %.sroa.0.0.i.2.i)
  %i.cc = icmp eq i32 %bcmp.i.i.i.i.2.i, 0
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.2.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.2.i: ; preds = %bb.af, %bb.ae, %bb.ad, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.2.i
  %i.cd = phi i1 [ false, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.2.i ], [ %i.cc, %bb.af ], [ false, %bb.ad ], [ true, %bb.ae ]
  %i.ce = load i32, ptr %i.w, align 8, !tbaa !259
  %i.cf = icmp ugt i32 %i.ce, 64
  br i1 %i.cf, label %bb.ag, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.2.i

bb.ag:                                            ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.2.i
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !69  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.2.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #32
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.2.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.2.i: ; preds = %bb.ah, %bb.ag, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.cd, label %bb.aq, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.2.i

_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.2.i: ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.2.i
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPU13VGPRIndexMode10IdSymbolicE, i64 24), align 8, !tbaa !260 ; 3 uses
  %.not.i.3.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.3.i, label %_ZN4llvm9StringRefC2EPKc.exit.3.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.2.i
  %i.cj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ci) #30
  br label %_ZN4llvm9StringRefC2EPKc.exit.3.i

_ZN4llvm9StringRefC2EPKc.exit.3.i:                ; preds = %bb.ai, %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.2.i
  %.sroa.0.0.i.3.i = phi i64 [ %i.cj, %bb.ai ], [ 0, %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.2.i ] ; 3 uses
  %.val4.i.3.i = load ptr, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %i.ck = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %.val4.i.3.i) #30, !noalias !1428 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !259, !noalias !1428 ; 2 uses
  store i32 %i.cn, ptr %i.w, align 8, !tbaa !259, !alias.scope !1428
  %i.co = icmp ult i32 %i.cn, 65
  br i1 %i.co, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.3.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.cl) #30
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.3.i

bb.ak:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.3.i
  %i.cp = load i64, ptr %i.cl, align 8, !tbaa !69, !noalias !1428
  store i64 %i.cp, ptr %i.v, align 8, !tbaa !69, !alias.scope !1428
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.3.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.3.i: ; preds = %bb.ak, %bb.aj
  %i.cq = load i32, ptr %2, align 8, !tbaa !258
  %i.cr = icmp eq i32 %i.cq, 2
  br i1 %i.cr, label %bb.al, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.3.i

bb.al:                                            ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.3.i
  %.sroa.0.0.copyload.i.i.i.i.3.i = load ptr, ptr %i.x, align 8, !tbaa !260
  %.sroa.2.0.copyload.i.i.i.i.3.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !101
  %.not.i.i.i.i.3.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.3.i, %.sroa.0.0.i.3.i
  br i1 %.not.i.i.i.i.3.i, label %bb.am, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.3.i

bb.am:                                            ; preds = %bb.al
  %i.cs = icmp eq i64 %.sroa.0.0.i.3.i, 0
  br i1 %i.cs, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.3.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %bcmp.i.i.i.i.3.i = call i32 @bcmp(ptr %.sroa.0.0.copyload.i.i.i.i.3.i, ptr readonly %i.ci, i64 %.sroa.0.0.i.3.i)
  %i.ct = icmp eq i32 %bcmp.i.i.i.i.3.i, 0
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.3.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.3.i: ; preds = %bb.an, %bb.am, %bb.al, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.3.i
  %i.cu = phi i1 [ false, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i.i.3.i ], [ %i.ct, %bb.an ], [ false, %bb.al ], [ true, %bb.am ]
  %i.cv = load i32, ptr %i.w, align 8, !tbaa !259
  %i.cw = icmp ugt i32 %i.cv, 64
  br i1 %i.cw, label %bb.ao, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.3.i

bb.ao:                                            ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.3.i
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !69  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.3.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #32
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.3.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.3.i: ; preds = %bb.ap, %bb.ao, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdERKN4llvm8AsmTokenENS1_9StringRefE.exit.i.i.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.cu, label %bb.aq, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.3.i

_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.3.i: ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.cz = icmp eq i64 %.015.i, 0
  %i.da = select i1 %i.cz, ptr @.str.1939, ptr @.str.1940 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.dc, align 1, !tbaa !100
  %i.dd = load i8, ptr %i.da, align 1, !tbaa !69
  %.not.i24.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i24.i, label %_ZN4llvm5TwineC2EPKc.exit.i, label %bb.ar

bb.aq:                                            ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.3.i, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.2.i, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.1.i, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.i
  %.01846.lcssa.wide.i = phi i32 [ 0, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.i ], [ 1, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.1.i ], [ 2, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.2.i ], [ 3, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser4isIdEN4llvm9StringRefE.exit.i.3.i ]
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !66 ; 2 uses
  %i.de = load ptr, ptr %.val.i.i, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call noundef nonnull align 8 dereferenceable(40) ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(243) %.val.i.i) #30, !inline_history !1418 ; 0 uses
  %i.di = shl nuw nsw i32 1, %.01846.lcssa.wide.i
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = and i64 %.015.i, %i.dj
  %.not.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.3.i
  store ptr %i.da, ptr %4, align 8, !tbaa !69
  br label %_ZN4llvm5TwineC2EPKc.exit.i

_ZN4llvm5TwineC2EPKc.exit.i:                      ; preds = %bb.ar, %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.3.i
  %storemerge.i.i = phi i8 [ 3, %bb.ar ], [ 1, %_ZN12_GLOBAL__N_115AMDGPUAsmParser9trySkipIdEN4llvm9StringRefE.exit.3.i ]
  store i8 %storemerge.i.i, ptr %i.db, align 8, !tbaa !99
  %i.dl = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.dm = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.dl, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, ptr null) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN12_GLOBAL__N_115AMDGPUAsmParser16parseGPRIdxMacroEv.exit.thread

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.do, align 1, !tbaa !100
  store ptr @.str.1941, ptr %5, align 8, !tbaa !69
  store i8 3, ptr %i.dn, align 8, !tbaa !99
  %i.dp = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.dq = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.dp, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, ptr null) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN12_GLOBAL__N_115AMDGPUAsmParser16parseGPRIdxMacroEv.exit.thread

bb.at:                                            ; preds = %bb.aq
  %i.dr = or i64 %.015.i, %i.dj                   ; 2 uses
  %.val20.i = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ds = getelementptr i8, ptr %.val20.i, i64 48
  %.val20.val.i = load ptr, ptr %i.ds, align 8, !tbaa !254
  %.val20.val.val.i = load i32, ptr %.val20.val.i, align 8, !tbaa !258
  %i.dt = icmp eq i32 %.val20.val.val.i, 18
  br i1 %i.dt, label %.sink.split, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit26.i

_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit26.i: ; preds = %bb.at
  %i.du = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115AMDGPUAsmParser9skipTokenEN4llvm8AsmToken9TokenKindENS1_9StringRefE(ptr noundef nonnull readonly align 8 dereferenceable(1017) %0, i32 noundef 26, ptr nonnull @.str.1909, i64 41)
  br i1 %i.du, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.i, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser16parseGPRIdxMacroEv.exit.thread

bb.au:                                            ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit
  %i.dv = load ptr, ptr %.val22.i, align 8, !tbaa !40
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 224
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef zeroext i1 %i.dx(ptr noundef nonnull align 8 dereferenceable(243) %.val22.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30
  br i1 %i.dy, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser16parseGPRIdxMacroEv.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %or.cond = icmp ult i64 %i.dz, 16
  br i1 %or.cond, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.eb, align 1, !tbaa !100
  store ptr @.str.1938, ptr %7, align 8, !tbaa !69
  store i8 3, ptr %i.ea, align 8, !tbaa !99
  %i.ec = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.ed = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ec, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr null, ptr null) #30
  %i.ee = zext i1 %i.ed to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN12_GLOBAL__N_115AMDGPUAsmParser16parseGPRIdxMacroEv.exit.thread

.sink.split:                                      ; preds = %bb.at, %bb.f
  %.lcssa47.sink = phi i64 [ 0, %bb.f ], [ %i.dr, %bb.at ] ; 2 uses
  %.val21.i = load ptr, ptr %i.b, align 8         ; 2 uses
  %9 = load ptr, ptr %.val21.i, align 8, !tbaa !40
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 152
  %11 = load ptr, ptr %10, align 8
  %12 = call noundef nonnull align 8 dereferenceable(40) ptr %11(ptr noundef nonnull align 8 dereferenceable(243) %.val21.i) #30 ; 0 uses
  store i64 %.lcssa47.sink, ptr %i.a, align 8, !tbaa !101
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.av
  %i.ef = phi i64 [ %i.dz, %bb.av ], [ %.lcssa47.sink, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.eg = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31, !noalias !1429 ; 16 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 -1, ptr %i.eh, align 8, !tbaa !273, !noalias !1429
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 32 ; 2 uses
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !274, !noalias !1429
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store i64 0, ptr %i.ek, align 8, !tbaa !75, !noalias !1429
  store i8 0, ptr %i.ej, align 8, !tbaa !69, !noalias !1429
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN12_GLOBAL__N_113AMDGPUOperandE, i64 16), ptr %i.eg, align 8, !tbaa !40, !noalias !1429
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  store i32 1, ptr %i.el, align 8, !tbaa !277, !noalias !1429
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  store ptr %0, ptr %i.en, align 8, !tbaa !278, !noalias !1429
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  store i32 -1, ptr %i.eo, align 8, !tbaa !279, !noalias !1429
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  store i64 %i.ef, ptr %i.ep, align 8, !tbaa !69, !noalias !1430
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 92
  store i8 0, ptr %i.eq, align 4, !tbaa !69, !noalias !1430
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 88
  store i32 55, ptr %i.er, align 8, !tbaa !69, !noalias !1430
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  store i64 0, ptr %i.es, align 8, !noalias !1430
  store ptr %i.k, ptr %i.em, align 8, !tbaa !260, !noalias !1430
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  store ptr %i.k, ptr %i.et, align 8, !tbaa !260, !noalias !1430
  store ptr %i.eg, ptr %8, align 8, !tbaa !282
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !261 ; 2 uses
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !262
  %.not.i.i.not.i = icmp ult i32 %i.ev, %i.ez
  %.pre3.i = load ptr, ptr %1, align 8, !tbaa !254 ; 4 uses
  %i.fa = ptrtoint ptr %i.eg to i64               ; 2 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit, label %bb.ay, !prof !265

bb.ay:                                            ; preds = %bb.ax
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i, i64 %i.ew
  %i.fc = icmp uge ptr %8, %.pre3.i
  %i.fd = icmp ult ptr %8, %i.fb
  %spec.select.i.i.i.i.i = and i1 %i.fc, %i.fd
  br i1 %spec.select.i.i.i.i.i, label %bb.az, label %.critedge.i.i.i, !prof !283

bb.az:                                            ; preds = %bb.ay
  %i.fe = ptrtoint ptr %8 to i64
  %i.ff = ptrtoint ptr %.pre3.i to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ex)
  %i.fh = load ptr, ptr %1, align 8, !tbaa !254   ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.fg ; 2 uses
  %.pre = load i64, ptr %i.fi, align 8, !tbaa !284
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

.critedge.i.i.i:                                  ; preds = %bb.ay
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ex)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !254
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit: ; preds = %bb.ax, %bb.az, %.critedge.i.i.i
  %i.fj = phi i64 [ %i.fa, %bb.ax ], [ %.pre, %bb.az ], [ %i.fa, %.critedge.i.i.i ]
  %i.fk = phi ptr [ %.pre3.i, %bb.ax ], [ %i.fh, %bb.az ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %8, %bb.ax ], [ %i.fi, %bb.az ], [ %8, %.critedge.i.i.i ]
  %i.fl = load i32, ptr %i.eu, align 8, !tbaa !261 ; 2 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fm
  store i64 %i.fj, ptr %i.fn, align 8, !tbaa !284
  store ptr null, ptr %.016.i.i.i, align 8, !tbaa !284
  %i.fo = add i32 %i.fl, 1
  store i32 %i.fo, ptr %i.eu, align 8, !tbaa !261
  %i.fp = load ptr, ptr %8, align 8, !tbaa !284   ; 3 uses
  %.not.i4 = icmp eq ptr %i.fp, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113AMDGPUOperandESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(48) %i.fp) #30, !inline_history !5
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113AMDGPUOperandESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_113AMDGPUOperandESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm18MCParsedAsmOperandEEclEPS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_18MCParsedAsmOperandESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN12_GLOBAL__N_115AMDGPUAsmParser16parseGPRIdxMacroEv.exit.thread

_ZN12_GLOBAL__N_115AMDGPUAsmParser16parseGPRIdxMacroEv.exit.thread: ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit26.i, %bb.as, %_ZN4llvm5TwineC2EPKc.exit.i, %bb.au, %_ZNSt10unique_ptrIN12_GLOBAL__N_113AMDGPUOperandESt14default_deleteIS1_EED2Ev.exit, %bb.aw
  %.sroa.08.0 = phi i32 [ %i.ee, %bb.aw ], [ 0, %_ZNSt10unique_ptrIN12_GLOBAL__N_113AMDGPUOperandESt14default_deleteIS1_EED2Ev.exit ], [ 1, %bb.au ], [ 1, %bb.as ], [ 1, %_ZN4llvm5TwineC2EPKc.exit.i ], [ 1, %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit26.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.sroa.08.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @"_ZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEjENK4$_17clES9_"(ptr nonnull %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::function.357", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_17clESC_EUlS0_E_E9_M_invokeERKSt9_Any_dataS0_", ptr %i.b, align 8, !tbaa !378
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_17clESC_EUlS0_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.a, align 8, !tbaa !347
  %i.c = call fastcc i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser18parseIntWithPrefixEPKcRN4llvm15SmallVectorImplISt10unique_ptrINS3_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS_13AMDGPUOperand5ImmTyESt8functionIFbRlEE(ptr noundef nonnull align 8 dereferenceable(1017) %.0.val, ptr noundef nonnull @.str.1717, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 10, ptr nofree noundef align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #30, !inline_history !16 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @"_ZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS1_18MCParsedAsmOperandESt14default_deleteIS4_EEEEjENK4$_18clES9_"(ptr nonnull %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::function.357", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_18clESC_EUlS0_E_E9_M_invokeERKSt9_Any_dataS0_", ptr %i.b, align 8, !tbaa !378
  store ptr @"_ZNSt17_Function_handlerIFbRlEZZN12_GLOBAL__N_115AMDGPUAsmParser21tryCustomParseOperandERN4llvm15SmallVectorImplISt10unique_ptrINS4_18MCParsedAsmOperandESt14default_deleteIS7_EEEEjENK4$_18clESC_EUlS0_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.a, align 8, !tbaa !347
  %i.c = call fastcc i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser18parseIntWithPrefixEPKcRN4llvm15SmallVectorImplISt10unique_ptrINS3_18MCParsedAsmOperandESt14default_deleteIS6_EEEENS_13AMDGPUOperand5ImmTyESt8functionIFbRlEE(ptr noundef nonnull align 8 dereferenceable(1017) %.0.val, ptr noundef nonnull @.str.1717, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 10, ptr nofree noundef align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #30, !inline_history !16 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_115AMDGPUAsmParser10isRegisterERKN4llvm8AsmTokenES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 %.0.val) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !258
  switch i32 %i.b, label %.critedge.fold.split [
    i32 19, label %.critedge
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !260 ; 7 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !101 ; 7 uses
  %.not.i.i = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i.i, label %_ZL17getRegularRegInfoN4llvm9StringRefE.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.b
  %lhsc.i = load i8, ptr %.sroa.0.0.copyload.i, align 1 ; 2 uses
  switch i8 %lhsc.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread11.1.i [
    i8 118, label %bb.c
    i8 115, label %.fold.split
  ]

_ZNK4llvm9StringRef11starts_withES0_.exit.thread11.1.i: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.not.i.2.i = icmp ult i64 %.sroa.2.0.copyload.i, 4
  br i1 %.not.i.2.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread11.2.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.2.i

_ZNK4llvm9StringRef11starts_withES0_.exit.2.i:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread11.1.i
  %i.d = load i32, ptr %.sroa.0.0.copyload.i, align 1
  %i.e = icmp ne i32 %i.d, 1886221428
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.3.i

_ZNK4llvm9StringRef11starts_withES0_.exit.thread11.2.i: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread11.1.i
  %.not.i.3.not.i = icmp eq i64 %.sroa.2.0.copyload.i, 3
  br i1 %.not.i.3.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.3.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.4.i

_ZNK4llvm9StringRef11starts_withES0_.exit.3.i:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread11.2.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.2.i
  %i.h = load i16, ptr %.sroa.0.0.copyload.i, align 1
  %i.i = xor i16 %i.h, 25441
  %i.j = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i16
  %i.m = xor i16 %i.l, 99
  %i.n = or i16 %i.i, %i.m
  %i.o = icmp ne i16 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.4.i

_ZNK4llvm9StringRef11starts_withES0_.exit.4.i:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.3.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread11.2.i
  %i.r = icmp eq i8 %lhsc.i, 97
  br i1 %i.r, label %bb.c, label %_ZL17getRegularRegInfoN4llvm9StringRefE.exit

.fold.split:                                      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %.fold.split, %_ZNK4llvm9StringRef11starts_withES0_.exit.3.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.2.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.4.i
  %.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL16RegularRegisters, i64 96), %_ZNK4llvm9StringRef11starts_withES0_.exit.4.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL16RegularRegisters, i64 72), %_ZNK4llvm9StringRef11starts_withES0_.exit.3.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL16RegularRegisters, i64 48), %_ZNK4llvm9StringRef11starts_withES0_.exit.2.i ], [ @_ZL16RegularRegisters, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL16RegularRegisters, i64 24), %.fold.split ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !101
  %.sroa.speculated4.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.4.0.copyload) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.speculated4.i ; 2 uses
  %i.t = sub nuw i64 %.sroa.2.0.copyload.i, %.sroa.speculated4.i ; 4 uses
  switch i64 %i.t, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i [
    i64 0, label %bb.d
    i64 1, label %_ZN4llvm9StringRef12consume_backES0_.exit22
  ]

_ZNK4llvm9StringRef9ends_withES0_.exit.i:         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -2
  %i.w = load i16, ptr %i.v, align 1
  %i.x = icmp ne i16 %i.w, 27694
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvm9StringRef12consume_backES0_.exit, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i19

_ZN4llvm9StringRef12consume_backES0_.exit:        ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i
  %i.aa = add i64 %i.t, -2                        ; 3 uses
  %.not.i.i18 = icmp ult i64 %i.aa, 2
  br i1 %.not.i.i18, label %_ZN4llvm9StringRef12consume_backES0_.exit22, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i19

_ZNK4llvm9StringRef9ends_withES0_.exit.i19:       ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i, %_ZN4llvm9StringRef12consume_backES0_.exit
  %.sroa.7.019 = phi i64 [ %i.aa, %_ZN4llvm9StringRef12consume_backES0_.exit ], [ %i.t, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.7.019
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = icmp ne i16 %i.ad, 26670
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = add i64 %.sroa.7.019, -2
  %spec.select13 = select i1 %i.ag, i64 %i.ah, i64 %.sroa.7.019
  br label %_ZN4llvm9StringRef12consume_backES0_.exit22

_ZN4llvm9StringRef12consume_backES0_.exit22:      ; preds = %bb.c, %_ZNK4llvm9StringRef9ends_withES0_.exit.i19, %_ZN4llvm9StringRef12consume_backES0_.exit
  %.sroa.7.1 = phi i64 [ %i.aa, %_ZN4llvm9StringRef12consume_backES0_.exit ], [ %spec.select13, %_ZNK4llvm9StringRef9ends_withES0_.exit.i19 ], [ %i.t, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ai = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr nonnull %i.s, i64 %.sroa.7.1, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30
  %i.aj = load i64, ptr %i.a, align 8
  %.not.i.i23 = icmp ugt i64 %i.aj, 4294967295
  %or.cond.not = select i1 %i.ai, i1 true, i1 %.not.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %or.cond.not, label %_ZL17getRegularRegInfoN4llvm9StringRefE.exit, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp eq i32 %.0.val, 19
  br i1 %i.ak, label %.critedge, label %_ZL17getRegularRegInfoN4llvm9StringRefE.exit

_ZL17getRegularRegInfoN4llvm9StringRefE.exit:     ; preds = %_ZN4llvm9StringRef12consume_backES0_.exit22, %bb.d, %_ZNK4llvm9StringRef11starts_withES0_.exit.4.i, %bb.b
  %i.al = call fastcc i32 @_ZL20getSpecialRegForNameN4llvm9StringRefE(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.am = icmp ne i32 %i.al, 0
  br label %.critedge

.critedge.fold.split:                             ; preds = %bb.a
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm9StringRef12consume_backES0_.exit22, %bb.a, %.critedge.fold.split, %_ZL17getRegularRegInfoN4llvm9StringRefE.exit, %bb.d
  %.4 = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ %i.am, %_ZL17getRegularRegInfoN4llvm9StringRefE.exit ], [ false, %.critedge.fold.split ], [ true, %_ZN4llvm9StringRef12consume_backES0_.exit22 ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115AMDGPUAsmParser10isRegisterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1017) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::AsmToken", align 8    ; 6 uses
  %2 = alloca %"class.llvm::AsmToken", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.b = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %.val) #30, !noalias !1439 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !259, !noalias !1439 ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !259, !alias.scope !1439
  %i.h = icmp ult i32 %i.g, 65
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !69, !noalias !1439
  store i64 %i.i, ptr %i.c, align 8, !tbaa !69, !alias.scope !1439
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.d) #30
end_hunk_0
