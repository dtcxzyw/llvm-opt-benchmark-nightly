Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/gauss?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable
define hidden noalias noundef ptr @_Z12pj_gauss_iniddPdS_(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #8 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fmul double %0, %0                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %0, ptr %i.d, align 8, !tbaa !10
  %i.e = tail call double @sin(double noundef %1) #9 ; 4 uses
  %i.f = tail call double @cos(double noundef %1) #9 ; 2 uses
  %i.g = fmul double %i.f, %i.f                   ; 2 uses
  %i.h = fsub double 1.000000e+00, %i.c           ; 2 uses
  %i.i = tail call double @sqrt(double noundef %i.h) #9
  %i.j = fneg double %i.e
  %i.k = fmul double %i.c, %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.e, double 1.000000e+00)
  %i.m = fdiv double %i.i, %i.l
  store double %i.m, ptr %3, align 8, !tbaa !11
  %i.n = fmul double %i.c, %i.g
  %i.o = fmul double %i.g, %i.n
  %i.p = fdiv double %i.o, %i.h
  %i.q = fadd double %i.p, 1.000000e+00
  %i.r = tail call double @sqrt(double noundef %i.q) #9 ; 5 uses
  store double %i.r, ptr %i.a, align 8, !tbaa !12
  %i.s = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #9
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.t = fdiv double %i.e, %i.r
  %i.u = tail call double @asin(double noundef %i.t) #9 ; 2 uses
  store double %i.u, ptr %2, align 8, !tbaa !11
  %i.v = fmul double %i.r, 5.000000e-01
  %i.w = fmul double %0, %i.v                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.w, ptr %i.x, align 8, !tbaa !13
  %i.y = fmul double %0, %i.e                     ; 2 uses
  %i.z = fsub double 1.000000e+00, %i.y
  %i.aa = fadd double %i.y, 1.000000e+00
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = tail call noundef double @pow(double noundef %i.ab, double noundef %i.w) #9 ; 3 uses
  %i.ad = fcmp oeq double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #9
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call double @llvm.fmuladd.f64(double %1, double 5.000000e-01, double f0x3FE921FB54442D18) ; 2 uses
  %i.af = fcmp olt double %i.ae, 1.000000e-10
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = fdiv double 1.000000e+00, %i.ac
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.u, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.ai = tail call double @tan(double noundef %i.ah) #9
  %i.aj = tail call double @tan(double noundef %i.ae) #9
  %i.ak = tail call double @pow(double noundef %i.aj, double noundef %i.r) #9
  %i.al = fmul double %i.ac, %i.ak
  %i.am = fdiv double %i.ai, %i.al
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.sink = phi double [ %i.ag, %bb.g ], [ %i.am, %bb.h ]
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %.sink, ptr %4, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e, %bb.a, %bb.c
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.e ], [ %i.a, %.sink.split ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden { double, double } @_Z8pj_gaussP6pj_ctx5PJ_LPPKv(ptr nofree noundef readnone captures(none) %0, double %1, double %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call double @llvm.fmuladd.f64(double %2, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.d = tail call double @tan(double noundef %i.c) #9
  %i.e = load double, ptr %3, align 8, !tbaa !12  ; 2 uses
  %i.f = tail call double @pow(double noundef %i.d, double noundef %i.e) #9
  %i.g = fmul double %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !10
  %i.j = tail call double @sin(double noundef %2) #9
  %i.k = fmul double %i.i, %i.j                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !13
  %i.n = fsub double 1.000000e+00, %i.k
  %i.o = fadd double %i.k, 1.000000e+00
  %i.p = fdiv double %i.n, %i.o
  %i.q = tail call noundef double @pow(double noundef %i.p, double noundef %i.m) #9
  %i.r = fmul double %i.g, %i.q
  %i.s = tail call double @atan(double noundef %i.r) #9
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double 2.000000e+00, double f0xBFF921FB54442D18)
  %i.u = fmul double %1, %i.e
  %.fca.0.insert = insertvalue { double, double } poison, double %i.u, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.t, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden { double, double } @_Z12pj_inv_gaussP6pj_ctx5PJ_LPPKv(ptr noundef %0, double %1, double %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %2, double 5.000000e-01, double f0x3FE921FB54442D18)
  %i.b = tail call double @tan(double noundef %i.a) #9
  %i.c = load <2 x double>, ptr %3, align 8, !tbaa !11 ; 2 uses
  %i.d = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.b, i64 1
  %i.e = fdiv <2 x double> %i.d, %i.c             ; 2 uses
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = extractelement <2 x double> %i.e, i64 1
  %i.h = tail call double @pow(double noundef %i.g, double noundef %i.f) #9
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !10 ; 2 uses
  %i.k = fmul double %i.j, -5.000000e-01
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.l = add nsw i32 %.020, -1                    ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !15

bb.c:                                             ; preds = %bb.a, %bb.b
  %.020 = phi i32 [ 20, %bb.a ], [ %i.l, %bb.b ]
  %.sroa.2.019 = phi double [ %2, %bb.a ], [ %i.u, %bb.b ] ; 2 uses
  %i.m = tail call double @sin(double noundef %.sroa.2.019) #9
  %i.n = fmul double %i.j, %i.m                   ; 2 uses
  %i.o = fsub double 1.000000e+00, %i.n
  %i.p = fadd double %i.n, 1.000000e+00
  %i.q = fdiv double %i.o, %i.p
  %i.r = tail call noundef double @pow(double noundef %i.q, double noundef %i.k) #9
  %i.s = fmul double %i.h, %i.r
  %i.t = tail call double @atan(double noundef %i.s) #9
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double 2.000000e+00, double f0xBFF921FB54442D18) ; 3 uses
  %i.v = fsub double %i.u, %.sroa.2.019
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp olt double %i.w, f0x3D06849B86A12B9B
  br i1 %i.x, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 2050)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  %i.y = extractelement <2 x double> %i.c, i64 0
  %i.z = fdiv double %1, %i.y
  %.fca.0.insert = insertvalue { double, double } poison, double %i.z, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.u, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"_ZTSN12_GLOBAL__N_15GAUSSE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!10 = !{!9, !8, i64 16}
!11 = !{!8, !8, i64 0}
!12 = !{!9, !8, i64 0}
!13 = !{!9, !8, i64 24}
!14 = !{!9, !8, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
end_hunk_0
