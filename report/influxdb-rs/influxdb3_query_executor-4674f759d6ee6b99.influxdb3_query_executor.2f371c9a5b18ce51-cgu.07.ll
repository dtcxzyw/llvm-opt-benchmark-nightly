Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.07?download=true
inline.NumInlined: 3540
inline.NumDeleted: 959
begin_hunk_0_@_RINvYNtNtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash10hash_sliceNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor:bb.a

.lr.ph:                                           ; preds = %bb.a, %_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit
  %.sroa.0.03 = phi ptr [ %i.k, %_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit ], [ %0, %bb.a ] ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 744 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11475)
  %i.l = load i64, ptr %.sroa.0.03, align 8, !range !93, !alias.scope !11475, !noalias !11476, !noundef !7 ; 5 uses
  %i.m = icmp eq i64 %i.l, -5                     ; 2 uses
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11477
  store i64 %i.n, ptr %i.c, align 8, !noalias !11477
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8), !noalias !11475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11477
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11478)
  %i.p = load i64, ptr %i.o, align 8, !range !23, !alias.scope !11478, !noalias !11479, !noundef !7
  %i.q = icmp ne i64 %i.p, -1                     ; 2 uses
  %i.r = zext i1 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11480
  store i64 %i.r, ptr %i.g, align 8, !noalias !11480
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8), !noalias !11478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11480
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvXs0_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_5IdentNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 200
  %i.t = load i32, ptr %i.s, align 8, !alias.scope !11478, !noalias !11479, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11481
  store i32 %i.t, ptr %i.f, align 4, !noalias !11481
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11481
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 72 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !23, !alias.scope !11478, !noalias !11479, !noundef !7
  %i.w = icmp ne i64 %i.v, -1                     ; 2 uses
  %i.x = zext i1 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11482
  store i64 %i.x, ptr %i.e, align 8, !noalias !11482
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11482
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvXs0_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_5IdentNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 136 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !23, !alias.scope !11478, !noalias !11479, !noundef !7
  %i.aa = icmp ne i64 %i.z, -1                    ; 2 uses
  %i.ab = zext i1 %i.aa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11483
  store i64 %i.ab, ptr %i.d, align 8, !noalias !11483
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11483
  br i1 %i.aa, label %bb.g, label %_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvXs0_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_5IdentNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  br label %_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.h:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11484)
  %i.ac = icmp ne i64 %i.l, 68
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nsw i64 %i.l, -66
  %i.ae = icmp sgt i64 %i.l, 65
  %i.af = select i1 %i.ae, i64 %i.ad, i64 2       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11485
  store i64 %i.af, ptr %i.h, align 8, !noalias !11485
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8), !noalias !11484, !inline_history !11458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11485
  switch i64 %i.af, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  tail call fastcc void @_RINvXs6N_NtCsaNmiEuYuYZf_9sqlparser3astNtB7_4ExprNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !inline_history !11458
  br label %_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.k:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 336
  tail call fastcc void @_RINvXs6N_NtCsaNmiEuYuYZf_9sqlparser3astNtB7_4ExprNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !inline_history !11458
  tail call void @_RINvXs0_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_5IdentNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !inline_history !11458
  br label %_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.l:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11486)
  %i.ak = icmp ne i64 %i.l, -4                    ; 2 uses
  %i.al = zext i1 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11487
  store i64 %i.al, ptr %i.a, align 8, !noalias !11487
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !11488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11487
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RINvXs6N_NtCsaNmiEuYuYZf_9sqlparser3astNtB7_4ExprNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(744) %.sroa.0.03, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !inline_history !11465
  br label %_RINvXs3T_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB7_31SelectItemQualifiedWildcardKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.n:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %.sroa.0.03, i64 16
  %.val.i.i = load ptr, ptr %i.am, align 8, !alias.scope !11488, !noalias !11489, !nonnull !7, !noundef !7
  %i.an = getelementptr i8, ptr %.sroa.0.03, i64 24
  %.val1.i.i = load i64, ptr %i.an, align 8, !alias.scope !11488, !noalias !11489, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11490
  store i64 %.val1.i.i, ptr %i.b, align 8, !noalias !11490
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8), !noalias !11488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11490
  tail call void @_RINvYNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartNtNtCs4NRVxsYgnAr_4core4hash4Hash10hash_sliceNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !noalias !11488
  br label %_RINvXs3T_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB7_31SelectItemQualifiedWildcardKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit.i

_RINvXs3T_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB7_31SelectItemQualifiedWildcardKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.n, %bb.m
  tail call fastcc void @_RINvXs4n_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB7_25WildcardAdditionalOptionsNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !inline_history !11458
  br label %_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.o:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  tail call fastcc void @_RINvXs4n_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB7_25WildcardAdditionalOptionsNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !inline_history !11458
  br label %_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.o, %_RINvXs3T_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB7_31SelectItemQualifiedWildcardKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit.i, %bb.k, %bb.j, %bb.g, %bb.f
  %i.ap = icmp eq ptr %i.k, %i.i
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXsj_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB6_23StageLoadSelectItemKindNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprB4_ENtNtCs4NRVxsYgnAr_4core4hash4Hash10hash_sliceNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %0, i64 noundef range(i64 0, 41175768021673107) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 224
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 224 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 112
  tail call fastcc void @_RINvXs11_NtCs7fnekraeopg_15datafusion_expr4exprNtB7_4ExprNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %.sroa.0.03, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !inline_history !11491
  tail call fastcc void @_RINvXs11_NtCs7fnekraeopg_15datafusion_expr4exprNtB7_4ExprNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %2), !inline_history !11491
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs6_NtCsb9J5XDRPpZo_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB1s_22GenericByteViewBuilderNtNtB1w_5types14StringViewTypeE16try_append_valueReEs1_0NCB1m_s0_0E0Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !18, !noundef !7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !align !18, !noundef !7
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !align !18, !noundef !7 ; 6 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load ptr, ptr %i.h, align 8            ; 3 uses
  %.val3 = load i64, ptr %i.g, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11494)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11494, !noundef !7
  %i.k = icmp ult i64 %.val3, %i.j
  br i1 %i.k, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #44, !noalias !11494
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11494, !nonnull !7, !noundef !7
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val3 ; 2 uses
  %i.o = load i128, ptr %i.n, align 16, !noalias !11494, !noundef !7 ; 6 uses
  %i.p = trunc i128 %i.o to i32
  %i.q = icmp ult i32 %i.p, 13
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i128 %i.o, 64                       ; 2 uses
  %i.s = trunc i128 %i.r to i32
  %i.t = lshr i128 %i.o, 96                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !11494, !noundef !7 ; 4 uses
  %i.w = icmp ult i64 %i.v, 384307168202282326
  tail call void @llvm.assume(i1 %i.w)
  %i.x = trunc i64 %i.v to i32
  %i.y = icmp ult i32 %i.s, %i.x
  br i1 %i.y, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = trunc i128 %i.o to i64
  %i.aa = and i64 %i.z, 15
  %i.ab = getelementptr i8, ptr %i.n, i64 4
  br label %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE9get_valueCs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.f:                                             ; preds = %bb.d
  %2 = trunc nuw nsw i128 %i.t to i64             ; 3 uses
  %i.ac = trunc i128 %i.o to i64
  %i.ad = and i64 %i.ac, 4294967295               ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, %2               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !11494, !noundef !7 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i.i, label %bb.h, label %bb.i, !prof !8

bb.g:                                             ; preds = %bb.d
  %i.ah = trunc nuw i128 %i.r to i64
  %i.ai = and i64 %i.ah, 4294967295               ; 3 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.v
  br i1 %i.aj, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #44, !noalias !11494
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !11494, !nonnull !7, !noundef !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %2
  br label %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE9get_valueCs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.j:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !11494, !nonnull !7, !noundef !7
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !11494, !noundef !7 ; 2 uses
  %3 = trunc nuw nsw i128 %i.t to i64             ; 3 uses
  %i.as = trunc i128 %i.o to i64
  %i.at = and i64 %i.as, 4294967295               ; 2 uses
  %i.au = add nuw nsw i64 %i.at, %3               ; 2 uses
  %.not12.i.i = icmp ugt i64 %i.au, %i.ar
  br i1 %.not12.i.i, label %bb.l, label %bb.m, !prof !8

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #44, !noalias !11494
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %i.au, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #44, !noalias !11494
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !11494, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %3
  br label %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE9get_valueCs43kcu4yvms7_24influxdb3_query_executor.exit.i

_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE9get_valueCs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.m, %bb.i, %bb.e
  %.sroa.4.0.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.at, %bb.m ], [ %i.ad, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.ax, %bb.m ], [ %i.am, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !7
  %i.ba = icmp eq i64 %i.az, %.sroa.4.0.i.i
  br i1 %i.ba, label %bb.n, label %_RNCINvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB7_22GenericByteViewBuilderNtNtBb_5types14StringViewTypeE16try_append_valueReEs1_0Cs43kcu4yvms7_24influxdb3_query_executor.exit

bb.n:                                             ; preds = %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE9get_valueCs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.bb = load ptr, ptr %.val2, align 8, !nonnull !7, !noundef !7
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.bb, ptr nonnull %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i)
  %i.bc = icmp eq i32 %bcmp.i, 0
  br label %_RNCINvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB7_22GenericByteViewBuilderNtNtBb_5types14StringViewTypeE16try_append_valueReEs1_0Cs43kcu4yvms7_24influxdb3_query_executor.exit

_RNCINvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB7_22GenericByteViewBuilderNtNtBb_5types14StringViewTypeE16try_append_valueReEs1_0Cs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE9get_valueCs43kcu4yvms7_24influxdb3_query_executor.exit.i, %bb.n
  %.sroa.0.0.i = phi i1 [ %i.bc, %bb.n ], [ false, %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE9get_valueCs43kcu4yvms7_24influxdb3_query_executor.exit.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs6ePPILGZvJ2_11arrow_array5array10byte_array16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtB9_5Array9into_data6vtableCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array10byte_arrayNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEE4fromCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE9new_emptyCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer15from_len_zeroed(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !nonnull !7, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load <2 x i64>, ptr %i.c, align 16
  store <2 x i64> %i.j, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !11506
  %i.k = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 56, 137) 56, i64 noundef range(i64 8, 17) 8) #43, !noalias !11506 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCs43kcu4yvms7_24influxdb3_query_executor.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #44
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #45
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.r, %bb.f ], [ %i.r, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.g, ptr %i.p, align 8
  %i.q = invoke noundef i64 @_RINvNtCs4NRVxsYgnAr_4core3ptr12align_offsethECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.e, i64 noundef 4)
          to label %_RNvMNtNtCs4NRVxsYgnAr_4core3ptr9const_ptrPh12align_offsetCs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.e, !noalias !11507

bb.e:                                             ; preds = %.invoke.i, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !11508
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g, !noalias !11509

_RNvMNtNtCs4NRVxsYgnAr_4core3ptr9const_ptrPh12align_offsetCs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %_RNvXs3_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs43kcu4yvms7_24influxdb3_query_executor.exit, label %.invoke.i, !prof !10

.invoke.i:                                        ; preds = %_RNvMNtNtCs4NRVxsYgnAr_4core3ptr9const_ptrPh12align_offsetCs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !11507, !noundef !7
  %.not.i = icmp eq ptr %i.w, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @366, ptr @368
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @365, ptr @367
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #44
          to label %.cont.i unwind label %bb.e, !noalias !11507

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !11509
  unreachable

_RNvXs3_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RNvMNtNtCs4NRVxsYgnAr_4core3ptr9const_ptrPh12align_offsetCs43kcu4yvms7_24influxdb3_query_executor.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources4hostINtB5_12HostResourceINtNtB7_11host_static6StaticNtCsaIKnL9StOw_6anyhow5ErrorEuE15lift_from_indexCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(104) %1, i32 noundef range(i32 0, 26) %2, i32 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  switch i32 %2, label %bb.b [
    i32 21, label %bb.c
    i32 22, label %bb.d
  ], !prof !11

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed13bad_type_infoTNtNtNtB6_9resources4host19AtomicResourceStatemNtNtNtCs3qFYL1dVk0u_16wasmtime_environ9component5types22TypeResourceTableIndexEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d)
  %.sroa.03.0.copyload.pre = load i64, ptr %i.d, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.pre19 = load i32, ptr %.phi.trans.insert18, align 4
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func7optionsNtB4_11LiftContext23guest_resource_lift_own(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %3, i32 noundef %4)
  %i.e = load i64, ptr %i.c, align 8, !range !16, !noundef !7
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func7optionsNtB4_11LiftContext26guest_resource_lift_borrow(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %3, i32 noundef %4)
  %i.i = load i32, ptr %i.b, align 8, !range !14, !noundef !7
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.413.0.copyload = load i32, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %.not15 = icmp eq ptr %.sroa.6.0.copyload, null
  br i1 %.not15, label %bb.j, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #44
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #44
  unreachable

end_hunk_0
