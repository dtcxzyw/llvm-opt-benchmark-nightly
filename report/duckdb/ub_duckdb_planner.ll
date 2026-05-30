inline.NumInlined: 13015
inline.NumDeleted: 6155
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator17EnumerateChildrenERKS2_RKSt8functionIFvSA_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation":bb.a
"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator17EnumerateChildrenERKNS1_10ExpressionERKSt8functionIFvS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator17EnumerateChildrenERS2_RKSt8functionIFvS9_EEE3$_0E9_M_invokeERKSt9_Any_dataS6_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !2545  ; 3 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !285
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIvRZN6duckdb18ExpressionIterator17EnumerateChildrenERNS0_10ExpressionERKSt8functionIFvS3_EEE3$_0JRNS0_10unique_ptrIS2_St14default_deleteIS2_ELb1EEEEENSt9enable_ifIXsr7is_voidIT_EE5valueESH_E4typeEOT0_DpOT1_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

"_ZSt10__invoke_rIvRZN6duckdb18ExpressionIterator17EnumerateChildrenERNS0_10ExpressionERKSt8functionIFvS3_EEE3$_0JRNS0_10unique_ptrIS2_St14default_deleteIS2_ELb1EEEEENSt9enable_ifIXsr7is_voidIT_EE5valueESH_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !353
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(88) %i.a), !inline_history !2547
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator17EnumerateChildrenERS2_RKSt8functionIFvS9_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator17EnumerateChildrenERNS1_10ExpressionERKSt8functionIFvS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb18ExpressionIterator17EnumerateChildrenERNS_10ExpressionERKSt8functionIFvS2_EEE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator17EnumerateChildrenERNS1_10ExpressionERKSt8functionIFvS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator17EnumerateChildrenERNS1_10ExpressionERKSt8functionIFvS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !351
  store i64 %.val.i, ptr %0, align 8, !tbaa !351
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator17EnumerateChildrenERNS1_10ExpressionERKSt8functionIFvS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator17EnumerateChildrenERNS1_10ExpressionERKSt8functionIFvS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator19EnumerateExpressionES6_RKSt8functionIFvRS2_EEE3$_0E9_M_invokeERKSt9_Any_dataS6_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !2548
  tail call void @_ZN6duckdb18ExpressionIterator19EnumerateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERKSt8functionIFvRS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %.val), !inline_history !2550
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator19EnumerateExpressionES6_RKSt8functionIFvRS2_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvRS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERKSt8functionIFvRS2_EEE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvRS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvRS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !351
  store i64 %.val.i, ptr %0, align 8, !tbaa !351
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvRS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvRS4_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator19EnumerateExpressionES6_RKSt8functionIS7_EE3$_0E9_M_invokeERKSt9_Any_dataS6_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !2551
  tail call void @_ZN6duckdb18ExpressionIterator19EnumerateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERKSt8functionIFvS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %.val), !inline_history !2553
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator19EnumerateExpressionES6_RKSt8functionIS7_EE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERKSt8functionIFvS6_EEE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !356
  store i64 %.val.i, ptr %0, align 8, !tbaa !356
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator19EnumerateExpressionERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNS0_18ExpressionIterator20VisitExpressionClassES3_NS0_15ExpressionClassERKSt8functionIS4_EE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !2554
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !2556
  %.val.val = load i8, ptr %.val, align 1, !tbaa !358
  tail call void @_ZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS_10ExpressionENS_15ExpressionClassERKSt8functionIFvS3_EE(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 noundef zeroext %.val.val, ptr noundef nonnull align 8 dereferenceable(32) %.val2), !inline_history !2557
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNS0_18ExpressionIterator20VisitExpressionClassES3_NS0_15ExpressionClassERKSt8functionIS4_EE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS1_10ExpressionENS1_15ExpressionClassERKSt8functionIFvS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS_10ExpressionENS_15ExpressionClassERKSt8functionIFvS3_EEE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS1_10ExpressionENS1_15ExpressionClassERKSt8functionIFvS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS1_10ExpressionENS1_15ExpressionClassERKSt8functionIFvS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2558
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS1_10ExpressionENS1_15ExpressionClassERKSt8functionIFvS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS1_10ExpressionENS1_15ExpressionClassERKSt8functionIFvS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator27VisitExpressionClassMutableES6_NS0_15ExpressionClassERKSt8functionIS7_EE3$_0E9_M_invokeERKSt9_Any_dataS6_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !2559
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !2561
  %.val.val = load i8, ptr %.val, align 1, !tbaa !358
  tail call void @_ZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_15ExpressionClassERKSt8functionIFvS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %.val.val, ptr noundef nonnull align 8 dereferenceable(32) %.val2), !inline_history !2562
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator27VisitExpressionClassMutableES6_NS0_15ExpressionClassERKSt8functionIS7_EE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEENS1_15ExpressionClassERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_15ExpressionClassERKSt8functionIFvS6_EEE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEENS1_15ExpressionClassERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEENS1_15ExpressionClassERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2563
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEENS1_15ExpressionClassERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS1_10unique_ptrINS1_10ExpressionESt14default_deleteIS4_ELb1EEENS1_15ExpressionClassERKSt8functionIFvS8_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_11IsAggregateEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2564
  %i.e = load ptr, ptr %0, align 8, !tbaa !2565, !nonnull !72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !364, !range !263, !noundef !72
  %2 = trunc nuw i8 %i.f to i1
  %3 = or i1 %i.d, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.e, align 1, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_11IsAggregateEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11IsAggregateEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression11IsAggregateEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11IsAggregateEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11IsAggregateEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11IsAggregateEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11IsAggregateEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_8IsWindowEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2567
  %i.e = load ptr, ptr %0, align 8, !tbaa !2568, !nonnull !72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !364, !range !263, !noundef !72
  %2 = trunc nuw i8 %i.f to i1
  %3 = or i1 %i.d, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.e, align 1, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_8IsWindowEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsWindowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression8IsWindowEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsWindowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsWindowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsWindowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsWindowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_8IsScalarEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2570
  br i1 %i.d, label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression8IsScalarEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2571, !nonnull !72
  store i8 0, ptr %i.e, align 1, !tbaa !364
  br label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression8IsScalarEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZNK6duckdb10Expression8IsScalarEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_8IsScalarEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsScalarEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression8IsScalarEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsScalarEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsScalarEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsScalarEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8IsScalarEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_10IsVolatileEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2573
  br i1 %i.d, label %bb.b, label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression10IsVolatileEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2574, !nonnull !72
  store i8 1, ptr %i.e, align 1, !tbaa !364
  br label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression10IsVolatileEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZNK6duckdb10Expression10IsVolatileEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_10IsVolatileEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsVolatileEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression10IsVolatileEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsVolatileEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsVolatileEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsVolatileEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsVolatileEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_12IsConsistentEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2576
  br i1 %i.d, label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression12IsConsistentEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2577, !nonnull !72
  store i8 0, ptr %i.e, align 1, !tbaa !364
  br label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression12IsConsistentEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZNK6duckdb10Expression12IsConsistentEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_12IsConsistentEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12IsConsistentEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression12IsConsistentEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12IsConsistentEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12IsConsistentEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12IsConsistentEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12IsConsistentEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_8CanThrowEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2579
  %i.e = load ptr, ptr %0, align 8, !tbaa !2580, !nonnull !72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !364, !range !263, !noundef !72
  %2 = trunc nuw i8 %i.f to i1
  %3 = or i1 %i.d, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.e, align 1, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_8CanThrowEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8CanThrowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression8CanThrowEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8CanThrowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8CanThrowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8CanThrowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression8CanThrowEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_20PropagatesNullValuesEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2582
  br i1 %i.d, label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression20PropagatesNullValuesEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2583, !nonnull !72
  store i8 0, ptr %i.e, align 1, !tbaa !364
  br label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression20PropagatesNullValuesEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZNK6duckdb10Expression20PropagatesNullValuesEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_20PropagatesNullValuesEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression20PropagatesNullValuesEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression20PropagatesNullValuesEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression20PropagatesNullValuesEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression20PropagatesNullValuesEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression20PropagatesNullValuesEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression20PropagatesNullValuesEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_10IsFoldableEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2585
  br i1 %i.d, label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression10IsFoldableEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2586, !nonnull !72
  store i8 0, ptr %i.e, align 1, !tbaa !364
  br label %"_ZSt10__invoke_rIvRZNK6duckdb10Expression10IsFoldableEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZNK6duckdb10Expression10IsFoldableEvE3$_0JRKS1_EENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_10IsFoldableEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsFoldableEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression10IsFoldableEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsFoldableEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsFoldableEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsFoldableEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression10IsFoldableEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_12HasParameterEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2588
  %i.e = load ptr, ptr %0, align 8, !tbaa !2589, !nonnull !72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !364, !range !263, !noundef !72
  %2 = trunc nuw i8 %i.f to i1
  %3 = or i1 %i.d, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.e, align 1, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_12HasParameterEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12HasParameterEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression12HasParameterEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12HasParameterEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12HasParameterEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12HasParameterEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression12HasParameterEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_11HasSubqueryEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2591
  %i.e = load ptr, ptr %0, align 8, !tbaa !2592, !nonnull !72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !364, !range !263, !noundef !72
  %2 = trunc nuw i8 %i.f to i1
  %3 = or i1 %i.d, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.e, align 1, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_11HasSubqueryEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11HasSubqueryEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression11HasSubqueryEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11HasSubqueryEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11HasSubqueryEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !365
  store i64 %.val.i, ptr %0, align 8, !tbaa !365
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11HasSubqueryEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression11HasSubqueryEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_4HashEvE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !2594
  %i.e = load ptr, ptr %0, align 8, !tbaa !2595, !nonnull !72, !align !73 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = xor i64 %i.f, %i.d
  store i64 %i.g, ptr %i.e, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNKS1_4HashEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression4HashEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb10Expression4HashEvE3$_0", ptr %0, align 8, !tbaa !2180
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression4HashEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression4HashEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !367
  store i64 %.val.i, ptr %0, align 8, !tbaa !367
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression4HashEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb10Expression4HashEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mESaIS9_ENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned long>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, unsigned long>>, std::__detail::_Select1st, duckdb::CaseInsensitiveStringEquality, duckdb::CaseInsensitiveStringHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"class.std::tuple.2447", align 8   ; 4 uses
  %4 = alloca %"class.std::tuple.2450", align 1   ; 3 uses
  %i.a = tail call noundef i64 @_ZN6duckdb10StringUtil6CIHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !382
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !381
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !151
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.p, %bb.d ]
  %.015.i.i = phi ptr [ %i.g, %bb.b ], [ %.0.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.d ] ; 3 uses
  %i.j = icmp eq i64 %i.a, %i.i
  br i1 %i.j, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.l = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.k)
  br i1 %i.l, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.c
  %i.m = load ptr, ptr %.0.i.i, align 8, !tbaa !143 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !382
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !151  ; 2 uses
  %i.q = urem i64 %i.p, %i.n
  %.not19.i.i = icmp eq i64 %i.q, %i.d
  br i1 %.not19.i.i, label %bb.c, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread, !llvm.loop !385

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i
  %i.r = load ptr, ptr %.015.i.i, align 8, !tbaa !143 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread, label %bb.f

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %bb.d, %bb.a, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %1, ptr %3, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %0, ptr %2, align 8, !tbaa !2597
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESI_IJEEEEEPSB_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !2601
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.u = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.d, i64 noundef %i.a, ptr noundef %i.t, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.e

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit.thread
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.v

bb.f:                                             ; preds = %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.u, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.r, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !438
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !382
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !383
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #32 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !438
  invoke void @__cxa_rethrow() #34
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #36
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

end_hunk_0
