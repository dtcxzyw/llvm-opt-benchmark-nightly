inline.NumInlined: 7661
inline.NumDeleted: 2990
begin_hunk_0_@_ZN6duckdb15CatalogEntryMap11UpdateEntryENS_10unique_ptrINS_12CatalogEntryESt14default_deleteIS2_ELb1EEE:bb.a
  br label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit26

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS6_12CatalogEntryESt14default_deleteIS8_ELb1EEENS6_28CaseInsensitiveStringCompareESaISt4pairIKS5_SB_EEE4findERSE_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64 ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !136 ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 4 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !136
  %i.ah = load ptr, ptr %1, align 8, !tbaa !136
  store ptr null, ptr %1, align 8, !tbaa !136
  %5 = load ptr, ptr %i.ae, align 8, !tbaa !136   ; 3 uses
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !136
  %.not.i.i.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_12CatalogEntryESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb12CatalogEntryEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12CatalogEntryEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.i
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %5) #36, !inline_history !147
  br label %_ZN6duckdb10unique_ptrINS_12CatalogEntryESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_12CatalogEntryESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIN6duckdb12CatalogEntryEEclEPS1_.exit.i.i.i.i.i
  %9 = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12CatalogEntryESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %_ZN6duckdb10unique_ptrINS_12CatalogEntryESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !136 ; 3 uses
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !136
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
end_hunk_0
begin_hunk_1_@_ZN6duckdb15CatalogEntryMap11UpdateEntryENS_10unique_ptrINS_12CatalogEntryESt14default_deleteIS2_ELb1EEE:bb.a

.noexc13:                                         ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.aq = ptrtoint ptr %9 to i64
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !136
  br label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit17

end_hunk_1
begin_hunk_2_@_ZN6duckdb15CatalogEntryMap11UpdateEntryENS_10unique_ptrINS_12CatalogEntryESt14default_deleteIS2_ELb1EEE:bb.a
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit26

bb.l:                                             ; preds = %_ZN6duckdb10unique_ptrINS_12CatalogEntryESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i24 = icmp eq i64 %i.af, 0
end_hunk_2
