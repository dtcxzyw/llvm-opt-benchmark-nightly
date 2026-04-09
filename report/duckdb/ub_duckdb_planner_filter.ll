inline.NumInlined: 2417
inline.NumDeleted: 1450
begin_hunk_0_@_ZN6duckdb13BFTableFilter11DeserializeERNS_12DeserializerE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !152
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 202, ptr noundef nonnull @.str.4)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !18, !noalias !155
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !155
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc8 unwind label %bb.j, !inline_history !158

.noexc8:                                          ; preds = %.noexc
  invoke void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %3, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %.noexc8
  %i.af = load ptr, ptr %1, align 8, !tbaa !18, !noalias !155
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(632) %1)
end_hunk_0
begin_hunk_1_@_ZN6duckdb25SelectivityOptionalFilter11DeserializeERNS_12DeserializerE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 200, ptr noundef nonnull @.str.24)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %bb.c
  br i1 %i.k, label %bb.e, label %bb.d
end_hunk_1
begin_hunk_2_@_ZN6duckdb25SelectivityOptionalFilter11DeserializeERNS_12DeserializerE:bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit9.i.invoke, label %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit9.i.invoke.sink.split

bb.e:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %1, align 8, !tbaa !18, !noalias !658
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !noalias !658
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc8 unwind label %bb.m, !inline_history !661

.noexc8:                                          ; preds = %bb.e
  br i1 %i.p, label %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, label %bb.f

_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i: ; preds = %.noexc8
  %i.q = load ptr, ptr %1, align 8, !tbaa !18, !noalias !658
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !noalias !658
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc9 unwind label %bb.m

.noexc9:                                          ; preds = %_ZN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !658
  invoke void @_ZN6duckdb11TableFilter11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.101") align 8 %2, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc10 unwind label %bb.m

.noexc10:                                         ; preds = %.noexc9
  %i.t = load ptr, ptr %2, align 8, !tbaa !165, !noalias !658 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !658
  %i.u = load ptr, ptr %1, align 8, !tbaa !18, !noalias !658
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !noalias !658
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.f unwind label %bb.g, !noalias !658

bb.f:                                             ; preds = %.noexc10, %.noexc8
  %.sroa.0.0.i = phi ptr [ %i.t, %.noexc10 ], [ null, %.noexc8 ] ; 2 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !18, !noalias !658
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !noalias !658
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_11TableFilterESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i unwind label %bb.g, !noalias !658

bb.g:                                             ; preds = %bb.f, %.noexc10
  %.ph.i.i = phi ptr [ %i.t, %.noexc10 ], [ %.sroa.0.0.i, %bb.f ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb25SelectivityOptionalFilter11DeserializeERNS_12DeserializerE:bb.a
  br i1 %.not.i6.i.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i7.i.i

_ZNKSt14default_deleteIN6duckdb11TableFilterEEclEPS1_.exit.i7.i.i: ; preds = %bb.g
  %i.aa = load ptr, ptr %.ph.i.i, align 8, !tbaa !18, !noalias !658
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !658
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.ph.i.i) #26, !noalias !658, !inline_history !662
  br label %.body

_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_11TableFilterESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i: ; preds = %bb.f
end_hunk_3
begin_hunk_4_@_ZN6duckdb25SelectivityOptionalFilter11DeserializeERNS_12DeserializerE:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.ah)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_10unique_ptrINS_11TableFilterESt14default_deleteIS3_ELb1EEEEEvtPKcRT_.exit unwind label %bb.m

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_10unique_ptrINS_11TableFilterESt14default_deleteIS3_ELb1EEEEEvtPKcRT_.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb11TableFilterESt14default_deleteIS1_EED2Ev.exit9.i.invoke
  %i.al = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25SelectivityOptionalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
end_hunk_4
begin_hunk_5_@_ZN6duckdb25SelectivityOptionalFilter11DeserializeERNS_12DeserializerE:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 201, ptr noundef nonnull @.str.22)
          to label %.noexc12 unwind label %bb.m   ; 2 uses

.noexc12:                                         ; preds = %bb.h
  br i1 %i.aq, label %bb.i, label %.noexc13
end_hunk_5
begin_hunk_6_@_ZN6duckdb25SelectivityOptionalFilter11DeserializeERNS_12DeserializerE:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.aq)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIfEEvtPKcRT_.exit unwind label %bb.m

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIfEEvtPKcRT_.exit: ; preds = %.noexc13
  %i.ay = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25SelectivityOptionalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
end_hunk_6
begin_hunk_7_@_ZN6duckdb25SelectivityOptionalFilter11DeserializeERNS_12DeserializerE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 202, ptr noundef nonnull @.str.23)
          to label %.noexc16 unwind label %bb.m   ; 2 uses

.noexc16:                                         ; preds = %bb.j
  br i1 %i.bd, label %bb.k, label %.noexc17
end_hunk_7
begin_hunk_8_@_ZN6duckdb25SelectivityOptionalFilter11DeserializeERNS_12DeserializerE:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.bd)
          to label %_ZNSt10unique_ptrIN6duckdb25SelectivityOptionalFilterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.m

_ZNSt10unique_ptrIN6duckdb25SelectivityOptionalFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc17
  %i.bl = load ptr, ptr %3, align 8, !tbaa !656
end_hunk_8
begin_hunk_9_@llvm.umin.i64
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc: argument 0"}
!154 = distinct !{!154, !"_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc"}
!155 = !{!156, !153}
!156 = distinct !{!156, !157, !"_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv: argument 0"}
!157 = distinct !{!157, !"_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv"}
!158 = distinct !{null}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN6duckdb9make_uniqINS_13BFTableFilterEJRNS_11BloomFilterERbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!161 = distinct !{!161, !"_ZN6duckdb9make_uniqINS_13BFTableFilterEJRNS_11BloomFilterERbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
end_hunk_9
begin_hunk_10_@llvm.umin.i64
!655 = distinct !{null}
!656 = !{!657, !657, i64 0}
!657 = !{!"p1 _ZTSN6duckdb25SelectivityOptionalFilterE", !14, i64 0}
!658 = !{!659}
!659 = distinct !{!659, !660, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_11TableFilterESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv: argument 0"}
!660 = distinct !{!660, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_11TableFilterESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv"}
!661 = distinct !{null}
!662 = distinct !{null, null, null, null}
!663 = distinct !{null}
!664 = distinct !{null}
end_hunk_10
