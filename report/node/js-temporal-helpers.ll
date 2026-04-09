inline.NumInlined: 320
inline.NumDeleted: 176
begin_hunk_0_@_ZN2v88internal8temporal16ToDurationRecordEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEERKNS1_14DurationRecordE:bb.a
  %i.em = phi double [ %i.el, %bb.j ], [ %.0.copyload.i.i.i.i.i.i.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i16.i.i.i ]
  %i.en = call double @llvm.fabs.f64(double %i.em) ; 3 uses
  %i.eo = fcmp one double %i.en, 0x7FF0000000000000
  %i.ep = call double @llvm.floor.f64(double %i.en)
  %i.eq = fcmp oeq double %i.ep, %i.en
  %or.cond.i.i.i = and i1 %i.eo, %i.eq
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN2v88internal8temporal12_GLOBAL__N_116IsIntegralNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_1
