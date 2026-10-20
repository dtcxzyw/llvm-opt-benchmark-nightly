Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pm_char?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0_@pm_strspn_octal_number:bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14    ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = and i8 %i.f, 8
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = icmp eq i8 %i.c, 95                      ; 2 uses
  %brmerge.demorgan.i = and i1 %.030.i, %i.h
  br i1 %brmerge.demorgan.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = add nuw nsw i64 %.02129.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.preheader.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i
  %.not24.i = icmp eq i64 %.02129.i, 0
  br i1 %.not24.i, label %pm_strspn_number_kind_underscores.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.d, %.critedge.i
  %.02128.i = phi i64 [ %.02129.i, %.critedge.i ], [ %1, %bb.d ] ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %.02128.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = icmp eq i8 %i.l, 95
  br i1 %i.m, label %bb.e, label %pm_strspn_number_kind_underscores.exit

bb.e:                                             ; preds = %.critedge.thread.i
  store ptr %i.k, ptr %2, align 8, !tbaa !18
  br label %pm_strspn_number_kind_underscores.exit

pm_strspn_number_kind_underscores.exit:           ; preds = %bb.a, %.critedge.i, %.critedge.thread.i, %bb.e
  %.022.i = phi i64 [ 0, %bb.a ], [ %.02128.i, %bb.e ], [ %.02128.i, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i64 %.022.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden i64 @pm_strspn_decimal_digit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.011.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.011.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  %i.d = add i8 %i.c, -58
  %.not.i = icmp ult i8 %i.d, -10
  br i1 %.not.i, label %pm_strspn_number_kind.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.e = add nuw nsw i64 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %1
  br i1 %exitcond.not.i, label %pm_strspn_number_kind.exit, label %.preheader.i, !llvm.loop !2

pm_strspn_number_kind.exit:                       ; preds = %.preheader.i, %bb.b, %bb.a
  %.09.i = phi i64 [ 0, %bb.a ], [ %.011.i, %.preheader.i ], [ %1, %bb.b ]
  ret i64 %.09.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden i64 @pm_strspn_decimal_number(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind_underscores.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.d
  %.030.i = phi i1 [ %i.h, %bb.d ], [ false, %bb.a ]
  %.02129.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.02129.i  ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14    ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = and i8 %i.f, 32
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = icmp eq i8 %i.c, 95                      ; 2 uses
  %brmerge.demorgan.i = and i1 %.030.i, %i.h
  br i1 %brmerge.demorgan.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = add nuw nsw i64 %.02129.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.preheader.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i
  %.not24.i = icmp eq i64 %.02129.i, 0
  br i1 %.not24.i, label %pm_strspn_number_kind_underscores.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.d, %.critedge.i
  %.02128.i = phi i64 [ %.02129.i, %.critedge.i ], [ %1, %bb.d ] ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %.02128.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = icmp eq i8 %i.l, 95
  br i1 %i.m, label %bb.e, label %pm_strspn_number_kind_underscores.exit

bb.e:                                             ; preds = %.critedge.thread.i
  store ptr %i.k, ptr %2, align 8, !tbaa !18
  br label %pm_strspn_number_kind_underscores.exit

pm_strspn_number_kind_underscores.exit:           ; preds = %bb.a, %.critedge.i, %.critedge.thread.i, %bb.e
  %.022.i = phi i64 [ 0, %bb.a ], [ %.02128.i, %bb.e ], [ %.02128.i, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i64 %.022.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden i64 @pm_strspn_hexadecimal_digit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.011.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.011.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = and i8 %i.f, 64
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %pm_strspn_number_kind.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = add nuw nsw i64 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %pm_strspn_number_kind.exit, label %.preheader.i, !llvm.loop !2

pm_strspn_number_kind.exit:                       ; preds = %.preheader.i, %bb.b, %bb.a
  %.09.i = phi i64 [ 0, %bb.a ], [ %.011.i, %.preheader.i ], [ %1, %bb.b ]
  ret i64 %.09.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden i64 @pm_strspn_hexadecimal_number(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %pm_strspn_number_kind_underscores.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.d
  %.030.i = phi i1 [ %i.g, %bb.d ], [ false, %bb.a ]
  %.02129.i = phi i64 [ %i.h, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %.02129.i  ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14    ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr i8, ptr @pm_number_table, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %.not.i = icmp sgt i8 %i.f, -1
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.g = icmp eq i8 %i.c, 95                      ; 2 uses
  %brmerge.demorgan.i = and i1 %.030.i, %i.g
  br i1 %brmerge.demorgan.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = add nuw nsw i64 %.02129.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.preheader.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i
  %.not24.i = icmp eq i64 %.02129.i, 0
  br i1 %.not24.i, label %pm_strspn_number_kind_underscores.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.d, %.critedge.i
  %.02128.i = phi i64 [ %.02129.i, %.critedge.i ], [ %1, %bb.d ] ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 %.02128.i
  %i.j = getelementptr i8, ptr %i.i, i64 -1       ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = icmp eq i8 %i.k, 95
  br i1 %i.l, label %bb.e, label %pm_strspn_number_kind_underscores.exit

bb.e:                                             ; preds = %.critedge.thread.i
  store ptr %i.j, ptr %2, align 8, !tbaa !18
  br label %pm_strspn_number_kind_underscores.exit

pm_strspn_number_kind_underscores.exit:           ; preds = %bb.a, %.critedge.i, %.critedge.thread.i, %bb.e
  %.022.i = phi i64 [ 0, %bb.a ], [ %.02128.i, %bb.e ], [ %.02128.i, %.critedge.thread.i ], [ 0, %.critedge.i ]
  ret i64 %.022.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden zeroext i1 @pm_char_is_binary_digit(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %1 = zext i8 %0 to i64
  %2 = getelementptr i8, ptr @pm_number_table, i64 %1
  %3 = load i8, ptr %2, align 1, !tbaa !14
  %4 = trunc i8 %3 to i1
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef zeroext i1 @pm_char_is_octal_digit(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = and i8 %0, -8
  %i.b = icmp eq i8 %i.a, 48
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i8 %0, -48
  %i.b = icmp ult i8 %i.a, 10
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden zeroext i1 @pm_char_is_hexadecimal_digit(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr i8, ptr @pm_number_table, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  %i.d = and i8 %i.c, 64
  %i.e = icmp ne i8 %i.d, 0
  ret i1 %i.e
}

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = distinct !{!19, !15}
end_hunk_0
