Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.07?download=true
inline.NumInlined: 3540
inline.NumDeleted: 959
begin_hunk_0_@_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeEINtNtNtBb_5array4iter8IntoIterB1o_Kj1_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1o_NtNtCs3qFYL1dVk0u_16wasmtime_environ5types11WasmValTypeuNCINvMsv_B1q_NtB1q_8FuncType27with_finality_and_supertypeBO_IB2f_B1o_Kj0_EEs_0NCINvNvB2S_8for_each4callB3X_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6J_3VecB3X_E14extend_trustedINtB3B_3MapBO_B4R_EE0E0E0ECs43kcu4yvms7_24influxdb3_query_executor:bb.a
  store i64 -9223372036854775786, ptr %i.f, align 8, !noalias !7478
  br label %bb.ap

bb.r:                                             ; preds = %bb.l
  store i64 -9223372036854775785, ptr %i.f, align 8, !noalias !7478
  br label %bb.ap

bb.s:                                             ; preds = %bb.l
  %i.ao = load i8, ptr %i.aa, align 8, !range !33, !alias.scope !7473, !noalias !7476, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7478
  call void @llvm.experimental.noalias.scope.decl(metadata !7479)
  %i.ap = icmp ne i64 %i.an, -9223372036854775795
  call void @llvm.assume(i1 %i.ap)
  %i.aq = xor i64 %i.an, -9223372036854775808     ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 19
  %i.as = select i1 %i.ar, i64 %i.aq, i64 13
  switch i64 %i.as, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %bb.z
    i64 6, label %bb.aa
    i64 7, label %bb.ab
    i64 8, label %bb.ac
    i64 9, label %bb.ad
    i64 10, label %bb.ae
    i64 11, label %bb.af
    i64 12, label %bb.ag
    i64 13, label %bb.ah
    i64 14, label %bb.ak
    i64 15, label %bb.al
    i64 16, label %bb.am
    i64 17, label %bb.an
    i64 18, label %bb.ao
  ]

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  store i64 -9223372036854775808, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.s
  store i64 -9223372036854775807, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.s
  store i64 -9223372036854775806, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.s
  invoke void @_RNvXs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registryNtB5_14RegisteredTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !7476

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.x
  store i64 -9223372036854775805, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.s
  store i64 -9223372036854775804, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.s
  store i64 -9223372036854775803, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.s
  store i64 -9223372036854775802, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.s
  store i64 -9223372036854775801, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.s
  store i64 -9223372036854775800, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.s
  invoke void @_RNvXs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registryNtB5_14RegisteredTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i)
          to label %.noexc5.i.i.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !7476

.noexc5.i.i.i.i.i.i.i:                            ; preds = %bb.ad
  store i64 -9223372036854775799, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.s
  store i64 -9223372036854775798, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.s
  invoke void @_RNvXs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registryNtB5_14RegisteredTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i)
          to label %.noexc6.i.i.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !7476

.noexc6.i.i.i.i.i.i.i:                            ; preds = %bb.af
  store i64 -9223372036854775797, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.s
  store i64 -9223372036854775796, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7481
  invoke void @_RNvXs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registryNtB5_14RegisteredTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.g)
          to label %.noexc7.i.i.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !7476

.noexc7.i.i.i.i.i.i.i:                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7481
  invoke void @_RNvXs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registryNtB5_14RegisteredTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sink1.i.i.i.i.sroa.gep.i.i.i.i.i.i)
          to label %_RNvXs1p_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_7ExnTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i unwind label %bb.ai, !noalias !7482

bb.ai:                                            ; preds = %.noexc7.i.i.i.i.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !7482

bb.aj:                                            ; preds = %bb.ai
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !7482
  unreachable

_RNvXs1p_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_7ExnTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !7483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !7483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false), !noalias !7480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.s
  invoke void @_RNvXs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registryNtB5_14RegisteredTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i)
          to label %.noexc8.i.i.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !7476

.noexc8.i.i.i.i.i.i.i:                            ; preds = %bb.ak
  store i64 -9223372036854775794, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.s
  store i64 -9223372036854775793, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.s
  store i64 -9223372036854775792, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.s
  store i64 -9223372036854775791, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.s
  store i64 -9223372036854775790, ptr %i.d, align 8, !alias.scope !7479, !noalias !7480
  br label %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.av = load i64, ptr %i.ae, align 8, !alias.scope !7484, !noalias !7485, !noundef !7 ; 3 uses
  %i.aw = load i64, ptr %.sroa.7.0.copyload, align 8, !range !51, !alias.scope !7484, !noalias !7485, !noundef !7
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.7.0.copyload)
          to label %bb.at unwind label %bb.ar, !noalias !7486

bb.ar:                                            ; preds = %bb.aq
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.f) #45
          to label %.body.i.i.i.i.i.i.i unwind label %bb.as, !noalias !7477

bb.as:                                            ; preds = %bb.ar
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !7477
  unreachable

_RNvXs14_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_8HeapTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %.noexc8.i.i.i.i.i.i.i, %_RNvXs1p_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB6_7ExnTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i, %bb.ag, %.noexc6.i.i.i.i.i.i.i, %bb.ae, %.noexc5.i.i.i.i.i.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %.noexc.i.i.i.i.i.i.i, %bb.w, %bb.v, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false), !noalias !7478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7478
  store i8 %i.ao, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !7478
  br label %bb.ap

bb.at:                                            ; preds = %bb.aq, %bb.ap
  %i.ba = load ptr, ptr %i.af, align 8, !alias.scope !7484, !noalias !7485, !nonnull !7, !noundef !7
  %i.bb = getelementptr inbounds nuw [152 x i8], ptr %i.ba, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bb, ptr noundef nonnull align 8 dereferenceable(152) %i.f, i64 152, i1 false), !noalias !7477
  %i.bc = add i64 %i.av, 1
  store i64 %i.bc, ptr %i.ae, align 8, !alias.scope !7484, !noalias !7485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7478
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.j
  %i.bd = load i64, ptr %i.g, align 8, !range !32, !alias.scope !7473, !noalias !7476, !noundef !7 ; 3 uses
  %i.be = add i64 %i.bd, 9223372036854775784
  %2 = icmp ult i64 %i.be, -5
  br i1 %2, label %bb.av, label %bb.be

bb.av:                                            ; preds = %bb.au
  %i.bf = icmp ne i64 %i.bd, -9223372036854775795
  call void @llvm.assume(i1 %i.bf)
  %i.bg = xor i64 %i.bd, -9223372036854775808     ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 19
  %i.bi = select i1 %i.bh, i64 %i.bg, i64 13
  switch i64 %i.bi, label %bb.m [
    i64 0, label %bb.be
    i64 1, label %bb.be
    i64 2, label %bb.be
    i64 3, label %bb.ax
    i64 4, label %bb.be
    i64 5, label %bb.be
    i64 6, label %bb.be
    i64 7, label %bb.be
    i64 8, label %bb.be
    i64 9, label %bb.ax
    i64 10, label %bb.be
    i64 11, label %bb.ax
    i64 12, label %bb.be
    i64 13, label %bb.aw
    i64 14, label %bb.ax
    i64 15, label %bb.be
    i64 16, label %bb.be
    i64 17, label %bb.be
    i64 18, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.av, %bb.av, %bb.av
  %.sink.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i, %bb.av ], [ %.sink1.i.i.i.i.sroa.gep.i.i.i.i.i.i, %bb.aw ], [ %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i, %bb.av ], [ %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i, %bb.av ], [ %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i, %bb.av ]
  %i.bj = load ptr, ptr %i.ag, align 8, !alias.scope !7472, !noalias !7475, !nonnull !7, !align !18, !noundef !7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7478
  invoke void @_RNvXs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registryNtB5_14RegisteredTypeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sink.i.sroa.phi.i.i.i.i.i.i)
          to label %bb.ay unwind label %.loopexit.i.i, !noalias !7477

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !7487)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 288 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !7488, !noalias !7489, !noundef !7 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 4                   ; 2 uses
  %i.bn = load ptr, ptr %i.bj, align 8, !alias.scope !7488, !noalias !7489, !nonnull !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %.sink9.i.i.i.i.i.i.i.i.i = select i1 %i.bm, ptr %i.bn, ptr %i.bj
  %.sink8.i.i.i.i.i.i.i.i.i = select i1 %i.bm, ptr %i.bo, ptr %i.bk ; 2 uses
  %.sink.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 4)
  %i.bp = load i64, ptr %.sink8.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !7487, !noalias !7490, !noundef !7 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %.sink.i.i.i.i.i.i.i.i.i
  br i1 %i.bq, label %bb.ba, label %bb.bd, !prof !8

bb.az:                                            ; preds = %bb.ba
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #45
          to label %.body.i.i.i.i.i.i.i unwind label %bb.bc, !noalias !7491

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvMsd_CsaPYpPPxBPjS_8smallvecINtB5_8SmallVecANtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypej4_E21reserve_one_uncheckedCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.bj)
          to label %bb.bb unwind label %bb.az, !noalias !7490

bb.bb:                                            ; preds = %bb.ba
  %i.bs = load ptr, ptr %i.bj, align 8, !alias.scope !7487, !noalias !7490, !nonnull !7, !noundef !7
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !7487, !noalias !7490
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !7491
  unreachable

bb.bd:                                            ; preds = %bb.bb, %bb.ay
  %i.bu = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.bb ], [ %i.bp, %bb.ay ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bo, %bb.bb ], [ %.sink8.i.i.i.i.i.i.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.bb ], [ %.sink9.i.i.i.i.i.i.i.i.i, %bb.ay ]
  %i.bv = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bv, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !7477
  %i.bw = load i64, ptr %.sroa.01.0.i.i.i.i.i.i.i.i, align 8, !alias.scope !7487, !noalias !7490, !noundef !7
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %.sroa.01.0.i.i.i.i.i.i.i.i, align 8, !alias.scope !7487, !noalias !7490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7478
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.au
  invoke void @_RNvMs3_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB5_7ValType12to_wasm_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.g)
          to label %bb.bf unwind label %.loopexit.i.i, !noalias !7492

bb.bf:                                            ; preds = %bb.be
  %i.by = load i64, ptr %i.g, align 8, !range !32, !alias.scope !7493, !noalias !7476, !noundef !7 ; 3 uses
  %i.bz = add i64 %i.by, 9223372036854775789
  %switch.i.i.i.i.i.i.i.i = icmp ult i64 %i.bz, 5
  br i1 %switch.i.i.i.i.i.i.i.i, label %.loopexit.loopexit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ca = icmp ne i64 %i.by, -9223372036854775795
  call void @llvm.assume(i1 %i.ca)
  %i.cb = xor i64 %i.by, -9223372036854775808     ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 19
  %i.cd = select i1 %i.cc, i64 %i.cb, i64 13
  switch i64 %i.cd, label %.loopexit.loopexit.i [
    i64 3, label %.sink.split.i.i.i.i.i.i.i.i.i.i
    i64 9, label %.sink.split.i.i.i.i.i.i.i.i.i.i
    i64 11, label %.sink.split.i.i.i.i.i.i.i.i.i.i
    i64 13, label %bb.bh
    i64 14, label %.sink.split.i.i.i.i.i.i.i.i.i.i
  ]

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.bh, %bb.bg, %bb.bg, %bb.bg, %bb.bg
  %.sink1.i.i.i.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink1.i.i.i.i.sroa.gep.i.i.i.i.i.i, %bb.bh ], [ %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i, %bb.bg ], [ %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i, %bb.bg ], [ %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i, %bb.bg ], [ %.sink1.i.i.i.i.sroa.gep1.i.i.i.i.i.i, %bb.bg ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %.sink1.i.i.i.i.sroa.phi.i.i.i.i.i.i)
          to label %.loopexit.loopexit.i unwind label %bb.bl, !noalias !7494

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.g)
          to label %.sink.split.i.i.i.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !7477

bb.bi:                                            ; preds = %bb.bh
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypeECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %.sink1.i.i.i.i.sroa.gep.i.i.i.i.i.i) #45
          to label %.body.i unwind label %bb.bj, !noalias !7477

bb.bj:                                            ; preds = %bb.bi
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !7477
  unreachable

bb.bk:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !7477
  unreachable

bb.bl:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.loopexit.i:                             ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7470
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.4.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ci, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !7492
  %i.cj = add i64 %.sroa.4.0.copyload, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7471
  call void @llvm.assume(i1 %.not.i.i)
  %.pre.i = load i64, ptr %i.k, align 8, !alias.scope !7495, !noalias !7496
  %.pre23.i = load i64, ptr %i.w, align 8, !alias.scope !7495, !noalias !7496
  br label %.loopexit.i

.body.i:                                          ; preds = %bb.bl, %bb.bi, %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ch, %bb.bl ], [ %i.ce, %bb.bi ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.4.0.copyload, ptr %.sroa.0.0.copyload, align 8, !noalias !7494
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeEj1_NtB4_11PartialDrop12partial_dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.u, i64 noundef 1, i64 noundef %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeKj1_EECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.bm, !noalias !7496

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.g
  %i.ck = phi i64 [ %i.v, %bb.g ], [ %.pre23.i, %.loopexit.loopexit.i ]
  %i.cl = phi i64 [ %i.v, %bb.g ], [ %.pre.i, %.loopexit.loopexit.i ]
  %.val3.i.i = phi i64 [ %.sroa.4.0.copyload, %bb.g ], [ %i.cj, %.loopexit.loopexit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val3.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !7494
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeEj1_NtB4_11PartialDrop12partial_dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.u, i64 noundef %i.cl, i64 noundef %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bo

bb.bm:                                            ; preds = %.body.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !7496
  unreachable

bb.bn:                                            ; preds = %bb.e
  %.val6 = load ptr, ptr %1, align 8, !nonnull !7, !align !18, !noundef !7
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.cn, align 8, !noundef !7
  store i64 %.val7, ptr %.val6, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.loopexit.i
  ret void

.body:                                            ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !18, !noundef !7
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.co, align 8, !noundef !7
  store i64 %.val5, ptr %.val, align 8
  %i.cp = load i64, ptr %0, align 8, !range !16, !noundef !7
  %.not16 = icmp eq i64 %i.cp, 0
  br i1 %.not16, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeKj1_EECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.bq

bb.bp:                                            ; preds = %bb.bq
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable
end_hunk_0
begin_hunk_1_@_RNvXs1A_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !11722, !noalias !11723, !nonnull !7, !noundef !7
  %.not410.not = icmp eq i64 %i.z, 0
  br i1 %.not410.not, label %._crit_edge, label %.lr.ph12

bb.j:                                             ; preds = %.lr.ph12
  %i.am = add nuw i64 %.sroa.01.0.i211, 1         ; 2 uses
  %exitcond14.not = icmp eq i64 %i.am, %i.z
  br i1 %exitcond14.not, label %._crit_edge, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.i, %bb.j
  %.sroa.01.0.i211 = phi i64 [ %i.am, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [112 x i8], ptr %i.al, i64 %.sroa.01.0.i211
  %i.ao = getelementptr inbounds nuw [112 x i8], ptr %i.aj, i64 %.sroa.01.0.i211
  %i.ap = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.an, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ao), !noalias !11724, !inline_history !11721
  br i1 %i.ap, label %bb.j, label %_RNvXs2Y_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !11722, !noalias !11723, !noundef !7
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !11723, !noalias !11722, !noundef !7
  %i.au = icmp eq i64 %i.ar, %i.at
  br label %_RNvXs2Y_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !11723, !noalias !11722, !nonnull !7, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !11722, !noalias !11723, !nonnull !7, !noundef !7
  %.not6.not = icmp eq i64 %i.ae, 0
  br i1 %.not6.not, label %_RNvXs2Y_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.sroa.01.0.i7 = phi i64 [ %i.bc, %.lr.ph ], [ 0, %bb.k ] ; 3 uses
  %i.az = getelementptr inbounds nuw [112 x i8], ptr %i.ay, i64 %.sroa.01.0.i7
  %i.ba = getelementptr inbounds nuw [112 x i8], ptr %i.aw, i64 %.sroa.01.0.i7
  %i.bb = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba), !noalias !11724, !inline_history !11721 ; 2 uses
  %i.bc = add nuw i64 %.sroa.01.0.i7, 1           ; 2 uses
  %exitcond.not = icmp ne i64 %i.bc, %i.ae
  %or.cond.not = select i1 %i.bb, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs2Y_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs2Y_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph12, %bb.k, %._crit_edge, %bb.h, %bb.g, %bb.f, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.x, %bb.f ], [ %i.au, %._crit_edge ], [ false, %bb.c ], [ true, %bb.k ], [ false, %bb.h ], [ false, %bb.g ], [ false, %.lr.ph12 ], [ %i.bb, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1B_NtCs7fnekraeopg_15datafusion_expr4exprNtB6_7BetweenNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !33, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !33, !noundef !7
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.g = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g)
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.j, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l)
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ %i.r, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1I_NtCs7fnekraeopg_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call noundef zeroext i1 @_RNvXNtCs7fnekraeopg_15datafusion_expr3udfNtB2_9ScalarUDFNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br i1 %i.h, label %bb.c, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.d ], [ %i.t, %.lr.ph ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  %.not3.not = icmp eq i64 %i.j, 0
  br i1 %.not3.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.01.0.i4 = phi i64 [ %i.u, %.lr.ph ], [ 0, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %.sroa.01.0.i4
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %.sroa.01.0.i4
  %i.t = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.r, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s), !inline_history !2 ; 2 uses
  %i.u = add nuw i64 %.sroa.01.0.i4, 1            ; 2 uses
  %exitcond.not = icmp ne i64 %i.u, %i.j
  %or.cond.not = select i1 %i.t, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nofree readonly captures(address) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr nofree readonly captures(address) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11729)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !11728, !noalias !11729, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !11728, !noalias !11729, !noundef !7 ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !11729, !noalias !11728, !nonnull !7, !noundef !7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !11729, !noalias !11728, !noundef !7
  %i.j = icmp eq ptr %i.d, %i.g
  %i.k = icmp eq i64 %i.f, %i.i                   ; 2 uses
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, i64 noundef %i.f), !noalias !11730
  br i1 %i.o, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.r = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB13_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q)
  br i1 %i.r, label %bb.e, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.a, %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.s = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.s, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.f

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.d, %bb.c, %bb.e, %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.f
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ %i.v, %bb.f ], [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val3, i64 16
  %i.v = tail call fastcc noundef zeroext i1 @_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u)
  br label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCsaNmiEuYuYZf_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !42, !noundef !7 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !42, !noundef !7 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv2 = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv2, i64 2, i64 %i.g
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.k
    i64 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.h, %bb.f, %bb.b, %bb.a, %bb.i, %bb.j, %bb.k, %bb.e
  %.sroa.0.0 = phi i1 [ %i.n, %bb.e ], [ false, %bb.a ], [ %i.aa, %bb.j ], [ false, %bb.f ], [ %i.w, %bb.i ], [ true, %bb.b ], [ %i.af, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !7, !noundef !7
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaNmiEuYuYZf_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaNmiEuYuYZf_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r)
  br i1 %i.s, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = trunc nuw i64 %i.a to i1
  %i.v = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.w = xor i1 %i.v, true
  br label %bb.c

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.t, align 8, !noundef !7
  %i.z = load i64, ptr %i.x, align 8, !noundef !7
  %i.aa = icmp eq i64 %i.y, %i.z
  br label %bb.c

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !7, !noundef !7
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaNmiEuYuYZf_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1P_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_7SetExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !43, !noundef !7 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !43, !noundef !7
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.cl, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr534 = phi ptr [ %i.ck, %tailrecurse ], [ %1, %bb.a ] ; 14 uses
  %.tr33 = phi ptr [ %i.ci, %tailrecurse ], [ %0, %bb.a ] ; 14 uses
  switch i8 %i.d, label %default.unreachable68 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
  ]

_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %bb.t, %bb.s, %bb.d, %bb.a, %bb.r, %bb.q, %bb.p, %.split.i, %bb.o, %bb.n, %bb.m, %bb.g, %bb.f, %bb.e, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.i, %bb.b ], [ %i.n, %bb.c ], [ false, %bb.q ], [ false, %bb.n ], [ false, %.split.i ], [ %i.ai, %bb.h ], [ %i.al, %bb.i ], [ %i.ao, %bb.j ], [ %i.ar, %bb.k ], [ false, %bb.f ], [ false, %bb.o ], [ false, %bb.m ], [ %i.af, %bb.g ], [ false, %bb.e ], [ %i.by, %bb.r ], [ %.mux.i, %bb.p ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.s ], [ false, %bb.t ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable68:                            ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXs2H_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6SelectNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.h)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !7, !noundef !7
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXs1v_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_5QueryNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.m)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr33, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %.tr534, i64 2
  %.val = load i8, ptr %i.o, align 1, !range !44, !noundef !7
  %.val2 = load i8, ptr %i.p, align 1, !range !44, !noundef !7
  %i.q = icmp eq i8 %.val, %.val2
  br i1 %i.q, label %bb.s, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11738)
  %i.r = getelementptr inbounds nuw i8, ptr %.tr33, i64 32
  %i.s = load i8, ptr %i.r, align 8, !range !33, !alias.scope !11737, !noalias !11738, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %.tr534, i64 32
  %i.u = load i8, ptr %i.t, align 8, !range !33, !alias.scope !11738, !noalias !11737, !noundef !7
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.tr33, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !11737, !noalias !11738, !noundef !7 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.tr534, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !11738, !noalias !11737, !noundef !7
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr534, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !11738, !noalias !11737, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr33, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !11737, !noalias !11738, !nonnull !7, !noundef !7
  %i.af = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ac, i64 noundef %i.x), !noalias !11739
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9StatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ah)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.al = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9StatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ak)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ao = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9StatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.an)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9StatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aq)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !7, !noundef !7 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11741)
  %i.aw = load i64, ptr %i.at, align 8, !range !23, !alias.scope !11740, !noalias !11741, !noundef !7
  %.not.i = icmp eq i64 %i.aw, -1
  %i.ax = load i64, ptr %i.av, align 8, !range !23, !alias.scope !11741, !noalias !11740, !noundef !7
  %i.ay = icmp eq i64 %i.ax, -1                   ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ay, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.ay, label %bb.p, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !11740, !noalias !11741, !noundef !7 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !11741, !noalias !11740, !noundef !7
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %.split.i, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split.i:                                         ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !11741, !noalias !11740, !nonnull !7, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !11740, !noalias !11741, !nonnull !7, !noundef !7
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull %i.bf, i64 %i.ba), !noalias !11742
  %i.bi = icmp eq i32 %bcmp.i, 0
  br i1 %i.bi, label %bb.p, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.split.i, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !range !23, !alias.scope !11740, !noalias !11741, !noundef !7 ; 2 uses
  %.not6.i = icmp eq i64 %i.bk, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !range !23, !alias.scope !11741, !noalias !11740, !noundef !7 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, -1
  %brmerge.i = or i1 %.not6.i, %i.bn
  %i.bo = and i64 %i.bm, %i.bk
  %.mux.i = icmp eq i64 %i.bo, -1
  br i1 %brmerge.i, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !11740, !noalias !11741, !noundef !7 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !11741, !noalias !11740, !noundef !7
  %i.bt = icmp eq i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.r, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !11741, !noalias !11740, !nonnull !7, !noundef !7
end_hunk_1
