inline.NumInlined: 1024
inline.NumDeleted: 396
begin_hunk_0_@_ZN2v88internal25IteratorBuiltinsAssembler16IteratorCompleteENS0_5TNodeINS0_7ContextEEENS2_INS0_5UnionIJNS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEPNS0_8compiler18CodeAssemblerLabelESt8optionalINS2_INS0_3MapEEEE:bb.a
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, i32 noundef 1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.e = load ptr, ptr %14, align 8
  %i.f = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
end_hunk_0
begin_hunk_1_@_ZN2v88internal25IteratorBuiltinsAssembler13IteratorValueENS0_5TNodeINS0_7ContextEEENS2_INS0_10JSReceiverEEESt8optionalINS2_INS0_3MapEEEE:bb.a
  call void @_ZN2v88internal17CodeStubAssembler7LoadMapENS0_5TNodeINS0_10HeapObjectEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.e = load ptr, ptr %16, align 8
  %i.f = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvN2v88internal5TNodeINS1_6ObjectEEEEZNS1_25IteratorBuiltinsAssembler26FillFixedArrayFromIterableENS2_INS1_7ContextEEENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEES4_PNS1_18GrowableFixedArrayEE3$_0E9_M_invokeERKSt9_Any_dataOS4_":bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN2v88internal5TNodeINS1_6ObjectEEEEZNS1_25IteratorBuiltinsAssembler26FillFixedArrayFromIterableENS2_INS1_7ContextEEENS2_INS1_5UnionIJNS1_3SmiENS1_10HeapNumberENS1_6BigIntENS1_6StringENS1_6SymbolENS1_7BooleanENS1_4NullENS1_9UndefinedENS1_10JSReceiverEEEEEES4_PNS1_18GrowableFixedArrayEE3$_0E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal25IteratorBuiltinsAssembler26FillFixedArrayFromIterableENS2_5TNodeINS2_7ContextEEENS4_INS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_6BigIntENS2_6StringENS2_6SymbolENS2_7BooleanENS2_4NullENS2_9UndefinedENS2_10JSReceiverEEEEEENS4_INS2_6ObjectEEEPNS2_18GrowableFixedArrayEE3$_0E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation.exit" [
end_hunk_2
begin_hunk_3_@llvm.umin.i64
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
