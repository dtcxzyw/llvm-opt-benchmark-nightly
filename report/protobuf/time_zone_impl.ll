inline.NumInlined: 368
inline.NumDeleted: 243
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz9time_zone4Impl24ClearTimeZoneMapTestOnlyEv:bb.a
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EEC2Ev.exit, %bb.h, %bb.g
  %i.m = load ptr, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_113time_zone_mapB5cxx11E, align 8, !tbaa !13 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.011.017 = load ptr, ptr %i.n, align 8, !tbaa !41 ; 2 uses
  %.not1618 = icmp eq ptr %.sroa.011.017, null
  br i1 %.not1618, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.k
  %0 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5clearEv.exit

._crit_edge:                                      ; preds = %_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE9push_backERKS7_.exit
  %.pre = load ptr, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_113time_zone_mapB5cxx11E, align 8, !tbaa !13 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre20 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !42 ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.pre20, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5clearEv.exit, label %.lr.ph.i.i.i

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz9time_zone4Impl24ClearTimeZoneMapTestOnlyEv:bb.a
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !43

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i, %._crit_edge.thread, %._crit_edge
  %i.v = phi ptr [ %0, %._crit_edge.thread ], [ %1, %._crit_edge ], [ %1, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i ]
  %2 = phi ptr [ %i.m, %._crit_edge.thread ], [ %.pre, %._crit_edge ], [ %.pre, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplEELb1EEEEE18_M_deallocate_nodeEPSJ_.exit.i.i.i ] ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29
  %i.z = shl i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.z, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %bb.r

bb.l:                                             ; preds = %bb.i
end_hunk_1
