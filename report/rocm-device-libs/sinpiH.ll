Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/sinpiH?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x half> @__ocml_sinpi_2f16(<2 x half> noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call <2 x half> @llvm.fabs.v2f16(<2 x half> %0)
  %i.d = fcmp une <2 x half> %i.c, splat (half +inf)
  %i.e = insertelement <2 x i1> poison, i1 %i.b, i64 0
  %i.f = shufflevector <2 x i1> %i.e, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.g = or <2 x i1> %i.d, %i.f
  %i.h = select <2 x i1> %i.g, <2 x half> %0, <2 x half> splat (half +qnan) ; 4 uses
  %i.i = extractelement <2 x half> %i.h, i64 0
  %i.j = tail call half @llvm.fabs.f16(half %i.i)
  %i.k = tail call i32 @__ocmlpriv_trigpired_f16(half noundef %i.j) #3 ; 2 uses
  %.sroa.03.0.extract.trunc.i = trunc i32 %i.k to i16
  %i.l = bitcast i16 %.sroa.03.0.extract.trunc.i to half
  %i.m = tail call i32 @__ocmlpriv_sincospired_f16(half noundef %i.l) #3
  %i.n = extractelement <2 x half> %i.h, i64 1
  %i.o = tail call half @llvm.fabs.f16(half %i.n)
  %i.p = tail call i32 @__ocmlpriv_trigpired_f16(half noundef %i.o) #3 ; 2 uses
  %.sroa.03.0.extract.trunc.i4 = trunc i32 %i.p to i16
  %i.q = bitcast i16 %.sroa.03.0.extract.trunc.i4 to half
  %i.r = tail call i32 @__ocmlpriv_sincospired_f16(half noundef %i.q) #3
  %i.s = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %i.p, i64 1 ; 2 uses
  %1 = lshr <2 x i32> %i.t, splat (i32 12)
  %i.u = and <2 x i32> %1, splat (i32 16)
  %i.v = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.w = insertelement <2 x i32> %i.v, i32 %i.r, i64 1
  %i.x = lshr <2 x i32> %i.w, %i.u
  %i.y = icmp sgt <2 x i32> %i.t, splat (i32 131071)
  %i.z = select <2 x i1> %i.y, <2 x i32> splat (i32 32768), <2 x i32> zeroinitializer
  %i.aa = bitcast <2 x half> %i.h to <2 x i16>
  %i.ab = and <2 x i16> %i.aa, splat (i16 -32768)
  %i.ac = xor <2 x i32> %i.x, %i.z
  %i.ad = trunc <2 x i32> %i.ac to <2 x i16>
  %i.ae = xor <2 x i16> %i.ab, %i.ad
  %i.af = bitcast <2 x i16> %i.ae to <2 x half>   ; 2 uses
  %i.ag = fcmp oeq <2 x half> %i.af, zeroinitializer
  %i.ah = tail call <2 x half> @llvm.copysign.v2f16(<2 x half> zeroinitializer, <2 x half> %i.h)
  %i.ai = select <2 x i1> %i.ag, <2 x half> %i.ah, <2 x half> %i.af
  ret <2 x half> %i.ai
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden half @__ocml_sinpi_f16(half noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call half @llvm.fabs.f16(half %0)
  %i.d = fcmp une half %i.c, +inf
  %i.e = or i1 %i.d, %i.b
  %.0 = select i1 %i.e, half %0, half +qnan       ; 3 uses
  %i.f = tail call half @llvm.fabs.f16(half %.0)
  %i.g = tail call i32 @__ocmlpriv_trigpired_f16(half noundef %i.f) #3 ; 3 uses
  %.sroa.03.0.extract.trunc = trunc i32 %i.g to i16
  %i.h = bitcast i16 %.sroa.03.0.extract.trunc to half
  %i.i = tail call i32 @__ocmlpriv_sincospired_f16(half noundef %i.h) #3
  %1 = lshr i32 %i.g, 12
  %i.j = and i32 %1, 16
  %.v.v = lshr i32 %i.i, %i.j
  %i.k = icmp sgt i32 %i.g, 131071
  %i.l = select i1 %i.k, i32 32768, i32 0
  %i.m = bitcast half %.0 to i16
  %i.n = and i16 %i.m, -32768
  %i.o = xor i32 %.v.v, %i.l
  %i.p = trunc i32 %i.o to i16
  %i.q = xor i16 %i.n, %i.p
  %i.r = bitcast i16 %i.q to half                 ; 2 uses
  %i.s = fcmp oeq half %i.r, 0.000000e+00
  %i.t = tail call half @llvm.copysign.f16(half 0.000000e+00, half %.0)
  %i.u = select i1 %i.s, half %i.t, half %i.r
  ret half %i.u
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare i32 @__ocmlpriv_trigpired_f16(half noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fabs.f16(half) #2

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare i32 @__ocmlpriv_sincospired_f16(half noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.copysign.f16(half, half) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x half> @llvm.fabs.v2f16(<2 x half>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x half> @llvm.copysign.v2f16(<2 x half>, <2 x half>) #2

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent nounwind willreturn memory(none) }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
end_hunk_0
