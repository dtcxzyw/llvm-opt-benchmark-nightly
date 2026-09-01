Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.08?download=true
inline.NumInlined: 3953
inline.NumDeleted: 1700
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet10name_to_id:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %.sroa.4.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i16 [ %.sroa.03.0.copyload, %bb.b ], [ -1, %bb.a ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i48
  %.sroa.3.0.insert.shift = shl nuw i48 %.sroa.3.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet11contains_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs3_NtCs96Uix8yqi9Q_8indexmap3mapINtB6_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE12get_index_ofBO_EB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %1)
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = icmp eq i64 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet11get_by_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef align 2 ptr @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB28_E12get_by_righteECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 ptr @_RINvMs3_NtCs96Uix8yqi9Q_8indexmap3mapINtB6_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE3getBO_EB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i16, i16 } @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet12id_to_ord_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = tail call noundef align 2 ptr @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtBP_8ColumnIdNtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1N_E11get_by_leftBN_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %1) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %i.b, align 2, !noundef !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i16 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i16 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.e = insertvalue { i16, i16 } %i.d, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet13contains_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = tail call noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc4sync3ArceEEIBP_NtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateE12contains_keyINtBR_7WrappereEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet13get_by_ord_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = tail call noundef align 2 ptr @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtBP_8ColumnIdNtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1N_E12get_by_rightB1z_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef align 8 ptr @_RINvMs3_NtCs96Uix8yqi9Q_8indexmap3mapINtB6_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE3getBO_EB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i16, i16 } @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet14name_to_ord_id(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef align 2 ptr @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB28_E12get_by_righteECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = tail call noundef align 2 ptr @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtBP_8ColumnIdNtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1N_E11get_by_leftBN_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.c, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b) ; 2 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.4.0 = phi i16 [ undef, %bb.a ], [ %i.g, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i16 [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.f = insertvalue { i16, i16 } %i.e, i16 %.sroa.4.0, 1
  ret { i16, i16 } %i.f

bb.d:                                             ; preds = %bb.b
  %i.g = load i16, ptr %i.d, align 2, !noundef !9
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet14ord_id_to_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = tail call noundef align 2 ptr @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtBP_8ColumnIdNtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1N_E12get_by_rightB1z_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = tail call noundef align 8 ptr @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB28_E11get_by_leftBN_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.c, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.b) ; 3 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %i.i, %bb.d ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.g, %bb.d ]
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.f

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !9
  %i.j = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet17definition_exists(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [6 x i8], align 2                 ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val = load i64, ptr %1, align 8, !range !85, !noundef !9 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val5, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0                     ; 3 uses
  %.sink14.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sink14.sroa.gep15 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  switch i64 %.val, label %default.unreachable7 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable7:                             ; preds = %bb.m, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.e, label %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.f, label %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.g, label %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.4.0.in.i = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %.sroa.0.0.i = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %.sroa.4.0.i = load i64, ptr %.sroa.4.0.in.i, align 8, !noundef !9 ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.4.0.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = invoke noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc4sync3ArceEEIBP_NtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateE12contains_keyINtBR_7WrappereEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %.sroa.4.0.i)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = atomicrmw sub ptr %.sroa.0.0.i, i64 1 release, align 8, !noalias !5489
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.t

bb.j:                                             ; preds = %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit
  %i.s = atomicrmw sub ptr %.sroa.0.0.i, i64 1 release, align 8, !noalias !5494
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit6

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit6: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %switch.idx.mult = shl nuw nsw i64 %.val, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.val5, i64 %switch.idx.mult
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.02.0 = load i16, ptr %i.v, align 2, !range !2355, !noundef !9
  %i.w = trunc nuw i16 %.sroa.02.0 to i1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit6
  %switch.idx.mult11 = shl nuw nsw i64 %.val, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.val5, i64 %switch.idx.mult11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 34
  %.sroa.7.0 = load i16, ptr %i.y, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %.sroa.7.0, ptr %i.d, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aa = call noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCsaaj5M71uUq9_5bimap3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEIBP_NtB1n_16ColumnIdentifierENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateE12contains_keyINtBR_7WrapperB1l_EECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.z, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %2 = and i1 %i.o, %i.aa
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit6, %bb.l
  %.sroa.0.0 = phi i1 [ %2, %bb.l ], [ %i.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit6 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  switch i64 %.val, label %default.unreachable7 [
    i64 0, label %bb.p
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %i.ac = load i16, ptr %i.ab, align 8, !noundef !9
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %i.ae = load i16, ptr %i.ad, align 8, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %.val5, i64 34
  %i.ag = load i16, ptr %i.af, align 2, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.ae, ptr %i.ah, align 2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o
  %.sink14.sroa.phi = phi ptr [ %.sink14.sroa.gep, %bb.o ], [ %.sink14.sroa.gep15, %bb.n ]
  %.sink = phi i16 [ %i.ag, %bb.o ], [ %i.ac, %bb.n ]
  %.sink9.ph = phi i16 [ 2, %bb.o ], [ 1, %bb.n ]
  store i16 %.sink, ptr %.sink14.sroa.phi, align 2
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.m
  %.sink9 = phi i16 [ 0, %bb.m ], [ %.sink9.ph, %.sink.split ]
  store i16 %.sink9, ptr %i.e, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5499
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = call noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCsaaj5M71uUq9_5bimap3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEIBP_INtNtCscdodAO9FK5_5alloc4sync3ArceEENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateE12contains_keyINtBR_7WrapperB1l_EECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ai, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.e) ; 2 uses
  %i.ak = zext i1 %i.aj to i8
  store i8 %i.ak, ptr %i.b, align 1, !noalias !5499
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = call noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapINtNtCsaaj5M71uUq9_5bimap3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEIBP_NtB1n_8ColumnIdENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateE12contains_keyINtBR_7WrapperB1l_EECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.al, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.e)
  %i.an = call { i64, i64 } @_RINvMs3_NtCs96Uix8yqi9Q_8indexmap3mapINtB6_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE12get_index_ofBO_EB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.e)
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = icmp eq i64 %i.ao, 1                    ; 4 uses
  %i.aq = zext i1 %i.ap to i8
  store i8 %i.aq, ptr %i.c, align 1, !noalias !5499
  %i.ar = xor i1 %i.aj, %i.ap
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !2315

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5499
  store ptr %i.b, ptr %i.a, align 8, !noalias !5499
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !5499
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.as, align 8, !noalias !5499
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !5499
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @166, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #32
  unreachable

bb.r:                                             ; preds = %bb.p
  %.not.i = xor i1 %i.am, true
  %or.cond.i = or i1 %i.ap, %.not.i
  br i1 %or.cond.i, label %_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet9id_exists.exit, label %bb.s, !prof !5503

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @168, ptr noundef nonnull inttoptr (i64 97 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #32
  unreachable

_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet9id_exists.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.1 = and i1 %.sroa.0.0, %i.ap
  ret i1 %.sroa.0.1

bb.t:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define noundef i16 @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet25get_and_increment_next_id(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(320) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !9
  %i.c = tail call noundef i16 @_RNvXs1A_CsbFlE7Gjht9i_12influxdb3_idNtB6_8ColumnIdNtB6_9CatalogId4next(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a)
  store i16 %i.c, ptr %i.a, align 8
  ret i16 %i.b
}

; Function Attrs: nonlazybind uwtable
define { i16, i16 } @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet29try_get_and_increment_next_id(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(320) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %.not = icmp eq i16 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i16 @_RNvXs1A_CsbFlE7Gjht9i_12influxdb3_idNtB6_8ColumnIdNtB6_9CatalogId4next(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a)
  store i16 %i.c, ptr %i.a, align 8, !alias.scope !5504
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i16 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.e = insertvalue { i16, i16 } %i.d, i16 %i.b, 1
  ret { i16, i16 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 3 uses
  %i.c = alloca [64 x i8], align 8                ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @108, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs3L39Jvi82fL_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull align 8 @_RNvNtCs3L39Jvi82fL_5ahash12random_state11RAND_SOURCE)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.m = load ptr, ptr %i.l, align 8, !noalias !5507, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !5507, !nonnull !9, !align !71, !noundef !9
  %i.p = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull align 8 @_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc7 unwind label %bb.c    ; 2 uses

.noexc7:                                          ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !9, !noalias !5507, !nonnull !9
  %i.s = invoke noundef i64 %i.r(ptr noundef nonnull %i.m)
          to label %.noexc8 unwind label %bb.c, !inline_history !5510

.noexc8:                                          ; preds = %.noexc7
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  invoke void @_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, i64 noundef %i.s)
          to label %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.d ], [ %i.u, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionINtNtB4_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEEEB2a_(ptr noalias noundef align 8 dereferenceable(56) %i.k) #35
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %.noexc12, %.noexc11, %.noexc10, %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit, %.noexc8, %.noexc7, %.noexc, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit: ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.v = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs3L39Jvi82fL_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull align 8 @_RNvNtCs3L39Jvi82fL_5ahash12random_state11RAND_SOURCE)
          to label %.noexc10 unwind label %bb.c   ; 2 uses

.noexc10:                                         ; preds = %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit
  %i.w = load ptr, ptr %i.v, align 8, !noalias !5511, !nonnull !9, !noundef !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !5511, !nonnull !9, !align !71, !noundef !9
  %i.z = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull align 8 @_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc11 unwind label %bb.c   ; 2 uses

.noexc11:                                         ; preds = %.noexc10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !9, !noalias !5511, !nonnull !9
  %i.ac = invoke noundef i64 %i.ab(ptr noundef nonnull %i.w)
          to label %.noexc12 unwind label %bb.c, !inline_history !5510

.noexc12:                                         ; preds = %.noexc11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  invoke void @_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, i64 noundef %i.ac)
          to label %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit14 unwind label %bb.c

_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit14: ; preds = %.noexc12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @108, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @108, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs3L39Jvi82fL_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull align 8 @_RNvNtCs3L39Jvi82fL_5ahash12random_state11RAND_SOURCE)
          to label %.noexc15 unwind label %bb.d   ; 2 uses

.noexc15:                                         ; preds = %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit14
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !5514, !nonnull !9, !noundef !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !5514, !nonnull !9, !align !71, !noundef !9
  %i.al = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull align 8 @_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc16 unwind label %bb.d   ; 2 uses

.noexc16:                                         ; preds = %.noexc15
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !9, !noalias !5514, !nonnull !9
  %i.ao = invoke noundef i64 %i.an(ptr noundef nonnull %i.ai)
          to label %.noexc17 unwind label %bb.d, !inline_history !5510

.noexc17:                                         ; preds = %.noexc16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  invoke void @_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap, i64 noundef %i.ao)
          to label %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit19 unwind label %bb.d

bb.d:                                             ; preds = %.noexc22, %.noexc21, %.noexc20, %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit19, %.noexc17, %.noexc16, %.noexc15, %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit14
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaaj5M71uUq9_5bimap4hash9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB2A_EECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(128) %i.j) #35
          to label %bb.b unwind label %bb.e

_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit19: ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ar = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs3L39Jvi82fL_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull align 8 @_RNvNtCs3L39Jvi82fL_5ahash12random_state11RAND_SOURCE)
          to label %.noexc20 unwind label %bb.d   ; 2 uses

.noexc20:                                         ; preds = %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit19
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !5517, !nonnull !9, !noundef !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !5517, !nonnull !9, !align !71, !noundef !9
  %i.av = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull align 8 @_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc21 unwind label %bb.d   ; 2 uses

.noexc21:                                         ; preds = %.noexc20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !9, !noalias !5517, !nonnull !9
  %i.ay = invoke noundef i64 %i.ax(ptr noundef nonnull %i.as)
          to label %.noexc22 unwind label %bb.d, !inline_history !5510

.noexc22:                                         ; preds = %.noexc21
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  invoke void @_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.az, i64 noundef %i.ay)
          to label %_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit24 unwind label %bb.d

_RNvMs1_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomState3new.exit24: ; preds = %.noexc22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @108, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @108, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bd, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
end_hunk_0
