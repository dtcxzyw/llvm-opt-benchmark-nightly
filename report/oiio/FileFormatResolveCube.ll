inline.NumInlined: 1076
inline.NumDeleted: 393
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.q = alloca i64, align 8                      ; 8 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::vector.4", align 8     ; 18 uses
  %i.s = alloca i32, align 4                      ; 8 uses
  %i.t = alloca i32, align 4                      ; 11 uses
  %i.u = alloca float, align 4                    ; 6 uses
  %i.v = alloca float, align 4                    ; 6 uses
  %i.w = alloca float, align 4                    ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %i.agw, label %bb.ev, label %.loopexit

bb.ev:                                            ; preds = %bb.eu
  %i.agx = load i32, ptr %i.t, align 4, !tbaa !3  ; 3 uses
  %i.agy = ptrtoint ptr %.sroa.14.0.ph.ph to i64
  %i.agz = ptrtoint ptr %.sroa.0647.0.ph.ph to i64
  %i.aha = sub i64 %i.agy, %i.agz
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  store i32 1, ptr %i.ajv, align 4, !tbaa !113, !noalias !127
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ajt, align 8, !tbaa !7, !noalias !127
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16 ; 2 uses
  %41 = zext nneg i32 %i.agx to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.ajw, i64 noundef %41)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !127

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc528
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  br i1 %i.amd, label %bb.gb, label %bb.hd

bb.gb:                                            ; preds = %.loopexit
  %i.ame = load i32, ptr %i.s, align 4, !tbaa !3  ; 4 uses
  %i.amf = mul nsw i32 %i.ame, %i.ame
  %i.amg = mul nsw i32 %i.amf, %i.ame
  %i.amh = load ptr, ptr %i.bo, align 8, !tbaa !85
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  store i32 1, ptr %i.aoz, align 4, !tbaa !113, !noalias !176
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aox, align 8, !tbaa !7, !noalias !176
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aox, i64 16 ; 2 uses
  %i.apb = sext i32 %i.ame to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.apa, i64 noundef %i.apb)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !176

end_hunk_4
