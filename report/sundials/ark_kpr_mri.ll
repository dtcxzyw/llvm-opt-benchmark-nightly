Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_kpr_mri?download=true
inline.NumInlined: 115
inline.NumDeleted: 8
begin_hunk_0_@Jn:bb.a
  %i.ar = fmul double %0, %.val
  %i.as = tail call double @cos(double noundef %i.ar) #9
  %i.at = fadd double %i.as, 2.000000e+00
  %i.au = fdiv double %i.at, %i.af
  %i.av = fsub double -5.000000e-01, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store double %i.av, ptr %i.aw, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @Jf(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !11
  %i.o = fmul double %i.b, 5.000000e-01
  %i.p = tail call double @cos(double noundef %0) #9
  %i.q = fmul double %i.p, 5.000000e-01
  %i.r = fadd double %i.q, 1.000000e+00
  %i.s = fmul double %i.b, %i.r
  %i.t = fmul double %i.f, 2.000000e+00
  %i.u = fmul double %i.f, %i.t
  %i.v = fdiv double %i.s, %i.u
  %i.w = fadd double %i.o, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store double %i.w, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr i8, ptr %4, i64 8
  %.val = load double, ptr %i.y, align 8, !tbaa !11
  %i.z = fmul double %0, %.val
  %i.aa = tail call double @cos(double noundef %i.z) #9
  %i.ab = fadd double %i.aa, 2.000000e+00
  %i.ac = fmul double %i.h, 2.000000e+00
  %i.ad = fmul double %i.h, %i.ac
  %i.ae = fdiv double %i.ab, %i.ad
  %i.af = fsub double -5.000000e-01, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !11
  ret i32 0
}

declare ptr @ARKodeButcherTable_Alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ARKStepSetTables(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare ptr @ARKodeButcherTable_LoadERK(i32 noundef) local_unnamed_addr #3

declare void @ARKodeButcherTable_Free(ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @ARKodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @ARKodeSetOptions(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeCreateMRIStepInnerStepper(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @MRIStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fs(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #5 {
bb.a:
  %i.a = load double, ptr %3, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !11
  %i.d = load ptr, ptr %1, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = tail call double @cos(double noundef %0) #9
  %i.h = fmul double %i.g, 5.000000e-01
  %i.i = getelementptr i8, ptr %3, i64 8
  %.val = load double, ptr %i.i, align 8, !tbaa !11
  %i.j = fmul double %0, %.val
  %i.k = tail call double @cos(double noundef %i.j) #9
  %i.l = load <2 x double>, ptr %i.f, align 8, !tbaa !11 ; 3 uses
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.l, <2 x double> <double -1.000000e+00, double -2.000000e+00>)
  %i.n = insertelement <2 x double> poison, double %i.h, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.k, i64 1
  %i.p = fsub <2 x double> %i.m, %i.o
  %i.q = fmul <2 x double> %i.l, splat (double 2.000000e+00) ; 2 uses
  %i.r = fdiv <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 1
  %i.t = fmul double %i.c, %i.s
  %i.u = extractelement <2 x double> %i.r, i64 0
  %i.v = tail call double @llvm.fmuladd.f64(double %i.a, double %i.u, double %i.t)
  %i.w = tail call double @sin(double noundef %0) #9
  %i.x = fmul double %i.w, 5.000000e-01
  %i.y = extractelement <2 x double> %i.q, i64 0
  %i.z = fdiv double %i.x, %i.y
  %i.aa = fsub double %i.v, %i.z
  %i.ab = load ptr, ptr %2, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  store double %i.aa, ptr %i.ad, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @Js(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #5 {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !11  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %i.j = fmul double %i.a, 5.000000e-01
  %i.k = tail call double @cos(double noundef %0) #9
  %i.l = fmul double %i.k, 5.000000e-01
  %i.m = fadd double %i.l, 1.000000e+00
  %i.n = tail call double @sin(double noundef %0) #9
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = tail call double @llvm.fmuladd.f64(double %i.a, double %i.m, double %i.o)
  %i.q = fmul double %i.g, 2.000000e+00
  %i.r = fmul double %i.g, %i.q
  %i.s = fdiv double %i.p, %i.r
  %i.t = fadd double %i.j, %i.s
  %i.u = load ptr, ptr %3, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 2 uses
  store double %i.t, ptr %i.x, align 8, !tbaa !11
  %i.y = fmul double %i.c, 5.000000e-01
  %i.z = getelementptr i8, ptr %4, i64 8
  %.val = load double, ptr %i.z, align 8, !tbaa !11
  %i.aa = fmul double %0, %.val
  %i.ab = tail call double @cos(double noundef %i.aa) #9
  %i.ac = fadd double %i.ab, 2.000000e+00
  %i.ad = fmul double %i.c, %i.ac
  %i.ae = fmul double %i.i, 2.000000e+00
  %i.af = fmul double %i.i, %i.ae
  %i.ag = fdiv double %i.ad, %i.af
  %i.ah = fadd double %i.y, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22 ; 2 uses
  store double %i.ah, ptr %i.aj, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store double 0.000000e+00, ptr %i.al, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fse(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = load double, ptr %i.c, align 8, !tbaa !11
  %i.e = tail call double @sin(double noundef %0) #9
  %i.f = fmul double %i.e, -5.000000e-01
  %i.g = fmul double %i.d, 2.000000e+00
  %i.h = fdiv double %i.f, %i.g
  %i.i = load ptr, ptr %2, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  store double %i.h, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fsi(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #5 {
bb.a:
  %i.a = load double, ptr %3, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !11
  %i.d = load ptr, ptr %1, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = tail call double @cos(double noundef %0) #9
  %i.h = fmul double %i.g, 5.000000e-01
  %4 = load <2 x double>, ptr %i.f, align 8, !tbaa !11 ; 3 uses
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %4, <2 x double> <double -1.000000e+00, double -2.000000e+00>)
  %i.i = getelementptr i8, ptr %3, i64 8
  %.val = load double, ptr %i.i, align 8, !tbaa !11
  %i.j = fmul double %0, %.val
  %i.k = tail call double @cos(double noundef %i.j) #9
  %i.l = insertelement <2 x double> poison, double %i.h, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.k, i64 1
  %i.n = fsub <2 x double> %5, %i.m
  %i.o = fmul <2 x double> %4, splat (double 2.000000e+00)
  %i.p = fdiv <2 x double> %i.n, %i.o             ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 1
  %i.r = fmul double %i.c, %i.q
  %i.s = load ptr, ptr %2, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = extractelement <2 x double> %i.p, i64 0
  %i.w = tail call double @llvm.fmuladd.f64(double %i.a, double %i.v, double %i.r)
  %i.x = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.w, i64 0
  store <2 x double> %i.x, ptr %i.u, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @Jsi(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #5 {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !11  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %i.j = fmul double %i.a, 5.000000e-01
  %i.k = tail call double @cos(double noundef %0) #9
  %i.l = fmul double %i.k, 5.000000e-01
  %i.m = fadd double %i.l, 1.000000e+00
  %i.n = fmul double %i.a, %i.m
  %i.o = fmul double %i.g, 2.000000e+00
  %i.p = fmul double %i.g, %i.o
  %i.q = fdiv double %i.n, %i.p
  %i.r = fadd double %i.j, %i.q
  %i.s = load ptr, ptr %3, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  store double %i.r, ptr %i.v, align 8, !tbaa !11
  %i.w = fmul double %i.c, 5.000000e-01
  %i.x = getelementptr i8, ptr %4, i64 8
  %.val = load double, ptr %i.x, align 8, !tbaa !11
  %i.y = fmul double %0, %.val
  %i.z = tail call double @cos(double noundef %i.y) #9
  %i.aa = fadd double %i.z, 2.000000e+00
  %i.ab = fmul double %i.c, %i.aa
  %i.ac = fmul double %i.i, 2.000000e+00
  %i.ad = fmul double %i.i, %i.ac
  %i.ae = fdiv double %i.ab, %i.ad
  %i.af = fadd double %i.w, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  store double %i.af, ptr %i.ah, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !11
  ret i32 0
}

declare ptr @MRIStepCoupling_MIStoMRI(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @MRIStepCoupling_LoadTable(i32 noundef) local_unnamed_addr #3

declare i32 @MRIStepSetCoupling(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @MRIStepCoupling_Free(ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSetDeduceImplicitRhs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeGetNumRhsEvals(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeGetNonlinSolvStats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeGetNumJacEvals(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #3

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #3

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #3

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #3

declare i32 @MRIStepInnerStepper_Free(ptr noundef) local_unnamed_addr #3

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!13 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!14 = !{!"_generic_N_Vector", !9, i64 0, !13, i64 8, !12, i64 16}
!15 = !{!14, !9, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"p1 double", !9, i64 0}
!18 = !{!"_N_VectorContent_Serial", !16, i64 0, !6, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 16}
!20 = !{!"any p2 pointer", !9, i64 0}
!21 = !{!"p2 double", !20, i64 0}
!22 = !{!17, !17, i64 0}
!23 = !{!"p1 _ZTS22_generic_SUNMatrix_Ops", !9, i64 0}
!24 = !{!"_generic_SUNMatrix", !9, i64 0, !23, i64 8, !12, i64 16}
!25 = !{!24, !9, i64 0}
!26 = !{!"_SUNMatrixContent_Dense", !16, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !21, i64 32}
!27 = !{!26, !21, i64 32}
!28 = distinct !{null}
!29 = !{!9, !9, i64 0}
!30 = !{!"p1 _ZTS20_MRIStepInnerStepper", !9, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 omnipotent char", !9, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!12, !12, i64 0}
!37 = !{!"ARKodeButcherTableMem", !6, i64 0, !6, i64 4, !6, i64 8, !21, i64 16, !17, i64 24, !17, i64 32, !17, i64 40}
!38 = !{!37, !21, i64 16}
!39 = !{!37, !17, i64 32}
!40 = !{!37, !17, i64 40}
!41 = !{!37, !17, i64 24}
!42 = !{!37, !6, i64 0}
!43 = !{!37, !6, i64 4}
!44 = !{!6, !6, i64 0}
!45 = !{!16, !16, i64 0}
end_hunk_0
