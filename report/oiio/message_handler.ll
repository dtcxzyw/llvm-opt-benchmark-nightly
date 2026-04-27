inline.NumInlined: 278
inline.NumDeleted: 178
begin_hunk_0_@_ZNK22photos_editing_formats8image_io18VectorMessageStore16HasErrorMessagesEv:bb.a
  br i1 %.not1213.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.08.014 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %.sroa.08.014, align 8, !tbaa !29
  %.not.not = icmp ne i32 %i.e, 0                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 40 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io7MessageESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.s, %bb.d ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.08.013 = phi ptr [ %i.r, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i64, ptr %.sroa.08.013, align 8
  store i64 %i.b, ptr %.014, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 4 uses
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
