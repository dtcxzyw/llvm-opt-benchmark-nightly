Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.07?download=true
inline.NumInlined: 9996
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtNtNtB2d_11collections4hash3map7HashMapBP_B1r_EECs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body.thread unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtB3h_8adapters12GenericShuntINtNtB4n_3map3MapINtNtNtB3j_5slice4iter4IterBP_ENCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_00EINtNtB3j_6result6ResultNtNtB3j_7convert10InfallibleNtNtB5Q_6errors15DeltaTableErrorEEEB5Q_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9598 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !9599
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !35
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_00EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2u_6errors15DeltaTableErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  %i.h = load i64, ptr %i.c, align 8, !noundef !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_00EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2u_6errors15DeltaTableErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  %i.i = load i64, ptr %i.b, align 8, !noundef !35
  %i.j = add i64 %i.i, 1
  %i.k = lshr i64 %i.j, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %i.k, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2v_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMs0_NtNtB7_3ops9try_traitINtB69_17NeverShortCircuituE10wrap_mut_2uTB1E_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENCINvNvB5i_8for_each4callB79_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8N_7HashMapB1E_B7e_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5m_7collect6ExtendB79_E6extendBE_E0E0E0B6u_EB2v_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtB3m_8adapters12GenericShuntINtNtB4s_3map3MapINtNtB4s_10filter_map9FilterMapINtNtB4s_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB63_5array10byte_array16GenericByteArrayINtNtB63_5types17GenericStringTypelEEEB5Y_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB8k_16parse_partitionss_0EINtNtB3o_6result6ResultNtNtB3o_7convert10InfallibleNtNtB8s_6errors15DeltaTableErrorEEEB8s_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(184) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9657 {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [184 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(184) %1, i64 184, i1 false), !alias.scope !9658
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !35
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_10filter_map9FilterMapINtNtB2_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB22_5array10byte_array16GenericByteArrayINtNtB22_5types17GenericStringTypelEEEB1X_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4j_16parse_partitionss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4r_6errors15DeltaTableErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4r_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.d)
          to label %bb.d unwind label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_10filter_map9FilterMapINtNtB2_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB22_5array10byte_array16GenericByteArrayINtNtB22_5types17GenericStringTypelEEEB1X_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4j_16parse_partitionss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4r_6errors15DeltaTableErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB4r_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.d)
          to label %bb.f unwind label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !noundef !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.0.0 = phi i64 [ %i.h, %bb.d ], [ %i.l, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.g unwind label %bb.s

bb.f:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.b, align 8, !noundef !35
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 dereferenceable(184) %i.d, i64 184, i1 false)
  invoke void @_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_10filter_map9FilterMapINtNtB3_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB23_5array10byte_array16GenericByteArrayINtNtB23_5types17GenericStringTypelEEEB1Y_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4k_16parse_partitionss_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4s_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMs0_NtNtB7_3ops9try_traitINtB8q_17NeverShortCircuituE10wrap_mut_2uTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCINvNvB7z_8for_each4callB9q_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBbH_7HashMapB9r_Ba3_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB7D_7collect6ExtendB9q_E6extendBE_E0E0E0B8L_EB4s_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_10filter_map9FilterMapINtNtBJ_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB2n_5array10byte_array16GenericByteArrayINtNtB2n_5types17GenericStringTypelEEEB2i_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4E_16parse_partitionss_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB4M_6errors15DeltaTableErrorEEEB4M_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a) #54
          to label %.body.thread unwind label %bb.r

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !9659)
  call void @llvm.experimental.noalias.scope.decl(metadata !9660)
  call void @llvm.experimental.noalias.scope.decl(metadata !9661)
  call void @llvm.experimental.noalias.scope.decl(metadata !9662)
  call void @llvm.experimental.noalias.scope.decl(metadata !9663)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9664)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !9665, !noundef !35 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !9666
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9667)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9668)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !9669, !noundef !35 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.body.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !9670
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.n, label %.body.thread

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t) #58
          to label %.body.thread unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9671)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9672)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !9673, !noundef !35 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB6_3map3MapINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB20_5array10byte_array16GenericByteArrayINtNtB20_5types17GenericStringTypelEEEB1V_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4h_16parse_partitionss_0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB4p_6errors15DeltaTableErrorEENtNtNtB8_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8n_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB7A_7collect6ExtendTB96_B9I_EE6extendB3_E0EB4p_.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %i.ab = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !9674
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB6_3map3MapINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB20_5array10byte_array16GenericByteArrayINtNtB20_5types17GenericStringTypelEEEB1V_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4h_16parse_partitionss_0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB4p_6errors15DeltaTableErrorEENtNtNtB8_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8n_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB7A_7collect6ExtendTB96_B9I_EE6extendB3_E0EB4p_.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y) #58
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB6_3map3MapINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB20_5array10byte_array16GenericByteArrayINtNtB20_5types17GenericStringTypelEEEB1V_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4h_16parse_partitionss_0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB4p_6errors15DeltaTableErrorEENtNtNtB8_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8n_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB7A_7collect6ExtendTB96_B9I_EE6extendB3_E0EB4p_.exit

bb.q:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.r:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvYINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB6_3map3MapINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB20_5array10byte_array16GenericByteArrayINtNtB20_5types17GenericStringTypelEEEB1V_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4h_16parse_partitionss_0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB4p_6errors15DeltaTableErrorEENtNtNtB8_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8n_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB7A_7collect6ExtendTB96_B9I_EE6extendB3_E0EB4p_.exit: ; preds = %bb.p, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.body.thread:                                     ; preds = %bb.n, %bb.m, %bb.l, %bb.h, %bb.s
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.m, %bb.h ], [ %lpad.thr_comm, %bb.s ], [ %i.s, %bb.l ], [ %i.s, %bb.n ], [ %i.s, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body5

bb.s:                                             ; preds = %bb.e, %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_10filter_map9FilterMapINtNtBJ_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB2n_5array10byte_array16GenericByteArrayINtNtB2n_5types17GenericStringTypelEEEB2i_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4E_16parse_partitionss_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB4M_6errors15DeltaTableErrorEEEB4M_(ptr noalias noundef align 8 dereferenceable(184) %i.d) #54
          to label %.body.thread unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtB3q_6option6OptionB4a_EEB1z_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9694 {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 5 uses
  %i.b = alloca [272 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [296 x i8], align 8               ; 5 uses
  %i.e = alloca [296 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(296) %1, i64 296, i1 false), !alias.scope !9695
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val3 = load i64, ptr %i.f, align 8, !range !39
  %.sroa.0.0.in = icmp ne i64 %.val3, 2
  %.sroa.0.0 = zext i1 %.sroa.0.0.in to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EB1A_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.d, ptr noundef nonnull align 8 dereferenceable(296) %1, i64 296, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9697)
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.5.0.copyload510.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !9698 ; 2 uses
  store i64 2, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !9699
  %.not11.i.i = icmp eq i64 %.sroa.5.0.copyload510.i.i, 2
  br i1 %.not11.i.i, label %_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3m_7HashMapBI_B1k_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendBH_E6extendINtB6_6OptionBH_EE0EB1s_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEB1P_(ptr noalias noundef nonnull align 8 dereferenceable(296) %i.d) #54
          to label %.body unwind label %bb.e

.lr.ph.i.i:                                       ; preds = %bb.b
  %.sroa.69.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9700
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.69.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(264) %i.i, i64 264, i1 false)
  store i64 %.sroa.5.0.copyload510.i.i, ptr %i.b, align 8, !noalias !9701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9702
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertB1x_(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(272) %i.b)
          to label %.noexc.i.i unwind label %bb.c, !noalias !9703

.noexc.i.i:                                       ; preds = %.lr.ph.i.i
  %i.j = load i64, ptr %i.a, align 8, !range !39, !alias.scope !9704, !noalias !9702, !noundef !35
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEB1P_.exit.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.noexc.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEB1P_.exit.loopexit.i.i unwind label %bb.c, !noalias !9703

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEB1P_.exit.loopexit.i.i: ; preds = %bb.d, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9700
  br label %_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3m_7HashMapBI_B1k_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendBH_E6extendINtB6_6OptionBH_EE0EB1s_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3m_7HashMapBI_B1k_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendBH_E6extendINtB6_6OptionBH_EE0EB1s_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEB1P_.exit.loopexit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.h, %bb.c ]
  resume { ptr, i32 } %eh.lpad-body9

bb.f:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEB1P_(ptr noalias noundef align 8 dereferenceable(296) %i.e) #54
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtNtB3o_8adapters3map3MapINtNtNtBT_3vec9into_iter8IntoIterB1r_ENCNCNvNtNtB1z_16delta_datafusion10find_files17scan_memory_table0s_0EEB1z_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9708 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !9709
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !35
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !35, !noundef !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val5 = load ptr, ptr %i.f, align 8, !nonnull !35, !noundef !35
  %i.g = ptrtoint ptr %.val5 to i64
  %i.h = ptrtoint ptr %.val4 to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272                 ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  %i.l = lshr i64 %i.k, 1
  %.sroa.0.0 = select i1 %i.d, i64 %i.j, i64 %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EB1A_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtB1N_16delta_datafusion10find_files17scan_memory_table0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4F_7HashMapNtNtBY_6string6StringB1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3S_7collect6ExtendTB5o_B1F_EE6extendB3_E0EB1N_.exit unwind label %bb.b

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtB1N_16delta_datafusion10find_files17scan_memory_table0s_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4F_7HashMapNtNtBY_6string6StringB1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3S_7collect6ExtendTB5o_B1F_EE6extendB3_E0EB1N_.exit: ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtB1T_16delta_datafusion10find_files17scan_memory_table0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callTNtNtB14_6string6StringB1L_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5z_7HashMapB4Y_B1L_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3Y_7collect6ExtendB4X_E6extendBN_E0E0EB1T_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtB2a_16delta_datafusion10find_files17scan_memory_table0s_0EEB2a_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.n

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtB2a_16delta_datafusion10find_files17scan_memory_table0s_0EEB2a_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2n_8adapters3map3MapIB3o_INtCs68df2UN7hGg_6either6EitherIB3V_INtNtB3s_10filter_map9FilterMapINtNtB3s_3zip3ZipINtNtBT_5boxed3BoxDNtNtB2l_8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtBT_3vec9into_iter8IntoIterbEENCNvNtB6d_16delta_datafusion24files_matching_predicate0EIB3o_B5g_NCB84_s_0EEIB3o_INtNtB3s_7flatten7FlatMapINtNtNtB2p_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB3o_INtNtNtB2p_3ops5range5RangejENCNCNvMs1_NtB69_8log_dataNtBbQ_14LogDataHandler4iter00ENCBbK_0ENCNvMNtNtB6b_11transaction16conflict_checkerNtBcM_15TransactionInfo10read_filess_0EENCNvMs0_BcM_NtBcM_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtB9_3setINtBfH_7HashSetBP_B1s_EIB2h_BP_E6extendB3P_E0EEB6d_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9713 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !9714
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !35
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs0_NtCs68df2UN7hGg_6either8iteratorINtB7_6EitherIBC_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtBX_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBZ_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2f_3vec9into_iter8IntoIterbEENCNvNtB3w_16delta_datafusion24files_matching_predicate0EINtNtBX_3map3MapB2a_NCB5o_s_0EEIB6h_INtNtBX_7flatten7FlatMapINtNtNtB11_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB6h_INtNtNtB11_3ops5range5RangejENCNCNvMs1_NtB3s_8log_dataNtB9k_14LogDataHandler4iter00ENCB9e_0ENCNvMNtNtB3u_11transaction16conflict_checkerNtBag_15TransactionInfo10read_filess_0EEB2K_9size_hintB3w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d)
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtCs68df2UN7hGg_6either6EitherIB11_INtNtB7_10filter_map9FilterMapINtNtB7_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2p_3vec9into_iter8IntoIterbEENCNvNtB3G_16delta_datafusion24files_matching_predicate0EIBN_B2k_NCB5y_s_0EEIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtB3C_8log_dataNtB9e_14LogDataHandler4iter00ENCB98_0ENCNvMNtNtB3E_11transaction16conflict_checkerNtBaa_15TransactionInfo10read_filess_0EENCNvMs0_Baa_NtBaa_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBd5_7HashSetNtNtB2p_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Y_7collect6ExtendBdO_E6extendBW_E0EB2U_9size_hintB3G_.exit unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs0_NtCs68df2UN7hGg_6either8iteratorINtB7_6EitherIBC_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtBX_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBZ_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2f_3vec9into_iter8IntoIterbEENCNvNtB3w_16delta_datafusion24files_matching_predicate0EINtNtBX_3map3MapB2a_NCB5o_s_0EEIB6h_INtNtBX_7flatten7FlatMapINtNtNtB11_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB6h_INtNtNtB11_3ops5range5RangejENCNCNvMs1_NtB3s_8log_dataNtB9k_14LogDataHandler4iter00ENCB9e_0ENCNvMNtNtB3u_11transaction16conflict_checkerNtBag_15TransactionInfo10read_filess_0EEB2K_9size_hintB3w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d)
          to label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtCs68df2UN7hGg_6either6EitherIB11_INtNtB7_10filter_map9FilterMapINtNtB7_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2p_3vec9into_iter8IntoIterbEENCNvNtB3G_16delta_datafusion24files_matching_predicate0EIBN_B2k_NCB5y_s_0EEIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtB3C_8log_dataNtB9e_14LogDataHandler4iter00ENCB98_0ENCNvMNtNtB3E_11transaction16conflict_checkerNtBaa_15TransactionInfo10read_filess_0EENCNvMs0_Baa_NtBaa_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBd5_7HashSetNtNtB2p_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Y_7collect6ExtendBdO_E6extendBW_E0EB2U_9size_hintB3G_.exit3 unwind label %bb.f

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtCs68df2UN7hGg_6either6EitherIB11_INtNtB7_10filter_map9FilterMapINtNtB7_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2p_3vec9into_iter8IntoIterbEENCNvNtB3G_16delta_datafusion24files_matching_predicate0EIBN_B2k_NCB5y_s_0EEIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtB3C_8log_dataNtB9e_14LogDataHandler4iter00ENCB98_0ENCNvMNtNtB3E_11transaction16conflict_checkerNtBaa_15TransactionInfo10read_filess_0EENCNvMs0_Baa_NtBaa_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBd5_7HashSetNtNtB2p_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Y_7collect6ExtendBdO_E6extendBW_E0EB2U_9size_hintB3G_.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !noundef !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtCs68df2UN7hGg_6either6EitherIB11_INtNtB7_10filter_map9FilterMapINtNtB7_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2p_3vec9into_iter8IntoIterbEENCNvNtB3G_16delta_datafusion24files_matching_predicate0EIBN_B2k_NCB5y_s_0EEIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtB3C_8log_dataNtB9e_14LogDataHandler4iter00ENCB98_0ENCNvMNtNtB3E_11transaction16conflict_checkerNtBaa_15TransactionInfo10read_filess_0EENCNvMs0_Baa_NtBaa_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBd5_7HashSetNtNtB2p_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Y_7collect6ExtendBdO_E6extendBW_E0EB2U_9size_hintB3G_.exit3, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtCs68df2UN7hGg_6either6EitherIB11_INtNtB7_10filter_map9FilterMapINtNtB7_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2p_3vec9into_iter8IntoIterbEENCNvNtB3G_16delta_datafusion24files_matching_predicate0EIBN_B2k_NCB5y_s_0EEIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtB3C_8log_dataNtB9e_14LogDataHandler4iter00ENCB98_0ENCNvMNtNtB3E_11transaction16conflict_checkerNtBaa_15TransactionInfo10read_filess_0EENCNvMs0_Baa_NtBaa_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBd5_7HashSetNtNtB2p_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Y_7collect6ExtendBdO_E6extendBW_E0EB2U_9size_hintB3G_.exit
  %.sroa.0.0 = phi i64 [ %i.h, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtCs68df2UN7hGg_6either6EitherIB11_INtNtB7_10filter_map9FilterMapINtNtB7_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2p_3vec9into_iter8IntoIterbEENCNvNtB3G_16delta_datafusion24files_matching_predicate0EIBN_B2k_NCB5y_s_0EEIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtB3C_8log_dataNtB9e_14LogDataHandler4iter00ENCB98_0ENCNvMNtNtB3E_11transaction16conflict_checkerNtBaa_15TransactionInfo10read_filess_0EENCNvMs0_Baa_NtBaa_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBd5_7HashSetNtNtB2p_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Y_7collect6ExtendBdO_E6extendBW_E0EB2U_9size_hintB3G_.exit ], [ %i.l, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtCs68df2UN7hGg_6either6EitherIB11_INtNtB7_10filter_map9FilterMapINtNtB7_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2p_3vec9into_iter8IntoIterbEENCNvNtB3G_16delta_datafusion24files_matching_predicate0EIBN_B2k_NCB5y_s_0EEIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtB3C_8log_dataNtB9e_14LogDataHandler4iter00ENCB98_0ENCNvMNtNtB3E_11transaction16conflict_checkerNtBaa_15TransactionInfo10read_filess_0EENCNvMs0_Baa_NtBaa_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBd5_7HashSetNtNtB2p_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Y_7collect6ExtendBdO_E6extendBW_E0EB2U_9size_hintB3G_.exit3 ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB4_INtCs68df2UN7hGg_6either6EitherIBW_INtNtB8_10filter_map9FilterMapINtNtB8_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2j_3vec9into_iter8IntoIterbEENCNvNtB3A_16delta_datafusion24files_matching_predicate0EIB4_B2e_NCB5s_s_0EEIB4_INtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB4_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtB3w_8log_dataNtB98_14LogDataHandler4iter00ENCB92_0ENCNvMNtNtB3y_11transaction16conflict_checkerNtBa4_15TransactionInfo10read_filess_0EENCNvMs0_Ba4_NtBa4_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBcZ_7HashSetNtNtB2j_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2S_7collect6ExtendBdI_E6extendBR_E0EB2O_8for_eachNCINvXs1i_NtBd1_3mapINtBfV_7HashMapBdI_uBe4_ unwind label %bb.f

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapIBN_INtCs68df2UN7hGg_6either6EitherIB11_INtNtB7_10filter_map9FilterMapINtNtB7_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2p_3vec9into_iter8IntoIterbEENCNvNtB3G_16delta_datafusion24files_matching_predicate0EIBN_B2k_NCB5y_s_0EEIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBN_INtNtNtBb_3ops5range5RangejENCNCNvMs1_NtB3C_8log_dataNtB9e_14LogDataHandler4iter00ENCB98_0ENCNvMNtNtB3E_11transaction16conflict_checkerNtBaa_15TransactionInfo10read_filess_0EENCNvMs0_Baa_NtBaa_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBd5_7HashSetNtNtB2p_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Y_7collect6ExtendBdO_E6extendBW_E0EB2U_9size_hintB3G_.exit3: ; preds = %bb.c
  %i.j = load i64, ptr %i.b, align 8, !noundef !35
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB4_INtCs68df2UN7hGg_6either6EitherIBW_INtNtB8_10filter_map9FilterMapINtNtB8_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2j_3vec9into_iter8IntoIterbEENCNvNtB3A_16delta_datafusion24files_matching_predicate0EIB4_B2e_NCB5s_s_0EEIB4_INtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB4_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtB3w_8log_dataNtB98_14LogDataHandler4iter00ENCB92_0ENCNvMNtNtB3y_11transaction16conflict_checkerNtBa4_15TransactionInfo10read_filess_0EENCNvMs0_Ba4_NtBa4_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBcZ_7HashSetNtNtB2j_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2S_7collect6ExtendBdI_E6extendBR_E0EB2O_8for_eachNCINvXs1i_NtBd1_3mapINtBfV_7HashMapBdI_uBe4_: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtCs68df2UN7hGg_6either6EitherIB12_INtNtB8_10filter_map9FilterMapINtNtB8_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2q_3vec9into_iter8IntoIterbEENCNvNtB3H_16delta_datafusion24files_matching_predicate0EIBO_B2l_NCB5z_s_0EEIBO_INtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBO_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtB3D_8log_dataNtB9f_14LogDataHandler4iter00ENCB99_0ENCNvMNtNtB3F_11transaction16conflict_checkerNtBab_15TransactionInfo10read_filess_0EENCNvMs0_Bab_NtBab_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBd6_7HashSetNtNtB2q_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Z_7collect6ExtendBdP_E6extendBX_E0EB2V_4folduNCINvNvB2V_8for_each4callTBdP_uENCINvXs1i_NtBd8_3mapINtBgv_7HashMapBdP_uBeb_EIBf0_Bge_E6extendBN_E0E0EB3H_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapIBH_INtCs68df2UN7hGg_6either6EitherIB1j_INtNtBL_10filter_map9FilterMapINtNtBL_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2H_3vec9into_iter8IntoIterbEENCNvNtB3Y_16delta_datafusion24files_matching_predicate0EIBH_B2C_NCB5Q_s_0EEIBH_INtNtBL_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBH_INtNtNtB4_3ops5range5RangejENCNCNvMs1_NtB3U_8log_dataNtB9w_14LogDataHandler4iter00ENCB9q_0ENCNvMNtNtB3W_11transaction16conflict_checkerNtBas_15TransactionInfo10read_filess_0EENCNvMs0_Bas_NtBas_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBdn_7HashSetNtNtB2H_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3g_7collect6ExtendBe6_E6extendB1e_E0EEB3Y_(ptr noalias noundef align 8 dereferenceable(72) %i.d) #54
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2n_8adapters3map3MapIB3o_INtNtB3s_6cloned6ClonedINtNtNtB2p_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEENCNvMs0_NtNtB4O_11transaction16conflict_checkerNtB5X_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_filess_0ENCINvXs8_NtB9_3setINtB87_7HashSetBP_B1s_EIB2h_BP_E6extendB3P_E0EEB4Q_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9715 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !35
  %i.c = icmp eq i64 %i.b, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 240                 ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = lshr i64 %i.h, 1
  %.sroa.0.0 = select i1 %i.c, i64 %i.g, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
  tail call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveEENCNvMs0_NtNtB1T_11transaction16conflict_checkerNtB32_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_filess_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5c_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB5V_E6extendBX_E0ENtNtB7q_8iterator8Iterator4folduNCINvNvB89_8for_each4callTB5V_uENCINvXs1i_NtB5e_3mapINtB9l_7HashMapB5V_uB6x_EIB7m_B94_E6extendBN_E0E0EB1V_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2n_8adapters3map3MapIB3o_INtNtNtB2p_5array4iter8IntoIterReKj1_ENCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB4F_21LogicalPlanBuilderExt12drop_columnsB4p_AB4p_B4s_E0ENCINvXs8_NtB9_3setINtB80_7HashSetBP_B1s_EIB2h_BP_E6extendB3P_E0EEB4J_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9719 {
_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB4_INtNtNtBc_5array4iter8IntoIterReKj1_ENCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB1F_21LogicalPlanBuilderExt12drop_columnsB1p_AB1p_B1s_E0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB50_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB5J_E6extendBR_E0ENtNtB7e_8iterator8Iterator8for_eachNCINvXs1i_NtB52_3mapINtB8G_7HashMapB5J_uB6l_EIB7a_TB5J_uEE6extendB3_E0EB1J_.exit:
end_hunk_0
begin_hunk_1_@llvm.smax.i64
!9483 = distinct !{!9483, i1 true, !"_RINvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB11_EENtNtNtNtB1I_4iter6traits8iterator8Iterator4folduNCINvNtNtB2r_8adapters10filter_map15filter_map_foldTRB11_RB1D_ETB11_B11_EuNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB4t_13CreateBuilder22into_table_and_actions0s_0NCINvNvB2l_8for_each4callB48_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6K_7HashMapB11_B11_NtNtNtBc_4hash6random11RandomStateEINtNtB2p_7collect6ExtendB48_E6extendINtB3c_9FilterMapBQ_B4j_EE0E0E0EB4x_"}
!9484 = distinct !{!9484, !9483, !"_RINvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB11_EENtNtNtNtB1I_4iter6traits8iterator8Iterator4folduNCINvNtNtB2r_8adapters10filter_map15filter_map_foldTRB11_RB1D_ETB11_B11_EuNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB4t_13CreateBuilder22into_table_and_actions0s_0NCINvNvB2l_8for_each4callB48_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6K_7HashMapB11_B11_NtNtNtBc_4hash6random11RandomStateEINtNtB2p_7collect6ExtendB48_E6extendINtB3c_9FilterMapBQ_B4j_EE0E0E0EB4x_: argument 1"}
!9485 = distinct !{!9485, !9483, !"_RINvXsA_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB11_EENtNtNtNtB1I_4iter6traits8iterator8Iterator4folduNCINvNtNtB2r_8adapters10filter_map15filter_map_foldTRB11_RB1D_ETB11_B11_EuNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB4t_13CreateBuilder22into_table_and_actions0s_0NCINvNvB2l_8for_each4callB48_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6K_7HashMapB11_B11_NtNtNtBc_4hash6random11RandomStateEINtNtB2p_7collect6ExtendB48_E6extendINtB3c_9FilterMapBQ_B4j_EE0E0E0EB4x_: argument 0"}
!9486 = distinct !{!9486, i1 true, !"_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBL_EENtNtNtNtB1s_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters10filter_map15filter_map_foldTRBL_RB1n_ETBL_BL_EuNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB49_13CreateBuilder22into_table_and_actions0s_0NCINvNvB24_8for_each4callB3Q_NCINvXs1i_B6_INtB6_7HashMapBL_BL_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB28_7collect6ExtendB3Q_E6extendINtB2V_9FilterMapINtNtNtNtB6T_11collections4hash3map4IterBL_B1n_EB3Z_EE0E0E0EB4d_"}
!9487 = distinct !{!9487, !9486, !"_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBL_EENtNtNtNtB1s_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters10filter_map15filter_map_foldTRBL_RB1n_ETBL_BL_EuNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB49_13CreateBuilder22into_table_and_actions0s_0NCINvNvB24_8for_each4callB3Q_NCINvXs1i_B6_INtB6_7HashMapBL_BL_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB28_7collect6ExtendB3Q_E6extendINtB2V_9FilterMapINtNtNtNtB6T_11collections4hash3map4IterBL_B1n_EB3Z_EE0E0E0EB4d_: argument 1"}
!9488 = distinct !{!9488, !9486, !"_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBL_EENtNtNtNtB1s_4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters10filter_map15filter_map_foldTRBL_RB1n_ETBL_BL_EuNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB49_13CreateBuilder22into_table_and_actions0s_0NCINvNvB24_8for_each4callB3Q_NCINvXs1i_B6_INtB6_7HashMapBL_BL_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB28_7collect6ExtendB3Q_E6extendINtB2V_9FilterMapINtNtNtNtB6T_11collections4hash3map4IterBL_B1n_EB3Z_EE0E0E0EB4d_: argument 0"}
!9489 = !{i64 -7038020842094661009}
!9490 = !{!9476, !9475}
!9491 = !{!9485, !9484, !9482, !9481, !9479, !9478}
!9492 = !{!9488, !9487, !9485, !9484, !9482, !9481, !9479, !9478}
!9493 = !{!9487, !9484, !9481, !9478}
!9494 = !{!9488, !9485, !9482, !9479}
!9495 = distinct !{!9495, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB24_ENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataRB24_RINtNtB28_3vec3VecB24_EB40_B40_RINtB1f_7HashMapB24_B24_EEs_0ENtB2_12IntoIterator9into_iterB2W_"}
!9496 = distinct !{!9496, !9495, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB24_ENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataRB24_RINtNtB28_3vec3VecB24_EB40_B40_RINtB1f_7HashMapB24_B24_EEs_0ENtB2_12IntoIterator9into_iterB2W_: argument 1"}
!9497 = distinct !{!9497, !9495, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB24_ENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataRB24_RINtNtB28_3vec3VecB24_EB40_B40_RINtB1f_7HashMapB24_B24_EEs_0ENtB2_12IntoIterator9into_iterB2W_: argument 0"}
!9498 = !{i64 5541051668378591786}
!9499 = !{!9497, !9496}
!9500 = distinct !{!9500, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4KeysNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionENCNCNvXs0_NtNtB2M_10operations11constraintsNtB41_17ConstraintBuilderNtNtNtB8_6future11into_future10IntoFuture11into_future00ENtB2_12IntoIterator9into_iterB2M_"}
!9501 = distinct !{!9501, !9500, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4KeysNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionENCNCNvXs0_NtNtB2M_10operations11constraintsNtB41_17ConstraintBuilderNtNtNtB8_6future11into_future10IntoFuture11into_future00ENtB2_12IntoIterator9into_iterB2M_: argument 1"}
!9502 = distinct !{!9502, !9500, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4KeysNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionENCNCNvXs0_NtNtB2M_10operations11constraintsNtB41_17ConstraintBuilderNtNtNtB8_6future11into_future10IntoFuture11into_future00ENtB2_12IntoIterator9into_iterB2M_: argument 0"}
!9503 = !{i64 8267506462561757855}
!9504 = !{!9502, !9501}
!9505 = distinct !{!9505, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCINvMs2_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB2Y_13StorageConfig13parse_optionsB28_B28_INtB1f_7HashMapB28_B28_EE0ENtB2_12IntoIterator9into_iterB32_"}
!9506 = distinct !{!9506, !9505, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCINvMs2_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB2Y_13StorageConfig13parse_optionsB28_B28_INtB1f_7HashMapB28_B28_EE0ENtB2_12IntoIterator9into_iterB32_: argument 1"}
!9507 = distinct !{!9507, !9505, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCINvMs2_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB2Y_13StorageConfig13parse_optionsB28_B28_INtB1f_7HashMapB28_B28_EE0ENtB2_12IntoIterator9into_iterB32_: argument 0"}
!9508 = !{i64 1848663693969305296}
!9509 = !{!9507, !9506}
!9510 = distinct !{!9510, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataB28_INtNtB2c_3vec3VecB28_EB28_B28_INtB1f_7HashMapB28_B28_EEs_0ENtB2_12IntoIterator9into_iterB30_"}
!9511 = distinct !{!9511, !9510, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataB28_INtNtB2c_3vec3VecB28_EB28_B28_INtB1f_7HashMapB28_B28_EEs_0ENtB2_12IntoIterator9into_iterB30_: argument 1"}
!9512 = distinct !{!9512, !9510, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataB28_INtNtB2c_3vec3VecB28_EB28_B28_INtB1f_7HashMapB28_B28_EEs_0ENtB2_12IntoIterator9into_iterB30_: argument 0"}
!9513 = !{i64 -4002630617514479440}
!9514 = !{!9512, !9511}
!9515 = distinct !{!9515, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataRB28_RINtNtB2c_3vec3VecB28_EB28_B28_INtB1f_7HashMapB28_B28_EEs_0ENtB2_12IntoIterator9into_iterB30_"}
!9516 = distinct !{!9516, !9515, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataRB28_RINtNtB2c_3vec3VecB28_EB28_B28_INtB1f_7HashMapB28_B28_EEs_0ENtB2_12IntoIterator9into_iterB30_: argument 1"}
!9517 = distinct !{!9517, !9515, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataRB28_RINtNtB2c_3vec3VecB28_EB28_B28_INtB1f_7HashMapB28_B28_EEs_0ENtB2_12IntoIterator9into_iterB30_: argument 0"}
!9518 = !{i64 -5996097870117671352}
!9519 = !{!9517, !9516}
!9520 = distinct !{!9520, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB2X_17DeltaTableBuilder20with_storage_options0ENtB2_12IntoIterator9into_iterB31_"}
!9521 = distinct !{!9521, !9520, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB2X_17DeltaTableBuilder20with_storage_options0ENtB2_12IntoIterator9into_iterB31_: argument 1"}
!9522 = distinct !{!9522, !9520, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB28_ENCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB2X_17DeltaTableBuilder20with_storage_options0ENtB2_12IntoIterator9into_iterB31_: argument 0"}
!9523 = !{i64 -4853931683134953098}
!9524 = !{!9522, !9521}
!9525 = distinct !{!9525, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitions0ENtB2_12IntoIterator9into_iterB3B_"}
!9526 = distinct !{!9526, !9525, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitions0ENtB2_12IntoIterator9into_iterB3B_: argument 1"}
!9527 = distinct !{!9527, !9525, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitions0ENtB2_12IntoIterator9into_iterB3B_: argument 0"}
!9528 = !{i64 -4831682355126217547}
!9529 = !{!9527, !9526}
!9530 = distinct !{!9530, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB1t_NtNtNtB1W_11expressions7scalars6ScalarEENCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3z_15LogicalFileView20partition_values_map00ENtB2_12IntoIterator9into_iterB3F_"}
!9531 = distinct !{!9531, !9530, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB1t_NtNtNtB1W_11expressions7scalars6ScalarEENCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3z_15LogicalFileView20partition_values_map00ENtB2_12IntoIterator9into_iterB3F_: argument 1"}
!9532 = distinct !{!9532, !9530, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB1t_NtNtNtB1W_11expressions7scalars6ScalarEENCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3z_15LogicalFileView20partition_values_map00ENtB2_12IntoIterator9into_iterB3F_: argument 0"}
!9533 = !{i64 2340982244647913112}
!9534 = !{!9532, !9531}
!9535 = !{i64 8889640540297839849}
!9536 = !{i64 1975420111625285680}
!9537 = !{i64 -6430392070081473284}
!9538 = distinct !{!9538, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories7actionsNtB3u_13ActionFactory3add0ENtB2_12IntoIterator9into_iterB3A_"}
!9539 = distinct !{!9539, !9538, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories7actionsNtB3u_13ActionFactory3add0ENtB2_12IntoIterator9into_iterB3A_: argument 1"}
!9540 = distinct !{!9540, !9538, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories7actionsNtB3u_13ActionFactory3add0ENtB2_12IntoIterator9into_iterB3A_: argument 0"}
!9541 = !{i64 8060628297428762746}
!9542 = !{!9540, !9539}
!9543 = distinct !{!9543, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB8_6option6OptionB28_EENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB3l_13CreateBuilder18with_configurationB28_B28_INtB1f_7HashMapB28_B2K_EE0ENtB2_12IntoIterator9into_iterB3p_"}
!9544 = distinct !{!9544, !9543, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB8_6option6OptionB28_EENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB3l_13CreateBuilder18with_configurationB28_B28_INtB1f_7HashMapB28_B2K_EE0ENtB2_12IntoIterator9into_iterB3p_: argument 1"}
!9545 = distinct !{!9545, !9543, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB8_6option6OptionB28_EENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB3l_13CreateBuilder18with_configurationB28_B28_INtB1f_7HashMapB28_B2K_EE0ENtB2_12IntoIterator9into_iterB3p_: argument 0"}
!9546 = !{i64 -5062559931306619458}
!9547 = !{!9545, !9544}
!9548 = distinct !{!9548, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB3V_21ConvertToDeltaBuilder19into_create_builder0s2_0ENtB2_12IntoIterator9into_iterB3Z_"}
!9549 = distinct !{!9549, !9548, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB3V_21ConvertToDeltaBuilder19into_create_builder0s2_0ENtB2_12IntoIterator9into_iterB3Z_: argument 1"}
!9550 = distinct !{!9550, !9548, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB3V_21ConvertToDeltaBuilder19into_create_builder0s2_0ENtB2_12IntoIterator9into_iterB3Z_: argument 0"}
!9551 = !{i64 -1891410118186493020}
!9552 = !{!9550, !9549}
!9553 = distinct !{!9553, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionENCNCNCNvNtNtB3n_10operations6update7execute000EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtB2_12IntoIterator9into_iterB3n_"}
!9554 = distinct !{!9554, !9553, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionENCNCNCNvNtNtB3n_10operations6update7execute000EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtB2_12IntoIterator9into_iterB3n_: argument 1"}
!9555 = distinct !{!9555, !9553, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionENCNCNCNvNtNtB3n_10operations6update7execute000EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtB2_12IntoIterator9into_iterB3n_: argument 0"}
!9556 = !{i64 -1656828576586819782}
!9557 = !{!9555, !9554}
!9558 = distinct !{!9558, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_6filter6FilterNtNtCseqDwI8vvjGQ_10serde_json3map4IterNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB2j_14DeltaOperation20operation_parameterss_0ENCB2d_s0_0ENtB2_12IntoIterator9into_iterB2l_"}
!9559 = distinct !{!9559, !9558, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_6filter6FilterNtNtCseqDwI8vvjGQ_10serde_json3map4IterNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB2j_14DeltaOperation20operation_parameterss_0ENCB2d_s0_0ENtB2_12IntoIterator9into_iterB2l_: argument 1"}
!9560 = distinct !{!9560, !9558, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_6filter6FilterNtNtCseqDwI8vvjGQ_10serde_json3map4IterNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB2j_14DeltaOperation20operation_parameterss_0ENCB2d_s0_0ENtB2_12IntoIterator9into_iterB2l_: argument 0"}
!9561 = !{i64 -7109172375748798467}
!9562 = !{!9560, !9559}
!9563 = distinct !{!9563, i1 true, !"_RNvXsz_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9564 = distinct !{!9564, !9563, !"_RNvXsz_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9565 = distinct !{!9565, !9563, !"_RNvXsz_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9566 = distinct !{!9566, i1 true, !"_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9567 = distinct !{!9567, !9566, !"_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9568 = distinct !{!9568, !9566, !"_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9569 = distinct !{!9569, i1 true, !"_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3w_7HashMapBZ_B1B_NtNtNtBc_4hash6random11RandomStateEINtNtB2m_7collect6ExtendTBZ_B1B_EE6extendINtB6_7HashMapBZ_B1B_EE0ECs14kWLkQVSKO_14deltalake_core"}
!9570 = distinct !{!9570, !9569, !"_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3w_7HashMapBZ_B1B_NtNtNtBc_4hash6random11RandomStateEINtNtB2m_7collect6ExtendTBZ_B1B_EE6extendINtB6_7HashMapBZ_B1B_EE0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!9571 = distinct !{!9571, !9569, !"_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3w_7HashMapBZ_B1B_NtNtNtBc_4hash6random11RandomStateEINtNtB2m_7collect6ExtendTBZ_B1B_EE6extendINtB6_7HashMapBZ_B1B_EE0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9572 = distinct !{!9572, i1 true, !"_RINvXsH_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB2o_8for_each4callTB15_B1H_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB48_7HashMapB15_B1H_NtNtNtBc_4hash6random11RandomStateEINtNtB2s_7collect6ExtendB3O_E6extendINtB6_7HashMapB15_B1H_EE0E0ECs14kWLkQVSKO_14deltalake_core"}
!9573 = distinct !{!9573, !9572, !"_RINvXsH_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB2o_8for_each4callTB15_B1H_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB48_7HashMapB15_B1H_NtNtNtBc_4hash6random11RandomStateEINtNtB2s_7collect6ExtendB3O_E6extendINtB6_7HashMapB15_B1H_EE0E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!9574 = distinct !{!9574, !9572, !"_RINvXsH_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB2o_8for_each4callTB15_B1H_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB48_7HashMapB15_B1H_NtNtNtBc_4hash6random11RandomStateEINtNtB2s_7collect6ExtendB3O_E6extendINtB6_7HashMapB15_B1H_EE0E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9575 = distinct !{!9575, i1 true, !"_RINvYINtNtCs3gpiEk3WpjL_9hashbrown3raw11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB28_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB3L_7HashMapBO_B1q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2c_7collect6ExtendBN_E6extendINtNtNtNtB4m_11collections4hash3map7HashMapBO_B1q_EE0E0ECs14kWLkQVSKO_14deltalake_core"}
!9576 = distinct !{!9576, !9575, !"_RINvYINtNtCs3gpiEk3WpjL_9hashbrown3raw11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB28_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB3L_7HashMapBO_B1q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2c_7collect6ExtendBN_E6extendINtNtNtNtB4m_11collections4hash3map7HashMapBO_B1q_EE0E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!9577 = distinct !{!9577, !9575, !"_RINvYINtNtCs3gpiEk3WpjL_9hashbrown3raw11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB28_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB3L_7HashMapBO_B1q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2c_7collect6ExtendBN_E6extendINtNtNtNtB4m_11collections4hash3map7HashMapBO_B1q_EE0E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9578 = distinct !{!9578, i1 true, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB2J_7HashMapB1g_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtNtB3G_11collections4hash3map7HashMapB1g_B1S_EE0E0Cs14kWLkQVSKO_14deltalake_core"}
!9579 = distinct !{!9579, !9578, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB2J_7HashMapB1g_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtNtB3G_11collections4hash3map7HashMapB1g_B1S_EE0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!9580 = distinct !{!9580, i1 true, !"_RNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB9_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBR_B1t_EE6extendINtNtNtNtB2f_11collections4hash3map7HashMapBR_B1t_EE0Cs14kWLkQVSKO_14deltalake_core"}
!9581 = distinct !{!9581, !9580, !"_RNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB9_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBR_B1t_EE6extendINtNtNtNtB2f_11collections4hash3map7HashMapBR_B1t_EE0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!9582 = distinct !{!9582, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core"}
!9583 = distinct !{!9583, !9582, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9584 = !{i64 9172642130217108498}
!9585 = !{!9568, !9567, !9565, !9564}
!9586 = !{!9568, !9565}
!9587 = !{!9564}
!9588 = !{!9571, !9570}
!9589 = !{!9574, !9573, !9571, !9570}
!9590 = !{!9574, !9571}
!9591 = !{!9577, !9576, !9574, !9573, !9571, !9570}
!9592 = !{!9579, !9577, !9576, !9574, !9573, !9571, !9570}
!9593 = !{!9581, !9579, !9577, !9576, !9574, !9573, !9571, !9570}
!9594 = !{!9583}
!9595 = distinct !{!9595, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtB8_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_00EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2N_6errors15DeltaTableErrorEENtB2_12IntoIterator9into_iterB2N_"}
!9596 = distinct !{!9596, !9595, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtB8_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_00EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2N_6errors15DeltaTableErrorEENtB2_12IntoIterator9into_iterB2N_: argument 1"}
!9597 = distinct !{!9597, !9595, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtB8_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_00EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2N_6errors15DeltaTableErrorEENtB2_12IntoIterator9into_iterB2N_: argument 0"}
!9598 = !{i64 -5420347750257601091}
!9599 = !{!9597, !9596}
!9600 = distinct !{!9600, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtBO_10filter_map9FilterMapINtNtBO_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB2l_5array10byte_array16GenericByteArrayINtNtB2l_5types17GenericStringTypelEEEB2g_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4C_16parse_partitionss_0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB4K_6errors15DeltaTableErrorEENtB2_12IntoIterator9into_iterB4K_"}
!9601 = distinct !{!9601, !9600, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtBO_10filter_map9FilterMapINtNtBO_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB2l_5array10byte_array16GenericByteArrayINtNtB2l_5types17GenericStringTypelEEEB2g_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4C_16parse_partitionss_0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB4K_6errors15DeltaTableErrorEENtB2_12IntoIterator9into_iterB4K_: argument 1"}
!9602 = distinct !{!9602, !9600, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtBO_10filter_map9FilterMapINtNtBO_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB2l_5array10byte_array16GenericByteArrayINtNtB2l_5types17GenericStringTypelEEEB2g_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4C_16parse_partitionss_0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB4K_6errors15DeltaTableErrorEENtB2_12IntoIterator9into_iterB4K_: argument 0"}
!9603 = distinct !{!9603, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_10filter_map9FilterMapINtNtBJ_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB2n_5array10byte_array16GenericByteArrayINtNtB2n_5types17GenericStringTypelEEEB2i_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4E_16parse_partitionss_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB4M_6errors15DeltaTableErrorEEEB4M_"}
!9604 = distinct !{!9604, !9603, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtBJ_10filter_map9FilterMapINtNtBJ_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB2n_5array10byte_array16GenericByteArrayINtNtB2n_5types17GenericStringTypelEEEB2i_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4E_16parse_partitionss_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB4M_6errors15DeltaTableErrorEEEB4M_: argument 0"}
!9605 = distinct !{!9605, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_10filter_map9FilterMapINtNtBL_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB23_5array10byte_array16GenericByteArrayINtNtB23_5types17GenericStringTypelEEEB1Y_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4k_16parse_partitionss_0EEB4s_"}
!9606 = distinct !{!9606, !9605, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_10filter_map9FilterMapINtNtBL_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB23_5array10byte_array16GenericByteArrayINtNtB23_5types17GenericStringTypelEEEB1Y_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4k_16parse_partitionss_0EEB4s_: argument 0"}
!9607 = distinct !{!9607, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBL_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1N_5array10byte_array16GenericByteArrayINtNtB1N_5types17GenericStringTypelEEEB1I_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0EEB4c_"}
!9608 = distinct !{!9608, !9607, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBL_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1N_5array10byte_array16GenericByteArrayINtNtB1N_5types17GenericStringTypelEEEB1I_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0EEB4c_: argument 0"}
!9609 = distinct !{!9609, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1j_5array10byte_array16GenericByteArrayINtNtB1j_5types17GenericStringTypelEEEB1e_EECs14kWLkQVSKO_14deltalake_core"}
!9610 = distinct !{!9610, !9609, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1j_5array10byte_array16GenericByteArrayINtNtB1j_5types17GenericStringTypelEEEB1e_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9611 = distinct !{!9611, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core"}
!9612 = distinct !{!9612, !9611, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9613 = distinct !{!9613, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core"}
!9614 = distinct !{!9614, !9613, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9615 = distinct !{!9615, i1 true, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB6_3map3MapINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB20_5array10byte_array16GenericByteArrayINtNtB20_5types17GenericStringTypelEEEB1V_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4h_16parse_partitionss_0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB4p_6errors15DeltaTableErrorEENtNtNtB8_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8n_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB7A_7collect6ExtendTB96_B9I_EE6extendB3_E0EB4p_"}
!9616 = distinct !{!9616, !9615, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB6_3map3MapINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB20_5array10byte_array16GenericByteArrayINtNtB20_5types17GenericStringTypelEEEB1V_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4h_16parse_partitionss_0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB4p_6errors15DeltaTableErrorEENtNtNtB8_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB8n_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB7A_7collect6ExtendTB96_B9I_EE6extendB3_E0EB4p_: argument 0"}
!9617 = distinct !{!9617, i1 true, !"_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_10filter_map9FilterMapINtNtB3_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB23_5array10byte_array16GenericByteArrayINtNtB23_5types17GenericStringTypelEEEB1Y_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4k_16parse_partitionss_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4s_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB7z_8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBaq_7HashMapB8D_B9f_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB7D_7collect6ExtendB8C_E6extendBE_E0E0EB4s_"}
!9618 = distinct !{!9618, !9617, !"_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_10filter_map9FilterMapINtNtB3_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB23_5array10byte_array16GenericByteArrayINtNtB23_5types17GenericStringTypelEEEB1Y_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB4k_16parse_partitionss_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4s_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB7z_8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBaq_7HashMapB8D_B9f_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB7D_7collect6ExtendB8C_E6extendBE_E0E0EB4s_: argument 0"}
!9619 = distinct !{!9619, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core"}
!9620 = distinct !{!9620, !9619, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9621 = distinct !{!9621, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core"}
!9622 = distinct !{!9622, !9621, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9623 = distinct !{!9623, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core"}
!9624 = distinct !{!9624, !9623, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9625 = distinct !{!9625, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core"}
!9626 = distinct !{!9626, !9625, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9627 = distinct !{!9627, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!9628 = distinct !{!9628, !9627, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9629 = distinct !{!9629, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core"}
!9630 = distinct !{!9630, !9629, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9631 = distinct !{!9631, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core"}
!9632 = distinct !{!9632, !9631, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9633 = distinct !{!9633, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core"}
!9634 = distinct !{!9634, !9633, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9635 = distinct !{!9635, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core"}
!9636 = distinct !{!9636, !9635, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9637 = distinct !{!9637, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core"}
!9638 = distinct !{!9638, !9637, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9639 = distinct !{!9639, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core"}
!9640 = distinct !{!9640, !9639, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9641 = distinct !{!9641, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!9642 = distinct !{!9642, !9641, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9643 = distinct !{!9643, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core"}
!9644 = distinct !{!9644, !9643, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array10byte_array16GenericByteArrayINtNtBL_5types17GenericStringTypelEEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9645 = distinct !{!9645, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core"}
!9646 = distinct !{!9646, !9645, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9647 = distinct !{!9647, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core"}
!9648 = distinct !{!9648, !9647, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9649 = distinct !{!9649, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core"}
!9650 = distinct !{!9650, !9649, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9651 = distinct !{!9651, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core"}
!9652 = distinct !{!9652, !9651, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9653 = distinct !{!9653, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core"}
!9654 = distinct !{!9654, !9653, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9655 = distinct !{!9655, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!9656 = distinct !{!9656, !9655, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9657 = !{i64 -4274557118339685144}
!9658 = !{!9602, !9601}
!9659 = !{!9604}
!9660 = !{!9606}
!9661 = !{!9608}
!9662 = !{!9610}
!9663 = !{!9612}
!9664 = !{!9614}
!9665 = !{!9614, !9612, !9610, !9608, !9606, !9604, !9618, !9616}
!9666 = !{!9628, !9626, !9624, !9622, !9620, !9614, !9612, !9610, !9608, !9606, !9604}
!9667 = !{!9630}
!9668 = !{!9632}
!9669 = !{!9632, !9630, !9610, !9608, !9606, !9604, !9618, !9616}
!9670 = !{!9642, !9640, !9638, !9636, !9634, !9632, !9630}
!9671 = !{!9644}
!9672 = !{!9646}
!9673 = !{!9646, !9644, !9610, !9608, !9606, !9604, !9618, !9616}
!9674 = !{!9656, !9654, !9652, !9650, !9648, !9646, !9644}
!9675 = distinct !{!9675, i1 true, !"_RNvXs8_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterB1v_"}
!9676 = distinct !{!9676, !9675, !"_RNvXs8_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterB1v_: argument 1"}
!9677 = distinct !{!9677, !9675, !"_RNvXs8_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB7_4iter6traits7collect12IntoIterator9into_iterB1v_: argument 0"}
!9678 = distinct !{!9678, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3m_7HashMapBI_B1k_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendBH_E6extendINtB6_6OptionBH_EE0EB1s_"}
!9679 = distinct !{!9679, !9678, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3m_7HashMapBI_B1k_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendBH_E6extendINtB6_6OptionBH_EE0EB1s_: argument 0"}
!9680 = distinct !{!9680, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2o_8for_each4callBH_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3L_7HashMapBI_B1k_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendBH_E6extendINtB6_6OptionBH_EE0E0EB1s_"}
!9681 = distinct !{!9681, !9680, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2o_8for_each4callBH_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3L_7HashMapBI_B1k_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendBH_E6extendINtB6_6OptionBH_EE0E0EB1s_: argument 0"}
!9682 = distinct !{!9682, i1 true, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextB1x_"}
!9683 = distinct !{!9683, !9682, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextB1x_: argument 1"}
!9684 = distinct !{!9684, i1 true, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextB1x_"}
!9685 = distinct !{!9685, !9684, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextB1x_: argument 0:pre.rot"}
!9686 = distinct !{!9686, !9678, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3m_7HashMapBI_B1k_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendBH_E6extendINtB6_6OptionBH_EE0EB1s_: argument 1"}
!9687 = distinct !{!9687, !9680, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2o_8for_each4callBH_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3L_7HashMapBI_B1k_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendBH_E6extendINtB6_6OptionBH_EE0E0EB1s_: argument 1"}
!9688 = distinct !{!9688, i1 true, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB35_7HashMapB1g_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtBe_6option6OptionB1f_EE0E0B20_"}
!9689 = distinct !{!9689, !9688, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB35_7HashMapB1g_B1S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtBe_6option6OptionB1f_EE0E0B20_: argument 0"}
!9690 = distinct !{!9690, i1 true, !"_RNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB9_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBR_B1t_EE6extendINtNtB3s_6option6OptionB4c_EE0B1B_"}
!9691 = distinct !{!9691, !9690, !"_RNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB9_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBR_B1t_EE6extendINtNtB3s_6option6OptionB4c_EE0B1B_: argument 0"}
!9692 = distinct !{!9692, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1a_"}
!9693 = distinct !{!9693, !9692, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1a_: argument 0"}
!9694 = !{i64 4824182686534227779}
!9695 = !{!9677, !9676}
!9696 = !{!9679}
!9697 = !{!9681}
!9698 = !{!9685, !9683, !9681, !9679}
!9699 = !{!9683, !9681, !9679}
!9700 = !{!9689, !9681, !9687, !9679, !9686}
!9701 = !{!9681, !9687, !9679, !9686}
!9702 = !{!9691, !9689, !9681, !9687, !9679, !9686}
!9703 = !{!9681, !9679}
!9704 = !{!9693}
!9705 = distinct !{!9705, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtB28_16delta_datafusion10find_files17scan_memory_table0s_0ENtB2_12IntoIterator9into_iterB28_"}
!9706 = distinct !{!9706, !9705, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtB28_16delta_datafusion10find_files17scan_memory_table0s_0ENtB2_12IntoIterator9into_iterB28_: argument 1"}
!9707 = distinct !{!9707, !9705, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtB28_16delta_datafusion10find_files17scan_memory_table0s_0ENtB2_12IntoIterator9into_iterB28_: argument 0"}
!9708 = !{i64 -537521257832624332}
!9709 = !{!9707, !9706}
!9710 = distinct !{!9710, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtCs68df2UN7hGg_6either6EitherIB1h_INtNtBQ_10filter_map9FilterMapINtNtBQ_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2F_3vec9into_iter8IntoIterbEENCNvNtB3N_16delta_datafusion24files_matching_predicate0EIBM_B2A_NCB5F_s_0EEIBM_INtNtBQ_7flatten7FlatMapINtNtNtB8_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBM_INtNtNtB8_3ops5range5RangejENCNCNvMs1_NtB3J_8log_dataNtB9l_14LogDataHandler4iter00ENCB9f_0ENCNvMNtNtB3L_11transaction16conflict_checkerNtBah_15TransactionInfo10read_filess_0EENCNvMs0_Bah_NtBah_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBdc_7HashSetNtNtB2F_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendBdV_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3N_"}
!9711 = distinct !{!9711, !9710, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtCs68df2UN7hGg_6either6EitherIB1h_INtNtBQ_10filter_map9FilterMapINtNtBQ_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2F_3vec9into_iter8IntoIterbEENCNvNtB3N_16delta_datafusion24files_matching_predicate0EIBM_B2A_NCB5F_s_0EEIBM_INtNtBQ_7flatten7FlatMapINtNtNtB8_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBM_INtNtNtB8_3ops5range5RangejENCNCNvMs1_NtB3J_8log_dataNtB9l_14LogDataHandler4iter00ENCB9f_0ENCNvMNtNtB3L_11transaction16conflict_checkerNtBah_15TransactionInfo10read_filess_0EENCNvMs0_Bah_NtBah_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBdc_7HashSetNtNtB2F_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendBdV_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3N_: argument 1"}
!9712 = distinct !{!9712, !9710, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtCs68df2UN7hGg_6either6EitherIB1h_INtNtBQ_10filter_map9FilterMapINtNtBQ_3zip3ZipINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EINtNtNtB2F_3vec9into_iter8IntoIterbEENCNvNtB3N_16delta_datafusion24files_matching_predicate0EIBM_B2A_NCB5F_s_0EEIBM_INtNtBQ_7flatten7FlatMapINtNtNtB8_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBM_INtNtNtB8_3ops5range5RangejENCNCNvMs1_NtB3J_8log_dataNtB9l_14LogDataHandler4iter00ENCB9f_0ENCNvMNtNtB3L_11transaction16conflict_checkerNtBah_15TransactionInfo10read_filess_0EENCNvMs0_Bah_NtBah_15ConflictChecker54check_for_deleted_files_against_current_txn_read_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtBdc_7HashSetNtNtB2F_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendBdV_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3N_: argument 0"}
!9713 = !{i64 8792910821288586242}
!9714 = !{!9712, !9711}
!9715 = !{i64 5187810004982460740}
!9716 = distinct !{!9716, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5array4iter8IntoIterReKj1_ENCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB20_21LogicalPlanBuilderExt12drop_columnsB1K_AB1K_B1N_E0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5l_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB64_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB24_"}
!9717 = distinct !{!9717, !9716, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5array4iter8IntoIterReKj1_ENCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB20_21LogicalPlanBuilderExt12drop_columnsB1K_AB1K_B1N_E0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5l_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB64_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB24_: argument 1"}
!9718 = distinct !{!9718, !9716, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5array4iter8IntoIterReKj1_ENCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB20_21LogicalPlanBuilderExt12drop_columnsB1K_AB1K_B1N_E0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5l_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB64_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB24_: argument 0"}
!9719 = !{i64 1296378766823122425}
!9720 = !{!9718, !9717}
!9721 = !{i64 7796952315320630721}
!9722 = !{i64 -1538171876363944937}
!9723 = !{i64 -2720158928790238180}
!9724 = !{i64 56095862898219068}
!9725 = distinct !{!9725, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay25extract_predicate_columns00ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5B_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtB1p_4hash6random11RandomStateEINtB2_6ExtendB6k_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3F_"}
!9726 = distinct !{!9726, !9725, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay25extract_predicate_columns00ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5B_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtB1p_4hash6random11RandomStateEINtB2_6ExtendB6k_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3F_: argument 1"}
!9727 = distinct !{!9727, !9725, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay25extract_predicate_columns00ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5B_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtB1p_4hash6random11RandomStateEINtB2_6ExtendB6k_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3F_: argument 0"}
!9728 = !{i64 -5537157976435995108}
!9729 = !{!9727, !9726}
!9730 = !{i64 863321603824526863}
!9731 = !{i64 -6464284233588817758}
!9732 = distinct !{!9732, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1j_6string6StringENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2w_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9733 = distinct !{!9733, !9732, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1j_6string6StringENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2w_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9734 = distinct !{!9734, !9732, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1j_6string6StringENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2w_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9735 = !{i64 1412440177048589170}
!9736 = !{!9734, !9733}
!9737 = distinct !{!9737, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1j_6string6StringENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2w_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendINtB1h_3VecB20_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9738 = distinct !{!9738, !9737, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1j_6string6StringENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2w_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendINtB1h_3VecB20_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9739 = distinct !{!9739, !9737, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1j_6string6StringENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2w_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendINtB1h_3VecB20_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9740 = !{i64 -646072915933622890}
!9741 = !{!9739, !9738}
!9742 = distinct !{!9742, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2T_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendINtB1h_3VecB20_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9743 = distinct !{!9743, !9742, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2T_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendINtB1h_3VecB20_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9744 = distinct !{!9744, !9742, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2T_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendINtB1h_3VecB20_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9745 = !{i64 -5629291439849878432}
!9746 = !{!9744, !9743}
!9747 = !{i64 -1945692806492321685}
!9748 = !{i64 -4634820557003642205}
!9749 = distinct !{!9749, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB2Y_13ProtocolInner22append_writer_featuresB1K_AB1K_B2L_E0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB52_7HashSetB1K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1K_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB34_"}
!9750 = distinct !{!9750, !9749, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB2Y_13ProtocolInner22append_writer_featuresB1K_AB1K_B2L_E0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB52_7HashSetB1K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1K_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB34_: argument 1"}
!9751 = distinct !{!9751, !9749, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB2Y_13ProtocolInner22append_writer_featuresB1K_AB1K_B2L_E0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB52_7HashSetB1K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1K_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB34_: argument 0"}
!9752 = !{i64 6081881046717363856}
!9753 = !{!9751, !9750}
!9754 = distinct !{!9754, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENvYB1K_INtNtB8_7convert4IntoB1K_E4intoENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3B_7HashSetB1K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1K_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9755 = distinct !{!9755, !9754, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENvYB1K_INtNtB8_7convert4IntoB1K_E4intoENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3B_7HashSetB1K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1K_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9756 = distinct !{!9756, !9754, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENvYB1K_INtNtB8_7convert4IntoB1K_E4intoENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3B_7HashSetB1K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1K_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9757 = !{i64 -452919360913039431}
!9758 = !{!9756, !9755}
!9759 = distinct !{!9759, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_10filter_map9FilterMapINtNtBQ_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2U_ENCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB3J_13ProtocolInner35move_table_properties_into_features0ENCB3D_s_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5W_7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtNtNtB2b_4hash6random11RandomStateEINtB2_6ExtendB6F_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3P_"}
!9760 = distinct !{!9760, !9759, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_10filter_map9FilterMapINtNtBQ_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2U_ENCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB3J_13ProtocolInner35move_table_properties_into_features0ENCB3D_s_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5W_7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtNtNtB2b_4hash6random11RandomStateEINtB2_6ExtendB6F_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3P_: argument 1"}
!9761 = distinct !{!9761, !9759, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_10filter_map9FilterMapINtNtBQ_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2U_ENCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB3J_13ProtocolInner35move_table_properties_into_features0ENCB3D_s_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5W_7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtNtNtB2b_4hash6random11RandomStateEINtB2_6ExtendB6F_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3P_: argument 0"}
!9762 = !{i64 385738691164389739}
!9763 = !{!9761, !9760}
!9764 = distinct !{!9764, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_10filter_map9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2y_ENCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB3n_13ProtocolInner35move_table_properties_into_featuress1_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5t_7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtNtNtB1P_4hash6random11RandomStateEINtB2_6ExtendB6c_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3t_"}
!9765 = distinct !{!9765, !9764, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_10filter_map9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2y_ENCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB3n_13ProtocolInner35move_table_properties_into_featuress1_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5t_7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtNtNtB1P_4hash6random11RandomStateEINtB2_6ExtendB6c_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3t_: argument 1"}
!9766 = distinct !{!9766, !9764, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_10filter_map9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2y_ENCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB3n_13ProtocolInner35move_table_properties_into_featuress1_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5t_7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtNtNtB1P_4hash6random11RandomStateEINtB2_6ExtendB6c_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB3t_: argument 0"}
!9767 = !{i64 8266395152746933867}
!9768 = !{!9766, !9765}
!9769 = !{i64 -8098507058638149783}
!9770 = distinct !{!9770, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9771 = distinct !{!9771, !9770, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9772 = distinct !{!9772, !9770, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj1_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9773 = !{i64 3826604525312437066}
!9774 = !{!9772, !9771}
!9775 = distinct !{!9775, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj2_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9776 = distinct !{!9776, !9775, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj2_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9777 = distinct !{!9777, !9775, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj2_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9778 = !{i64 7882209037816717451}
!9779 = !{!9777, !9776}
!9780 = distinct !{!9780, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj3_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9781 = distinct !{!9781, !9780, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj3_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9782 = distinct !{!9782, !9780, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj3_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9783 = !{i64 -5039880413859055477}
!9784 = !{!9782, !9781}
!9785 = distinct !{!9785, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj5_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9786 = distinct !{!9786, !9785, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj5_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9787 = distinct !{!9787, !9785, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj5_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9788 = !{i64 -1959087974642905646}
!9789 = !{!9787, !9786}
!9790 = distinct !{!9790, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj6_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9791 = distinct !{!9791, !9790, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj6_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9792 = distinct !{!9792, !9790, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj6_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9793 = !{i64 -6438143467895199823}
!9794 = !{!9792, !9791}
!9795 = distinct !{!9795, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj7_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9796 = distinct !{!9796, !9795, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj7_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9797 = distinct !{!9797, !9795, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5array4iter8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureKj7_ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1G_E6extendAB1G_B2H_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9798 = !{i64 3169677718365130186}
!9799 = !{!9797, !9796}
!9800 = distinct !{!9800, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3i_7HashSetB28_NtNtNtB1l_4hash6random11RandomStateEINtB2_6ExtendB28_E6extendINtB1f_7HashSetB28_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9801 = distinct !{!9801, !9800, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3i_7HashSetB28_NtNtNtB1l_4hash6random11RandomStateEINtB2_6ExtendB28_E6extendINtB1f_7HashSetB28_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9802 = distinct !{!9802, !9800, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3i_7HashSetB28_NtNtNtB1l_4hash6random11RandomStateEINtB2_6ExtendB28_E6extendINtB1f_7HashSetB28_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9803 = !{i64 -3840377106416501140}
!9804 = !{!9802, !9801}
!9805 = distinct !{!9805, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtB8_6option8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2q_7HashSetB1A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1A_E6extendINtB1f_6OptionB1A_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9806 = distinct !{!9806, !9805, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtB8_6option8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2q_7HashSetB1A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1A_E6extendINtB1f_6OptionB1A_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9807 = distinct !{!9807, !9805, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtB8_6option8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2q_7HashSetB1A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB1A_E6extendINtB1f_6OptionB1A_EE0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9808 = !{i64 8361175082907389162}
!9809 = !{!9807, !9806}
!9810 = !{i64 -5541714715759108907}
!9811 = distinct !{!9811, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3l_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9812 = distinct !{!9812, !9811, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3l_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9813 = distinct !{!9813, !9811, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3l_7HashSetB20_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtB2_6ExtendB20_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9814 = !{i64 1149037420971344477}
!9815 = !{!9813, !9812}
!9816 = !{i64 -688667517145629783}
!9817 = distinct !{!9817, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set12IntersectionNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtB1l_4hash6random11RandomStateENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3y_7HashSetRB2d_B2P_EINtB2_6ExtendB4h_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core"}
!9818 = distinct !{!9818, !9817, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set12IntersectionNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtB1l_4hash6random11RandomStateENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3y_7HashSetRB2d_B2P_EINtB2_6ExtendB4h_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9819 = distinct !{!9819, !9817, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set12IntersectionNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtB1l_4hash6random11RandomStateENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3y_7HashSetRB2d_B2P_EINtB2_6ExtendB4h_E6extendB1c_E0ENtB2_12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9820 = !{i64 -7547817605009117457}
!9821 = !{!9819, !9818}
!9822 = distinct !{!9822, i1 true, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!9823 = distinct !{!9823, !9822, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!9824 = distinct !{!9824, i1 true, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!9825 = distinct !{!9825, !9824, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9826 = distinct !{!9826, i1 true, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!9827 = distinct !{!9827, !9826, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!9828 = distinct !{!9828, i1 true, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!9829 = distinct !{!9829, !9828, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9830 = distinct !{!9830, i1 true, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32"}
!9831 = distinct !{!9831, !9830, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32: argument 0"}
!9832 = distinct !{!9832, i1 true, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_nummECs14kWLkQVSKO_14deltalake_core"}
!9833 = distinct !{!9833, !9832, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_nummECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9834 = distinct !{!9834, i1 true, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!9835 = distinct !{!9835, !9834, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!9836 = distinct !{!9836, i1 true, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!9837 = distinct !{!9837, !9836, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9838 = !{i64 1220743447776794813}
!9839 = !{!9823}
!9840 = !{!9825}
!9841 = !{!9825, !9823}
!9842 = !{!9827}
!9843 = !{!9829}
!9844 = !{!9829, !9827}
!9845 = !{!9831}
!9846 = !{!9833}
!9847 = !{!9833, !9831}
!9848 = !{!9835}
!9849 = !{!9837}
!9850 = !{!9837, !9835}
!9851 = distinct !{!9851, i1 true, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!9852 = distinct !{!9852, !9851, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9853 = distinct !{!9853, !9851, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9854 = distinct !{!9854, i1 true, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write"}
!9855 = distinct !{!9855, !9854, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 0"}
!9856 = distinct !{!9856, !9854, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 1"}
!9857 = distinct !{!9857, i1 true, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short"}
!9858 = distinct !{!9858, !9857, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 0"}
!9859 = distinct !{!9859, !9857, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 1"}
!9860 = distinct !{!9860, i1 true, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!9861 = distinct !{!9861, !9860, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!9862 = distinct !{!9862, i1 true, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!9863 = distinct !{!9863, !9862, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9864 = distinct !{!9864, i1 true, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!9865 = distinct !{!9865, !9864, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!9866 = distinct !{!9866, i1 true, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!9867 = distinct !{!9867, !9866, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!9868 = !{i64 -4800085218450131082}
!9869 = !{!9852}
!9870 = !{!9853}
!9871 = !{!9855}
!9872 = !{!9856}
!9873 = !{!9855, !9852}
!9874 = !{!9858}
!9875 = !{!9859}
!9876 = !{!9855, !9856, !9852, !9853}
!9877 = !{!9858, !9856, !9853}
!9878 = !{!9861}
!9879 = !{!9863}
!9880 = !{!9863, !9861, !9852}
!9881 = !{!9865}
!9882 = !{!9867}
!9883 = !{!9867, !9865}
!9884 = distinct !{!9884, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!9885 = distinct !{!9885, !9884, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!9886 = distinct !{!9886, !9884, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!9887 = distinct !{!9887, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!9888 = distinct !{!9888, !9887, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!9889 = distinct !{!9889, !9887, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!9890 = distinct !{!9890, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs14kWLkQVSKO_14deltalake_core"}
!9891 = distinct !{!9891, !9890, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!9892 = !{i64 1295207371071519919}
!9893 = !{!9889, !9888, !9886, !9885}
!9894 = !{!9888, !9885}
!9895 = !{!9891}
!9896 = !{i64 -9188877089175422549}
!9897 = !{i64 3642597230234944299}
!9898 = !{i64 1414044547352105141}
!9899 = !{i64 -1280379036949211787}
!9900 = !{i64 7839548854970360076}
!9901 = !{i64 6538398150354104305}
!9902 = !{i64 -3461931108418941033}
!9903 = !{i64 6644537573175735139}
!9904 = !{i64 -7597953507162981137}
end_hunk_1
