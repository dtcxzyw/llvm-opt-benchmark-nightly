Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/OSCompatCommon?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::pair" = type { ptr, i64 }

@_ZZN6hermes8oscompat19thread_stack_boundsEjE12cachedBounds = internal thread_local unnamed_addr global %"struct.std::pair" zeroinitializer, align 8, !guid !7

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN6hermes8oscompat19thread_stack_boundsEj(i32 noundef %0) local_unnamed_addr #0 !guid !8 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6hermes8oscompat19thread_stack_boundsEjE12cachedBounds) ; 3 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.not = icmp eq ptr %.sroa.07.0.copyload, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_ZN6hermes8oscompat6detail24thread_stack_bounds_implEv() #4 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !13
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.07.0 = phi ptr [ %i.c, %bb.b ], [ %.sroa.07.0.copyload, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.d, %bb.b ], [ %.sroa.7.0.copyload, %bb.a ]
  %i.e = zext i32 %0 to i64
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.7.0, i64 %i.e)
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %spec.select, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

declare { ptr, i64 } @_ZN6hermes8oscompat6detail24thread_stack_bounds_implEv() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{i64 -331249560681495679}
!8 = !{i64 6638661687124895351}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSSt4pairIPKvmE", !10, i64 0, !11, i64 8}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !11, i64 8}
end_hunk_0
