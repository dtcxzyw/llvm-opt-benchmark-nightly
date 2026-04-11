inline.NumInlined: 371
inline.NumDeleted: 99
begin_hunk_0_@_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff
define noalias noundef ptr @_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr noundef readonly captures(none) dead_on_return %0, float noundef %1, float noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp ugt float %2, 0.000000e+00
  %.036 = select i1 %i.a, float %2, float %1      ; 16 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 19 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff:bb.a
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.n = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #14 ; 3 uses
  %3 = insertelement <2 x float> poison, float %1, i64 0
  %4 = insertelement <2 x float> %3, float %.036, i64 1 ; 2 uses
  %5 = fcmp ogt <2 x float> %4, zeroinitializer
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %6 = select <2 x i1> %5, <2 x float> %4, <2 x float> splat (float 1.000000e+00)
  store <2 x float> %6, ptr %i.o, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_111FilterBox2DE, i64 16), ptr %i.n, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff:bb.a
  br i1 %.not.i.i115, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit117, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit117: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i113
  %i.cx = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #14 ; 3 uses
  %7 = insertelement <2 x float> poison, float %1, i64 0
  %8 = insertelement <2 x float> %7, float %.036, i64 1 ; 2 uses
  %9 = fcmp ogt <2 x float> %8, zeroinitializer
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %10 = select <2 x i1> %9, <2 x float> %8, <2 x float> splat (float 1.000000e+00)
  store <2 x float> %10, ptr %i.cy, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_112FilterDisk2DE, i64 16), ptr %i.cx, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff:bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_113FilterCubic2DE, i64 16), ptr %i.cz, align 8, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store float 0.000000e+00, ptr %i.de, align 8, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.dg = select <2 x i1> %i.dc, <2 x float> %i.db, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.dg, ptr %i.dd, align 8, !tbaa !11
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff:bb.a
  %i.dl = fcmp ogt <2 x float> %i.dk, zeroinitializer
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store float -5.000000e-01, ptr %i.dn, align 8, !tbaa !66
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dp = select <2 x i1> %i.dl, <2 x float> %i.dk, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.dp, ptr %i.dm, align 8, !tbaa !11
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff:bb.a
  %i.du = fcmp ogt <2 x float> %i.dt, zeroinitializer
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store float -7.500000e-01, ptr %i.dw, align 8, !tbaa !66
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.dy = select <2 x i1> %i.du, <2 x float> %i.dt, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.dy, ptr %i.dv, align 8, !tbaa !11
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff:bb.a
  %i.ed = fcmp ogt <2 x float> %i.ec, zeroinitializer
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store float -1.000000e+00, ptr %i.ef, align 8, !tbaa !66
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.eh = select <2 x i1> %i.ed, <2 x float> %i.ec, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.eh, ptr %i.ee, align 8, !tbaa !11
end_hunk_6
begin_hunk_7_@_ZNK11OpenImageIO4v3_111FilterBox2DclEff:bb.a
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !69
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fcmp ugt float %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.b
end_hunk_7
begin_hunk_8_@_ZNK11OpenImageIO4v3_111FilterBox2DclEff:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = tail call float @llvm.fabs.f32(float %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !70
  %i.i = fmul float %i.h, 5.000000e-01
  %i.j = fcmp ole float %i.f, %i.i
  %i.k = select i1 %i.j, float 1.000000e+00, float 0.000000e+00
end_hunk_8
begin_hunk_9_@_ZNK11OpenImageIO4v3_111FilterBox2D5xfiltEf:bb.a
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !69
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fcmp ole float %i.a, %i.d
  %i.f = select i1 %i.e, float 1.000000e+00, float 0.000000e+00
end_hunk_9
begin_hunk_10_@_ZNK11OpenImageIO4v3_111FilterBox2D5yfiltEf:bb.a
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !70
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fcmp ole float %i.a, %i.d
  %i.f = select i1 %i.e, float 1.000000e+00, float 0.000000e+00
end_hunk_10
begin_hunk_11_@_ZNK11OpenImageIO4v3_112FilterDisk2DclEff
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_112FilterDisk2DclEff(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !69
  %i.c = fmul float %i.b, 5.000000e-01
  %i.d = fdiv float %1, %i.c                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !70
  %i.g = fmul float %i.f, 5.000000e-01
  %i.h = fdiv float %2, %i.g                      ; 2 uses
  %i.i = fmul float %i.h, %i.h
end_hunk_11
begin_hunk_12_@_ZNK11OpenImageIO4v3_113FilterCubic2DclEff:bb.a
  %i.b = load float, ptr %i.a, align 4, !tbaa !101
  %i.c = fmul float %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load float, ptr %i.d, align 8, !tbaa !66 ; 6 uses
  %i.f = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.000000e+00
  br i1 %i.g, label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit, label %bb.b
end_hunk_12
begin_hunk_13_@_ZNK11OpenImageIO4v3_113FilterCubic2D5xfiltEf:bb.a
  %i.b = load float, ptr %i.a, align 4, !tbaa !101
  %i.c = fmul float %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load float, ptr %i.d, align 8, !tbaa !66 ; 3 uses
  %i.f = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.000000e+00
  br i1 %i.g, label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit, label %bb.b
end_hunk_13
begin_hunk_14_@_ZNK11OpenImageIO4v3_113FilterCubic2D5yfiltEf:bb.a
  %i.b = load float, ptr %i.a, align 8, !tbaa !102
  %i.c = fmul float %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load float, ptr %i.d, align 8, !tbaa !66 ; 3 uses
  %i.f = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.000000e+00
  br i1 %i.g, label %_ZN11OpenImageIO4v3_113FilterCubic1D5cubicEff.exit, label %bb.b
end_hunk_14
begin_hunk_15_@llvm.fabs.v2f32
!63 = !{!"_ZTSSt14_Sp_ebo_helperILi0EPFvPN11OpenImageIO4v3_18Filter2DEELb0EE", !10, i64 0}
!64 = !{!65, !60, i64 8}
!65 = !{!"_ZTSNSt19_Sp_counted_deleterIPN11OpenImageIO4v3_18Filter2DEPFvS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !63, i64 0, !60, i64 8}
!66 = !{!67, !12, i64 16}
!67 = !{!"_ZTSN11OpenImageIO4v3_113FilterCubic2DE", !68, i64 0, !12, i64 16, !12, i64 20, !12, i64 24}
!68 = !{!"_ZTSN11OpenImageIO4v3_18Filter2DE", !12, i64 8, !12, i64 12}
!69 = !{!68, !12, i64 8}
!70 = !{!68, !12, i64 12}
!71 = !{!72, !12, i64 16}
!72 = !{!"_ZTSN11OpenImageIO4v3_116FilterTriangle2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!73 = !{!72, !12, i64 20}
!74 = !{!75, !12, i64 16}
!75 = !{!"_ZTSN11OpenImageIO4v3_116FilterGaussian2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!76 = !{!75, !12, i64 20}
!77 = !{!78, !12, i64 16}
!78 = !{!"_ZTSN11OpenImageIO4v3_121FilterSharpGaussian2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!79 = !{!78, !12, i64 20}
!80 = !{!81, !12, i64 16}
!81 = !{!"_ZTSN11OpenImageIO4v3_118FilterCatmullRom2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!82 = !{!81, !12, i64 20}
!83 = !{!84, !12, i64 16}
!84 = !{!"_ZTSN11OpenImageIO4v3_122FilterBlackmanHarris2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!85 = !{!84, !12, i64 20}
!86 = !{!87, !12, i64 16}
!87 = !{!"_ZTSN11OpenImageIO4v3_112FilterSinc2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!88 = !{!87, !12, i64 20}
!89 = !{!90, !12, i64 16}
!90 = !{!"_ZTSN11OpenImageIO4v3_117FilterLanczos3_2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!91 = !{!90, !12, i64 20}
!92 = !{!93, !12, i64 16}
!93 = !{!"_ZTSN11OpenImageIO4v3_123FilterRadialLanczos3_2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!94 = !{!93, !12, i64 20}
!95 = !{!96, !12, i64 16}
!96 = !{!"_ZTSN11OpenImageIO4v3_116FilterMitchell2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!97 = !{!96, !12, i64 20}
!98 = !{!99, !12, i64 16}
!99 = !{!"_ZTSN11OpenImageIO4v3_115FilterBSpline2DE", !68, i64 0, !12, i64 16, !12, i64 20}
!100 = !{!99, !12, i64 20}
!101 = !{!67, !12, i64 20}
!102 = !{!67, !12, i64 24}
!103 = !{!10, !10, i64 0}
!104 = !{!105, !21, i64 24}
!105 = !{!"_ZTSSt19_Sp_counted_deleterIPN11OpenImageIO4v3_18Filter1DEPFvS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !29, i64 0, !34, i64 16}
end_hunk_15
