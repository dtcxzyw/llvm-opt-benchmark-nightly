Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/timing?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: nofree nounwind uwtable
define hidden i64 @mbedtls_timing_get_timer(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @gettimeofday(ptr noundef %0, ptr noundef null) #4 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #4 ; 0 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !10
  %i.d = load i64, ptr %0, align 8, !tbaa !12
  %i.e = sub nsw i64 %i.c, %i.d
  %i.f = mul i64 %i.e, 1000
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = sub nsw i64 %i.h, %i.j
  %i.l = sdiv i64 %i.k, 1000
  %i.m = add i64 %i.l, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %i.m, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define hidden void @mbedtls_timing_set_delay(ptr nofree noundef captures(none) initializes((32, 40)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = zext i32 %1 to i64
  %4 = zext i32 %2 to i64
  %5 = shl nuw i64 %4, 32
  %6 = or disjoint i64 %5, %3
  store i64 %6, ptr %i.a, align 8
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 -1, 3) i32 @mbedtls_timing_get_delay(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.d = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #4 ; 0 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !10
  %i.f = load i64, ptr %0, align 8, !tbaa !12
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = mul i64 %i.g, 1000
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14
  %i.m = sub nsw i64 %i.j, %i.l
  %i.n = sdiv i64 %i.m, 1000
  %i.o = add i64 %i.n, %i.h                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  %i.p = load i32, ptr %i.a, align 4, !tbaa !17
  %i.q = zext i32 %i.p to i64
  %.not = icmp ult i64 %i.o, %i.q
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !18
  %i.t = zext i32 %i.s to i64
  %.not8 = icmp samesign uge i64 %i.o, %i.t
  %. = zext i1 %.not8 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.b ], [ -1, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @mbedtls_timing_get_final_delay(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  ret i32 %i.b
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"timeval", !8, i64 0, !8, i64 8}
!10 = !{!9, !8, i64 0}
!11 = !{!"_hr_time", !9, i64 0}
!12 = !{!11, !8, i64 0}
!13 = !{!9, !8, i64 8}
!14 = !{!11, !8, i64 8}
!15 = !{!"mbedtls_timing_hr_time", !4, i64 0}
!16 = !{!"mbedtls_timing_delay_context", !15, i64 0, !5, i64 32, !5, i64 36}
!17 = !{!16, !5, i64 36}
!18 = !{!16, !5, i64 32}
end_hunk_0
