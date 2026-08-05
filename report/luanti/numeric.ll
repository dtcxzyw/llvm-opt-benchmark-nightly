begin_hunk_0_@_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf:bb.a
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store float %.sroa.speculated, ptr %7, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = fcmp nsz ogt float %.sroa.speculated, %6
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = fcmp nsz oeq float %.sroa.speculated, 0.000000e+00
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = fpext nsz float %5 to double
  %i.aa = fsub nsz double f0x400921FB54442D18, %i.z
  %i.ab = fmul nsz double %i.aa, 5.000000e-01
  %i.ac = tail call nsz double @llvm.cos.f64(double %i.ab)
  %i.ad = fdiv nsz double f0x4061520CC0000000, %i.ac
  %i.ae = fptrunc nsz double %i.ad to float       ; 3 uses
  %.sroa.089.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 2 uses
  %i.af = fmul nsz float %.sroa.089.0.vec.extract, %i.ae
  %.sroa.089.4.vec.extract = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.ag = fmul nsz float %.sroa.089.4.vec.extract, %i.ae
  %i.ah = fmul nsz float %4, %i.ae
  %i.ai = fsub nsz float %i.af, %.sroa.096.0.vec.extract
  %i.aj = fadd nsz float %i.l, %i.ai              ; 3 uses
  %i.ak = fsub nsz float %i.ag, %.sroa.096.4.vec.extract
  %i.al = fadd nsz float %i.m, %i.ak              ; 3 uses
  %i.am = fsub nsz float %i.ah, %2
  %i.an = fadd nsz float %i.n, %i.am              ; 3 uses
  %i.ao = fmul nsz float %.sroa.089.4.vec.extract, %i.al
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %.sroa.089.0.vec.extract, float %i.ao)
  %i.aq = tail call nsz noundef float @llvm.fmuladd.f32(float %i.an, float %4, float %i.ap)
  %i.ar = fmul nsz float %i.al, %i.al
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ar)
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.as)
  %i.au = tail call nsz noundef float @llvm.sqrt.f32(float %i.at)
  %i.av = fdiv nsz float %i.aq, %i.au
  %i.aw = fmul nsz float %5, 5.500000e-01
  %i.ax = tail call nsz noundef float @llvm.cos.f32(float %i.aw)
  %i.ay = fcmp nsz uge float %i.av, %i.ax
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.1 = phi i1 [ %i.ay, %bb.e ], [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %0, float noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = sitofp nsz i16 %0 to float               ; 2 uses
  %i.b = fcmp nsz olt float %1, 1.000000e-03
  %i.c = fcmp nsz ogt float %1, f0x3F633333
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_Z10adjustDistff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fmul nsz float %1, 5.000000e-01
  %i.e = tail call nsz noundef float @llvm.cos.f32(float %i.d)
  %i.f = fsub nsz float 1.000000e+00, %i.e
  %i.g = fdiv nsz float f0x3EBCBF56, %i.f
  %i.h = tail call nsz noundef float @cbrtf(float noundef %i.g) #9
  %i.i = fmul nsz float %i.h, %i.a
  %i.j = tail call nsz float @llvm.round.f32(float %i.i)
  br label %_Z10adjustDistff.exit

_Z10adjustDistff.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.j, %bb.b ], [ %i.a, %bb.a ]
  %i.k = fptosi float %.0.i to i16
  ret i16 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z18setPitchYawRollRadRN4core8CMatrix4IfEENS_8vector3dIfEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 12), (16, 28), (32, 44)) %0, <2 x float> %1, float %2) local_unnamed_addr #4 {
bb.a:
  %i.a = fpext nsz float %2 to double
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.a) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0 ; 3 uses
  %cos = extractvalue { double, double } %sincos, 1 ; 3 uses
  %.sroa.045.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.b = fpext nsz float %.sroa.045.0.vec.extract to double
  %sincos46 = tail call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin47 = extractvalue { double, double } %sincos46, 0 ; 3 uses
  %cos48 = extractvalue { double, double } %sincos46, 1 ; 4 uses
  %.sroa.045.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.c = fpext nsz float %.sroa.045.4.vec.extract to double
  %sincos49 = tail call nsz { double, double } @llvm.sincos.f64(double %i.c) ; 2 uses
  %sin50 = extractvalue { double, double } %sincos49, 0 ; 5 uses
  %cos51 = extractvalue { double, double } %sincos49, 1 ; 5 uses
  %i.d = fmul nsz double %sin, %sin47
  %i.e = fmul nsz double %sin, %cos48
  %i.f = fneg nsz double %sin50
  %i.g = insertelement <2 x double> poison, double %cos, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = insertelement <2 x double> poison, double %cos51, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.k = fmul nsz <2 x double> %i.h, %i.j
  %i.l = insertelement <2 x double> poison, double %i.d, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = insertelement <2 x double> poison, double %sin50, i64 0
  %i.o = insertelement <2 x double> %i.n, double %cos51, i64 1
  %i.p = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.o, <2 x double> %i.k) ; 2 uses
  %i.q = insertelement <2 x double> %i.p, double %i.e, i64 1
  %i.r = fptrunc <2 x double> %i.q to <2 x float>
  store <2 x float> %i.r, ptr %0, align 4, !tbaa !12
  %i.s = extractelement <2 x double> %i.p, i64 1
  %i.t = fptrunc nsz double %i.s to float
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.t, ptr %i.u, align 4, !tbaa !12
  %i.v = fmul nsz double %cos, %sin47
  %i.w = fneg nsz double %cos51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = fmul nsz double %cos, %cos48
  %i.z = insertelement <2 x double> poison, double %sin, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %sin50, i64 1
  %i.ad = fmul nsz <2 x double> %i.aa, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.v, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x double> poison, double %sin50, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %cos51, i64 1
  %i.ai = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %i.ad) ; 2 uses
  %i.aj = insertelement <2 x double> %i.ai, double %i.y, i64 1
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  store <2 x float> %i.ak, ptr %i.x, align 4, !tbaa !12
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = fptrunc nsz double %i.al to float
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.am, ptr %i.an, align 4, !tbaa !12
  %i.ao = fmul nsz double %cos48, %sin50
  %i.ap = fptrunc nsz double %i.ao to float
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ap, ptr %i.aq, align 4, !tbaa !12
  %i.ar = fptrunc nsz double %sin47 to float
  %i.as = fneg nsz float %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.as, ptr %i.at, align 4, !tbaa !12
  %i.au = fmul nsz double %cos48, %cos51
  %i.av = fptrunc nsz double %i.au to float
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.av, ptr %i.aw, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_Z18getPitchYawRollRadRKN4core8CMatrix4IfEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !12
  %i.c = fpext nsz float %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !12
  %i.f = fpext nsz float %i.e to double
  %i.g = tail call nsz double @llvm.atan2.f64(double %i.c, double %i.f) ; 2 uses
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.g) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load float, ptr %i.h, align 4, !tbaa !12
  %i.j = fpext nsz float %i.i to double           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fpext nsz float %i.l to double           ; 2 uses
  %i.n = fmul nsz double %i.m, %i.m
  %i.o = tail call nsz double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.n)
  %i.p = tail call nsz double @llvm.sqrt.f64(double %i.o)
  %i.q = fptrunc nsz double %i.p to float
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = fneg nsz float %i.s
  %i.u = tail call nsz float @llvm.atan2.f32(float %i.t, float %i.q)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = load <4 x float>, ptr %0, align 4
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load <4 x float>, ptr %i.ab, align 4
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ae = insertelement <2 x float> %i.aa, float %i.w, i64 1
  %i.af = fpext <2 x float> %i.ae to <2 x double>
  %i.ag = insertelement <2 x float> %i.ad, float %i.y, i64 1
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  %i.ai = fneg nsz <2 x double> %i.ah
  %i.aj = insertelement <2 x double> poison, double %sin, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %cos, i64 1 ; 2 uses
  %i.al = fmul nsz <2 x double> %i.ak, %i.ai
  %i.am = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.af, <2 x double> %i.al) ; 2 uses
  %1 = extractelement <2 x double> %i.an, i64 1
  %2 = fptrunc nsz double %1 to float
  %3 = extractelement <2 x double> %i.an, i64 0
  %4 = fptrunc nsz double %3 to float
  %i.ao = tail call nsz float @llvm.atan2.f32(float %2, float %4)
  %i.ap = fptrunc nsz double %i.g to float
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.u, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ao, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ap, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_numeric.cpp() #8 section ".text.startup" {
bb.a:
  tail call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) @_ZL9g_pcgrand, i64 noundef -8846114313915602277, i64 noundef -2720673578348880933)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
end_hunk_0
