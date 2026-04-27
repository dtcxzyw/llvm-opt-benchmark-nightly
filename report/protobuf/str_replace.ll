inline.NumInlined: 160
inline.NumDeleted: 91
begin_hunk_0_@_ZN4absl12lts_2025051216strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
  %.050 = phi i64 [ %i.ap, %bb.n ], [ %i.an, %bb.m ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ar = getelementptr [40 x i8], ptr %i.aq, i64 %.050 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -80    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ap ; 4 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_:bb.a

.lr.ph70.split:                                   ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %.critedge
  %i.o = phi ptr [ %i.bu, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 16 uses
  %.02168 = phi ptr [ %i.bx, %.critedge ], [ %i.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 7 uses
  %i.p = phi ptr [ %i.bw, %.critedge ], [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 9 uses
  %i.q = phi ptr [ %i.bv, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 16 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.02168) ]
  %.sroa.0.0.copyload45 = load i64, ptr %.02168, align 8, !tbaa !15 ; 6 uses
  %.sroa.8.0..021.sroa_idx = getelementptr inbounds nuw i8, ptr %.02168, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..021.sroa_idx, align 8, !tbaa !16 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_:bb.a
  %i.bh = phi i64 [ %i.bt, %bb.j ], [ %i.bg, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.058 = phi i64 [ %i.bh, %bb.j ], [ %i.bf, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ]
  %i.bi = getelementptr [40 x i8], ptr %i.ba, i64 %.058 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -80    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.bh ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 -48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10 ; 2 uses
end_hunk_2
