inline.NumInlined: 1444
inline.NumDeleted: 586
begin_hunk_0_@_ZN4node25ExternalReferenceRegistryC2Ev:_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i
_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i.i:
  store i8 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 3 uses
  store i64 ptrtoint (ptr @_ZN4node10BaseObject38LazilyInitializedJSTemplateConstructorERKN2v820FunctionCallbackInfoINS1_5ValueEEE to i64), ptr %1, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  store ptr %2, ptr %i.b, align 8
  store ptr %2, ptr %3, align 8
  tail call void @_Z39_register_external_reference_async_wrapPN4node25ExternalReferenceRegistryE(ptr noundef nonnull %0) #20
  tail call void @_Z36_register_external_reference_bindingPN4node25ExternalReferenceRegistryE(ptr noundef nonnull %0) #20
  tail call void @_Z33_register_external_reference_blobPN4node25ExternalReferenceRegistryE(ptr noundef nonnull %0) #20
end_hunk_0
