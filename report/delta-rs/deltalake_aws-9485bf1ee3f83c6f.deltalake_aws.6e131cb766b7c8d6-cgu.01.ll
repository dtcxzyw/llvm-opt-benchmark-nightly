inline.NumInlined: 1838
inline.NumDeleted: 674
begin_hunk_0_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ef, %.lr.ph.i20.i.i.i.i
  %i.mu = phi i64 [ %.promoted.i17.i.i.i.i, %.lr.ph.i20.i.i.i.i ], [ %i.ne, %bb.ef ] ; 5 uses
  %i.mv = phi i64 [ %i.mm, %.lr.ph.i20.i.i.i.i ], [ %i.nf, %bb.ef ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !alias.scope !2659, !noalias !2665, !noundef !3
end_hunk_0
begin_hunk_1_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  br label %bb.ef

.lr.ph370:                                        ; preds = %.preheader97.i.i.i.i.preheader, %.preheader97.i.i.i.i
  %.sroa.04.0.i24.i.i.i.i369 = phi i64 [ %i.nh, %.preheader97.i.i.i.i ], [ %.fr99.i.i.i, %.preheader97.i.i.i.i.preheader ] ; 3 uses
  %i.nq = add i64 %.sroa.04.0.i24.i.i.i.i369, %i.mu ; 3 uses
  %i.nr = icmp ult i64 %i.nq, %i.ln
  br i1 %i.nr, label %bb.eh, label %bb.ei

end_hunk_1
begin_hunk_2_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  br label %.invoke.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %i.nx = add i64 %i.nq, %invariant.op436
  br label %bb.ef

bb.ek:                                            ; preds = %bb.dv
end_hunk_2
begin_hunk_3_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  br label %bb.el

bb.el:                                            ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i14.i.i.i.i
  %i.og = phi i64 [ %.promoted.i11.i.i.i.i, %.lr.ph.i14.i.i.i.i ], [ %.ph76.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 5 uses
  %i.oh = phi i64 [ %i.li, %.lr.ph.i14.i.i.i.i ], [ %.sink.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 3 uses
  %i.oi = phi i64 [ %i.ny, %.lr.ph.i14.i.i.i.i ], [ %i.or, %.sink.split.i.i.i.i.i ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.oi
end_hunk_3
begin_hunk_4_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  br i1 %i.ou, label %.lr.ph367, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph365:                                        ; preds = %bb.en, %bb.eo
  %.sroa.04.0.i.i.i.i.i364 = phi i64 [ %i.ot, %bb.eo ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.en ] ; 3 uses
  %i.ov = add i64 %.sroa.04.0.i.i.i.i.i364, %i.og ; 3 uses
  %i.ow = icmp ult i64 %i.ov, %i.ln
  br i1 %i.ow, label %bb.es, label %bb.et

end_hunk_4
begin_hunk_5_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version0Bb_:bb.a
  br label %.invoke.i.i.i

bb.eu:                                            ; preds = %bb.es
  %i.pm = add i64 %i.ov, %invariant.op
  br label %.sink.split.i.i.i.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i, %bb.ef, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i.i.i.i, %bb.eb, %bb.ek, %.preheader.i.i.i.i, %bb.ec, %bb.ea, %bb.dr, %bb.do, %.preheader.i4.i.i.i.i
end_hunk_5
