Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.06?download=true
inline.NumInlined: 2402
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterjENCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projection0ENCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB2V_6SchemaNtNtNtB1F_9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB5g_EEINtNtNtBa_6traits7collect12FromIteratorTB5g_B3L_EE9from_iterBX_E0ENtNtB6g_8iterator8Iterator4folduNCINvNvB7f_8for_each4callB6O_NCINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB8n_8IndexMapB5g_B3L_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB6e_6ExtendB6O_E6extendBN_E0E0EB1F_:bb.a
  %i.aj = icmp eq i8 %i.ai, -40, !dbg !1828
  br i1 %i.aj, label %bb.i, label %bb.j, !dbg !1828

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #27
          to label %.noexc.i.i.i.i unwind label %bb.q, !dbg !1829, !noalias !1760, !inline_history !1830

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !dbg !1831, !noalias !1827
  br label %.noexc.i.i.i.i, !dbg !1834

.noexc.i.i.i.i:                                   ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !1835, !noalias !1813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1836, !noalias !1813
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac)
          to label %bb.m unwind label %bb.k, !dbg !1836, !noalias !1827, !inline_history !1830

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !1837
  %i.am = load i8, ptr %i.al, align 1, !dbg !1837, !range !1311, !alias.scope !1844, !noalias !1813, !noundef !12
  %i.an = icmp eq i8 %i.am, -40, !dbg !1853
  br i1 %i.an, label %bb.l, label %.body.i.i.i.i, !dbg !1853, !prof !1324

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i.i unwind label %bb.p, !dbg !1854, !noalias !1827, !inline_history !1830

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 96, !dbg !1855
  %i.ap = load i8, ptr %i.ao, align 8, !dbg !1855, !range !1856, !alias.scope !1802, !noalias !1827, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 88, !dbg !1857
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !1857, !alias.scope !1802, !noalias !1827, !noundef !12 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null, !dbg !1857
  br i1 %.not.i.i.i.i.i, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projection0Bb_.exit.i.i.i, label %bb.n, !dbg !1861

bb.n:                                             ; preds = %bb.m
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8, !dbg !1862, !noalias !1827
  %i.at = icmp slt i64 %i.as, 0, !dbg !1871
  br i1 %i.at, label %bb.o, label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projection0Bb_.exit.i.i.i, !dbg !1871

bb.o:                                             ; preds = %bb.n
  call void @llvm.trap(), !dbg !1873
  unreachable, !dbg !1873

bb.p:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !1874, !noalias !1827, !inline_history !1830
  unreachable, !dbg !1874

bb.q:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !1875

.body.i.i.i.i:                                    ; preds = %bb.q, %bb.l, %bb.k
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.ak, %bb.l ], [ %i.ak, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 23, !dbg !1876
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !1876, !range !1311, !alias.scope !1883, !noalias !1775, !noundef !12
  %i.ay = icmp eq i8 %i.ax, -40, !dbg !1892
  br i1 %i.ay, label %bb.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i, !dbg !1892, !prof !1324

bb.r:                                             ; preds = %.body.i.i.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i unwind label %bb.s, !dbg !1893, !noalias !1760

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !1894, !noalias !1760
  unreachable, !dbg !1894

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i: ; preds = %bb.r, %.body.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i, !dbg !1894

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projection0Bb_.exit.i.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !1874, !noalias !1895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !1874, !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1896, !noalias !1813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1896, !noalias !1813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1897, !noalias !1775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !1898, !noalias !1720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i.i, i64 56, i1 false), !dbg !1898, !noalias !1720
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i), !dbg !1875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1875, !noalias !1775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1899, !noalias !1720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1900, !noalias !1909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.24..sroa_idx.i.i.i, i64 56, i1 false), !dbg !1914, !noalias !1720
  store ptr %i.ar, ptr %.sroa.54.24..sroa_idx.i.i.i, align 8, !dbg !1914, !noalias !1720
  store i8 %i.ap, ptr %.sroa.65.24..sroa_idx.i.i.i, align 8, !dbg !1914, !noalias !1720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1915, !noalias !1917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1920, !noalias !1917
  call void @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullB1I_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %.sroa.0.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c), !dbg !1923, !noalias !1924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.w, i64 72, i1 false), !dbg !1920, !noalias !1917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1925, !noalias !1917
  %i.ba = load i8, ptr %i.x, align 8, !dbg !1926, !range !1929, !alias.scope !1930, !noalias !1917, !noundef !12
  %i.bb = icmp eq i8 %i.ba, 2, !dbg !1926
  br i1 %i.bb, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRjTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEuNCNvNtNtNtNtB1S_2io3ipc4read6common18prepare_projection0NCIB2_BW_BW_uNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB3Y_6SchemaB1M_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapBX_BX_EEINtNtNtB8_6traits7collect12FromIteratorBW_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterjEB2I_EE0NCINvNvNtNtB64_8iterator8Iterator8for_each4callBW_NCINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB8w_8IndexMapBX_B1M_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB62_6ExtendBW_E6extendIB6R_B6Q_B3P_EE0E0E0E0B1S_.exit.i.i, label %bb.t, !dbg !1926

bb.t:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projection0Bb_.exit.i.i.i
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEBM_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !dbg !1926, !noalias !1933
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRjTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEuNCNvNtNtNtNtB1S_2io3ipc4read6common18prepare_projection0NCIB2_BW_BW_uNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB3Y_6SchemaB1M_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapBX_BX_EEINtNtNtB8_6traits7collect12FromIteratorBW_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterjEB2I_EE0NCINvNvNtNtB64_8iterator8Iterator8for_each4callBW_NCINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB8w_8IndexMapBX_B1M_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB62_6ExtendBW_E6extendIB6R_B6Q_B3P_EE0E0E0E0B1S_.exit.i.i, !dbg !1926

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRjTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEuNCNvNtNtNtNtB1S_2io3ipc4read6common18prepare_projection0NCIB2_BW_BW_uNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB3Y_6SchemaB1M_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapBX_BX_EEINtNtNtB8_6traits7collect12FromIteratorBW_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterjEB2I_EE0NCINvNvNtNtB64_8iterator8Iterator8for_each4callBW_NCINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB8w_8IndexMapBX_B1M_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB62_6ExtendBW_E6extendIB6R_B6Q_B3P_EE0E0E0E0B1S_.exit.i.i: ; preds = %bb.t, %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projection0Bb_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1934, !noalias !1917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1935, !noalias !1909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i), !dbg !1936, !noalias !1720
  %i.bc = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !1937 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %i.r, !dbg !1940
  br i1 %i.bd, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projection0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtB1B_9datatypes5field5FieldEB3D_uNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5e_6SchemaB4t_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapB3E_B3E_EEINtNtB2M_7collect12FromIteratorB3D_E9from_iterBN_E0NCINvNvB2I_8for_each4callB3D_NCINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB8I_8IndexMapB3E_B4t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB7k_6ExtendB3D_E6extendIBO_BN_B55_EE0E0E0EB1B_.exit, label %bb.c, !dbg !1940

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common18prepare_projection0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtB1B_9datatypes5field5FieldEB3D_uNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5e_6SchemaB4t_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapB3E_B3E_EEINtNtB2M_7collect12FromIteratorB3D_E9from_iterBN_E0NCINvNvB2I_8for_each4callB3D_NCINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB8I_8IndexMapB3E_B4t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB7k_6ExtendB3D_E6extendIBO_BN_B55_EE0E0E0EB1B_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRjTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEuNCNvNtNtNtNtB1S_2io3ipc4read6common18prepare_projection0NCIB2_BW_BW_uNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB3Y_6SchemaB1M_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapBX_BX_EEINtNtNtB8_6traits7collect12FromIteratorBW_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterjEB2I_EE0NCINvNvNtNtB64_8iterator8Iterator8for_each4callBW_NCINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB8w_8IndexMapBX_B1M_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB62_6ExtendBW_E6extendIB6R_B6Q_B3P_EE0E0E0E0B1S_.exit.i.i, %bb.a
  ret void, !dbg !1941
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter7WindowsxENCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1E_7OffsetsxE21try_extend_from_slices_0ENCB1y_s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4l_3VecxE14extend_trustedBN_E0E0EB1G_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1942 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1943
  %i.b = load ptr, ptr %i.a, align 8, !dbg !1943, !nonnull !12, !align !686, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !1944 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1944
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1944 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1944
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947), !dbg !1950
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !dbg !1951, !alias.scope !1947, !noalias !1954 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1951
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !1951, !alias.scope !1947, !noalias !1954 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1951
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !1951, !alias.scope !1947, !noalias !1954 ; 3 uses
  %i.c = icmp ugt i64 %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i, !dbg !1956
  br i1 %i.c, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7WindowsxENCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1A_7OffsetsxE21try_extend_from_slices_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldxxuNCB1u_s0_0NCINvNvB2T_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4A_3VecxE14extend_trustedIBO_BN_B3R_EE0E0E0EB1C_.exit, label %.lr.ph.i.i, !dbg !1956

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %.sroa.5.0.copyload.i, 1
  br i1 %i.d, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.preheader.i.i, label %.lr.ph.split.i.i

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.preheader.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load i64, ptr %.sroa.0.0.copyload.i, align 8, !dbg !1965, !alias.scope !1971, !noalias !1976
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i, !dbg !1956

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.preheader.i.i
  %i.e = phi i64 [ %i.k, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i ], [ %.pre.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.preheader.i.i ], !dbg !1965
  %i.f = phi i64 [ %i.p, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i ], [ %.sroa.4.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.preheader.i.i ] ; 2 uses
  %i.g = phi i64 [ %i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i ], [ %.sroa.4.0.copyload.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.preheader.i.i ]
  %i.h = phi ptr [ %i.j, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i ], [ %.sroa.0.0.copyload.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.preheader.i.i ]
  %i.i = add i64 %i.g, -1, !dbg !1981             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1990 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1995), !dbg !1996
  %i.k = load i64, ptr %i.j, align 8, !dbg !1997, !alias.scope !1971, !noalias !1976, !noundef !12 ; 2 uses
  %i.l = sub i64 %i.k, %i.e, !dbg !1998
  %i.m = load i64, ptr %i.b, align 8, !dbg !2002, !alias.scope !2010, !noalias !2013, !noundef !12
  %i.n = add i64 %i.m, %i.l, !dbg !2002           ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !dbg !2002, !alias.scope !2010, !noalias !2013
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.f, !dbg !2016
  store i64 %i.n, ptr %i.o, align 8, !dbg !2023, !noalias !2026
  %i.p = add i64 %i.f, 1, !dbg !2031              ; 2 uses
  %i.q = icmp ugt i64 %.sroa.5.0.copyload.i, %i.i, !dbg !1956
  br i1 %i.q, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7WindowsxENCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1A_7OffsetsxE21try_extend_from_slices_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldxxuNCB1u_s0_0NCINvNvB2T_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4A_3VecxE14extend_trustedIBO_BN_B3R_EE0E0E0EB1C_.exit, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i, !dbg !1956

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1995), !dbg !1996
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
          to label %.noexc.i.i unwind label %bb.b, !dbg !1997, !noalias !2034

.noexc.i.i:                                       ; preds = %.lr.ph.split.i.i
  unreachable, !dbg !1997

bb.b:                                             ; preds = %.lr.ph.split.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.4.0.copyload, ptr %.sroa.0.0.copyload, align 8, !dbg !2035, !noalias !2034
  resume { ptr, i32 } %i.r, !dbg !2046

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7WindowsxENCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1A_7OffsetsxE21try_extend_from_slices_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldxxuNCB1u_s0_0NCINvNvB2T_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4A_3VecxE14extend_trustedIBO_BN_B3R_EE0E0E0EB1C_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i, %bb.a
  %.val7.i.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.p, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRSxxuNCNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB17_7OffsetsxE21try_extend_from_slices_0NCIB2_xxuNCB11_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3L_3VecxE14extend_trustedINtB4_3MapIB4F_INtNtNtBa_5slice4iter7WindowsxEBZ_EB2y_EE0E0E0E0B19_.exit.us.i.i ], !dbg !2047
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i.i, ptr %.sroa.0.0.copyload, align 8, !dbg !2048, !noalias !2034
  ret void, !dbg !2055
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtB8_12GenericShuntIBO_INtNtNtBc_5slice4iter4IterNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read6schema12infer_schema0EINtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5n_6SchemaNtNtNtB2G_9datatypes5field5FieldINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB7I_EEINtNtNtBa_6traits7collect12FromIteratorTB7I_B6d_EE9from_iterBX_E0ENtNtB8I_8iterator8Iterator4folduNCINvNvB9H_8for_each4callB9g_NCINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtBaP_8IndexMapB7I_B6d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB8G_6ExtendB9g_E6extendBN_E0E0EB2G_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2056 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !2057
  call void @_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read6schema12infer_schema0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMs0_NtNtB7_3ops9try_traitINtB5Y_17NeverShortCircuituE10wrap_mut_2uTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtB2z_9datatypes5field5FieldENCINvB11_8map_foldB6Y_B6Y_uNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB8V_6SchemaB7O_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapB6Z_B6Z_EEINtNtB5b_7collect12FromIteratorB6Y_E9from_iterBE_E0NCINvNvB57_8for_each4callB6Y_NCINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtBcp_8IndexMapB6Z_B7O_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtBb1_6ExtendB6Y_E6extendIBZ_BE_B8M_EE0E0E0E0B6j_EB2z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !dbg !2058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2063
  ret void, !dbg !2064
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBY_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldEEIB3M_bEENCNvNtNtNtNtB2W_2io4avro4read11deserialize11deserialize0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB5Y_8try_folduNCINvNvB5Y_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2W_5array12MutableArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB9q_ENcNtBaw_5Break0E0Baw_E0IBax_Baw_EEB2W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2065 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.75.i = alloca i64, align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !2066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2067), !dbg !2070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2071), !dbg !2070
  %i.c = load ptr, ptr %1, align 8, !dbg !2073, !alias.scope !2097, !noalias !2108, !nonnull !12, !noundef !12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2111
  %i.e = load ptr, ptr %i.d, align 8, !dbg !2111, !alias.scope !2097, !noalias !2108, !nonnull !12, !noundef !12
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !2113
  br i1 %i.f, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldEEIB3q_bEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTRB2u_RB3P_ERbEINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2A_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8j_B6t_EENCNvNtNtNtNtB2A_2io4avro4read11deserialize11deserialize0NCINvXB8_INtB8_12GenericShuntINtB5u_3MapB3_B98_EIB68_NtNtBc_7convert10InfallibleB7z_EEB4H_8try_folduNCINvNvB4H_12try_for_each4callB6t_B8X_NcNtB8X_5Break0E0B8X_E0E0B8i_EB2A_.exit, label %bb.b, !dbg !2117

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104, !dbg !2118
  store ptr %i.g, ptr %1, align 8, !dbg !2121, !alias.scope !2097, !noalias !2108
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !2122
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2130 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !dbg !2132, !alias.scope !2135, !noalias !2108, !nonnull !12, !noundef !12 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2138
  %i.l = load ptr, ptr %i.k, align 8, !dbg !2138, !alias.scope !2135, !noalias !2108, !nonnull !12, !noundef !12
  %i.m = icmp eq ptr %i.j, %i.l, !dbg !2140
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldEEIB3q_bEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTRB2u_RB3P_ERbEINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2A_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8j_B6t_EENCNvNtNtNtNtB2A_2io4avro4read11deserialize11deserialize0NCINvXB8_INtB8_12GenericShuntINtB5u_3MapB3_B98_EIB68_NtNtBc_7convert10InfallibleB7z_EEB4H_8try_folduNCINvNvB4H_12try_for_each4callB6t_B8X_NcNtB8X_5Break0E0B8X_E0E0B8i_EB2A_.exit, label %bb.c, !dbg !2144

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 368, !dbg !2145
  store ptr %i.n, ptr %i.i, align 8, !dbg !2148, !alias.scope !2135, !noalias !2108
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !2149 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !2151, !alias.scope !2154, !noalias !2108, !nonnull !12, !noundef !12 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !2157
  %i.r = load ptr, ptr %i.q, align 8, !dbg !2157, !alias.scope !2154, !noalias !2108, !nonnull !12, !noundef !12
  %i.s = icmp eq ptr %i.p, %i.r, !dbg !2159
  br i1 %i.s, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldEEIB3q_bEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTRB2u_RB3P_ERbEINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2A_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8j_B6t_EENCNvNtNtNtNtB2A_2io4avro4read11deserialize11deserialize0NCINvXB8_INtB8_12GenericShuntINtB5u_3MapB3_B98_EIB68_NtNtBc_7convert10InfallibleB7z_EEB4H_8try_folduNCINvNvB4H_12try_for_each4callB6t_B8X_NcNtB8X_5Break0E0B8X_E0E0B8i_EB2A_.exit, label %bb.d, !dbg !2163

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1, !dbg !2164
  store ptr %i.t, ptr %i.o, align 8, !dbg !2167, !alias.scope !2154, !noalias !2108
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !2168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75.i), !dbg !2168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169), !dbg !2168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2172
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.v = load i8, ptr %i.p, align 1, !dbg !2173, !range !1856, !noalias !2185, !noundef !12
  %i.w = trunc nuw i8 %i.v to i1, !dbg !2173
  br i1 %i.w, label %bb.f, label %bb.e, !dbg !2173

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize12make_mutable(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, i64 noundef 0), !dbg !2190, !noalias !2191
  br label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize11deserialize0Bb_.exit.i.i, !dbg !2190

bb.f:                                             ; preds = %bb.d
  %.val.i.i = load ptr, ptr %i.b, align 8, !dbg !2192, !noalias !2191, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 72, !dbg !2193
  %i.y = load i64, ptr %.val.i.i, align 8, !dbg !2194, !noalias !2185, !noundef !12
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize12make_mutable(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) %i.x, i64 noundef %i.y), !dbg !2195, !noalias !2191
  br label %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize11deserialize0Bb_.exit.i.i, !dbg !2196

_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize11deserialize0Bb_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !2197, !noalias !2191 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2197
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2197, !noalias !2191 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2197
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2197, !noalias !2191 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198), !dbg !2197
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !2201
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.g, !dbg !2208

bb.g:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize11deserialize0Bb_.exit.i.i
  %i.z = load i64, ptr %3, align 8, !dbg !2209, !range !2213, !alias.scope !2214, !noalias !2217, !noundef !12
  %i.aa = icmp eq i64 %i.z, 18, !dbg !2209
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.h, !dbg !2209

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.j, !dbg !2219, !noalias !2217

bb.i:                                             ; preds = %_RNCNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize11deserialize0Bb_.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !2222
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !2222, !alias.scope !2230, !noalias !2231
  br label %bb.k, !dbg !2232

bb.j:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !2233, !noalias !2217
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !2233
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !2233, !noalias !2217
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !2233
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !2233, !noalias !2217
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !2233, !noalias !2191
  resume { ptr, i32 } %i.ab, !dbg !2234

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.h, %bb.g
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !2233, !noalias !2217
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !2233
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !2233, !noalias !2217
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !2233
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !2233, !noalias !2217
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !2233, !noalias !2191
  br label %bb.k, !dbg !2235

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.i
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.75.i, %bb.i ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.i ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !2236, !alias.scope !2230, !noalias !2231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2237, !noalias !2172
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !2238, !alias.scope !2242, !noalias !2245, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !2238
  %.sroa.75.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i = load i64, ptr %.sroa.75.i, align 8, !dbg !2238, !alias.scope !2242, !noalias !2245
  %6 = inttoptr i64 %.sroa.75.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i to ptr, !dbg !2238
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !2247
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i), !dbg !2247
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2248
  store ptr %5, ptr %i.ac, align 8, !dbg !2248, !alias.scope !2255, !noalias !2071
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2248
  store ptr %6, ptr %i.ad, align 8, !dbg !2248, !alias.scope !2255, !noalias !2071
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldEEIB3q_bEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTRB2u_RB3P_ERbEINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2A_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8j_B6t_EENCNvNtNtNtNtB2A_2io4avro4read11deserialize11deserialize0NCINvXB8_INtB8_12GenericShuntINtB5u_3MapB3_B98_EIB68_NtNtBc_7convert10InfallibleB7z_EEB4H_8try_folduNCINvNvB4H_12try_for_each4callB6t_B8X_NcNtB8X_5Break0E0B8X_E0E0B8i_EB2A_.exit, !dbg !2258

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipIB4_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldEEIB3q_bEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTTRB2u_RB3P_ERbEINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2A_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB8j_B6t_EENCNvNtNtNtNtB2A_2io4avro4read11deserialize11deserialize0NCINvXB8_INtB8_12GenericShuntINtB5u_3MapB3_B98_EIB68_NtNtBc_7convert10InfallibleB7z_EEB4H_8try_folduNCINvNvB4H_12try_for_each4callB6t_B8X_NcNtB8X_5Break0E0B8X_E0E0B8i_EB2A_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.k
  %storemerge.i = phi i64 [ 1, %bb.k ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], !dbg !2259
  store i64 %storemerge.i, ptr %0, align 8, !dbg !2259, !alias.scope !2067, !noalias !2071
  ret void, !dbg !2260
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB1e_NtNtNtB2h_9datatypes5field5FieldEENCNvNtNtB2h_6legacy5array18convert_inner_type0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4o_8for_each4callB1D_NCINvMsj_NtB1I_3vecINtB5E_3VecB1D_E14extend_trustedBN_E0E0EB2h_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2261 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !2262 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2262
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !2262 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2262
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !2262 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2262
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !2262 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !2263 ; 4 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2263
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !2263 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2263
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2263
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload, !dbg !2266
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload, !dbg !2276
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIBX_NtNtNtB20_9datatypes5field5FieldEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2N_EB1m_uNCNvNtNtB20_6legacy5array18convert_inner_type0NCINvNvB3l_8for_each4callB1m_NCINvMsj_NtB1r_3vecINtB5Z_3VecB1m_E14extend_trustedINtB44_3MapBM_B4D_EE0E0E0EB20_.exit, label %.lr.ph.i.i, !dbg !2294

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  br label %bb.c, !dbg !2294

bb.b:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !2295, !noalias !2304
  resume { ptr, i32 } %i.b, !dbg !2311

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtNtB1A_9datatypes5field5FieldEBW_uNCNvNtNtB1A_6legacy5array18convert_inner_type0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB11_3vecINtB4J_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB5P_B2j_EEB2U_EE0E0E0B1A_.exit.i.i, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.54.0.copyload, %.lr.ph.i.i ], [ %i.m, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtNtB1A_9datatypes5field5FieldEBW_uNCNvNtNtB1A_6legacy5array18convert_inner_type0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB11_3vecINtB4J_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB5P_B2j_EEB2U_EE0E0E0B1A_.exit.i.i ] ; 3 uses
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtNtB1A_9datatypes5field5FieldEBW_uNCNvNtNtB1A_6legacy5array18convert_inner_type0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB11_3vecINtB4J_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB5P_B2j_EEB2U_EE0E0E0B1A_.exit.i.i ] ; 2 uses
  %i.c = add i64 %.sroa.0.016.i.i, %.sroa.52.0.copyload, !dbg !2312 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.c, !dbg !2316 ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %.sroa.41.0.copyload, i64 %i.c, !dbg !2322
  %.val14.i.i = load ptr, ptr %i.d, align 8, !dbg !2327, !noalias !2304, !nonnull !12, !noundef !12
  %i.f = getelementptr i8, ptr %i.d, i64 8, !dbg !2327
  %.val15.i.i = load ptr, ptr %i.f, align 8, !dbg !2327, !noalias !2304, !nonnull !12, !align !686, !noundef !12
  %i.g = invoke { ptr, ptr } @_RNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5array18convert_inner_type(ptr noundef nonnull %.val14.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val15.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtNtB1A_9datatypes5field5FieldEBW_uNCNvNtNtB1A_6legacy5array18convert_inner_type0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB11_3vecINtB4J_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB5P_B2j_EEB2U_EE0E0E0B1A_.exit.i.i unwind label %bb.b, !dbg !2328, !noalias !2304 ; 2 uses

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtNtB1A_9datatypes5field5FieldEBW_uNCNvNtNtB1A_6legacy5array18convert_inner_type0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB11_3vecINtB4J_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB5P_B2j_EEB2U_EE0E0E0B1A_.exit.i.i: ; preds = %bb.c
  %i.h = add nuw i64 %.sroa.0.016.i.i, 1, !dbg !2338 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 0, !dbg !2345
  %i.j = extractvalue { ptr, ptr } %i.g, 1, !dbg !2345
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.val13.i.i, !dbg !2346 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !dbg !2353, !noalias !2356
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !2353
  store ptr %i.j, ptr %i.l, align 8, !dbg !2353, !noalias !2356
  %i.m = add i64 %.val13.i.i, 1, !dbg !2365       ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.h, %i.a, !dbg !2276
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIBX_NtNtNtB20_9datatypes5field5FieldEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2N_EB1m_uNCNvNtNtB20_6legacy5array18convert_inner_type0NCINvNvB3l_8for_each4callB1m_NCINvMsj_NtB1r_3vecINtB5Z_3VecB1m_E14extend_trustedINtB44_3MapBM_B4D_EE0E0E0EB20_.exit, label %bb.c, !dbg !2294

_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIBX_NtNtNtB20_9datatypes5field5FieldEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2N_EB1m_uNCNvNtNtB20_6legacy5array18convert_inner_type0NCINvNvB3l_8for_each4callB1m_NCINvMsj_NtB1r_3vecINtB5Z_3VecB1m_E14extend_trustedINtB44_3MapBM_B4D_EE0E0E0EB20_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtNtB1A_9datatypes5field5FieldEBW_uNCNvNtNtB1A_6legacy5array18convert_inner_type0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB11_3vecINtB4J_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB5P_B2j_EEB2U_EE0E0E0B1A_.exit.i.i, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.54.0.copyload, %bb.a ], [ %i.m, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtNtB1A_9datatypes5field5FieldEBW_uNCNvNtNtB1A_6legacy5array18convert_inner_type0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB11_3vecINtB4J_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB5P_B2j_EEB2U_EE0E0E0B1A_.exit.i.i ], !dbg !2368
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !2369, !noalias !2304
  ret void, !dbg !2375
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIBO_IB1e_NtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtB2h_2io4avro5write9serialize15struct_optional0EENCB3U_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB50_8for_each4callIB1E_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBc_6marker4SendNtB7c_4SyncEL_ENCINvMsj_NtB1I_3vecINtB7R_3VecB63_E14extend_trustedBN_E0E0EB2h_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2376 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !2377 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2377
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !2377 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2377
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !2377 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2377
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !2377 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !2378 ; 4 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2378
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !2378 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2378
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2378
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload, !dbg !2381
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload, !dbg !2389
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtB7_3map3MapIBX_NtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtB20_2io4avro5write9serialize15struct_optional0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2M_8map_foldTRB1m_RNtB35_6SchemaEIB1n_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBb_6marker4SendNtB7a_4SyncEL_EuNCB3O_s_0NCINvNvB4K_8for_each4callB61_NCINvMsj_NtB1r_3vecINtB8s_3VecB61_E14extend_trustedIB2K_BM_B7H_EE0E0E0EB20_.exit, label %.lr.ph.i.i, !dbg !2399

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  br label %bb.c, !dbg !2399

bb.b:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !2400, !noalias !2409
  resume { ptr, i32 } %i.b, !dbg !2416

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_optionals_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.54.0.copyload, %.lr.ph.i.i ], [ %i.n, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_optionals_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i ] ; 3 uses
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_optionals_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i ] ; 2 uses
  %i.c = add i64 %.sroa.0.016.i.i, %.sroa.52.0.copyload, !dbg !2417 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.c, !dbg !2421 ; 2 uses
  %i.e = getelementptr inbounds nuw [368 x i8], ptr %.sroa.41.0.copyload, i64 %i.c, !dbg !2425
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72, !dbg !2437
  %.val14.i.i = load ptr, ptr %i.d, align 8, !dbg !2444, !noalias !2409, !nonnull !12, !noundef !12
  %i.g = getelementptr i8, ptr %i.d, i64 8, !dbg !2444
  %.val15.i.i = load ptr, ptr %i.g, align 8, !dbg !2444, !noalias !2409, !nonnull !12, !align !686, !noundef !12
  %i.h = invoke { ptr, ptr } @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro5write9serialize14new_serializer(ptr noundef nonnull %.val14.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val15.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_optionals_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i unwind label %bb.b, !dbg !2445, !noalias !2409 ; 2 uses

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_optionals_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i: ; preds = %bb.c
  %i.i = add nuw i64 %.sroa.0.016.i.i, 1, !dbg !2451 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !2457
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !2457
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.val13.i.i, !dbg !2458 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !dbg !2465, !noalias !2468
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !2465
  store ptr %i.k, ptr %i.m, align 8, !dbg !2465, !noalias !2468
  %i.n = add i64 %.val13.i.i, 1, !dbg !2477       ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.a, !dbg !2389
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtB7_3map3MapIBX_NtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtB20_2io4avro5write9serialize15struct_optional0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2M_8map_foldTRB1m_RNtB35_6SchemaEIB1n_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBb_6marker4SendNtB7a_4SyncEL_EuNCB3O_s_0NCINvNvB4K_8for_each4callB61_NCINvMsj_NtB1r_3vecINtB8s_3VecB61_E14extend_trustedIB2K_BM_B7H_EE0E0E0EB20_.exit, label %bb.c, !dbg !2399

_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtB7_3map3MapIBX_NtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtB20_2io4avro5write9serialize15struct_optional0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2M_8map_foldTRB1m_RNtB35_6SchemaEIB1n_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBb_6marker4SendNtB7a_4SyncEL_EuNCB3O_s_0NCINvNvB4K_8for_each4callB61_NCINvMsj_NtB1r_3vecINtB8s_3VecB61_E14extend_trustedIB2K_BM_B7H_EE0E0E0EB20_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_optionals_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.54.0.copyload, %bb.a ], [ %i.n, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_optionals_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i ], !dbg !2480
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !2481, !noalias !2409
  ret void, !dbg !2487
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIBO_IB1e_NtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtB2h_2io4avro5write9serialize15struct_required0EENCB3U_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB50_8for_each4callIB1E_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBc_6marker4SendNtB7c_4SyncEL_ENCINvMsj_NtB1I_3vecINtB7R_3VecB63_E14extend_trustedBN_E0E0EB2h_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2488 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !2489 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2489
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !2489 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2489
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !2489 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2489
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !2489 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !2490 ; 4 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2490
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !2490 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2490
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2490
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload, !dbg !2493
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload, !dbg !2501
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtB7_3map3MapIBX_NtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtB20_2io4avro5write9serialize15struct_required0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2M_8map_foldTRB1m_RNtB35_6SchemaEIB1n_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBb_6marker4SendNtB7a_4SyncEL_EuNCB3O_s_0NCINvNvB4K_8for_each4callB61_NCINvMsj_NtB1r_3vecINtB8s_3VecB61_E14extend_trustedIB2K_BM_B7H_EE0E0E0EB20_.exit, label %.lr.ph.i.i, !dbg !2511

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  br label %bb.c, !dbg !2511

bb.b:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !2512, !noalias !2521
  resume { ptr, i32 } %i.b, !dbg !2528

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_requireds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.54.0.copyload, %.lr.ph.i.i ], [ %i.n, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_requireds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i ] ; 3 uses
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_requireds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i ] ; 2 uses
  %i.c = add i64 %.sroa.0.016.i.i, %.sroa.52.0.copyload, !dbg !2529 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.c, !dbg !2533 ; 2 uses
  %i.e = getelementptr inbounds nuw [368 x i8], ptr %.sroa.41.0.copyload, i64 %i.c, !dbg !2537
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72, !dbg !2545
  %.val14.i.i = load ptr, ptr %i.d, align 8, !dbg !2549, !noalias !2521, !nonnull !12, !noundef !12
  %i.g = getelementptr i8, ptr %i.d, i64 8, !dbg !2549
  %.val15.i.i = load ptr, ptr %i.g, align 8, !dbg !2549, !noalias !2521, !nonnull !12, !align !686, !noundef !12
  %i.h = invoke { ptr, ptr } @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro5write9serialize14new_serializer(ptr noundef nonnull %.val14.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val15.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_requireds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i unwind label %bb.b, !dbg !2550, !noalias !2521 ; 2 uses

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_requireds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i: ; preds = %bb.c
  %i.i = add nuw i64 %.sroa.0.016.i.i, 1, !dbg !2556 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !2562
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !2562
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.val13.i.i, !dbg !2563 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !dbg !2570, !noalias !2573
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !2570
  store ptr %i.k, ptr %i.m, align 8, !dbg !2570, !noalias !2573
  %i.n = add i64 %.val13.i.i, 1, !dbg !2582       ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.a, !dbg !2501
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtB7_3map3MapIBX_NtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtB20_2io4avro5write9serialize15struct_required0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2M_8map_foldTRB1m_RNtB35_6SchemaEIB1n_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBb_6marker4SendNtB7a_4SyncEL_EuNCB3O_s_0NCINvNvB4K_8for_each4callB61_NCINvMsj_NtB1r_3vecINtB8s_3VecB61_E14extend_trustedIB2K_BM_B7H_EE0E0E0EB20_.exit, label %bb.c, !dbg !2511

_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtB7_3map3MapIBX_NtNtCsgWMFZsJmVTu_11avro_schema6schema5FieldENCNvNtNtNtNtB20_2io4avro5write9serialize15struct_required0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2M_8map_foldTRB1m_RNtB35_6SchemaEIB1n_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBb_6marker4SendNtB7a_4SyncEL_EuNCB3O_s_0NCINvNvB4K_8for_each4callB61_NCINvMsj_NtB1r_3vecINtB8s_3VecB61_E14extend_trustedIB2K_BM_B7H_EE0E0E0EB20_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_requireds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.54.0.copyload, %bb.a ], [ %i.n, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtCsgWMFZsJmVTu_11avro_schema6schema6SchemaEIBX_DNtCsgJh9yXrUZzG_18streaming_iterator17StreamingIteratorp4ItemShNtNtBa_6marker4SendNtB4b_4SyncEL_EuNCNvNtNtNtNtB1A_2io4avro5write9serialize15struct_requireds_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB33_NCINvMsj_NtB11_3vecINtB6M_3VecB33_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7t_IB7T_NtB2l_5FieldENCB4K_0EEB4I_EE0E0E0B1A_.exit.i.i ], !dbg !2585
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !2586, !noalias !2521
  ret void, !dbg !2592
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIB1e_NtNtNtB1J_2io3ipc8IpcFieldEENCNvNtNtB2F_5write6schema18serialize_children0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Q_8for_each4callNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FieldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6F_3VecB4T_E14extend_trustedBN_E0E0EB1J_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2593 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIB1e_NtNtNtB1J_2io3ipc8IpcFieldEENCNvNtNtB2F_5write6schema18serialize_childrens_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3S_8for_each4callNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FieldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6H_3VecB4V_E14extend_trustedBN_E0E0EB1J_:bb.a
_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_NtNtNtB1s_2io3ipc8IpcFieldEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2l_ENtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FielduNCNvNtNtB2n_5write6schema18serialize_childrens_0NCINvNvB2N_8for_each4callB40_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB72_3VecB40_E14extend_trustedINtB3w_3MapBM_B5E_EE0E0E0EB1s_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldRNtNtNtB12_2io3ipc8IpcFieldENtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FielduNCNvNtNtB1T_5write6schema18serialize_childrens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5O_3VecB2i_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7b_B1R_EEB3W_EE0E0E0B12_.exit.i.i, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.54.0.copyload, %bb.a ], [ %i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldRNtNtNtB12_2io3ipc8IpcFieldENtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FielduNCNvNtNtB1T_5write6schema18serialize_childrens_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5O_3VecB2i_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7b_B1R_EEB3W_EE0E0E0B12_.exit.i.i ], !dbg !2782
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !2783, !noalias !2728
  ret void, !dbg !2789
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtNtBc_5slice4iter7WindowshEINtNtNtBa_7sources4once4OnceRShEENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB2r_13MutableBitmap16extend_unaligned0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtB8_4takeINtB4K_4TakepENtB4K_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5S_3VechE14extend_trustedIB4V_BN_EE0E0INtNtBc_6option6OptionjEEB2v_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2790 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2791 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !2792 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !2792
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2792 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !2792
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !2792 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2795), !dbg !2798
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2799 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !2799, !alias.scope !2795, !noalias !2806, !noundef !12 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null, !dbg !2799
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !2808

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2809), !dbg !2812
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !range !2813, !alias.scope !2814, !noalias !2817, !noundef !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.f, align 8, !alias.scope !2814, !noalias !2817 ; 3 uses
  %cond.i.i = icmp eq i64 %i.e, 1
  br i1 %cond.i.i, label %.split.us.i.i, label %.split.i.i.preheader

.split.i.i.preheader:                             ; preds = %bb.b
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !nonnull !12
  br label %.split.i.i, !dbg !2819

.split.us.i.i:                                    ; preds = %bb.b
  %i.g = icmp eq i64 %.promoted.i.i, 0, !dbg !2819
  br i1 %i.g, label %.loopexit.i, label %.split21.us.i.i, !dbg !2819

.split21.us.i.i:                                  ; preds = %.split.us.i.i
  %i.h = add i64 %.promoted.i.i, -1, !dbg !2826
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !2833
  store ptr %i.i, ptr %i.b, align 8, !dbg !2838, !alias.scope !2814, !noalias !2817
  store i64 %i.h, ptr %i.f, align 8, !dbg !2838, !alias.scope !2814, !noalias !2817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2839), !dbg !2842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2843), !dbg !2846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851), !dbg !2854
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28
          to label %.noexc.i unwind label %bb.f, !dbg !2857, !noalias !2865

.noexc.i:                                         ; preds = %.split21.us.i.i
  unreachable, !dbg !2857

.split.i.i:                                       ; preds = %.split.i.i.preheader, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i
  %.sroa.7.0 = phi i64 [ %i.z, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i ], [ %.sroa.7.0.copyload, %.split.i.i.preheader ], !dbg !2866 ; 3 uses
  %i.j = phi ptr [ %i.n, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i ], [ %i.c, %.split.i.i.preheader ] ; 2 uses
  %i.k = phi i64 [ %i.m, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i ], [ %.promoted.i.i, %.split.i.i.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.ab, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i ], [ %1, %.split.i.i.preheader ], !dbg !2867 ; 3 uses
  %i.l = icmp ugt i64 %i.e, %i.k, !dbg !2819
  br i1 %i.l, label %.loopexit.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i, !dbg !2819

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i: ; preds = %.split.i.i
  %i.m = add i64 %i.k, -1, !dbg !2826             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !2833 ; 3 uses
  store ptr %i.n, ptr %i.b, align 8, !dbg !2838, !alias.scope !2814, !noalias !2817
  store i64 %i.m, ptr %i.f, align 8, !dbg !2838, !alias.scope !2814, !noalias !2817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2839), !dbg !2842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2843), !dbg !2846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851), !dbg !2854
  %i.o = load i8, ptr %i.j, align 1, !dbg !2868, !alias.scope !2869, !noalias !2870, !noundef !12
  %i.p = load i8, ptr %i.n, align 1, !dbg !2857, !alias.scope !2869, !noalias !2870, !noundef !12
  %i.q = load i64, ptr %.val.i.i.i.i, align 8, !dbg !2872, !noalias !2873, !noundef !12
  %i.r = trunc i64 %i.q to i8, !dbg !2874         ; 2 uses
  %i.s = sub i8 0, %i.r, !dbg !2874
  %i.t = and i8 %i.r, 7, !dbg !2874
  %i.u = shl i8 %i.p, %i.t, !dbg !2874
  %i.v = and i8 %i.s, 7, !dbg !2887
  %i.w = lshr i8 %i.o, %i.v, !dbg !2887
  %i.x = or i8 %i.u, %i.w, !dbg !2891
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 %.sroa.7.0, !dbg !2895
  store i8 %i.x, ptr %i.y, align 1, !dbg !2907, !noalias !2910
  %i.z = add i64 %.sroa.7.0, 1, !dbg !2915        ; 2 uses
  %i.aa = icmp eq i64 %.sroa.01.0.i.i, 0, !dbg !2918
  %i.ab = add i64 %.sroa.01.0.i.i, -1, !dbg !2918
  br i1 %i.aa, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtB9_7sources4once4OnceRShEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNtB7_3map12map_try_foldB1X_hjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB3O_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtB7_4takeINtB5o_4TakepENtB5o_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VechE14extend_trustedIB5z_INtB2P_3MapBO_B3G_EEE0E0E0B3i_EB3S_.exit, label %.split.i.i, !dbg !2842

bb.c:                                             ; preds = %.loopexit.i, %bb.a
  %.sroa.7.2 = phi i64 [ %.sroa.7.0.copyload, %bb.a ], [ %.sroa.7.1, %.loopexit.i ], !dbg !2792 ; 7 uses
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %.us-phi.i.ph.i, %.loopexit.i ] ; 6 uses
  %i.ac = load i64, ptr %0, align 8, !dbg !2921, !range !677, !alias.scope !2795, !noalias !2806, !noundef !12
  %i.ad = trunc nuw i64 %i.ac to i1, !dbg !2923
  br i1 %i.ad, label %bb.d, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtB9_7sources4once4OnceRShEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNtB7_3map12map_try_foldB1X_hjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB3O_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtB7_4takeINtB5o_4TakepENtB5o_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VechE14extend_trustedIB5z_INtB2P_3MapBO_B3G_EEE0E0E0B3i_EB3S_.exit, !dbg !2923

.body.i:                                          ; preds = %.split26.us.invoke.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.g, !dbg !2924

.loopexit.i:                                      ; preds = %.split.i.i, %.split.us.i.i
  %.sroa.7.1 = phi i64 [ %.sroa.7.0.copyload, %.split.us.i.i ], [ %.sroa.7.0, %.split.i.i ], !dbg !2792
  %.us-phi.i.ph.i = phi i64 [ %1, %.split.us.i.i ], [ %.sroa.01.0.i.i, %.split.i.i ]
  store ptr null, ptr %i.b, align 8, !dbg !2925, !alias.scope !2795, !noalias !2806
  br label %bb.c, !dbg !2926

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2927 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928), !dbg !2931
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !2932, !noalias !2935
  %.promoted.i23.i = load ptr, ptr %i.af, align 8, !alias.scope !2932, !noalias !2935 ; 3 uses
  %.fr.i.i = freeze i64 %i.ah                     ; 3 uses
  %.not.peel.i.i = icmp eq ptr %.promoted.i23.i, null, !dbg !2937 ; 3 uses
  switch i64 %.fr.i.i, label %.split.preheader.i25.i [
    i64 0, label %.split.us.i24.i
    i64 1, label %.split.us27.i.i
  ]

.split.preheader.i25.i:                           ; preds = %bb.d
  br i1 %.not.peel.i.i, label %.thread.i, label %bb.e, !dbg !2942

.split.us.i24.i:                                  ; preds = %bb.d
  br i1 %.not.peel.i.i, label %.thread.i, label %.split26.us.invoke.i.i, !dbg !2942

.split26.us.invoke.i.i:                           ; preds = %.split.us27.i.i, %.split.us.i24.i
  %i.ai = phi ptr [ @27, %.split.us27.i.i ], [ @26, %.split.us.i24.i ]
  store ptr null, ptr %i.af, align 8, !dbg !2943, !alias.scope !2932, !noalias !2935
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.fr.i.i, i64 noundef %.fr.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai) #28
          to label %.split26.us.cont.i.i unwind label %.body.i, !dbg !2960, !noalias !2963

.split26.us.cont.i.i:                             ; preds = %.split26.us.invoke.i.i
  unreachable

.split.us27.i.i:                                  ; preds = %bb.d
  br i1 %.not.peel.i.i, label %.thread.i, label %.split26.us.invoke.i.i, !dbg !2942

bb.e:                                             ; preds = %.split.preheader.i25.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2964), !dbg !2967
  %.val.i.peel.i.i = load ptr, ptr %i.a, align 8, !dbg !2968, !noalias !2969, !nonnull !12, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971), !dbg !2968
  %i.aj = load i8, ptr %.promoted.i23.i, align 1, !dbg !2974, !alias.scope !2975, !noalias !2976, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %.promoted.i23.i, i64 1, !dbg !2977
  %i.al = load i8, ptr %i.ak, align 1, !dbg !2977, !alias.scope !2975, !noalias !2976, !noundef !12
  %i.am = load i64, ptr %.val.i.peel.i.i, align 8, !dbg !2978, !noalias !2979, !noundef !12
  %i.an = trunc i64 %i.am to i8, !dbg !2980       ; 2 uses
  %i.ao = sub i8 0, %i.an, !dbg !2980
  %i.ap = and i8 %i.an, 7, !dbg !2980
  %i.aq = shl i8 %i.al, %i.ap, !dbg !2980
  %i.ar = and i8 %i.ao, 7, !dbg !2983
  %i.as = lshr i8 %i.aj, %i.ar, !dbg !2983
  %i.at = or i8 %i.aq, %i.as, !dbg !2985
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.12.0.copyload, i64 %.sroa.7.2, !dbg !2987
  store i8 %i.at, ptr %i.au, align 1, !dbg !2991, !noalias !2993
  %i.av = add i64 %.sroa.7.2, 1, !dbg !2998
  %i.aw = icmp ne i64 %.sroa.0.0.i, 0, !dbg !3000
  %i.ax = add i64 %.sroa.0.0.i, -1, !dbg !3000
  %i.ay = zext i1 %i.aw to i64, !dbg !3002
  br label %.thread.i, !dbg !3002

.thread.i:                                        ; preds = %bb.e, %.split.us27.i.i, %.split.us.i24.i, %.split.preheader.i25.i
  %.sink.i = phi i64 [ %i.av, %bb.e ], [ %.sroa.7.2, %.split.us.i24.i ], [ %.sroa.7.2, %.split.us27.i.i ], [ %.sroa.7.2, %.split.preheader.i25.i ]
  %.sroa.0.0.i46.i = phi i64 [ %i.ay, %bb.e ], [ 1, %.split.us.i24.i ], [ 1, %.split.us27.i.i ], [ 1, %.split.preheader.i25.i ]
  %i.az = phi i64 [ %i.ax, %bb.e ], [ %.sroa.0.0.i, %.split.us.i24.i ], [ %.sroa.0.0.i, %.split.us27.i.i ], [ %.sroa.0.0.i, %.split.preheader.i25.i ], !dbg !3002
  store ptr null, ptr %i.af, align 8, !dbg !2943, !alias.scope !2932, !noalias !2935
  br label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtB9_7sources4once4OnceRShEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNtB7_3map12map_try_foldB1X_hjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB3O_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtB7_4takeINtB5o_4TakepENtB5o_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VechE14extend_trustedIB5z_INtB2P_3MapBO_B3G_EEE0E0E0B3i_EB3S_.exit, !dbg !3002

bb.f:                                             ; preds = %.split21.us.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.g, !dbg !3003

bb.g:                                             ; preds = %bb.f, %.body.i
  %storemerge = phi i64 [ %.sroa.7.0.copyload, %bb.f ], [ %.sroa.7.2, %.body.i ], !dbg !3006
  %eh.lpad-body30.i = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.ae, %.body.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !3006, !noalias !2865
  resume { ptr, i32 } %eh.lpad-body30.i, !dbg !3007

_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtB9_7sources4once4OnceRShEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNtB7_3map12map_try_foldB1X_hjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB3O_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtB7_4takeINtB5o_4TakepENtB5o_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VechE14extend_trustedIB5z_INtB2P_3MapBO_B3G_EEE0E0E0B3i_EB3S_.exit: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i, %bb.c, %.thread.i
  %.lcssa.sink = phi i64 [ %.sroa.7.2, %bb.c ], [ %.sink.i, %.thread.i ], [ %i.z, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i ]
  %.sroa.5.0.i = phi i64 [ %.sroa.0.0.i, %bb.c ], [ %i.az, %.thread.i ], [ undef, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i ], !dbg !3006
  %.sroa.04.0.i = phi i64 [ 1, %bb.c ], [ %.sroa.0.0.i46.i, %.thread.i ], [ 0, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldRShhjINtNtBb_6option6OptionjENCNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB29_13MutableBitmap16extend_unaligned0NCINvNvXs7_NtBV_4takeINtB3J_4TakepENtB3J_8SpecTake13spec_for_each5checkhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VechE14extend_trustedIB3U_INtBT_3MapINtNtBV_5chain5ChainINtNtNtBb_5slice4iter7WindowshEINtNtNtBX_7sources4once4OnceB1y_EEB21_EEE0E0E0INtB7_5FnMutTjB1y_EE8call_mutB2d_.exit.i.i ], !dbg !3006
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.lcssa.sink, ptr %.sroa.0.0.copyload, align 8, !dbg !3006, !noalias !2865
  %i.bb = insertvalue { i64, i64 } poison, i64 %.sroa.04.0.i, 0, !dbg !3008
  %i.bc = insertvalue { i64, i64 } %i.bb, i64 %.sroa.5.0.i, 1, !dbg !3008
  ret { i64, i64 } %i.bc, !dbg !3009
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtB8_10filter_map9FilterMapINtNtB8_3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterbEENCNvNtNtNtNtB3I_2io4avro4read11deserialize11deserializes_0EENCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB67_6SchemaB3C_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapB2N_B2N_EEINtNtNtBa_6traits7collect12FromIteratorB3C_E9from_iterBX_E0ENtNtB8f_8iterator8Iterator4folduNCINvNvB98_8for_each4callTB2N_B3C_ENCINvXsb_B28_INtB28_8IndexMapB2N_B3C_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB8d_6ExtendBa3_E6extendBN_E0E0EB3I_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 !dbg !3010 {
bb.a:
  tail call void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_10filter_map9FilterMapINtNtB7_3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBb_5slice4iter4IterbEENCNvNtNtNtNtB3r_2io4avro4read11deserialize11deserializes_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB3l_TB2w_B3l_EuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB76_6SchemaB3l_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapB2w_B2w_EEINtNtB5L_7collect12FromIteratorB3l_E9from_iterBP_E0NCINvNvB5H_8for_each4callB6M_NCINvXsb_B1R_INtB1R_8IndexMapB2w_B3l_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB9c_6ExtendB6M_E6extendINtB6q_3MapBP_B6X_EE0E0E0EB3r_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !dbg !3011
  ret void, !dbg !3012
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3G_8try_folduNCINvNvB3G_12try_for_each4callB2F_INtNtB12_12control_flow11ControlFlowB2F_ENcNtB7c_5Break0E0B7c_E0IB7d_B7c_EEB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3013 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3014 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015), !dbg !3018
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3019), !dbg !3018
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3030), !dbg !3033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3034), !dbg !3033
  %i.e = load i64, ptr %i.c, align 8, !dbg !3036, !alias.scope !3039, !noalias !3044, !noundef !12 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !3045, !alias.scope !3046, !noalias !3047, !noundef !12
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !3036
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !3033

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !3048
  store i64 %i.h, ptr %i.c, align 8, !dbg !3054, !alias.scope !3055, !noalias !3015
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !3056
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !3056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3057), !dbg !3056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3060
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !3061, !noalias !3064, !nonnull !12, !align !686, !noundef !12 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3061
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !3061, !noalias !3064, !nonnull !12, !align !686, !noundef !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !3065 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !3065, !noalias !3075
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !3078, !noalias !3075, !nonnull !12, !align !686, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !3078
  %i.n = load i64, ptr %i.m, align 8, !dbg !3078, !noalias !3075, !noundef !12 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 4, !dbg !3079
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !3079
  %i.p = icmp eq i64 %i.n, 0, !dbg !3092
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i, label %.lr.ph.i.i.i, !dbg !3101

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !3101

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 16, !dbg !3102 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !3105, !noalias !3075, !nonnull !12, !noundef !12
  %i.s = getelementptr i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !3105
  %.sroa.03.0.val6.i.i.i = load ptr, ptr %i.s, align 8, !dbg !3105, !noalias !3075, !nonnull !12, !align !686, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val6.i.i.i, i64 32, !dbg !3107
  %i.u = load ptr, ptr %i.t, align 8, !dbg !3107, !invariant.load !12, !noalias !3075, !nonnull !12
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.sroa.03.0.val.i.i.i) #29, !dbg !3108, !noalias !3075, !inline_history !3109 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !3108 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3110, !noalias !3075
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !3116
  %i.z = load ptr, ptr %i.y, align 8, !dbg !3116, !invariant.load !12, !noalias !3075, !nonnull !12
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #29, !dbg !3120, !noalias !3075, !inline_history !3109
  %i.aa = load i128, ptr %i.a, align 16, !dbg !3121, !noalias !3075, !noundef !12
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !3134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3110, !noalias !3075
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !3135, !prof !1753

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !dbg !3136, !noalias !3075
  unreachable, !dbg !3136

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !3139
  %.val7.i.i.i = load i64, ptr %i.ac, align 8, !dbg !3139, !noalias !3075, !noundef !12 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val7.i.i.i, !dbg !3141
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !3141

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !3139
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !3139, !noalias !3075, !nonnull !12, !noundef !12
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !3142
  %i.ag = load i64, ptr %i.k, align 8, !dbg !3143, !alias.scope !3148, !noalias !3151, !noundef !12 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !3153, !range !580, !alias.scope !3148, !noalias !3151, !noundef !12
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !3159
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, !dbg !3159

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !3160, !noalias !3151
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, !dbg !3160

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !3161, !alias.scope !3148, !noalias !3151, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !3170
  store ptr %i.af, ptr %i.ak, align 8, !dbg !3173, !noalias !3151
  %i.al = add i64 %i.ag, 1, !dbg !3177            ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !3177, !alias.scope !3148, !noalias !3151
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !3092
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i, label %bb.c, !dbg !3101

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val7.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28, !dbg !3141, !noalias !3075
  unreachable, !dbg !3141

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i ], !dbg !3178
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !3184
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !3184, !noalias !3075, !nonnull !12, !noundef !12
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !3195, !noalias !3064
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !3196, !noalias !3064 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3196
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3196, !noalias !3064 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !3196
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3196, !noalias !3064 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3197), !dbg !3196
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !3200
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !3205

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !3206, !range !2213, !alias.scope !3209, !noalias !3212, !noundef !12
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !3206
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.j, !dbg !3206

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.l, !dbg !3214, !noalias !3212

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !3216
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !3216, !alias.scope !3221, !noalias !3222
  br label %bb.m, !dbg !3223

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !3224, !noalias !3212
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !3224
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3224, !noalias !3212
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !3224
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3224, !noalias !3212
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !3224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !3224, !noalias !3064
  resume { ptr, i32 } %i.as, !dbg !3225

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !3224, !noalias !3212
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !3224
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !3224, !noalias !3212
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !3224
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !3224, !noalias !3212
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !3224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !3224, !noalias !3064
  br label %bb.m, !dbg !3226

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !3227, !alias.scope !3221, !noalias !3222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3228, !noalias !3060
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !3229, !alias.scope !3232, !noalias !3235, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !3229
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !3229, !alias.scope !3232, !noalias !3235
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !3237
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !3237
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3238
  store ptr %5, ptr %i.at, align 8, !dbg !3238, !alias.scope !3244, !noalias !3019
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3238
  store ptr %6, ptr %i.au, align 8, !dbg !3238, !alias.scope !3244, !noalias !3019
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !3247

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !3248
  store i64 %storemerge.i, ptr %0, align 8, !dbg !3248, !alias.scope !3015, !noalias !3019
  ret void, !dbg !3249
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB1y_5array5ArrayEL_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB37_8try_folduNCINvNvB37_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxB2G_EINtNtB12_12control_flow11ControlFlowB6z_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EEB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3250 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3251 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3252), !dbg !3255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3256), !dbg !3255
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3265), !dbg !3268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3269), !dbg !3268
  %i.e = load i64, ptr %i.c, align 8, !dbg !3271, !alias.scope !3273, !noalias !3278, !noundef !12 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !3279, !alias.scope !3280, !noalias !3281, !noundef !12
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !3271
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !3268

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !3282
  store i64 %i.h, ptr %i.c, align 8, !dbg !3285, !alias.scope !3286, !noalias !3252
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !3287
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !3287
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3288), !dbg !3287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3291
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !3292, !noalias !3295, !nonnull !12, !align !686, !noundef !12 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3292
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !3292, !noalias !3295, !nonnull !12, !align !686, !noundef !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !3296 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !3296, !noalias !3302
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !3305, !noalias !3302, !nonnull !12, !align !686, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !3305
  %i.n = load i64, ptr %i.m, align 8, !dbg !3305, !noalias !3302, !noundef !12 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 4, !dbg !3306
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !3306
  %i.p = icmp eq i64 %i.n, 0, !dbg !3317
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0B8_.exit.i.i, label %.lr.ph.i.i.i, !dbg !3326

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !3326

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 16, !dbg !3327 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !3330, !noalias !3302, !nonnull !12, !noundef !12
  %i.s = getelementptr i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !3330
  %.sroa.03.0.val7.i.i.i = load ptr, ptr %i.s, align 8, !dbg !3330, !noalias !3302, !nonnull !12, !align !686, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val7.i.i.i, i64 32, !dbg !3332
  %i.u = load ptr, ptr %i.t, align 8, !dbg !3332, !invariant.load !12, !noalias !3302, !nonnull !12
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.sroa.03.0.val.i.i.i) #29, !dbg !3333, !noalias !3302, !inline_history !3334 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !3333 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !3333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3335, !noalias !3302
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !3338
  %i.z = load ptr, ptr %i.y, align 8, !dbg !3338, !invariant.load !12, !noalias !3302, !nonnull !12
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #29, !dbg !3342, !noalias !3302, !inline_history !3334
  %i.aa = load i128, ptr %i.a, align 16, !dbg !3343, !noalias !3302, !noundef !12
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !3353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3335, !noalias !3302
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !3354, !prof !1753

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !dbg !3355, !noalias !3302
  unreachable, !dbg !3355

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !3358
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !3358, !noalias !3302, !noundef !12 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !3360
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !3360

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !3358
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !3358, !noalias !3302, !nonnull !12, !noundef !12
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !3361
  %i.ag = load i64, ptr %i.k, align 8, !dbg !3362, !alias.scope !3366, !noalias !3369, !noundef !12 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !3371, !range !580, !alias.scope !3366, !noalias !3369, !noundef !12
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !3374
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, !dbg !3374

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !3375, !noalias !3369
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, !dbg !3375

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !3376, !alias.scope !3366, !noalias !3369, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !3381
  store ptr %i.af, ptr %i.ak, align 8, !dbg !3383, !noalias !3369
  %i.al = add i64 %i.ag, 1, !dbg !3385            ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !3385, !alias.scope !3366, !noalias !3369
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !3317
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0B8_.exit.i.i, label %bb.c, !dbg !3326

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28, !dbg !3360, !noalias !3302
  unreachable, !dbg !3360

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0B8_.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i ], !dbg !3386
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !3391
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !3391, !noalias !3302, !nonnull !12, !noundef !12
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !3402, !noalias !3295
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !3403, !noalias !3295 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3403
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3403, !noalias !3295 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !3403
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3403, !noalias !3295 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3404), !dbg !3403
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !3407
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !3411

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0B8_.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !3412, !range !2213, !alias.scope !3415, !noalias !3418, !noundef !12
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !3412
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.j, !dbg !3412

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.l, !dbg !3420, !noalias !3418

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0B8_.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !3422
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !3422, !alias.scope !3427, !noalias !3428
  br label %bb.m, !dbg !3429

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !3430, !noalias !3418
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !3430
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3430, !noalias !3418
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !3430
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3430, !noalias !3418
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !3430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !3430, !noalias !3295
  resume { ptr, i32 } %i.as, !dbg !3431

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !3430, !noalias !3418
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !3430
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !3430, !noalias !3418
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !3430
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !3430, !noalias !3418
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !3430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !3430, !noalias !3295
  br label %bb.m, !dbg !3432

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !3433, !alias.scope !3427, !noalias !3428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3434, !noalias !3291
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !3435, !alias.scope !3437, !noalias !3440, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !3435
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !3435, !alias.scope !3437, !noalias !3440
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !3435
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !3442
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !3442
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3443
  store ptr %5, ptr %i.at, align 8, !dbg !3443, !alias.scope !3447, !noalias !3256
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3443
  store ptr %6, ptr %i.au, align 8, !dbg !3443, !alias.scope !3447, !noalias !3256
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !3450

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !3451
  store i64 %storemerge.i, ptr %0, align 8, !dbg !3451, !alias.scope !3252, !noalias !3256
  ret void, !dbg !3452
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3H_8try_folduNCINvNvB3H_12try_for_each4callB2G_INtNtB12_12control_flow11ControlFlowB2G_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EEB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3453 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3454 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3455), !dbg !3458
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3459), !dbg !3458
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3468), !dbg !3471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472), !dbg !3471
  %i.e = load i64, ptr %i.c, align 8, !dbg !3474, !alias.scope !3476, !noalias !3481, !noundef !12 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !3482, !alias.scope !3483, !noalias !3484, !noundef !12
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !3474
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !3471

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !3485
  store i64 %i.h, ptr %i.c, align 8, !dbg !3488, !alias.scope !3489, !noalias !3455
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !3490
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !3490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3491), !dbg !3490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3494
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !3495, !noalias !3498, !nonnull !12, !align !686, !noundef !12 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3495
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !3495, !noalias !3498, !nonnull !12, !align !686, !noundef !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !3499 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !3499, !noalias !3505
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !3508, !noalias !3505, !nonnull !12, !align !686, !noundef !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !3508
  %i.n = load i64, ptr %i.m, align 8, !dbg !3508, !noalias !3505, !noundef !12 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 3, !dbg !3509
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !3509
  %i.p = icmp eq i64 %i.n, 0, !dbg !3520
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i, label %.lr.ph.i.i.i, !dbg !3529

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !3529

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !3530 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !3533, !noalias !3505, !nonnull !12, !align !686, !noundef !12 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.03.0.val.i.i.i, align 8, !dbg !3535, !noalias !3505, !nonnull !12, !noundef !12
  %i.s = getelementptr i8, ptr %.sroa.03.0.val.i.i.i, i64 8, !dbg !3535
  %.val1.i.i.i.i = load ptr, ptr %i.s, align 8, !dbg !3535, !noalias !3505, !nonnull !12, !align !686, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 32, !dbg !3541
  %i.u = load ptr, ptr %i.t, align 8, !dbg !3541, !invariant.load !12, !noalias !3505, !nonnull !12
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.val.i.i.i.i) #29, !dbg !3542, !noalias !3505, !inline_history !3543 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !3542 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !3542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3544, !noalias !3505
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !3547
  %i.z = load ptr, ptr %i.y, align 8, !dbg !3547, !invariant.load !12, !noalias !3505, !nonnull !12
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #29, !dbg !3551, !noalias !3505, !inline_history !3543
  %i.aa = load i128, ptr %i.a, align 16, !dbg !3552, !noalias !3505, !noundef !12
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !3562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3544, !noalias !3505
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !3563, !prof !1753

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !dbg !3564, !noalias !3505
  unreachable, !dbg !3564

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !3567
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !3567, !noalias !3505, !noundef !12 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !3569
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !3569

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !3567
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !3567, !noalias !3505, !nonnull !12, !noundef !12
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !3570
  %i.ag = load i64, ptr %i.k, align 8, !dbg !3571, !alias.scope !3575, !noalias !3578, !noundef !12 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !3580, !range !580, !alias.scope !3575, !noalias !3578, !noundef !12
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !3583
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, !dbg !3583

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !3584, !noalias !3578
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, !dbg !3584

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !3585, !alias.scope !3575, !noalias !3578, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !3590
  store ptr %i.af, ptr %i.ak, align 8, !dbg !3592, !noalias !3578
  %i.al = add i64 %i.ag, 1, !dbg !3594            ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !3594, !alias.scope !3575, !noalias !3578
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !3520
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i, label %bb.c, !dbg !3529

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28, !dbg !3569, !noalias !3505
  unreachable, !dbg !3569

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutB13_.exit.i.i.i ], !dbg !3595
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !3600
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !3600, !noalias !3505, !nonnull !12, !noundef !12
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !3611, !noalias !3498
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !3612, !noalias !3498 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3612
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3612, !noalias !3498 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !3612
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3612, !noalias !3498 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3613), !dbg !3612
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !3616
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !3620

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !3621, !range !2213, !alias.scope !3624, !noalias !3627, !noundef !12
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !3621
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.j, !dbg !3621

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.l, !dbg !3629, !noalias !3627

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0B8_.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !3631
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !3631, !alias.scope !3636, !noalias !3637
  br label %bb.m, !dbg !3638

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !3639, !noalias !3627
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !3639
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3639, !noalias !3627
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !3639
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3639, !noalias !3627
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !3639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !3639, !noalias !3498
  resume { ptr, i32 } %i.as, !dbg !3640

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !3639, !noalias !3627
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !3639
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !3639, !noalias !3627
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !3639
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !3639, !noalias !3627
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !3639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !3639, !noalias !3498
  br label %bb.m, !dbg !3641

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !3642, !alias.scope !3636, !noalias !3637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3643, !noalias !3494
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !3644, !alias.scope !3646, !noalias !3649, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !3644
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !3644, !alias.scope !3646, !noalias !3649
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !3644
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !3651
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !3651
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3652
  store ptr %5, ptr %i.at, align 8, !dbg !3652, !alias.scope !3656, !noalias !3459
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3652
  store ptr %6, ptr %i.au, align 8, !dbg !3652, !alias.scope !3656, !noalias !3459
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !3659

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !3660
  store i64 %storemerge.i, ptr %0, align 8, !dbg !3660, !alias.scope !3455, !noalias !3459
  ret void, !dbg !3661
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCs8774dFTUdNv_12polars_arrow3ffi6schema8to_dtype0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB2l_8try_folduNCINvNvB2l_12try_for_each4callNtNtNtB1x_9datatypes5field5FieldINtNtB12_12control_flow11ControlFlowB5N_ENcNtB6j_5Break0E0B6j_E0IB6k_B6j_EEB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3662 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.022.i = alloca [64 x i8], align 8        ; 5 uses
  %.sroa.8.i = alloca [7 x i8], align 1           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3663 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664), !dbg !3667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3668), !dbg !3667
  %.sink.i.sroa.gep4.i = getelementptr inbounds nuw i8, ptr %3, i64 65, !dbg !3670 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3674, !noalias !3681, !noundef !12 ; 2 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !alias.scope !3683, !noalias !3664 ; 2 uses
  %i.e = icmp ult i64 %.promoted.i, %i.d, !dbg !3684
  br i1 %i.e, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4e_B2A_EENCNvNtNtB2G_3ffi6schema8to_dtype0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4X_EIB2f_NtNtBa_7convert10InfallibleB3u_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4M_NcNtB4M_5Break0E0B4M_E0E0B4d_EB2G_.exit, !dbg !3689

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 73 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.val.i.i = load ptr, ptr %1, align 8, !noalias !3690, !nonnull !12, !align !686, !noundef !12
  br label %bb.b, !dbg !3689

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.h = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.g ] ; 2 uses
  %i.i = add i64 %i.h, 1, !dbg !3693              ; 3 uses
  store i64 %i.i, ptr %i.b, align 8, !dbg !3696, !alias.scope !3683, !noalias !3664
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.022.i), !dbg !3697
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i), !dbg !3697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3698
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs8774dFTUdNv_12polars_arrow3ffi6schemaNtNtB4_9generated11ArrowSchema5child(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val.i.i, i64 noundef %i.h), !dbg !3699, !noalias !3708
  call void @_RNvNtNtCs8774dFTUdNv_12polars_arrow3ffi6schema8to_field(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j), !dbg !3711, !noalias !3690
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !3712, !noalias !3690
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !3712, !noalias !3690 ; 5 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1, !dbg !3713
  br i1 %i.k, label %bb.c, label %bb.e, !dbg !3713

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %3, align 8, !dbg !3718, !range !2213, !alias.scope !3721, !noalias !3724, !noundef !12
  %i.m = icmp eq i64 %i.l, 18, !dbg !3718
  br i1 %i.m, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i, label %bb.d, !dbg !3718

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i unwind label %bb.f, !dbg !3728, !noalias !3724

bb.e:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, 2, !dbg !3730
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i, !dbg !3736

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3737, !noalias !3698
  br label %bb.g, !dbg !3738

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !dbg !3741, !noalias !3690
  %.sroa.520.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 64, !dbg !3741
  store i8 %.sroa.7.0.copyload.i.i, ptr %.sroa.520.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3741, !noalias !3724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sink.i.sroa.gep4.i, ptr noundef nonnull align 1 dereferenceable(7) %i.g, i64 7, i1 false), !dbg !3741, !noalias !3690
  resume { ptr, i32 } %i.n, !dbg !3742

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !dbg !3741, !noalias !3690
  %.sroa.520.0..8.val.sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 64, !dbg !3741
  store i8 %.sroa.7.0.copyload.i.i, ptr %.sroa.520.0..8.val.sroa_idx21.i.i.i, align 8, !dbg !3741, !noalias !3724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sink.i.sroa.gep4.i, ptr noundef nonnull align 1 dereferenceable(7) %i.g, i64 7, i1 false), !dbg !3743, !noalias !3698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3737, !noalias !3698
  br label %.loopexit.i, !dbg !3738

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.022.i, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !dbg !3744, !noalias !3698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(7) %i.g, i64 7, i1 false), !dbg !3743, !noalias !3698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3737, !noalias !3698
  %.not.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, 3, !dbg !3746
  br i1 %.not.i.i, label %bb.g, label %.loopexit.i, !dbg !3738

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i
  %.sroa.4.sroa.6.0.copyload11.sink.i.sink.ph.i13.i = phi i8 [ 2, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.022.i, i64 64, i1 false), !dbg !3747, !noalias !3668
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 65, !dbg !3749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, i64 7, i1 false), !dbg !3747, !noalias !3668
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.022.i), !dbg !3755
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !dbg !3755
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4e_B2A_EENCNvNtNtB2G_3ffi6schema8to_dtype0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4X_EIB2f_NtNtBa_7convert10InfallibleB3u_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4M_NcNtB4M_5Break0E0B4M_E0E0B4d_EB2G_.exit, !dbg !3756

bb.g:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtype0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB63_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.022.i), !dbg !3755
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !dbg !3755
  %exitcond.not.i = icmp eq i64 %i.i, %i.d, !dbg !3684
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4e_B2A_EENCNvNtNtB2G_3ffi6schema8to_dtype0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4X_EIB2f_NtNtBa_7convert10InfallibleB3u_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4M_NcNtB4M_5Break0E0B4M_E0E0B4d_EB2G_.exit, label %bb.b, !dbg !3689

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4e_B2A_EENCNvNtNtB2G_3ffi6schema8to_dtype0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4X_EIB2f_NtNtBa_7convert10InfallibleB3u_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4M_NcNtB4M_5Break0E0B4M_E0E0B4d_EB2G_.exit: ; preds = %bb.g, %bb.a, %.loopexit.i
  %.sink = phi i8 [ %.sroa.4.sroa.6.0.copyload11.sink.i.sink.ph.i13.i, %.loopexit.i ], [ 3, %bb.a ], [ 3, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !3757
  store i8 %.sink, ptr %i.o, align 8, !dbg !3757, !alias.scope !3664, !noalias !3668
  ret void, !dbg !3758
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCs8774dFTUdNv_12polars_arrow3ffi6schema8to_dtypesb_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB2o_8try_folduNCINvNvB2o_12try_for_each4callNtNtNtB1x_9datatypes5field5FieldINtNtB12_12control_flow11ControlFlowB5Q_ENcNtB6m_5Break0E0B6m_E0IB6n_B6m_EEB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3759 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.022.i = alloca [64 x i8], align 8        ; 5 uses
  %.sroa.8.i = alloca [7 x i8], align 1           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3760 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3761), !dbg !3764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3765), !dbg !3764
  %.sink.i.sroa.gep4.i = getelementptr inbounds nuw i8, ptr %3, i64 65, !dbg !3767 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3771, !noalias !3778, !noundef !12 ; 2 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !alias.scope !3780, !noalias !3761 ; 2 uses
  %i.e = icmp ult i64 %.promoted.i, %i.d, !dbg !3781
  br i1 %i.e, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4e_B2A_EENCNvNtNtB2G_3ffi6schema8to_dtypesb_0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4X_EIB2f_NtNtBa_7convert10InfallibleB3u_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4M_NcNtB4M_5Break0E0B4M_E0E0B4d_EB2G_.exit, !dbg !3786

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 73 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.val.i.i = load ptr, ptr %1, align 8, !noalias !3787, !nonnull !12, !align !686, !noundef !12
  br label %bb.b, !dbg !3786

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.h = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.g ] ; 2 uses
  %i.i = add i64 %i.h, 1, !dbg !3790              ; 3 uses
  store i64 %i.i, ptr %i.b, align 8, !dbg !3793, !alias.scope !3780, !noalias !3761
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.022.i), !dbg !3794
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i), !dbg !3794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3795
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs8774dFTUdNv_12polars_arrow3ffi6schemaNtNtB4_9generated11ArrowSchema5child(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val.i.i, i64 noundef %i.h), !dbg !3796, !noalias !3801
  call void @_RNvNtNtCs8774dFTUdNv_12polars_arrow3ffi6schema8to_field(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j), !dbg !3804, !noalias !3787
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !3805, !noalias !3787
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !3805, !noalias !3787 ; 5 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1, !dbg !3806
  br i1 %i.k, label %bb.c, label %bb.e, !dbg !3806

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %3, align 8, !dbg !3810, !range !2213, !alias.scope !3813, !noalias !3816, !noundef !12
  %i.m = icmp eq i64 %i.l, 18, !dbg !3810
  br i1 %i.m, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i, label %bb.d, !dbg !3810

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i unwind label %bb.f, !dbg !3820, !noalias !3816

bb.e:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, 2, !dbg !3822
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i, !dbg !3827

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3828, !noalias !3795
  br label %bb.g, !dbg !3829

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !dbg !3831, !noalias !3787
  %.sroa.520.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 64, !dbg !3831
  store i8 %.sroa.7.0.copyload.i.i, ptr %.sroa.520.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3831, !noalias !3816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sink.i.sroa.gep4.i, ptr noundef nonnull align 1 dereferenceable(7) %i.g, i64 7, i1 false), !dbg !3831, !noalias !3787
  resume { ptr, i32 } %i.n, !dbg !3832

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !dbg !3831, !noalias !3787
  %.sroa.520.0..8.val.sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 64, !dbg !3831
  store i8 %.sroa.7.0.copyload.i.i, ptr %.sroa.520.0..8.val.sroa_idx21.i.i.i, align 8, !dbg !3831, !noalias !3816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sink.i.sroa.gep4.i, ptr noundef nonnull align 1 dereferenceable(7) %i.g, i64 7, i1 false), !dbg !3833, !noalias !3795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3828, !noalias !3795
  br label %.loopexit.i, !dbg !3829

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.022.i, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !dbg !3834, !noalias !3795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(7) %i.g, i64 7, i1 false), !dbg !3833, !noalias !3795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3828, !noalias !3795
  %.not.i.i = icmp eq i8 %.sroa.7.0.copyload.i.i, 3, !dbg !3835
  br i1 %.not.i.i, label %bb.g, label %.loopexit.i, !dbg !3829

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i
  %.sroa.4.sroa.6.0.copyload11.sink.i.sink.ph.i13.i = phi i8 [ 2, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread9.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.022.i, i64 64, i1 false), !dbg !3836, !noalias !3765
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 65, !dbg !3837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, i64 7, i1 false), !dbg !3836, !noalias !3765
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.022.i), !dbg !3841
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !dbg !3841
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4e_B2A_EENCNvNtNtB2G_3ffi6schema8to_dtypesb_0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4X_EIB2f_NtNtBa_7convert10InfallibleB3u_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4M_NcNtB4M_5Break0E0B4M_E0E0B4d_EB2G_.exit, !dbg !3842

bb.g:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B1m_EENCNvNtNtB1s_3ffi6schema8to_dtypesb_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB34_5range5RangejEB3P_EIB11_NtNtBa_7convert10InfallibleB2g_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB66_12try_for_each4callB1m_B3E_NcNtB3E_5Break0E0B3E_E0E0B1s_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.022.i), !dbg !3841
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i), !dbg !3841
  %exitcond.not.i = icmp eq i64 %i.i, %i.d, !dbg !3781
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4e_B2A_EENCNvNtNtB2G_3ffi6schema8to_dtypesb_0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4X_EIB2f_NtNtBa_7convert10InfallibleB3u_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4M_NcNtB4M_5Break0E0B4M_E0E0B4d_EB2G_.exit, label %bb.b, !dbg !3786

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4e_B2A_EENCNvNtNtB2G_3ffi6schema8to_dtypesb_0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4X_EIB2f_NtNtBa_7convert10InfallibleB3u_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4M_NcNtB4M_5Break0E0B4M_E0E0B4d_EB2G_.exit: ; preds = %bb.g, %bb.a, %.loopexit.i
  %.sink = phi i8 [ %.sroa.4.sroa.6.0.copyload11.sink.i.sink.ph.i13.i, %.loopexit.i ], [ 3, %bb.a ], [ 3, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !3843
  store i8 %.sink, ptr %i.o, align 8, !dbg !3843, !alias.scope !3761, !noalias !3765
  ret void, !dbg !3844
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB1y_10UnionArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array15ArrowArrayChildE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3P_8try_folduNCINvNvB3P_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7h_ENcNtB87_5Break0E0B87_E0IB88_B87_EEB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3845 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.6.i.i = alloca [48 x i8], align 8        ; 6 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3846 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3847), !dbg !3850
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3851), !dbg !3850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3860), !dbg !3863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3864), !dbg !3863
  %i.g = load i64, ptr %i.d, align 8, !dbg !3866, !alias.scope !3868, !noalias !3873, !noundef !12 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !3874, !alias.scope !3875, !noalias !3876, !noundef !12
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !3866
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !3863

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !3877
  store i64 %i.j, ptr %i.d, align 8, !dbg !3880, !alias.scope !3881, !noalias !3847
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !3882
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !3882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3883), !dbg !3882
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !3886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3889, !noalias !3890
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !3889, !noalias !3890, !nonnull !12, !align !686, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3891, !noalias !3890
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array15ArrowArrayChildNtB4_13ArrowArrayRef5childB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val.i.i, i64 noundef %i.g), !dbg !3899, !noalias !3900
  %i.k = load i64, ptr %i.b, align 8, !dbg !3901, !range !2213, !noalias !3900, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 18, !dbg !3901
  br i1 %.not.i.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.thread.i.i, !dbg !3904

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.thread.i.i: ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !3905
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !3905, !noalias !3900
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3906 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !3913, !noalias !3900
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !3906
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !3906, !alias.scope !3914, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3917, !noalias !3890
  %.sroa.4.0.copyload3.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !dbg !3886, !noalias !3890
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !3886
  %.sroa.5.0.copyload5.i.i = load ptr, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !dbg !3886, !noalias !3890
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !3886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !3886, !noalias !3890
  br label %bb.c, !dbg !3918

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.i.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !3891, !noalias !3900
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !3922, !noalias !3890
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.c, align 8, !dbg !3886, !noalias !3890 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3917, !noalias !3890
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3886
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3886, !noalias !3890 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !3886
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3886, !noalias !3890 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !3886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !3886, !noalias !3890
  call void @llvm.experimental.noalias.scope.decl(metadata !3924), !dbg !3886
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, 18, !dbg !3927
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !3918

bb.c:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.thread.i.i
  %.sroa.5.0.copyload10.i.i = phi ptr [ %.sroa.5.0.copyload5.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload9.i.i = phi ptr [ %.sroa.4.0.copyload3.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload8.i.i = phi i64 [ %i.k, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.thread.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.i.i ] ; 2 uses
  %i.l = load i64, ptr %3, align 8, !dbg !3928, !range !2213, !alias.scope !3931, !noalias !3934, !noundef !12
  %i.m = icmp eq i64 %i.l, 18, !dbg !3928
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.d, !dbg !3928

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.f, !dbg !3936, !noalias !3934

bb.e:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array15ArrowArrayChildE12try_from_ffi0Bc_.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !3938
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !3938, !alias.scope !3943, !noalias !3944
  br label %bb.g, !dbg !3945

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !3946, !noalias !3934
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !3946
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3946, !noalias !3934
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !3946
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !3946, !noalias !3934
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !3946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !3946, !noalias !3947
  resume { ptr, i32 } %i.n, !dbg !3948

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !3946, !noalias !3934
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !3946
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !3946, !noalias !3934
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !3946
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !3946, !noalias !3934
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !3946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !3946, !noalias !3947
  br label %bb.g, !dbg !3949

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !3950, !alias.scope !3943, !noalias !3944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3951, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !3951
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !3952, !alias.scope !3954, !noalias !3957, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !3952
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !3952, !alias.scope !3954, !noalias !3957
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !3952
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !3959
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !3959
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3960
  store ptr %5, ptr %i.o, align 8, !dbg !3960, !alias.scope !3964, !noalias !3851
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3960
  store ptr %6, ptr %i.p, align 8, !dbg !3960, !alias.scope !3964, !noalias !3851
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !3967

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !3968
  store i64 %storemerge.i, ptr %0, align 8, !dbg !3968, !alias.scope !3847, !noalias !3851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3969
  ret void, !dbg !3970
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB1y_10UnionArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array18InternalArrowArrayE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3S_8try_folduNCINvNvB3S_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7k_ENcNtB8a_5Break0E0B8a_E0IB8b_B8a_EEB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3971 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.6.i.i = alloca [48 x i8], align 8        ; 6 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3972 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3973), !dbg !3976
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3977), !dbg !3976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3986), !dbg !3989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3990), !dbg !3989
  %i.g = load i64, ptr %i.d, align 8, !dbg !3992, !alias.scope !3994, !noalias !3999, !noundef !12 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !4000, !alias.scope !4001, !noalias !4002, !noundef !12
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !3992
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !3989

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !4003
  store i64 %i.j, ptr %i.d, align 8, !dbg !4006, !alias.scope !4007, !noalias !3973
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !4008
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !4008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009), !dbg !4008
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !4012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4015, !noalias !4016
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !4015, !noalias !4016, !nonnull !12, !align !686, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4017, !noalias !4016
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayNtB4_13ArrowArrayRef5childB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i, i64 noundef %i.g), !dbg !4020, !noalias !4021
  %i.k = load i64, ptr %i.b, align 8, !dbg !4022, !range !2213, !noalias !4021, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, 18, !dbg !4022
  br i1 %.not.i.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.i.i, label %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.thread.i.i, !dbg !4025

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.thread.i.i: ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !4026
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !4026, !noalias !4021
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4027 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !4034, !noalias !4021
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !4027
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !4027, !alias.scope !4035, !noalias !4016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4038, !noalias !4016
  %.sroa.4.0.copyload3.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !dbg !4012, !noalias !4016
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4012
  %.sroa.5.0.copyload5.i.i = load ptr, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !dbg !4012, !noalias !4016
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !4012, !noalias !4016
  br label %bb.c, !dbg !4039

_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.i.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !4017, !noalias !4021
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !4043, !noalias !4016
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.c, align 8, !dbg !4012, !noalias !4016 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4038, !noalias !4016
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4012
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4012, !noalias !4016 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4012
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4012, !noalias !4016 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !4012, !noalias !4016
  call void @llvm.experimental.noalias.scope.decl(metadata !4045), !dbg !4012
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, 18, !dbg !4048
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !4039

bb.c:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.thread.i.i
  %.sroa.5.0.copyload10.i.i = phi ptr [ %.sroa.5.0.copyload5.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload9.i.i = phi ptr [ %.sroa.4.0.copyload3.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload8.i.i = phi i64 [ %i.k, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.thread.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.i.i ] ; 2 uses
  %i.l = load i64, ptr %3, align 8, !dbg !4049, !range !2213, !alias.scope !4052, !noalias !4055, !noundef !12
  %i.m = icmp eq i64 %i.l, 18, !dbg !4049
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.d, !dbg !4049

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.f, !dbg !4057, !noalias !4055

bb.e:                                             ; preds = %_RNCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array5union3ffiNtB8_10UnionArrayINtNtBa_3ffi7FromFfiNtNtNtBc_3ffi5array18InternalArrowArrayE12try_from_ffi0Bc_.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !4059
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !4059, !alias.scope !4064, !noalias !4065
  br label %bb.g, !dbg !4066

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !4067, !noalias !4055
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !4067
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !4067, !noalias !4055
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !4067
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !4067, !noalias !4055
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !4067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !4067, !noalias !4068
  resume { ptr, i32 } %i.n, !dbg !4069

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !4067, !noalias !4055
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !4067
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !4067, !noalias !4055
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !4067
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !4067, !noalias !4055
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !4067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !4067, !noalias !4068
  br label %bb.g, !dbg !4070

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !4071, !alias.scope !4064, !noalias !4065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4072, !noalias !4016
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !4072
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !4073, !alias.scope !4075, !noalias !4078, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !4073
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !4073, !alias.scope !4075, !noalias !4078
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !4073
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !4080
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !4080
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4081
  store ptr %5, ptr %i.o, align 8, !dbg !4081, !alias.scope !4085, !noalias !3977
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4081
  store ptr %6, ptr %i.p, align 8, !dbg !4081, !alias.scope !4085, !noalias !3977
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !4088

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_5union3ffiNtB5y_10UnionArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !4089
  store i64 %storemerge.i, ptr %0, align 8, !dbg !4089, !alias.scope !3973, !noalias !3977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4090
  ret void, !dbg !4091
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_3ffiNtB1y_11StructArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array15ArrowArrayChildE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3S_8try_folduNCINvNvB3S_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7k_ENcNtB8a_5Break0E0B8a_E0IB8b_B8a_EEB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4092 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !4093 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4094), !dbg !4097
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4098), !dbg !4097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !4100
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4107), !dbg !4110
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4111), !dbg !4110
  %i.g = load i64, ptr %i.d, align 8, !dbg !4113, !alias.scope !4115, !noalias !4120, !noundef !12 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !4121, !alias.scope !4122, !noalias !4123, !noundef !12
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !4113
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !4110

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !4124
  store i64 %i.j, ptr %i.d, align 8, !dbg !4127, !alias.scope !4128, !noalias !4094
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !4129
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !4129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4130), !dbg !4129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4133, !noalias !4136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4137), !dbg !4133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4140), !dbg !4133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4142, !noalias !4136
  %i.k = load ptr, ptr %1, align 8, !dbg !4142, !alias.scope !4140, !noalias !4150, !nonnull !12, !align !686, !noundef !12
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array15ArrowArrayChildNtB4_13ArrowArrayRef5childB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, i64 noundef %i.g), !dbg !4151, !noalias !4152
  %i.l = load i64, ptr %i.b, align 8, !dbg !4153, !range !2213, !noalias !4152, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 18, !dbg !4153
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !4156

bb.c:                                             ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !4157
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !4157, !noalias !4152
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !4165, !noalias !4152
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !4158
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !4158, !alias.scope !4137, !noalias !4166
  br label %bb.p, !dbg !4167

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !4142, !noalias !4152
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !4168, !noalias !4166
  %i.m = load i64, ptr %i.c, align 8, !dbg !4170, !noalias !4136 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.m, 18, !dbg !4170
  br i1 %.not13.i.i.i, label %bb.e, label %bb.p, !dbg !4173

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4174
  %i.o = load ptr, ptr %i.n, align 8, !dbg !4174, !alias.scope !4140, !noalias !4150, !nonnull !12, !align !686, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4174
  %i.q = load ptr, ptr %i.p, align 8, !dbg !4174, !alias.scope !4140, !noalias !4150, !nonnull !12, !align !686, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4175
  %i.s = load ptr, ptr %i.r, align 8, !dbg !4175, !alias.scope !4137, !noalias !4166, !nonnull !12, !noundef !12 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4175
  %i.u = load ptr, ptr %i.t, align 8, !dbg !4175, !alias.scope !4137, !noalias !4166, !nonnull !12, !align !686, !noundef !12 ; 9 uses
  %.val.i.i.i = load i64, ptr %i.q, align 8, !dbg !4176, !noalias !4178 ; 2 uses
  %.val14.i.i.i = load i64, ptr %i.o, align 8, !dbg !4176, !noalias !4178 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4179), !dbg !4176
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !4182
  %i.w = load ptr, ptr %i.v, align 8, !dbg !4182, !invariant.load !12, !alias.scope !4179, !noalias !4178, !nonnull !12
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.f, !dbg !4186, !noalias !4187

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr nonnull %i.s, ptr nonnull readonly align 8 dereferenceable(192) %i.u) #26
          to label %common.resume.i.i unwind label %bb.o, !dbg !4188, !noalias !4178

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %.val14.i.i.i, %.val.i.i.i, !dbg !4189
  %.not.i.i.i.i = icmp ult i64 %i.x, %i.z, !dbg !4182
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.h, !dbg !4182

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !4190
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !4190, !invariant.load !12, !alias.scope !4179, !noalias !4178, !nonnull !12
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.s, i64 noundef %.val14.i.i.i, i64 noundef %.val.i.i.i)
          to label %bb.i unwind label %bb.f, !dbg !4191, !noalias !4187 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0, !dbg !4190 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1, !dbg !4190 ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !dbg !4192, !invariant.load !12, !alias.scope !4179, !noalias !4178 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null, !dbg !4192
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !4192

bb.j:                                             ; preds = %bb.i
  invoke void %i.af(ptr noundef nonnull %i.s)
          to label %bb.k unwind label %bb.m, !dbg !4192, !noalias !4187

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !4194
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !4194, !range !580, !invariant.load !12, !alias.scope !4179, !noalias !4178 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0, !dbg !4198
  br i1 %i.ai, label %bb.r, label %bb.l, !dbg !4198

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !4194
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !4199, !range !591, !invariant.load !12, !alias.scope !4179, !noalias !4178
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #24, !dbg !4202, !noalias !4187
  br label %bb.r, !dbg !4207

bb.m:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !4208
  %i.an = load i64, ptr %i.am, align 8, !dbg !4208, !range !580, !invariant.load !12, !alias.scope !4179, !noalias !4178 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0, !dbg !4212
  br i1 %i.ao, label %common.resume.i.i, label %bb.n, !dbg !4212

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !4208
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !4213, !range !591, !invariant.load !12, !alias.scope !4179, !noalias !4178
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #24, !dbg !4216, !noalias !4187
  br label %common.resume.i.i, !dbg !4221

common.resume.i.i:                                ; preds = %bb.s, %bb.n, %bb.m, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !4222

bb.o:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !4223, !noalias !4187
  unreachable, !dbg !4223

bb.p:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4167, !noalias !4136
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4224
  %i.as = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !dbg !4224, !noalias !4136 ; 3 uses
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4224 ; 2 uses
  %i.at = load i64, ptr %3, align 8, !dbg !4225, !range !2213, !alias.scope !4230, !noalias !4233, !noundef !12
  %i.au = icmp eq i64 %i.at, 18, !dbg !4225
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.q, !dbg !4225

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.s, !dbg !4237, !noalias !4233

bb.r:                                             ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.u, %bb.g ], !dbg !4239 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ad, %bb.l ], [ %i.ad, %bb.k ], [ %i.s, %bb.g ], !dbg !4239 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4167, !noalias !4136
  call void @llvm.experimental.noalias.scope.decl(metadata !4240), !dbg !4224
  %4 = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64, !dbg !4241
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !4241, !alias.scope !4246, !noalias !4247
  br label %bb.t, !dbg !4248

bb.s:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !4249, !noalias !4233
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !4249
  %i.aw = extractelement <2 x ptr> %i.as, i64 0, !dbg !4249
  store ptr %i.aw, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !4249, !noalias !4233
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !4249
  %i.ax = extractelement <2 x ptr> %i.as, i64 1, !dbg !4249
  store ptr %i.ax, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !4249, !noalias !4233
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !4249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !4249, !noalias !4136
  br label %common.resume.i.i, !dbg !4250

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.q, %bb.p
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !4249, !noalias !4233
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !4249
  store <2 x ptr> %i.as, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !4249, !noalias !4233
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !4249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !4249, !noalias !4136
  br label %bb.t, !dbg !4251

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.r
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.r ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %bb.r ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !4252, !alias.scope !4246, !noalias !4247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4253, !noalias !4136
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !4254, !alias.scope !4256, !noalias !4259, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !4254
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !4254, !alias.scope !4256, !noalias !4259
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !4254
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !4261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !4261
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4262
  store ptr %5, ptr %i.ay, align 8, !dbg !4262, !alias.scope !4266, !noalias !4098
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4262
  store ptr %6, ptr %i.az, align 8, !dbg !4262, !alias.scope !4266, !noalias !4098
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !4269

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array15ArrowArrayChildE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit: ; preds = %bb.a, %bb.t
  %storemerge.i = phi i64 [ 1, %bb.t ], [ 0, %bb.a ], !dbg !4270
  store i64 %storemerge.i, ptr %0, align 8, !dbg !4270, !alias.scope !4094, !noalias !4098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4271
  ret void, !dbg !4272
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_3ffiNtB1y_11StructArrayINtNtB1A_3ffi7FromFfiNtNtNtB1C_3ffi5array18InternalArrowArrayE12try_from_ffi0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3V_8try_folduNCINvNvB3V_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB1A_5ArrayEL_EINtNtB12_12control_flow11ControlFlowB7n_ENcNtB8d_5Break0E0B8d_E0IB8e_B8d_EEB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4273 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !4274 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4275), !dbg !4278
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4279), !dbg !4278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !4281
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4288), !dbg !4291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4292), !dbg !4291
  %i.g = load i64, ptr %i.d, align 8, !dbg !4294, !alias.scope !4296, !noalias !4301, !noundef !12 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !4302, !alias.scope !4303, !noalias !4304, !noundef !12
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !4294
  br i1 %i.i, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !4291

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1, !dbg !4305
  store i64 %i.j, ptr %i.d, align 8, !dbg !4308, !alias.scope !4309, !noalias !4275
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !4310
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !4310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4311), !dbg !4310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4314, !noalias !4317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4318), !dbg !4314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4321), !dbg !4314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4323, !noalias !4317
  %i.k = load ptr, ptr %1, align 8, !dbg !4323, !alias.scope !4321, !noalias !4326, !nonnull !12, !align !686, !noundef !12
  call void @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow3ffi5array18InternalArrowArrayNtB4_13ArrowArrayRef5childB8_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, i64 noundef %i.g), !dbg !4327, !noalias !4328
  %i.l = load i64, ptr %i.b, align 8, !dbg !4329, !range !2213, !noalias !4328, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.l, 18, !dbg !4329
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !4332

bb.c:                                             ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !4333
  %.sroa.69.0.copyload.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !4333, !noalias !4328
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.211.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !4341, !noalias !4328
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !4334
  store i64 %.sroa.69.0.copyload.i.i.i, ptr %.sroa.312.0..sroa_idx.i.i.i, align 8, !dbg !4334, !alias.scope !4318, !noalias !4342
  br label %bb.p, !dbg !4343

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !4323, !noalias !4328
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi5array8try_fromNtB2_15ArrowArrayChildEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !4344, !noalias !4342
  %i.m = load i64, ptr %i.c, align 8, !dbg !4346, !noalias !4317 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.m, 18, !dbg !4346
  br i1 %.not13.i.i.i, label %bb.e, label %bb.p, !dbg !4349

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4350
  %i.o = load ptr, ptr %i.n, align 8, !dbg !4350, !alias.scope !4321, !noalias !4326, !nonnull !12, !align !686, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4350
  %i.q = load ptr, ptr %i.p, align 8, !dbg !4350, !alias.scope !4321, !noalias !4326, !nonnull !12, !align !686, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4351
  %i.s = load ptr, ptr %i.r, align 8, !dbg !4351, !alias.scope !4318, !noalias !4342, !nonnull !12, !noundef !12 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4351
  %i.u = load ptr, ptr %i.t, align 8, !dbg !4351, !alias.scope !4318, !noalias !4342, !nonnull !12, !align !686, !noundef !12 ; 9 uses
  %.val.i.i.i = load i64, ptr %i.q, align 8, !dbg !4352, !noalias !4354 ; 2 uses
  %.val14.i.i.i = load i64, ptr %i.o, align 8, !dbg !4352, !noalias !4354 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4355), !dbg !4352
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48, !dbg !4358
  %i.w = load ptr, ptr %i.v, align 8, !dbg !4358, !invariant.load !12, !alias.scope !4355, !noalias !4354, !nonnull !12
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %i.s)
          to label %bb.g unwind label %bb.f, !dbg !4361, !noalias !4362

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr nonnull %i.s, ptr nonnull readonly align 8 dereferenceable(192) %i.u) #26
          to label %common.resume.i.i unwind label %bb.o, !dbg !4363, !noalias !4354

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %.val14.i.i.i, %.val.i.i.i, !dbg !4364
  %.not.i.i.i.i = icmp ult i64 %i.x, %i.z, !dbg !4358
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.h, !dbg !4358

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !4365
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !4365, !invariant.load !12, !alias.scope !4355, !noalias !4354, !nonnull !12
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.s, i64 noundef %.val14.i.i.i, i64 noundef %.val.i.i.i)
          to label %bb.i unwind label %bb.f, !dbg !4366, !noalias !4362 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0, !dbg !4365 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1, !dbg !4365 ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !dbg !4367, !invariant.load !12, !alias.scope !4355, !noalias !4354 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null, !dbg !4367
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !4367

bb.j:                                             ; preds = %bb.i
  invoke void %i.af(ptr noundef nonnull %i.s)
          to label %bb.k unwind label %bb.m, !dbg !4367, !noalias !4362

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !4369
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !4369, !range !580, !invariant.load !12, !alias.scope !4355, !noalias !4354 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0, !dbg !4373
  br i1 %i.ai, label %bb.r, label %bb.l, !dbg !4373

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !4369
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !4374, !range !591, !invariant.load !12, !alias.scope !4355, !noalias !4354
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #24, !dbg !4377, !noalias !4362
  br label %bb.r, !dbg !4382

bb.m:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !4383
  %i.an = load i64, ptr %i.am, align 8, !dbg !4383, !range !580, !invariant.load !12, !alias.scope !4355, !noalias !4354 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0, !dbg !4387
  br i1 %i.ao, label %common.resume.i.i, label %bb.n, !dbg !4387

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !4383
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !4388, !range !591, !invariant.load !12, !alias.scope !4355, !noalias !4354
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #24, !dbg !4391, !noalias !4362
  br label %common.resume.i.i, !dbg !4396

common.resume.i.i:                                ; preds = %bb.s, %bb.n, %bb.m, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !4397

bb.o:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !4398, !noalias !4362
  unreachable, !dbg !4398

bb.p:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4343, !noalias !4317
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4399
  %i.as = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !dbg !4399, !noalias !4317 ; 3 uses
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4399 ; 2 uses
  %i.at = load i64, ptr %3, align 8, !dbg !4400, !range !2213, !alias.scope !4405, !noalias !4408, !noundef !12
  %i.au = icmp eq i64 %i.at, 18, !dbg !4400
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.q, !dbg !4400

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.s, !dbg !4412, !noalias !4408

bb.r:                                             ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.3.0.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.u, %bb.g ], !dbg !4414 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ad, %bb.l ], [ %i.ad, %bb.k ], [ %i.s, %bb.g ], !dbg !4414 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4343, !noalias !4317
  call void @llvm.experimental.noalias.scope.decl(metadata !4415), !dbg !4399
  %4 = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64, !dbg !4416
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !4416, !alias.scope !4421, !noalias !4422
  br label %bb.t, !dbg !4423

bb.s:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !4424, !noalias !4408
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !4424
  %i.aw = extractelement <2 x ptr> %i.as, i64 0, !dbg !4424
  store ptr %i.aw, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !4424, !noalias !4408
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !4424
  %i.ax = extractelement <2 x ptr> %i.as, i64 1, !dbg !4424
  store ptr %i.ax, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !4424, !noalias !4408
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !4424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !4424, !noalias !4317
  br label %common.resume.i.i, !dbg !4425

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.q, %bb.p
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %3, align 8, !dbg !4424, !noalias !4408
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !4424
  store <2 x ptr> %i.as, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !4424, !noalias !4408
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !4424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !4424, !noalias !4317
  br label %bb.t, !dbg !4426

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.r
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.r ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %bb.r ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !4427, !alias.scope !4421, !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4428, !noalias !4317
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !4429, !alias.scope !4431, !noalias !4434, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !4429
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !4429, !alias.scope !4431, !noalias !4434
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !4429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !4436
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !4436
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4437
  store ptr %5, ptr %i.ay, align 8, !dbg !4437, !alias.scope !4441, !noalias !4279
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4437
  store ptr %6, ptr %i.az, align 8, !dbg !4437, !alias.scope !4441, !noalias !4279
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit, !dbg !4444

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCNvXs_NtNtB3c_7struct_3ffiNtB5y_11StructArrayINtNtB3c_3ffi7FromFfiNtNtNtB3e_3ffi5array18InternalArrowArrayE12try_from_ffi0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_EB3e_.exit: ; preds = %bb.a, %bb.t
  %storemerge.i = phi i64 [ 1, %bb.t ], [ 0, %bb.a ], !dbg !4445
  store i64 %storemerge.i, ptr %0, align 8, !dbg !4445, !alias.scope !4275, !noalias !4279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4446
  ret void, !dbg !4447
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENCNvNtNtCs8774dFTUdNv_12polars_arrow3ffi6schema8to_dtypesa_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB2n_8try_folduNCINvNvB2n_12try_for_each4calllINtNtNtBc_3ops12control_flow11ControlFlowlENcNtB5Q_5Break0E0B5Q_E0IB5R_B5Q_EEB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4448 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4449), !dbg !4452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4453), !dbg !4456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4461), !dbg !4464
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65, !dbg !4471 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !4471, !range !1856, !alias.scope !4475, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1, !dbg !4471
  br i1 %i.c, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBQ_8adapters3map12map_try_foldReINtNtBa_6result6ResultlNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3l_lEENCNvNtNtCs8774dFTUdNv_12polars_arrow3ffi6schema8to_dtypesa_0NCINvXB1G_INtB1G_12GenericShuntINtB1E_3MapB3_B47_EIB2f_NtNtBa_7convert10InfallibleB2B_EEBK_8try_folduNCINvNvBK_12try_for_each4calllB3Z_NcNtB3Z_5Break0E0B3Z_E0E0B3k_EB4f_.exit, label %bb.b, !dbg !4471

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4476
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !dbg !4477, !alias.scope !4475, !nonnull !12, !noundef !12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4477
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !dbg !4477, !alias.scope !4475, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4478), !dbg !4481
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4483, !noalias !4484, !noundef !12 ; 5 uses
  %.promoted.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !4483, !noalias !4484 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i.i.i.i, !dbg !4486
  br i1 %i.i, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalcE7get_endCs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %.lr.ph.i.i.i.i, !dbg !4486

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.not.i.i.i.i = icmp ugt i64 %i.h, %.val1.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !4483, !noalias !4484 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  br i1 %.not.i.i.i.i, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalcE7get_endCs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %.lr.ph.split.i.i.i.i, !dbg !4499

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  tail call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i = load i8, ptr %i.p, align 1, !dbg !4500, !alias.scope !4483, !noalias !4484 ; 2 uses
  br label %bb.c, !dbg !4486

bb.c:                                             ; preds = %bb.h, %.lr.ph.split.i.i.i.i
  %i.q = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.r = sub nuw i64 %i.h, %i.q, !dbg !4502       ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.q, !dbg !4503 ; 2 uses
  %i.t = icmp samesign ult i64 %i.r, 16, !dbg !4507
  br i1 %i.t, label %.preheader.i.i.i.i.i, label %bb.d, !dbg !4507

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.r, 0, !dbg !4514
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !4514

bb.d:                                             ; preds = %bb.c
  %i.u = tail call { i64, i64 } @_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r), !dbg !4518, !noalias !4519
  br label %_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr6memchr.exit.i.i.i.i, !dbg !4518

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.r, %bb.e ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], !dbg !4520
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.e ], [ 1, %.lr.ph.i.i.i.i.i ], !dbg !4521
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0, !dbg !4522
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1, !dbg !4522
  br label %_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr6memchr.exit.i.i.i.i, !dbg !4522

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.e
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.aa, %bb.e ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.05.i.i.i.i.i, !dbg !4523
  %i.y = load i8, ptr %i.x, align 1, !dbg !4523, !alias.scope !4524, !noalias !4519, !noundef !12
  %i.z = icmp eq i8 %i.y, %.pre.i.i.i.i, !dbg !4523
  br i1 %i.z, label %._crit_edge.i.i.i.i.i, label %bb.e, !dbg !4523

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1, !dbg !4527 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.aa, %i.r, !dbg !4514
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !4514

_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.d
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.w, %._crit_edge.i.i.i.i.i ], [ %i.u, %bb.d ], !dbg !4522 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0, !dbg !4528
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !4529
  br i1 %i.ac, label %bb.f, label %bb.g, !dbg !4529

bb.f:                                             ; preds = %_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.ad = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1, !dbg !4528
  %i.ae = add i64 %i.q, 1, !dbg !4530
  %i.af = add i64 %i.ae, %i.ad, !dbg !4531        ; 7 uses
  store i64 %i.af, ptr %i.f, align 8, !dbg !4531, !alias.scope !4483, !noalias !4484
  %.not12.i.i.i.i = icmp ult i64 %i.af, %i.m, !dbg !4532
  %.not13.i.i.i.i = icmp ugt i64 %i.af, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not12.i.i.i.i, %.not13.i.i.i.i, !dbg !4532
  br i1 %or.cond.i.i.i.i, label %bb.h, label %bb.i, !dbg !4532

bb.g:                                             ; preds = %_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr6memchr.exit.i.i.i.i
  store i64 %i.h, ptr %i.f, align 8, !dbg !4533, !alias.scope !4483, !noalias !4484
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalcE7get_endCs8774dFTUdNv_12polars_arrow.exit.i.i.i, !dbg !4534

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ag = icmp ult i64 %i.h, %i.af, !dbg !4486
  br i1 %i.ag, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalcE7get_endCs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.c, !dbg !4486

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.m, !dbg !4535     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ah, !dbg !4536
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.j, i64 %i.m), !dbg !4545, !noalias !4484
  %i.aj = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !4545
  br i1 %i.aj, label %_RNvXs_NtNtCscgRAwXFJnXP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.h, !dbg !4559

_RNvXs_NtNtCscgRAwXFJnXP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.i
  %i.ak = load i64, ptr %0, align 8, !dbg !4560, !alias.scope !4475, !noundef !12 ; 2 uses
  %i.al = sub nuw i64 %i.ah, %i.ak, !dbg !4562
  store i64 %i.af, ptr %0, align 8, !dbg !4573, !alias.scope !4475
  br label %select.unfold.i, !dbg !4575

_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalcE7get_endCs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i, %bb.b
  store i8 1, ptr %i.a, align 1, !dbg !4576, !alias.scope !4579
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4582
  %i.an = load i8, ptr %i.am, align 8, !dbg !4582, !range !1856, !alias.scope !4579, !noundef !12
  %i.ao = trunc nuw i8 %i.an to i1, !dbg !4582
  %.pre.i2.i.i.i = load i64, ptr %0, align 8, !dbg !4583, !alias.scope !4579 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !4584, !alias.scope !4579 ; 2 uses
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i
  %or.cond.not.i.i.i.i = select i1 %i.ao, i1 true, i1 %.not.i3.i.i.i, !dbg !4582
  %i.ap = sub nuw i64 %.pre2.i.i.i.i, %.pre.i2.i.i.i, !dbg !4582
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBQ_8adapters3map12map_try_foldReINtNtBa_6result6ResultlNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3l_lEENCNvNtNtCs8774dFTUdNv_12polars_arrow3ffi6schema8to_dtypesa_0NCINvXB1G_INtB1G_12GenericShuntINtB1E_3MapB3_B47_EIB2f_NtNtBa_7convert10InfallibleB2B_EEBK_8try_folduNCINvNvBK_12try_for_each4calllB3Z_NcNtB3Z_5Break0E0B3Z_E0E0B3k_EB4f_.exit, !dbg !4585

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalcE7get_endCs8774dFTUdNv_12polars_arrow.exit.i.i.i, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %i.al, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %i.ap, %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalcE7get_endCs8774dFTUdNv_12polars_arrow.exit.i.i.i ], !dbg !4586 ; 5 uses
  %.pn.i = phi i64 [ %i.ak, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.pre.i2.i.i.i, %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalcE7get_endCs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i, !dbg !4587 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4588), !dbg !4591
  switch i64 %.sroa.4.1.i.i.i, label %thread-pre-split.i.i.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.j
  ], !dbg !4592

bb.j:                                             ; preds = %select.unfold.i
  %i.aq = load i8, ptr %.sroa.0.1.i.i.i, align 1, !dbg !4608, !alias.scope !4610, !noalias !4615, !noundef !12 ; 2 uses
  switch i8 %i.aq, label %bb.k [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ], !dbg !4608

thread-pre-split.i.i.i.i:                         ; preds = %select.unfold.i
  %.pr.i.i.i.i = load i8, ptr %.sroa.0.1.i.i.i, align 1, !dbg !4608, !alias.scope !4610, !noalias !4615
  br label %bb.k, !dbg !4608

bb.k:                                             ; preds = %thread-pre-split.i.i.i.i, %bb.j
  %i.ar = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.aq, %bb.j ], !dbg !4608
  switch i8 %i.ar, label %bb.r [
    i8 43, label %bb.l
    i8 45, label %bb.m
  ], !dbg !4608

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1, !dbg !4617
  %i.at = add nsw i64 %.sroa.4.1.i.i.i, -1, !dbg !4617
  br label %bb.r, !dbg !4618

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 1, !dbg !4619 ; 2 uses
  %i.av = add nsw i64 %.sroa.4.1.i.i.i, -1, !dbg !4619 ; 3 uses
  %i.aw = icmp samesign ult i64 %.sroa.4.1.i.i.i, 9, !dbg !4620
  br i1 %i.aw, label %.preheader118.i.i.i.i, label %.lr.ph.i.i.i12.i, !dbg !4625

.preheader118.i.i.i.i:                            ; preds = %bb.m
  %.not105139.i.i.i.i = icmp eq i64 %i.av, 0, !dbg !4626
  br i1 %.not105139.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph143.i.i.i.i, !dbg !4626

.loopexit.i.i.i.i:                                ; preds = %bb.p, %bb.q, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %.preheader.i.i.i.i, %.preheader118.i.i.i.i
  %.sroa.086.1.i.i.i.i = phi i32 [ %i.bw, %bb.q ], [ %i.ed, %bb.ab ], [ %i.cj, %bb.u ], [ 0, %.preheader.i.i.i.i ], [ 0, %.preheader118.i.i.i.i ], [ %i.cm, %bb.v ], [ %i.cu, %bb.w ], [ %i.db, %bb.x ], [ %i.di, %bb.y ], [ %i.dp, %bb.z ], [ %i.dw, %bb.aa ], [ %i.bk, %bb.p ], !dbg !4628
  %i.ax = zext i32 %.sroa.086.1.i.i.i.i to i64, !dbg !4629
  %i.ay = shl nuw i64 %i.ax, 32, !dbg !4629
  br label %_RNvMsp_NtCscgRAwXFJnXP_4core3numl16from_ascii_radix.exit.i.i.i, !dbg !4629

.lr.ph.i.i.i12.i:                                 ; preds = %bb.m, %bb.p
  %.sroa.0.1138.i.i.i.i = phi ptr [ %i.az, %bb.p ], [ %i.au, %bb.m ] ; 3 uses
  %.sroa.26.1137.i.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %i.av, %bb.m ]
  %.sroa.086.0136.i.i.i.i = phi i32 [ %i.bk, %bb.p ], [ 0, %bb.m ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i.i.i.i, i64 1, !dbg !4630
  %i.ba = add nsw i64 %.sroa.26.1137.i.i.i.i, -1, !dbg !4630 ; 2 uses
  %i.bb = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i.i.i.i, i32 10), !dbg !4632 ; 2 uses
  %i.bc = extractvalue { i32, i1 } %i.bb, 0, !dbg !4632
  %i.bd = extractvalue { i32, i1 } %i.bb, 1, !dbg !4632
  br i1 %i.bd, label %.loopexit114.sink.split.i.i.i.i, label %bb.n, !dbg !4641, !prof !1324

bb.n:                                             ; preds = %.lr.ph.i.i.i12.i
  %i.be = load i8, ptr %.sroa.0.1138.i.i.i.i, align 1, !dbg !4647, !alias.scope !4610, !noalias !4615, !noundef !12
  %i.bf = zext i8 %i.be to i32, !dbg !4649
  %i.bg = add nsw i32 %i.bf, -48, !dbg !4650      ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 10, !dbg !4660
  br i1 %i.bh, label %bb.o, label %.loopexit.i.i, !dbg !4662

end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtB1t_3ffi6schema15schema_childrens_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4callONtNtB2o_9generated11ArrowSchemaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4I_3VecB43_E14extend_trustedBN_E0E0EB1t_:bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow3ffi6schemaNtNtB6_9generated11ArrowSchemaNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.i unwind label %bb.g, !dbg !8255, !noalias !8254

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #25, !dbg !8257, !noalias !8254
  unreachable, !dbg !8257

bb.h:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !8258, !noalias !8254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8259, !noalias !8231
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !8260
  store ptr %i.i, ptr %i.m, align 8, !dbg !8267, !noalias !8270
  %i.n = add i64 %.val15.i, 1, !dbg !8275         ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !8278 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.f, !dbg !8281
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_ONtNtNtBW_3ffi9generated11ArrowSchemauNCNvNtB3e_6schema15schema_childrens_0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4Y_3VecB39_E14extend_trustedINtB2B_3MapBF_B3L_EE0E0E0EBW_.exit, label %bb.d, !dbg !8281

bb.i:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.k, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !8282, !noalias !8239
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !8291

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_ONtNtNtBW_3ffi9generated11ArrowSchemauNCNvNtB3e_6schema15schema_childrens_0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4Y_3VecB39_E14extend_trustedINtB2B_3MapBF_B3L_EE0E0E0EBW_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.h ], !dbg !8292
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8292, !noalias !8239
  ret void, !dbg !8297
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtB1t_5array7builder12make_builder0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB2m_12ArrayBuilderEL_ENCINvMsj_NtB46_3vecINtB58_3VecB41_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8298 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !8299 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !8299
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8299 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !8299
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !8299
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !8302
  %i.a = icmp eq ptr %0, %1, !dbg !8311
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtBW_5array7builder12ArrayBuilderEL_EuNCNvB3L_12make_builder0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtB3e_3vecINtB5o_3VecB39_E14extend_trustedINtB2B_3MapBF_B4p_EE0E0E0EBW_.exit, label %bb.b, !dbg !8312

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !8313
  %i.c = ptrtoint ptr %0 to i64, !dbg !8313
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !8313
  %i.e = udiv exact i64 %i.d, 72, !dbg !8313
  br label %bb.c, !dbg !8325

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], !dbg !8326 ; 2 uses
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !8327
  %i.g = invoke { ptr, ptr } @_RNvNtNtCs8774dFTUdNv_12polars_arrow5array7builder12make_builder(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f)
          to label %bb.d unwind label %bb.e, !dbg !8331, !noalias !8339 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { ptr, ptr } %i.g, 0, !dbg !8342
  %i.i = extractvalue { ptr, ptr } %i.g, 1, !dbg !8342
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !8343 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !dbg !8350, !noalias !8353
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !8350
  store ptr %i.i, ptr %i.k, align 8, !dbg !8350, !noalias !8353
  %i.l = add i64 %.val15.i, 1, !dbg !8362         ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1, !dbg !8365 ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e, !dbg !8368
  br i1 %i.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtBW_5array7builder12ArrayBuilderEL_EuNCNvB3L_12make_builder0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtB3e_3vecINtB5o_3VecB39_E14extend_trustedINtB2B_3MapBF_B4p_EE0E0E0EBW_.exit, label %bb.c, !dbg !8368

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !8369, !noalias !8339
  resume { ptr, i32 } %i.o, !dbg !8378

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtBW_5array7builder12ArrayBuilderEL_EuNCNvB3L_12make_builder0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtB3e_3vecINtB5o_3VecB39_E14extend_trustedINtB2B_3MapBF_B4p_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ], !dbg !8379
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8379, !noalias !8339
  ret void, !dbg !8385
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtB1t_2io3ipc5write17default_ipc_field0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callNtB2o_8IpcFieldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4v_3VecB47_E14extend_trustedBN_E0E0EB1t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8386 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8387, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8387
  %i.d = load ptr, ptr %i.c, align 8, !dbg !8387, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8388
  %i.f = load ptr, ptr %i.e, align 8, !dbg !8388, !nonnull !12, !align !686, !noundef !12
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !8389 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8389
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8389 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8389
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !8389
  %i.g = icmp eq ptr %i.b, %i.d, !dbg !8392
  br i1 %i.g, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_field0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4L_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit, label %bb.b, !dbg !8399

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64, !dbg !8400
  %i.i = ptrtoint ptr %i.b to i64, !dbg !8400
  %i.j = sub nuw i64 %i.h, %i.i, !dbg !8400
  %i.k = udiv exact i64 %i.j, 72, !dbg !8400
  br label %bb.c, !dbg !8412

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ], !dbg !8413 ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.01.0.i, !dbg !8414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8418, !noalias !8421
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc5write17default_ipc_field(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.d unwind label %bb.e, !dbg !8427, !noalias !8432

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !8433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !8440, !noalias !8443
  %i.n = add i64 %.val15.i, 1, !dbg !8448         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8451, !noalias !8421
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !8452 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k, !dbg !8455
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_field0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4L_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit, label %bb.c, !dbg !8455

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !8456, !noalias !8432
  resume { ptr, i32 } %i.q, !dbg !8465

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_field0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4L_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ], !dbg !8466
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8466, !noalias !8432
  ret void, !dbg !8472
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtB1t_2io3ipc5write17default_ipc_fields_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB36_8for_each4callNtB2o_8IpcFieldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4x_3VecB49_E14extend_trustedBN_E0E0EB1t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8473 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8474, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8474
  %i.d = load ptr, ptr %i.c, align 8, !dbg !8474, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8475
  %i.f = load ptr, ptr %i.e, align 8, !dbg !8475, !nonnull !12, !align !686, !noundef !12
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !8476 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8476
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !8476 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8476
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !8476
  %i.g = icmp eq ptr %i.b, %i.d, !dbg !8479
  br i1 %i.g, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_fields_0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4N_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit, label %bb.b, !dbg !8486

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64, !dbg !8487
  %i.i = ptrtoint ptr %i.b to i64, !dbg !8487
  %i.j = sub nuw i64 %i.h, %i.i, !dbg !8487
  %i.k = udiv exact i64 %i.j, 72, !dbg !8487
  br label %bb.c, !dbg !8499

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ], !dbg !8500 ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.01.0.i, !dbg !8501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8505, !noalias !8508
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc5write17default_ipc_field(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.d unwind label %bb.e, !dbg !8514, !noalias !8517

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !8518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !8525, !noalias !8528
  %i.n = add i64 %.val15.i, 1, !dbg !8533         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8536, !noalias !8508
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !8537 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k, !dbg !8540
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_fields_0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4N_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit, label %bb.c, !dbg !8540

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !8541, !noalias !8517
  resume { ptr, i32 } %i.q, !dbg !8550

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_NtNtNtBW_2io3ipc8IpcFielduNCNvNtB3b_5write17default_ipc_fields_0NCINvNvB1L_8for_each4callB39_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4N_3VecB39_E14extend_trustedINtB2B_3MapBF_B3z_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ], !dbg !8551
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !8551, !noalias !8517
  ret void, !dbg !8557
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1t_2io4avro4read11deserialize12make_mutable0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3e_8try_folduNCINvNvB3e_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1t_5array12MutableArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6G_ENcNtB7M_5Break0E0B7M_E0IB7N_B7M_EEB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8558 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8559), !dbg !8562
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8563), !dbg !8562
  %i.b = load ptr, ptr %1, align 8, !dbg !8565, !alias.scope !8572, !noalias !8559, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !8575
  %i.d = load ptr, ptr %i.c, align 8, !dbg !8575, !alias.scope !8572, !noalias !8559, !nonnull !12, !noundef !12
  %i.e = icmp eq ptr %i.b, %i.d, !dbg !8577
  br i1 %i.e, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_.exit, label %bb.b, !dbg !8581

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !8582
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !8583
  store ptr %i.g, ptr %1, align 8, !dbg !8586, !alias.scope !8572, !noalias !8559
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !8587
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !8587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8588), !dbg !8587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8591
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !dbg !8592, !noalias !8595, !nonnull !12, !align !686, !noundef !12
  %i.i = load i64, ptr %.val.i.i, align 8, !dbg !8597, !noalias !8601, !noundef !12
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io4avro4read11deserialize12make_mutable(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, i64 noundef %i.i), !dbg !8605, !noalias !8606
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !8607, !noalias !8595 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8607
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !8607, !noalias !8595 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8607
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !8607, !noalias !8595 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8608), !dbg !8607
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !8611
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !8615

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8, !dbg !8616, !range !2213, !alias.scope !8619, !noalias !8622, !noundef !12
  %i.k = icmp eq i64 %i.j, 18, !dbg !8616
  br i1 %i.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, label %bb.d, !dbg !8616

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.f, !dbg !8624, !noalias !8626

bb.e:                                             ; preds = %bb.b
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !8627
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !8627, !alias.scope !8632, !noalias !8633
  br label %bb.g, !dbg !8634

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !8635, !noalias !8622
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !8635
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !8635, !noalias !8622
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !8635
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !8635, !noalias !8622
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !8635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !8635, !noalias !8595
  resume { ptr, i32 } %i.l, !dbg !8636

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !8635, !noalias !8622
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !8635
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !8635, !noalias !8622
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !8635
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !8635, !noalias !8622
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !8635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !8635, !noalias !8595
  br label %bb.g, !dbg !8637

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !8638, !alias.scope !8632, !noalias !8633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8639, !noalias !8591
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !8640, !alias.scope !8642, !noalias !8645, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !8640
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !8640, !alias.scope !8642, !noalias !8645
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !8640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !8647
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !8647
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8648
  store ptr %5, ptr %i.m, align 8, !dbg !8648, !alias.scope !8652, !noalias !8563
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8648
  store ptr %6, ptr %i.n, align 8, !dbg !8648, !alias.scope !8652, !noalias !8563
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_.exit, !dbg !8655

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array12MutableArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3x_EENCNvNtNtNtNtBP_2io4avro4read11deserialize12make_mutable0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B6b_EIB3c_NtNtBa_7convert10InfallibleB4C_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B60_NcNtB60_5Break0E0B60_E0E0B5l_EBP_.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !8656
  store i64 %storemerge.i, ptr %0, align 8, !dbg !8656, !alias.scope !8559, !noalias !8563
  ret void, !dbg !8657
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtNtB1t_2io4avro4read11deserialize17deserialize_value0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3j_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4w_3VecbE14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !8658 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !8659 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !8659
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !8659 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !8659
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !8659 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !8662
  %i.a = icmp eq ptr %0, %1, !dbg !8671
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_.exit, label %iter.check, !dbg !8672

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !8673
  %i.c = ptrtoint ptr %0 to i64, !dbg !8673
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !8673       ; 4 uses
  %i.e = udiv i64 %i.d, 72, !dbg !8673            ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 576, !dbg !8685
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !8685

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !8685
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !8685
  %scevgep2 = getelementptr i8, ptr %i.f, i64 %i.e, !dbg !8685
  %scevgep3 = getelementptr i8, ptr %0, i64 64, !dbg !8685
  %i.g = getelementptr i8, ptr %0, i64 %i.d, !dbg !8685
  %scevgep4 = getelementptr i8, ptr %i.g, i64 -7, !dbg !8685
  %bound0 = icmp ult ptr %scevgep, %scevgep4, !dbg !8685
  %bound1 = icmp ult ptr %scevgep3, %scevgep2, !dbg !8685
  %found.conflict = and i1 %bound0, %bound1, !dbg !8685
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !8686

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i64 %i.d, 1152, !dbg !8685
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph, !dbg !8685

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %i.e, 8
  %n.vec = and i64 %i.e, 288230376151711728       ; 5 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !8685

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !8686 ; 18 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index, !dbg !8687
  %i.aa = getelementptr i8, ptr %i.k, i64 64, !dbg !8691
  %i.ab = getelementptr i8, ptr %i.l, i64 136, !dbg !8691
  %i.ac = getelementptr i8, ptr %i.m, i64 208, !dbg !8691
  %i.ad = getelementptr i8, ptr %i.n, i64 280, !dbg !8691
  %i.ae = getelementptr i8, ptr %i.o, i64 352, !dbg !8691
  %i.af = getelementptr i8, ptr %i.p, i64 424, !dbg !8691
  %i.ag = getelementptr i8, ptr %i.q, i64 496, !dbg !8691
  %i.ah = getelementptr i8, ptr %i.r, i64 568, !dbg !8691
  %i.ai = getelementptr i8, ptr %i.s, i64 640, !dbg !8691
  %i.aj = getelementptr i8, ptr %i.t, i64 712, !dbg !8691
  %i.ak = getelementptr i8, ptr %i.u, i64 784, !dbg !8691
  %i.al = getelementptr i8, ptr %i.v, i64 856, !dbg !8691
  %i.am = getelementptr i8, ptr %i.w, i64 928, !dbg !8691
  %i.an = getelementptr i8, ptr %i.x, i64 1000, !dbg !8691
  %i.ao = getelementptr i8, ptr %i.y, i64 1072, !dbg !8691
  %i.ap = getelementptr i8, ptr %i.z, i64 1144, !dbg !8691
  %i.aq = load i8, ptr %i.aa, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.ar = load i8, ptr %i.ab, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.as = load i8, ptr %i.ac, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.at = load i8, ptr %i.ad, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.au = load i8, ptr %i.ae, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.av = load i8, ptr %i.af, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.aw = load i8, ptr %i.ag, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.ax = load i8, ptr %i.ah, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.ay = load i8, ptr %i.ai, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.az = load i8, ptr %i.aj, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.ba = load i8, ptr %i.ak, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.bb = load i8, ptr %i.al, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.bc = load i8, ptr %i.am, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.bd = load i8, ptr %i.an, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.be = load i8, ptr %i.ao, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.bf = load i8, ptr %i.ap, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.bg = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %i.bh = insertelement <16 x i8> %i.bg, i8 %i.ar, i64 1
  %i.bi = insertelement <16 x i8> %i.bh, i8 %i.as, i64 2
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 3
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 4
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 5
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 6
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 7
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 8
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 9
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 10
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 11
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 12
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 13
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 14
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 15
  %i.bw = getelementptr i8, ptr %i.j, i64 %index, !dbg !8698
  store <16 x i8> %i.bv, ptr %i.bw, align 1, !dbg !8707, !alias.scope !8710, !noalias !8712
  %index.next = add nuw i64 %index, 16, !dbg !8686 ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec, !dbg !8719
  br i1 %i.bx, label %middle.block, label %vector.body, !dbg !8719, !llvm.loop !8720

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !8719
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_.exit, label %vec.epilog.iter.check, !dbg !8719

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8721

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !8686
  %n.vec6 = and i64 %i.e, 288230376151711736      ; 4 uses
  %i.by = add i64 %.sroa.5.0.copyload, %n.vec6    ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !8686 ; 10 uses
  %i.ca = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !8687
  %i.cb = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !8687
  %i.cc = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !8687
  %i.cd = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !8687
  %i.ce = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !8687
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !8687
  %i.cg = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !8687
  %i.ch = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %index7, !dbg !8687
  %i.ci = getelementptr i8, ptr %i.ca, i64 64, !dbg !8691
  %i.cj = getelementptr i8, ptr %i.cb, i64 136, !dbg !8691
  %i.ck = getelementptr i8, ptr %i.cc, i64 208, !dbg !8691
  %i.cl = getelementptr i8, ptr %i.cd, i64 280, !dbg !8691
  %i.cm = getelementptr i8, ptr %i.ce, i64 352, !dbg !8691
  %i.cn = getelementptr i8, ptr %i.cf, i64 424, !dbg !8691
  %i.co = getelementptr i8, ptr %i.cg, i64 496, !dbg !8691
  %i.cp = getelementptr i8, ptr %i.ch, i64 568, !dbg !8691
  %i.cq = load i8, ptr %i.ci, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.cr = load i8, ptr %i.cj, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.cs = load i8, ptr %i.ck, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.ct = load i8, ptr %i.cl, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.cu = load i8, ptr %i.cm, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.cv = load i8, ptr %i.cn, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.cw = load i8, ptr %i.co, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.cx = load i8, ptr %i.cp, align 8, !dbg !8691, !range !1856, !alias.scope !8692, !noalias !8695, !noundef !12
  %i.cy = insertelement <8 x i8> poison, i8 %i.cq, i64 0
  %i.cz = insertelement <8 x i8> %i.cy, i8 %i.cr, i64 1
  %i.da = insertelement <8 x i8> %i.cz, i8 %i.cs, i64 2
  %i.db = insertelement <8 x i8> %i.da, i8 %i.ct, i64 3
  %i.dc = insertelement <8 x i8> %i.db, i8 %i.cu, i64 4
  %i.dd = insertelement <8 x i8> %i.dc, i8 %i.cv, i64 5
  %i.de = insertelement <8 x i8> %i.dd, i8 %i.cw, i64 6
  %i.df = insertelement <8 x i8> %i.de, i8 %i.cx, i64 7
  %i.dg = getelementptr i8, ptr %i.bz, i64 %index7, !dbg !8698
  store <8 x i8> %i.df, ptr %i.dg, align 1, !dbg !8707, !alias.scope !8710, !noalias !8712
  %index.next8 = add nuw i64 %index7, 8, !dbg !8686 ; 2 uses
  %i.dh = icmp eq i64 %index.next8, %n.vec6, !dbg !8719
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !8719, !llvm.loop !8722

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.e, %n.vec6, !dbg !8719
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_buNCNvNtNtNtNtBW_2io4avro4read11deserialize17deserialize_value0NCINvNvB1L_8for_each4callbNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecbE14extend_trustedINtB2B_3MapBF_B3b_EE0E0E0EBW_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !8719

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !8719         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !8719
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !8719

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.di = phi i64 [ %i.dm, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !8687 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.dn, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !8686 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dj = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !8687
  %i.dk = getelementptr i8, ptr %i.dj, i64 64, !dbg !8691
  %.val16.i.prol = load i8, ptr %i.dk, align 8, !dbg !8691, !range !1856, !noalias !8695, !noundef !12
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.di, !dbg !8698
  store i8 %.val16.i.prol, ptr %i.dl, align 1, !dbg !8707, !noalias !8723
  %i.dm = add i64 %i.di, 1, !dbg !8724            ; 3 uses
  %i.dn = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !8727 ; 2 uses
end_hunk_2
