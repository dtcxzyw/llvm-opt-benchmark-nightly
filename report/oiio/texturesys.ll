inline.NumInlined: 5153
inline.NumDeleted: 1482
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl17unit_test_textureEv:._crit_edge.i.i
  br i1 %.not.i.i.i.i, label %bb.s, label %select.unfold.i.i.i.i, !llvm.loop !407

bb.t:                                             ; preds = %bb.s
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit: ; preds = %bb.s, %bb.t
  %.016.i.i.i.i = phi float [ 0x3FEFFFFFE0000000, %bb.t ], [ %i.dr, %bb.s ]
  br label %select.unfold.i.i.i.i137

bb.u:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl17unit_test_textureEv:._crit_edge.i.i
  br i1 %.not.i.i.i.i141, label %bb.u, label %select.unfold.i.i.i.i137, !llvm.loop !407

bb.v:                                             ; preds = %bb.u
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143: ; preds = %bb.u, %bb.v
  %.016.i.i.i.i142 = phi float [ 0x3FEFFFFFE0000000, %bb.v ], [ %i.gq, %bb.u ]
  br label %select.unfold.i.i.i.i145

bb.w:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_117TextureSystemImpl17unit_test_textureEv:._crit_edge.i.i
  br i1 %.not.i.i.i.i149, label %bb.w, label %select.unfold.i.i.i.i145, !llvm.loop !407

bb.x:                                             ; preds = %bb.w
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151: ; preds = %bb.w, %bb.x
  %.016.i.i.i.i150 = phi float [ 0x3FEFFFFFE0000000, %bb.x ], [ %i.jp, %bb.w ]
  br label %select.unfold.i.i.i.i153

bb.y:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_117TextureSystemImpl17unit_test_textureEv:._crit_edge.i.i
  br i1 %.not.i.i.i.i157, label %bb.y, label %select.unfold.i.i.i.i153, !llvm.loop !407

bb.z:                                             ; preds = %bb.y
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit159

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit159: ; preds = %bb.y, %bb.z
  %.016.i.i.i.i158 = phi float [ 0x3FEFFFFFE0000000, %bb.z ], [ %i.mo, %bb.y ]
  %i.pk = fadd float %.016.i.i.i.i158, 0.000000e+00
  %i.pl = fadd float %i.pk, -5.000000e-01
  %i.pm = fmul float %i.pl, 1.500000e+00
end_hunk_3
begin_hunk_4_@_ZdaPv
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #26

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #9

; Function Attrs: nounwind
end_hunk_4
