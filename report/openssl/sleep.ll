Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/sleep?download=true
inline.NumInlined: 12
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }

; Function Attrs: nounwind uwtable
define void @OSSL_sleep(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = tail call i64 @ossl_time_now() #4
  %i.b = mul i64 %0, 1000000
  %.sroa.03.0.i = tail call i64 @llvm.uadd.sat.i64(i64 %i.a, i64 %i.b) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %0, %bb.a ], [ %i.i, %bb.b ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.d = udiv i64 %.0, 1000
  store i64 %i.d, ptr %1, align 8, !tbaa !8
  %i.e = urem i64 %.0, 1000
  %i.f = mul nuw nsw i64 %i.e, 1000000
  store i64 %i.f, ptr %i.c, align 8, !tbaa !11
  %i.g = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef null) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  %i.h = call i64 @ossl_time_now() #4             ; 2 uses
  %..i = call i64 @llvm.usub.sat.i64(i64 %.sroa.03.0.i, i64 %i.h)
  %i.i = udiv i64 %..i, 1000000
  %i.j = icmp ult i64 %i.h, %.sroa.03.0.i
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @ossl_time_now() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"timespec", !10, i64 0, !10, i64 8}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
