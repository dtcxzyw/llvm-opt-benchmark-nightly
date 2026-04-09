inline.NumInlined: 561
inline.NumDeleted: 240
begin_hunk_0_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted40 = load i64, ptr %i.h, align 8
  %invariant.op = sub i64 1, %i.g
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
end_hunk_0
begin_hunk_1_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsj34PGqTgg0L_16deltalake_lakefs:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted40, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !6
  %i.q = and i8 %i.p, 63
end_hunk_1
begin_hunk_2_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsj34PGqTgg0L_16deltalake_lakefs:bb.a

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
begin_hunk_3_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %i.ab, label %.lr.ph98, label %._crit_edge99

.lr.ph94:                                         ; preds = %bb.e, %bb.g
  %.sroa.04.092 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.03.0, %bb.e ] ; 3 uses
  %i.ac = add i64 %.sroa.04.092, %i.n             ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

end_hunk_3
begin_hunk_4_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aw = add i64 %i.ac, %invariant.op            ; 3 uses
  store i64 %i.aw, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

end_hunk_4
begin_hunk_5_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.u, %.lr.ph.split.preheader.i.i
  %i.al = phi i64 [ %i.ba, %bb.u ], [ 0, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %i.am = sub nuw nsw i64 %i.ah, %i.al            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  %i.ao = icmp samesign ult i64 %i.am, 16
end_hunk_5
begin_hunk_6_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %i.ax, label %bb.t, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.t:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i
  %i.ay = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.az = add i64 %i.al, %i.ay                    ; 4 uses
  %i.ba = add i64 %i.az, 1                        ; 5 uses
  %.not13.i.i = icmp ugt i64 %i.ba, %i.ah
  %or.cond.i.i.not = icmp ult i64 %i.az, %i.ah
  br i1 %or.cond.i.i.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  br i1 %.not13.i.i, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.az
  %lhsc = load i8, ptr %i.bb, align 1
  %i.bc = icmp eq i8 %lhsc, 46
  br i1 %i.bc, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.u
end_hunk_6
begin_hunk_7_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.sroa.9.0 = phi i64 [ %i.ba, %bb.v ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ %i.ba, %bb.u ]
  %.sroa.17.0 = phi i8 [ 0, %bb.v ], [ 1, %bb.u ], [ 1, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %i.ba, %bb.v ], [ 0, %bb.u ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.az, %bb.v ], [ %i.ah, %bb.u ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 3 uses
  switch i64 %.sroa.4.1.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.w
end_hunk_7
begin_hunk_8_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCsj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.ae:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.dg = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.dh = add i64 %i.ct, %i.dg
  %i.di = add i64 %i.dh, 1                        ; 8 uses
  %.not12.i.i.i.i = icmp ult i64 %i.di, %i.cp
  %.not13.i.i.i.i = icmp ugt i64 %i.di, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not12.i.i.i.i, %.not13.i.i.i.i
end_hunk_8
begin_hunk_9_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCsj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.ak:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.fl = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.fm = add i64 %i.ey, %i.fl
  %i.fn = add i64 %i.fm, 1                        ; 8 uses
  %.not12.i.i.i.i.i.i = icmp ult i64 %i.fn, %i.el
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.fn, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %.not13.i.i.i.i.i.i
end_hunk_9
