inline.NumInlined: 174
inline.NumDeleted: 42
begin_hunk_0_@m_tgamma:bb.a
  br label %bb.aa

bb.f:                                             ; preds = %bb.d
  %i.g = tail call double @llvm.trunc.f64(double %0)
  %i.h = fcmp oeq double %i.g, %0
  br i1 %i.h, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@m_lgamma:bb.a
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.trunc.f64(double %0)
  %i.e = fcmp oeq double %i.d, %0
  %i.f = fcmp ole double %0, 2.000000e+00
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %bb.f
end_hunk_1
begin_hunk_2_@_PyImport_SetModuleString
declare i32 @_PyImport_SetModuleString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_2
