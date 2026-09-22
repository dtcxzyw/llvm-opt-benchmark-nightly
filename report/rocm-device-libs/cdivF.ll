Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/cdivF?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x float> @__ocml_cdiv_f32(<2 x float> noundef %0, <2 x float> noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = extractelement <2 x float> %1, i64 0     ; 7 uses
  %i.b = extractelement <2 x float> %1, i64 1     ; 6 uses
  %i.c = tail call float @llvm.fabs.f32(float %i.a) ; 3 uses
  %i.d = tail call float @llvm.fabs.f32(float %i.b) ; 3 uses
  %i.e = fcmp ogt float %i.c, %i.d                ; 3 uses
  %i.f = select i1 %i.e, float %i.a, float %i.b
  %i.g = tail call { float, i32 } @llvm.frexp.f32.i32(float %i.f)
  %i.h = extractvalue { float, i32 } %i.g, 1      ; 2 uses
  %i.i = extractelement <2 x float> %0, i64 0     ; 7 uses
  %i.j = tail call float @llvm.fabs.f32(float %i.i) ; 3 uses
  %i.k = extractelement <2 x float> %0, i64 1     ; 9 uses
  %i.l = tail call float @llvm.fabs.f32(float %i.k) ; 3 uses
  %i.m = tail call nsz float @llvm.maxnum.f32(float %i.j, float %i.l)
  %i.n = tail call { float, i32 } @llvm.frexp.f32.i32(float %i.m)
  %i.o = extractvalue { float, i32 } %i.n, 1
  %i.p = sub nsw i32 126, %i.h                    ; 3 uses
  %i.q = sub nsw i32 %i.p, %i.h
  %i.r = sub nsw i32 %i.p, %i.o
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.q)
  %. = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.r)
  %i.t = ashr i32 %., 1                           ; 4 uses
  %i.u = tail call float @llvm.ldexp.f32.i32(float %i.a, i32 %i.t) ; 3 uses
  %i.v = tail call float @llvm.ldexp.f32.i32(float %i.b, i32 %i.t) ; 3 uses
  %i.w = select i1 %i.e, float %i.u, float %i.v   ; 2 uses
  %i.x = select i1 %i.e, float %i.v, float %i.u   ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = tail call float @llvm.fma.f32(float %i.w, float %i.w, float %i.y) ; 3 uses
  %i.aa = tail call float @llvm.ldexp.f32.i32(float %i.u, i32 %i.t) ; 2 uses
  %i.ab = tail call float @llvm.ldexp.f32.i32(float %i.v, i32 %i.t) ; 4 uses
  %i.ac = fmul float %i.k, %i.ab                  ; 2 uses
  %2 = fneg float %i.ac
  %3 = tail call float @llvm.fma.f32(float %i.k, float %i.ab, float %2)
  %4 = tail call float @llvm.fma.f32(float %i.i, float %i.aa, float %i.ac)
  %5 = fadd float %4, %3
  %6 = fneg float %i.i                            ; 3 uses
  %7 = fmul float %i.ab, %6                       ; 2 uses
  %8 = fneg float %7
  %i.ad = tail call float @llvm.fma.f32(float %6, float %i.ab, float %8)
  %i.ae = tail call float @llvm.fma.f32(float %i.k, float %i.aa, float %7)
  %9 = fadd float %i.ae, %i.ad
  %10 = fdiv float %5, %i.z, !fpmath !9           ; 3 uses
  %11 = fdiv float %9, %i.z, !fpmath !9           ; 3 uses
  %i.af = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !11, !range !12, !noundef !13
  %i.ag = trunc nuw i8 %i.af to i1
  %.not = xor i1 %i.ag, true
  %i.ah = fcmp uno float %10, 0.000000e+00
  %or.cond = select i1 %.not, i1 %i.ah, i1 false
  %i.ai = fcmp uno float %11, 0.000000e+00
  %or.cond135 = select i1 %or.cond, i1 %i.ai, i1 false
  br i1 %or.cond135, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.aj = fcmp oeq float %i.z, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ak = fcmp uno float %i.i, 0.000000e+00
  %i.al = fcmp uno float %i.k, 0.000000e+00
  %or.cond136 = and i1 %i.ak, %i.al
  br i1 %or.cond136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = tail call float @llvm.copysign.f32(float +inf, float %i.a) ; 2 uses
  %12 = fmul float %i.i, %i.am
  %13 = fmul float %i.k, %i.am
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.an = fcmp une float %i.j, +inf               ; 2 uses
  %i.ao = fcmp une float %i.l, +inf               ; 2 uses
  %or.cond138.not151 = and i1 %i.an, %i.ao
  %i.ap = fcmp ueq float %i.c, +inf
  %or.cond140 = or i1 %or.cond138.not151, %i.ap
  %i.aq = fcmp ueq float %i.d, +inf
  %or.cond142 = or i1 %i.aq, %or.cond140
  br i1 %or.cond142, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = select i1 %i.an, float 0.000000e+00, float 1.000000e+00
  %i.as = tail call float @llvm.copysign.f32(float %i.ar, float %i.i) ; 2 uses
  %i.at = select i1 %i.ao, float 0.000000e+00, float 1.000000e+00
  %i.au = tail call float @llvm.copysign.f32(float %i.at, float %i.k) ; 2 uses
  %i.av = fmul nnan float %i.b, %i.au
  %i.aw = tail call float @__ocml_fmuladd_f32(float noundef %i.as, float noundef %i.a, float noundef %i.av) #3
  %i.ax = fmul float %i.aw, +inf
  %14 = fneg float %i.as
  %15 = fmul nnan float %i.b, %14
  %16 = tail call float @__ocml_fmuladd_f32(float noundef %i.au, float noundef %i.a, float noundef %15) #3
  %17 = fmul float %16, +inf
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ay = fcmp une float %i.c, +inf               ; 2 uses
  %i.az = fcmp une float %i.d, +inf               ; 2 uses
  %or.cond144.not154 = and i1 %i.ay, %i.az
  %i.ba = fcmp ueq float %i.j, +inf
  %or.cond146 = or i1 %i.ba, %or.cond144.not154
  %i.bb = fcmp ueq float %i.l, +inf
  %or.cond148 = or i1 %i.bb, %or.cond146
  br i1 %or.cond148, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = select i1 %i.ay, float 0.000000e+00, float 1.000000e+00
  %i.bd = tail call float @llvm.copysign.f32(float %i.bc, float %i.a) ; 2 uses
  %i.be = select i1 %i.az, float 0.000000e+00, float 1.000000e+00
  %i.bf = tail call float @llvm.copysign.f32(float %i.be, float %i.b) ; 2 uses
  %i.bg = fmul nnan float %i.k, %i.bf
  %i.bh = tail call float @__ocml_fmuladd_f32(float noundef %i.i, float noundef %i.bd, float noundef %i.bg) #3
  %i.bi = fmul float %i.bh, 0.000000e+00
  %18 = fmul nnan float %i.bf, %6
  %19 = tail call float @__ocml_fmuladd_f32(float noundef %i.k, float noundef %i.bd, float noundef %18) #3
  %20 = fmul float %19, 0.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h, %bb.d, %bb.a
  %.0132 = phi float [ %10, %bb.a ], [ %i.ax, %bb.f ], [ %i.bi, %bb.h ], [ %10, %bb.g ], [ %12, %bb.d ]
  %.0 = phi float [ %11, %bb.a ], [ %17, %bb.f ], [ %20, %bb.h ], [ %11, %bb.g ], [ %13, %bb.d ]
  %21 = insertelement <2 x float> poison, float %.0132, i64 0
  %22 = insertelement <2 x float> %21, float %.0, i64 1
  ret <2 x float> %22
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare float @__ocml_fmuladd_f32(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

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
!9 = !{float 2.500000e+00}
!10 = !{!"bool", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
end_hunk_0
