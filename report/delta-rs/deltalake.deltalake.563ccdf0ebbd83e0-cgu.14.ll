inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.v, %.lr.ph.split.preheader.i.i
  %i.aj = phi i64 [ %i.ay, %bb.v ], [ 0, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %i.ak = sub nuw i64 %i.ah, %i.aj                ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj ; 2 uses
  %i.am = icmp samesign ult i64 %i.ak, 16
end_hunk_0
begin_hunk_1_@_RINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.av, label %bb.u, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.u:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i
  %i.aw = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.ax = add i64 %i.aj, %i.aw                    ; 4 uses
  %i.ay = add i64 %i.ax, 1                        ; 5 uses
  %.not13.i.i = icmp ugt i64 %i.ay, %i.ah
  %or.cond.i.i.not = icmp ult i64 %i.ax, %i.ah
  br i1 %or.cond.i.i.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  br i1 %.not13.i.i, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i

bb.w:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ax
  %lhsc = load i8, ptr %i.az, align 1
  %i.ba = icmp eq i8 %lhsc, 44
  br i1 %i.ba, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.v
end_hunk_1
begin_hunk_2_@_RINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake:bb.a
  %.pre.i2.i80 = phi i64 [ %i.ay, %bb.w ], [ 0, %bb.v ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 2 uses
  %.promoted176 = phi i64 [ %i.ay, %bb.w ], [ %i.ay, %bb.v ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 2 uses
  %i.bb = phi i1 [ false, %bb.w ], [ true, %bb.v ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.ax, %bb.w ], [ %i.ah, %bb.v ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %i.bc = invoke { ptr, i64 } @_RINvMNtCsbvkFyIu7lgC_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %.sroa.4.1.i)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

end_hunk_2
begin_hunk_3_@_RINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.cj, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i93, label %.lr.ph.split.i.i75

.lr.ph.split.i.i75:                               ; preds = %bb.ac, %.lr.ph.split.i.i75.backedge
  %i.ck = phi i64 [ %i.cz, %.lr.ph.split.i.i75.backedge ], [ %.promoted176, %bb.ac ] ; 3 uses
  %i.cl = sub nuw i64 %i.ah, %i.ck                ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ck ; 2 uses
  %i.cn = icmp samesign ult i64 %i.cl, 16
end_hunk_3
begin_hunk_4_@_RINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.cw, label %bb.af, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i93

bb.af:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i76
  %i.cx = extractvalue { i64, i64 } %.merged.i.i.i77, 1
  %i.cy = add i64 %i.ck, %i.cx                    ; 4 uses
  %i.cz = add i64 %i.cy, 1                        ; 2 uses
  %.not13.i.i90 = icmp ugt i64 %i.cz, %i.ah       ; 2 uses
  %or.cond.i.i91.not = icmp ult i64 %i.cy, %i.ah
  br i1 %or.cond.i.i91.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_4
begin_hunk_5_@_RINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.split.i.i75

bb.ah:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cy
  %lhsc225 = load i8, ptr %i.da, align 1
  %i.db = icmp eq i8 %lhsc225, 44                 ; 2 uses
  %brmerge = or i1 %i.db, %.not13.i.i90
  br i1 %brmerge, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i93.loopexit.split.loop.exit245, label %.lr.ph.split.i.i75.backedge

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i93.loopexit.split.loop.exit245: ; preds = %bb.ah
  %.mux.le = select i1 %i.db, i64 %i.cy, i64 %i.ah
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i93

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i93: ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i93.loopexit.split.loop.exit245, %bb.ag, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i76, %bb.ac
end_hunk_5
begin_hunk_6_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.w, %.lr.ph.split.preheader.i.i
  %i.ak = phi i64 [ %i.az, %bb.w ], [ 0, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %i.al = sub nuw nsw i64 %i.ae, %i.ak            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %i.an = icmp samesign ult i64 %i.al, 16
end_hunk_6
begin_hunk_7_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.aw, label %bb.v, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

bb.v:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i
  %i.ax = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.ay = add i64 %i.ak, %i.ax                    ; 4 uses
  %i.az = add i64 %i.ay, 1                        ; 5 uses
  %.not13.i.i = icmp ugt i64 %i.az, %i.ae
  %or.cond.i.i.not = icmp ult i64 %i.ay, %i.ae
  br i1 %or.cond.i.i.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  br i1 %.not13.i.i, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i

bb.x:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ay
  %lhsc = load i8, ptr %i.ba, align 1
  %i.bb = icmp eq i8 %lhsc, 46
  br i1 %i.bb, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.w
end_hunk_7
begin_hunk_8_@_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.9.0 = phi i64 [ %i.az, %bb.x ], [ %i.ae, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ], [ %i.az, %bb.w ]
  %.sroa.17.0 = phi i8 [ 0, %bb.x ], [ 1, %bb.w ], [ 1, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %i.az, %bb.x ], [ 0, %bb.w ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.ay, %bb.x ], [ %i.ae, %bb.w ], [ %i.ae, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 3 uses
  switch i64 %.sroa.4.1.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.y
end_hunk_8
begin_hunk_9_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable42___pymethod___datafusion_table_provider____:bb.a
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.backedge, %bb.aa
  %i.dd = phi i64 [ 0, %bb.aa ], [ %i.ds, %.lr.ph.split.i.i.i.i.backedge ] ; 3 uses
  %i.de = sub nuw i64 %i.dc, %i.dd                ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd ; 2 uses
  %i.dg = icmp samesign ult i64 %i.de, 16
end_hunk_9
begin_hunk_10_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable42___pymethod___datafusion_table_provider____:bb.a
  br i1 %i.dp, label %bb.ad, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i

bb.ad:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.dq = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1
  %i.dr = add i64 %i.dq, %i.dd                    ; 4 uses
  %i.ds = add i64 %i.dr, 1                        ; 2 uses
  %.not13.i.i.i.i = icmp ugt i64 %i.ds, %i.dc     ; 2 uses
  %or.cond.i.i.not.i.i = icmp ult i64 %i.dr, %i.dc
  br i1 %or.cond.i.i.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not13.i.i.i.i, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %.lr.ph.split.i.i.i.i.backedge

bb.af:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dr
  %lhsc.i.i = load i8, ptr %i.dt, align 1, !alias.scope !8342, !noalias !8326
  %i.du = icmp eq i8 %lhsc.i.i, 46                ; 2 uses
  %brmerge.i.i = or i1 %.not13.i.i.i.i, %i.du
end_hunk_10
begin_hunk_11_@_RNvMsn_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTable42___pymethod___datafusion_table_provider____:bb.a
  br label %.lr.ph.split.i.i.i.i

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.split.loop.exit.i: ; preds = %bb.af
  %spec.select = select i1 %i.du, i64 %i.dr, i64 %i.dc
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.ae, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.split.loop.exit.i
end_hunk_11
