inline.NumInlined: 38
inline.NumDeleted: 12
begin_hunk_0_@_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE:bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !7
  %i.a = load <2 x double>, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.b = fcmp olt <2 x double> %i.a, <double 0x3FF000010C6F7A0B, double 0x3EB0C6F7A0B5ED8D>
  %i.c = select <2 x i1> %i.b, <2 x double> <double 0x3FF000010C6F7A0B, double 0x3EB0C6F7A0B5ED8D>, <2 x double> %i.a ; 3 uses
  %i.d = extractelement <2 x double> %i.c, i64 0  ; 6 uses
  %i.e = fdiv double 1.000000e+00, %i.d
  %i.f = extractelement <2 x double> %i.c, i64 1  ; 3 uses
  %2 = fmul double %i.d, %i.f
  %3 = fadd double %i.d, -1.000000e+00            ; 3 uses
  %4 = fadd double %i.f, 1.000000e+00             ; 3 uses
  %i.g = fmul double %3, %4
  %i.h = fdiv double %2, %i.g
  %i.i = tail call noundef double @pow(double noundef %i.h, double noundef %i.d) #2, !tbaa !3
  %5 = fdiv double %3, %i.f
  %6 = fdiv double %4, %i.d
  %i.j = tail call double @pow(double noundef %5, double noundef %3) #2, !tbaa !3
  %i.k = tail call double @pow(double noundef %6, double noundef %i.d) #2, !tbaa !3
  %i.l = fmul double %i.j, %i.k
  %i.m = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.n = insertelement <4 x double> %i.m, double %i.e, i64 0
end_hunk_0
