inline.NumInlined: 35645
inline.NumDeleted: 8765
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_118StringAggSerializeERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_17AggregateFunctionE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.7)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN6duckdb12_GLOBAL__N_117StringAggBindDataC2ERKS1_.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc2 unwind label %bb.e

.noexc2:                                          ; preds = %.noexc
  %i.y = load ptr, ptr %0, align 8, !tbaa !47
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_120BitstringAggBindData11DeserializeERNS_12DeserializerERNS_17AggregateFunctionE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.31)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.d = load ptr, ptr %1, align 8, !tbaa !47, !noalias !1302
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1302
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc9 unwind label %bb.n, !inline_history !1305

.noexc9:                                          ; preds = %.noexc
  invoke void @_ZN6duckdb5Value11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %.noexc9
  %i.g = load ptr, ptr %1, align 8, !tbaa !47, !noalias !1302
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(632) %1)
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_120BitstringAggBindData11DeserializeERNS_12DeserializerERNS_17AggregateFunctionE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_5ValueEEEvtPKcRT_.exit unwind label %bb.n

_ZN6duckdb12Deserializer12ReadPropertyINS_5ValueEEEvtPKcRT_.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_5ValueEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.32)
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_5ValueEEEvtPKcRT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_120BitstringAggBindData11DeserializeERNS_12DeserializerERNS_17AggregateFunctionE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1306
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc14 unwind label %bb.n

.noexc14:                                         ; preds = %.noexc13
  invoke void @_ZN6duckdb5Value11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(632) %1)
end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_120BitstringAggBindData11DeserializeERNS_12DeserializerERNS_17AggregateFunctionE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_5ValueEEEvtPKcRT_.exit19 unwind label %bb.n, !inline_history !1305

_ZN6duckdb12Deserializer12ReadPropertyINS_5ValueEEEvtPKcRT_.exit19: ; preds = %_ZN6duckdb12Deserializer4ReadINS_5ValueEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
end_hunk_4
begin_hunk_5_@llvm.vector.reduce.xor.v2i64
!1299 = distinct !{!1299, !"_ZN6duckdb9make_uniqINS_12_GLOBAL__N_120BitstringAggBindDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1300 = distinct !{null}
!1301 = distinct !{null, null}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1304, !"_ZN6duckdb12Deserializer4ReadINS_5ValueEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv: argument 0"}
!1304 = distinct !{!1304, !"_ZN6duckdb12Deserializer4ReadINS_5ValueEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv"}
!1305 = distinct !{null}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"_ZN6duckdb12Deserializer4ReadINS_5ValueEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv: argument 0"}
!1308 = distinct !{!1308, !"_ZN6duckdb12Deserializer4ReadINS_5ValueEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv"}
end_hunk_5
