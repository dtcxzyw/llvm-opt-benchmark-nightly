begin_hunk_0
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8              ; 39 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #33 ; 42 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.b unwind label %bb.d
end_hunk_0
begin_hunk_1
  %i.ga = fmul float %i.fz, 2.000000e+00
  %i.gb = fmul float %i.fe, %i.fm
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fg, float %i.gb)
  %i.gd = fmul float %i.gc, 2.000000e+00          ; 3 uses
  %i.ge = fmul float %i.fc, %i.fi
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fg, float %i.ge)
  %i.gg = fmul float %i.gf, 2.000000e+00          ; 3 uses
  %i.gh = fmul float %i.fe, %i.fe
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.gh)
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.h, i64 1044 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 1060 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 1076
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 1068
  %5 = getelementptr inbounds nuw i8, ptr %i.h, i64 1072
  %6 = getelementptr inbounds nuw i8, ptr %i.h, i64 1088
  %i.gn = load <4 x float>, ptr %i.ai, align 4    ; 6 uses
  %i.go = load <4 x float>, ptr %i.gk, align 4    ; 6 uses
  %i.gp = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = fmul <4 x float> %i.go, %i.gq
  %i.gs = insertelement <4 x float> poison, float %i.fl, i64 0
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.gt, <4 x float> %i.gr)
  %i.gv = load <4 x float>, ptr %i.gl, align 4    ; 7 uses
  %i.gw = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %i.gx, <4 x float> %i.gu)
  %i.gz = load <4 x float>, ptr %i.gm, align 4    ; 7 uses
  %i.ha = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> zeroinitializer, <4 x float> %i.gy)
  %7 = extractelement <4 x float> %i.go, i64 2
  %8 = fmul float %i.gg, %7
  %9 = extractelement <4 x float> %i.gn, i64 2
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %i.gd, float %8)
  %11 = extractelement <4 x float> %i.gv, i64 2
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %i.gj, float %10)
  %13 = extractelement <4 x float> %i.gz, i64 2
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 0.000000e+00, float %12)
  %15 = extractelement <4 x float> %i.go, i64 3   ; 2 uses
  %16 = fmul float %i.gg, %15
  %17 = extractelement <4 x float> %i.gn, i64 3   ; 2 uses
  %18 = extractelement <4 x float> %i.gv, i64 3
  %19 = extractelement <4 x float> %i.gz, i64 3
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %i.gd, float %16)
  %i.hb = insertelement <4 x float> %i.go, float %20, i64 3
  %21 = fmul <4 x float> %i.hb, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %22 = shufflevector <4 x float> %i.gn, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hc = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.gj, i64 3
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %i.hc, <4 x float> %21)
  %24 = shufflevector <4 x float> %i.gv, <4 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %24, <4 x float> zeroinitializer, <4 x float> %23)
  %i.he = insertelement <4 x float> %i.gz, float -0.000000e+00, i64 3
  %25 = fadd <4 x float> %i.he, %i.hd
  %26 = fmul float %15, 0.000000e+00
  %27 = tail call float @llvm.fmuladd.f32(float %17, float 0.000000e+00, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %18, float 0.000000e+00, float %27)
  %29 = fadd float %19, %28
  %30 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x float> %i.ha, ptr %i.ai, align 4
  %i.hf = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = fmul <4 x float> %i.go, %i.hg
  %i.hi = insertelement <4 x float> poison, float %i.fv, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.hj, <4 x float> %i.hh)
  %i.hl = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %i.hm, <4 x float> %i.hk)
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> zeroinitializer, <4 x float> %i.hn)
  store <4 x float> %i.ho, ptr %i.gk, align 4
  %31 = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %32 = insertelement <2 x float> poison, float %i.gg, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = fmul <2 x float> %31, %33
  %35 = shufflevector <4 x float> %i.gn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %36 = insertelement <2 x float> poison, float %i.gd, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %37, <2 x float> %34)
  %39 = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %40 = insertelement <2 x float> poison, float %i.gj, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %41, <2 x float> %38)
  %43 = shufflevector <4 x float> %i.gz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> zeroinitializer, <2 x float> %42)
  store <2 x float> %44, ptr %i.gl, align 4
  store float %14, ptr %4, align 4
  store <4 x float> %30, ptr %5, align 4
  store float %29, ptr %6, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.e
end_hunk_1
begin_hunk_2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
