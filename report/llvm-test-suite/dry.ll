inline.NumInlined: 12
begin_hunk_0_@Proc0:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.h, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #13
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4, !tbaa !4
  %i.i = tail call i64 @clock() #13               ; 0 uses
  store i8 65, ptr @Char1Glob, align 1, !tbaa !16
  store i8 66, ptr @Char2Glob, align 1, !tbaa !16
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.a, %select.unfold.i
end_hunk_0
begin_hunk_1_@Proc0:bb.a
  store ptr %i.n, ptr %i.n, align 8, !tbaa !11
  %i.p = add nuw nsw i32 %.134, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, 100000000
  br i1 %exitcond.not, label %bb.b, label %select.unfold.i, !llvm.loop !17

bb.b:                                             ; preds = %select.unfold.i
  store i32 1, ptr @BoolGlob, align 4, !tbaa !4
  store i32 5, ptr @IntGlob, align 4, !tbaa !4
  ret i32 undef
}
end_hunk_1
begin_hunk_2_@Proc1:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc2(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @Char1Glob, align 1, !tbaa !16
  %i.b = icmp eq i8 %i.a, 65
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_2
begin_hunk_3_@Proc3:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc4() local_unnamed_addr #6 {
bb.a:
  store i8 66, ptr @Char2Glob, align 1, !tbaa !16
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc5() local_unnamed_addr #6 {
bb.a:
  store i8 65, ptr @Char1Glob, align 1, !tbaa !16
  store i32 0, ptr @BoolGlob, align 4, !tbaa !4
  ret i32 undef
}
end_hunk_3
begin_hunk_4_@Func2
define dso_local range(i32 0, 2) i32 @Func2(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #10 {
select.unfold.peel.next:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16
  %.not.i.not = icmp eq i8 %i.d, %i.b
  br label %select.unfold

end_hunk_4
begin_hunk_5_@llvm.memcpy.p0.p0.i64
!13 = !{!12, !5, i64 8}
!14 = !{!12, !5, i64 12}
!15 = !{!12, !5, i64 16}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_5
