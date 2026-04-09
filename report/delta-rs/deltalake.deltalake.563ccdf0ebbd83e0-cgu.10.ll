inline.NumInlined: 6556
inline.NumDeleted: 2964
begin_hunk_0_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted40 = load i64, ptr %i.h, align 8
  %invariant.op = sub i64 1, %i.g
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
end_hunk_0
begin_hunk_1_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted40, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !4
  %i.q = and i8 %i.p, 63
end_hunk_1
begin_hunk_2_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.k, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph76 = phi i64 [ %i.aq, %bb.o ], [ %i.aw, %bb.r ], [ %i.v, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.w = phi i64 [ %i.l, %bb.r ], [ %i.l, %bb.d ], [ %i.l, %bb.o ], [ %.sink, %.sink.split ]
  %i.x = phi i64 [ %i.aw, %bb.r ], [ %i.v, %bb.d ], [ %i.aq, %bb.o ], [ %.ph76, %.sink.split ] ; 2 uses
  %i.y = add i64 %i.b, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %._crit_edge
end_hunk_2
begin_hunk_3_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.ab, label %.lr.ph98, label %._crit_edge99

.lr.ph94:                                         ; preds = %bb.e, %bb.g
  %.sroa.04.092 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.03.0, %bb.e ] ; 3 uses
  %i.ac = add i64 %.sroa.04.092, %i.n             ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

end_hunk_3
begin_hunk_4_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aw = add i64 %i.ac, %invariant.op            ; 3 uses
  store i64 %i.aw, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

end_hunk_4
begin_hunk_5_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapIB1k_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2G_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3A_s_0ENCB3A_s0_0ENCB3A_s1_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNvB5x_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0ECs7p2uQeJxui2_9deltalake:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.ev = load i32, ptr %i.eu, align 4, !alias.scope !5661, !noalias !5662, !noundef !4
  %i.ew = zext i32 %i.ev to i64
  %i.ex = add nsw i32 %i.et, %.sroa.05.0.i.i.i.i.i.i.i.i
  %2 = sub nsw i32 %i.ex, %i.eo
  %3 = add nsw i32 %2, %i.eq
  %i.ey = add nsw i32 %3, %i.er
  %narrow.i.i.i.i.i.i.i = add nsw i32 %i.ey, -719163
  %i.ez = sext i32 %narrow.i.i.i.i.i.i.i to i64
  %i.fa = mul nsw i64 %i.ez, 86400
  %i.fb = add nsw i64 %i.fa, %i.ew
end_hunk_5
begin_hunk_6_@_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10filter_mapINtB5_9FilterMapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB33_5ErrorEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00NCB40_s5_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake:bb.a
  %i.ch = and i32 %i.cg, 511
  %i.ci = load i32, ptr %i.am, align 4, !alias.scope !10564, !noalias !10556, !noundef !4
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add nsw i32 %i.ch, %.sroa.05.0.i.i.i
  %3 = sub nsw i32 %i.ck, %i.cc
  %4 = add nsw i32 %3, %i.ce
  %i.cl = add nsw i32 %4, %i.cf
  %narrow.i.i = add nsw i32 %i.cl, -719163
  %i.cm = sext i32 %narrow.i.i to i64
  %i.cn = mul nsw i64 %i.cm, 86400
  %i.co = add nsw i64 %i.cn, %i.cj
end_hunk_6
begin_hunk_7_@_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array21get_array_memory_sizeCs7p2uQeJxui2_9deltalake:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_21get_array_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !4
  %1 = add i64 %i.b, %.sroa.03.0
  %i.e = add i64 %1, 112                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not6 = icmp eq ptr %i.g, null
end_hunk_7
begin_hunk_8_@_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArrayxENtB7_5Array21get_array_memory_sizeCs7p2uQeJxui2_9deltalake:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_21get_array_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !4
  %1 = add i64 %i.b, %.sroa.03.0
  %i.e = add i64 %1, 112                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not6 = icmp eq ptr %i.g, null
end_hunk_8
