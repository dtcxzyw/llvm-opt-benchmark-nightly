inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEEINtB2_12SpecFromIterBU_INtNtNtBZ_4iter8adapters12GenericShuntINtNtB31_3map3MapIB3B_INtNtNtBZ_5slice4iter4IterB1w_ENCNvMsb_NtB1T_6fieldsNtB4z_11UnionFields4iter0ENCINvNvMs_B4z_NtB4z_6Fields17try_filter_leaves12filter_fieldNCIB5h_NCINvB5j_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB6P_12arrow_reader18ArrowReaderBuilderINtB6N_11AsyncReaderNtNtB6N_5store19ParquetObjectReaderEE5builds_0E0E0Es0_0EINtNtBZ_6result6ResultNtNtBZ_7convert10InfallibleNtNtB1T_5error10ArrowErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.y = load i64, ptr %i.d, align 8, !range !79, !noalias !17410, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !107, !noalias !17410, !noundef !8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.z, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %.noexc6.i
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !17410
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #27
          to label %.noexc7.i unwind label %bb.d, !noalias !17407

.noexc7.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc6.i
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !17410, !nonnull !8, !noundef !8 ; 3 uses
  %i.af = icmp ule i64 %.sroa.0.0.i.i, %i.ab
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17410
  store i8 %i.m, ptr %i.ae, align 8, !noalias !17407
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.o, ptr %i.ag, align 8, !noalias !17407
  store i64 %i.ab, ptr %i.i, align 8, !noalias !17410
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17410
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !17410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !17407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17428
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMsb_NtB2l_6fieldsNtB3a_11UnionFields4iter0ENCINvNvMs_B3a_NtB3a_6Fields17try_filter_leaves12filter_fieldNCIB3S_NCINvB3U_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5q_12arrow_reader18ArrowReaderBuilderINtB5o_11AsyncReaderNtNtB5o_5store19ParquetObjectReaderEE5builds_0E0E0Es0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2l_5error10ArrowErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc8.i unwind label %.loopexit.split-lp.i, !noalias !17407

.noexc8.i:                                        ; preds = %bb.i
  %i.ah = load i64, ptr %i.c, align 8, !range !79, !noalias !17428, !noundef !8
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %.loopexit10.i

.lr.ph.i.i.i:                                     ; preds = %.noexc8.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.noexc9.i, %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17428
  %i.am = load i8, ptr %i.aj, align 8, !noalias !17428 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !noalias !17428, !noundef !8 ; 4 uses
  store i8 %i.am, ptr %i.b, align 8, !noalias !17428
  store ptr %i.an, ptr %i.al, align 8, !noalias !17428
  %i.ao = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !17431, !noalias !17432, !noundef !8 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 576460752303423488
  call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %i.i, align 8, !range !83, !alias.scope !17431, !noalias !17432, !noundef !8
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17428
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMsb_NtB2l_6fieldsNtB3a_11UnionFields4iter0ENCINvNvMs_B3a_NtB3a_6Fields17try_filter_leaves12filter_fieldNCIB3S_NCINvB3U_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5q_12arrow_reader18ArrowReaderBuilderINtB5o_11AsyncReaderNtNtB5o_5store19ParquetObjectReaderEE5builds_0E0E0Es0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2l_5error10ArrowErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.o unwind label %bb.l, !noalias !17407

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.j
  %i.as = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17431, !noalias !17432, !nonnull !8, !noundef !8
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ao ; 2 uses
  store i8 %i.am, ptr %i.at, align 8, !noalias !17407
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.an, ptr %i.au, align 8, !noalias !17407
  %i.av = add nuw nsw i64 %i.ao, 1
  store i64 %i.av, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !17431, !noalias !17432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17428
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMsb_NtB2l_6fieldsNtB3a_11UnionFields4iter0ENCINvNvMs_B3a_NtB3a_6Fields17try_filter_leaves12filter_fieldNCIB3S_NCINvB3U_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5q_12arrow_reader18ArrowReaderBuilderINtB5o_11AsyncReaderNtNtB5o_5store19ParquetObjectReaderEE5builds_0E0E0Es0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2l_5error10ArrowErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !17407

.noexc9.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.aw = load i64, ptr %i.c, align 8, !range !79, !noalias !17428, !noundef !8
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.j, label %.loopexit10.i

bb.l:                                             ; preds = %bb.p, %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.az = icmp eq ptr %i.an, null
  br i1 %i.az, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !17433
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.n, label %.body.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al) #30
          to label %.body.i unwind label %bb.q, !noalias !17407

bb.o:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.a, align 8, !noalias !17428, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17428
  %i.bd = call i64 @llvm.uadd.sat.i64(i64 %i.bc, i64 1) ; 2 uses
  %i.be = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !17442, !noalias !17432, !noundef !8 ; 2 uses
  %i.bf = load i64, ptr %i.i, align 8, !range !83, !alias.scope !17442, !noalias !17432, !noundef !8
  %i.bg = sub i64 %i.bf, %i.be
  %i.bh = icmp ugt i64 %i.bd, %i.bg
  br i1 %i.bh, label %bb.p, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !84

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.be, i64 noundef range(i64 1, 0) %i.bd, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.l, !noalias !17407

bb.q:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !17407
  unreachable

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.n, %bb.m, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %i.ay, %bb.n ], [ %i.ay, %bb.m ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionTaINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #29
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.r, !noalias !17407

.loopexit10.i:                                    ; preds = %.noexc9.i, %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !17412
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB3f_3map3MapIB3Q_INtNtNtB16_5slice4iter4IterB1D_ENCNvMsb_NtB20_6fieldsNtB4P_11UnionFields4iter0ENCINvNvMs_B4P_NtB4P_6Fields17try_filter_leaves12filter_fieldNCIB5x_NCINvB5z_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB75_12arrow_reader18ArrowReaderBuilderINtB73_11AsyncReaderNtNtB73_5store19ParquetObjectReaderEE5builds_0E0E0Es0_0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB20_5error10ArrowErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %.body.i, %bb.f
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !17407
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.body.i, %bb.f, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.s, %bb.f ], [ %i.s, %bb.d ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB3f_3map3MapIB3Q_INtNtNtB16_5slice4iter4IterB1D_ENCNvMsb_NtB20_6fieldsNtB4P_11UnionFields4iter0ENCINvNvMs_B4P_NtB4P_6Fields17try_filter_leaves12filter_fieldNCIB5x_NCINvB5z_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB75_12arrow_reader18ArrowReaderBuilderINtB73_11AsyncReaderNtNtB73_5store19ParquetObjectReaderEE5builds_0E0E0Es0_0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB20_5error10ArrowErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %.loopexit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17410
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEEINtB2_12SpecFromIterBU_INtNtNtBZ_4iter8adapters12GenericShuntINtNtB1Z_3map3MapINtNtNtBZ_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtBZ_6result6ResultNtNtBZ_7convert10InfallibleNtNtB3o_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17448
  %i.f = tail call { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !17445 ; 2 uses
  %i.g = extractvalue { i8, i8 } %i.f, 0          ; 2 uses
  %i.h = extractvalue { i8, i8 } %i.f, 1
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17448
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !17445
  %i.i = load i64, ptr %i.d, align 8, !noalias !17448, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17448
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17448
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !17445
  %i.k = load i64, ptr %i.b, align 8, !range !79, !noalias !17448, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !107, !noalias !17448, !noundef !8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !17448
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #27, !noalias !17445
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !17448, !nonnull !8, !noundef !8 ; 3 uses
  %i.r = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17448
  %2 = and i8 %i.g, 1
  store i8 %2, ptr %i.q, align 1, !noalias !17445
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.h, ptr %i.s, align 1, !noalias !17445
  store i64 %i.n, ptr %i.e, align 8, !noalias !17448
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17448
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !17448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !17445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17453)
  %i.t = invoke { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !17445 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.u = extractvalue { i8, i8 } %i.t, 0          ; 2 uses
  %.not8.i.i.i = icmp eq i8 %i.u, 2
  br i1 %.not8.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc12.i
  %.pn.i.i.i = phi { i8, i8 } [ %i.al, %.noexc12.i ], [ %i.t, %.noexc.i ]
  %i.v = phi i8 [ %i.am, %.noexc12.i ], [ %i.u, %.noexc.i ]
  %i.w = extractvalue { i8, i8 } %.pn.i.i.i, 1
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !17456, !noalias !17457, !noundef !8 ; 4 uses
  %i.y = icmp ult i64 %i.x, 4611686018427387904
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.e, align 8, !range !83, !alias.scope !17456, !noalias !17457, !noundef !8
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17460
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !17445

.noexc10.i:                                       ; preds = %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !noalias !17460, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17460
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !17461, !noalias !17457, !noundef !8 ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !range !83, !alias.scope !17461, !noalias !17457, !noundef !8
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !84

bb.e:                                             ; preds = %.noexc10.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ad, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 1, i64 noundef 2)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.loopexit.i, !noalias !17445

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.e, %.noexc10.i, %.lr.ph.i.i.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17456, !noalias !17457, !nonnull !8, !noundef !8
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.x ; 2 uses
  %3 = and i8 %i.v, 1
  store i8 %3, ptr %i.ai, align 1, !noalias !17445
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 %i.w, ptr %i.aj, align 1, !noalias !17445
  %i.ak = add nuw nsw i64 %i.x, 1
  store i64 %i.ak, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !17456, !noalias !17457
  %i.al = invoke { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !17445 ; 2 uses

.noexc12.i:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.am = extractvalue { i8, i8 } %i.al, 0        ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.am, 2
  br i1 %.not.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !17445, !noalias !17464
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.an, align 8, !alias.scope !17445, !noalias !17464
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ao, align 8, !alias.scope !17445, !noalias !17464
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB16_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB3E_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.e, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionaEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionaEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !17445

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc12.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !17464
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB16_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB3E_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !17445
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionaEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB16_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB3E_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionaEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17448
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapIB1X_INtNtNtBZ_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s5_0ENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5R_12BooleanArrayINtNtNtB23_6traits7collect12FromIteratorBU_E9from_iterB2u_E0EE9from_iterB4e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17465
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17465
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !17465
  %i.h = load i64, ptr %i.b, align 8, !range !79, !noalias !17465, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !107, !noalias !17465, !noundef !8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapIB1C_INtNtNtBL_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s5_0ENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5w_12BooleanArrayINtNtNtB1I_6traits7collect12FromIteratorBG_E9from_iterB29_E0EEB3T_.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !17465
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !17465
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapIB1C_INtNtNtBL_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s5_0ENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5w_12BooleanArrayINtNtNtB1I_6traits7collect12FromIteratorBG_E9from_iterB29_E0EEB3T_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !17465, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17465
  store i64 %i.k, ptr %i.c, align 8, !noalias !17465
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !17465
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !17465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17468
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !17468
  store ptr %i.q, ptr %i.a, align 8, !noalias !17468
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !17468
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s5_0ENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB4j_12BooleanArrayINtNtNtBa_6traits7collect12FromIteratorINtNtBc_6option6OptionbEE9from_iterBX_E0ENtNtB5y_8iterator8Iterator4folduNCINvNvB6L_8for_each4callB66_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7T_3VecB66_E14extend_trustedBN_E0E0EB2G_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapIB2d_INtNtNtB18_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s5_0ENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB69_12BooleanArrayINtNtNtB2j_6traits7collect12FromIteratorB13_E9from_iterB2L_E0EE9from_iterB4w_.exit unwind label %bb.c, !noalias !17465

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapIB1C_INtNtNtBL_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s5_0ENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5w_12BooleanArrayINtNtNtB1I_6traits7collect12FromIteratorBG_E9from_iterB29_E0EEB3T_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionbEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionbEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d, !noalias !17465

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !17465
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionbEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapIB2d_INtNtNtB18_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s5_0ENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB69_12BooleanArrayINtNtNtB2j_6traits7collect12FromIteratorB13_E9from_iterB2L_E0EE9from_iterB4w_.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapIB1C_INtNtNtBL_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s5_0ENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB5w_12BooleanArrayINtNtNtB1I_6traits7collect12FromIteratorBG_E9from_iterB29_E0EEB3T_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17465
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtB21_12GenericShuntIB1X_INtNtB21_8peekable8PeekableIB1X_INtNtNtBZ_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB3W_11transaction5stateNtB4Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6c_11ScalarValue13iter_to_arrayB3l_Es6_0EINtNtBZ_6result6ResultNtNtBZ_7convert10InfallibleNtNtB6e_5error15DataFusionErrorEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB93_12BooleanArrayINtNtNtB23_6traits7collect12FromIteratorBU_E9from_iterB2u_E0EE9from_iterB3Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [144 x i8], align 16              ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17478
  %i.f = invoke noundef range(i8 0, 4) i8 @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Es6_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef nonnull align 16 dereferenceable(144) %1)
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtB7_12GenericShuntIBN_INtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2k_11transaction5stateNtB3m_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4A_11ScalarValue13iter_to_arrayB1K_Es6_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB4C_5error15DataFusionErrorEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB7r_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionbEE9from_iterBW_E0ENtNtB8G_8iterator8Iterator4nextB2m_.exit.i unwind label %bb.b, !noalias !17473 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtB7_12GenericShuntIBN_INtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2k_11transaction5stateNtB3m_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4A_11ScalarValue13iter_to_arrayB1K_Es6_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB4C_5error15DataFusionErrorEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB7r_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionbEE9from_iterBW_E0ENtNtB8G_8iterator8Iterator4nextB2m_.exit.i: ; preds = %bb.a
  %.not.i = icmp eq i8 %i.f, 3
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtB7_12GenericShuntIBN_INtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2k_11transaction5stateNtB3m_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4A_11ScalarValue13iter_to_arrayB1K_Es6_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB4C_5error15DataFusionErrorEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB7r_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionbEE9from_iterBW_E0ENtNtB8G_8iterator8Iterator4nextB2m_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17478
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Es6_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %1)
          to label %bb.g unwind label %bb.f, !noalias !17473

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtB7_12GenericShuntIBN_INtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2k_11transaction5stateNtB3m_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4A_11ScalarValue13iter_to_arrayB1K_Es6_0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB4C_5error15DataFusionErrorEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB7r_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionbEE9from_iterBW_E0ENtNtB8G_8iterator8Iterator4nextB2m_.exit.i
  store i64 0, ptr %0, align 8, !alias.scope !17473, !noalias !17476
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8, !alias.scope !17473, !noalias !17476
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8, !alias.scope !17473, !noalias !17476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17478
  %i.j = load i128, ptr %1, align 16, !range !2534, !alias.scope !17479, !noalias !17473, !noundef !8
  %i.k = and i128 %i.j, 62
  %switch.i.i.i.i.i.i = icmp eq i128 %i.k, 50
  br i1 %switch.i.i.i.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters3map3MapINtB2f_12GenericShuntIB2b_INtNtB2f_8peekable8PeekableIB2b_INtNtNtB16_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB4c_11transaction5stateNtB5e_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6s_11ScalarValue13iter_to_arrayB3A_Es6_0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB6u_5error15DataFusionErrorEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB9l_12BooleanArrayINtNtNtB2h_6traits7collect12FromIteratorB11_E9from_iterB2J_E0EE9from_iterB4e_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(144) %1), !noalias !17473
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters3map3MapINtB2f_12GenericShuntIB2b_INtNtB2f_8peekable8PeekableIB2b_INtNtNtB16_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB4c_11transaction5stateNtB5e_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6s_11ScalarValue13iter_to_arrayB3A_Es6_0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB6u_5error15DataFusionErrorEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB9l_12BooleanArrayINtNtNtB2h_6traits7collect12FromIteratorB11_E9from_iterB2J_E0EE9from_iterB4e_.exit

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.g:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !noalias !17478, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17478
  %i.n = tail call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 8) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17478
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.f, !noalias !17473

.noexc.i:                                         ; preds = %bb.g
  %i.o = load i64, ptr %i.b, align 8, !range !79, !noalias !17478, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !107, !noalias !17478, !noundef !8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %.noexc.i
  %i.t = load i64, ptr %i.s, align 8, !noalias !17478
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #27
          to label %.noexc8.i unwind label %bb.f, !noalias !17473

.noexc8.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc.i
  %i.u = load ptr, ptr %i.s, align 8, !noalias !17478, !nonnull !8, !noundef !8 ; 2 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17478
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEEINtB2_12SpecFromIterBU_INtNtNtNtBZ_4iter8adapters3map3MapINtNtB21_5chain5ChainINtNtB21_6copied6CopiedINtNtNtBZ_5slice4iter4IterbEEINtNtNtB23_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB4r_12BooleanArrayINtNtNtB23_6traits7collect12FromIteratorbE9from_iterB2u_E0EE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.u, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i._RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i_crit_edge, label %bb.j, !prof !17742

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i._RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i_crit_edge: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !noalias !17728
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i._RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i_crit_edge, %bb.c, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.sink.split.i
  %i.v = phi i64 [ %.pre, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i._RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i_crit_edge ], [ %i.s, %bb.c ], [ %.sink.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17728
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.v, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !17740
  %i.w = load i64, ptr %i.d, align 8, !range !79, !noalias !17728, !noundef !8
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !107, !noalias !17728, !noundef !8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %bb.d, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !17728
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #27, !noalias !17740
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.ac = load ptr, ptr %i.aa, align 8, !noalias !17728, !nonnull !8, !noundef !8
  %i.ad = icmp ule i64 %i.v, %i.z
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17728
  store i64 %i.z, ptr %i.h, align 8, !noalias !17728
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !17728
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store i64 0, ptr %i.af, align 8, !noalias !17728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !17740
  call void @llvm.experimental.noalias.scope.decl(metadata !17743)
  call void @llvm.experimental.noalias.scope.decl(metadata !17746)
  call void @llvm.experimental.noalias.scope.decl(metadata !17748)
  call void @llvm.experimental.noalias.scope.decl(metadata !17751)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17753
  call void @llvm.experimental.noalias.scope.decl(metadata !17754)
  call void @llvm.experimental.noalias.scope.decl(metadata !17757)
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !17760, !noalias !17761, !noundef !8
  %.not.i.i.i.i3.i = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !range !2901, !alias.scope !17760, !noalias !17761, !noundef !8 ; 3 uses
  br i1 %.not.i.i.i.i3.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %.not7.i.i.i.i.i = icmp eq i8 %i.ai, 3
  br i1 %.not7.i.i.i.i.i, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.f

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !17764, !noalias !17765
  %.not.i.i4.i = icmp samesign ult i8 %i.ai, 2
  %.ph.i.i.i = select i1 %.not.i.i4.i, i64 %.val11.i.i.i.i.i, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17753
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17766
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %.noexc.i unwind label %bb.k, !noalias !17740

.noexc.i:                                         ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !79, !noalias !17766, !noundef !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !17766 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17766
  %.val.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !17760, !noalias !17761
  %.not.i.i13.i.i.i.i.i = icmp eq i8 %i.ai, 2
  %.sroa.0.0.i.i14.i.i.i.i.i = select i1 %.not.i.i13.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i.i
  %i.ap = trunc nuw i64 %i.am to i1
  %i.aq = add i64 %.sroa.0.0.i.i14.i.i.i.i.i, %i.ao ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %narrow.i.i.i.i.i = select i1 %i.ap, i1 %i.ar, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17753
  br i1 %narrow.i.i.i.i.i, label %bb.g, label %bb.i, !prof !17742

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %.noexc5.i unwind label %bb.k, !noalias !17740

.noexc5.i:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !79, !noalias !17753
  %.phi.trans.insert5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre6.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i, align 8, !noalias !17753
  %i.as = trunc nuw i64 %.pre.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17753
  br i1 %i.as, label %bb.g, label %bb.i, !prof !17742

bb.g:                                             ; preds = %.noexc5.i, %.noexc.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  %i.at = phi i64 [ %.ph.i.i.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ], [ %.pre6.i.i.i, %.noexc5.i ], [ %i.aq, %.noexc.i ] ; 2 uses
  %i.au = load i64, ptr %i.af, align 8, !alias.scope !17767, !noalias !17770, !noundef !8 ; 3 uses
  %i.av = load i64, ptr %i.h, align 8, !range !83, !alias.scope !17767, !noalias !17770, !noundef !8
  %i.aw = sub i64 %i.av, %i.au
  %i.ax = icmp ugt i64 %i.at, %i.aw
  br i1 %i.ax, label %bb.h, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtB1G_5chain5ChainINtNtB1G_6copied6CopiedINtNtNtBL_5slice4iter4IterbEEINtNtNtB1I_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB46_12BooleanArrayINtNtNtB1I_6traits7collect12FromIteratorbE9from_iterB29_E0EECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.au, i64 noundef %i.at, i64 noundef 1, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.k, !noalias !17740

.noexc6.i:                                        ; preds = %bb.h
  %.pre7.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !17771, !noalias !17770
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtB1G_5chain5ChainINtNtB1G_6copied6CopiedINtNtNtBL_5slice4iter4IterbEEINtNtNtB1I_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB46_12BooleanArrayINtNtNtB1I_6traits7collect12FromIteratorbE9from_iterB29_E0EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.i:                                             ; preds = %.noexc5.i, %.noexc.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc7.i unwind label %bb.k, !noalias !17740

.noexc7.i:                                        ; preds = %bb.i
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtB1G_5chain5ChainINtNtB1G_6copied6CopiedINtNtNtBL_5slice4iter4IterbEEINtNtNtB1I_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB46_12BooleanArrayINtNtNtB1I_6traits7collect12FromIteratorbE9from_iterB29_E0EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc6.i, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %.pre7.i.i.i, %.noexc6.i ]
  %i.az = load ptr, ptr %i.ae, align 8, !alias.scope !17771, !noalias !17770, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17753
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !noalias !17753
  store ptr %i.af, ptr %i.b, align 8, !noalias !17753
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.bb, align 8, !noalias !17753
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterbEEINtNtNtBa_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2R_12BooleanArrayINtNtNtBa_6traits7collect12FromIteratorbE9from_iterBX_E0ENtNtB46_8iterator8Iterator4folduNCINvNvB4W_8for_each4callINtNtBc_6option6OptionbENCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6o_3VecB5R_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtB2h_5chain5ChainINtNtB2h_6copied6CopiedINtNtNtB18_5slice4iter4IterbEEINtNtNtB2j_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB4J_12BooleanArrayINtNtNtB2j_6traits7collect12FromIteratorbE9from_iterB2L_E0EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.k, !noalias !17740

bb.j:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !17740
  unreachable

bb.k:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtB1G_5chain5ChainINtNtB1G_6copied6CopiedINtNtNtBL_5slice4iter4IterbEEINtNtNtB1I_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB46_12BooleanArrayINtNtNtB1I_6traits7collect12FromIteratorbE9from_iterB29_E0EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.i, %bb.h, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2Q_12BooleanArrayINtNtNtB9_6traits7collect12FromIteratorbE9from_iterBW_E0ENtNtB45_8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionbEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionbEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.l, !noalias !17740

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !17740
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionbEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k
  resume { ptr, i32 } %i.bc

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtB2h_5chain5ChainINtNtB2h_6copied6CopiedINtNtNtB18_5slice4iter4IterbEEINtNtNtB2j_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB4J_12BooleanArrayINtNtNtB2j_6traits7collect12FromIteratorbE9from_iterB2L_E0EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionbEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtB1G_5chain5ChainINtNtB1G_6copied6CopiedINtNtNtBL_5slice4iter4IterbEEINtNtNtB1I_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB46_12BooleanArrayINtNtNtB1I_6traits7collect12FromIteratorbE9from_iterB29_E0EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !17725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17728
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEEINtB2_12SpecFromIterBU_INtNtNtBZ_4iter8adapters12GenericShuntINtNtB1Z_3map3MapINtNtNtBZ_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtBZ_6result6ResultNtNtBZ_7convert10InfallibleNtNtB3o_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17775
  %i.f = tail call { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !17772 ; 2 uses
  %i.g = extractvalue { i8, i8 } %i.f, 0          ; 2 uses
  %i.h = extractvalue { i8, i8 } %i.f, 1
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17775
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !17772
  %i.i = load i64, ptr %i.d, align 8, !noalias !17775, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17775
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17775
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !17772
  %i.k = load i64, ptr %i.b, align 8, !range !79, !noalias !17775, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !107, !noalias !17775, !noundef !8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !17775
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #27, !noalias !17772
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !17775, !nonnull !8, !noundef !8 ; 3 uses
  %i.r = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17775
  %2 = and i8 %i.g, 1
  store i8 %2, ptr %i.q, align 1, !noalias !17772
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.h, ptr %i.s, align 1, !noalias !17772
  store i64 %i.n, ptr %i.e, align 8, !noalias !17775
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17775
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !17775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !17772
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17780)
  %i.t = invoke { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !17772 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.u = extractvalue { i8, i8 } %i.t, 0          ; 2 uses
  %.not8.i.i.i = icmp eq i8 %i.u, 2
  br i1 %.not8.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc12.i
  %.pn.i.i.i = phi { i8, i8 } [ %i.al, %.noexc12.i ], [ %i.t, %.noexc.i ]
  %i.v = phi i8 [ %i.am, %.noexc12.i ], [ %i.u, %.noexc.i ]
  %i.w = extractvalue { i8, i8 } %.pn.i.i.i, 1
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !17783, !noalias !17784, !noundef !8 ; 4 uses
  %i.y = icmp ult i64 %i.x, 4611686018427387904
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.e, align 8, !range !83, !alias.scope !17783, !noalias !17784, !noundef !8
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17787
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !17772

.noexc10.i:                                       ; preds = %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !noalias !17787, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17787
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !17788, !noalias !17784, !noundef !8 ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !range !83, !alias.scope !17788, !noalias !17784, !noundef !8
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !84

bb.e:                                             ; preds = %.noexc10.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ad, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 1, i64 noundef 2)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.loopexit.i, !noalias !17772

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.e, %.noexc10.i, %.lr.ph.i.i.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17783, !noalias !17784, !nonnull !8, !noundef !8
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.x ; 2 uses
  %3 = and i8 %i.v, 1
  store i8 %3, ptr %i.ai, align 1, !noalias !17772
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 %i.w, ptr %i.aj, align 1, !noalias !17772
  %i.ak = add nuw nsw i64 %i.x, 1
  store i64 %i.ak, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !17783, !noalias !17784
  %i.al = invoke { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !17772 ; 2 uses

.noexc12.i:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.am = extractvalue { i8, i8 } %i.al, 0        ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.am, 2
  br i1 %.not.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !17772, !noalias !17791
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.an, align 8, !alias.scope !17772, !noalias !17791
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ao, align 8, !alias.scope !17772, !noalias !17791
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB16_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB3E_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.e, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionhEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionhEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !17772

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc12.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !17791
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB16_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB3E_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !17772
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionhEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB16_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB3E_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionhEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17775
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEEINtB2_12SpecFromIterBU_INtNtNtBZ_4iter8adapters12GenericShuntINtNtB1Z_3map3MapINtNtNtBZ_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtBZ_6result6ResultNtNtBZ_7convert10InfallibleNtNtB3o_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17792)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17795
  %i.f = tail call { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !noalias !17792 ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.f, 1
  %.not.i = icmp eq i32 %i.g, 2
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17795
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !17792
  %i.i = load i64, ptr %i.d, align 8, !noalias !17795, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17795
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17795
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !17792
  %i.k = load i64, ptr %i.b, align 8, !range !79, !noalias !17795, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !107, !noalias !17795, !noundef !8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !17795
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #27, !noalias !17792
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !17795, !nonnull !8, !noundef !8 ; 3 uses
  %i.r = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17795
  store i32 %i.g, ptr %i.q, align 4, !noalias !17792
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.h, ptr %i.s, align 4, !noalias !17792
  store i64 %i.n, ptr %i.e, align 8, !noalias !17795
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17795
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !17795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !17792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17800)
  %i.t = invoke { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !17792 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.u = extractvalue { i32, i32 } %i.t, 0        ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.u, 2
  br i1 %.not8.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc12.i
  %.pn.i.i.i = phi { i32, i32 } [ %i.al, %.noexc12.i ], [ %i.t, %.noexc.i ]
  %i.v = phi i32 [ %i.am, %.noexc12.i ], [ %i.u, %.noexc.i ]
  %i.w = extractvalue { i32, i32 } %.pn.i.i.i, 1
  %i.x = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !17803, !noalias !17804, !noundef !8 ; 4 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.e, align 8, !range !83, !alias.scope !17803, !noalias !17804, !noundef !8
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17807
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !17792

.noexc10.i:                                       ; preds = %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !noalias !17807, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17807
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !17808, !noalias !17804, !noundef !8 ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !range !83, !alias.scope !17808, !noalias !17804, !noundef !8
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.e, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !84

bb.e:                                             ; preds = %.noexc10.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ad, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 4, i64 noundef 8)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.loopexit.i, !noalias !17792

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.e, %.noexc10.i, %.lr.ph.i.i.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17803, !noalias !17804, !nonnull !8, !noundef !8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ai, align 4, !noalias !17792
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.w, ptr %i.aj, align 4, !noalias !17792
  %i.ak = add nuw nsw i64 %i.x, 1
  store i64 %i.ak, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !17803, !noalias !17804
  %i.al = invoke { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !17792 ; 2 uses

.noexc12.i:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.am = extractvalue { i32, i32 } %i.al, 0      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.am, 2
  br i1 %.not.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !17792, !noalias !17811
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.an, align 8, !alias.scope !17792, !noalias !17811
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ao, align 8, !alias.scope !17792, !noalias !17811
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB16_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB3E_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.e, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionlEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionlEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h, !noalias !17792

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc12.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !17811
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB16_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB3E_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !17792
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionlEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEEINtB2_18SpecFromIterNestedB11_INtNtNtB16_4iter8adapters12GenericShuntINtNtB2d_3map3MapINtNtNtB16_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB16_6result6ResultNtNtB16_7convert10InfallibleNtNtB3E_5error15DataFusionErrorEEE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionlEEINtB2_10SpecExtendBR_INtNtNtBW_4iter8adapters12GenericShuntINtNtB1U_3map3MapINtNtNtBW_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtBW_6result6ResultNtNtBW_7convert10InfallibleNtNtB3j_5error15DataFusionErrorEEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i
end_hunk_1
begin_hunk_2_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1k_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1o_6result6ResultNtNtB1o_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE9from_iterB4p_:bb.a
bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !23654, !noalias !23659
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !23654, !noalias !23659
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !23654, !noalias !23659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23657
  tail call void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !23654
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1B_6result6ResultNtNtB1B_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE9from_iterB4C_.exit

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !noalias !23657, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23657
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23657
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i unwind label %bb.f, !noalias !23654

.noexc.i:                                         ; preds = %bb.g
  %i.p = load i64, ptr %i.b, align 8, !range !79, !noalias !23657, !noundef !8
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !107, !noalias !23657, !noundef !8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %.noexc.i
  %i.u = load i64, ptr %i.t, align 8, !noalias !23657
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #27
          to label %.noexc8.i unwind label %bb.f, !noalias !23654

.noexc8.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc.i
  %i.v = load ptr, ptr %i.t, align 8, !noalias !23657, !nonnull !8, !noundef !8 ; 2 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23657
  store i64 %i.i, ptr %i.v, align 8, !noalias !23654
  store i64 %i.s, ptr %i.e, align 8, !noalias !23657
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !23657
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !23657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !23654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23663)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.i
  %i.x = invoke { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3c_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %bb.m unwind label %bb.l, !noalias !23654 ; 2 uses

bb.k:                                             ; preds = %bb.p, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.y, %bb.l ]
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %.body.i unwind label %bb.s, !noalias !23654

bb.l:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.z = extractvalue { i64, i64 } %i.x, 0
  %i.aa = extractvalue { i64, i64 } %i.x, 1
  %i.ab = trunc nuw i64 %i.z to i1
  br i1 %i.ab, label %bb.n, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB13_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB17_6result6ResultNtNtB17_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB48_.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ac = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23666, !noalias !23667, !noundef !8 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 1152921504606846976
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load i64, ptr %i.e, align 8, !range !83, !alias.scope !23666, !noalias !23667, !noundef !8
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.o, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23670
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c)
          to label %bb.q unwind label %bb.p, !noalias !23654

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.r, %bb.q, %bb.n
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !23666, !noalias !23667, !nonnull !8, !noundef !8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ac
  store i64 %i.aa, ptr %i.ah, align 8, !noalias !23654
  %i.ai = add nuw nsw i64 %i.ac, 1
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23666, !noalias !23667
  br label %bb.j

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.q:                                             ; preds = %bb.o
  %i.ak = load i64, ptr %i.a, align 8, !noalias !23670, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23670
  %i.al = call i64 @llvm.uadd.sat.i64(i64 %i.ak, i64 1) ; 2 uses
  %i.am = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23671, !noalias !23667, !noundef !8 ; 2 uses
  %i.an = load i64, ptr %i.e, align 8, !range !83, !alias.scope !23671, !noalias !23667, !noundef !8
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.r, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !84

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.am, i64 noundef %i.al, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.p, !noalias !23654

bb.s:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !23654
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB13_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB17_6result6ResultNtNtB17_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB48_.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1j_6result6ResultNtNtB1j_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE11spec_extendB4k_.exit.i unwind label %bb.t, !noalias !23654

bb.t:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB13_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB17_6result6ResultNtNtB17_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB48_.exit.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %.pn.i.i.i, %bb.k ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB3x_.exit.i unwind label %bb.u, !noalias !23654

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1j_6result6ResultNtNtB1j_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE11spec_extendB4k_.exit.i: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB13_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB17_6result6ResultNtNtB17_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB48_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !23659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23657
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1B_6result6ResultNtNtB1B_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE9from_iterB4C_.exit

bb.u:                                             ; preds = %bb.v, %.body.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !23654
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB3x_.exit.i: ; preds = %bb.v, %.body.i
  %.pn14.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.v ]
  resume { ptr, i32 } %.pn14.i

bb.v:                                             ; preds = %bb.f, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.m, %bb.f ]
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB3x_.exit.i unwind label %bb.u, !noalias !23654

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1x_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1B_6result6ResultNtNtB1B_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE9from_iterB4C_.exit: ; preds = %bb.e, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1f_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1j_6result6ResultNtNtB1j_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE11spec_extendB4k_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23680)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23686)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23692
  store ptr %i.f, ptr %i.c, align 8, !noalias !23695
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !noalias !23695
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !23698, !noalias !23701, !nonnull !8, !noundef !8
  %.promoted.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !23698, !noalias !23701
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.l, %bb.c ], [ %.promoted.i.i.i.i.i, %bb.a ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.not.not.not.i.not.not.not.i.not.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !23698, !noalias !23701
  call void @llvm.experimental.noalias.scope.decl(metadata !23702)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !23702, !noalias !23705, !nonnull !8, !align !1742, !noundef !8
  %i.n = load i64, ptr %i.m, align 8, !noalias !23707, !noundef !8
  %i.o = call { i64, i64 } @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0INtB7_5FnMutTTjRINtNtB23_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k), !noalias !23708 ; 2 uses
  %2 = extractvalue { i64, i64 } %i.o, 0
  %i.p = load ptr, ptr %i.h, align 8, !alias.scope !23702, !noalias !23705, !nonnull !8, !align !1742, !noundef !8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !23708, !noundef !8
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !noalias !23708
  %i.s = trunc i64 %2 to i1
  br i1 %i.s, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23679
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !23674
  %i.t = load i64, ptr %i.b, align 8, !range !79, !noalias !23679, !noundef !8
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !107, !noalias !23679, !noundef !8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.u, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.x, align 8, !noalias !23679
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #27, !noalias !23674
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.z = extractvalue { i64, i64 } %i.o, 1
  %i.aa = load ptr, ptr %i.x, align 8, !noalias !23679, !nonnull !8, !noundef !8 ; 2 uses
  %i.ab = icmp ugt i64 %i.w, 3
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23679
  store i64 %i.z, ptr %i.aa, align 8, !noalias !23674
  store i64 %i.w, ptr %i.e, align 8, !noalias !23679
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !23679
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !23679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !23674
  call void @llvm.experimental.noalias.scope.decl(metadata !23709)
  call void @llvm.experimental.noalias.scope.decl(metadata !23712)
  call void @llvm.experimental.noalias.scope.decl(metadata !23714)
  call void @llvm.experimental.noalias.scope.decl(metadata !23717)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc9.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23719)
  call void @llvm.experimental.noalias.scope.decl(metadata !23722)
  call void @llvm.experimental.noalias.scope.decl(metadata !23725)
  call void @llvm.experimental.noalias.scope.decl(metadata !23728)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23731
  store ptr %i.ac, ptr %i.a, align 8, !noalias !23734
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !23734
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !23737, !noalias !23740, !nonnull !8, !noundef !8
  %.promoted.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !23737, !noalias !23740
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i, %bb.f
  %i.ah = phi ptr [ %i.ai, %.noexc.i ], [ %.promoted.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.d, align 8, !alias.scope !23737, !noalias !23740
  call void @llvm.experimental.noalias.scope.decl(metadata !23741)
  %i.aj = load ptr, ptr %i.ae, align 8, !alias.scope !23741, !noalias !23744, !nonnull !8, !align !1742, !noundef !8
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !23746, !noundef !8
  %i.al = invoke { i64, i64 } @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtCs6Po7BT7Nknu_5alloc6string6StringEs_0INtB7_5FnMutTTjRINtNtB23_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !23674 ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  %3 = extractvalue { i64, i64 } %i.al, 0
  %i.am = load ptr, ptr %i.ae, align 8, !alias.scope !23741, !noalias !23744, !nonnull !8, !align !1742, !noundef !8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !23747, !noundef !8
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !noalias !23747
  %i.ap = trunc i64 %3 to i1
  br i1 %i.ap, label %bb.i, label %bb.g

bb.i:                                             ; preds = %.noexc.i
  %i.aq = extractvalue { i64, i64 } %i.al, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23731
  %i.ar = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23748, !noalias !23749, !noundef !8 ; 5 uses
  %i.as = icmp ult i64 %i.ar, 1152921504606846976
  call void @llvm.assume(i1 %i.as)
  %i.at = load i64, ptr %i.e, align 8, !range !83, !alias.scope !23748, !noalias !23749, !noundef !8
  %i.au = icmp eq i64 %i.ar, %i.at
  br i1 %i.au, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %.noexc9.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ar, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !23674

.noexc9.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.i
  %i.av = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !23748, !noalias !23749, !nonnull !8, !noundef !8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ar
  store i64 %i.aq, ptr %i.aw, align 8, !noalias !23674
  %i.ax = add nuw nsw i64 %i.ar, 1
  store i64 %i.ax, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23748, !noalias !23749
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23692
  store i64 0, ptr %0, align 8, !alias.scope !23674, !noalias !23677
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8, !alias.scope !23674, !noalias !23677
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.az, align 8, !alias.scope !23674, !noalias !23677
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4Q_.exit

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecjE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.m, !noalias !23674

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !23677
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4Q_.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !23674
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4Q_.exit: ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23679
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5t_14PrimitiveArrayNtNtB5x_5types9Int32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionlEE9from_iterB25_E0EE9from_iterB3Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23753
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !23750, !noalias !23755, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !23750, !noalias !23755, !nonnull !8, !noundef !8
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23753
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !23753
  %i.i = load i64, ptr %i.b, align 8, !range !79, !noalias !23753, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !107, !noalias !23753, !noundef !8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types9Int32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !23753
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !23753
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types9Int32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !23753, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23753
  store i64 %i.l, ptr %i.c, align 8, !noalias !23753
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !23753
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !23753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23756
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !23756
  store ptr %i.r, ptr %i.a, align 8, !noalias !23756
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !23756
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4j_14PrimitiveArrayNtNtB4n_5types9Int32TypeEINtNtNtBa_6traits7collect12FromIteratorINtNtBc_6option6OptionlEE9from_iterBX_E0ENtNtB62_8iterator8Iterator4folduNCINvNvB7f_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8k_3VeclE14extend_trustedBN_E0E0EB2G_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1x_INtNtNtB1F_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5I_14PrimitiveArrayNtNtB5M_5types9Int32TypeEINtNtNtB1D_6traits7collect12FromIteratorINtNtB1F_6option6OptionlEE9from_iterB2k_E0EE9from_iterB45_.exit unwind label %bb.c, !noalias !23755

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types9Int32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d, !noalias !23753

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !23753
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1x_INtNtNtB1F_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5I_14PrimitiveArrayNtNtB5M_5types9Int32TypeEINtNtNtB1D_6traits7collect12FromIteratorINtNtB1F_6option6OptionlEE9from_iterB2k_E0EE9from_iterB45_.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s0_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types9Int32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !23750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23753
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5t_14PrimitiveArrayNtNtB5x_5types10Date32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionlEE9from_iterB25_E0EE9from_iterB3Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23766
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !23763, !noalias !23768, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !23763, !noalias !23768, !nonnull !8, !noundef !8
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23766
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !23766
  %i.i = load i64, ptr %i.b, align 8, !range !79, !noalias !23766, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !107, !noalias !23766, !noundef !8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types10Date32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !23766
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !23766
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types10Date32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !23766, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23766
  store i64 %i.l, ptr %i.c, align 8, !noalias !23766
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !23766
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !23766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23769
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !23769
  store ptr %i.r, ptr %i.a, align 8, !noalias !23769
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !23769
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4j_14PrimitiveArrayNtNtB4n_5types10Date32TypeEINtNtNtBa_6traits7collect12FromIteratorINtNtBc_6option6OptionlEE9from_iterBX_E0ENtNtB64_8iterator8Iterator4folduNCINvNvB7h_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8m_3VeclE14extend_trustedBN_E0E0EB2G_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1x_INtNtNtB1F_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5I_14PrimitiveArrayNtNtB5M_5types10Date32TypeEINtNtNtB1D_6traits7collect12FromIteratorINtNtB1F_6option6OptionlEE9from_iterB2k_E0EE9from_iterB45_.exit unwind label %bb.c, !noalias !23768

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIBZ_INtNtNtB17_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0ENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB59_14PrimitiveArrayNtNtB5d_5types10Date32TypeEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3w_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVeclENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d, !noalias !23766

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !23766
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VeclEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u
end_hunk_2
begin_hunk_3_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %.phi.trans.insert241.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.sroa.4.i.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.31.8..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.37.8..sroa_idx77.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.sroa.46.8..sroa_idx79.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %.sroa.61.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.79.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.sroa.91.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %.sroa.9190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %.sroa.93.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.95.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.97.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %.sroa.99.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.cz, %.lr.ph.i
  %.sroa.10.0214.i = phi i64 [ %i.z, %.lr.ph.i ], [ %i.au, %bb.cz ]
  %.sroa.013.0212.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.aw, %bb.cz ] ; 129 uses
  %.sroa.7.0211.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %bb.cz ] ; 3 uses
  %i.au = add i64 %.sroa.10.0214.i, -1            ; 2 uses
  %i.av = icmp eq ptr %.sroa.013.0212.i, %i.ag
  br i1 %i.av, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 416
  %i.ax = add nuw nsw i64 %.sroa.7.0211.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !41350
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 352 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !41350, !nonnull !8, !noundef !8
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !41350
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.l, %.body.i.i, %bb.g
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.be, %bb.g ], [ %.pn.pn.pn.pn.i.i, %bb.l ], [ %.pn.pn.pn.pn.i.i, %.body.i.i ]
  %i.bc = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !41353
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.f, label %bb.db

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #30
          to label %bb.db unwind label %bb.cy, !noalias !41350

bb.g:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.h:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.ay, align 8, !noalias !41350, !nonnull !8, !noundef !8 ; 3 uses
  store ptr %i.bf, ptr %i.p, align 8, !noalias !41350
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 408
  %.val.i.i = load i32, ptr %i.bg, align 8, !noalias !41350, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !41350
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 224 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !range !107, !noalias !41350, !noundef !8
  %.not.i.i = icmp eq i64 %i.bi, -9223372036854775808
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !41350
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.k unwind label %bb.g, !noalias !41350

bb.j:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !41350
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !41350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !41350
  br label %bb.n

.body.i.i:                                        ; preds = %.body47.i.i, %bb.ba, %bb.az, %bb.ay, %bb.al, %bb.ak, %bb.aj, %bb.m
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.body47.i.i ], [ %i.bl, %bb.m ], [ %i.ix, %bb.aj ], [ %i.ix, %bb.al ], [ %i.ix, %bb.ak ], [ %i.kr, %bb.ba ], [ %i.kr, %bb.az ], [ %i.kr, %bb.ay ] ; 2 uses
  %i.bj = load i64, ptr %i.o, align 8, !range !107, !alias.scope !41358, !noalias !41350, !noundef !8
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %i.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.cy, !noalias !41350

bb.m:                                             ; preds = %bb.at, %bb.ae
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 360
  %i.bn = load <2 x i64>, ptr %i.bm, align 8, !noalias !41350
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 344
  %i.bp = load <2 x i32>, ptr %i.bo, align 8, !noalias !41350
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 376
  %i.br = load <2 x i64>, ptr %i.bq, align 8, !noalias !41350
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 392
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !41350, !noundef !8
  %i.bu = load i64, ptr %.sroa.013.0212.i, align 8, !range !79, !noalias !41350, !noundef !8
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !41350, !noundef !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.5.0.i.i = phi i64 [ %i.bx, %bb.o ], [ undef, %bb.n ]
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !79, !noalias !41350, !noundef !8
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !41350, !noundef !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.52.0.i.i = phi i64 [ %i.cc, %bb.q ], [ undef, %bb.p ]
  %.sroa.01.0.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41350
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 96
  %i.ce = load i64, ptr %i.cd, align 8, !range !506, !noalias !41350, !noundef !8 ; 3 uses
  %.not23.i.i = icmp eq i64 %i.ce, 8
  br i1 %.not23.i.i, label %bb.bg, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.91.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i22.i.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i.i.sroa.8.i.i)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 104 ; 8 uses
  switch i64 %i.ce, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
    i64 4, label %bb.aa
    i64 5, label %bb.ab
    i64 6, label %bb.ac
    i64 7, label %bb.ar
  ]

default.unreachable:                              ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.ch = load i8, ptr %i.cg, align 4, !range !13398, !alias.scope !41361, !noalias !41364, !noundef !8
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 141
  %i.cj = load i8, ptr %i.ci, align 1, !range !13398, !alias.scope !41361, !noalias !41364, !noundef !8
  %i.ck = load i64, ptr %i.cf, align 8, !range !79, !alias.scope !41361, !noalias !41364, !noundef !8 ; 2 uses
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !41361, !noalias !41364
  %.sroa.5.0.i.i.i.i = select i1 %i.cl, i64 %i.cn, i64 undef
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.cp = load i64, ptr %i.co, align 8, !range !79, !alias.scope !41361, !noalias !41364, !noundef !8 ; 2 uses
  %i.cq = trunc nuw i64 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !41361, !noalias !41364
  %.sroa.54.0.i.i.i.i = select i1 %i.cq, i64 %i.cs, i64 undef
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.cu = load i8, ptr %i.ct, align 8, !range !5519, !alias.scope !41361, !noalias !41364, !noundef !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 137
  %i.cw = load i8, ptr %i.cv, align 1, !range !5519, !alias.scope !41361, !noalias !41364, !noundef !8
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 138
  %i.cy = load i8, ptr %i.cx, align 2, !range !5519, !alias.scope !41361, !noalias !41364, !noundef !8
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 139
  %i.da = load i8, ptr %i.cz, align 1, !range !5519, !alias.scope !41361, !noalias !41364, !noundef !8
  br label %bb.bi

bb.u:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.dc = load i32, ptr %i.db, align 8, !range !19237, !alias.scope !41368, !noalias !41371, !noundef !8 ; 2 uses
  %i.dd = trunc nuw i32 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.df = load i32, ptr %i.de, align 4, !alias.scope !41368, !noalias !41371
  %.sroa.5.0.i1.i.i.i = select i1 %i.dd, i32 %i.df, i32 undef ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.dh = load i32, ptr %i.dg, align 8, !range !19237, !alias.scope !41368, !noalias !41371, !noundef !8 ; 2 uses
  %i.di = trunc nuw i32 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %i.dk = load i32, ptr %i.dj, align 4, !alias.scope !41368, !noalias !41371
  %.sroa.52.0.i.i.i.i = select i1 %i.di, i32 %i.dk, i32 undef
  %i.dl = load i64, ptr %i.cf, align 8, !range !79, !alias.scope !41368, !noalias !41371, !noundef !8 ; 2 uses
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !41368, !noalias !41371
  %.sroa.54.0.i2.i.i.i = select i1 %i.dm, i64 %i.do, i64 undef
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.dq = load i64, ptr %i.dp, align 8, !range !79, !alias.scope !41368, !noalias !41371, !noundef !8 ; 2 uses
  %i.dr = trunc nuw i64 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !41368, !noalias !41371
  %.sroa.56.0.i.i.i.i = select i1 %i.dr, i64 %i.dt, i64 undef
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.dv = load i8, ptr %i.du, align 8, !range !5519, !alias.scope !41368, !noalias !41371, !noundef !8
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 153
  %i.dx = load i8, ptr %i.dw, align 1, !range !5519, !alias.scope !41368, !noalias !41371, !noundef !8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 154
  %i.dz = load i8, ptr %i.dy, align 2, !range !5519, !alias.scope !41368, !noalias !41371, !noundef !8
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 155
  %i.eb = load i8, ptr %i.ea, align 1, !range !5519, !alias.scope !41368, !noalias !41371, !noundef !8
  %.sroa.37.sroa.0.0.extract.trunc180.i.i = trunc nuw nsw i32 %i.dc to i8
  %.sroa.46.sroa.0.0.extract.trunc149.i.i = trunc i32 %.sroa.5.0.i1.i.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift159.i.i = lshr i32 %.sroa.5.0.i1.i.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc160.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift159.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift171.i.i = and i32 %.sroa.5.0.i1.i.i.i, -65536
  br label %bb.bi

bb.v:                                             ; preds = %bb.s
  %i.ec = load i64, ptr %i.cf, align 8, !range !79, !alias.scope !41373, !noalias !41376, !noundef !8 ; 2 uses
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !41373, !noalias !41376
  %.sroa.5.0.i3.i.i.i = select i1 %i.ed, i64 %i.ef, i64 undef
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.eh = load i64, ptr %i.eg, align 8, !range !79, !alias.scope !41373, !noalias !41376, !noundef !8 ; 2 uses
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !41373, !noalias !41376
  %.sroa.52.0.i4.i.i.i = select i1 %i.ei, i64 %i.ek, i64 undef
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !noalias !41350 ; 4 uses
  %.sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.en = load i32, ptr %.sroa_idx68.i.i, align 4, !noalias !41350 ; 3 uses
  %i.eo = load i64, ptr %i.el, align 8, !range !79, !alias.scope !41373, !noalias !41376, !noundef !8
  %i.ep = trunc nuw i64 %i.eo to i1
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !41373, !noalias !41376
  %.sroa.54.0.i5.i.i.i = select i1 %i.ep, i64 %i.er, i64 undef ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.et = load i64, ptr %i.es, align 8, !range !79, !alias.scope !41373, !noalias !41376, !noundef !8 ; 2 uses
  %i.eu = trunc nuw i64 %i.et to i1
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !41373, !noalias !41376
  %.sroa.56.0.i6.i.i.i = select i1 %i.eu, i64 %i.ew, i64 undef
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.ey = load <4 x i8>, ptr %i.ex, align 8, !alias.scope !41373, !noalias !41376
  %.sroa.37.sroa.0.0.extract.trunc177.i.i = trunc i32 %i.em to i8
  %.sroa.37.sroa.11.0.extract.shift185.i.i = lshr i32 %i.em, 8
  %.sroa.37.sroa.11.0.extract.trunc186.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift185.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift197.i.i = lshr i32 %i.em, 16
  %.sroa.37.sroa.12.0.extract.trunc198.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift197.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift209.i.i = lshr i32 %i.em, 24
  %.sroa.37.sroa.13.0.extract.trunc210.i.i = trunc nuw i32 %.sroa.37.sroa.13.0.extract.shift209.i.i to i8
  %.sroa.46.sroa.0.0.extract.trunc148.i.i = trunc i32 %i.en to i8
  %.sroa.46.sroa.11.0.extract.shift157.i.i = lshr i32 %i.en, 8
  %.sroa.46.sroa.11.0.extract.trunc158.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift157.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift169.i.i = and i32 %i.en, -65536
  %.sroa.53.sroa.0.0.extract.trunc138.i.i = trunc i64 %.sroa.54.0.i5.i.i.i to i32
  %.sroa.53.sroa.10.0.extract.shift143.i.i = lshr i64 %.sroa.54.0.i5.i.i.i, 32
  %.sroa.53.sroa.10.0.extract.trunc144.i.i = trunc nuw i64 %.sroa.53.sroa.10.0.extract.shift143.i.i to i32
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc106.i.i = trunc nuw nsw i64 %i.et to i8
  br label %bb.bi

bb.w:                                             ; preds = %bb.s
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.fa = load i32, ptr %i.ez, align 8, !range !19237, !alias.scope !41378, !noalias !41381, !noundef !8
  %i.fb = trunc nuw i32 %i.fa to i1
  br i1 %i.fb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %.sroa.5.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fc, align 4, !noalias !41383
  %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %.sroa.5.i.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !41383
  %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %.sroa.5.i.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i, align 4, !noalias !41383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.5.i.i.sroa.5.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.5.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.4.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.4.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.0.0.copyload.i.i, %bb.x ], [ undef, %bb.w ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i8 [ 1, %bb.x ], [ 0, %bb.w ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.fe = load i32, ptr %i.fd, align 8, !range !19237, !alias.scope !41378, !noalias !41381, !noundef !8
  %i.ff = trunc nuw i32 %i.fe to i1
  br i1 %i.ff, label %bb.z, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 156
  %.sroa.52.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fg, align 4, !noalias !41383
  %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %.sroa.52.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !41383
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.52.i.i.sroa.4.0.i.i = phi i64 [ %.sroa.52.i.i.sroa.4.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.52.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.52.i.i.sroa.0.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.01.0.i.i.i.i = phi i8 [ 1, %bb.z ], [ 0, %bb.y ]
  %i.fh = load i64, ptr %i.cf, align 8, !range !79, !alias.scope !41378, !noalias !41381, !noundef !8 ; 2 uses
  %i.fi = trunc nuw i64 %i.fh to i1
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !41378, !noalias !41381
  %.sroa.54.0.i7.i.i.i = select i1 %i.fi, i64 %i.fk, i64 undef
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.fm = load i64, ptr %i.fl, align 8, !range !79, !alias.scope !41378, !noalias !41381, !noundef !8 ; 2 uses
  %i.fn = trunc nuw i64 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !41378, !noalias !41381
  %.sroa.56.0.i8.i.i.i = select i1 %i.fn, i64 %i.fp, i64 undef
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.fr = load <4 x i8>, ptr %i.fq, align 8, !alias.scope !41378, !noalias !41381
  %.sroa.46.sroa.0.0.extract.trunc150.i.i = trunc i32 %.sroa.5.i.i.sroa.0.0.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift161.i.i = lshr i32 %.sroa.5.i.i.sroa.0.0.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc162.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift161.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift173.i.i = and i32 %.sroa.5.i.i.sroa.0.0.i.i, -65536
  br label %bb.bi

bb.aa:                                            ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.ft = load i32, ptr %i.fs, align 8, !range !19237, !alias.scope !41384, !noalias !41387, !noundef !8 ; 2 uses
  %i.fu = trunc nuw i32 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.fw = load i32, ptr %i.fv, align 4, !alias.scope !41384, !noalias !41387
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.fy = load i32, ptr %i.fx, align 8, !range !19237, !alias.scope !41384, !noalias !41387, !noundef !8 ; 2 uses
  %i.fz = trunc nuw i32 %i.fy to i1
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %i.gb = load i32, ptr %i.ga, align 4, !alias.scope !41384, !noalias !41387
  %i.gc = load i64, ptr %i.cf, align 8, !range !79, !alias.scope !41384, !noalias !41387, !noundef !8 ; 2 uses
  %i.gd = trunc nuw i64 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !41384, !noalias !41387
  %.sroa.54.0.i11.i.i.i = select i1 %i.gd, i64 %i.gf, i64 undef
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.gh = load i64, ptr %i.gg, align 8, !range !79, !alias.scope !41384, !noalias !41387, !noundef !8 ; 2 uses
  %i.gi = trunc nuw i64 %i.gh to i1
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !41384, !noalias !41387
  %.sroa.56.0.i12.i.i.i = select i1 %i.gi, i64 %i.gk, i64 undef
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.gm = load i8, ptr %i.gl, align 8, !range !5519, !alias.scope !41384, !noalias !41387, !noundef !8
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 153
  %i.go = load i8, ptr %i.gn, align 1, !range !5519, !alias.scope !41384, !noalias !41387, !noundef !8
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 154
  %i.gq = load i8, ptr %i.gp, align 2, !range !5519, !alias.scope !41384, !noalias !41387, !noundef !8
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 155
  %i.gs = load i8, ptr %i.gr, align 1, !range !5519, !alias.scope !41384, !noalias !41387, !noundef !8
  %.sroa.37.sroa.0.0.extract.trunc178.i.i = trunc nuw nsw i32 %i.ft to i8
  %i.gt = select i1 %i.fu, i32 %i.fw, i32 undef   ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc146.i.i = trunc i32 %i.gt to i8
  %.sroa.46.sroa.11.0.extract.shift153.i.i = lshr i32 %i.gt, 8
  %.sroa.46.sroa.11.0.extract.trunc154.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift153.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift165.i.i = and i32 %i.gt, -65536
  %i.gu = select i1 %i.fz, i32 %i.gb, i32 undef
  br label %bb.bi

bb.ab:                                            ; preds = %bb.s
  %i.gv = load i64, ptr %i.cf, align 8, !range !79, !alias.scope !41389, !noalias !41392, !noundef !8 ; 2 uses
  %i.gw = trunc nuw i64 %i.gv to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !41389, !noalias !41392
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.ha = load i64, ptr %i.gz, align 8, !range !79, !alias.scope !41389, !noalias !41392, !noundef !8 ; 2 uses
  %i.hb = trunc nuw i64 %i.ha to i1
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !41389, !noalias !41392
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !noalias !41350 ; 4 uses
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.hg = load i32, ptr %.sroa_idx.i.i, align 4, !noalias !41350 ; 3 uses
  %i.hh = load i64, ptr %i.he, align 8, !range !79, !alias.scope !41389, !noalias !41392, !noundef !8
  %i.hi = trunc nuw i64 %i.hh to i1
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !41389, !noalias !41392
  %.sroa.54.0.i15.i.i.i = select i1 %i.hi, i64 %i.hk, i64 undef ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.hm = load i64, ptr %i.hl, align 8, !range !79, !alias.scope !41389, !noalias !41392, !noundef !8 ; 2 uses
  %i.hn = trunc nuw i64 %i.hm to i1
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !41389, !noalias !41392
  %.sroa.56.0.i16.i.i.i = select i1 %i.hn, i64 %i.hp, i64 undef
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.hr = load <4 x i8>, ptr %i.hq, align 8, !alias.scope !41389, !noalias !41392
  %i.hs = select i1 %i.gw, i64 %i.gy, i64 undef
  %i.ht = select i1 %i.hb, i64 %i.hd, i64 undef
  %.sroa.37.sroa.0.0.extract.trunc176.i.i = trunc i32 %i.hf to i8
  %.sroa.37.sroa.11.0.extract.shift183.i.i = lshr i32 %i.hf, 8
  %.sroa.37.sroa.11.0.extract.trunc184.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift183.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift195.i.i = lshr i32 %i.hf, 16
  %.sroa.37.sroa.12.0.extract.trunc196.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift195.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift207.i.i = lshr i32 %i.hf, 24
  %.sroa.37.sroa.13.0.extract.trunc208.i.i = trunc nuw i32 %.sroa.37.sroa.13.0.extract.shift207.i.i to i8
  %.sroa.46.sroa.0.0.extract.trunc147.i.i = trunc i32 %i.hg to i8
  %.sroa.46.sroa.11.0.extract.shift155.i.i = lshr i32 %i.hg, 8
  %.sroa.46.sroa.11.0.extract.trunc156.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift155.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift167.i.i = and i32 %i.hg, -65536
  %.sroa.53.sroa.0.0.extract.trunc137.i.i = trunc i64 %.sroa.54.0.i15.i.i.i to i32
  %.sroa.53.sroa.10.0.extract.shift141.i.i = lshr i64 %.sroa.54.0.i15.i.i.i, 32
  %.sroa.53.sroa.10.0.extract.trunc142.i.i = trunc nuw i64 %.sroa.53.sroa.10.0.extract.shift141.i.i to i32
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc105.i.i = trunc nuw nsw i64 %i.hm to i8
  br label %bb.bi

bb.ac:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !41394
  %i.hu = load i64, ptr %i.cf, align 8, !range !79, !noalias !41394, !noundef !8
  %i.hv = trunc nuw i64 %i.hu to i1               ; 2 uses
  br i1 %i.hv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !41397, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i, label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !41400, !nonnull !8, !noundef !8
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !41397, !noundef !8
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.id = load i64, ptr %i.ic, align 8, !noalias !41397, !noundef !8
  invoke void %i.hy(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.hz, ptr noundef %i.ib, i64 noundef %i.id)
          to label %.noexc42.i.i unwind label %bb.m, !noalias !41350, !inline_history !41401

.noexc42.i.i:                                     ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !41394
  br label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc42.i.i, %bb.ad
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc42.i.i ], [ null, %bb.ad ] ; 3 uses
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.al, align 8, !noalias !41394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !41394
  %i.ie = ptrtoint ptr %.sroa.0.0.i.i.i.i.i to i64
  br label %bb.af

bb.af:                                            ; preds = %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ac
  %.sroa.19.8.copyload72.i.i = phi i64 [ %i.ie, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ]
  %.sroa.11.8.copyload70.i.i = phi i64 [ 1, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ac ] ; 2 uses
  %i.if = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  store i64 %.sroa.11.8.copyload70.i.i, ptr %i.j, align 8, !noalias !41394
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.ih = load i64, ptr %i.ig, align 8, !range !79, !noalias !41394, !noundef !8
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41394
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !41402, !noundef !8 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i6.i.i.i.i, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !41405, !nonnull !8, !noundef !8
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 176
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.io = load ptr, ptr %i.in, align 8, !noalias !41402, !noundef !8
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !41402, !noundef !8
  invoke void %i.il(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.im, ptr noundef %i.io, i64 noundef %i.iq)
          to label %.noexc.i.i.i.i unwind label %bb.aj, !noalias !41406, !inline_history !41407

.noexc.i.i.i.i:                                   ; preds = %bb.ah
  %.sroa.0.0.copyload.i7.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !41402
  %i.ir = ptrtoint ptr %.sroa.0.0.copyload.i7.i.i.i.i to i64
  %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.pre.i.i = load i64, ptr %.phi.trans.insert241.i.i, align 8, !noalias !41383
  %i.is = load <4 x i8>, ptr %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !41383
  br label %bb.am

bb.ai:                                            ; preds = %bb.am, %bb.af
  %.sroa.5.sroa.4.i.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i, %bb.am ], [ undef, %bb.af ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.am ], [ undef, %bb.af ] ; 5 uses
  %.sroa.0.0.i17.i.i.i = phi i32 [ 1, %bb.am ], [ 0, %bb.af ]
  %i.it = phi <4 x i8> [ %i.jd, %bb.am ], [ undef, %bb.af ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 184
  %i.iv = load i64, ptr %i.iu, align 8, !range !79, !noalias !41394, !noundef !8
  %i.iw = trunc nuw i64 %i.iv to i1
  br i1 %i.iw, label %bb.an, label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41408)
  br i1 %i.hv, label %bb.ak, label %.body.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !41411)
  call void @llvm.experimental.noalias.scope.decl(metadata !41414)
  %i.iy = icmp eq ptr %i.if, null
  br i1 %i.iy, label %.body.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !41417)
  call void @llvm.experimental.noalias.scope.decl(metadata !41420)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !41423, !nonnull !8, !noundef !8
  %i.jb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !41424, !noalias !41394, !noundef !8
  %i.jc = load i64, ptr %.sroa.31.8..sroa_idx75.i.i, align 8, !alias.scope !41424, !noalias !41394, !noundef !8
  invoke void %i.ja(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.37.8..sroa_idx77.i.i, ptr noundef %i.jb, i64 noundef %i.jc)
          to label %.body.i.i unwind label %bb.aq, !noalias !41406, !inline_history !582

bb.am:                                            ; preds = %.noexc.i.i.i.i, %bb.ag
  %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.pre.i.i, %.noexc.i.i.i.i ], [ undef, %bb.ag ]
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.ir, %.noexc.i.i.i.i ], [ 0, %bb.ag ]
  %i.jd = phi <4 x i8> [ %i.is, %.noexc.i.i.i.i ], [ undef, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.0..sroa_idx.i.i, i64 12, i1 false), !noalias !41383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !41394
  br label %bb.ai

bb.an:                                            ; preds = %bb.ai
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 192
  %i.jf = load i64, ptr %i.je, align 8, !noalias !41394, !noundef !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.sroa.52.0.i18.i.i.i = phi i64 [ %i.jf, %bb.an ], [ undef, %bb.ai ]
  %.sroa.01.0.i19.i.i.i = phi i64 [ 1, %bb.an ], [ 0, %bb.ai ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 200
  %i.jh = load i64, ptr %i.jg, align 8, !range !79, !noalias !41394, !noundef !8
  %i.ji = trunc nuw i64 %i.jh to i1
  br i1 %i.ji, label %bb.ap, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 208
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !41394, !noundef !8
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.aq:                                            ; preds = %bb.al
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !41406
  unreachable

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.sroa.54.0.i20.i.i.i = phi i64 [ %i.jk, %bb.ap ], [ undef, %bb.ao ]
  %.sroa.03.0.i.i.i.i = phi i64 [ 1, %bb.ap ], [ 0, %bb.ao ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 216
  %i.jn = load <4 x i8>, ptr %i.jm, align 8, !noalias !41394
  %.sroa.25.8.copyload74.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !41350
  %.sroa.31.8.copyload76.i.i = load i64, ptr %.sroa.31.8..sroa_idx75.i.i, align 8, !noalias !41350
  %.sroa.37.8.copyload78.i.i = load i32, ptr %.sroa.37.8..sroa_idx77.i.i, align 8, !noalias !41350 ; 4 uses
  %.sroa.37.sroa.0.0.extract.trunc175.i.i = trunc i32 %.sroa.37.8.copyload78.i.i to i8
  %.sroa.37.sroa.11.0.extract.shift181.i.i = lshr i32 %.sroa.37.8.copyload78.i.i, 8
  %.sroa.37.sroa.11.0.extract.trunc182.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift181.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift193.i.i = lshr i32 %.sroa.37.8.copyload78.i.i, 16
  %.sroa.37.sroa.12.0.extract.trunc194.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift193.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift205.i.i = lshr i32 %.sroa.37.8.copyload78.i.i, 24
  %.sroa.37.sroa.13.0.extract.trunc206.i.i = trunc nuw i32 %.sroa.37.sroa.13.0.extract.shift205.i.i to i8
  %.sroa.46.8.copyload80.i.i = load i32, ptr %.sroa.46.8..sroa_idx79.i.i, align 4, !noalias !41350 ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc145.i.i = trunc i32 %.sroa.46.8.copyload80.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift151.i.i = lshr i32 %.sroa.46.8.copyload80.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc152.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift151.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift163.i.i = and i32 %.sroa.46.8.copyload80.i.i, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !41394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41383
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc104.i.i = trunc i64 %.sroa.5.sroa.0.0.i.i.i.i to i8
  %.sroa.61.sroa.0.sroa.10.0.extract.shift109232.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 8
  %.sroa.61.sroa.0.sroa.10.0.extract.trunc110.i.i = trunc i64 %.sroa.61.sroa.0.sroa.10.0.extract.shift109232.i.i to i8
  %.sroa.61.sroa.0.sroa.12.0.extract.shift117233.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 16
  %.sroa.61.sroa.0.sroa.12.0.extract.trunc118.i.i = trunc i64 %.sroa.61.sroa.0.sroa.12.0.extract.shift117233.i.i to i8
  %.sroa.61.sroa.0.sroa.14.0.extract.shift125234.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 24
  %.sroa.61.sroa.0.sroa.14.0.extract.trunc126.i.i = trunc i64 %.sroa.61.sroa.0.sroa.14.0.extract.shift125234.i.i to i8
  %.sroa.61.sroa.16.0.extract.shift97.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 32
  %.sroa.61.sroa.16.0.extract.trunc98.i.i = trunc nuw i64 %.sroa.61.sroa.16.0.extract.shift97.i.i to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, i64 12, i1 false), !noalias !41350
  br label %bb.bi

bb.ar:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41425
  %i.jo = load i64, ptr %i.cf, align 8, !range !79, !noalias !41425, !noundef !8
  %i.jp = trunc nuw i64 %i.jo to i1               ; 2 uses
  br i1 %i.jp, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !41428, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !41433, !nonnull !8, !noundef !8
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !41428, !noundef !8
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !41428, !noundef !8
  invoke void %i.js(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.jt, ptr noundef %i.jv, i64 noundef %i.jx)
          to label %.noexc43.i.i unwind label %bb.m, !noalias !41350, !inline_history !41401

.noexc43.i.i:                                     ; preds = %bb.at
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !41425
  br label %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc43.i.i, %bb.as
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %.noexc43.i.i ], [ null, %bb.as ] ; 3 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.aj, align 8, !noalias !41425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i33.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !41425
  %i.jy = ptrtoint ptr %.sroa.0.0.i.i.i.i.i.i to i64
  br label %bb.au

bb.au:                                            ; preds = %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ar
  %.sroa.19.8.copyload.i.i = phi i64 [ %i.jy, %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ar ]
  %.sroa.11.8.copyload.i.i = phi i64 [ 1, %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.jz = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ar ] ; 2 uses
  store i64 %.sroa.11.8.copyload.i.i, ptr %i.g, align 8, !noalias !41425
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.kb = load i64, ptr %i.ka, align 8, !range !79, !noalias !41425, !noundef !8
  %i.kc = trunc nuw i64 %i.kb to i1
  br i1 %i.kc, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !41425
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !41434, !noundef !8 ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i6.i.i.i.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !41439, !nonnull !8, !noundef !8
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 176
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !41434, !noundef !8
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !41434, !noundef !8
  invoke void %i.kf(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.kg, ptr noundef %i.ki, i64 noundef %i.kk)
          to label %.noexc.i32.i.i.i unwind label %bb.ay, !noalias !41440, !inline_history !41441

.noexc.i32.i.i.i:                                 ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i7.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !41442
  %i.kl = ptrtoint ptr %.sroa.0.0.copyload.i.i7.i.i.i.i to i64
  %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !41383
  %i.km = load <4 x i8>, ptr %.sroa.5.sroa.4.i22.i.sroa.4.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !41383
  br label %bb.bb

bb.ax:                                            ; preds = %bb.bb, %bb.au
  %.sroa.5.sroa.4.i22.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.i.i, %bb.bb ], [ undef, %bb.au ]
  %.sroa.5.sroa.0.0.i24.i.i.i = phi i64 [ %.sroa.0.0.i.i8.i.i.i.i, %bb.bb ], [ undef, %bb.au ] ; 5 uses
  %.sroa.0.0.i25.i.i.i = phi i32 [ 1, %bb.bb ], [ 0, %bb.au ]
  %i.kn = phi <4 x i8> [ %i.kx, %bb.bb ], [ undef, %bb.au ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 184
  %i.kp = load i64, ptr %i.ko, align 8, !range !79, !noalias !41425, !noundef !8
  %i.kq = trunc nuw i64 %i.kp to i1
  br i1 %i.kq, label %bb.bc, label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41443)
  br i1 %i.jp, label %bb.az, label %.body.i.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !41446)
  call void @llvm.experimental.noalias.scope.decl(metadata !41449)
  call void @llvm.experimental.noalias.scope.decl(metadata !41452)
  %i.ks = icmp eq ptr %i.jz, null
  br i1 %i.ks, label %.body.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !41455)
  call void @llvm.experimental.noalias.scope.decl(metadata !41458)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !41461, !nonnull !8, !noundef !8
  %i.kv = load ptr, ptr %.sroa.4.0..sroa_idx.i33.i.i.i, align 8, !alias.scope !41462, !noalias !41425, !noundef !8
  %i.kw = load i64, ptr %.sroa.31.8..sroa_idx.i.i, align 8, !alias.scope !41462, !noalias !41425, !noundef !8
  invoke void %i.ku(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.37.8..sroa_idx.i.i, ptr noundef %i.kv, i64 noundef %i.kw)
          to label %.body.i.i unwind label %bb.bf, !noalias !41440, !inline_history !534

bb.bb:                                            ; preds = %.noexc.i32.i.i.i, %bb.av
  %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.pre.i.i, %.noexc.i32.i.i.i ], [ undef, %bb.av ]
  %.sroa.0.0.i.i8.i.i.i.i = phi i64 [ %i.kl, %.noexc.i32.i.i.i ], [ 0, %bb.av ]
  %i.kx = phi <4 x i8> [ %i.km, %.noexc.i32.i.i.i ], [ undef, %bb.av ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.0..sroa_idx.i.i, i64 12, i1 false), !noalias !41383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !41425
  br label %bb.ax

bb.bc:                                            ; preds = %bb.ax
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 192
  %i.kz = load i64, ptr %i.ky, align 8, !noalias !41425, !noundef !8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ax
  %.sroa.52.0.i26.i.i.i = phi i64 [ %i.kz, %bb.bc ], [ undef, %bb.ax ]
  %.sroa.01.0.i27.i.i.i = phi i64 [ 1, %bb.bc ], [ 0, %bb.ax ]
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 200
  %i.lb = load i64, ptr %i.la, align 8, !range !79, !noalias !41425, !noundef !8
  %i.lc = trunc nuw i64 %i.lb to i1
  br i1 %i.lc, label %bb.be, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 208
  %i.le = load i64, ptr %i.ld, align 8, !noalias !41425, !noundef !8
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.bf:                                            ; preds = %bb.ba
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !41440
  unreachable

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.be, %bb.bd
  %.sroa.54.0.i28.i.i.i = phi i64 [ %i.le, %bb.be ], [ undef, %bb.bd ]
  %.sroa.03.0.i29.i.i.i = phi i64 [ 1, %bb.be ], [ 0, %bb.bd ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 216
  %i.lh = load <4 x i8>, ptr %i.lg, align 8, !noalias !41425
  %.sroa.25.8.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i33.i.i.i, align 8, !noalias !41350
  %.sroa.31.8.copyload.i.i = load i64, ptr %.sroa.31.8..sroa_idx.i.i, align 8, !noalias !41350
  %.sroa.37.8.copyload.i.i = load i32, ptr %.sroa.37.8..sroa_idx.i.i, align 8, !noalias !41350 ; 4 uses
  %.sroa.37.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.37.8.copyload.i.i to i8
  %.sroa.37.sroa.11.0.extract.shift.i.i = lshr i32 %.sroa.37.8.copyload.i.i, 8
  %.sroa.37.sroa.11.0.extract.trunc.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift.i.i = lshr i32 %.sroa.37.8.copyload.i.i, 16
  %.sroa.37.sroa.12.0.extract.trunc.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift.i.i = lshr i32 %.sroa.37.8.copyload.i.i, 24
  %.sroa.37.sroa.13.0.extract.trunc.i.i = trunc nuw i32 %.sroa.37.sroa.13.0.extract.shift.i.i to i8
  %.sroa.46.8.copyload.i.i = load i32, ptr %.sroa.46.8..sroa_idx.i.i, align 4, !noalias !41350 ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.46.8.copyload.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift.i.i = lshr i32 %.sroa.46.8.copyload.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift.i.i = and i32 %.sroa.46.8.copyload.i.i, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !41383
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc103.i.i = trunc i64 %.sroa.5.sroa.0.0.i24.i.i.i to i8
  %.sroa.61.sroa.0.sroa.10.0.extract.shift107229.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 8
  %.sroa.61.sroa.0.sroa.10.0.extract.trunc108.i.i = trunc i64 %.sroa.61.sroa.0.sroa.10.0.extract.shift107229.i.i to i8
  %.sroa.61.sroa.0.sroa.12.0.extract.shift115230.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 16
  %.sroa.61.sroa.0.sroa.12.0.extract.trunc116.i.i = trunc i64 %.sroa.61.sroa.0.sroa.12.0.extract.shift115230.i.i to i8
  %.sroa.61.sroa.0.sroa.14.0.extract.shift123231.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 24
  %.sroa.61.sroa.0.sroa.14.0.extract.trunc124.i.i = trunc i64 %.sroa.61.sroa.0.sroa.14.0.extract.shift123231.i.i to i8
  %.sroa.61.sroa.16.0.extract.shift.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 32
  %.sroa.61.sroa.16.0.extract.trunc.i.i = trunc nuw i64 %.sroa.61.sroa.16.0.extract.shift.i.i to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.i.i, i64 12, i1 false), !noalias !41350
  br label %bb.bi

bb.bg:                                            ; preds = %bb.r
  store i64 8, ptr %i.n, align 8, !noalias !41350
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 400
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !41350, !align !1742, !noundef !8 ; 10 uses
  %.not24.i.i = icmp eq ptr %i.lj, null
  br i1 %.not24.i.i, label %bb.bq, label %bb.bj

bb.bi:                                            ; preds = %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.ab, %bb.aa, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.v, %bb.u, %bb.t
  %.sroa.37.sroa.13.0.i.i = phi i8 [ %i.da, %bb.t ], [ 0, %bb.u ], [ %.sroa.37.sroa.13.0.extract.trunc210.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.37.sroa.13.0.extract.trunc208.i.i, %bb.ab ], [ %.sroa.37.sroa.13.0.extract.trunc206.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.13.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.37.sroa.12.0.i.i = phi i8 [ %i.cy, %bb.t ], [ 0, %bb.u ], [ %.sroa.37.sroa.12.0.extract.trunc198.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.37.sroa.12.0.extract.trunc196.i.i, %bb.ab ], [ %.sroa.37.sroa.12.0.extract.trunc194.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.12.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.37.sroa.11.0.i.i = phi i8 [ %i.cw, %bb.t ], [ 0, %bb.u ], [ %.sroa.37.sroa.11.0.extract.trunc186.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.37.sroa.11.0.extract.trunc184.i.i, %bb.ab ], [ %.sroa.37.sroa.11.0.extract.trunc182.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.11.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.37.sroa.0.0.i.i = phi i8 [ %i.cu, %bb.t ], [ %.sroa.37.sroa.0.0.extract.trunc180.i.i, %bb.u ], [ %.sroa.37.sroa.0.0.extract.trunc177.i.i, %bb.v ], [ %.sroa.0.0.i.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.0.0.extract.trunc178.i.i, %bb.aa ], [ %.sroa.37.sroa.0.0.extract.trunc176.i.i, %bb.ab ], [ %.sroa.37.sroa.0.0.extract.trunc175.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.37.sroa.0.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.46.sroa.12.0.i.i = phi i32 [ 0, %bb.t ], [ %.sroa.46.sroa.12.0.extract.shift171.i.i, %bb.u ], [ %.sroa.46.sroa.12.0.extract.shift169.i.i, %bb.v ], [ %.sroa.46.sroa.12.0.extract.shift173.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.12.0.extract.shift165.i.i, %bb.aa ], [ %.sroa.46.sroa.12.0.extract.shift167.i.i, %bb.ab ], [ %.sroa.46.sroa.12.0.extract.shift163.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.12.0.extract.shift.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.46.sroa.11.0.i.i = phi i8 [ %i.cj, %bb.t ], [ %.sroa.46.sroa.11.0.extract.trunc160.i.i, %bb.u ], [ %.sroa.46.sroa.11.0.extract.trunc158.i.i, %bb.v ], [ %.sroa.46.sroa.11.0.extract.trunc162.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.11.0.extract.trunc154.i.i, %bb.aa ], [ %.sroa.46.sroa.11.0.extract.trunc156.i.i, %bb.ab ], [ %.sroa.46.sroa.11.0.extract.trunc152.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.11.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.46.sroa.0.0.i.i = phi i8 [ %i.ch, %bb.t ], [ %.sroa.46.sroa.0.0.extract.trunc149.i.i, %bb.u ], [ %.sroa.46.sroa.0.0.extract.trunc148.i.i, %bb.v ], [ %.sroa.46.sroa.0.0.extract.trunc150.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.0.0.extract.trunc146.i.i, %bb.aa ], [ %.sroa.46.sroa.0.0.extract.trunc147.i.i, %bb.ab ], [ %.sroa.46.sroa.0.0.extract.trunc145.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.46.sroa.0.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.53.sroa.10.0.i.i = phi i32 [ undef, %bb.t ], [ %.sroa.52.0.i.i.i.i, %bb.u ], [ %.sroa.53.sroa.10.0.extract.trunc144.i.i, %bb.v ], [ %.sroa.5.i.i.sroa.5.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.gu, %bb.aa ], [ %.sroa.53.sroa.10.0.extract.trunc142.i.i, %bb.ab ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.53.sroa.0.0.i.i = phi i32 [ undef, %bb.t ], [ %i.dh, %bb.u ], [ %.sroa.53.sroa.0.0.extract.trunc138.i.i, %bb.v ], [ %.sroa.5.i.i.sroa.4.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.fy, %bb.aa ], [ %.sroa.53.sroa.0.0.extract.trunc137.i.i, %bb.ab ], [ %.sroa.0.0.i17.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.0.0.i25.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.14.0.i.i = phi i8 [ undef, %bb.t ], [ %i.eb, %bb.u ], [ 0, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.gs, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.0.sroa.14.0.extract.trunc126.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.14.0.extract.trunc124.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.12.0.i.i = phi i8 [ undef, %bb.t ], [ %i.dz, %bb.u ], [ 0, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.gq, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.0.sroa.12.0.extract.trunc118.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.12.0.extract.trunc116.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.10.0.i.i = phi i8 [ undef, %bb.t ], [ %i.dx, %bb.u ], [ 0, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.go, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.0.sroa.10.0.extract.trunc110.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.10.0.extract.trunc108.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.0.0.i.i = phi i8 [ undef, %bb.t ], [ %i.dv, %bb.u ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc106.i.i, %bb.v ], [ %.sroa.01.0.i.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.gm, %bb.aa ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc105.i.i, %bb.ab ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc104.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc103.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.61.sroa.16.0.i.i = phi i32 [ undef, %bb.t ], [ undef, %bb.u ], [ 0, %bb.v ], [ %.sroa.52.i.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.16.0.extract.trunc98.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.61.sroa.16.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.97.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.54.0.i20.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.54.0.i28.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.95.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.03.0.i.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.03.0.i29.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.93.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.52.0.i18.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.52.0.i26.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.9190.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.01.0.i19.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.01.0.i27.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.75.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ %.sroa.56.0.i6.i.i.i, %bb.v ], [ %.sroa.52.i.i.sroa.4.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ %.sroa.56.0.i16.i.i.i, %bb.ab ], [ %.sroa.5.sroa.4.i.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.5.sroa.4.i22.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.31.0.i.i = phi i64 [ %.sroa.54.0.i.i.i.i, %bb.t ], [ %.sroa.56.0.i.i.i.i, %bb.u ], [ %.sroa.52.0.i4.i.i.i, %bb.v ], [ %.sroa.56.0.i8.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.56.0.i12.i.i.i, %bb.aa ], [ %i.ht, %bb.ab ], [ %.sroa.31.8.copyload76.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.31.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.25.0.i.i = phi i64 [ %i.cp, %bb.t ], [ %i.dq, %bb.u ], [ %i.eh, %bb.v ], [ %i.fm, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.gh, %bb.aa ], [ %i.ha, %bb.ab ], [ %.sroa.25.8.copyload74.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.25.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.19.0.i.i = phi i64 [ %.sroa.5.0.i.i.i.i, %bb.t ], [ %.sroa.54.0.i2.i.i.i, %bb.u ], [ %.sroa.5.0.i3.i.i.i, %bb.v ], [ %.sroa.54.0.i7.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.54.0.i11.i.i.i, %bb.aa ], [ %i.hs, %bb.ab ], [ %.sroa.19.8.copyload72.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.19.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.11.0.i.i = phi i64 [ %i.ck, %bb.t ], [ %i.dl, %bb.u ], [ %i.ec, %bb.v ], [ %i.fh, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.gc, %bb.aa ], [ %i.gv, %bb.ab ], [ %.sroa.11.8.copyload70.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.11.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %i.lk = phi <4 x i8> [ undef, %bb.t ], [ undef, %bb.u ], [ %i.ey, %bb.v ], [ %i.fr, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ %i.hr, %bb.ab ], [ %i.it, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.kn, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %i.ll = phi <4 x i8> [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.jn, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.lh, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i22.i.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.sroa.8.i.i)
  store i64 %i.ce, ptr %i.n, align 8, !noalias !41350
  store i64 %.sroa.11.0.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !41350
  store i64 %.sroa.19.0.i.i, ptr %.sroa.19.0..sroa_idx.i.i, align 8, !noalias !41350
  store i64 %.sroa.25.0.i.i, ptr %.sroa.25.0..sroa_idx.i.i, align 8, !noalias !41350
  store i64 %.sroa.31.0.i.i, ptr %.sroa.31.0..sroa_idx.i.i, align 8, !noalias !41350
  %.sroa.37.sroa.13.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.13.0.i.i to i32
  %.sroa.37.sroa.13.0.insert.shift.i.i = shl nuw i32 %.sroa.37.sroa.13.0.insert.ext.i.i, 24
  %.sroa.37.sroa.12.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.12.0.i.i to i32
  %.sroa.37.sroa.12.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.37.sroa.12.0.insert.ext.i.i, 16
  %.sroa.37.sroa.12.0.insert.insert.i.i = or disjoint i32 %.sroa.37.sroa.12.0.insert.shift.i.i, %.sroa.37.sroa.13.0.insert.shift.i.i
  %.sroa.37.sroa.11.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.11.0.i.i to i32
  %.sroa.37.sroa.11.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.37.sroa.11.0.insert.ext.i.i, 8
  %.sroa.37.sroa.11.0.insert.insert.i.i = or disjoint i32 %.sroa.37.sroa.12.0.insert.insert.i.i, %.sroa.37.sroa.11.0.insert.shift.i.i
  %.sroa.37.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.0.0.i.i to i32
  %.sroa.37.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.37.sroa.11.0.insert.insert.i.i, %.sroa.37.sroa.0.0.insert.ext.i.i
  store i32 %.sroa.37.sroa.0.0.insert.insert.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !noalias !41350
  %.sroa.46.sroa.11.0.insert.ext.i.i = zext i8 %.sroa.46.sroa.11.0.i.i to i32
  %.sroa.46.sroa.11.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.46.sroa.11.0.insert.ext.i.i, 8
  %.sroa.46.sroa.11.0.insert.insert.i.i = or disjoint i32 %.sroa.46.sroa.11.0.insert.shift.i.i, %.sroa.46.sroa.12.0.i.i
  %.sroa.46.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.46.sroa.0.0.i.i to i32
  %.sroa.46.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.46.sroa.11.0.insert.insert.i.i, %.sroa.46.sroa.0.0.insert.ext.i.i
  store i32 %.sroa.46.sroa.0.0.insert.insert.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 4, !noalias !41350
  store i32 %.sroa.53.sroa.0.0.i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !41350
  store i32 %.sroa.53.sroa.10.0.i.i, ptr %.sroa.53.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !41350
  %.sroa.61.sroa.0.sroa.14.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.14.0.i.i to i64
  %.sroa.61.sroa.0.sroa.14.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.61.sroa.0.sroa.14.0.insert.ext.i.i, 24
  %.sroa.61.sroa.0.sroa.12.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.12.0.i.i to i64
  %.sroa.61.sroa.0.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.61.sroa.0.sroa.12.0.insert.ext.i.i, 16
  %.sroa.61.sroa.0.sroa.12.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.12.0.insert.shift.i.i, %.sroa.61.sroa.0.sroa.14.0.insert.shift.i.i
  %.sroa.61.sroa.0.sroa.10.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.10.0.i.i to i64
  %.sroa.61.sroa.0.sroa.10.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.61.sroa.0.sroa.10.0.insert.ext.i.i, 8
  %.sroa.61.sroa.0.sroa.10.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.12.0.insert.insert.i.i, %.sroa.61.sroa.0.sroa.10.0.insert.shift.i.i
  %.sroa.61.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.0.0.i.i to i64
  %.sroa.61.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.10.0.insert.insert.i.i, %.sroa.61.sroa.0.sroa.0.0.insert.ext.i.i
  %.sroa.61.sroa.16.0.insert.ext.i.i = zext i32 %.sroa.61.sroa.16.0.i.i to i64
  %.sroa.61.sroa.16.0.insert.shift.i.i = shl nuw i64 %.sroa.61.sroa.16.0.insert.ext.i.i, 32
  %.sroa.61.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.16.0.insert.shift.i.i, %.sroa.61.sroa.0.sroa.0.0.insert.insert.i.i
  store i64 %.sroa.61.sroa.0.0.insert.insert.i.i, ptr %.sroa.61.0..sroa_idx.i.i, align 8, !noalias !41350
  store i64 %.sroa.75.0.i.i, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !41350
  store <4 x i8> %i.lk, ptr %.sroa.79.0..sroa_idx.i.i, align 8, !noalias !41350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.i.i, i64 12, i1 false), !noalias !41350
  store i64 %.sroa.9190.0.i.i, ptr %.sroa.9190.0..sroa_idx.i.i, align 8, !noalias !41350
  store i64 %.sroa.93.0.i.i, ptr %.sroa.93.0..sroa_idx.i.i, align 8, !noalias !41350
  store i64 %.sroa.95.0.i.i, ptr %.sroa.95.0..sroa_idx.i.i, align 8, !noalias !41350
  store i64 %.sroa.97.0.i.i, ptr %.sroa.97.0..sroa_idx.i.i, align 8, !noalias !41350
  store <4 x i8> %i.ll, ptr %.sroa.99.0..sroa_idx.i.i, align 8, !noalias !41350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.91.i.i)
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  %i.lm = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsE13new_uninit_inCs14kWLkQVSKO_14deltalake_core()
          to label %.noexc46.i.i unwind label %bb.br, !noalias !41350 ; 11 uses

.noexc46.i.i:                                     ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !41463)
  call void @llvm.experimental.noalias.scope.decl(metadata !41466)
  %i.ln = load i64, ptr %i.lj, align 8, !range !242, !alias.scope !41469, !noalias !41470, !noundef !8 ; 3 uses
  %.not.i.i.i44.i.i = icmp eq i64 %i.ln, 2
  br i1 %.not.i.i.i44.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.noexc46.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  %i.lp = load <2 x double>, ptr %i.lo, align 8, !alias.scope !41469, !noalias !41470
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  %i.lr = load <2 x double>, ptr %i.lq, align 8, !alias.scope !41469, !noalias !41470
  %i.ls = trunc i64 %i.ln to i1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lu = load <2 x double>, ptr %i.lt, align 8, !alias.scope !41469, !noalias !41470
  %i.lv = insertelement <2 x i1> poison, i1 %i.ls, i64 0
  %i.lw = shufflevector <2 x i1> %i.lv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.lx = select <2 x i1> %i.lw, <2 x double> %i.lu, <2 x double> undef
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.lz = load i64, ptr %i.ly, align 8, !range !79, !alias.scope !41469, !noalias !41470, !noundef !8 ; 2 uses
  %i.ma = trunc nuw i64 %i.lz to i1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.mc = load <2 x double>, ptr %i.mb, align 8, !alias.scope !41469, !noalias !41470
  %i.md = insertelement <2 x i1> poison, i1 %i.ma, i64 0
  %i.me = shufflevector <2 x i1> %i.md, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.mf = select <2 x i1> %i.me, <2 x double> %i.mc, <2 x double> undef
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.noexc46.i.i
  %.sroa.5.sroa.0.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.lz, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mg = phi <2 x double> [ %i.lx, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mh = phi <2 x double> [ %i.mf, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mi = phi <2 x double> [ %i.lp, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mj = phi <2 x double> [ %i.lr, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lj, i64 80
  %i.ml = load i64, ptr %i.mk, align 8, !range !107, !alias.scope !41469, !noalias !41470, !noundef !8
  %.not16.i.i.i.i.i = icmp eq i64 %i.ml, -9223372036854775808
  br i1 %.not16.i.i.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !41472)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lj, i64 96
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lj, i64 88
  %i.mo = load ptr, ptr %i.mn, align 8, !alias.scope !41475, !noalias !41476, !nonnull !8, !noundef !8
  %i.mp = load i64, ptr %i.mm, align 8, !alias.scope !41475, !noalias !41476, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41478
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 2305843009213693952) %i.mp, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %.loopexit.i, !noalias !41350

.noexc.i.i.i:                                     ; preds = %bb.bm
  %i.mq = load i64, ptr %i.d, align 8, !range !79, !noalias !41478, !noundef !8
  %i.mr = trunc nuw i64 %i.mq to i1
  %i.ms = load i64, ptr %i.am, align 8, !range !107, !noalias !41478, !noundef !8 ; 4 uses
  br i1 %i.mr, label %bb.bn, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, !prof !84

bb.bn:                                            ; preds = %.noexc.i.i.i
  %i.mt = load i64, ptr %i.an, align 8, !noalias !41478
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ms, i64 %i.mt) #27
          to label %.noexc1.i.i.i unwind label %.loopexit.split-lp.i, !noalias !41350

.noexc1.i.i.i:                                    ; preds = %bb.bn
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.mu = load ptr, ptr %i.an, align 8, !noalias !41478, !nonnull !8, !noundef !8 ; 3 uses
  %i.mv = icmp ule i64 %i.mp, %i.ms
  call void @llvm.assume(i1 %i.mv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !41478
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i
  %i.mw = shl nuw nsw i64 %i.mp, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mu, ptr nonnull readonly align 4 %i.mo, i64 %i.mw, i1 false), !noalias !41482
  br label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i

.loopexit.i:                                      ; preds = %bb.bm
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp.i:                             ; preds = %bb.bn
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lm, i64 noundef 104, i64 noundef 8) #31, !noalias !41350
  br label %.body47.i.i

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bo, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, %bb.bl
  %.sroa.55.sroa.0.0.i.i.i.i.i = phi ptr [ undef, %bb.bl ], [ %i.mu, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.mu, %bb.bo ]
  %.sroa.55.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %bb.bl ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.mp, %bb.bo ]
  %.sroa.03.0.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.bl ], [ %i.ms, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.ms, %bb.bo ]
  store i64 %i.ln, ptr %i.lm, align 8, !noalias !41483
  %.sroa.4.0..sroa_idx.i.i45.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store <2 x double> %i.mg, ptr %.sroa.4.0..sroa_idx.i.i45.i.i, align 8, !noalias !41483
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  store i64 %.sroa.5.sroa.0.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !41483
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  store <2 x double> %i.mh, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !41483
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  store <2 x double> %i.mi, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !41483
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 64
  store <2 x double> %i.mj, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !41483
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 80
  store i64 %.sroa.03.0.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !41483
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 88
  store ptr %.sroa.55.sroa.0.0.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !41483
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 96
  store i64 %.sroa.55.sroa.4.0.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !41483
  br label %bb.bq

bb.bq:                                            ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.bh
  %storemerge.i.i = phi ptr [ null, %bb.bh ], [ %i.lm, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !41350
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 296
  %i.my = load i64, ptr %i.mx, align 8, !range !271, !noalias !41350, !noundef !8 ; 2 uses
  %.not25.i.i = icmp eq i64 %i.my, -9223372036854775807
  br i1 %.not25.i.i, label %bb.bx, label %bb.bs

.body47.i.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata24ParquetPageEncodingStatsEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.br, %bb.bp
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata24ParquetPageEncodingStatsEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.mz, %bb.br ], [ %lpad.phi.i, %bb.bp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10statistics10StatisticsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(128) %i.n) #29
          to label %.body.i.i unwind label %bb.cy, !noalias !41350

bb.br:                                            ; preds = %bb.bj
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i.i

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !41484)
  call void @llvm.experimental.noalias.scope.decl(metadata !41487)
  %i.na = icmp eq i64 %i.my, -9223372036854775808
  br i1 %i.na, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %.sroa.5.0..sroa_idx219.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 304
  %.sroa.5.0.copyload220.i.i = load ptr, ptr %.sroa.5.0..sroa_idx219.i.i, align 8, !alias.scope !41489, !noalias !41350
  %.sroa.6.0..sroa_idx221.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 312
  %.sroa.6.0.copyload222.i.i = load i64, ptr %.sroa.6.0..sroa_idx221.i.i, align 8, !alias.scope !41489, !noalias !41350
  br label %_RNvXsA_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_24ParquetPageEncodingStatsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !41490)
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 312
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 304
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !41493, !noalias !41494, !nonnull !8, !noundef !8 ; 4 uses
  %i.ne = load i64, ptr %i.nb, align 8, !alias.scope !41493, !noalias !41494, !noundef !8 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41496)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41499
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %i.ne, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %.noexc51.i.i unwind label %.loopexit139.i, !noalias !41350

.noexc51.i.i:                                     ; preds = %bb.bu
  %i.nf = load i64, ptr %i.c, align 8, !range !79, !noalias !41499, !noundef !8
  %i.ng = trunc nuw i64 %i.nf to i1
  %i.nh = load i64, ptr %i.ao, align 8, !range !107, !noalias !41499, !noundef !8 ; 8 uses
  br i1 %i.ng, label %bb.bv, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, !prof !84

bb.bv:                                            ; preds = %.noexc51.i.i
  %i.ni = load i64, ptr %i.ap, align 8, !noalias !41499
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.nh, i64 %i.ni) #27
          to label %.noexc52.i.i unwind label %.loopexit.split-lp140.i, !noalias !41350

.noexc52.i.i:                                     ; preds = %bb.bv
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %.noexc51.i.i
  %i.nj = load ptr, ptr %i.ap, align 8, !noalias !41499, !nonnull !8, !noundef !8 ; 5 uses
  %i.nk = icmp ule i64 %i.ne, %i.nh
  call void @llvm.assume(i1 %i.nk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41499
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.ne
  %i.nm = icmp eq i64 %i.nh, 0
  br i1 %i.nm, label %_RNvXsA_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_24ParquetPageEncodingStatsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.nn = and i64 %i.ne, 2305843009213693951
  %i.no = add i64 %i.nh, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.nn, i64 %i.no) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 4
end_hunk_3
