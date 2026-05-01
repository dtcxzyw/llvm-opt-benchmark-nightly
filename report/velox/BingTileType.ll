inline.NumInlined: 602
inline.NumDeleted: 219
begin_hunk_0_@_ZN8facebook5velox12BingTileType15bingTilesAroundB5cxx11Eddhd:bb.a
; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN8facebook5velox12BingTileType19greatCircleDistanceEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = insertelement <2 x double> poison, double %0, i64 0
  %5 = insertelement <2 x double> %4, double %2, i64 1
  %6 = fmul <2 x double> %5, splat (double 0x400921FB54442D18)
  %i.a = insertelement <2 x double> poison, double %1, i64 0
  %i.b = insertelement <2 x double> %i.a, double %3, i64 1
  %i.c = fmul <2 x double> %i.b, splat (double 0x400921FB54442D18)
  %7 = fdiv <2 x double> %6, splat (double 1.800000e+02) ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0      ; 2 uses
  %9 = tail call double @sin(double noundef %8) #19, !tbaa !3 ; 2 uses
  %10 = tail call double @cos(double noundef %8) #19, !tbaa !3 ; 2 uses
  %11 = extractelement <2 x double> %7, i64 1     ; 2 uses
  %i.d = tail call double @sin(double noundef %11) #19, !tbaa !3 ; 2 uses
  %i.e = tail call double @cos(double noundef %11) #19, !tbaa !3 ; 3 uses
  %i.f = fdiv <2 x double> %i.c, splat (double 1.800000e+02) ; 2 uses
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.f, %shift
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12BingTileType19greatCircleDistanceEdddd:bb.a
  %i.h = tail call double @cos(double noundef %i.g) #19, !tbaa !3 ; 2 uses
  %i.i = tail call double @sin(double noundef %i.g) #19, !tbaa !3
  %i.j = fmul double %i.e, %i.i                   ; 2 uses
  %i.k = fmul double %10, %i.d
  %i.l = fmul double %9, %i.e
  %i.m = fmul double %i.h, %i.l
  %i.n = fsub double %i.k, %i.m                   ; 2 uses
  %i.o = fmul double %9, %i.d
  %i.p = fmul double %10, %i.e
  %i.q = fmul double %i.h, %i.p
  %i.r = fadd double %i.o, %i.q
  %i.s = fmul double %i.j, %i.j
end_hunk_1
