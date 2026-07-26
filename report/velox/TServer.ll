begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rlimit = type { i64, i64 }

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN6apache6thrift6server16increase_max_fdsEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rlimit, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.a = sext i32 %0 to i64                       ; 2 uses
  store i64 %i.a, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.a, ptr %i.b, align 8, !tbaa !11
  %.not6 = icmp eq i32 %0, 0
  br i1 %.not6, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ %i.f, %bb.b ], [ %0, %bb.a ]   ; 2 uses
  %i.c = call i32 @setrlimit(i32 noundef 7, ptr noundef nonnull %1) #3
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.lr.ph..critedge.loopexit_crit_edge

.lr.ph..critedge.loopexit_crit_edge:              ; preds = %.lr.ph
  %.pre.pre = load i64, ptr %1, align 8, !tbaa !8
  %i.e = trunc i64 %.pre.pre to i32
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = sdiv i32 %.07, 2                         ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  store i64 %i.g, ptr %1, align 8, !tbaa !8
  store i64 %i.g, ptr %i.b, align 8, !tbaa !11
  %.07.off = add i32 %.07, 1
  %.not = icmp ult i32 %.07.off, 3
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !12

.critedge:                                        ; preds = %bb.b, %.lr.ph..critedge.loopexit_crit_edge, %bb.a
  %i.h = phi i32 [ 0, %bb.a ], [ %i.e, %.lr.ph..critedge.loopexit_crit_edge ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  ret i32 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS6rlimit", !10, i64 0, !10, i64 8}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
