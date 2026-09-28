Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/dt?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c" %i iterations of each test. \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c" inner loop / array size %i.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 16384) #7 ; 0 uses
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 16, i64 noundef 16384) #7 ; 0 uses
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 131072) ; 0 uses
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 2048) ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16   ; 6 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !16   ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.06 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]    ; 5 uses
  %i.g = sub nuw nsw i64 2048, %.06
  %i.h = uitofp nneg i64 %i.g to float
  %4 = tail call float @cosf(float noundef %i.h) #7, !tbaa !7
  %i.i = fpext float %4 to double
  %i.j = fmul double %i.i, f0x3FF000001AD7F29B
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.06
  store double %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = uitofp nneg i64 %.06 to float
  %5 = tail call float @sinf(float noundef %i.l) #7, !tbaa !7
  %i.m = fpext float %5 to double
  %6 = tail call double @llvm.fmuladd.f64(double %i.m, double 1.000000e-10, double 1.000000e+00)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.06
  store double %6, ptr %i.n, align 8, !tbaa !18
  %i.o = add nuw nsw i64 %.06, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, 2048
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !8

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  br label %vector.ph

vector.ph:                                        ; preds = %bb.c, %middle.block
  %.09.i = phi i64 [ 0, %bb.c ], [ %i.ac, %middle.block ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 6 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %wide.load = load <2 x double>, ptr %i.p, align 8, !tbaa !18, !alias.scope !21, !noalias !20
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %wide.load7 = load <2 x double>, ptr %i.q, align 8, !tbaa !18, !alias.scope !20, !noalias !21
  %i.r = fdiv <2 x double> %wide.load7, %wide.load
  store <2 x double> %i.r, ptr %i.q, align 8, !tbaa !18, !alias.scope !20, !noalias !21
  %index.next = or disjoint i64 %index, 2         ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index.next
  %wide.load.1 = load <2 x double>, ptr %i.s, align 8, !tbaa !18, !alias.scope !21, !noalias !20
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index.next ; 2 uses
  %wide.load7.1 = load <2 x double>, ptr %i.t, align 8, !tbaa !18, !alias.scope !20, !noalias !21
  %i.u = fdiv <2 x double> %wide.load7.1, %wide.load.1
  store <2 x double> %i.u, ptr %i.t, align 8, !tbaa !18, !alias.scope !20, !noalias !21
  %index.next.1 = or disjoint i64 %index, 4       ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index.next.1
  %wide.load.2 = load <2 x double>, ptr %i.v, align 8, !tbaa !18, !alias.scope !21, !noalias !20
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index.next.1 ; 2 uses
  %wide.load7.2 = load <2 x double>, ptr %i.w, align 8, !tbaa !18, !alias.scope !20, !noalias !21
  %i.x = fdiv <2 x double> %wide.load7.2, %wide.load.2
  store <2 x double> %i.x, ptr %i.w, align 8, !tbaa !18, !alias.scope !20, !noalias !21
  %index.next.2 = or disjoint i64 %index, 6       ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index.next.2
  %wide.load.3 = load <2 x double>, ptr %i.y, align 8, !tbaa !18, !alias.scope !21, !noalias !20
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index.next.2 ; 2 uses
  %wide.load7.3 = load <2 x double>, ptr %i.z, align 8, !tbaa !18, !alias.scope !20, !noalias !21
  %i.aa = fdiv <2 x double> %wide.load7.3, %wide.load.3
  store <2 x double> %i.aa, ptr %i.z, align 8, !tbaa !18, !alias.scope !20, !noalias !21
  %index.next.3 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.ab = icmp eq i64 %index.next.3, 2048
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %i.ac = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond10.not.i = icmp eq i64 %i.ac, 131072
  br i1 %exitcond10.not.i, label %double_array_divs_variable.exit, label %vector.ph, !llvm.loop !13

double_array_divs_variable.exit:                  ; preds = %middle.block
  %i.ad = load double, ptr %i.e, align 8, !tbaa !18
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.ad) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !"double_array_divs_variable"}
!10 = distinct !{!10, !9, !"double_array_divs_variable: argument 0"}
!11 = distinct !{!11, !9, !"double_array_divs_variable: argument 1"}
!12 = distinct !{!12, !19, !22, !23}
!13 = distinct !{!13, !19}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 double", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!10}
!21 = !{!11}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
