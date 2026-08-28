Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/rectangle?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Rect = type { [4 x double] }

@.str = private unnamed_addr constant [33 x i8] c"label: area too large for rtree\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @InitRect(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @NullRect(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Rect) align 8 captures(none) initializes((0, 32)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i64 @RectArea(ptr nofree noundef readonly byval(%struct.Rect) align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %.val = load double, ptr %0, align 8, !tbaa !8  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val21 = load double, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %i.b = fcmp ogt double %.val, %.val21
  br i1 %i.b, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = fsub double %.val21, %.val
  %i.d = fptoui double %i.c to i64                ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.thread, label %.preheader.1

bb.b:                                             ; preds = %bb.c
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str) #10
  tail call fastcc void @graphviz_exit() #11
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !8
  %i.h = load double, ptr %i.e, align 8, !tbaa !8
  %i.i = fsub double %i.g, %i.h
  %i.j = fptoui double %i.i to i64                ; 3 uses
  %.not.1 = icmp eq i64 %i.j, 0
  br i1 %.not.1, label %.thread, label %bb.c

bb.c:                                             ; preds = %.preheader.1
  %mul.1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 %i.d)
  %mul.ov.1 = extractvalue { i64, i1 } %mul.1, 1
  br i1 %mul.ov.1, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = mul i64 %i.d, %i.j
  br label %.thread

.thread:                                          ; preds = %.preheader.preheader, %.preheader.1, %bb.d, %bb.a
  %.4 = phi i64 [ 0, %bb.a ], [ 0, %.preheader.preheader ], [ %i.k, %bb.d ], [ 0, %.preheader.1 ]
  ret i64 %.4
}

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #4 {
bb.a:
  tail call void @exit(i32 noundef 1) #12
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CombineRect(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Rect) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly byval(%struct.Rect) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Rect) align 8 captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.val10 = load double, ptr %1, align 8, !tbaa !8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load double, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %i.b = fcmp ogt double %.val10, %.val11
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !10
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.val = load double, ptr %2, align 8, !tbaa !8  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val9 = load double, ptr %i.c, align 8, !tbaa !8 ; 2 uses
  %i.d = fcmp ogt double %.val, %.val9
  br i1 %i.d, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load double, ptr %i.k, align 8, !tbaa !8
  %i.m = insertelement <2 x double> poison, double %.val10, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.f, i64 1
  %i.o = insertelement <2 x double> poison, double %.val, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.h, i64 1
  %i.q = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.n, <2 x double> %i.p)
  store <2 x double> %i.q, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = insertelement <2 x double> poison, double %.val11, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.j, i64 1
  %i.t = insertelement <2 x double> poison, double %.val9, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.l, i64 1
  %i.v = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.s, <2 x double> %i.u)
  store <2 x double> %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !10
  br label %bb.e

bb.e:                                             ; preds = %.preheader.preheader, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @Overlap(ptr nofree noundef readonly byval(%struct.Rect) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Rect) align 8 captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !8
  %i.d = fcmp ogt double %i.a, %i.c
  br i1 %i.d, label %bb.c, label %.critedge

bb.b:                                             ; preds = %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !8
  %i.i = fcmp ogt double %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.critedge.1

.critedge.1:                                      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %2 = fcmp ule double %i.k, %i.m
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.n = load double, ptr %1, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !8
  %i.q = fcmp ogt double %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.critedge.1, %bb.b, %.critedge, %bb.a
  %.lcssa = phi i1 [ false, %.critedge ], [ false, %bb.a ], [ %2, %.critedge.1 ], [ false, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{i64 0, i64 32, !11}
!11 = !{!6, !6, i64 0}
end_hunk_0
