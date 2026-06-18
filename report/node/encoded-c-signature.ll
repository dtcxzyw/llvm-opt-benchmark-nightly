inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"IsValid()\00", align 1

@_ZN2v88internal17EncodedCSignatureC1EPKNS_13CFunctionInfoE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal17EncodedCSignatureC2EPKNS_13CFunctionInfoE

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 32) i32 @_ZNK2v88internal17EncodedCSignature16FPParameterCountEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp slt i32 %i.b, 32
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = and i32 %i.d, 2147483647
  %i.f = tail call noundef range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.e)
  ret i32 %i.f
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17EncodedCSignatureC2EPKNS_13CFunctionInfoE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  store i32 32, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit.thread, label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit

_ZNK2v813CFunctionInfo13ArgumentCountEv.exit.thread: ; preds = %bb.a
  store i32 0, ptr %i.a, align 4
  br label %._crit_edge

_ZNK2v813CFunctionInfo13ArgumentCountEv.exit:     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = add i32 %i.c, -1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, -1
  %i.k = sext i1 %i.j to i32
  %spec.select.i = add i32 %i.c, %i.k             ; 3 uses
  store i32 %spec.select.i, ptr %i.a, align 4
  %i.l = icmp sgt i32 %spec.select.i, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit.thread, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit
  %.lcssa = phi i32 [ %spec.select.i, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit ], [ 0, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit.thread ], [ %i.ac, %bb.c ]
  %i.m = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit

_ZNK2v813CFunctionInfo10HasOptionsEv.exit:        ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = add i32 %i.m, -1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %bb.d, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread

.lr.ph:                                           ; preds = %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit, %bb.c
  %.09 = phi i32 [ %i.ab, %bb.c ], [ 0, %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit ] ; 3 uses
  %i.u = tail call noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.09) #5
  %i.v = load i8, ptr %i.u, align 1
  %i.w = add i8 %i.v, -7
  %i.x = icmp ult i8 %i.w, 2
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.y = shl nuw i32 1, %.09
  %i.z = load i32, ptr %0, align 4
  %i.aa = or i32 %i.z, %i.y
  store i32 %i.aa, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.ab = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.ac = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !6

bb.d:                                             ; preds = %_ZNK2v813CFunctionInfo10HasOptionsEv.exit
  %i.ae = add nsw i32 %.lcssa, 1
  store i32 %i.ae, ptr %i.a, align 4
  br label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread

_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread: ; preds = %._crit_edge, %bb.d, %_ZNK2v813CFunctionInfo10HasOptionsEv.exit
  %i.af = load i8, ptr %1, align 4
  %i.ag = add i8 %i.af, -7
  %i.ah = icmp ult i8 %i.ag, 2
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread
  %i.ai = load i32, ptr %0, align 4
  %i.aj = or i32 %i.ai, -2147483648
  store i32 %i.aj, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.thread
  ret void
}

declare noundef nonnull align 1 dereferenceable(2) ptr @_ZNK2v813CFunctionInfo12ArgumentInfoEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_0
