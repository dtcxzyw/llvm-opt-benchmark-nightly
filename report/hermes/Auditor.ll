inline.NumInlined: 123
inline.NumDeleted: 83
begin_hunk_0_@_ZN6hermes7Auditor13runOnFunctionEPNS_8FunctionE:bb.a
  br i1 %.not25.i, label %_ZL21auditCallInstructionsPN6hermes8FunctionE.exit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %bb.a, %._crit_edge.i
  %.sroa.017.026.i = phi ptr [ %.sroa.017.0.i, %._crit_edge.i ], [ %.sroa.017.024.i, %bb.a ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.026.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 56 ; 2 uses
  %.sroa.013.021.i = load ptr, ptr %i.c, align 8, !tbaa !7 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes7Auditor13runOnFunctionEPNS_8FunctionE:bb.a
  br i1 %.not.i, label %_ZL21auditCallInstructionsPN6hermes8FunctionE.exit, label %.lr.ph28.i

.lr.ph.i:                                         ; preds = %.lr.ph28.i, %bb.d
  %.sroa.013.023.i = phi ptr [ %.sroa.013.0.i, %bb.d ], [ %.sroa.013.021.i, %.lr.ph28.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.023.i) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !11
  %i.h = icmp eq i8 %i.g, 91
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.013.023.i, i32 noundef 0) #5 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !11
  %cond.i = icmp eq i8 %i.j, 49
  br i1 %cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.l = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.k, i32 noundef 0) #5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call noundef zeroext i1 @_ZNK6hermes9ScopeDesc13isGlobalScopeEv(ptr noundef nonnull align 8 dereferenceable(233) %i.n) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
end_hunk_1
begin_hunk_2_@_ZN6hermes7Auditor13runOnFunctionEPNS_8FunctionE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13createAuditorEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes7AuditorESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #6, !noalias !29 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !32, !noalias !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_2
begin_hunk_3_@_ZN6hermes13createAuditorEv:_ZNSt10unique_ptrIN6hermes7AuditorESt14default_deleteIS1_EED2Ev.exit
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes7AuditorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #7
  ret void
}

end_hunk_3
begin_hunk_4_@_ZN6hermes4PassD2Ev:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }
attributes #6 = { builtin nounwind allocsize(0) }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_4
