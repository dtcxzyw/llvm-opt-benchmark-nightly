inline.NumInlined: 1001
inline.NumDeleted: 156
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: write, errnomem: write) uwtable
define internal fastcc void @_ZL9init_dataIfEvPT_S1_S1_(ptr noundef nonnull writeonly captures(none) %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %3 = alloca %"class.std::mersenne_twister_engine", align 8 ; 39 uses
end_hunk_0
begin_hunk_1_@_ZL9init_dataIfEvPT_S1_S1_:bb.a
  br i1 %.not.i.i.i.i, label %bb.f, label %select.unfold.i.i.i.i, !llvm.loop !65

bb.g:                                             ; preds = %bb.f
  %4 = tail call noundef float @nextafterf(float noundef 1.000000e+00, float noundef 0.000000e+00) #11, !tbaa !4
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit: ; preds = %bb.f, %bb.g
  %.016.i.i.i.i = phi float [ %4, %bb.g ], [ %i.ah, %bb.f ]
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %.016.i.i.i.i, float 2.000000e+02, float -1.000000e+02)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.dd, ptr %i.de, align 4, !tbaa !38
end_hunk_1
begin_hunk_2_@_ZL9init_dataIfEvPT_S1_S1_:bb.a
  br i1 %.not.i.i.i.i12, label %bb.h, label %select.unfold.i.i.i.i8, !llvm.loop !65

bb.i:                                             ; preds = %bb.h
  %5 = tail call noundef float @nextafterf(float noundef 1.000000e+00, float noundef 0.000000e+00) #11, !tbaa !4
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit14: ; preds = %bb.h, %bb.i
  %.016.i.i.i.i13 = phi float [ %5, %bb.i ], [ %i.df, %bb.h ]
  %i.gb = tail call noundef float @llvm.fmuladd.f32(float %.016.i.i.i.i13, float 2.000000e+02, float -1.000000e+02)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.gb, ptr %i.gc, align 4, !tbaa !38
end_hunk_2
begin_hunk_3_@_ZL9init_dataIfEvPT_S1_S1_:bb.a
  br i1 %.not.i.i.i.i20, label %bb.j, label %select.unfold.i.i.i.i16, !llvm.loop !65

bb.k:                                             ; preds = %bb.j
  %6 = tail call noundef float @nextafterf(float noundef 1.000000e+00, float noundef 0.000000e+00) #11, !tbaa !4
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit22: ; preds = %bb.j, %bb.k
  %.016.i.i.i.i21 = phi float [ %6, %bb.k ], [ %i.gd, %bb.j ]
  %i.iz = tail call noundef float @llvm.fmuladd.f32(float %.016.i.i.i.i21, float 2.000000e+02, float -1.000000e+02)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.iz, ptr %i.ja, align 4, !tbaa !38
end_hunk_3
begin_hunk_4_@_ZL9init_dataIfEvPT_S1_S1_:bb.a
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare float @nextafterf(float noundef, float noundef) local_unnamed_addr #2

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0
end_hunk_4
begin_hunk_5_@_ZN9benchmark5State17FinishKeepRunningEv
; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind memory(argmem: write, errnomem: write) uwtable
define internal fastcc void @_ZL9init_dataIdEvPT_S1_S1_(ptr noundef nonnull writeonly captures(none) %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %3 = alloca %"class.std::mersenne_twister_engine", align 8 ; 39 uses
end_hunk_5
begin_hunk_6_@_ZL9init_dataIdEvPT_S1_S1_:bb.a
  br i1 %.not.i.i.i.i, label %bb.f, label %select.unfold.i.i.i.i, !llvm.loop !73

bb.g:                                             ; preds = %bb.f
  %4 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #11, !tbaa !4
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit: ; preds = %bb.f, %bb.g
  %.016.i.i.i.i = phi double [ %4, %bb.g ], [ %i.ah, %bb.f ]
  %i.df = tail call noundef double @llvm.fmuladd.f64(double %.016.i.i.i.i, double 2.000000e+02, double -1.000000e+02)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store double %i.df, ptr %i.dg, align 8, !tbaa !51
end_hunk_6
begin_hunk_7_@_ZL9init_dataIdEvPT_S1_S1_:bb.a
  br i1 %.not.i.i.i.i12, label %bb.h, label %select.unfold.i.i.i.i8, !llvm.loop !73

bb.i:                                             ; preds = %bb.h
  %5 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #11, !tbaa !4
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit14: ; preds = %bb.h, %bb.i
  %.016.i.i.i.i13 = phi double [ %5, %bb.i ], [ %i.dh, %bb.h ]
  %i.gf = tail call noundef double @llvm.fmuladd.f64(double %.016.i.i.i.i13, double 2.000000e+02, double -1.000000e+02)
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.gf, ptr %i.gg, align 8, !tbaa !51
end_hunk_7
begin_hunk_8_@_ZL9init_dataIdEvPT_S1_S1_:bb.a
  br i1 %.not.i.i.i.i20, label %bb.j, label %select.unfold.i.i.i.i16, !llvm.loop !73

bb.k:                                             ; preds = %bb.j
  %6 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #11, !tbaa !4
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit22: ; preds = %bb.j, %bb.k
  %.016.i.i.i.i21 = phi double [ %6, %bb.k ], [ %i.gh, %bb.j ]
  %i.jf = tail call noundef double @llvm.fmuladd.f64(double %.016.i.i.i.i21, double 2.000000e+02, double -1.000000e+02)
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.jf, ptr %i.jg, align 8, !tbaa !51
end_hunk_8
begin_hunk_9_@_ZL9init_dataIdEvPT_S1_S1_:bb.a
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MathFunctions.cpp() #10 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_9
begin_hunk_10_@llvm.umax.i64
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
end_hunk_10
