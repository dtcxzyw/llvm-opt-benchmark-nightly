Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/all_about_inserts_mysql-03dd2d5d4897df2c.all_about_inserts_mysql.b41cd69e42d050c7-cgu.1?download=true
inline.NumInlined: 208
inline.NumDeleted: 133
begin_hunk_0_@_RNvXs0_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB5_10DebugQueryRINtNtB7_16insert_statement15InsertStatementNtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users5tableINtNtB1i_12batch_insert11BatchInsertINtNtCs40k4W9msRzi_5alloc3vec3VecINtB1i_12ValuesClauseTINtNtB9_10insertable28DefaultableColumnInsertValueINtB4u_17ColumnInsertValueNtNtB1Y_7columns4nameINtNtNtB9_10expression5bound5BoundNtNtB9_9sql_types4TextRReEEEIB4s_IB5g_NtB5H_10hair_colorIB61_INtB6A_8NullableB6y_EB6U_EEEEB1W_EEB1W_uKb0_EENtNtNtB9_5mysql7backend5MysqlENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB22_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtCsjRvGck33osM_6diesel13query_builder11debug_queryINtB5_10DebugQueryRINtNtB7_16insert_statement15InsertStatementNtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users5tableNtB1i_13DefaultValuesENtNtNtB9_5mysql7backend5MysqlENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB22_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = tail call fastcc noundef zeroext i1 @_RINvNtNtCsjRvGck33osM_6diesel13query_builder11debug_query9fmt_queryNtNtNtB6_5mysql7backend5MysqlECsfsJAUsNanlj_23all_about_inserts_mysql(ptr noundef nonnull %i.a, ptr nonnull @_RNvXs0_NtCsjRvGck33osM_6diesel13query_builderRINtNtB5_16insert_statement15InsertStatementNtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users5tableNtBL_13DefaultValuesEINtB5_13QueryFragmentNtNtNtB7_5mysql7backend5MysqlE8walk_astB1v_, ptr nonnull @_RNvYRINtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement15InsertStatementNtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users5tableNtB6_13DefaultValuesEINtB8_13QueryFragmentNtNtNtBa_5mysql7backend5MysqlE6to_sqlB1p_, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noundef nonnull @_RNvNtNtCsjRvGck33osM_6diesel13query_builder11debug_query5debug)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement12batch_insertINtB5_11BatchInsertINtNtCs40k4W9msRzi_5alloc3vec3VecINtB7_12ValuesClauseINtNtBb_10insertable17ColumnInsertValueNtNtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users7columns4nameRINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types4TextReEENtB38_5tableEEB5e_uKb0_EINtB2u_22CanInsertInSingleQueryNtNtNtBb_5mysql7backend5MysqlE14rows_to_insertB3c_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = icmp ult i64 %.val, 1152921504606846976
  tail call void @llvm.assume(i1 %i.b)
  %i.c = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.val, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement12batch_insertINtB5_11BatchInsertINtNtCs40k4W9msRzi_5alloc3vec3VecINtB7_12ValuesClauseINtNtBb_10insertable28DefaultableColumnInsertValueINtB2u_17ColumnInsertValueNtNtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users7columns4nameRINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types4TextReEEENtB3J_5tableEEB5Q_uKb0_EINtB2u_22CanInsertInSingleQueryNtNtNtBb_5mysql7backend5MysqlE14rows_to_insertB3N_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = icmp ult i64 %.val, 1152921504606846976
  tail call void @llvm.assume(i1 %i.b)
  %i.c = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.val, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement12batch_insertINtB5_11BatchInsertINtNtCs40k4W9msRzi_5alloc3vec3VecINtB7_12ValuesClauseTINtNtBb_10insertable17ColumnInsertValueNtNtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users7columns4nameRINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types4TextReEEIB2t_NtB37_10hair_colorRIB4i_INtB4R_8NullableB4P_EB5b_EEENtB39_5tableEEB6a_uKb0_EINtB2v_22CanInsertInSingleQueryNtNtNtBb_5mysql7backend5MysqlE14rows_to_insertB3d_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = icmp ult i64 %.val, 576460752303423488
  tail call void @llvm.assume(i1 %i.b)
  %i.c = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.val, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement12batch_insertINtB5_11BatchInsertINtNtCs40k4W9msRzi_5alloc3vec3VecINtB7_12ValuesClauseTINtNtBb_10insertable17ColumnInsertValueNtNtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users7columns4nameRINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types4TextReEEINtB2v_28DefaultableColumnInsertValueIB2t_NtB37_10hair_colorRIB4i_INtB4R_8NullableB4P_EB5b_EEEENtB39_5tableEEB6M_uKb0_EINtB2v_22CanInsertInSingleQueryNtNtNtBb_5mysql7backend5MysqlE14rows_to_insertB3d_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = icmp ult i64 %.val, 576460752303423488
  tail call void @llvm.assume(i1 %i.b)
  %i.c = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.val, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel13query_builder16insert_statement12batch_insertINtB5_11BatchInsertINtNtCs40k4W9msRzi_5alloc3vec3VecINtB7_12ValuesClauseTINtNtBb_10insertable28DefaultableColumnInsertValueINtB2v_17ColumnInsertValueNtNtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users7columns4nameINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types4TextRReEEEIB2t_IB3h_NtB3I_10hair_colorIB4S_INtB5r_8NullableB5p_EB5L_EEEENtB3K_5tableEEB6R_uKb0_EINtB2v_22CanInsertInSingleQueryNtNtNtBb_5mysql7backend5MysqlE14rows_to_insertB3O_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = icmp ult i64 %.val, 576460752303423488
  tail call void @llvm.assume(i1 %i.b)
  %i.c = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.val, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_5Debug3fmtCsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRDNtNtCseMV7gzmhUlG_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtCseMV7gzmhUlG_10serde_core2deDNtB5_8ExpectedEL_NtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_5mysql10connection15MysqlConnectionE20rollback_transactionCsfsJAUsNanlj_23all_about_inserts_mysql(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 53 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !range !10, !noundef !3 ; 2 uses
  switch i8 %i.k, label %bb.c [
    i8 -1, label %bb.b
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.i, align 8, !range !11, !noundef !3 ; 2 uses
  %i.m = icmp eq i32 %i.l, 1                      ; 2 uses
  br i1 %i.m, label %bb.f, label %.split

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql.exit96, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql.exit, %bb.d, %bb.b
  ret void

.split:                                           ; preds = %bb.c
  %i.n = add i32 %i.l, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.n, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @15, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.014.0.copyload15 = load i64, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload17 = load ptr, ptr %.sroa.3.0..sroa_idx16, align 8
  %.sroa.418.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.418.0.copyload20 = load i64, ptr %.sroa.418.0..sroa_idx19, align 8
  %.pre = load i8, ptr %i.j, align 1, !range !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.split
  %i.o = phi i8 [ %.pre, %.split ], [ %i.k, %bb.c ]
  %.sroa.418.0 = phi i64 [ %.sroa.418.0.copyload20, %.split ], [ 8, %bb.c ]
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload17, %.split ], [ @14, %bb.c ]
  %.sroa.014.0 = phi i64 [ %.sroa.014.0.copyload15, %.split ], [ -1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !range !13, !noundef !3
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.014.0, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.418.0, ptr %.sroa.418.0..sroa_idx, align 8
  %.not83 = icmp eq i8 %i.o, 2
  br i1 %.not83, label %bb.g, label %bb.j, !prof !4

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef align 8 dereferenceable(24) %i.h) #18
          to label %common.resume unwind label %bb.al

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.i, align 8, !range !11, !noundef !3
  %i.u = load ptr, ptr %1, align 8, !alias.scope !219, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !219, !nonnull !3, !align !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.i = select i1 %.not.i, ptr @4, ptr %i.w
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.x, ptr %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.t, ptr %i.y, align 4
  store i32 7, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !3, !nonnull !3
  invoke void %i.aa(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !3
  %i.ac = load i64, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql10connectionNtB4_15MysqlConnectionNtNtB8_10connection16SimpleConnection13batch_execute(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ad = load i64, ptr %i.c, align 8, !range !9, !noundef !3
  %.not85 = icmp eq i64 %i.ad, -1
  br i1 %.not85, label %bb.n, label %bb.ae

bb.m:                                             ; preds = %bb.aj, %bb.t, %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef align 8 dereferenceable(24) %i.h) #18
          to label %common.resume unwind label %bb.al

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = load i8, ptr %i.j, align 1, !range !10, !noundef !3
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 -9223372036854775799, ptr %0, align 8
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvMs0_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_29ValidTransactionManagerStatus24change_transaction_depth(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.i, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.b, align 8, !range !9, !noundef !3 ; 2 uses
  %.not86 = icmp eq i64 %i.ah, -1                 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -9223372036854775800
  %or.cond = and i1 %i.m, %i.ai
  %or.cond92 = or i1 %.not86, %or.cond
  br i1 %or.cond92, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %.not86, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef align 8 dereferenceable(32) %i.b)
          to label %bb.u unwind label %bb.m

bb.u:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.ah, %bb.u
  %i.aj = load i64, ptr %i.h, align 8, !range !8, !alias.scope !220, !noundef !3
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfsJAUsNanlj_23all_about_inserts_mysql.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.m, %bb.ac, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.ac ], [ %i.al, %bb.x ], [ %i.ae, %bb.m ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfsJAUsNanlj_23all_about_inserts_mysql.exit.i: ; preds = %bb.w
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql.exit: ; preds = %bb.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfsJAUsNanlj_23all_about_inserts_mysql.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.z:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ak, %bb.z
  %i.an = load i64, ptr %i.h, align 8, !range !8, !alias.scope !221, !noundef !3
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql.exit96, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfsJAUsNanlj_23all_about_inserts_mysql.exit.i95 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfsJAUsNanlj_23all_about_inserts_mysql.exit.i95: ; preds = %bb.ab
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql.exit96

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsfsJAUsNanlj_23all_about_inserts_mysql.exit96: ; preds = %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfsJAUsNanlj_23all_about_inserts_mysql.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ar = load i8, ptr %i.j, align 1, !range !10, !noundef !3
  switch i8 %i.ar, label %bb.ag [
    i8 -1, label %bb.af
    i8 2, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ag
  store i8 -1, ptr %i.j, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.as = load i32, ptr %i.i, align 8, !range !11, !noundef !3 ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  br i1 %i.at, label %bb.ai, label %bb.af

bb.ah:                                            ; preds = %bb.ae, %bb.ai, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.ai:                                            ; preds = %bb.ag
  %i.au = add i32 %i.as, -1
  store i32 %i.au, ptr %i.i, align 8
  store i8 1, ptr %i.p, align 4
  br i1 %i.r, label %bb.aj, label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %bb.ak unwind label %bb.m

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.al:                                            ; preds = %bb.m, %bb.h
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCsfsJAUsNanlj_23all_about_inserts_mysql6schema5users7columnsNtB5_2idINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB1m_5mysql7backend5MysqlE8walk_astBb_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %2, align 8, !range !14, !noundef !3 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !13, !noundef !3
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = icmp eq i64 %i.c, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.b
  call void @_RNvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB2_7AstPassNtNtNtB6_5mysql7backend5MysqlE15push_identifierCsfsJAUsNanlj_23all_about_inserts_mysql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 2)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %.thread
  %.sroa.13.0 = phi ptr [ %i.f, %.thread ], [ %i.k, %bb.e ], [ undef, %bb.c ]
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.0 = load ptr, ptr %.sroa.8.0.in, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
