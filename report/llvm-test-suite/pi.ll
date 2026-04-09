inline.NumInlined: 1
begin_hunk_0_@main:bb.a
  %.03536 = phi float [ 0.000000e+00, %bb.a ], [ %i.k, %bb.b ]
  %i.a = mul nuw nsw i64 %.02938, 27611
  %i.b = urem i64 %i.a, 74383                     ; 2 uses
  %2 = uitofp nneg i64 %i.b to float
  %3 = fdiv float %2, 7.438300e+04                ; 3 uses
  %i.c = fmul float %.040, 1.307000e+03           ; 2 uses
  %i.d = fdiv float %i.c, 5.471000e+03
  %i.e = fptosi float %i.d to i64
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.g = tail call float @llvm.fmuladd.f32(float %i.f, float -5.471000e+03, float %i.c) ; 2 uses
  %i.h = fdiv float %i.g, 5.471000e+03            ; 3 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %3, float %3, float %i.i) ; 2 uses
  %i.k = fadd float %.03536, %i.j                 ; 2 uses
  %i.l = fcmp ole float %i.j, 1.000000e+00
  %i.m = zext i1 %i.l to i64
end_hunk_1
begin_hunk_2_@main:bb.a
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.o = fpext float %3 to double
  %i.p = fpext float %i.h to double
  %i.q = trunc i64 %.1 to i32
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.o, double noundef %i.p, i32 noundef %i.q, i32 noundef 40000001) ; 0 uses
end_hunk_2
