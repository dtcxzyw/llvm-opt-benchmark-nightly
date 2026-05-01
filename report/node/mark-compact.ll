inline.NumInlined: 24169
inline.NumDeleted: 6162
begin_hunk_0_@_ZN2v88internal20MarkCompactCollector23ClearFlushedJsFunctionsEv
define hidden void @_ZN2v88internal20MarkCompactCollector23ClearFlushedJsFunctionsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(912) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1271", align 8 ; 4 uses
  %2 = alloca %"class.std::optional.1272", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  br label %bb.b

end_hunk_0
begin_hunk_1_@_ZN2v88internal20MarkCompactCollector23ClearFlushedJsFunctionsEv:bb.a
  %i.al = add i64 %i.ak, -55464
  %i.am = inttoptr i64 %i.al to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_10HeapObjectEEENS1_14FullObjectSlotES4_EZNS1_20MarkCompactCollector23ClearFlushedJsFunctionsEvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_10HeapObjectEEENS1_14FullObjectSlotES4_EZNS1_20MarkCompactCollector23ClearFlushedJsFunctionsEvE3$_0E9_M_invokeERKSt9_Any_dataOS4_OS5_SD_">, ptr %i.b, align 8
  store i8 1, ptr %i.c, align 8
  call void @_ZN2v88internal10JSFunction18ResetIfCodeFlushedEPNS0_7IsolateESt8optionalISt8functionIFvNS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES8_EEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.am, ptr noundef nonnull %2)
  %i.an = load i8, ptr %i.c, align 8, !range !5, !noundef !6
end_hunk_1
begin_hunk_2_@_ZN2v88internal20MarkCompactCollector23ClearFlushedJsFunctionsEv:bb.a
  br i1 %i.ao, label %bb.j, label %_ZNSt14_Optional_baseISt8functionIFvN2v88internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES5_EELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseISt8functionIFvN2v88internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES5_EELb0ELb0EED2Ev.exit, label %bb.k

end_hunk_2
begin_hunk_3_@_ZN2v88internal20MarkCompactCollector15ClearJSWeakRefsEv:bb.a
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.2023", align 8 ; 4 uses
  %2 = alloca [2 x %"class.std::unique_ptr.1522"], align 16 ; 6 uses
  %3 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %4 = alloca %"class.std::function.1352", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1864
  %i.c = load ptr, ptr %i.b, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal20MarkCompactCollector15ClearJSWeakRefsEv:bb.a
  br label %_ZN2v88internal9JSWeakRef10set_targetENS0_6TaggedINS0_5UnionIJNS0_10JSReceiverENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit.backedge

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_9JSWeakRefEEELt64EE5Local3PopEPS6_.exit: ; preds = %bb.h, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_9JSWeakRefEEELt64EE3PopEPPNS7_7SegmentE.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ai, i64 2080
  %i.em = getelementptr inbounds nuw i8, ptr %i.ai, i64 656
  br label %bb.ae
end_hunk_4
begin_hunk_5_@_ZN2v88internal20MarkCompactCollector15ClearJSWeakRefsEv:bb.a
bb.ap:                                            ; preds = %bb.ao
  %i.hd = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_10HeapObjectEEENS1_14FullObjectSlotENS2_INS1_6ObjectEEEEZNS1_20MarkCompactCollector15ClearJSWeakRefsEvE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_10HeapObjectEEENS1_14FullObjectSlotENS2_INS1_6ObjectEEEEZNS1_20MarkCompactCollector15ClearJSWeakRefsEvE3$_0E9_M_invokeERKSt9_Any_dataOS4_OS5_OS7_">, ptr %i.ek, align 8
  call void @_ZN2v88internal4Heap34EnqueueDirtyJSFinalizationRegistryENS0_6TaggedINS0_22JSFinalizationRegistryEEESt8functionIFvNS2_INS0_10HeapObjectEEENS0_14FullObjectSlotENS2_INS0_6ObjectEEEEE(ptr noundef nonnull align 8 dereferenceable(2992) %i.hd, i64 %i.gy, ptr noundef nonnull %4) #32
  %i.he = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i83 = icmp eq ptr %i.he, null
  br i1 %.not.i83, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.aq

end_hunk_5
