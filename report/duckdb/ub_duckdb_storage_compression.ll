inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb
define linkonce_odr void @_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.1201") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit
  %i.e = phi ptr [ null, %bb.a ], [ %i.ba, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 8 uses
  %i.f = phi ptr [ null, %bb.a ], [ %i.bb, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 6 uses
  %i.g = phi ptr [ null, %bb.a ], [ %i.bc, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 11 uses
  %.01246 = phi i64 [ 0, %bb.a ], [ %i.be, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 5 uses
  %i.h = phi ptr [ null, %bb.a ], [ %i.bd, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 19 uses
  %.not = icmp eq i64 %.01246, 0
end_hunk_0
begin_hunk_1_@_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb:bb.a
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1191
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.b, ptr %3, align 8, !tbaa !1227
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !1189
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !1228
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit

bb.f:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb:bb.a
          to label %.noexc14 unwind label %.loopexit35 ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 3 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !1191
  %4 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.b, ptr %4, align 8, !tbaa !1227
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 0, ptr %i.w, align 8, !tbaa !1189
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.e
end_hunk_2
begin_hunk_3_@_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb:bb.a
.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.noexc14 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.h, %.noexc14 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1229, !alias.scope !1231
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.e
end_hunk_3
begin_hunk_4_@_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb:bb.a
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  store ptr %i.z, ptr %i.c, align 8, !tbaa !1228
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s ; 3 uses
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !1236
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit
end_hunk_4
begin_hunk_5_@_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb:bb.a
bb.j:                                             ; preds = %bb.i
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !1191
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !1227
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %i.ae, ptr %i.ag, align 8, !tbaa !1189
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !1228
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit

bb.k:                                             ; preds = %bb.i
end_hunk_5
begin_hunk_6_@_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 3 uses
  store ptr %i.ab, ptr %i.at, align 8, !tbaa !1191
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ac, ptr %i.au, align 8, !tbaa !1227
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 %i.ae, ptr %i.av, align 8, !tbaa !1189
  %.not10.i.i.i.i.i.i19 = icmp eq ptr %i.h, %i.f
end_hunk_6
begin_hunk_7_@_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb:bb.a
.lr.ph.i.i.i.i.i.i20:                             ; preds = %.noexc29, %.lr.ph.i.i.i.i.i.i20
  %.012.i.i.i.i.i.i21 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i20 ], [ %i.as, %.noexc29 ] ; 2 uses
  %.0911.i.i.i.i.i.i22 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i20 ], [ %i.h, %.noexc29 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i22, i64 24, i1 false), !tbaa.struct !1229, !alias.scope !1237
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i22, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i21, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i23 = icmp eq ptr %i.aw, %i.f
end_hunk_7
begin_hunk_8_@_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb:bb.a
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27

_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i24
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !1228
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.aq ; 3 uses
  store ptr %i.az, ptr %i.d, align 8, !tbaa !1236
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit
end_hunk_8
begin_hunk_9_@llvm.vector.reduce.umax.v2i64
!1224 = !{!1225}
!1225 = distinct !{!1225, !1226, !"_ZN6duckdb9Exception16ConstructMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1226 = distinct !{!1226, !"_ZN6duckdb9Exception16ConstructMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1227 = !{!1186, !1186, i64 0}
!1228 = !{!1200, !1183, i64 8}
!1229 = !{i64 0, i64 8, !1191, i64 8, i64 8, !1227, i64 16, i64 1, !1230}
!1230 = !{!1187, !1187, i64 0}
!1231 = !{!1232, !1234}
!1232 = distinct !{!1232, !1233, !"_ZSt19__relocate_object_aIN6duckdb31ZSTDCompressionBufferCollection10BufferDataES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
end_hunk_9
