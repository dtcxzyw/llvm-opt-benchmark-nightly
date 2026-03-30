begin_hunk_0
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8              ; 39 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #33 ; 39 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.b unwind label %bb.d
end_hunk_0
begin_hunk_1
  %i.ga = fmul float %i.fz, 2.000000e+00
  %i.gb = fmul float %i.fe, %i.fm
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fg, float %i.gb)
  %i.gd = fmul float %i.gc, 2.000000e+00
  %i.ge = fmul float %i.fc, %i.fi
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fg, float %i.ge)
  %i.gg = fmul float %i.gf, 2.000000e+00
  %i.gh = fmul float %i.fe, %i.fe
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.gh)
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float -2.000000e+00, float 1.000000e+00)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.h, i64 1044 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 1060 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 1076 ; 2 uses
  %i.gn = load <4 x float>, ptr %i.ai, align 4    ; 4 uses
  %i.go = load <4 x float>, ptr %i.gk, align 4    ; 4 uses
  %i.gp = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = fmul <4 x float> %i.go, %i.gq
  %i.gs = insertelement <4 x float> poison, float %i.fl, i64 0
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.gt, <4 x float> %i.gr)
  %i.gv = load <4 x float>, ptr %i.gl, align 4    ; 4 uses
  %i.gw = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %i.gx, <4 x float> %i.gu)
  %i.gz = load <4 x float>, ptr %i.gm, align 4    ; 4 uses
  %i.ha = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> zeroinitializer, <4 x float> %i.gy)
  store <4 x float> %i.ha, ptr %i.ai, align 4
  %i.hb = insertelement <4 x float> poison, float %i.fx, i64 0
  %4 = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer
  %5 = fmul <4 x float> %i.go, %4
  %i.hc = insertelement <4 x float> poison, float %i.fv, i64 0
  %6 = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %6, <4 x float> %5)
  %i.he = insertelement <4 x float> poison, float %i.ga, i64 0
  %7 = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %7, <4 x float> %i.hd)
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> zeroinitializer, <4 x float> %8)
  store <4 x float> %9, ptr %i.gk, align 4
  %i.hf = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = fmul <4 x float> %i.go, %i.hg
  %i.hi = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.hj, <4 x float> %i.hh)
  %i.hl = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %i.hm, <4 x float> %i.hk)
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> zeroinitializer, <4 x float> %i.hn)
  store <4 x float> %i.ho, ptr %i.gl, align 4
  %10 = fmul <4 x float> %i.go, zeroinitializer
  %11 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> zeroinitializer, <4 x float> %10)
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> zeroinitializer, <4 x float> %11)
  %13 = fadd <4 x float> %i.gz, %12
  store <4 x float> %13, ptr %i.gm, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.e
end_hunk_1
begin_hunk_2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
