inline.NumInlined: 38
inline.NumDeleted: 12
begin_hunk_0_@_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE:bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !7
  %i.a = load <2 x double>, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.b = fcmp olt <2 x double> %i.a, <double 0x3FF000010C6F7A0B, double 0x3EB0C6F7A0B5ED8D>
  %i.c = select <2 x i1> %i.b, <2 x double> <double 0x3FF000010C6F7A0B, double 0x3EB0C6F7A0B5ED8D>, <2 x double> %i.a ; 6 uses
  %i.d = extractelement <2 x double> %i.c, i64 0  ; 3 uses
  %i.e = fdiv double 1.000000e+00, %i.d
  %shift = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.c, %shift
  %i.f = extractelement <2 x double> %foldExtExtBinop, i64 0
  %2 = fadd <2 x double> %i.c, <double -1.000000e+00, double 1.000000e+00> ; 3 uses
  %3 = extractelement <2 x double> %2, i64 0      ; 2 uses
  %4 = extractelement <2 x double> %2, i64 1      ; 2 uses
  %i.g = fmul double %3, %4
  %i.h = fdiv double %i.f, %i.g
  %i.i = tail call noundef double @pow(double noundef %i.h, double noundef %i.d) #2, !tbaa !3
  %5 = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %6 = fdiv <2 x double> %2, %5                   ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0
  %i.j = tail call double @pow(double noundef %7, double noundef %3) #2, !tbaa !3
  %8 = extractelement <2 x double> %6, i64 1
  %i.k = tail call double @pow(double noundef %8, double noundef %i.d) #2, !tbaa !3
  %i.l = fmul double %i.j, %i.k
  %i.m = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.n = insertelement <4 x double> %i.m, double %i.e, i64 0
end_hunk_0
