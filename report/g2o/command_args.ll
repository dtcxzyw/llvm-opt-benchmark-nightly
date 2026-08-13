inline.NumInlined: 1117
inline.NumDeleted: 424
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_T0_T1_":bb.a
  %.sroa.speculated.i.i.i.i28.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val3.i.i.i) ; 2 uses
  %i.eu = icmp eq i64 %.sroa.speculated.i.i.i.i28.i.i, 0
  br i1 %i.eu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i: ; preds = %bb.l
  %.val2.i30.i.i = load ptr, ptr %i.en, align 8
  %.val.i31.i.i = load ptr, ptr %i.em, align 8
  %i.ev = tail call i32 @memcmp(ptr noundef readonly %.val.i31.i.i, ptr noundef readonly %.val2.i30.i.i, i64 noundef %.sroa.speculated.i.i.i.i28.i.i) #23 ; 2 uses
  %.not.i.i.i.i32.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i.i32.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit38.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i, %bb.l
  %i.ew = sub i64 %.val3.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i35.i.i = tail call i64 @llvm.smax.i64(i64 %i.ew, i64 -2147483648)
  %.08.i.i.i.i.i36.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i35.i.i, i64 2147483647)
  %.0.i6.i.i.i.i37.i.i = trunc nsw i64 %.08.i.i.i.i.i36.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit38.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit38.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i
  %.0.i.i.i.i33.i.i = phi i32 [ %i.ev, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i29.i.i ], [ %.0.i6.i.i.i.i37.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i34.i.i ]
  %i.ex = icmp slt i32 %.0.i.i.i.i33.i.i, 0
  br i1 %i.ex, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_SM_T0_.exit.i", label %bb.m

bb.m:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit38.i.i"
  %.sroa.speculated.i.i.i.i41.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val1.i.i.i) ; 2 uses
  %i.ey = icmp eq i64 %.sroa.speculated.i.i.i.i41.i.i, 0
  br i1 %i.ey, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i: ; preds = %bb.m
  %.val2.i43.i.i = load ptr, ptr %i.en, align 8
  %.val.i44.i.i = load ptr, ptr %i.f, align 8
  %i.ez = tail call i32 @memcmp(ptr noundef readonly %.val.i44.i.i, ptr noundef readonly %.val2.i43.i.i, i64 noundef %.sroa.speculated.i.i.i.i41.i.i) #23 ; 2 uses
  %.not.i.i.i.i45.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i.i45.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit51.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i, %bb.m
  %i.fa = sub i64 %.val1.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i48.i.i = tail call i64 @llvm.smax.i64(i64 %i.fa, i64 -2147483648)
  %.08.i.i.i.i.i49.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i48.i.i, i64 2147483647)
  %.0.i6.i.i.i.i50.i.i = trunc nsw i64 %.08.i.i.i.i.i49.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit51.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit51.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i
  %.0.i.i.i.i46.i.i = phi i32 [ %i.ez, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i42.i.i ], [ %.0.i6.i.i.i.i50.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i47.i.i ]
  %i.fb = icmp slt i32 %.0.i.i.i.i46.i.i, 0
  %..i = select i1 %i.fb, ptr %i.en, ptr %i.f
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_SM_T0_.exit.i"

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit.i.i"
  %.sroa.speculated.i.i.i.i54.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val1.i.i.i) ; 2 uses
  %i.fc = icmp eq i64 %.sroa.speculated.i.i.i.i54.i.i, 0
  br i1 %i.fc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i: ; preds = %bb.n
  %.val2.i56.i.i = load ptr, ptr %i.en, align 8
  %.val.i57.i.i = load ptr, ptr %i.f, align 8
  %i.fd = tail call i32 @memcmp(ptr noundef readonly %.val.i57.i.i, ptr noundef readonly %.val2.i56.i.i, i64 noundef %.sroa.speculated.i.i.i.i54.i.i) #23 ; 2 uses
  %.not.i.i.i.i58.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i.i.i58.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit64.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i, %bb.n
  %i.fe = sub i64 %.val1.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i61.i.i = tail call i64 @llvm.smax.i64(i64 %i.fe, i64 -2147483648)
  %.08.i.i.i.i.i62.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i61.i.i, i64 2147483647)
  %.0.i6.i.i.i.i63.i.i = trunc nsw i64 %.08.i.i.i.i.i62.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit64.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit64.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i
  %.0.i.i.i.i59.i.i = phi i32 [ %i.fd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i ], [ %.0.i6.i.i.i.i63.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i60.i.i ]
  %i.ff = icmp slt i32 %.0.i.i.i.i59.i.i, 0
  br i1 %i.ff, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_SM_T0_.exit.i", label %bb.o

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit64.i.i"
  %.sroa.speculated.i.i.i.i67.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i27.i.i, i64 %.val3.i.i.i) ; 2 uses
  %i.fg = icmp eq i64 %.sroa.speculated.i.i.i.i67.i.i, 0
  br i1 %i.fg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i: ; preds = %bb.o
  %.val2.i69.i.i = load ptr, ptr %i.en, align 8
  %.val.i70.i.i = load ptr, ptr %i.em, align 8
  %i.fh = tail call i32 @memcmp(ptr noundef readonly %.val.i70.i.i, ptr noundef readonly %.val2.i69.i.i, i64 noundef %.sroa.speculated.i.i.i.i67.i.i) #23 ; 2 uses
  %.not.i.i.i.i71.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i.i71.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit77.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i, %bb.o
  %i.fi = sub i64 %.val3.i.i.i, %.val3.i27.i.i
  %spec.select7.i.i.i.i.i74.i.i = tail call i64 @llvm.smax.i64(i64 %i.fi, i64 -2147483648)
  %.08.i.i.i.i.i75.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i74.i.i, i64 2147483647)
  %.0.i6.i.i.i.i76.i.i = trunc nsw i64 %.08.i.i.i.i.i75.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit77.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit77.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i
  %.0.i.i.i.i72.i.i = phi i32 [ %i.fh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i68.i.i ], [ %.0.i6.i.i.i.i76.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i73.i.i ]
  %i.fj = icmp slt i32 %.0.i.i.i.i72.i.i, 0
  %.37.i = select i1 %i.fj, ptr %i.en, ptr %i.em
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_SM_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_SM_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit77.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit64.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit51.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit38.i.i"
  %.sink.i = phi ptr [ %i.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit64.i.i" ], [ %..i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit51.i.i" ], [ %i.em, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit38.i.i" ], [ %.37.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit77.i.i" ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sink.i) #23
  %i.fk = getelementptr inbounds nuw i8, ptr %.sink.i, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fk) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_SM_T0_.exit.i"
  %.sroa.023.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_SM_T0_.exit.i" ], [ %i.fq, %bb.s ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2592, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_SM_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.s ]
  %.val3.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !25 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit.i20.i", %bb.p
  %.sroa.023.1.i.i = phi ptr [ %.sroa.023.0.i.i, %bb.p ], [ %i.fq, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit.i20.i" ] ; 10 uses
  %i.fl = getelementptr i8, ptr %.sroa.023.1.i.i, i64 8
  %.val1.i.i14.i = load i64, ptr %i.fl, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i13.i, i64 %.val1.i.i14.i) ; 2 uses
  %i.fm = icmp eq i64 %.sroa.speculated.i.i.i.i.i15.i, 0
  br i1 %i.fm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i: ; preds = %bb.q
  %.val2.i.i17.i = load ptr, ptr %0, align 8
  %.val.i.i18.i = load ptr, ptr %.sroa.023.1.i.i, align 8
  %i.fn = tail call i32 @memcmp(ptr noundef readonly %.val.i.i18.i, ptr noundef readonly %.val2.i.i17.i, i64 noundef %.sroa.speculated.i.i.i.i.i15.i) #23 ; 2 uses
  %.not.i.i.i.i.i19.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i.i.i.i19.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit.i20.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i, %bb.q
  %i.fo = sub i64 %.val1.i.i14.i, %.val3.i.i13.i
  %spec.select7.i.i.i.i.i.i23.i = tail call i64 @llvm.smax.i64(i64 %i.fo, i64 -2147483648)
  %.08.i.i.i.i.i.i24.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i23.i, i64 2147483647)
  %.0.i6.i.i.i.i.i25.i = trunc nsw i64 %.08.i.i.i.i.i.i24.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit.i20.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit.i20.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i
  %.0.i.i.i.i.i21.i = phi i32 [ %i.fn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i16.i ], [ %.0.i6.i.i.i.i.i25.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i22.i ]
  %i.fp = icmp slt i32 %.0.i.i.i.i.i21.i, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 64 ; 2 uses
  br i1 %i.fp, label %bb.q, label %.preheader.i.i, !llvm.loop !241

.preheader.i.i:                                   ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit.i20.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit20.i.i"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit20.i.i" ], [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit.i20.i" ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -64 ; 5 uses
  %i.fr = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -56
  %.val3.i9.i.i = load i64, ptr %i.fr, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i10.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i9.i.i, i64 %.val3.i.i13.i) ; 2 uses
  %i.fs = icmp eq i64 %.sroa.speculated.i.i.i.i10.i.i, 0
  br i1 %i.fs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i: ; preds = %.preheader.i.i
  %.val2.i12.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8
  %.val.i13.i.i = load ptr, ptr %0, align 8
  %i.ft = tail call i32 @memcmp(ptr noundef readonly %.val.i13.i.i, ptr noundef readonly %.val2.i12.i.i, i64 noundef %.sroa.speculated.i.i.i.i10.i.i) #23 ; 2 uses
  %.not.i.i.i.i14.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i.i.i14.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit20.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i, %.preheader.i.i
  %i.fu = sub i64 %.val3.i.i13.i, %.val3.i9.i.i
  %spec.select7.i.i.i.i.i17.i.i = tail call i64 @llvm.smax.i64(i64 %i.fu, i64 -2147483648)
  %.08.i.i.i.i.i18.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i17.i.i, i64 2147483647)
  %.0.i6.i.i.i.i19.i.i = trunc nsw i64 %.08.i.i.i.i.i18.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit20.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit20.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i
  %.0.i.i.i.i15.i.i = phi i32 [ %i.ft, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i11.i.i ], [ %.0.i6.i.i.i.i19.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i16.i.i ]
  %i.fv = icmp slt i32 %.0.i.i.i.i15.i.i, 0
  br i1 %i.fv, label %.preheader.i.i, label %bb.r, !llvm.loop !242

bb.r:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit20.i.i"
  %i.fw = icmp ult ptr %.sroa.023.1.i.i, %.sroa.0.1.i.i
  br i1 %i.fw, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEET_SM_SM_T0_.exit"

bb.s:                                             ; preds = %bb.r
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.023.1.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.1.i.i) #23
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i.i, i64 32
  %i.fy = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %i.fy) #23
  br label %bb.p, !llvm.loop !243

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEET_SM_SM_T0_.exit": ; preds = %bb.r
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_T0_T1_"(ptr %.sroa.023.1.i.i, ptr %storemerge2592, i64 noundef %i.ek)
  %i.fz = ptrtoint ptr %.sroa.023.1.i.i to i64
  %i.ga = sub i64 %i.fz, %i.a                     ; 2 uses
  %i.gb = ashr exact i64 %i.ga, 6                 ; 3 uses
  %i.gc = icmp sgt i64 %i.gb, 16
  br i1 %i.gc, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_T0_.exit", !llvm.loop !238

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEET_SM_SM_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_SM_RT0_.exit", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_SM_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EEEvT_T0_SN_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair", align 8        ; 10 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit"
  %.036 = phi i64 [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.036, 1                         ; 3 uses
  %i.e = add i64 %i.d, 2
  %i.f = getelementptr [64 x i8], ptr %0, i64 %i.d ; 4 uses
  %i.g = or disjoint i64 %i.d, 1
  %i.h = getelementptr i8, ptr %i.f, i64 136
  %.val1.i = load i64, ptr %i.h, align 8, !tbaa !25 ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 72
  %.val3.i = load i64, ptr %i.i, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i, i64 %.val1.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph
  %5 = getelementptr i8, ptr %i.f, i64 64
  %6 = getelementptr i8, ptr %i.f, i64 128
  %.val2.i = load ptr, ptr %5, align 8
  %.val.i = load ptr, ptr %6, align 8
  %i.k = tail call i32 @memcmp(ptr noundef readonly %.val.i, ptr noundef readonly %.val2.i, i64 noundef %.sroa.speculated.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph
  %i.l = sub i64 %.val1.i, %.val3.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i.i, 0
  %spec.select = select i1 %i.m, i64 %i.g, i64 %i.e ; 4 uses
  %i.n = getelementptr inbounds [64 x i8], ptr %0, i64 %spec.select
  %i.o = getelementptr inbounds [64 x i8], ptr %0, i64 %.036
  %i.p = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.n) #23 ; 0 uses
  %i.q = icmp slt i64 %spec.select, %i.b
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !244

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESL_EEbT_T0_.exit" ] ; 5 uses
  %i.r = and i64 %2, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.t = add nsw i64 %2, -2
  %i.u = ashr exact i64 %i.t, 1
  %i.v = icmp eq i64 %.0.lcssa, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = shl nsw i64 %.0.lcssa, 1                 ; 2 uses
  %i.x = or disjoint i64 %i.w, 1
  %i.y = getelementptr [64 x i8], ptr %0, i64 %i.w
  %7 = getelementptr i8, ptr %i.y, i64 64
  %i.z = getelementptr inbounds [64 x i8], ptr %0, i64 %.0.lcssa
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %7) #23 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.x, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !26
  %i.ac = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !25 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.ac, ptr %4, align 8, !tbaa !10
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !16
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ak = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ag, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !25
  store ptr %i.ad, ptr %3, align 8, !tbaa !10
  store i64 0, ptr %i.al, align 8, !tbaa !25
  store i8 0, ptr %i.ad, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !26
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !25 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !10
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !16
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !16
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !25
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.ay = phi i64 [ %i.au, %bb.f ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !25
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !10
  store i64 0, ptr %i.az, align 8, !tbaa !25
  store i8 0, ptr %i.ar, align 8, !tbaa !16
  %i.bb = icmp sgt i64 %.1, %1
  br i1 %i.bb, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit, %bb.g
  %.010.i = phi i64 [ %.0911.i, %bb.g ], [ %.1, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.bc = getelementptr inbounds [64 x i8], ptr %0, i64 %.0911.i ; 3 uses
  %.val10.i = load i64, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %.val2.i.i = load i64, ptr %i.bd, align 8, !tbaa !25 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10.i, i64 %.val2.i.i) ; 2 uses
  %i.be = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %.val.i25 = load ptr, ptr %4, align 8
  %.val.i.i = load ptr, ptr %i.bc, align 8
  %i.bf = call i32 @memcmp(ptr noundef readonly %.val.i.i, ptr noundef readonly %.val.i25, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESG_EEbT_RT0_.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i
  %i.bg = sub i64 %.val2.i.i, %.val10.i
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bg, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESG_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESG_EEbT_RT0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bh = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bh, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESG_EEbT_RT0_.exit.i"
  %i.bi = getelementptr inbounds [64 x i8], ptr %0, i64 %.010.i
  %i.bj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.bc) #23 ; 0 uses
  %i.bk = icmp sgt i64 %.0911.i, %1
  br i1 %i.bk, label %.lr.ph.i, label %.loopexit, !llvm.loop !245

.loopexit:                                        ; preds = %bb.g, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESG_EEbT_RT0_.exit.i", %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit ], [ %.010.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN3g2o11CommandArgs9printHelpERSoE3$_0EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_ESt6vectorISG_SaISG_EEEESG_EEbT_RT0_.exit.i" ], [ %.0911.i, %bb.g ]
  %i.bl = getelementptr inbounds [64 x i8], ptr %0, i64 %.0.lcssa.i
  %i.bm = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef nonnull align 8 dereferenceable(64) %4) #23 ; 0 uses
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !10 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ap
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit
  %i.bp = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.br = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ab
  br i1 %i.bs, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bt = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #22
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !10     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !136

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.j, ptr %i.a, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !25
  %i.m = load ptr, ptr %0, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  store i64 %i.q, ptr %i.o, align 8, !tbaa !25
  %i.r = load i64, ptr %i.e, align 8, !tbaa !16
  store i64 %i.r, ptr %i.b, align 8, !tbaa !16
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
end_hunk_0
