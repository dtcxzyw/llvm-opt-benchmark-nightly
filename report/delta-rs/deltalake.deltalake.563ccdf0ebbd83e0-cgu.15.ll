inline.NumInlined: 6795
inline.NumDeleted: 2943
begin_hunk_0_@_RINvNtNtCs4tdlwR1I4n2_7parquet4file6writer19write_bloom_filtersINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake:bb.a
  %i.eu = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !4280
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.az, label %.body

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #42
          to label %.body unwind label %bb.bd, !noalias !4263

bb.ba:                                            ; preds = %.body.i, %.split359.us
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %.body.i ], [ %i.ed, %.split359.us ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j) #37
          to label %bb.ay unwind label %bb.bd, !noalias !4263

.body.i:                                          ; preds = %bb.bb, %.split363.us, %.split367.us
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.bb ], [ %i.ee, %.split363.us ], [ %i.ef, %.split367.us ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10statistics10StatisticsEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(128) %i.i) #37
          to label %bb.ba unwind label %bb.bd, !noalias !4263

bb.bb:                                            ; preds = %bb.bc, %.split372.us
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bc ], [ %i.eg, %.split372.us ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsEEECs7p2uQeJxui2_9deltalake(ptr %storemerge.i.us) #37
          to label %.body.i unwind label %bb.bd, !noalias !4263

bb.bc:                                            ; preds = %.split382.us, %.split377.us
  %.pn.i = phi { ptr, i32 } [ %i.ei, %.split382.us ], [ %i.eh, %.split377.us ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata24ParquetPageEncodingStatsEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %bb.bb unwind label %bb.bd, !noalias !4263

bb.bd:                                            ; preds = %.split382.us, %bb.bc, %bb.bb, %.body.i, %bb.ba, %bb.az
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !4263
  unreachable

bb.be:                                            ; preds = %.split418.us
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %.body, %bb.bf, %.split418.us
  %common.resume.op = phi { ptr, i32 } [ %i.ey, %bb.bf ], [ %i.et, %.split418.us ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.split351.us:                                     ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4tdlwR1I4n2_7parquet12bloom_filter5BlockENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet12bloom_filter4SbbfECs7p2uQeJxui2_9deltalake.exit69 unwind label %bb.bf

bb.bf:                                            ; preds = %.split351.us
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4tdlwR1I4n2_7parquet12bloom_filter5BlockENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet12bloom_filter4SbbfECs7p2uQeJxui2_9deltalake.exit69: ; preds = %.split351.us
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4tdlwR1I4n2_7parquet12bloom_filter5BlockENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.725)
  br label %bb.ax

bb.bh:                                            ; preds = %.body
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !4285, !noalias !4288
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !4285, !noalias !4288, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !4285, !noalias !4288 ; 2 uses
  %i.a = icmp ult i64 %.sroa.55.0.copyload.i, 96076792050570582
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  store ptr %.sroa.44.0.copyload.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2h_5ErrorEEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapIBR_INtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterINtNtB6_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1r_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2g_8dfschemaNtB4P_8DFSchema4iter0ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2g_5error15DataFusionErrorENCINvXso_B91_IB8Z_INtNtB3w_3vec3VecB8f_EB9L_EINtNtNtB4_6traits7collect12FromIteratorIB8Z_B8f_B9L_EE9from_iterBQ_E0Baz_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !alias.scope !4297, !noalias !4301
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4297, !noalias !4301
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB24_3map3MapIB2U_INtNtB24_3zip3ZipINtNtNtB28_5slice4iter4IterINtNtB28_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB3x_INtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB4o_8dfschemaNtB6G_8DFSchema4iter0ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0EINtNtB28_6result6ResultNtNtB28_7convert10InfallibleNtNtB4o_5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4290
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !4303, !noalias !4306
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_10filter_map9FilterMapINtNtB2_7flatten7FlatMapINtNtNtB6_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBR_INtNtNtB6_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB41_14LogDataHandler4iter00ENCB3V_0ENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5K_13RawDeltaTable18dataset_partitionss_0ENCB5E_s0_0ETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB6_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB86_5types3any5PyAnyEEEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB86_3err5PyErrENCINvXso_B9a_IB98_INtNtB77_3vec3VecB72_EB9U_EINtNtNtB4_6traits7collect12FromIteratorIB98_B72_B9U_EE9from_iterBQ_E0Bav_EB5K_(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !alias.scope !4315, !noalias !4319
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4315, !noalias !4319
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTNtNtB6_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1X_5types3any5PyAnyEEEEINtB2_12SpecFromIterBU_INtNtNtB1l_4iter8adapters12GenericShuntINtNtB3p_3map3MapINtNtB3p_10filter_map9FilterMapINtNtB3p_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB40_INtNtNtB1l_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB7g_14LogDataHandler4iter00ENCB7a_0ENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB8Z_13RawDeltaTable18dataset_partitionss_0ENCB8T_s0_0EINtNtB1l_6result6ResultNtNtB1l_7convert10InfallibleNtNtB1X_3err5PyErrEEE9from_iterB8Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread10, label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4308
  %i.f = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !4320, !noalias !4323
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB20_5types3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB20_5types3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !4325, !noalias !4328
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1I_5types3any5PyAnyEEEENtNtNtB16_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1P_5types3any5PyAnyEEEENtNtNtB1d_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread10 unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1P_5types3any5PyAnyEEEENtNtNtB1d_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringINtNtB4_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB20_5types3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread10:                                        ; preds = %bb.j, %bb.f, %bb.b
  %.pn9 = phi { ptr, i32 } [ %i.d, %bb.j ], [ %i.j, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.thread10 unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB33_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0ENCB2U_s2_0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6T_IB6R_INtB1x_3VecB67_EB7D_EINtNtNtB4_6traits7collect12FromIteratorIB6R_B67_B7D_EE9from_iterBQ_E0B8U_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !4337, !noalias !4341
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4337, !noalias !4341
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB2q_6filter6FilterINtNtB6_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB57_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0ENCB4Y_s2_0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4330
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !4342, !noalias !4345
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1v_INtNtB1B_5boxed3BoxNtB2k_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0ENCB3B_s_0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B7j_IB7h_INtB1z_3VecB6x_EB83_EINtNtNtB4_6traits7collect12FromIteratorIB7h_B6x_B83_EE9from_iterBQ_E0B9k_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !alias.scope !4354, !noalias !4358
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4354, !noalias !4358
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB24_3map3MapINtNtB24_7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB3A_INtNtB6_5boxed3BoxNtB42_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0ENCB5i_s_0EINtNtB28_6result6ResultNtNtB28_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4347
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !4359, !noalias !4362
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

end_hunk_0
begin_hunk_1_@_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB1b_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB2R_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6u_IB6s_IB1V_B5I_EB7e_EINtNtNtB4_6traits7collect12FromIteratorIB6s_B5I_B7e_EE9from_iterBQ_E0B8v_ECs7p2uQeJxui2_9deltalake:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB1b_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB2R_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6w_IB6u_IB1V_B5K_EB7g_EINtNtNtB4_6traits7collect12FromIteratorIB6u_B5K_B7g_EE9from_iterBQ_E0B8x_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !4732, !noalias !4736
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4732, !noalias !4736
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB6_9into_iter8IntoIterIBP_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB4N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4725
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !4737, !noalias !4740
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB1b_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB2R_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr0EIB1V_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6J_IB6H_IB1V_B5R_EB7t_EINtNtNtB4_6traits7collect12FromIteratorIB6H_B5R_B7t_EE9from_iterBQ_E0B8K_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !4749, !noalias !4753
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4749, !noalias !4753
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecIBP_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2v_3map3MapINtNtB6_9into_iter8IntoIterIBP_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB4S_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr0EINtNtB2z_6result6ResultNtNtB2z_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4742
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !4754, !noalias !4757
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2J_22DeltaFileSystemHandler22get_file_info_selectors0_0EINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4n_5types3any5PyAnyEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4n_3err5PyErrENCINvXso_B5p_IB5n_INtB1b_3VecB4i_EB69_EINtNtNtB4_6traits7collect12FromIteratorIB5n_B4i_B69_EE9from_iterBQ_E0B6K_EB2L_(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !4766, !noalias !4770
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4766, !noalias !4770
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB13_5types3any5PyAnyEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtNtB6_9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB57_22DeltaFileSystemHandler22get_file_info_selectors0_0EINtNtB2P_6result6ResultNtNtB2P_7convert10InfallibleNtNtB13_3err5PyErrEEE9from_iterB59_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread10, label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4759
  %i.f = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !4771, !noalias !4774
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !4776, !noalias !4779
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread10 unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread10:                                        ; preds = %bb.j, %bb.f, %bb.b
  %.pn9 = phi { ptr, i32 } [ %i.d, %bb.j ], [ %i.j, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.thread10 unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB2K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_expr0EINtNtB6_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6Y_IB6W_INtB1b_3VecB5E_EB7I_EINtNtNtB4_6traits7collect12FromIteratorIB6W_B5E_B7I_EE9from_iterBQ_E0B8Z_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !4788, !noalias !4792
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4788, !noalias !4792
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtB13_4iter8adapters12GenericShuntINtNtB3e_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5m_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_expr0EINtNtB13_6result6ResultNtNtB13_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4781
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !4793, !noalias !4796
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEENtNtNtBK_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEENtNtNtBR_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEENtNtNtBR_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2M_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0ENtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB5w_5error15DataFusionErrorENCINvXso_B6k_IB6i_INtB1b_3VecB5s_EB74_EINtNtNtB4_6traits7collect12FromIteratorIB6i_B5s_B74_EE9from_iterBQ_E0B7S_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !4805, !noalias !4809
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4805, !noalias !4809
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2w_3map3MapINtNtB6_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4V_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0EINtNtB2A_6result6ResultNtNtB2A_7convert10InfallibleNtNtB12_5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4798
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !4810, !noalias !4813
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

end_hunk_1
begin_hunk_2_@_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCINvNtB1Y_13expr_rewriter14normalize_colsB1U_INtB1b_3VecB1U_EE0EB1U_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B3O_IB3M_B3o_B4y_EINtNtNtB4_6traits7collect12FromIteratorIB3M_B1U_B4y_EE9from_iterBQ_E0B3o_ECs7p2uQeJxui2_9deltalake:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCINvNtB1Y_13expr_rewriter15normalize_sortsB1U_INtB1b_3VecB1U_EE0EB1U_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B3P_IB3N_B3p_B4z_EINtNtNtB4_6traits7collect12FromIteratorIB3N_B1U_B4z_EE9from_iterBQ_E0B3p_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !5060, !noalias !5064
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5060, !noalias !5064
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB6_9into_iter8IntoIterBY_ENCINvNtB12_13expr_rewriter15normalize_sortsBY_BO_E0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5053
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !5065, !noalias !5068
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCINvNtNtB1Y_13expr_rewriter8order_by25rewrite_sort_cols_by_aggsB1U_INtB1b_3VecB1U_EE0EB1U_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B4a_IB48_B3K_B4U_EINtNtNtB4_6traits7collect12FromIteratorIB48_B1U_B4U_EE9from_iterBQ_E0B3K_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !5077, !noalias !5081
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5077, !noalias !5081
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB6_9into_iter8IntoIterBY_ENCINvNtNtB12_13expr_rewriter8order_by25rewrite_sort_cols_by_aggsBY_BO_E0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5070
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !5082, !noalias !5085
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB2J_22DeltaFileSystemHandler22get_file_info_selectors_0EINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4m_5types3any5PyAnyEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4m_3err5PyErrENCINvXso_B5o_IB5m_INtB1b_3VecB4h_EB68_EINtNtNtB4_6traits7collect12FromIteratorIB5m_B4h_B68_EE9from_iterBQ_E0B6J_EB2L_(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !5094, !noalias !5098
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5094, !noalias !5098
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB13_5types3any5PyAnyEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNvMsg_NtCs7p2uQeJxui2_9deltalake10filesystemNtB57_22DeltaFileSystemHandler22get_file_info_selectors_0EINtNtB2P_6result6ResultNtNtB2P_7convert10InfallibleNtNtB13_3err5PyErrEEE9from_iterB59_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread10, label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5087
  %i.f = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !5099, !noalias !5102
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !5104, !noalias !5107
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBK_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread10 unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types3any5PyAnyEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types3any5PyAnyEEECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread10:                                        ; preds = %bb.j, %bb.f, %bb.b
  %.pn9 = phi { ptr, i32 } [ %i.d, %bb.j ], [ %i.j, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.thread10 unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2T_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0ENtB1Y_5IdentINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6g_IB6e_INtB1b_3VecB61_EB70_EINtNtNtB4_6traits7collect12FromIteratorIB6e_B61_B70_EE9from_iterBQ_E0B8h_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !5116, !noalias !5120
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5116, !noalias !5120
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2j_3map3MapINtNtB6_9into_iter8IntoIterNtNtB10_3ddl13ViewColumnDefENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4p_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0EINtNtB2n_6result6ResultNtNtB2n_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5109
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !5121, !noalias !5124
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB35_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6F_IB6D_INtB1b_3VecB5T_EB7p_EINtNtNtB4_6traits7collect12FromIteratorIB6D_B5T_B7p_EE9from_iterBQ_E0B8G_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !5133, !noalias !5137
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5133, !noalias !5137
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB6_9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB58_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates0_0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5126
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !5138, !noalias !5141
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

end_hunk_2
begin_hunk_3_@_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query23ExprWithAliasAndOrderByENCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB35_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregates_0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6E_IB6C_INtB1b_3VecB5S_EB7o_EINtNtNtB4_6traits7collect12FromIteratorIB6C_B5S_B7o_EE9from_iterBQ_E0B8F_ECs7p2uQeJxui2_9deltalake:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2T_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0EINtNtB1d_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B75_IB73_INtB1b_3VecB61_EB7P_EINtNtNtB4_6traits7collect12FromIteratorIB73_B61_B7P_EE9from_iterBQ_E0B96_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !5167, !noalias !5171
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5167, !noalias !5171
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2H_3map3MapINtNtB6_9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5d_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0EINtNtB2L_6result6ResultNtNtB2L_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5160
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !5172, !noalias !5175
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1V_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvB2K_25convert_partition_filters0ENtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4f_6errors15DeltaTableErrorENCINvXso_B5t_IB5r_INtB1b_3VecB47_EB6d_EINtNtNtB4_6traits7collect12FromIteratorIB5r_B47_B6d_EE9from_iterBQ_E0B72_EB2K_(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -9223372036854775711, ptr %i.c, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !5184, !noalias !5188
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5184, !noalias !5188
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB30_3map3MapINtNtB6_9into_iter8IntoIterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB4y_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvB5n_25convert_partition_filters0EINtNtB34_6result6ResultNtNtB34_7convert10InfallibleNtNtB16_6errors15DeltaTableErrorEEE9from_iterB5n_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 16, !range !543, !noundef !12
  %.not = icmp eq i64 %i.e, -9223372036854775711
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5177
  %i.f = load i64, ptr %i.c, align 16, !range !543, !noundef !12
  %.not.not = icmp eq i64 %i.f, -9223372036854775711
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16, !alias.scope !5189, !noalias !5192
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.c, i64 96, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvMs1e_NtCs7p2uQeJxui2_9deltalake6schemaNtB3s_10StructType8___repr__0EB1Q_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrENCINvXso_B4A_IB4y_INtNtB1U_3vec3VecB1Q_EB5k_EINtNtNtB4_6traits7collect12FromIteratorIB4y_B1Q_B5k_EE9from_iterBQ_E0B6a_EB3u_(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !5201, !noalias !5205
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5201, !noalias !5205
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1G_3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesBU_NtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvMs1e_NtCs7p2uQeJxui2_9deltalake6schemaNtB4z_10StructType8___repr__0EINtNtB1K_6result6ResultNtNtB1K_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrEEE9from_iterB4B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread10, label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5194
  %i.f = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !5206, !noalias !5209
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !5211, !noalias !5214
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread10 unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread10:                                        ; preds = %bb.j, %bb.f, %bb.b
  %.pn9 = phi { ptr, i32 } [ %i.d, %bb.j ], [ %i.j, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.thread10 unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvMs1q_NtCs7p2uQeJxui2_9deltalake6schemaNtB3s_8PySchema8___repr__0EB1Q_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrENCINvXso_B4x_IB4v_INtNtB1U_3vec3VecB1Q_EB5h_EINtNtNtB4_6traits7collect12FromIteratorIB4v_B1Q_B5h_EE9from_iterBQ_E0B67_EB3u_(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !5223, !noalias !5227
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5223, !noalias !5227
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1G_3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesBU_NtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvMs1q_NtCs7p2uQeJxui2_9deltalake6schemaNtB4z_8PySchema8___repr__0EINtNtB1K_6result6ResultNtNtB1K_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrEEE9from_iterB4B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread10, label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5216
  %i.f = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !5228, !noalias !5231
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !5233, !noalias !5236
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread10 unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread10:                                        ; preds = %bb.j, %bb.f, %bb.b
  %.pn9 = phi { ptr, i32 } [ %i.d, %bb.j ], [ %i.j, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.thread10 unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB6_6option6OptionNtNtB27_6string6StringEEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3w_13RawDeltaTable21get_active_partitionss8_0EINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4M_5types9frozenset11PyFrozenSetEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4M_3err5PyErrENCINvXso_B61_IB5Z_IB23_B4H_EB6L_EINtNtNtB4_6traits7collect12FromIteratorIB5Z_B4H_B6L_EE9from_iterBQ_E0B7m_EB3w_(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !5245, !noalias !5249
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5245, !noalias !5249
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBZ_5types9frozenset11PyFrozenSetEEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2B_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterIBL_TReINtNtB2F_6option6OptionNtNtB6_6string6StringEEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5E_13RawDeltaTable21get_active_partitionss8_0EINtNtB2F_6result6ResultNtNtB2F_7convert10InfallibleNtNtBZ_3err5PyErrEEE9from_iterB5E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread10, label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5238
  %i.f = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !5250, !noalias !5253
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types9frozenset11PyFrozenSetEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types9frozenset11PyFrozenSetEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !5255, !noalias !5258
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBK_5types9frozenset11PyFrozenSetEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types9frozenset11PyFrozenSetEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread10 unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBR_5types9frozenset11PyFrozenSetEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1i_5types9frozenset11PyFrozenSetEEECs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread10:                                        ; preds = %bb.j, %bb.f, %bb.b
  %.pn9 = phi { ptr, i32 } [ %i.d, %bb.j ], [ %i.j, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.thread10 unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB6_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB24_5error15DataFusionErrorEEB20_IB1F_NtNtB6_7convert10InfallibleB2P_ENCINvXso_B1H_IB1F_INtBV_3VecB20_EB2P_EINtNtNtB4_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0B4j_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !5267, !noalias !5271
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5267, !noalias !5271
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB6_9into_iter8IntoIterINtNtB2A_6result6ResultBY_NtNtB12_5error15DataFusionErrorEEIB3N_NtNtB2A_7convert10InfallibleB4c_EEE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5260
  %i.f = load i64, ptr %i.c, align 8, !range !4302, !noundef !12
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !5272, !noalias !5275
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEEB2g_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  store ptr %i.c, ptr %i.a, align 8
  call void @_RNvXs0_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6optionINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEENtNtBb_10conversion12FromPyObject13extract_boundB23_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %0, align 8, !range !11, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  call void @_RNvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject30failed_to_extract_struct_field(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB2C_EEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  store ptr %i.c, ptr %i.a, align 8
  call void @_RNvXs0_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6optionINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB2p_EENtNtBb_10conversion12FromPyObject13extract_boundCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %0, align 8, !range !11, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  call void @_RNvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject30failed_to_extract_struct_field(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  store i64 1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIB16_NtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEEEB3l_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12
  store ptr %i.c, ptr %i.a, align 8
  call void @_RNvXs0_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6optionINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIBT_NtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEENtNtBb_10conversion12FromPyObject13extract_boundB37_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %0, align 8, !range !11, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
end_hunk_3
