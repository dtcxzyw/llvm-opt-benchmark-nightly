begin_hunk_0
  %7 = alloca %"class.std::vector.101", align 8   ; 6 uses
  %8 = alloca %"class.std::vector.15", align 8    ; 6 uses
  %9 = alloca %"class.std::vector.15", align 8    ; 6 uses
  %10 = alloca %"class.std::function.51", align 16 ; 10 uses
  %11 = alloca %"class.std::vector.101", align 8  ; 6 uses
  %12 = alloca %"class.std::vector.15", align 8   ; 6 uses
  %13 = alloca %"class.v8::internal::compiler::CodeAssembler", align 8 ; 17 uses
  %14 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %15 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %16 = alloca %"class.v8::internal::compiler::CodeAssemblerParameterizedLabel", align 8 ; 12 uses
  %17 = alloca %"class.std::function.51", align 16 ; 11 uses
  %18 = alloca %"class.v8::internal::TNode.49", align 8 ; 2 uses
  %19 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %20 = alloca %"class.v8::internal::TNode.35", align 8 ; 2 uses
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.v = load i64, ptr %i.u, align 8
  %.not = icmp eq i64 %i.v, 0
end_hunk_1
begin_hunk_2
  store ptr %i.a, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.c, ptr %i.ah, align 8
  store ptr %i.ag, ptr %10, align 16
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %10, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, ptr noundef nonnull align 16 dereferenceable(32) %17, i64 16, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %17, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ak = load <2 x ptr>, ptr %i.ai, align 16
  %i.al = load ptr, ptr %i.ai, align 16           ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation", ptr %i.ai, align 16
  store <2 x ptr> %i.ak, ptr %i.ae, align 16
  store ptr @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.aj, align 8
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit.thread", label %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit"
end_hunk_2
begin_hunk_3

"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit": ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %i.am = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3) #11 ; 0 uses
  %.pre = load ptr, ptr %i.ai, align 16           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  store ptr %i.d, ptr %22, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false)
end_hunk_3
begin_hunk_4
  %i.an = phi ptr [ @"_ZNSt17_Function_handlerIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation", %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit.thread" ], [ %.pre, %"_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEaSIZNS1_33CallIteratorWithFeedbackAssembler36GenerateCallIteratorWithFeedbackImplEvE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERSG_E4typeEOSL_.exit" ]
  %i.ao = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ap = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 2) #11 ; 0 uses
  %i.aq = load <2 x ptr>, ptr %i.ai, align 16
  store <2 x ptr> %i.aq, ptr %i.ao, align 8
  br label %_ZNSt8functionIFN2v88internal5TNodeINS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEEvEEC2ERKSG_.exit

end_hunk_4
begin_hunk_5

bb.q:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit20, %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ce = load ptr, ptr %i.cd, align 16           ; 2 uses
  %.not.i21 = icmp eq ptr %i.ce, null
  br i1 %.not.i21, label %_ZNSt14_Function_baseD2Ev.exit22, label %bb.r

end_hunk_5
