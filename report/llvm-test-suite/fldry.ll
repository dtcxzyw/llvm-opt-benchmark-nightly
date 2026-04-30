inline.NumInlined: 11
begin_hunk_0_@Proc0:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.h, ptr noundef nonnull align 1 dereferenceable(31) @.str.1, i64 31, i1 false) #15
  store double 1.000000e+01, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 3320), align 8, !tbaa !17
  %i.i = tail call i64 @clock() #15               ; 0 uses
  store i8 65, ptr @Char1Glob, align 1, !tbaa !18
  store i8 66, ptr @Char2Glob, align 1, !tbaa !18
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
end_hunk_0
begin_hunk_1_@Proc0:bb.a
  store ptr %i.n, ptr %i.n, align 8, !tbaa !11
  %i.p = add nuw nsw i32 %.132, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, 100000000
  br i1 %exitcond.not, label %bb.b, label %.lr.ph.i, !llvm.loop !19

bb.b:                                             ; preds = %.lr.ph.i
  store i32 1, ptr @BoolGlob, align 4, !tbaa !4
  store double 5.000000e+00, ptr @IntGlob, align 8, !tbaa !17
  ret i32 undef
}
end_hunk_1
begin_hunk_2_@Proc1:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc2(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr @Char1Glob, align 1, !tbaa !18
  %i.b = icmp eq i8 %i.a, 65
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_2
begin_hunk_3_@Proc3:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc4() local_unnamed_addr #7 {
bb.a:
  store i8 66, ptr @Char2Glob, align 1, !tbaa !18
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc5() local_unnamed_addr #7 {
bb.a:
  store i8 65, ptr @Char1Glob, align 1, !tbaa !18
  store i32 0, ptr @BoolGlob, align 4, !tbaa !4
  ret i32 undef
}
end_hunk_3
begin_hunk_4_@llvm.memcpy.p0.p0.i64
!15 = !{!12, !5, i64 12}
!16 = !{!12, !13, i64 16}
!17 = !{!13, !13, i64 0}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{}
!22 = distinct !{!22, !20}
end_hunk_4
