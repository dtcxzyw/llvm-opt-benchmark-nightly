inline.NumInlined: 5790
inline.NumDeleted: 1347
begin_hunk_0_@_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_:bb.a
  %.sroa.2.1 = phi i32 [ %i.t, %bb.d ], [ %i.i, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !186
  %5 = or i32 %i.h, %i.v
  %.not49 = icmp eq i32 %5, 0
  %i.w = select i1 %.not49, i32 0, i32 536870912
  %i.x = and i32 %.sroa.2.1, -536870914
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = or disjoint i32 %i.y, 1
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_:bb.a
  %.sroa.2.2 = phi i32 [ %i.aa, %bb.f ], [ %i.i, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !186
  %6 = or i32 %i.h, %i.ac
  %.not = icmp eq i32 %6, 0
  %i.ad = select i1 %.not, i32 0, i32 536870912
  %i.ae = and i32 %.sroa.2.2, -536870915
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = or disjoint i32 %i.af, 2
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEwEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_:bb.a
  %.sroa.2.1 = phi i32 [ %i.t, %bb.d ], [ %i.i, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1362
  %5 = or i32 %i.h, %i.v
  %.not49 = icmp eq i32 %5, 0
  %i.w = select i1 %.not49, i32 0, i32 536870912
  %i.x = and i32 %.sroa.2.1, -536870914
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = or disjoint i32 %i.y, 1
end_hunk_2
begin_hunk_3_@_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEwEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_:bb.a
  %.sroa.2.2 = phi i32 [ %i.aa, %bb.f ], [ %i.i, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !1362
  %6 = or i32 %i.h, %i.ac
  %.not = icmp eq i32 %6, 0
  %i.ad = select i1 %.not, i32 0, i32 536870912
  %i.ae = and i32 %.sroa.2.2, -536870915
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = or disjoint i32 %i.af, 2
end_hunk_3
