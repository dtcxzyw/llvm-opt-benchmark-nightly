begin_hunk_0_@main:bb.a
  store double 1.000000e+00, ptr @scale, align 8, !tbaa !8
  %puts36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.a = load double, ptr @one, align 8, !tbaa !8 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.b = uitofp nneg i64 %.039 to double
  %i.c = fmul nnan double %i.b, 0x3EA5F9C4FF20F589 ; 5 uses
  %i.d = fmul nnan double %i.c, %i.c              ; 3 uses
  %0 = fadd double %i.a, %i.c
  %1 = fdiv double %i.a, %0
  %2 = fsub double %.03538, %1
  %3 = fadd double %i.a, %i.d
  %4 = fdiv double %i.c, %3
  %i.e = fsub double %2, %4
  %i.f = tail call double @llvm.fmuladd.f64(double %i.c, double %i.d, double %i.a)
  %i.g = fdiv double %i.d, %i.f
  %i.h = fsub double %i.e, %i.g                   ; 2 uses
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.k = fadd double %i.a, 0x40599541F7F192A4
  %i.l = fdiv double %i.a, %i.k
  %i.m = fsub double %i.j, %i.l
  %5 = insertelement <2 x double> poison, double %i.a, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fadd <2 x double> %6, <double 0x40C473EF42466D8C, double 0x413059F8E7CAE1C6>
  %i.o = fdiv <2 x double> <double 0x40599541F7F192A4, double 0x40C473EF42466D8C>, %i.n ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = fsub double %i.m, %i.p
end_hunk_2
