inline.NumInlined: 617
inline.NumDeleted: 304
begin_hunk_0_@_ZN8facebook6hermes16makeTimedRuntimeESt10unique_ptrINS_3jsi7RuntimeESt14default_deleteIS3_EE:bb.a
  %22 = alloca %"class.std::function", align 8    ; 10 uses
  %23 = alloca %"class.facebook::jsi::Object", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #22, !noalias !7 ; 34 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !10, !noalias !7 ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !10, !noalias !7
  %24 = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %24)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !10, !noalias !7
end_hunk_0
begin_hunk_1_@_ZN8facebook3jsi16RuntimeDecoratorINS0_7RuntimeES2_E13getHostObjectERKNS0_6ObjectE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.f = load ptr, ptr %3, align 8, !tbaa !157, !nonnull !45, !noundef !45 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEZNS0_6hermes12_GLOBAL__N_112TimedRuntime39getInternalTimerInternalGetTimesHandlerEvEUlS4_S6_S7_mE_E9_M_invokeERKSt9_Any_dataS4_S6_OS7_Om:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEZNS0_6hermes12_GLOBAL__N_112TimedRuntime39getInternalTimerInternalGetTimesHandlerEvEUlS4_S6_S7_mE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes12_GLOBAL__N_112TimedRuntime39getInternalTimerInternalGetTimesHandlerEvEUlRNS1_3jsi7RuntimeERKNS5_5ValueEPS9_mE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
end_hunk_2
begin_hunk_3_@llvm.experimental.noalias.scope.decl
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_3
