inline.NumInlined: 160
inline.NumDeleted: 91
begin_hunk_0_@_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_:bb.a
  %4 = alloca %"struct.absl::lts_20250512::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %.noexc, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_:bb.a
_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = mul nuw nsw i64 %i.b, 40
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #15 ; 6 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !22
  store ptr %i.g, ptr %i.e, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.b ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !31
  %i.i = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not.i.i.a = icmp eq i64 %.fr, 0
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i.a, label %._crit_edge, label %.lr.ph70.split

.lr.ph70.split:                                   ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %.critedge
  %i.k = phi ptr [ %i.bq, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 16 uses
  %.02168 = phi ptr [ %i.bt, %.critedge ], [ %i.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 6 uses
  %i.l = phi ptr [ %i.bs, %.critedge ], [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 9 uses
  %i.m = phi ptr [ %i.br, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 16 uses
  %.sroa.0.0.copyload45 = load i64, ptr %.02168, align 8, !tbaa !15 ; 6 uses
  %.sroa.8.0..021.sroa_idx = getelementptr inbounds nuw i8, ptr %.02168, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..021.sroa_idx, align 8, !tbaa !16 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_:bb.a
  %.not = icmp eq ptr %i.bt, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph70.split

._crit_edge:                                      ; preds = %.critedge, %bb.b, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i
  %.lcssa64 = phi ptr [ null, %bb.b ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.br, %.critedge ]
  %.lcssa60 = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.bs, %.critedge ]
  store ptr %.lcssa60, ptr %i.d, align 8
  store ptr %.lcssa64, ptr %0, align 8
  ret void
end_hunk_2
