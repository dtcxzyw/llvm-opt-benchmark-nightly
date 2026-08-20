loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL3RES = internal unnamed_addr global double 1.000000e+03, align 8
@_ZL5RES60 = internal unnamed_addr global double 6.000000e+04, align 8
@_ZL4CONV = internal unnamed_addr global double f0x41A896B3CC7E836A, align 8
@_ZL6format = internal global [50 x i8] c"%dd%d'%.3f\22%c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [19 x i8] c"%%dd%%d'%%.%df\22%%c\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%%dd%%02d'%%0%d.%df\22%%c\00", align 1
@_ZL6dolong = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%dd%d'%c\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%dd%c\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_Z10set_rtodmsii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ult i32 %0, 9
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr @_ZL3RES, align 8, !tbaa !8
  switch i32 %0, label %.lr.ph.7 [
    i32 0, label %bb.c
    i32 1, label %._crit_edge
    i32 2, label %._crit_edge.fold.split
    i32 3, label %._crit_edge.fold.split16
    i32 4, label %._crit_edge.fold.split17
    i32 5, label %._crit_edge.fold.split18
    i32 6, label %._crit_edge.fold.split19
    i32 7, label %._crit_edge.fold.split20
  ]

.lr.ph.7:                                         ; preds = %bb.b
  br label %._crit_edge

._crit_edge.fold.split:                           ; preds = %bb.b
  br label %._crit_edge

._crit_edge.fold.split16:                         ; preds = %bb.b
  br label %._crit_edge

._crit_edge.fold.split17:                         ; preds = %bb.b
  br label %._crit_edge

._crit_edge.fold.split18:                         ; preds = %bb.b
  br label %._crit_edge

._crit_edge.fold.split19:                         ; preds = %bb.b
  br label %._crit_edge

._crit_edge.fold.split20:                         ; preds = %bb.b
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.fold.split20, %._crit_edge.fold.split19, %._crit_edge.fold.split18, %._crit_edge.fold.split17, %._crit_edge.fold.split16, %._crit_edge.fold.split, %.lr.ph.7
  %.lcssa = phi double [ 1.000000e+01, %bb.b ], [ 1.000000e+08, %.lr.ph.7 ], [ 1.000000e+02, %._crit_edge.fold.split ], [ 1.000000e+03, %._crit_edge.fold.split16 ], [ 1.000000e+04, %._crit_edge.fold.split17 ], [ 1.000000e+05, %._crit_edge.fold.split18 ], [ 1.000000e+06, %._crit_edge.fold.split19 ], [ 1.000000e+07, %._crit_edge.fold.split20 ] ; 2 uses
  store double %.lcssa, ptr @_ZL3RES, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.a = phi double [ %.lcssa, %._crit_edge ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.b = fmul double %i.a, 6.000000e+01
  store double %i.b, ptr @_ZL5RES60, align 8, !tbaa !8
  %i.c = fmul double %i.a, 6.480000e+05
  %i.d = fdiv double %i.c, f0x400921FB54442D18
  store double %i.d, ptr @_ZL4CONV, align 8, !tbaa !8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_ZL6format, i64 noundef 50, ptr noundef nonnull @.str, i32 noundef %0) #6 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = add nuw nsw i32 %0, 2
  %.not13 = icmp ne i32 %0, 0
  %i.g = zext i1 %.not13 to i32
  %i.h = add nuw nsw i32 %i.f, %i.g
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_ZL6format, i64 noundef 50, ptr noundef nonnull @.str.1, i32 noundef %i.h, i32 noundef %0) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 %1, ptr @_ZL6dolong, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef ptr @_Z6rtodmsPcmdii(ptr nofree noundef returned captures(ret: address, provenance) %0, i64 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %2, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = fneg double %2                           ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 1, !tbaa !11
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.d = add i64 %1, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e
  %.070 = phi double [ %i.b, %bb.b ], [ %i.b, %bb.e ], [ %2, %bb.a ]
  %.067 = phi i32 [ %4, %bb.b ], [ 0, %bb.e ], [ %3, %bb.a ] ; 5 uses
  %.066 = phi ptr [ %0, %bb.b ], [ %i.e, %bb.e ], [ %0, %bb.a ] ; 7 uses
  %.065 = phi i64 [ %1, %bb.b ], [ %i.d, %bb.e ], [ %1, %bb.a ] ; 4 uses
  %i.f = load double, ptr @_ZL4CONV, align 8, !tbaa !8
  %i.g = tail call double @llvm.fmuladd.f64(double %.070, double %i.f, double 5.000000e-01)
  %i.h = tail call double @llvm.floor.f64(double %i.g) ; 2 uses
  %i.i = load double, ptr @_ZL3RES, align 8, !tbaa !8
  %i.j = fdiv double %i.h, %i.i
  %i.k = tail call double @fmod(double noundef %i.j, double noundef 6.000000e+01) #6 ; 3 uses
  %i.l = load double, ptr @_ZL5RES60, align 8, !tbaa !8
  %i.m = fdiv double %i.h, %i.l
  %i.n = tail call double @llvm.floor.f64(double %i.m) ; 2 uses
  %i.o = tail call double @fmod(double noundef %i.n, double noundef 6.000000e+01) #6
  %i.p = fptosi double %i.o to i32                ; 4 uses
  %i.q = fdiv double %i.n, 6.000000e+01
  %i.r = tail call double @llvm.floor.f64(double %i.q)
  %i.s = fptosi double %i.r to i32                ; 4 uses
  %i.t = load i32, ptr @_ZL6dolong, align 4, !tbaa !10
  %.not81 = icmp eq i32 %i.t, 0
  br i1 %.not81, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.066, i64 noundef %.065, ptr noundef nonnull @_ZL6format, i32 noundef %i.s, i32 noundef %i.p, double noundef %i.k, i32 noundef %.067) #6 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.v = fcmp une double %i.k, 0.000000e+00
  br i1 %i.v, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %.not83 = icmp eq i32 %.067, 0                  ; 2 uses
  %.neg = select i1 %.not83, i64 -2, i64 -3
  %i.w = select i1 %.not83, i64 2, i64 3          ; 2 uses
  %i.x = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.066, i64 noundef %.065, ptr noundef nonnull @_ZL6format, i32 noundef %i.s, i32 noundef %i.p, double noundef %i.k, i32 noundef %.067) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.0 = phi ptr [ %.066, %bb.i ], [ %i.z, %bb.l ] ; 3 uses
  %i.y = load i8, ptr %.0, align 1, !tbaa !11
  switch i8 %i.y, label %bb.l [
    i8 0, label %.loopexit90
    i8 44, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  store i8 46, ptr %.0, align 1, !tbaa !11
  br label %.loopexit90

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.j, !llvm.loop !12

.loopexit90:                                      ; preds = %bb.j, %bb.k
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.066) #7 ; 2 uses
  %.not89 = icmp ugt i64 %i.w, %i.aa
  br i1 %.not89, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.loopexit90
  %i.ab = getelementptr inbounds nuw i8, ptr %.066, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg ; 4 uses
  %5 = load i8, ptr %i.ac, align 1, !tbaa !11
  switch i8 %5, label %.critedge [
    i8 48, label %bb.n
    i8 46, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %.1.ptr = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ad = load i8, ptr %.1.ptr, align 1, !tbaa !11
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  switch i8 %i.ad, label %bb.q [
    i8 48, label %bb.o
    i8 46, label %bb.p
  ], !llvm.loop !14

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.o, %bb.p
  %.2.idx103 = phi i64 [ 0, %bb.o ], [ 0, %bb.m ], [ -1, %bb.p ]
  %.2.ptr = getelementptr inbounds i8, ptr %i.ac, i64 %.2.idx103
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %.2.ptr, ptr noundef nonnull align 1 dereferenceable(2) %i.ae, i64 %i.w, i1 false)
  br label %.critedge

bb.r:                                             ; preds = %bb.h
  %.not82 = icmp eq i32 %i.p, 0
  br i1 %.not82, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.066, i64 noundef %.065, ptr noundef nonnull @.str.2, i32 noundef %i.s, i32 noundef %i.p, i32 noundef %.067) #6 ; 0 uses
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ag = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.066, i64 noundef %.065, ptr noundef nonnull @.str.3, i32 noundef %i.s, i32 noundef %.067) #6 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.q, %.loopexit90, %bb.g, %bb.s, %bb.t, %bb.d
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
