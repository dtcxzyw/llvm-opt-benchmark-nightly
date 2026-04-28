inline.NumInlined: 5677
inline.NumDeleted: 1666
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffPNS0_8Filter2DEbNS0_3ROIEi:bb.a
  %i.i = fadd float %i.h, 0.000000e+00            ; 3 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.e)
  %i.k = fadd float %i.j, 1.000000e+00            ; 3 uses
  %10 = tail call noundef float @llvm.cos.f32(float %2) ; 6 uses
  %11 = tail call noundef float @llvm.sin.f32(float %2) ; 5 uses
  %i.l = fneg float %11                           ; 2 uses
  %i.m = fmul ninf float %11, 0.000000e+00
  %i.n = fsub float %10, %i.m
  %i.o = fadd float %i.n, 0.000000e+00            ; 3 uses
  %i.p = fmul ninf float %10, 0.000000e+00
  %i.q = fadd float %11, %i.p
  %i.r = fadd float %i.q, 0.000000e+00            ; 2 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %10, float 0.000000e+00, float %i.l)
  %i.t = fadd float %i.s, 0.000000e+00            ; 3 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %11, float 0.000000e+00, float %10)
  %i.v = fadd float %i.u, 0.000000e+00            ; 2 uses
  %i.w = fmul float %i.i, %i.l
  %i.x = tail call float @llvm.fmuladd.f32(float %i.g, float %10, float %i.w)
  %i.y = fmul float %10, %i.i
  %i.z = tail call float @llvm.fmuladd.f32(float %i.g, float %11, float %i.y)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.z) ; 2 uses
  %i.ab = fmul float %i.i, 0.000000e+00
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %i.ab)
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi:bb.a
  %i.k = fadd float %i.j, 0.000000e+00            ; 3 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.e, float 0.000000e+00, float %i.g)
  %i.m = fadd float %i.l, 1.000000e+00            ; 3 uses
  %20 = tail call noundef float @llvm.cos.f32(float %2) ; 6 uses
  %21 = tail call noundef float @llvm.sin.f32(float %2) ; 5 uses
  %i.n = fneg float %21                           ; 2 uses
  %i.o = fmul ninf float %21, 0.000000e+00
  %i.p = fsub float %20, %i.o
  %i.q = fadd float %i.p, 0.000000e+00            ; 3 uses
  %i.r = fmul ninf float %20, 0.000000e+00
  %i.s = fadd float %21, %i.r
  %i.t = fadd float %i.s, 0.000000e+00            ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %20, float 0.000000e+00, float %i.n)
  %i.v = fadd float %i.u, 0.000000e+00            ; 3 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %21, float 0.000000e+00, float %20)
  %i.x = fadd float %i.w, 0.000000e+00            ; 2 uses
  %i.y = fmul float %i.k, %i.n
  %i.z = tail call float @llvm.fmuladd.f32(float %i.i, float %20, float %i.y)
  %i.aa = fmul float %20, %i.k
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.i, float %21, float %i.aa)
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.ab) ; 2 uses
  %i.ad = fmul float %i.k, 0.000000e+00
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %i.ad)
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fPNS0_8Filter2DEbNS0_3ROIEi:bb.a
  %i.v = fadd float %i.u, 0.000000e+00            ; 3 uses
  %i.w = call float @llvm.fmuladd.f32(float %i.p, float 0.000000e+00, float %i.r)
  %i.x = fadd float %i.w, 1.000000e+00            ; 3 uses
  %9 = call noundef float @llvm.cos.f32(float %2) ; 6 uses
  %10 = call noundef float @llvm.sin.f32(float %2) ; 5 uses
  %i.y = fneg float %10                           ; 2 uses
  %i.z = fmul ninf float %10, 0.000000e+00
  %i.aa = fsub float %9, %i.z
  %i.ab = fadd float %i.aa, 0.000000e+00          ; 3 uses
  %i.ac = fmul ninf float %9, 0.000000e+00
  %i.ad = fadd float %10, %i.ac
  %i.ae = fadd float %i.ad, 0.000000e+00          ; 2 uses
  %i.af = call float @llvm.fmuladd.f32(float %9, float 0.000000e+00, float %i.y)
  %i.ag = fadd float %i.af, 0.000000e+00          ; 3 uses
  %i.ah = call float @llvm.fmuladd.f32(float %10, float 0.000000e+00, float %9)
  %i.ai = fadd float %i.ah, 0.000000e+00          ; 2 uses
  %i.aj = fmul float %i.v, %i.y
  %i.ak = call float @llvm.fmuladd.f32(float %i.t, float %9, float %i.aj)
  %i.al = fmul float %9, %i.v
  %i.am = call float @llvm.fmuladd.f32(float %i.t, float %10, float %i.al)
  %i.an = call float @llvm.fmuladd.f32(float %i.x, float 0.000000e+00, float %i.am) ; 2 uses
  %i.ao = fmul float %i.v, 0.000000e+00
  %i.ap = call float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %i.ao)
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERKNS0_8ImageBufEfffPNS0_8Filter2DEbNS0_3ROIEi:bb.a
  %i.i = fadd float %i.h, 0.000000e+00            ; 3 uses
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float 0.000000e+00, float %i.e)
  %i.k = fadd float %i.j, 1.000000e+00            ; 3 uses
  %10 = tail call noundef float @llvm.cos.f32(float %2) ; 6 uses
  %11 = tail call noundef float @llvm.sin.f32(float %2) ; 5 uses
  %i.l = fneg float %11                           ; 2 uses
  %i.m = fmul ninf float %11, 0.000000e+00
  %i.n = fsub float %10, %i.m
  %i.o = fadd float %i.n, 0.000000e+00            ; 3 uses
  %i.p = fmul ninf float %10, 0.000000e+00
  %i.q = fadd float %11, %i.p
  %i.r = fadd float %i.q, 0.000000e+00            ; 2 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %10, float 0.000000e+00, float %i.l)
  %i.t = fadd float %i.s, 0.000000e+00            ; 3 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %11, float 0.000000e+00, float %10)
  %i.v = fadd float %i.u, 0.000000e+00            ; 2 uses
  %i.w = fmul float %i.i, %i.l
  %i.x = tail call float @llvm.fmuladd.f32(float %i.g, float %10, float %i.w)
  %i.y = fmul float %10, %i.i
  %i.z = tail call float @llvm.fmuladd.f32(float %i.g, float %11, float %i.y)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.z) ; 2 uses
  %i.ab = fmul float %i.i, 0.000000e+00
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.g, float 0.000000e+00, float %i.ab)
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv
; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39), ptr, i64, i32 noundef, ptr, i64, i8, i8) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_4
begin_hunk_5_@llvm.ctlz.i128
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #10

end_hunk_5
