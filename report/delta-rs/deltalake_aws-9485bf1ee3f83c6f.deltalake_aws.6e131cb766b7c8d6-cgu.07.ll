inline.NumInlined: 1538
inline.NumDeleted: 677
begin_hunk_0_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs9rVkZwOUgsI_13deltalake_aws:bb.a
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.u, %.lr.ph.split.preheader.i.i
  %i.al = phi i64 [ %i.ba, %bb.u ], [ 0, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %i.am = sub nuw nsw i64 %i.ah, %i.al            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  %i.ao = icmp samesign ult i64 %i.am, 16
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs9rVkZwOUgsI_13deltalake_aws:bb.a
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
end_hunk_1
begin_hunk_2_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs9rVkZwOUgsI_13deltalake_aws:bb.a
  %.sroa.9.0 = phi i64 [ %i.ba, %bb.v ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ %i.ba, %bb.u ]
  %.sroa.17.0 = phi i8 [ 0, %bb.v ], [ 1, %bb.u ], [ 1, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %i.ba, %bb.v ], [ 0, %bb.u ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.az, %bb.v ], [ %i.ah, %bb.u ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 3 uses
  switch i64 %.sroa.4.1.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.w
end_hunk_2
begin_hunk_3_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.ae:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.dg = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.dh = add i64 %i.ct, %i.dg
  %i.di = add i64 %i.dh, 1                        ; 8 uses
  %.not12.i.i.i.i = icmp ult i64 %i.di, %i.cp
  %.not13.i.i.i.i = icmp ugt i64 %i.di, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not12.i.i.i.i, %.not13.i.i.i.i
end_hunk_3
begin_hunk_4_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.ak:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.fl = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.fm = add i64 %i.ey, %i.fl
  %i.fn = add i64 %i.fm, 1                        ; 8 uses
  %.not12.i.i.i.i.i.i = icmp ult i64 %i.fn, %i.el
  %.not13.i.i.i.i.i.i = icmp ugt i64 %i.fn, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %.not13.i.i.i.i.i.i
end_hunk_4
