begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i8 0, 2) i8 @consistentKey(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !12
  %i.d = fcmp ogt float %i.a, %i.c
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %1, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !12
  %i.h = fcmp ogt float %i.e, %i.g
  br i1 %i.h, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !14
  %i.m = fcmp ogt float %i.j, %i.l
  br i1 %i.m, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !14
  %i.r = fcmp ogt float %i.o, %i.q
  br i1 %i.r, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !16
  %i.w = fcmp ogt float %i.t, %i.v
  br i1 %i.w, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load float, ptr %i.z, align 4, !tbaa !16
  %i.ab = fcmp ogt float %i.y, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ag = fcmp ogt float %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18
  %i.al = fcmp ogt float %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d, %bb.a, %bb.b, %bb.h, %bb.i
  %.0 = phi i8 [ 1, %bb.h ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i8 0, 2) i8 @consistentNonKey(ptr noundef readonly %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #3
  %.not = icmp ne ptr %i.a, null
  %. = zext i1 %.not to i8
  ret i8 %.
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !11, i64 0}
!9 = !{!"", !10, i64 0, !10, i64 16}
!10 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!11 = !{!"float", !6, i64 0}
!12 = !{!9, !11, i64 16}
!13 = !{!9, !11, i64 4}
!14 = !{!9, !11, i64 20}
!15 = !{!9, !11, i64 8}
!16 = !{!9, !11, i64 24}
!17 = !{!9, !11, i64 12}
!18 = !{!9, !11, i64 28}
end_hunk_0
