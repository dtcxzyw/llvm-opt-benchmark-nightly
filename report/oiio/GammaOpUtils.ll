inline.NumInlined: 38
inline.NumDeleted: 12
begin_hunk_0_@_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE:bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !7
  %i.a = load <2 x double>, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.b = fcmp olt <2 x double> %i.a, <double 0x3FF000010C6F7A0B, double 0x3EB0C6F7A0B5ED8D>
  %i.c = select <2 x i1> %i.b, <2 x double> <double 0x3FF000010C6F7A0B, double 0x3EB0C6F7A0B5ED8D>, <2 x double> %i.a ; 4 uses
  %i.d = extractelement <2 x double> %i.c, i64 0  ; 5 uses
  %i.e = fdiv double 1.000000e+00, %i.d
  %i.f = extractelement <2 x double> %i.c, i64 1  ; 2 uses
  %i.g = fmul double %i.d, %i.f
  %2 = fadd <2 x double> %i.c, <double -1.000000e+00, double 1.000000e+00> ; 2 uses
  %3 = extractelement <2 x double> %2, i64 0      ; 3 uses
  %4 = extractelement <2 x double> %2, i64 1      ; 3 uses
  %i.h = fmul double %3, %4
  %i.i = fdiv double %i.g, %i.h
  %i.j = tail call noundef double @pow(double noundef %i.i, double noundef %i.d) #2, !tbaa !3
  %i.k = fdiv double %3, %i.f
  %i.l = fdiv double %4, %i.d
  %i.m = tail call double @pow(double noundef %i.k, double noundef %3) #2, !tbaa !3
  %i.n = tail call double @pow(double noundef %i.l, double noundef %i.d) #2, !tbaa !3
  %i.o = fmul double %i.m, %i.n
  %i.p = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE:bb.a
  %i.s = insertelement <4 x double> %i.r, double %i.o, i64 3
  %i.t = fptrunc <4 x double> %i.s to <4 x float>
  store <4 x float> %i.t, ptr %1, align 4, !tbaa !13
  %i.u = fptrunc double %4 to float
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.u, ptr %i.v, align 4, !tbaa !15
  ret void
end_hunk_1
