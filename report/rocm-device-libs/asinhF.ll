Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/asinhF?download=true
inline.NumInlined: 19
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1
@__oclc_ISA_version = external local_unnamed_addr addrspace(4) constant i32, align 4

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_asinh_f32(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0) ; 5 uses
  %i.b = fcmp oge float %i.a, f0x5F800000         ; 2 uses
  %i.c = select i1 %i.b, float f0x1F800000, float 1.000000e+00 ; 3 uses
  %i.d = fmul float %i.a, %i.c                    ; 9 uses
  %i.e = fmul float %i.d, %i.d                    ; 5 uses
  %i.f = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9
  %.fr.i = freeze i32 %i.f                        ; 3 uses
  %i.g = icmp sgt i32 %.fr.i, 8999                ; 2 uses
  br i1 %i.g, label %bb.b, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.a
  switch i32 %.fr.i, label %bb.c [
    i32 8001, label %bb.b
    i32 7001, label %bb.b
  ]

bb.b:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %bb.a
  %i.h = fneg float %i.e
  %i.i = tail call float @llvm.fma.f32(float %i.d, float %i.d, float %i.h)
  br label %_ZL3sqrf.exit

bb.c:                                             ; preds = %switch.early.test.i
  %i.j = bitcast float %i.d to i32
  %i.k = and i32 %i.j, -4096
  %i.l = bitcast i32 %i.k to float                ; 4 uses
  %i.m = fsub float %i.d, %i.l                    ; 3 uses
  %i.n = fneg float %i.e
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.n)
  %i.p = fmul float %i.l, 2.000000e+00
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.m, float %i.o)
  %i.r = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.q)
  br label %_ZL3sqrf.exit

_ZL3sqrf.exit:                                    ; preds = %bb.b, %bb.c
  %.sink20.i = phi float [ %i.r, %bb.c ], [ %i.i, %bb.b ]
  %i.s = fmul float %i.c, %i.c                    ; 2 uses
  %i.t = fadd float %i.s, %i.e                    ; 4 uses
  %i.u = fsub float %i.t, %i.e                    ; 2 uses
  %i.v = fsub float %i.u, %i.t
  %i.w = fadd float %i.e, %i.v
  %i.x = fsub float %i.s, %i.u
  %i.y = fadd float %i.x, %i.w
  %i.z = fadd float %i.y, %.sink20.i              ; 2 uses
  %i.aa = fadd float %i.t, %i.z                   ; 5 uses
  %i.ab = tail call float @llvm.amdgcn.sqrt.f32(float %i.aa) ; 9 uses
  %i.ac = fmul float %i.ab, %i.ab                 ; 4 uses
  br i1 %i.g, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %_ZL3sqrf.exit
  switch i32 %.fr.i, label %bb.e [
    i32 8001, label %bb.d
    i32 7001, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %_ZL3sqrf.exit
  %i.ad = fneg float %i.ac
  %i.ae = tail call float @llvm.fma.f32(float %i.ab, float %i.ab, float %i.ad)
  br label %_ZL5root2Dv2_f.exit

bb.e:                                             ; preds = %switch.early.test.i.i
  %i.af = bitcast float %i.ab to i32
  %i.ag = and i32 %i.af, -4096
  %i.ah = bitcast i32 %i.ag to float              ; 4 uses
  %i.ai = fsub float %i.ab, %i.ah                 ; 3 uses
  %i.aj = fneg float %i.ac
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.aj)
  %i.al = fmul float %i.ah, 2.000000e+00
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ai, float %i.ak)
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.am)
  br label %_ZL5root2Dv2_f.exit

_ZL5root2Dv2_f.exit:                              ; preds = %bb.d, %bb.e
  %.sink20.i.i = phi float [ %i.an, %bb.e ], [ %i.ae, %bb.d ]
  %i.ao = fsub float %i.aa, %i.t
  %i.ap = fsub float %i.z, %i.ao
  %i.aq = fsub float %i.aa, %i.ac                 ; 2 uses
  %i.ar = fsub float %i.aa, %i.aq
  %i.as = fsub float %i.ar, %i.ac
  %i.at = fadd float %i.ap, %i.as
  %i.au = fsub float %i.at, %.sink20.i.i
  %i.av = fadd float %i.aq, %i.au
  %i.aw = fmul float %i.ab, 2.000000e+00
  %i.ax = tail call float @llvm.amdgcn.rcp.f32(float %i.aw)
  %i.ay = fmul float %i.ax, %i.av
  %i.az = fcmp oeq float %i.aa, 0.000000e+00
  %i.ba = select i1 %i.az, float 0.000000e+00, float %i.ay ; 2 uses
  %i.bb = fadd float %i.ab, %i.ba                 ; 3 uses
  %i.bc = fsub float %i.bb, %i.ab
  %i.bd = fadd float %i.d, %i.bb                  ; 4 uses
  %i.be = fsub float %i.bd, %i.d                  ; 2 uses
  %i.bf = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.d, i64 1
  %i.bh = insertelement <4 x float> %i.bg, float %i.bb, i64 2
  %i.bi = insertelement <4 x float> %i.bh, float %i.ba, i64 3
  %i.bj = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bd, i64 0
  %i.bk = insertelement <4 x float> %i.bj, float %i.be, i64 2
  %1 = insertelement <4 x float> %i.bk, float %i.bc, i64 3
  %2 = fsub <4 x float> %i.bi, %1
  %i.bl = tail call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %2) ; 2 uses
  %i.bm = fadd float %i.bd, %i.bl                 ; 2 uses
  %i.bn = fsub float %i.bm, %i.bd
  %i.bo = fsub float %i.bl, %i.bn
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bm, i64 1
  %i.br = select i1 %i.b, i32 64, i32 0
  %i.bs = tail call float @__ocmlpriv_lnep_f32(<2 x float> noundef %i.bq, i32 noundef %i.br) #3
  %i.bt = fcmp olt float %i.a, f0x39800000
  %i.bu = select i1 %i.bt, float %i.a, float %i.bs
  %i.bv = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !11, !range !12, !noundef !13
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = fcmp une float %i.a, +inf
  %i.by = or i1 %i.bx, %i.bw
  %.0 = select i1 %i.by, float %i.bu, float +inf
  %i.bz = tail call float @llvm.copysign.f32(float %.0, float %0)
  ret float %i.bz
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare float @__ocmlpriv_lnep_f32(<2 x float> noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.rcp.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #1

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
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
!9 = !{!6, !6, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
end_hunk_0
