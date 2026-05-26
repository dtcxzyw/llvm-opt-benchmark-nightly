inline.NumInlined: 12
begin_hunk_0_@Proc0:bb.a
  store i32 10001, ptr %i.f, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 40, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.h, ptr noundef nonnull align 1 dereferenceable(31) @.str, i64 31, i1 false) #13
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4, !tbaa !4
  %i.i = tail call i64 @clock() #13               ; 0 uses
  store i8 65, ptr @Char1Glob, align 1, !tbaa !16
  store i8 66, ptr @Char2Glob, align 1, !tbaa !16
  store i32 5, ptr @IntGlob, align 4, !tbaa !4
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.a, %select.unfold.i
  %.131 = phi i32 [ 0, %bb.a ], [ %i.p, %select.unfold.i ]
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @Array1Glob, i64 32), align 16, !tbaa !4
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @Array1Glob, i64 36), align 4, !tbaa !4
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @Array1Glob, i64 152), align 8, !tbaa !4
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1664), align 16, !tbaa !4
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1668), align 4, !tbaa !4
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4, !tbaa !4
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 1660), align 4, !tbaa !4
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @Array2Glob, i64 5744), align 16, !tbaa !4
  %i.l = load ptr, ptr @PtrGlb, align 8, !tbaa !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 5, ptr %i.m, align 8, !tbaa !15
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !11   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 5, ptr %i.o, align 8, !tbaa !15
  store ptr %i.n, ptr %i.n, align 8, !tbaa !11
  %i.p = add nuw nsw i32 %.131, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, 100000000
  br i1 %exitcond.not, label %bb.b, label %select.unfold.i, !llvm.loop !17

bb.b:                                             ; preds = %select.unfold.i
  store i32 1, ptr @BoolGlob, align 4, !tbaa !4
  ret i32 undef
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc1(ptr noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 5, ptr %i.a, align 8, !tbaa !15
  %i.b = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 5, ptr %i.c, align 8, !tbaa !15
  store ptr %i.b, ptr %i.b, align 8, !tbaa !11
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc2(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @Char1Glob, align 1, !tbaa !16
  %i.b = icmp eq i8 %i.a, 65
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  %i.d = add nsw i32 %i.c, 9
  %i.e = load i32, ptr @IntGlob, align 4, !tbaa !4
  %i.f = sub i32 %i.d, %i.e
  store i32 %i.f, ptr %0, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc3(ptr noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @PtrGlb, align 8, !tbaa !8, !nonnull !19, !noundef !19
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  store ptr %i.b, ptr %0, align 8, !tbaa !8
  %.pre = load i32, ptr @IntGlob, align 4, !tbaa !4
  %.pre1 = load ptr, ptr @PtrGlb, align 8, !tbaa !8
  %i.c = add nsw i32 %.pre, 12
  %i.d = getelementptr inbounds nuw i8, ptr %.pre1, i64 16
  store i32 %i.c, ptr %i.d, align 4, !tbaa !4
  ret i32 undef
}

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc6(i32 noundef %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %0, 10001
  %spec.store.select = select i1 %.not, i32 10001, i32 10002
  store i32 %spec.store.select, ptr %1, align 4
  switch i32 %0, label %bb.e [
    i32 0, label %.sink.split
    i32 10000, label %bb.b
    i32 10001, label %bb.c
    i32 10003, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @IntGlob, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 100
  %. = select i1 %i.b, i32 0, i32 10002
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.sink = phi i32 [ %., %bb.b ], [ %0, %bb.a ], [ 10001, %bb.d ], [ 10000, %bb.c ]
  store i32 %.sink, ptr %1, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local i32 @Proc7(i32 noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = add nsw i32 %0, 2
  %i.b = add nsw i32 %i.a, %1
  store i32 %i.b, ptr %2, align 4, !tbaa !4
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Proc8(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %2, 5                        ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b ; 2 uses
  store i32 %3, ptr %i.c, align 4, !tbaa !4
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr [4 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 24
  store i32 %3, ptr %i.f, align 4, !tbaa !4
  %i.g = sext i32 %2 to i64                       ; 3 uses
  %i.h = getelementptr [4 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 140
  store i32 %i.a, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds [204 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.b
  store i32 %i.a, ptr %i.k, align 4, !tbaa !4
  %i.l = getelementptr [4 x i8], ptr %i.j, i64 %i.b
  %i.m = getelementptr i8, ptr %i.l, i64 4
  store i32 %i.a, ptr %i.m, align 4, !tbaa !4
  %i.n = getelementptr [4 x i8], ptr %i.j, i64 %i.g
  %i.o = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !4
  %i.r = load i32, ptr %i.c, align 4, !tbaa !4
  %i.s = getelementptr [204 x i8], ptr %1, i64 %i.g
  %i.t = getelementptr i8, ptr %i.s, i64 5100
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.b
  store i32 %i.r, ptr %i.u, align 4, !tbaa !4
  store i32 5, ptr @IntGlob, align 4, !tbaa !4
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 10001) i32 @Func1(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not.unshifted = xor i32 %1, %0
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  %. = select i1 %.not, i32 10000, i32 0
  ret i32 %.
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @Func2(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #10 {
select.unfold.peel.next:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16
  %.not.i = icmp ne i8 %i.d, %i.b
  %cond.fr = freeze i1 %.not.i
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold, %select.unfold.peel.next
  br i1 %cond.fr, label %.loopexit, label %select.unfold, !llvm.loop !20

.loopexit:                                        ; preds = %select.unfold
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #15
  %i.f = icmp sgt i32 %i.e, 0
  %. = zext i1 %i.f to i32
  ret i32 %.
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @Func3(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %0, 10001
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS6Record", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"Record", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20}
!13 = !{!12, !5, i64 8}
!14 = !{!12, !5, i64 12}
!15 = !{!12, !5, i64 16}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
