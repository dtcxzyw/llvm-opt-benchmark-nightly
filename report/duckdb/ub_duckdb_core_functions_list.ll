inline.NumInlined: 6793
inline.NumDeleted: 2407
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_122ListAggregatesBindData19DeserializeFunctionERNS_12DeserializerERNS_14ScalarFunctionE:.noexc
  %i.a = load ptr, ptr %1, align 8, !tbaa !108, !noalias !614
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !noalias !614
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.40)
  %i.e = load ptr, ptr %1, align 8, !tbaa !108, !noalias !614 ; 2 uses
  br i1 %i.d, label %.noexc6, label %bb.a

bb.a:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !614
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext false)
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.thread

.noexc6:                                          ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !noalias !617
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !620
  br i1 %i.j, label %.noexc.i.i, label %bb.h

.noexc.i.i:                                       ; preds = %.noexc6
  %i.k = load ptr, ptr %1, align 8, !tbaa !108, !noalias !617
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !noalias !617
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(632) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !621
  %i.n = load ptr, ptr %1, align 8, !tbaa !108, !noalias !624
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !624
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 1, ptr noundef nonnull @.str.41)
  %i.q = load ptr, ptr %1, align 8, !tbaa !108, !noalias !627
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !noalias !627
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !620
  call void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.t = load ptr, ptr %1, align 8, !tbaa !108, !noalias !627
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_122ListAggregatesBindData19DeserializeFunctionERNS_12DeserializerERNS_14ScalarFunctionE:.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !630
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 2, ptr noundef nonnull @.str.42)
          to label %.noexc.i.i.i unwind label %bb.g, !noalias !621

.noexc.i.i.i:                                     ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit.i.i.i
  %i.ae = load ptr, ptr %1, align 8, !tbaa !108, !noalias !633
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !633
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc8.i.i.i unwind label %bb.g, !noalias !621, !inline_history !636

.noexc8.i.i.i:                                    ; preds = %.noexc.i.i.i
  br i1 %i.ah, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, label %bb.d

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i: ; preds = %.noexc8.i.i.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !108, !noalias !633
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !633
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc9.i.i.i unwind label %bb.g, !noalias !621

.noexc9.i.i.i:                                    ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !633
  invoke void @_ZN6duckdb10Expression11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.121") align 8 %3, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc10.i.i.i unwind label %bb.g, !noalias !621

.noexc10.i.i.i:                                   ; preds = %.noexc9.i.i.i
  %i.al = load ptr, ptr %3, align 8, !tbaa !148, !noalias !633 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !633
  %i.am = load ptr, ptr %1, align 8, !tbaa !108, !noalias !633
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !633
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.d unwind label %bb.e, !noalias !633

bb.d:                                             ; preds = %.noexc10.i.i.i, %.noexc8.i.i.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.al, %.noexc10.i.i.i ], [ null, %.noexc8.i.i.i ] ; 10 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !108, !noalias !633
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !633
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i.i.i.i unwind label %bb.e, !noalias !633

bb.e:                                             ; preds = %bb.d, %.noexc10.i.i.i
  %.ph.i.i.i.i.i = phi ptr [ %i.al, %.noexc10.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.d ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_122ListAggregatesBindData19DeserializeFunctionERNS_12DeserializerERNS_14ScalarFunctionE:.noexc
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !148, !noalias !638
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !621
  %i.bm = load ptr, ptr %1, align 8, !tbaa !108, !noalias !617
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !617
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.h unwind label %.body.i.thread6.i, !noalias !617

.body.i.thread6.i:                                ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.i.i
  %lpad.thr_comm.split-lp8.i = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_122ListAggregatesBindData19DeserializeFunctionERNS_12DeserializerERNS_14ScalarFunctionE:.noexc

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.i.i, %.noexc6
  %.sroa.021.1 = phi ptr [ %i.az, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit.i.i ], [ null, %.noexc6 ] ; 7 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !108, !noalias !617
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !617
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS4_ELb1EEES4_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES9_E4typeEv.exit.i unwind label %.body.i.i, !noalias !617

.body.i.i:                                        ; preds = %bb.h
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_122ListAggregatesBindData19DeserializeFunctionERNS_12DeserializerERNS_14ScalarFunctionE:.noexc
_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataEEclEPS2_.exit.i9.i.i: ; preds = %.body.i.i, %.body.i.thread6.i
  %lpad.thr_comm.split-lp11.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp8.i, %.body.i.thread6.i ], [ %lpad.thr_comm.split-lp.i, %.body.i.i ]
  %.ph10.i = phi ptr [ %i.az, %.body.i.thread6.i ], [ %.sroa.021.1, %.body.i.i ] ; 2 uses
  %i.bs = load ptr, ptr %.ph10.i, align 8, !tbaa !108, !noalias !617
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !617
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(40) %.ph10.i) #25, !noalias !617, !inline_history !643
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS2_EED2Ev.exit13

_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS4_ELb1EEES4_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES9_E4typeEv.exit.i: ; preds = %bb.h
end_hunk_4
begin_hunk_5_@llvm.fmuladd.v2f64
!614 = !{!615}
!615 = distinct !{!615, !616, !"_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_10unique_ptrINS_12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS4_ELb1EEEEET_tPKcS8_: argument 0"}
!616 = distinct !{!616, !"_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_10unique_ptrINS_12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS4_ELb1EEEEET_tPKcS8_"}
!617 = !{!618, !615}
!618 = distinct !{!618, !619, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS4_ELb1EEES4_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES9_E4typeEv: argument 0"}
!619 = distinct !{!619, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_12_GLOBAL__N_122ListAggregatesBindDataESt14default_deleteIS4_ELb1EEES4_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES9_E4typeEv"}
!620 = distinct !{null}
!621 = !{!622, !618, !615}
!622 = distinct !{!622, !623, !"_ZN6duckdb12_GLOBAL__N_122ListAggregatesBindData11DeserializeERNS_12DeserializerE: argument 0"}
!623 = distinct !{!623, !"_ZN6duckdb12_GLOBAL__N_122ListAggregatesBindData11DeserializeERNS_12DeserializerE"}
!624 = !{!625, !622, !618, !615}
!625 = distinct !{!625, !626, !"_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc: argument 0"}
!626 = distinct !{!626, !"_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc"}
!627 = !{!628, !625, !622, !618, !615}
!628 = distinct !{!628, !629, !"_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv: argument 0"}
!629 = distinct !{!629, !"_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv"}
!630 = !{!631, !622, !618, !615}
!631 = distinct !{!631, !632, !"_ZN6duckdb12Deserializer12ReadPropertyINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEEEET_tPKc: argument 0"}
!632 = distinct !{!632, !"_ZN6duckdb12Deserializer12ReadPropertyINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEEEET_tPKc"}
!633 = !{!634, !631, !622, !618, !615}
!634 = distinct !{!634, !635, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv: argument 0"}
!635 = distinct !{!635, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv"}
!636 = distinct !{null}
!637 = distinct !{null, null, null, null}
!638 = !{!639, !622, !618, !615}
!639 = distinct !{!639, !640, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_122ListAggregatesBindDataEJNS_11LogicalTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!640 = distinct !{!640, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_122ListAggregatesBindDataEJNS_11LogicalTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!641 = distinct !{null, null, null, null, null, null}
end_hunk_5
