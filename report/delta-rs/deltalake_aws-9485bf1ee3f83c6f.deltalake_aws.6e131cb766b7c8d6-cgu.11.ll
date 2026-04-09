inline.NumInlined: 1116
inline.NumDeleted: 605
begin_hunk_0_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted40 = load i64, ptr %i.h, align 8
  %invariant.op = sub i64 1, %i.g
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
end_hunk_0
begin_hunk_1_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted40, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !12
  %i.q = and i8 %i.p, 63
end_hunk_1
begin_hunk_2_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9rVkZwOUgsI_13deltalake_aws:bb.a

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
begin_hunk_3_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.ab, label %.lr.ph98, label %._crit_edge99

.lr.ph94:                                         ; preds = %bb.e, %bb.g
  %.sroa.04.092 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.03.0, %bb.e ] ; 3 uses
  %i.ac = add i64 %.sroa.04.092, %i.n             ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

end_hunk_3
begin_hunk_4_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9rVkZwOUgsI_13deltalake_aws:bb.a
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aw = add i64 %i.ac, %invariant.op            ; 3 uses
  store i64 %i.aw, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

end_hunk_4
