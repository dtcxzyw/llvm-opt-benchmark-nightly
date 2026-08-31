Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.01?download=true
inline.NumInlined: 8762
inline.NumDeleted: 2773
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXsxo_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone:bb.a
bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20785
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %.noexc16 unwind label %bb.ai, !inline_history !20779

.noexc16:                                         ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.732, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20785
  br label %_RNvXsxy_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_27ShowStatementFilterPositionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.af:                                            ; preds = %bb.ac
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20785
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %.noexc17 unwind label %bb.ai, !inline_history !20779

.noexc17:                                         ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.732, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20785
  br label %_RNvXsxy_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_27ShowStatementFilterPositionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20785
  invoke fastcc void @_RNvXs6H_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aw)
          to label %.noexc18 unwind label %bb.ai, !inline_history !20779

.noexc18:                                         ; preds = %bb.ag
  %.sroa.030.0.copyload = load i64, ptr %i.f, align 8, !noalias !20780
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.732, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.732.0..sroa_idx, i64 24, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.10.0..sroa_idx, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20785
  br label %_RNvXsxy_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_27ShowStatementFilterPositionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.ah:                                            ; preds = %bb.ac
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20785
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc19 unwind label %bb.ai, !inline_history !20779

.noexc19:                                         ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.732, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20785
  br label %_RNvXsxy_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_27ShowStatementFilterPositionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXsxy_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_27ShowStatementFilterPositionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %.noexc23, %.noexc22, %.noexc21, %.noexc20, %.noexc19, %.noexc18, %.noexc17, %.noexc16, %bb.s
  %.sroa.5.sroa.0.0 = phi i64 [ undef, %bb.s ], [ 69, %.noexc23 ], [ 66, %.noexc20 ], [ 67, %.noexc21 ], [ %.sroa.034.0.copyload, %.noexc22 ], [ 66, %.noexc16 ], [ 67, %.noexc17 ], [ %.sroa.030.0.copyload, %.noexc18 ], [ 69, %.noexc19 ]
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.s ], [ 1, %.noexc23 ], [ 1, %.noexc20 ], [ 1, %.noexc21 ], [ 1, %.noexc22 ], [ 0, %.noexc16 ], [ 0, %.noexc17 ], [ 0, %.noexc18 ], [ 0, %.noexc19 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.bh, ptr noundef nonnull align 8 dereferenceable(328) %i.n, i64 328, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.732, i64 24, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.10, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.ai:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load i64, ptr %i.m, align 8, !range !3307, !alias.scope !20786, !noundef !6
  %i.bl = icmp eq i64 %i.bk, -1
  br i1 %i.bl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5value5ValueEECs43kcu4yvms7_24influxdb3_query_executor.exit15, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5value5ValueECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5value5ValueEECs43kcu4yvms7_24influxdb3_query_executor.exit15 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.t, %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5value5ValueEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5value5ValueEECs43kcu4yvms7_24influxdb3_query_executor.exit
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsy2_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_11ShowCharsetNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(336) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !6
  %i.e = load i64, ptr %1, align 8, !range !304, !noundef !6 ; 4 uses
  %.not = icmp eq i64 %i.e, -4
  br i1 %.not, label %_RNvXsoO_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_19ShowStatementFilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i64 %i.e, 68
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -66
  %i.h = icmp sgt i64 %i.e, 65
  %i.i = select i1 %i.h, i64 %i.g, i64 2
  switch i64 %i.i, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  br label %_RNvXsoO_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_19ShowStatementFilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
  br label %_RNvXsoO_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_19ShowStatementFilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.b
  call fastcc void @_RNvXs6H_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1), !inline_history !20789
  %.sroa.0.0.copyload3 = load i64, ptr %i.a, align 8
  br label %_RNvXsoO_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_19ShowStatementFilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  br label %_RNvXsoO_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_19ShowStatementFilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXsoO_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_19ShowStatementFilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.sroa.0.0 = phi i64 [ -4, %bb.a ], [ 66, %bb.d ], [ 67, %bb.e ], [ %.sroa.0.0.copyload3, %bb.f ], [ 69, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 %i.d, ptr %i.n, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(320) %i.m, i64 320, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYINtNtCscdodAO9FK5_5alloc3vec3VechENtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed4Lift28linear_lift_list_from_memoryCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.g = load i64, ptr %i.c, align 8, !range !27, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !8314, !noundef !6 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.j, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  store i64 0, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20790)
  %.not24.i = icmp eq i64 %i.f, 0
  br i1 %.not24.i, label %.loopexit8, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_hEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBF_E6extendINtNtBV_6option6OptionBF_EECs43kcu4yvms7_24influxdb3_query_executor.exit.i, %.lr.ph.i
  %.sroa.016.023.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_hEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBF_E6extendINtNtBV_6option6OptionBF_EECs43kcu4yvms7_24influxdb3_query_executor.exit.i ] ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.016.023.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20793
  invoke void @_RNvMse_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typedINtB5_8WasmListINtNtCscdodAO9FK5_5alloc3vec3VechEE14get_from_storeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %.sroa.016.023.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !range !241, !noalias !20793, !noundef !6 ; 4 uses
  %.not.i = icmp eq i64 %i.r, -2
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !8

bb.e:                                             ; preds = %.noexc
  %.sroa.610.0.copyload.i = load ptr, ptr %.sroa.610.0..sroa_idx.i, align 8, !noalias !20793 ; 4 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !20793 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20793
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.k, label %bb.g

bb.f:                                             ; preds = %.noexc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
          to label %.noexc5 unwind label %.loopexit.split-lp

.noexc5:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !20796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20799
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !20801, !noalias !20805
  store ptr %.sroa.610.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !20801, !noalias !20805
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx20.i, align 8, !alias.scope !20801, !noalias !20805
  %i.t = load i64, ptr %i.p, align 8, !alias.scope !20806, !noalias !20813, !noundef !6 ; 3 uses
  %i.u = load i64, ptr %i.d, align 8, !range !32, !alias.scope !20806, !noalias !20813, !noundef !6
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.h, label %_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_hEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBF_E6extendINtNtBV_6option6OptionBF_EECs43kcu4yvms7_24influxdb3_query_executor.exit.i, !prof !8

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.t, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_hEE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i.i.i unwind label %bb.i, !noalias !20816

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_hEE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i.i.i: ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !20817, !noalias !20813
  br label %_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_hEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBF_E6extendINtNtBV_6option6OptionBF_EECs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.j, !noalias !20818

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22, !noalias !20818
  unreachable

_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_hEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBF_E6extendINtNtBV_6option6OptionBF_EECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_hEE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i.i.i, %bb.g
  %i.y = phi i64 [ %.pre.i.i.i.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_hEE7reserveCs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge.i.i.i.i ], [ %i.t, %bb.g ] ; 2 uses
  %i.z = load ptr, ptr %i.o, align 8, !alias.scope !20817, !noalias !20813, !nonnull !6, !noundef !6
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.y ; 3 uses
  store i64 %i.r, ptr %i.aa, align 8, !noalias !20819
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.610.0.copyload.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.7.8..sroa.411.0..sroa_idx.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.7.8..sroa.411.0..sroa_idx.i.i.i.i.i.sroa_idx.i, align 8
  %i.ab = add i64 %i.y, 1
  store i64 %i.ab, ptr %i.p, align 8, !alias.scope !20817, !noalias !20830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20799
  %exitcond.not.i = icmp eq i64 %i.q, %i.f
  br i1 %exitcond.not.i, label %.loopexit8, label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.d) #23
          to label %common.resume unwind label %bb.p

bb.k:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.610.0.copyload.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.610.0.copyload.i, ptr %i.ac, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !20831)
  call void @llvm.experimental.noalias.scope.decl(metadata !20834)
  %i.ad = load ptr, ptr %i.o, align 8, !alias.scope !20837, !nonnull !6, !noundef !6 ; 2 uses
  %i.ae = load i64, ptr %i.p, align 8, !alias.scope !20837, !noundef !6 ; 4 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %.lr.ph
  %i.ag = icmp eq i64 %i.ai, %i.ae
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i
  %.sroa.0.0.i.i.i21 = phi i64 [ %i.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i.i21
  %i.ai = add nuw nsw i64 %.sroa.0.0.i.i.i21, 1   ; 4 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.l, !noalias !20837

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i.i: ; preds = %.lr.ph23
  %i.aj = add i64 %.sroa.0.1.i.i.i22, 1           ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.ae
  br i1 %i.ak, label %.body.i, label %.lr.ph23

bb.l:                                             ; preds = %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = icmp eq i64 %i.ai, %i.ae
  br i1 %i.am, label %.body.i, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i.i
  %.sroa.0.1.i.i.i22 = phi i64 [ %i.aj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i.i ], [ %i.ai, %bb.l ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.0.1.i.i.i22
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i.i unwind label %bb.m, !noalias !20837

bb.m:                                             ; preds = %.lr.ph23
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22, !noalias !20837
  unreachable

.body.i:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit7.i.i.i, %bb.l
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %.body.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.al, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i, %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.o

.loopexit8:                                       ; preds = %_RINvXsi_NtCscdodAO9FK5_5alloc3vecINtB6_3VecIBw_hEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBF_E6extendINtNtBV_6option6OptionBF_EECs43kcu4yvms7_24influxdb3_query_executor.exit.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %.loopexit8, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECs43kcu4yvms7_24influxdb3_query_executor.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.p:                                             ; preds = %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher19write_length_prefixCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20838)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20838
  store i64 %1, ptr %i.a, align 8, !noalias !20838
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20849)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !20851, !noalias !20852, !noundef !6
  %i.d = add i64 %i.c, 8
  store i64 %i.d, ptr %i.b, align 8, !alias.scope !20851, !noalias !20852
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !20851, !noalias !20852, !noundef !6 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 8, %i.f                          ; 3 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 8) ; 2 uses
  %i.i = icmp ugt i64 %i.h, 3                     ; 3 uses
  %i.j = and i64 %1, 4294967295
  %.sroa.03.0.i.i.i.i = select i1 %i.i, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i10.i.i.i = select i1 %i.i, i64 %i.j, i64 0 ; 2 uses
  %i.k = or disjoint i64 %.sroa.03.0.i.i.i.i, 1
  %i.l = icmp samesign ult i64 %i.k, %.sroa.0.0.i.i.i.i
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.i, i64 4, i64 0
  %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i.i.i = load i16, ptr %.sroa.03.0.i.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !20853, !noalias !20851
  %i.m = zext i16 %.sroa.015.0.copyload.i.i.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i.i.i, 3
end_hunk_0
