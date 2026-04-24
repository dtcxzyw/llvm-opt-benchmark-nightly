inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_:bb.a
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i25.preheader, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i25.preheader158, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i25.preheader
end_hunk_0
begin_hunk_1_@_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_:bb.a
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i27.preheader, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %bb.h
  %min.iters.check65 = icmp ult i64 %i.bi, 8
  br i1 %min.iters.check65, label %.lr.ph.i.i.i.i.i27.preheader157, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i.i.i27.preheader
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag:bb.a
  br i1 %i.az, label %.lr.ph.i.i.i.i.i43.preheader, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %min.iters.check269 = icmp ult i64 %i.ay, 60
  br i1 %min.iters.check269, label %.lr.ph.i.i.i.i.i43.preheader426, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i.i.i43.preheader
end_hunk_2
begin_hunk_3_@_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag:bb.a
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit
  %min.iters.check299 = icmp ult i64 %i.e, 8
  br i1 %min.iters.check299, label %.lr.ph.i.i.i.i.i44.preheader425, label %vector.memcheck292

vector.memcheck292:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader
end_hunk_3
begin_hunk_4_@_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag:bb.a
  %i.dw = sub i64 %i.dv, %i.m                     ; 2 uses
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check133 = icmp ult i64 %i.dw, 200
  br i1 %min.iters.check133, label %.lr.ph.i.i.i.i.i46.preheader429, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader
end_hunk_4
begin_hunk_5_@_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag:bb.a
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i53.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i53.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51
  %min.iters.check165 = icmp ult i64 %i.eu, 8
  br i1 %min.iters.check165, label %.lr.ph.i.i.i.i.i53.preheader427, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader
end_hunk_5
begin_hunk_6_@_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag:bb.a
  %i.eb = sub i64 %i.ea, %i.m                     ; 2 uses
  %i.ec = lshr i64 %i.eb, 4
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.eb, 400
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.i.i49.preheader282, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader
end_hunk_6
