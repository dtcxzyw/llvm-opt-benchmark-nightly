inline.NumInlined: 574
inline.NumDeleted: 372
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_111DeserializeERNS_12DeserializerERNS_14ScalarFunctionE:.noexc
  %i.a = load ptr, ptr %1, align 8, !tbaa !121, !noalias !279
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !noalias !279
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.8)
  br i1 %i.d, label %.noexc17, label %.noexc16

.noexc16:                                         ; preds = %.noexc
  %i.e = load ptr, ptr %1, align 8, !tbaa !121, !noalias !279
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !279
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext false)
  br label %_ZNSt10unique_ptrIN6duckdb15NextvalBindDataESt14default_deleteIS1_EED2Ev.exit.thread

.noexc17:                                         ; preds = %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  store ptr null, ptr %5, align 8, !tbaa !285, !alias.scope !287
  %i.h = load ptr, ptr %1, align 8, !tbaa !121, !noalias !287
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !noalias !287
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !288
  br i1 %i.k, label %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, label %bb.a

_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i: ; preds = %.noexc17
  %i.l = load ptr, ptr %1, align 8, !tbaa !121, !noalias !287
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !noalias !287
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(632) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !287
  call void @_ZN6duckdb10CreateInfo11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.277") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.o = load ptr, ptr %4, align 8, !tbaa !275, !noalias !287 ; 3 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !275, !alias.scope !287
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !287
  %i.p = load ptr, ptr %1, align 8, !tbaa !121, !noalias !287
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !noalias !287
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.a unwind label %bb.b, !noalias !287

bb.a:                                             ; preds = %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, %.noexc17
  %.pr = phi ptr [ %i.o, %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i ], [ null, %.noexc17 ] ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !121, !noalias !287
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !noalias !287
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i unwind label %bb.b, !noalias !287

bb.b:                                             ; preds = %bb.a, %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i
  %.ph.i.i = phi ptr [ %i.o, %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i ], [ %.pr, %bb.a ] ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEEEET_tPKcS7_: argument 0"}
!281 = distinct !{!281, !"_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEEEET_tPKcS7_"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv: argument 0"}
!284 = distinct !{!284, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv"}
!285 = !{!286, !276, i64 0}
!286 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10CreateInfoELb0EE", !276, i64 0}
!287 = !{!283, !280}
!288 = distinct !{null}
!289 = !{!290, !117, i64 0}
!290 = !{!"_ZTSN6duckdb12optional_ptrINS_20SequenceCatalogEntryELb1EEE", !117, i64 0}
!291 = !{!292}
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!303 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10CreateInfoESt14default_deleteIS1_ELb1ELb1EE", !304, i64 0}
!304 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb10CreateInfoESt14default_deleteIS1_EE", !305, i64 0}
!305 = !{!"_ZTSSt5tupleIJPN6duckdb10CreateInfoESt14default_deleteIS1_EEE", !306, i64 0}
!306 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb10CreateInfoESt14default_deleteIS1_EEE", !286, i64 0}
!307 = !{!308, !331, i64 240}
!308 = !{!"_ZTSN6duckdb14InCatalogEntryE", !309, i64 0, !331, i64 240}
!309 = !{!"_ZTSN6duckdb12CatalogEntryE", !13, i64 8, !310, i64 16, !311, i64 24, !12, i64 32, !181, i64 64, !181, i64 65, !181, i64 66, !313, i64 72, !193, i64 80, !315, i64 144, !324, i64 224, !200, i64 232}
end_hunk_2
