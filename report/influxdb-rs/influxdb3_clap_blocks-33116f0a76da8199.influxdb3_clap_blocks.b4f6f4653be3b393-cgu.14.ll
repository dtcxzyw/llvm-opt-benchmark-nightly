Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.14?download=true
inline.NumInlined: 806
inline.NumDeleted: 338
begin_hunk_0_@_RINvNvXs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone13clone_subtreeReINtNtBe_6borrow3CoweENtNtBe_5alloc6GlobalECsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.sroa.538.0 = phi i64 [ %i.bk, %bb.y ], [ %.sroa.452.0.copyload, %bb.w ]
  %.sroa.037.0 = phi ptr [ %i.bj, %bb.y ], [ %.sroa.051.0.copyload, %bb.w ]
  invoke void @_RNvMsv_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutReINtNtBb_6borrow3CoweENtB18_8InternalE4pushCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %.sroa.037.0, i64 noundef %.sroa.538.0)
          to label %bb.aa unwind label %.loopexit66

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bl = add i64 %.sroa.553.0.copyload, 1
  %i.bm = add i64 %i.bl, %i.ax                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bn = load i16, ptr %i.au, align 2, !noundef !6
  %i.bo = zext i16 %i.bn to i64
  %i.bp = icmp samesign ult i64 %i.ba, %i.bo
  br i1 %i.bp, label %bb.t, label %._crit_edge

bb.ab:                                            ; preds = %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ax, ptr %i.aw, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.d) #21
          to label %.thread unwind label %bb.n

bb.ac:                                            ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ax, ptr %i.aw, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.f) #21
          to label %.thread unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapReINtNtBK_6borrow3CoweEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.thread, %bb.j
  %.pn58.pn = phi { ptr, i32 } [ %lpad.phi, %bb.j ], [ %.pn.pn, %.thread ]
  resume { ptr, i32 } %.pn58.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1o_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB7_8BTreeMapReINtNtBd_6borrow3CoweEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTB18_B1a_EE9from_iterINtNtNtB1D_8adapters3map3MapINtNtNtB1F_5slice4iter4IterTB18_B18_EENCNvXs4_CsamjPIc071P4_6metricNtB43_10AttributesINtNtB1F_7convert4FromRAB3K_j1_E4from0EECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecTReINtNtB6_6borrow3CoweEEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterTBU_BU_EENCNvXs4_CsamjPIc071P4_6metricNtB3c_10AttributesINtNtB1P_7convert4FromRAB2V_j1_E4from0EE9from_iterCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef %2)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 6 uses
  %i.j = icmp ult i64 %i.i, 230584300921369396
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTReINtNtB7_6borrow3CoweEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTReINtNtBG_6borrow3CoweEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTReINtNtB7_6borrow3CoweEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.m, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.ae, %bb.m ], [ %lpad.thr_comm, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTReINtNtBG_6borrow3CoweEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTReINtNtB7_6borrow3CoweEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !701
  store ptr %i.a, ptr %i.e, align 8, !noalias !702
  %i.q = icmp eq i64 %i.i, 1
  br i1 %i.q, label %bb.j, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i64 %i.i, 21
  br i1 %i.r, label %bb.h, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainTReINtNtCscdodAO9FK5_5alloc6borrow3CoweEENCINvMNtB17_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2i_8BTreeMapB10_B12_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtB6_4iter4IterTB10_B10_EENCNvXs4_CsamjPIc071P4_6metricNtB5f_10AttributesINtNtB8_7convert4FromRAB4W_j1_E4from0EE0E0INtNtB17_3vec3VecBZ_EECs7q2UDKzmthI_9iox_query(ptr noalias noundef nonnull align 8 %i.p, i64 noundef range(i64 1, 230584300921369396) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.j unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTReINtNtCscdodAO9FK5_5alloc6borrow3CoweEENCINvMNtB1u_5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB1u_11collections5btree3mapINtB2G_8BTreeMapB1n_B1p_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB3J_8adapters3map3MapINtNtB8_4iter4IterTB1n_B1n_EENCNvXs4_CsamjPIc071P4_6metricNtB5E_10AttributesINtNtBa_7convert4FromRAB5l_j1_E4from0EE0E0ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.p, i64 noundef range(i64 1, 230584300921369396) %i.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.j unwind label %bb.n

bb.i:                                             ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTReINtNtBG_6borrow3CoweEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !705
  %i.s = invoke { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedReINtNtBc_6borrow3CoweENtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECsfxgMthLVlAZ_21influxdb3_clap_blocks()
          to label %bb.k unwind label %bb.m, !noalias !705 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !noalias !705
  store ptr %i.t, ptr %i.d, align 8, !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !705
  store i64 0, ptr %i.c, align 8, !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !705
  %.sroa.04.0.copyload.i = load i64, ptr %i.f, align 8, !alias.scope !704
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.45.0.copyload.i = load ptr, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !704, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !704 ; 2 uses
  %i.w = icmp ult i64 %.sroa.56.0.copyload.i, 230584300921369396
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %.sroa.45.0.copyload.i, i64 %.sroa.56.0.copyload.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -3, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sroa.45.0.copyload.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.45.0.copyload.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.04.0.copyload.i, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !705
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.x, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !705
  call void @_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBV_6marker5OwnedReINtNtB9_6borrow3CoweENtB1f_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedIterB1x_B1z_INtNtNtB9_3vec9into_iter8IntoIterTB1x_B1z_EEENtNtB9_5alloc6GlobalECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !705
  %i.y = load ptr, ptr %i.d, align 8, !noalias !705, !nonnull !6, !noundef !6
  %i.z = load i64, ptr %i.v, align 8, !noalias !705, !noundef !6
  %i.aa = load i64, ptr %i.c, align 8, !noalias !705, !noundef !6
  store ptr %i.y, ptr %0, align 8, !alias.scope !703
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !alias.scope !703
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.ac, align 8, !alias.scope !703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.l:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22, !noalias !703
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTReINtNtBG_6borrow3CoweEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #21
          to label %common.resume unwind label %bb.l, !noalias !703

bb.n:                                             ; preds = %bb.h, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTReINtNtBG_6borrow3CoweEEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %i.g) #21
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtBc_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1l_3cmpB3_E0ECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !725
  br label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEINtNtNtBe_3ops12control_flow11ControlFlowIB22_NtNtBe_3cmp8OrderingB2L_EENCINvNvB8_12iter_compare7compareINtNtNtNtB1u_11collections5btree3map4IterB1m_B1p_EB1k_B2L_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB3H_B6_3cmpB3H_E0E0E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEINtNtNtBe_3ops12control_flow11ControlFlowIB22_NtNtBe_3cmp8OrderingB2L_EENCINvNvB8_12iter_compare7compareINtNtNtNtB1u_11collections5btree3map4IterB1m_B1p_EB1k_B2L_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB3H_B6_3cmpB3H_E0E0E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6cmp_by7compareTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEB1g_NCINvYINtNtNtNtB1q_11collections5btree3map4IterB1i_B1l_EB6_3cmpB27_E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i, %bb.a
  %i.c = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterReINtNtBb_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null            ; 2 uses
  br i1 %.not.i.i.i, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtBc_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvB1n_12iter_compare7compareB3_TRBX_RBZ_ENtNtB1t_3cmp8OrderingNCINvNvB1l_6cmp_by7compareB34_B34_NCINvYB3_B1l_3cmpB3_E0E0E0INtNtNtB1t_3ops12control_flow11ControlFlowIB4y_B3e_B3e_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEINtNtNtBe_3ops12control_flow11ControlFlowIB22_NtNtBe_3cmp8OrderingB2L_EENCINvNvB8_12iter_compare7compareINtNtNtNtB1u_11collections5btree3map4IterB1m_B1p_EB1k_B2L_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB3H_B6_3cmpB3H_E0E0E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %.val11.i.i.i = load ptr, ptr %i.d, align 8     ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val12.i.i.i = load i64, ptr %i.f, align 8     ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %.val13.i.i.i = load ptr, ptr %i.g, align 8     ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %.val14.i.i.i = load i64, ptr %i.h, align 8     ; 2 uses
  %i.i = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterReINtNtBb_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %.not.i.i.i.i.not.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.not.not.i, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtBc_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvB1n_12iter_compare7compareB3_TRBX_RBZ_ENtNtB1t_3cmp8OrderingNCINvNvB1l_6cmp_by7compareB34_B34_NCINvYB3_B1l_3cmpB3_E0E0E0INtNtNtB1t_3ops12control_flow11ControlFlowIB4y_B3e_B3e_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val17.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !726, !nonnull !6, !noundef !6
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val18.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !726, !noundef !6 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i) ]
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i.i, i64 %.val18.i.i.i.i.i)
  %i.l = call i32 @memcmp(ptr nonnull readonly %.val11.i.i.i, ptr nonnull readonly %.val17.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !727, !noalias !728 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  %i.o = sub i64 %.val12.i.i.i, %.val18.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.n, i64 %i.o, i64 %i.m ; 2 uses
  %i.p = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i, i64 0)
  %i.q = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %bb.d, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6cmp_by7compareTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEB1g_NCINvYINtNtNtNtB1q_11collections5btree3map4IterB1i_B1l_EB6_3cmpB27_E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = extractvalue { ptr, ptr } %i.i, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %.val20.i.i.i.i.i = load i64, ptr %i.s, align 8 ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %.val19.i.i.i.i.i = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i) ]
  %spec.store.select.i.i.i5.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val14.i.i.i, i64 %.val20.i.i.i.i.i)
  %i.u = call i32 @memcmp(ptr nonnull readonly %.val13.i.i.i, ptr nonnull readonly %.val19.i.i.i.i.i, i64 %spec.store.select.i.i.i5.i.i.i.i.i.i.i.i), !alias.scope !729, !noalias !730 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val14.i.i.i, %.val20.i.i.i.i.i
  %spec.select.i.i.i6.i.i.i.i.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i6.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6cmp_by7compareTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEB1g_NCINvYINtNtNtNtB1q_11collections5btree3map4IterB1i_B1l_EB6_3cmpB27_E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6cmp_by7compareTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEB1g_NCINvYINtNtNtNtB1q_11collections5btree3map4IterB1i_B1l_EB6_3cmpB27_E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.y, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.z = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEINtNtNtBe_3ops12control_flow11ControlFlowIB22_NtNtBe_3cmp8OrderingB2L_EENCINvNvB8_12iter_compare7compareINtNtNtNtB1u_11collections5btree3map4IterB1m_B1p_EB1k_B2L_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB3H_B6_3cmpB3H_E0E0E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i, label %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtBc_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvB1n_12iter_compare7compareB3_TRBX_RBZ_ENtNtB1t_3cmp8OrderingNCINvNvB1l_6cmp_by7compareB34_B34_NCINvYB3_B1l_3cmpB3_E0E0E0INtNtNtB1t_3ops12control_flow11ControlFlowIB4y_B3e_B3e_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i

_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtBc_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvB1n_12iter_compare7compareB3_TRBX_RBZ_ENtNtB1t_3cmp8OrderingNCINvNvB1l_6cmp_by7compareB34_B34_NCINvYB3_B1l_3cmpB3_E0E0E0INtNtNtB1t_3ops12control_flow11ControlFlowIB4y_B3e_B3e_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6cmp_by7compareTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEB1g_NCINvYINtNtNtNtB1q_11collections5btree3map4IterB1i_B1l_EB6_3cmpB27_E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i, %bb.b, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEINtNtNtBe_3ops12control_flow11ControlFlowIB22_NtNtBe_3cmp8OrderingB2L_EENCINvNvB8_12iter_compare7compareINtNtNtNtB1u_11collections5btree3map4IterB1m_B1p_EB1k_B2L_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB3H_B6_3cmpB3H_E0E0E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i
  %.sroa.3.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6cmp_by7compareTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEB1g_NCINvYINtNtNtNtB1q_11collections5btree3map4IterB1i_B1l_EB6_3cmpB27_E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i.i.i ], [ 1, %bb.b ], [ undef, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callTRReRINtNtCscdodAO9FK5_5alloc6borrow3CoweEEINtNtNtBe_3ops12control_flow11ControlFlowIB22_NtNtBe_3cmp8OrderingB2L_EENCINvNvB8_12iter_compare7compareINtNtNtNtB1u_11collections5btree3map4IterB1m_B1p_EB1k_B2L_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB3H_B6_3cmpB3H_E0E0E0E0CsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i.i ]
  br i1 %.not.i.i.i, label %bb.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtB19_6borrow3CoweEEB10_NCINvNvNtB2_8Iterator6cmp_by7compareTRB1U_RB1W_EB2X_NCINvYB10_B2u_3cmpB10_E0E0NtNtB8_3cmp8OrderingECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.e:                                             ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtBc_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvB1n_12iter_compare7compareB3_TRBX_RBZ_ENtNtB1t_3cmp8OrderingNCINvNvB1l_6cmp_by7compareB34_B34_NCINvYB3_B1l_3cmpB3_E0E0E0INtNtNtB1t_3ops12control_flow11ControlFlowIB4y_B3e_B3e_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  %i.aa = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterReINtNtBb_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %.not6.i = icmp ne ptr %i.ab, null
  %.sroa.04.0.i = sext i1 %.not6.i to i8
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtB19_6borrow3CoweEEB10_NCINvNvNtB2_8Iterator6cmp_by7compareTRB1U_RB1W_EB2X_NCINvYB10_B2u_3cmpB10_E0E0NtNtB8_3cmp8OrderingECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator12iter_compareINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtB19_6borrow3CoweEEB10_NCINvNvNtB2_8Iterator6cmp_by7compareTRB1U_RB1W_EB2X_NCINvYB10_B2u_3cmpB10_E0E0NtNtB8_3cmp8OrderingECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtBc_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvB1n_12iter_compare7compareB3_TRBX_RBZ_ENtNtB1t_3cmp8OrderingNCINvNvB1l_6cmp_by7compareB34_B34_NCINvYB3_B1l_3cmpB3_E0E0E0INtNtNtB1t_3ops12control_flow11ControlFlowIB4y_B3e_B3e_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, %bb.e
  %.sroa.3.0.i = phi i8 [ %.sroa.04.0.i, %bb.e ], [ %.sroa.3.0.i.i.i, %_RINvYINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterReINtNtBc_6borrow3CoweEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_eachNCINvNvB1n_12iter_compare7compareB3_TRBX_RBZ_ENtNtB1t_3cmp8OrderingNCINvNvB1l_6cmp_by7compareB34_B34_NCINvYB3_B1l_3cmpB3_E0E0E0INtNtNtB1t_3ops12control_flow11ControlFlowIB4y_B3e_B3e_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.3.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB30_6future6future6Futurep6OutputINtNtB30_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB30_6marker4SendEL_EEEEE7upgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.c = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %i.b monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.06.0.i = phi i64 [ %i.d, %bb.b ], [ %i.j, %bb.f ] ; 4 uses
  %i.e = icmp eq i64 %.sroa.06.0.i, 0
  br i1 %i.e, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.f, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @10, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %.sroa.06.0.i, 1
  %i.h = cmpxchg weak ptr %i.b, i64 %.sroa.06.0.i, i64 %i.g acquire monotonic, align 8 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  br i1 %i.i, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.c

_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.c, %bb.f, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.b, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCs1LivM9IBWqb_12object_store8throttle14ThrottledStoreNtNtB37_6memory8InMemoryENtB37_11ObjectStore13delete_stream00EEE7upgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.c = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %i.b monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.06.0.i = phi i64 [ %i.d, %bb.b ], [ %i.j, %bb.f ] ; 4 uses
  %i.e = icmp eq i64 %.sroa.06.0.i, 0
  br i1 %i.e, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.f, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @10, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %.sroa.06.0.i, 1
  %i.h = cmpxchg weak ptr %i.b, i64 %.sroa.06.0.i, i64 %i.g acquire monotonic, align 8 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  br i1 %i.i, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.c

_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.c, %bb.f, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.b, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store3gcp18GoogleCloudStorageNtB36_11ObjectStore13delete_stream00EEE7upgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.c = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %i.b monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.06.0.i = phi i64 [ %i.d, %bb.b ], [ %i.j, %bb.f ] ; 4 uses
  %i.e = icmp eq i64 %.sroa.06.0.i, 0
  br i1 %i.e, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.f, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @10, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %.sroa.06.0.i, 1
  %i.h = cmpxchg weak ptr %i.b, i64 %.sroa.06.0.i, i64 %i.g acquire monotonic, align 8 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  br i1 %i.i, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.c

_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.c, %bb.f, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.b, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store5local15LocalFileSystemNtB36_11ObjectStore13delete_stream00EEE7upgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.c = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %i.b monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.06.0.i = phi i64 [ %i.d, %bb.b ], [ %i.j, %bb.f ] ; 4 uses
  %i.e = icmp eq i64 %.sroa.06.0.i, 0
  br i1 %i.e, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.f, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @10, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %.sroa.06.0.i, 1
  %i.h = cmpxchg weak ptr %i.b, i64 %.sroa.06.0.i, i64 %i.g acquire monotonic, align 8 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  br i1 %i.i, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.c

_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.c, %bb.f, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.b, %bb.f ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs1LivM9IBWqb_12object_store6memory8InMemoryNtB36_11ObjectStore13delete_stream00EEE7upgradeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.c = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %i.b monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.06.0.i = phi i64 [ %i.d, %bb.b ], [ %i.j, %bb.f ] ; 4 uses
  %i.e = icmp eq i64 %.sroa.06.0.i, 0
  br i1 %i.e, label %_RINvMs1k_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB7_6AtomicjE10try_updateNvNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB1f_4WeakppE7upgrade17checked_incrementECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i64 %.sroa.06.0.i, -1
  br i1 %i.f, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @10, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = add nuw i64 %.sroa.06.0.i, 1
end_hunk_0
begin_hunk_1_@_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs1LivM9IBWqb_12object_store6client18CredentialProviderp10CredentialNtNtNtBK_5azure10credential15AzureCredentialEL_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !13, !invariant.load !6
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !6, !nonnull !6
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync6rwlock6RwLockIBw_NtNtNtCs1LivM9IBWqb_12object_store3aws10credential13AwsCredentialEEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXsf_NtNtCseCDlJsl44RV_5tokio4sync6rwlockINtB5_6RwLockINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs1LivM9IBWqb_12object_store3aws10credential13AwsCredentialEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs1LivM9IBWqb_12object_store5local6ConfigENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1196
  store ptr %i.c, ptr %i.a, align 8, !noalias !1196
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1196
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1199
  store ptr %i.c, ptr %i.a, align 8, !noalias !1199
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1199
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range5RangeyEEENtNtNtB8_6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1202, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1202, !nonnull !6, !noundef !6
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %1, align 8, !alias.scope !1202
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.a, align 8
  store <2 x i64> %i.g, ptr %i.f, align 8
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.thread: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsa_Csk0FzFVI8urx_8iox_timeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_12TimeProviderEL_EB10_5sleepCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !13, !invariant.load !6
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !6, !nonnull !6
  %i.l = tail call { ptr, ptr } %i.k(ptr noundef nonnull %i.i, i64 noundef %1, i32 noundef %2)
  ret { ptr, ptr } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtNtCs1LivM9IBWqb_12object_store5azure6clientNtB5_11AzureConfigNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 833
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @50, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @50, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @158, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @53, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @159, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.h, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @39, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @39, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.j, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @39, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.a, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @160, ptr %i.aa, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @165, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCs6gU0GsN6MoR_8lock_api6rwlockINtB5_6RwLockNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 6)
  %i.d = load atomic i64, ptr %0 monotonic, align 8 ; 4 uses
  %i.e = and i64 %i.d, 8
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ugt i64 %i.d, -17
  %or.cond.i.i = or i1 %i.g, %i.f
  br i1 %or.cond.i.i, label %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.a, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, !prof !21

_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i: ; preds = %bb.a
  %i.h = add nuw i64 %i.d, 16
  %i.i = cmpxchg weak ptr %0, i64 %i.d, i64 %i.h acquire monotonic, align 8
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread, label %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.a, !prof !22

_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.a: ; preds = %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %bb.a
  %i.k = call noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
  br i1 %i.k, label %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @176, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 17 to ptr), ptr %i.l, align 8
  %i.m = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3

_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread: ; preds = %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.b, align 8
  %i.o = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97)
          to label %bb.e unwind label %bb.c       ; 0 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3: ; preds = %bb.f, %bb.e, %bb.b
  %i.p = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.p

bb.c:                                             ; preds = %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw add ptr %0, i64 -16 release, align 8
  %i.s = and i64 %i.r, -14
  %i.t = icmp eq i64 %i.s, 18
  br i1 %i.t, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.g

bb.e:                                             ; preds = %_RNvXNtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs6gU0GsN6MoR_8lock_api6rwlock9RawRwLock15try_lock_shared.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = atomicrmw add ptr %0, i64 -16 release, align 8
  %i.v = and i64 %i.u, -14
  %i.w = icmp eq i64 %i.v, 18
  br i1 %i.w, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3, !prof !9

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit3

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockjEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCsamjPIc071P4_6metric8durationNtB5_17DurationHistogramNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 17, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs1LivM9IBWqb_12object_store6client5retryNtB5_11RetryConfigNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @182, ptr noalias noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @183, ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtNtCs1LivM9IBWqb_12object_store6client4http10connectionNtB5_10HttpClientNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs1LivM9IBWqb_12object_store6clientNtB5_13ClientOptionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [336 x i8], align 8               ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.v, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @192, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @193, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @194, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @121, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @195, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @121, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @121, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @121, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @196, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @196, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.l, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @197, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.m, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @197, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.n, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr @197, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr %i.o, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr @198, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr %i.p, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr @197, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store ptr %i.q, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @197, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr %i.r, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store ptr @196, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store ptr %i.s, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr @199, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr %i.t, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store ptr @196, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store ptr %i.u, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  store ptr @196, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 320
end_hunk_1
