inline.NumInlined: 38
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 20)) %1) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !7
  %i.a = load <2 x double>, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.b = fcmp olt <2 x double> %i.a, <double f0x3FF000010C6F7A0B, double f0x3EB0C6F7A0B5ED8D>
  %i.c = select <2 x i1> %i.b, <2 x double> <double f0x3FF000010C6F7A0B, double f0x3EB0C6F7A0B5ED8D>, <2 x double> %i.a ; 5 uses
  %i.d = fadd <2 x double> %i.c, <double -1.000000e+00, double 1.000000e+00> ; 3 uses
  %i.e = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.f = fdiv <2 x double> %i.e, %i.d
  %i.g = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.h = extractelement <2 x double> %i.c, i64 1  ; 2 uses
  %i.i = fdiv double %i.g, %i.h
  %i.j = extractelement <2 x double> %i.c, i64 0  ; 2 uses
  %i.k = fmul double %i.j, %i.h
  %i.l = extractelement <2 x double> %i.d, i64 1  ; 2 uses
  %i.m = fmul double %i.g, %i.l
  %i.n = fdiv double %i.k, %i.m
  %i.o = tail call double @pow(double noundef %i.n, double noundef %i.j) #2, !tbaa !3
  %i.p = fmul double %i.o, %i.i
  %i.q = shufflevector <2 x double> %i.c, <2 x double> %i.f, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.r = insertelement <4 x double> %i.q, double %i.p, i64 3
  %i.s = fptrunc <4 x double> %i.r to <4 x float>
  store <4 x float> %i.s, ptr %1, align 4, !tbaa !13
  %i.t = fdiv double 1.000000e+00, %i.l
  %i.u = fptrunc double %i.t to float
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.u, ptr %i.v, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 20)) %1) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !7
  %i.a = load <2 x double>, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.b = fcmp olt <2 x double> %i.a, <double f0x3FF000010C6F7A0B, double f0x3EB0C6F7A0B5ED8D>
  %i.c = select <2 x i1> %i.b, <2 x double> <double f0x3FF000010C6F7A0B, double f0x3EB0C6F7A0B5ED8D>, <2 x double> %i.a ; 6 uses
  %i.d = extractelement <2 x double> %i.c, i64 0  ; 3 uses
  %2 = fdiv double 1.000000e+00, %i.d
  %shift = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.c, %shift
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %4 = fadd <2 x double> %i.c, <double -1.000000e+00, double 1.000000e+00> ; 3 uses
  %5 = extractelement <2 x double> %4, i64 0      ; 2 uses
  %6 = extractelement <2 x double> %4, i64 1      ; 2 uses
  %7 = fmul double %5, %6
  %8 = fdiv double %3, %7
  %i.e = tail call noundef double @pow(double noundef %8, double noundef %i.d) #2, !tbaa !3
  %9 = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.f = fdiv <2 x double> %4, %9                 ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  %i.h = tail call double @pow(double noundef %i.g, double noundef %5) #2, !tbaa !3
  %i.i = extractelement <2 x double> %i.f, i64 1
  %i.j = tail call double @pow(double noundef %i.i, double noundef %i.d) #2, !tbaa !3
  %i.k = fmul double %i.h, %i.j
  %10 = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %11 = insertelement <4 x double> %10, double %2, i64 0
  %i.l = insertelement <4 x double> %11, double %i.e, i64 2
  %i.m = insertelement <4 x double> %i.l, double %i.k, i64 3
  %i.n = fptrunc <4 x double> %i.m to <4 x float>
  store <4 x float> %i.n, ptr %1, align 4, !tbaa !13
  %i.o = fptrunc double %6 to float
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.o, ptr %i.p, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"p1 double", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!16, !14, i64 16}
!16 = !{!"_ZTSN16OpenColorIO_v2_514RendererParamsE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16}
end_hunk_0
