inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@_ZN2v84base27charToDigitDecodeForTestingEh:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN2v84base15VLQBase64DecodeEPKcmPm(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %.promoted = load i64, ptr %2, align 8          ; 2 uses
  %.not34 = icmp ult i64 %.promoted, %1
  br i1 %.not34, label %.lr.ph, label %.thread

bb.b:                                             ; preds = %bb.d
  %.not = icmp ult i64 %i.q, %1
  br i1 %.not, label %.lr.ph, label %.thread, !llvm.loop !5

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01936 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]
end_hunk_0
begin_hunk_1_@_ZN2v84base15VLQBase64DecodeEPKcmPm:bb.a
  %i.n = trunc i64 %.02135 to i32
  %i.o = shl i32 %i.m, %i.n
  %i.p = add i32 %i.o, %.01936                    ; 3 uses
  %i.q = add nuw i64 %i.a, 1                      ; 3 uses
  store i64 %i.q, ptr %2, align 8
  %i.r = and i8 %i.g, 32
  %.not26 = icmp eq i8 %i.r, 0
end_hunk_1
begin_hunk_2_@_ZN2v84base15VLQBase64DecodeEPKcmPm:bb.a
  ret i32 %.2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_2
