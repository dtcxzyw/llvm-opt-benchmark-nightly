inline.NumInlined: 4259
inline.NumDeleted: 2180
begin_hunk_0_@_ZN6duckdb11CommitState15CommitEntryDropERNS_12CatalogEntryEPh:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !924
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(632) %5)
          to label %.noexc54 unwind label %bb.n

.noexc54:                                         ; preds = %.noexc53
  br i1 %i.ap, label %_ZN6duckdb10unique_ptrINS_9ParseInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, label %bb.h
end_hunk_0
begin_hunk_1_@_ZN6duckdb11CommitState15CommitEntryDropERNS_12CatalogEntryEPh:bb.a
          to label %.noexc56 unwind label %bb.n

.noexc56:                                         ; preds = %.noexc55
  %i.at = load ptr, ptr %3, align 8, !tbaa !927, !noalias !924 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !924
  %i.au = load ptr, ptr %5, align 8, !tbaa !85, !noalias !924
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
end_hunk_1
begin_hunk_2_@_ZN6duckdb11CommitState15CommitEntryDropERNS_12CatalogEntryEPh:bb.a
  %i.ba = load ptr, ptr %.sink8.i, align 8, !tbaa !85, !noalias !921
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !921
  call void %i.bc(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.sink8.i) #33, !noalias !921, !inline_history !929
  br label %.body57

_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_9ParseInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i: ; preds = %bb.h
end_hunk_2
begin_hunk_3_@_ZN6duckdb13WALWriteState17WriteCatalogEntryERNS_12CatalogEntryEPh:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !978
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(632) %5)
          to label %.noexc71 unwind label %bb.p, !inline_history !929

.noexc71:                                         ; preds = %.noexc70
  br i1 %i.ap, label %_ZN6duckdb10unique_ptrINS_9ParseInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, label %bb.h
end_hunk_3
begin_hunk_4_@_ZN6duckdb13WALWriteState17WriteCatalogEntryERNS_12CatalogEntryEPh:bb.a
          to label %.noexc73 unwind label %bb.p

.noexc73:                                         ; preds = %.noexc72
  %i.at = load ptr, ptr %3, align 8, !tbaa !927, !noalias !978 ; 3 uses
  store ptr %i.at, ptr %7, align 8, !tbaa !927, !alias.scope !978
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !978
  %i.au = load ptr, ptr %5, align 8, !tbaa !85, !noalias !978
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
end_hunk_4
begin_hunk_5_@_ZN6duckdb13WALWriteState17WriteCatalogEntryERNS_12CatalogEntryEPh:bb.a
  %i.bb = load ptr, ptr %.sink8.i, align 8, !tbaa !85, !noalias !970
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !970
  call void %i.bd(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.sink8.i) #33, !noalias !970, !inline_history !929
  br label %.body74

_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_9ParseInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i: ; preds = %bb.h
end_hunk_5
begin_hunk_6_@_ZN6duckdb13WALWriteState17WriteCatalogEntryERNS_12CatalogEntryEPh:bb.a
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %7, align 8, !tbaa !927   ; 3 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9ParseInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9ParseInfoEEclEPS1_.exit.i

end_hunk_6
begin_hunk_7_@_ZN6duckdb13WALWriteState17WriteCatalogEntryERNS_12CatalogEntryEPh:bb.a
bb.r:                                             ; preds = %bb.k, %_ZN6duckdb18BinaryDeserializer3EndEv.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %7, align 8, !tbaa !927
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
end_hunk_7
begin_hunk_8_@_ZNK6duckdb10unique_ptrINS_9ParseInfoESt14default_deleteIS1_ELb1EEptEv:bb.a
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.74", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !927    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9ParseInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !78

end_hunk_8
begin_hunk_9_@bcmp
!924 = !{!925, !922}
!925 = distinct !{!925, !926, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_9ParseInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv: argument 0"}
!926 = distinct !{!926, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_9ParseInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv"}
!927 = !{!928, !928, i64 0}
!928 = !{!"p1 _ZTSN6duckdb9ParseInfoE", !9, i64 0}
!929 = distinct !{null}
!930 = distinct !{null, null}
!931 = !{ptr @_ZN6duckdb12DeserializerD2Ev}
!932 = !{!844, !25, i64 0}
end_hunk_9
begin_hunk_10_@bcmp
!973 = !{!974}
!974 = distinct !{!974, !975, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_9ParseInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv: argument 0"}
!975 = distinct !{!975, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_9ParseInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv"}
!976 = !{!977, !928, i64 0}
!977 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb9ParseInfoELb0EE", !928, i64 0}
!978 = !{!974, !971}
!979 = !{!980}
!980 = distinct !{!980, !981, !"_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
end_hunk_10
