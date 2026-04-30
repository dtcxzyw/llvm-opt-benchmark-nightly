inline.NumInlined: 7661
inline.NumDeleted: 2990
begin_hunk_0_@_ZN6duckdb15CatalogEntryMap11UpdateEntryENS_10unique_ptrINS_12CatalogEntryESt14default_deleteIS2_ELb1EEE:bb.a
  br label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit26

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS6_12CatalogEntryESt14default_deleteIS8_ELb1EEENS6_28CaseInsensitiveStringCompareESaISt4pairIKS5_SB_EEE4findERSE_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !136 ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 4 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !136
  %i.ah = load ptr, ptr %1, align 8, !tbaa !136
  store ptr null, ptr %1, align 8, !tbaa !136
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !136
  %5 = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12CatalogEntryESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !136 ; 3 uses
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !136
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
end_hunk_0
begin_hunk_1_@_ZN6duckdb15CatalogEntryMap11UpdateEntryENS_10unique_ptrINS_12CatalogEntryESt14default_deleteIS2_ELb1EEE:bb.a

.noexc13:                                         ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.aq = ptrtoint ptr %5 to i64
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !136
  br label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit17

end_hunk_1
begin_hunk_2_@_ZN6duckdb15CatalogEntryMap11UpdateEntryENS_10unique_ptrINS_12CatalogEntryESt14default_deleteIS2_ELb1EEE:bb.a
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit26

bb.l:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i24 = icmp eq i64 %i.af, 0
end_hunk_2
