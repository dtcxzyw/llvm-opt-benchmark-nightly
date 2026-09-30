Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/powrF?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_unsafe_math_opt = external local_unnamed_addr addrspace(4) constant i8, align 1
@__oclc_ISA_version = external local_unnamed_addr addrspace(4) constant i32, align 4

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_powr_f32(float noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %spec.store.select = select i1 %i.a, float +qnan, float %0 ; 6 uses
  %i.b = load i8, ptr addrspace(4) @__oclc_unsafe_math_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call float @llvm.fabs.f32(float %spec.store.select) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call float @llvm.log2.f32(float %i.d)
  %i.f = fmul float %1, %i.e
  %i.g = tail call noundef float @llvm.exp2.f32(float %i.f)
  br label %compute_expylnx_float.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call <2 x float> @__ocmlpriv_epln_f32(float noundef %i.d) #3 ; 3 uses
  %i.i = extractelement <2 x float> %i.h, i64 1   ; 5 uses
  %i.j = fmul float %1, %i.i                      ; 5 uses
  %i.k = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !13
  %.fr.i.i.i = freeze i32 %i.k                    ; 3 uses
  %i.l = icmp sgt i32 %.fr.i.i.i, 8999
  br i1 %i.l, label %_ZL3mulff.exit.thread16.i.i, label %switch.early.test.i.i.i

_ZL3mulff.exit.thread16.i.i:                      ; preds = %bb.c
  %i.m = fneg float %i.j
  %i.n = tail call float @llvm.fma.f32(float %1, float %i.i, float %i.m) ; 2 uses
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.j, i64 1
  br label %bb.d

switch.early.test.i.i.i:                          ; preds = %bb.c
  switch i32 %.fr.i.i.i, label %_ZL3mulff.exit.thread.i.i [
    i32 8001, label %_ZL3mulff.exit.i.i
    i32 7001, label %_ZL3mulff.exit.i.i
  ]

_ZL3mulff.exit.thread.i.i:                        ; preds = %switch.early.test.i.i.i
  %i.q = bitcast float %1 to i32
  %i.r = and i32 %i.q, -4096
  %i.s = bitcast i32 %i.r to float                ; 3 uses
  %i.t = fsub float %1, %i.s                      ; 2 uses
  %i.u = bitcast float %i.i to i32
  %i.v = and i32 %i.u, -4096
  %i.w = bitcast i32 %i.v to float                ; 3 uses
  %i.x = fsub float %i.i, %i.w                    ; 2 uses
  %i.y = fneg float %i.j
  %i.z = tail call float @llvm.fmuladd.f32(float %i.s, float %i.w, float %i.y)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.s, float %i.x, float %i.z)
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.t, float %i.w, float %i.aa)
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.t, float %i.x, float %i.ab)
  br label %switch.early.test.i.i

_ZL3mulff.exit.i.i:                               ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i
  %i.ad = fneg float %i.j
  %i.ae = tail call float @llvm.fma.f32(float %1, float %i.i, float %i.ad)
  br label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %_ZL3mulff.exit.i.i, %_ZL3mulff.exit.thread.i.i
  %.sink17.i.i = phi float [ %i.ae, %_ZL3mulff.exit.i.i ], [ %i.ac, %_ZL3mulff.exit.thread.i.i ] ; 4 uses
  %i.af = insertelement <2 x float> poison, float %.sink17.i.i, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.j, i64 1 ; 3 uses
  switch i32 %.fr.i.i.i, label %bb.e [
    i32 8001, label %bb.d
    i32 7001, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %_ZL3mulff.exit.thread16.i.i
  %i.ah = phi <2 x float> [ %i.ag, %switch.early.test.i.i ], [ %i.ag, %switch.early.test.i.i ], [ %i.p, %_ZL3mulff.exit.thread16.i.i ]
  %.sink27.i15.i.i = phi float [ %.sink17.i.i, %switch.early.test.i.i ], [ %.sink17.i.i, %switch.early.test.i.i ], [ %i.n, %_ZL3mulff.exit.thread16.i.i ]
  %i.ai = extractelement <2 x float> %i.h, i64 0
  %i.aj = tail call float @llvm.fma.f32(float %1, float %i.ai, float %.sink27.i15.i.i)
  %i.ak = insertelement <2 x float> %i.ah, float %i.aj, i64 0
  br label %_ZL4omulfDv2_f.exit.i

bb.e:                                             ; preds = %switch.early.test.i.i
  %i.al = extractelement <2 x float> %i.h, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %1, float %i.al, float %.sink17.i.i)
  %i.an = insertelement <2 x float> %i.ag, float %i.am, i64 0
  br label %_ZL4omulfDv2_f.exit.i

_ZL4omulfDv2_f.exit.i:                            ; preds = %bb.e, %bb.d
  %.0.i.i = phi <2 x float> [ %i.ak, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %i.ao = extractelement <2 x float> %.0.i.i, i64 1 ; 4 uses
  %i.ap = extractelement <2 x float> %.0.i.i, i64 0 ; 2 uses
  %i.aq = fadd float %i.ao, %i.ap                 ; 2 uses
  %i.ar = fsub float %i.aq, %i.ao
  %i.as = fsub float %i.ap, %i.ar
  %i.at = tail call float @llvm.fabs.f32(float %i.ao)
  %i.au = fcmp oeq float %i.at, +inf
  %i.av = select i1 %i.au, float %i.ao, float %i.aq ; 2 uses
  %i.aw = tail call float @llvm.fabs.f32(float %i.av)
  %i.ax = fcmp oeq float %i.aw, +inf
  %i.ay = select i1 %i.ax, float 0.000000e+00, float %i.as
  %i.az = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.av, i64 1
  %i.bb = tail call float @__ocmlpriv_expep_f32(<2 x float> noundef %i.ba) #3
  br label %compute_expylnx_float.exit

compute_expylnx_float.exit:                       ; preds = %bb.b, %_ZL4omulfDv2_f.exit.i
  %.0.i = phi float [ %i.g, %bb.b ], [ %i.bb, %_ZL4omulfDv2_f.exit.i ]
  %i.bc = fcmp olt float %1, 0.000000e+00         ; 2 uses
  %i.bd = select i1 %i.bc, float +inf, float 0.000000e+00 ; 2 uses
  %i.be = select i1 %i.bc, float 0.000000e+00, float +inf ; 2 uses
  %i.bf = fcmp oeq float %spec.store.select, 0.000000e+00
  %2 = fcmp une float %1, 0.000000e+00            ; 2 uses
  %i.bg = select i1 %2, float %i.bd, float +qnan
  %.0.i6 = select i1 %i.bf, float %i.bg, float %.0.i
  %i.bh = fcmp oeq float %spec.store.select, +inf
  %or.cond.i = and i1 %2, %i.bh
  %.1.i = select i1 %or.cond.i, float %i.be, float %.0.i6
  %i.bi = tail call float @llvm.fabs.f32(float %1)
  %i.bj = fcmp oeq float %i.bi, +inf
  %i.bk = fcmp une float %spec.store.select, 1.000000e+00
  %or.cond3.i = and i1 %i.bk, %i.bj
  %i.bl = fcmp olt float %spec.store.select, 1.000000e+00
  %i.bm = select i1 %i.bl, float %i.bd, float %i.be
  %.2.i = select i1 %or.cond3.i, float %i.bm, float %.1.i
  %i.bn = fcmp uno float %spec.store.select, %1
  %.3.i = select i1 %i.bn, float +qnan, float %.2.i
  ret float %.3.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare float @__ocmlpriv_expep_f32(<2 x float> noundef) local_unnamed_addr #2

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare <2 x float> @__ocmlpriv_epln_f32(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

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
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!6, !6, i64 0}
end_hunk_0
