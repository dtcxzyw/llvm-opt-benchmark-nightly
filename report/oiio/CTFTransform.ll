inline.NumInlined: 3285
inline.NumDeleted: 896
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_114AddGammaParamsERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EERKS2_IdSaIdEENS_11GammaOpData5StyleEb:bb.a
._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !24
  %i.ac = select i1 %3, i64 5, i64 8              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ab, ptr noundef nonnull align 1 dereferenceable(5) %i.j, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_112_GLOBAL__N_114AddGammaParamsERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EERKS2_IdSaIdEENS_11GammaOpData5StyleEb:bb.a
  br i1 %i.au, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23

bb.h:                                             ; preds = %bb.g
  %10 = select i1 %3, i64 6, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.as, ptr noundef nonnull align 8 dereferenceable(6) %i.ab, i64 %10, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23: ; preds = %bb.g
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter11writeRGBMSWEPKcRKNS_13GradingRGBMSWES6_bb:bb.a
._crit_edge.i.i.i117:                             ; preds = %bb.v, %bb.x
  %i.gc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.gc, ptr %14, align 8, !tbaa !24
  %i.gd = select i1 %4, i64 6, i64 5              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.gc, ptr noundef nonnull align 1 dereferenceable(5) %i.fn, i64 %i.gd, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !16
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter11writeRGBMSWEPKcRKNS_13GradingRGBMSWES6_bb:bb.a
  br i1 %i.gt, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i124

bb.ab:                                            ; preds = %bb.aa
  %20 = select i1 %4, i64 7, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.gr, ptr noundef nonnull align 8 dereferenceable(6) %i.gc, i64 %20, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i124: ; preds = %bb.aa
end_hunk_3
