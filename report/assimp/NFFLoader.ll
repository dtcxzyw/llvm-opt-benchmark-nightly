inline.NumInlined: 2277
inline.NumDeleted: 734
begin_hunk_0_@_ZN6Assimp11NFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.ajb:                                           ; preds = %bb.aja
  %i.dtp = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #29
          to label %bb.ajc unwind label %bb.ajl   ; 21 uses

bb.ajc:                                           ; preds = %bb.ajb
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.dtp)
end_hunk_0
begin_hunk_1_@_ZN6Assimp11NFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dtp, i64 1060
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dtp, i64 1064
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dtp, i64 1068
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dtp, i64 1072 ; 2 uses
  store <4 x float> zeroinitializer, ptr %.sroa.14.0..sroa_idx.i, align 4
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dtp, i64 1088
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
end_hunk_1
