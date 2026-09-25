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
  %i.i = extractelement <2 x float> %0, i64 0     ; 6 uses
  %i.j = tail call float @llvm.fabs.f32(float %i.i) ; 3 uses
  %i.k = extractelement <2 x float> %0, i64 1     ; 7 uses
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
  %i.u = tail call float @llvm.ldexp.f32.i32(float %i.b, i32 %i.t) ; 3 uses
  %i.v = tail call float @llvm.ldexp.f32.i32(float %i.a, i32 %i.t) ; 3 uses
  %i.w = select i1 %i.e, float %i.v, float %i.u   ; 2 uses
  %i.x = select i1 %i.e, float %i.u, float %i.v   ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = tail call float @llvm.fma.f32(float %i.w, float %i.w, float %i.y) ; 2 uses
  %i.aa = tail call float @llvm.ldexp.f32.i32(float %i.u, i32 %i.t) ; 3 uses
  %i.ab = tail call float @llvm.ldexp.f32.i32(float %i.v, i32 %i.t) ; 2 uses
  %2 = fneg float %i.i                            ; 3 uses
  %3 = fmul float %i.aa, %2                       ; 2 uses
  %i.ac = fmul float %i.k, %i.aa                  ; 2 uses
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %3, i64 1
  %i.af = fneg <2 x float> %i.ae
  %i.ag = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ah = insertelement <2 x float> %i.ag, float %2, i64 1
  %i.ai = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ah, <2 x float> %i.aj, <2 x float> %i.af)
  %4 = tail call float @llvm.fma.f32(float %i.k, float %i.ab, float %3)
  %i.al = tail call float @llvm.fma.f32(float %i.i, float %i.ab, float %i.ac)
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = insertelement <2 x float> %i.am, float %4, i64 1
  %i.ao = fadd <2 x float> %i.an, %i.ak
  %i.ap = insertelement <2 x float> poison, float %i.z, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fdiv <2 x float> %i.ao, %i.aq, !fpmath !9 ; 4 uses
  %i.as = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !11, !range !12, !noundef !13
  %i.at = trunc nuw i8 %i.as to i1
  %.not = xor i1 %i.at, true
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = fcmp uno float %i.au, 0.000000e+00
  %or.cond = select i1 %.not, i1 %i.av, i1 false
  %i.aw = extractelement <2 x float> %i.ar, i64 1
  %i.ax = fcmp uno float %i.aw, 0.000000e+00
  %or.cond135 = select i1 %or.cond, i1 %i.ax, i1 false
  br i1 %or.cond135, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.ay = fcmp oeq float %i.z, 0.000000e+00
  br i1 %i.ay, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.az = fcmp uno float %i.i, 0.000000e+00
  %i.ba = fcmp uno float %i.k, 0.000000e+00
  %or.cond136 = and i1 %i.az, %i.ba
  br i1 %or.cond136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = tail call float @llvm.copysign.f32(float +inf, float %i.a)
  %i.bc = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %0, %i.bd
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.bf = fcmp une float %i.j, +inf               ; 2 uses
  %i.bg = fcmp une float %i.l, +inf               ; 2 uses
  %or.cond138.not151 = and i1 %i.bf, %i.bg
  %i.bh = fcmp ueq float %i.c, +inf
  %or.cond140 = or i1 %or.cond138.not151, %i.bh
  %i.bi = fcmp ueq float %i.d, +inf
  %or.cond142 = or i1 %i.bi, %or.cond140
  br i1 %or.cond142, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = select i1 %i.bf, float 0.000000e+00, float 1.000000e+00
  %i.bk = tail call float @llvm.copysign.f32(float %i.bj, float %i.i) ; 2 uses
  %i.bl = select i1 %i.bg, float 0.000000e+00, float 1.000000e+00
  %i.bm = tail call float @llvm.copysign.f32(float %i.bl, float %i.k) ; 2 uses
  %i.bn = fmul nnan float %i.b, %i.bm
  %i.bo = tail call float @__ocml_fmuladd_f32(float noundef %i.bk, float noundef %i.a, float noundef %i.bn) #3
  %i.bp = fneg float %i.bk
  %i.bq = fmul nnan float %i.b, %i.bp
  %i.br = tail call float @__ocml_fmuladd_f32(float noundef %i.bm, float noundef %i.a, float noundef %i.bq) #3
  %i.bs = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.br, i64 1
  %i.bu = fmul <2 x float> %i.bt, splat (float +inf)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bv = fcmp une float %i.c, +inf               ; 2 uses
  %i.bw = fcmp une float %i.d, +inf               ; 2 uses
  %or.cond144.not154 = and i1 %i.bv, %i.bw
  %i.bx = fcmp ueq float %i.j, +inf
  %or.cond146 = or i1 %i.bx, %or.cond144.not154
  %i.by = fcmp ueq float %i.l, +inf
  %or.cond148 = or i1 %i.by, %or.cond146
  br i1 %or.cond148, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = select i1 %i.bv, float 0.000000e+00, float 1.000000e+00
  %i.ca = tail call float @llvm.copysign.f32(float %i.bz, float %i.a) ; 2 uses
  %i.cb = select i1 %i.bw, float 0.000000e+00, float 1.000000e+00
  %i.cc = tail call float @llvm.copysign.f32(float %i.cb, float %i.b) ; 2 uses
  %i.cd = fmul nnan float %i.k, %i.cc
  %i.ce = tail call float @__ocml_fmuladd_f32(float noundef %i.i, float noundef %i.ca, float noundef %i.cd) #3
  %i.cf = fmul nnan float %i.cc, %2
  %i.cg = tail call float @__ocml_fmuladd_f32(float noundef %i.k, float noundef %i.ca, float noundef %i.cf) #3
  %i.ch = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cg, i64 1
  %i.cj = fmul <2 x float> %i.ci, zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h, %bb.d, %bb.a
  %i.ck = phi <2 x float> [ %i.ar, %bb.a ], [ %i.bu, %bb.f ], [ %i.cj, %bb.h ], [ %i.ar, %bb.g ], [ %i.be, %bb.d ]
  ret <2 x float> %i.ck
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

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
