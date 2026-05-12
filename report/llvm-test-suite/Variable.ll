inline.NumInlined: 849
inline.NumDeleted: 224
begin_hunk_0_@_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi:bb.a
  br i1 %i.uw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.pre165 = load ptr, ptr %i.ux, align 8, !tbaa !38
  br label %bb.cy

end_hunk_0
begin_hunk_1_@_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi:bb.a

bb.da:                                            ; preds = %bb.cy
  %i.vf = ptrtoint ptr %i.va to i64
  %i.vg = ptrtoint ptr %i.uz to i64
  %i.vh = sub i64 %i.vf, %i.vg                    ; 6 uses
  %i.vi = icmp eq i64 %i.vh, 9223372036854775804
  br i1 %i.vi, label %bb.db, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uz, i64 noundef %i.vh) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.dd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
end_hunk_2
begin_hunk_3_@_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi:bb.a
  %i.afv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afu) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.afw = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.afx = load ptr, ptr %2, align 8, !tbaa !37   ; 2 uses
  %i.afy = ptrtoint ptr %i.afw to i64
  %i.afz = ptrtoint ptr %i.afx to i64
  %i.aga = sub i64 %i.afy, %i.afz                 ; 2 uses
  %sext = shl i64 %i.aga, 30                      ; 3 uses
  %i.agb = ashr exact i64 %sext, 32               ; 2 uses
  %i.agc = icmp ugt i64 %i.agb, 2305843009213693951
end_hunk_3
begin_hunk_4_@_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi:bb.a

.noexc125:                                        ; preds = %.noexc124
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %.pre334 = load ptr, ptr %i.c, align 8, !tbaa !77
  %.pre335 = load ptr, ptr %2, align 8, !tbaa !37 ; 2 uses
  %.pre336 = ptrtoint ptr %.pre334 to i64
  %.pre337 = ptrtoint ptr %.pre335 to i64
  %.pre339 = sub i64 %.pre336, %.pre337
  br label %_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE.exit

_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE.exit: ; preds = %.loopexit314, %.noexc125
  %.pre-phi340 = phi i64 [ %i.aga, %.loopexit314 ], [ %.pre339, %.noexc125 ]
  %14 = phi ptr [ %i.afx, %.loopexit314 ], [ %.pre335, %.noexc125 ]
  %i.agv = lshr exact i64 %.pre-phi340, 2
  %i.agw = trunc i64 %i.agv to i32
  %i.agx = icmp sgt i32 %i.agw, 0
  br i1 %i.agx, label %._crit_edge.i.i130.lr.ph, label %._crit_edge.i.i126
end_hunk_4
begin_hunk_5_@_ZN2PP8Variable13get_var_valueERSt6vectorIiSaIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiSA_PSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi:bb.a
  br label %bb.et

._crit_edge.i.i130:                               ; preds = %._crit_edge.i.i130.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.ahe = phi ptr [ %14, %._crit_edge.i.i130.lr.ph ], [ %i.aiy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ]
  %indvars.iv328 = phi i64 [ 0, %._crit_edge.i.i130.lr.ph ], [ %indvars.iv.next329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store ptr %i.agy, ptr %13, align 8, !tbaa !8
end_hunk_5
