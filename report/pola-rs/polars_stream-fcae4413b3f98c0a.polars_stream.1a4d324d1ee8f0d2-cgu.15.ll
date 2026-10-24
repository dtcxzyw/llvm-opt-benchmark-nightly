Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.15?download=true
inline.NumInlined: 9921
inline.NumDeleted: 5523
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_3zip3ZipIBO_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB3o_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB3i_uENtB4k_9SchemaExt11iter_fields0EINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionB2t_EEENCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0ENCINvXs7_B4A_B4x_INtNtNtBa_6traits7collect12FromIteratorNtNtB3m_5field5FieldE9from_iterBX_E0ENtNtB8p_8iterator8Iterator4folduNCINvNvB9y_8for_each4callTB2t_B3i_ENCINvXsb_B1Q_INtB1Q_8IndexMapB2t_B3i_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB8n_6ExtendBat_E6extendBN_E0E0EB6X_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !45947, !noalias !45911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !45948, !noalias !45911
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.s)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2z_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2t_uENtB3v_9SchemaExt11iter_fields0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i unwind label %bb.f, !dbg !45949, !noalias !45914

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 23, !dbg !45950
  %i.aa = load i8, ptr %i.z, align 1, !dbg !45950, !range !2242, !alias.scope !45915, !noalias !45911, !noundef !1880
  %i.ab = icmp eq i8 %i.aa, -40, !dbg !45951
  br i1 %i.ab, label %bb.g, label %common.resume.i.i.i.i, !dbg !45951, !prof !2009

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume.i.i.i.i unwind label %bb.h, !dbg !45952, !noalias !45914

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #51, !dbg !45953, !noalias !45914
  unreachable, !dbg !45953

common.resume.i.i.i.i:                            ; preds = %bb.v, %bb.r, %bb.l, %bb.g, %bb.f
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.y, %bb.f ], [ %i.y, %bb.g ], [ %i.aq, %bb.r ], [ %i.as, %bb.v ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i, !dbg !45954

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2z_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2t_uENtB3v_9SchemaExt11iter_fields0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.415.48..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !45955, !noalias !45916
  %.sroa.014.0.copyload.i.i.i.i.i = load i8, ptr %i.j, align 16, !dbg !45955, !noalias !45917 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.415.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.415.0..sroa_idx.i.i.i.i.i, i64 47, i1 false), !dbg !45955, !noalias !45916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !45956, !noalias !45911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !45956, !noalias !45911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !45957, !noalias !45910
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.014.0.copyload.i.i.i.i.i, 31, !dbg !45958
  br i1 %.not.i.i.i.i.i, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB3k_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB3e_uENtB4g_9SchemaExt11iter_fields0EINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionB2p_EEENCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB1u_8map_foldNtNtB3i_5field5FieldTB2p_B3e_EuNCINvXs7_B4w_B4t_INtNtB83_7collect12FromIteratorB8V_E9from_iterBV_E0NCINvNvB7Z_8for_each4callB9f_NCINvXsb_B1M_INtB1M_8IndexMapB2p_B3e_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB9K_6ExtendB9f_E6extendIB1s_BV_B9q_EE0E0E0EB6T_.exit, label %bb.i, !dbg !45959

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2z_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2t_uENtB3v_9SchemaExt11iter_fields0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx13.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.415.i.i.i.i.i, i64 79, i1 false), !dbg !45960, !noalias !45916
  store i8 %.sroa.014.0.copyload.i.i.i.i.i, ptr %i.l, align 16, !dbg !45961, !noalias !45916
  %i.ad = icmp eq ptr %i.r, %.sroa.6.0.copyload.i, !dbg !45962
  br i1 %i.ad, label %bb.j, label %bb.n, !dbg !45963

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 71, !dbg !45964
  %i.af = load i8, ptr %i.ae, align 1, !dbg !45964, !range !2242, !alias.scope !45918, !noalias !45916, !noundef !1880
  %i.ag = icmp eq i8 %i.af, -40, !dbg !45965
  br i1 %i.ag, label %bb.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, !dbg !45965, !prof !2009

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !45966
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i unwind label %bb.l, !dbg !45967, !noalias !45919

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.l) #56
          to label %common.resume.i.i.i.i unwind label %bb.m, !dbg !45966, !noalias !45919

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #51, !dbg !45966, !noalias !45919
  unreachable, !dbg !45966

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.l), !dbg !45966, !noalias !45919
  br label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB3k_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB3e_uENtB4g_9SchemaExt11iter_fields0EINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionB2p_EEENCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB1u_8map_foldNtNtB3i_5field5FieldTB2p_B3e_EuNCINvXs7_B4w_B4t_INtNtB83_7collect12FromIteratorB8V_E9from_iterBV_E0NCINvNvB7Z_8for_each4callB9f_NCINvXsb_B1M_INtB1M_8IndexMapB2p_B3e_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB9K_6ExtendB9f_E6extendIB1s_BV_B9q_EE0E0E0EB6T_.exit, !dbg !45968

bb.n:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !45969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !45970, !noalias !45920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.49.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.415.i.i.i.i.i, i64 79, i1 false), !dbg !45971, !noalias !45922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !45968, !noalias !45916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415.i.i.i.i.i), !dbg !45972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !45973, !noalias !45922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !45974, !noalias !45923
  store i8 %.sroa.014.0.copyload.i.i.i.i.i, ptr %i.g, align 16, !dbg !45970, !noalias !45924
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 23, !dbg !45975
  %i.am = load i8, ptr %i.al, align 1, !dbg !45975, !range !2276, !noalias !45925, !noundef !1880 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.am, -38, !dbg !45975
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o, !dbg !45976

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !45977, !noalias !45920
  %i.an = icmp eq i8 %i.am, -40, !dbg !45978
  br i1 %i.an, label %bb.t, label %bb.u, !dbg !45978

bb.p:                                             ; preds = %bb.n
  %i.ao = load i8, ptr %i.p, align 1, !dbg !45979, !range !2242, !alias.scope !45926, !noalias !45920, !noundef !1880
  %i.ap = icmp eq i8 %i.ao, -40, !dbg !45980
  br i1 %i.ap, label %bb.q, label %_RNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0B9_.exit.thread.i.i.i.i.i, !dbg !45980, !prof !2009

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0B9_.exit.thread.i.i.i.i.i unwind label %bb.r, !dbg !45981, !noalias !45925

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.g) #56
          to label %common.resume.i.i.i.i unwind label %bb.s, !dbg !45982, !noalias !45925

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #51, !dbg !45982, !noalias !45925
  unreachable, !dbg !45982

_RNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0B9_.exit.thread.i.i.i.i.i: ; preds = %bb.q, %bb.p
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.g), !dbg !45982, !noalias !45925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !45983, !noalias !45920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !45984, !noalias !45923
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRINtNtBa_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEB1b_uNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0NCINvNtB6_3map8map_foldB1b_TB2r_NtNtB1f_5dtype8DataTypeEuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5G_6SchemaB58_uEINtNtNtB8_6traits7collect12FromIteratorB1b_E9from_iterINtB4_9FilterMapINtNtB6_3zip3ZipINtB4H_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB2r_B58_ENCNvXNtB1h_6schemaB6i_NtB97_9SchemaExt11iter_fields0EINtNtNtBa_5slice4iter4IterB25_EEB3n_EE0NCINvNvNtNtB6H_8iterator8Iterator8for_each4callB53_NCINvXsb_B8g_INtB8g_8IndexMapB2r_B58_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB6F_6ExtendB53_E6extendIB81_B7u_B5x_EE0E0E0E0B3x_.exit.i.i.i.i, !dbg !45985

bb.t:                                             ; preds = %bb.o
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %_RNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0B9_.exit.i.i.i.i.i unwind label %bb.v, !dbg !45986, !noalias !45925

bb.u:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !45987, !noalias !45925
  br label %_RNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0B9_.exit.i.i.i.i.i, !dbg !45988

bb.v:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(80) %i.g) #56
          to label %common.resume.i.i.i.i unwind label %bb.w, !dbg !45983, !noalias !45925

bb.w:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #51, !dbg !45989, !noalias !45925
  unreachable, !dbg !45989

_RNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0B9_.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !45990, !noalias !45920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !45991, !noalias !45920
  call void @_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5fieldNtB4_5Field9with_name(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(80) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f), !dbg !45992, !noalias !45927
  %.pre.i.i.i.i.i = load i8, ptr %i.h, align 16, !dbg !45973, !range !2211, !noalias !45923
  %i.au = icmp eq i8 %.pre.i.i.i.i.i, 31, !dbg !45973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !45983, !noalias !45920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !45984, !noalias !45923
  br i1 %i.au, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRINtNtBa_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEB1b_uNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0NCINvNtB6_3map8map_foldB1b_TB2r_NtNtB1f_5dtype8DataTypeEuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5G_6SchemaB58_uEINtNtNtB8_6traits7collect12FromIteratorB1b_E9from_iterINtB4_9FilterMapINtNtB6_3zip3ZipINtB4H_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB2r_B58_ENCNvXNtB1h_6schemaB6i_NtB97_9SchemaExt11iter_fields0EINtNtNtBa_5slice4iter4IterB25_EEB3n_EE0NCINvNvNtNtB6H_8iterator8Iterator8for_each4callB53_NCINvXsb_B8g_INtB8g_8IndexMapB2r_B58_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB6F_6ExtendB53_E6extendIB81_B7u_B5x_EE0E0E0E0B3x_.exit.i.i.i.i, label %bb.x, !dbg !45985

bb.x:                                             ; preds = %_RNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0B9_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !45993, !noalias !45928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !45993, !noalias !45928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 16 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !45993, !noalias !45923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !45994, !noalias !45923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !45995, !noalias !45929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !45996, !noalias !45929
  call void @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.c), !dbg !45997, !noalias !45930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false), !dbg !45996, !noalias !45929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !45998, !noalias !45929
  %i.av = load i8, ptr %i.b, align 16, !dbg !45999, !range !2211, !alias.scope !45931, !noalias !45929, !noundef !1880
  %i.aw = icmp eq i8 %i.av, 31, !dbg !45999
  br i1 %i.aw, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtBY_5dtype8DataTypeEuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB3a_6SchemaB2D_uEINtNtNtB8_6traits7collect12FromIteratorBU_E9from_iterINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtB4_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1O_B2D_ENCNvXNtB10_6schemaB3M_NtB6N_9SchemaExt11iter_fields0EINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionB1O_EEENCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0EE0NCINvNvNtNtB4b_8iterator8Iterator8for_each4callB1N_NCINvXsb_B5W_INtB5W_8IndexMapB1O_B2D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB49_6ExtendB1N_E6extendIB5I_B4X_B31_EE0E0E0B8C_.exit.i.i.i.i.i, label %bb.y, !dbg !45999

bb.y:                                             ; preds = %bb.x
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.b), !dbg !45999, !noalias !45930
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtBY_5dtype8DataTypeEuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB3a_6SchemaB2D_uEINtNtNtB8_6traits7collect12FromIteratorBU_E9from_iterINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtB4_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1O_B2D_ENCNvXNtB10_6schemaB3M_NtB6N_9SchemaExt11iter_fields0EINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionB1O_EEENCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0EE0NCINvNvNtNtB4b_8iterator8Iterator8for_each4callB1N_NCINvXsb_B5W_INtB5W_8IndexMapB1O_B2D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB49_6ExtendB1N_E6extendIB5I_B4X_B31_EE0E0E0B8C_.exit.i.i.i.i.i, !dbg !45999

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtBY_5dtype8DataTypeEuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB3a_6SchemaB2D_uEINtNtNtB8_6traits7collect12FromIteratorBU_E9from_iterINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtB4_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1O_B2D_ENCNvXNtB10_6schemaB3M_NtB6N_9SchemaExt11iter_fields0EINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionB1O_EEENCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0EE0NCINvNvNtNtB4b_8iterator8Iterator8for_each4callB1N_NCINvXsb_B5W_INtB5W_8IndexMapB1O_B2D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB49_6ExtendB1N_E6extendIB5I_B4X_B31_EE0E0E0B8C_.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !46000, !noalias !45929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !46001, !noalias !45928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !46001, !noalias !45928
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRINtNtBa_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEB1b_uNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0NCINvNtB6_3map8map_foldB1b_TB2r_NtNtB1f_5dtype8DataTypeEuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5G_6SchemaB58_uEINtNtNtB8_6traits7collect12FromIteratorB1b_E9from_iterINtB4_9FilterMapINtNtB6_3zip3ZipINtB4H_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB2r_B58_ENCNvXNtB1h_6schemaB6i_NtB97_9SchemaExt11iter_fields0EINtNtNtBa_5slice4iter4IterB25_EEB3n_EE0NCINvNvNtNtB6H_8iterator8Iterator8for_each4callB53_NCINvXsb_B8g_INtB8g_8IndexMapB2r_B58_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB6F_6ExtendB53_E6extendIB81_B7u_B5x_EE0E0E0E0B3x_.exit.i.i.i.i, !dbg !46002

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRINtNtBa_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEB1b_uNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0NCINvNtB6_3map8map_foldB1b_TB2r_NtNtB1f_5dtype8DataTypeEuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5G_6SchemaB58_uEINtNtNtB8_6traits7collect12FromIteratorB1b_E9from_iterINtB4_9FilterMapINtNtB6_3zip3ZipINtB4H_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB2r_B58_ENCNvXNtB1h_6schemaB6i_NtB97_9SchemaExt11iter_fields0EINtNtNtBa_5slice4iter4IterB25_EEB3n_EE0NCINvNvNtNtB6H_8iterator8Iterator8for_each4callB53_NCINvXsb_B8g_INtB8g_8IndexMapB2r_B58_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB6F_6ExtendB53_E6extendIB81_B7u_B5x_EE0E0E0E0B3x_.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtBY_5dtype8DataTypeEuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB3a_6SchemaB2D_uEINtNtNtB8_6traits7collect12FromIteratorBU_E9from_iterINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtB4_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB1O_B2D_ENCNvXNtB10_6schemaB3M_NtB6N_9SchemaExt11iter_fields0EINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionB1O_EEENCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0EE0NCINvNvNtNtB4b_8iterator8Iterator8for_each4callB1N_NCINvXsb_B5W_INtB5W_8IndexMapB1O_B2D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB49_6ExtendB1N_E6extendIB5I_B4X_B31_EE0E0E0B8C_.exit.i.i.i.i.i, %_RNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0B9_.exit.i.i.i.i.i, %_RNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0B9_.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !46003, !noalias !45922
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415.i.i.i.i.i), !dbg !45935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !45935, !noalias !45932
  %i.ax = icmp eq ptr %i.t, %.sroa.4.0.copyload.i, !dbg !45936
  br i1 %i.ax, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB3k_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB3e_uENtB4g_9SchemaExt11iter_fields0EINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionB2p_EEENCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB1u_8map_foldNtNtB3i_5field5FieldTB2p_B3e_EuNCINvXs7_B4w_B4t_INtNtB83_7collect12FromIteratorB8V_E9from_iterBV_E0NCINvNvB7Z_8for_each4callB9f_NCINvXsb_B1M_INtB1M_8IndexMapB2p_B3e_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB9K_6ExtendB9f_E6extendIB1s_BV_B9q_EE0E0E0EB6T_.exit, label %bb.b, !dbg !45937

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtB8_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB3k_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB3e_uENtB4g_9SchemaExt11iter_fields0EINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionB2p_EEENCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB1u_8map_foldNtNtB3i_5field5FieldTB2p_B3e_EuNCINvXs7_B4w_B4t_INtNtB83_7collect12FromIteratorB8V_E9from_iterBV_E0NCINvNvB7Z_8for_each4callB9f_NCINvXsb_B1M_INtB1M_8IndexMapB2p_B3e_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB9K_6ExtendB9f_E6extendIB1s_BV_B9q_EE0E0E0EB6T_.exit: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2z_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2t_uENtB3v_9SchemaExt11iter_fields0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldTNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRINtNtBa_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEB1b_uNCNvNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes5joins9equi_join13select_schema0NCINvNtB6_3map8map_foldB1b_TB2r_NtNtB1f_5dtype8DataTypeEuNCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5G_6SchemaB58_uEINtNtNtB8_6traits7collect12FromIteratorB1b_E9from_iterINtB4_9FilterMapINtNtB6_3zip3ZipINtB4H_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB2r_B58_ENCNvXNtB1h_6schemaB6i_NtB97_9SchemaExt11iter_fields0EINtNtNtBa_5slice4iter4IterB25_EEB3n_EE0NCINvNvNtNtB6H_8iterator8Iterator8for_each4callB53_NCINvXsb_B8g_INtB8g_8IndexMapB2r_B58_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB6F_6ExtendB53_E6extendIB81_B7u_B5x_EE0E0E0E0B3x_.exit.i.i.i.i, %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !45968, !noalias !45916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415.i.i.i.i.i), !dbg !45972
  ret void, !dbg !46004
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_3ops5range5RangejENCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0ENCB1V_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB45_13FlattenCompatppE9iter_fold7flattenIBO_INtNtB8_9enumerate9EnumerateIBO_B1r_NCNvB1X_11split_ranges_0EENCNCB1V_s_00EuNCINvNvXsi_B45_B4i_B3g_4fold7flattenB4Z_uNCINvNvB3g_8for_each4callTB1r_jENCINvNvNtB3k_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1r_EIB8e_jEEB7l_E0E0E0E0ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !46005 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !46150
  %i.e = load i64, ptr %i.d, align 8, !dbg !46150, !noundef !1880
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46128), !dbg !46151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !46152
  %i.g = load i64, ptr %i.f, align 8, !dbg !46152, !alias.scope !46128, !noundef !1880 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !46152
  %i.i = load i64, ptr %i.h, align 8, !dbg !46152, !alias.scope !46128, !noundef !1880 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !dbg !46153, !alias.scope !46128
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !46153
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !46153, !alias.scope !46128 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !46153
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !46153, !alias.scope !46128 ; 6 uses
  %i.j = icmp ult i64 %i.g, %i.i, !dbg !46154
  br i1 %i.j, label %.lr.ph.i.i, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_3ops5range5RangejENCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldTB1b_jEINtB3z_3MapINtNtB8_9enumerate9EnumerateIB3Z_B1b_NCNvB1H_11split_ranges_0EENCNCB1F_s_00EuNCB1F_s_0NCINvNvMsg_NtB8_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB3Y_uNCINvNvXsi_B5I_B5V_B2Q_4fold7flattenB3Y_uNCINvNvB2Q_8for_each4callB3R_NCINvNvNtB2U_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1b_EIB8B_jEEB3R_E0E0E0E0E0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !46155

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !46153
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !46153, !alias.scope !46128
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !46153
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !46153, !alias.scope !46128
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !46153
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !46153, !alias.scope !46128
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !46155

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldjTINtNtNtBa_3ops5range5RangejEjEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0NCINvNtB6_3map8map_foldB1b_INtB2Y_3MapINtNtB6_9enumerate9EnumerateIB3l_B1c_NCNvB1L_11split_ranges_0EENCNCB1J_s_00EuNCB1J_s_0NCINvNvMsg_NtB6_7flattenINtB54_13FlattenCompatppE9iter_fold7flattenB3k_uNCINvNvXsi_B54_B5h_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3k_uNCINvNvB6m_8for_each4callB1b_NCINvNvNtB6q_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1c_EIB8r_jEEB1b_E0E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i, %.lr.ph.i.i
  %.sroa.027.0.i.i19.i.i = phi i64 [ %.sroa.8.0.copyload.i, %.lr.ph.i.i ], [ %.sroa.027.0.i.i17.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldjTINtNtNtBa_3ops5range5RangejEjEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0NCINvNtB6_3map8map_foldB1b_INtB2Y_3MapINtNtB6_9enumerate9EnumerateIB3l_B1c_NCNvB1L_11split_ranges_0EENCNCB1J_s_00EuNCB1J_s_0NCINvNvMsg_NtB6_7flattenINtB54_13FlattenCompatppE9iter_fold7flattenB3k_uNCINvNvXsi_B54_B5h_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3k_uNCINvNvB6m_8for_each4callB1b_NCINvNvNtB6q_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1c_EIB8r_jEEB1b_E0E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i ] ; 3 uses
  %.sroa.0.0.i78.i.i15.i.i = phi i64 [ %.sroa.6.0.copyload.i, %.lr.ph.i.i ], [ %.sroa.0.0.i78.i.i13.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldjTINtNtNtBa_3ops5range5RangejEjEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0NCINvNtB6_3map8map_foldB1b_INtB2Y_3MapINtNtB6_9enumerate9EnumerateIB3l_B1c_NCNvB1L_11split_ranges_0EENCNCB1J_s_00EuNCB1J_s_0NCINvNvMsg_NtB6_7flattenINtB54_13FlattenCompatppE9iter_fold7flattenB3k_uNCINvNvXsi_B54_B5h_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3k_uNCINvNvB6m_8for_each4callB1b_NCINvNvNtB6q_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1c_EIB8r_jEEB1b_E0E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i ] ; 5 uses
  %.sroa.0.0.i.i.i11.i.i = phi i64 [ %.sroa.5.0.copyload.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i9.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldjTINtNtNtBa_3ops5range5RangejEjEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0NCINvNtB6_3map8map_foldB1b_INtB2Y_3MapINtNtB6_9enumerate9EnumerateIB3l_B1c_NCNvB1L_11split_ranges_0EENCNCB1J_s_00EuNCB1J_s_0NCINvNvMsg_NtB6_7flattenINtB54_13FlattenCompatppE9iter_fold7flattenB3k_uNCINvNvXsi_B54_B5h_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3k_uNCINvNvB6m_8for_each4callB1b_NCINvNvNtB6q_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1c_EIB8r_jEEB1b_E0E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i ] ; 5 uses
  %.sroa.0.08.i.i = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.q, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldjTINtNtNtBa_3ops5range5RangejEjEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0NCINvNtB6_3map8map_foldB1b_INtB2Y_3MapINtNtB6_9enumerate9EnumerateIB3l_B1c_NCNvB1L_11split_ranges_0EENCNCB1J_s_00EuNCB1J_s_0NCINvNvMsg_NtB6_7flattenINtB54_13FlattenCompatppE9iter_fold7flattenB3k_uNCINvNvXsi_B54_B5h_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3k_uNCINvNvB6m_8for_each4callB1b_NCINvNvNtB6q_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1c_EIB8r_jEEB1b_E0E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i ]
  %i.q = add nuw i64 %.sroa.0.08.i.i, 1, !dbg !46156 ; 7 uses
  %i.r = icmp eq i64 %i.q, %.sroa.4.0.copyload.i, !dbg !46157
  br i1 %i.r, label %bb.h, label %bb.c, !dbg !46157

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.q, %.sroa.4.0.copyload.i, !dbg !46158
  br i1 %i.s, label %bb.d, label %bb.e, !dbg !46158

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.q, !dbg !46158 ; 2 uses
  %.val74.i.i.i.i = load i64, ptr %i.t, align 8, !dbg !46159, !alias.scope !46129, !noalias !46130, !noundef !1880 ; 5 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8, !dbg !46159
  %.val75.i.i.i.i = load i64, ptr %i.u, align 8, !dbg !46159, !alias.scope !46131, !noalias !46130, !noundef !1880 ; 5 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val74.i.i.i.i, i64 %.sroa.0.0.i.i.i11.i.i), !dbg !46160 ; 2 uses
  %.sroa.0.0.i78.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.val75.i.i.i.i, i64 %.sroa.0.0.i78.i.i15.i.i), !dbg !46161 ; 2 uses
  %.sroa.0.0.i79.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val75.i.i.i.i, i64 %.sroa.0.0.i78.i.i15.i.i), !dbg !46162 ; 3 uses
  %.sroa.0.0.i80.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.val74.i.i.i.i, i64 %.sroa.0.0.i.i.i11.i.i), !dbg !46163 ; 3 uses
  %i.v = icmp ult i64 %.sroa.0.0.i80.i.i.i.i, %.sroa.0.0.i79.i.i.i.i, !dbg !46164
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !46164

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %.sroa.4.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #57, !dbg !46158, !noalias !46130
  unreachable, !dbg !46158

bb.f:                                             ; preds = %bb.d
  %i.w = sub nuw i64 %.sroa.0.0.i80.i.i.i.i, %.sroa.0.0.i79.i.i.i.i, !dbg !46165
  %.sroa.011.0.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i78.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i), !dbg !46166 ; 3 uses
  %2 = icmp ult i64 %.sroa.011.0.i.i.i.i, %.sroa.7.0.copyload.i, !dbg !46167
  %3 = sub nuw i64 %.sroa.7.0.copyload.i, %.sroa.011.0.i.i.i.i, !dbg !46167
  %i.x = sub nuw i64 %.sroa.011.0.i.i.i.i, %.sroa.7.0.copyload.i, !dbg !46167
  %.sroa.08.0.i.i.i.i = select i1 %2, i64 %3, i64 %i.x, !dbg !46167
  %.sroa.019.0.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i78.i.i15.i.i, i64 %.sroa.0.0.i.i.i11.i.i), !dbg !46168 ; 3 uses
  %4 = icmp ult i64 %.sroa.019.0.i.i.i.i, %.sroa.7.0.copyload.i, !dbg !46169
  %5 = sub nuw i64 %.sroa.7.0.copyload.i, %.sroa.019.0.i.i.i.i, !dbg !46169
  %i.y = sub nuw i64 %.sroa.019.0.i.i.i.i, %.sroa.7.0.copyload.i, !dbg !46169
  %.sroa.09.0.i.i.i.i = select i1 %4, i64 %5, i64 %i.y, !dbg !46169
  %.not.i.i.i.i = icmp ugt i64 %.sroa.08.0.i.i.i.i, %.sroa.09.0.i.i.i.i, !dbg !46170
  %.sroa.027.0.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val75.i.i.i.i, i64 %.val74.i.i.i.i), !dbg !46171 ; 3 uses
  %.sroa.0.0.i81.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.027.0.i.i.i.i, i64 %.sroa.027.0.i.i19.i.i), !dbg !46172
  %i.z = lshr i64 %.sroa.0.0.i81.i.i.i.i, 3, !dbg !46173
  %i.aa = call i64 @llvm.umax.i64(i64 range(i64 0, 2305843009213693952) %i.z, i64 1048576), !dbg !46174
  %.sroa.0.0.i82.i.i.i.i = call noundef range(i64 1048576, 8388609) i64 @llvm.umin.i64(i64 %i.aa, i64 8388608), !dbg !46174
  %.not71.i.i.i.i = icmp ugt i64 %i.w, %.sroa.0.0.i82.i.i.i.i
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not71.i.i.i.i, !dbg !46175
  br i1 %or.cond.i.i.i.i, label %bb.h, label %_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !46175

bb.g:                                             ; preds = %bb.d
  %i.ab = add i64 %.val75.i.i.i.i, %.sroa.0.0.i80.i.i.i.i, !dbg !46176
  %i.ac = add i64 %.val74.i.i.i.i, %.sroa.0.0.i79.i.i.i.i, !dbg !46176
  %i.ad = sub i64 %i.ab, %i.ac, !dbg !46176
  br label %_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !46177

_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.039.1.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %.sroa.027.0.i.i.i.i, %bb.f ], !dbg !46178
  %i.ae = add i64 %.sroa.039.1.i.i.i.i, %.sroa.027.0.i.i19.i.i, !dbg !46179
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldjTINtNtNtBa_3ops5range5RangejEjEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0NCINvNtB6_3map8map_foldB1b_INtB2Y_3MapINtNtB6_9enumerate9EnumerateIB3l_B1c_NCNvB1L_11split_ranges_0EENCNCB1J_s_00EuNCB1J_s_0NCINvNvMsg_NtB6_7flattenINtB54_13FlattenCompatppE9iter_fold7flattenB3k_uNCINvNvXsi_B54_B5h_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3k_uNCINvNvB6m_8for_each4callB1b_NCINvNvNtB6q_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1c_EIB8r_jEEB1b_E0E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !46180

bb.h:                                             ; preds = %bb.f, %bb.b
  %.sroa.027.0.i.i18.i.i = phi i64 [ %.sroa.027.0.i.i19.i.i, %bb.b ], [ %.sroa.027.0.i.i.i.i, %bb.f ]
  %.sroa.0.0.i78.i.i14.i.i = phi i64 [ %.sroa.0.0.i78.i.i15.i.i, %bb.b ], [ %.val75.i.i.i.i, %bb.f ]
  %.sroa.0.0.i.i.i10.i.i = phi i64 [ %.sroa.0.0.i.i.i11.i.i, %bb.b ], [ %.val74.i.i.i.i, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !46181, !noalias !46135
  call void @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef %.sroa.0.0.i.i.i11.i.i, i64 noundef %.sroa.0.0.i78.i.i15.i.i, i64 noundef 1, i64 %i.e), !dbg !46182, !noalias !46136
  %i.af = load i64, ptr %i.k, align 8, !dbg !46183, !noalias !46137, !noundef !1880 ; 3 uses
  %i.ag = load i64, ptr %i.l, align 8, !dbg !46184, !noalias !46137, !noundef !1880 ; 3 uses
  %.sroa.3.0.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.ag, i64 %i.af), !dbg !46185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !46186, !noalias !46138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !46187, !noalias !46137
  store ptr %1, ptr %i.b, align 8, !dbg !46188, !noalias !46139
  store i64 %.sroa.3.0.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !46188, !noalias !46139
  store i64 %i.q, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !46188, !noalias !46139
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !46188, !noalias !46140
  call void @llvm.experimental.noalias.scope.decl(metadata !46141), !dbg !46189
  %i.ah = icmp ult i64 %i.af, %i.ag, !dbg !46190
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTINtNtNtBa_3ops5range5RangejEjEINtB4_3MapINtNtB6_9enumerate9EnumerateIB1q_BV_NCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0EENCNCNvB2d_12merge_rangess_00EuNCB3s_s_0NCINvNvMsg_NtB6_7flattenINtB4c_13FlattenCompatppE9iter_fold7flattenB1p_uNCINvNvXsi_B4c_B4p_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1p_uNCINvNvB5u_8for_each4callBU_NCINvNvNtB5y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB7y_jEEBU_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !46191

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjINtNtNtBa_3ops5range5RangejEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0NCINvNvXs_NtB6_9enumerateINtB2L_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCIB2_TjBV_ETBV_jEuNCNCNvB1s_12merge_rangess_00QNCINvNvB3j_8for_each4callB4m_NCINvNvNtB3n_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB6b_jEEB4m_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.i.i
  %i.ai = phi i64 [ %i.bb, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjINtNtNtBa_3ops5range5RangejEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0NCINvNvXs_NtB6_9enumerateINtB2L_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCIB2_TjBV_ETBV_jEuNCNCNvB1s_12merge_rangess_00QNCINvNvB3j_8for_each4callB4m_NCINvNvNtB3n_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB6b_jEEB4m_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %.sroa.0.08.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aj, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjINtNtNtBa_3ops5range5RangejEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0NCINvNvXs_NtB6_9enumerateINtB2L_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCIB2_TjBV_ETBV_jEuNCNCNvB1s_12merge_rangess_00QNCINvNvB3j_8for_each4callB4m_NCINvNvNtB3n_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB6b_jEEB4m_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.aj = add i64 %.sroa.0.08.i.i.i.i.i.i.i.i.i.i, 1, !dbg !46192 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46142), !dbg !46193
  %i.ak = icmp eq i64 %.sroa.0.08.i.i.i.i.i.i.i.i.i.i, 0, !dbg !46194
  br i1 %i.ak, label %bb.i, label %bb.j, !dbg !46194

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.al = load i64, ptr %i.m, align 8, !dbg !46195, !alias.scope !46143, !noalias !46138, !noundef !1880 ; 2 uses
  %i.am = load i64, ptr %i.o, align 8, !dbg !46196, !alias.scope !46143, !noalias !46138, !noundef !1880
  %i.an = add i64 %i.am, %i.al, !dbg !46195
  %i.ao = load i64, ptr %i.n, align 8, !dbg !46197, !alias.scope !46143, !noalias !46138, !noundef !1880
  %i.ap = add i64 %i.an, %i.ao, !dbg !46195
  %i.aq = load i64, ptr %i.p, align 8, !dbg !46198, !alias.scope !46143, !noalias !46138, !noundef !1880
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.aq), !dbg !46199
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjINtNtNtBa_3ops5range5RangejEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0NCINvNvXs_NtB6_9enumerateINtB2L_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCIB2_TjBV_ETBV_jEuNCNCNvB1s_12merge_rangess_00QNCINvNvB3j_8for_each4callB4m_NCINvNvNtB3n_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB6b_jEEB4m_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.i.i, !dbg !46200

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.n, align 8, !dbg !46201, !alias.scope !46143, !noalias !46138, !noundef !1880
  %i.as = load i64, ptr %i.m, align 8, !dbg !46202, !alias.scope !46143, !noalias !46138, !noundef !1880
  %i.at = add i64 %i.as, %i.ar, !dbg !46201
  %i.au = load i64, ptr %i.o, align 8, !dbg !46203, !alias.scope !46143, !noalias !46138, !noundef !1880 ; 2 uses
  %i.av = mul i64 %i.au, %.sroa.0.08.i.i.i.i.i.i.i.i.i.i, !dbg !46204
  %i.aw = add i64 %i.at, %i.av, !dbg !46201       ; 2 uses
  %i.ax = add i64 %i.aw, %i.au, !dbg !46205
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjINtNtNtBa_3ops5range5RangejEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0NCINvNvXs_NtB6_9enumerateINtB2L_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCIB2_TjBV_ETBV_jEuNCNCNvB1s_12merge_rangess_00QNCINvNvB3j_8for_each4callB4m_NCINvNvNtB3n_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB6b_jEEB4m_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.i.i, !dbg !46200

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjINtNtNtBa_3ops5range5RangejEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0NCINvNvXs_NtB6_9enumerateINtB2L_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCIB2_TjBV_ETBV_jEuNCNCNvB1s_12merge_rangess_00QNCINvNvB3j_8for_each4callB4m_NCINvNvNtB3n_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB6b_jEEB4m_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.02.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %i.ax, %bb.j ], !dbg !46206
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.i ], [ %i.aw, %bb.j ], !dbg !46206
  call void @llvm.experimental.noalias.scope.decl(metadata !46144), !dbg !46207
  call void @llvm.experimental.noalias.scope.decl(metadata !46145), !dbg !46208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !46209, !noalias !46146
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !46210, !alias.scope !46147, !noalias !46138, !noundef !1880
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !46210, !alias.scope !46147, !noalias !46138
  %i.ay = add i64 %i.ai, 1, !dbg !46211
  %i.az = icmp eq i64 %i.ay, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !46211
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.az, i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 0, !dbg !46211
  store i64 %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !dbg !46209, !noalias !46146
  store i64 %.sroa.02.1.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !46209, !noalias !46146
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !dbg !46209, !noalias !46146
  call void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callTINtNtB9_5range5RangejEjENCINvNvNtBZ_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1P_EIB2Y_jEEB1O_E0E0INtB7_5FnMutTuB1O_EE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !46209, !noalias !46148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !46212, !noalias !46146
  %i.ba = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !46213, !alias.scope !46149, !noalias !46138, !noundef !1880
  %i.bb = add i64 %i.ba, 1, !dbg !46213           ; 2 uses
  store i64 %i.bb, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !46213, !alias.scope !46149, !noalias !46138
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aj, %i.ag, !dbg !46190
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTINtNtNtBa_3ops5range5RangejEjEINtB4_3MapINtNtB6_9enumerate9EnumerateIB1q_BV_NCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0EENCNCNvB2d_12merge_rangess_00EuNCB3s_s_0NCINvNvMsg_NtB6_7flattenINtB4c_13FlattenCompatppE9iter_fold7flattenB1p_uNCINvNvXsi_B4c_B4p_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1p_uNCINvNvB5u_8for_each4callBU_NCINvNvNtB5y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB7y_jEEBU_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !dbg !46191

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTINtNtNtBa_3ops5range5RangejEjEINtB4_3MapINtNtB6_9enumerate9EnumerateIB1q_BV_NCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0EENCNCNvB2d_12merge_rangess_00EuNCB3s_s_0NCINvNvMsg_NtB6_7flattenINtB4c_13FlattenCompatppE9iter_fold7flattenB1p_uNCINvNvXsi_B4c_B4p_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1p_uNCINvNvB5u_8for_each4callBU_NCINvNvNtB5y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB7y_jEEBU_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjINtNtNtBa_3ops5range5RangejEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0NCINvNvXs_NtB6_9enumerateINtB2L_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCIB2_TjBV_ETBV_jEuNCNCNvB1s_12merge_rangess_00QNCINvNvB3j_8for_each4callB4m_NCINvNvNtB3n_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB6b_jEEB4m_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !46214, !noalias !46138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !46215, !noalias !46135
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldjTINtNtNtBa_3ops5range5RangejEjEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0NCINvNtB6_3map8map_foldB1b_INtB2Y_3MapINtNtB6_9enumerate9EnumerateIB3l_B1c_NCNvB1L_11split_ranges_0EENCNCB1J_s_00EuNCB1J_s_0NCINvNvMsg_NtB6_7flattenINtB54_13FlattenCompatppE9iter_fold7flattenB3k_uNCINvNvXsi_B54_B5h_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3k_uNCINvNvB6m_8for_each4callB1b_NCINvNvNtB6q_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1c_EIB8r_jEEB1b_E0E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !46216

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldjTINtNtNtBa_3ops5range5RangejEjEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0NCINvNtB6_3map8map_foldB1b_INtB2Y_3MapINtNtB6_9enumerate9EnumerateIB3l_B1c_NCNvB1L_11split_ranges_0EENCNCB1J_s_00EuNCB1J_s_0NCINvNvMsg_NtB6_7flattenINtB54_13FlattenCompatppE9iter_fold7flattenB3k_uNCINvNvXsi_B54_B5h_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3k_uNCINvNvB6m_8for_each4callB1b_NCINvNvNtB6q_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1c_EIB8r_jEEB1b_E0E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTINtNtNtBa_3ops5range5RangejEjEINtB4_3MapINtNtB6_9enumerate9EnumerateIB1q_BV_NCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0EENCNCNvB2d_12merge_rangess_00EuNCB3s_s_0NCINvNvMsg_NtB6_7flattenINtB4c_13FlattenCompatppE9iter_fold7flattenB1p_uNCINvNvXsi_B4c_B4p_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1p_uNCINvNvB5u_8for_each4callBU_NCINvNvNtB5y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB7y_jEEBU_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  %.sroa.027.0.i.i17.i.i = phi i64 [ %i.ae, %_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.027.0.i.i18.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTINtNtNtBa_3ops5range5RangejEjEINtB4_3MapINtNtB6_9enumerate9EnumerateIB1q_BV_NCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0EENCNCNvB2d_12merge_rangess_00EuNCB3s_s_0NCINvNvMsg_NtB6_7flattenINtB4c_13FlattenCompatppE9iter_fold7flattenB1p_uNCINvNvXsi_B4c_B4p_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1p_uNCINvNvB5u_8for_each4callBU_NCINvNvNtB5y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB7y_jEEBU_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i ]
  %.sroa.0.0.i78.i.i13.i.i = phi i64 [ %.sroa.0.0.i78.i.i.i.i, %_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.0.0.i78.i.i14.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTINtNtNtBa_3ops5range5RangejEjEINtB4_3MapINtNtB6_9enumerate9EnumerateIB1q_BV_NCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0EENCNCNvB2d_12merge_rangess_00EuNCB3s_s_0NCINvNvMsg_NtB6_7flattenINtB4c_13FlattenCompatppE9iter_fold7flattenB1p_uNCINvNvXsi_B4c_B4p_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1p_uNCINvNvB5u_8for_each4callBU_NCINvNvNtB5y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB7y_jEEBU_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i ]
  %.sroa.0.0.i.i.i9.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.0.0.i.i.i10.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTINtNtNtBa_3ops5range5RangejEjEINtB4_3MapINtNtB6_9enumerate9EnumerateIB1q_BV_NCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_ranges_0EENCNCNvB2d_12merge_rangess_00EuNCB3s_s_0NCINvNvMsg_NtB6_7flattenINtB4c_13FlattenCompatppE9iter_fold7flattenB1p_uNCINvNvXsi_B4c_B4p_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1p_uNCINvNvB5u_8for_each4callBU_NCINvNvNtB5y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBV_EIB7y_jEEBU_E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i ]
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.i, !dbg !46154
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_3ops5range5RangejENCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldTB1b_jEINtB3z_3MapINtNtB8_9enumerate9EnumerateIB3Z_B1b_NCNvB1H_11split_ranges_0EENCNCB1F_s_00EuNCB1F_s_0NCINvNvMsg_NtB8_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB3Y_uNCINvNvXsi_B5I_B5V_B2Q_4fold7flattenB3Y_uNCINvNvB2Q_8for_each4callB3R_NCINvNvNtB2U_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1b_EIB8B_jEEB3R_E0E0E0E0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !46155

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_3ops5range5RangejENCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldTB1b_jEINtB3z_3MapINtNtB8_9enumerate9EnumerateIB3Z_B1b_NCNvB1H_11split_ranges_0EENCNCB1F_s_00EuNCB1F_s_0NCINvNvMsg_NtB8_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB3Y_uNCINvNvXsi_B5I_B5V_B2Q_4fold7flattenB3Y_uNCINvNvB2Q_8for_each4callB3R_NCINvNvNtB2U_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1b_EIB8B_jEEB3R_E0E0E0E0E0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldjTINtNtNtBa_3ops5range5RangejEjEuNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges0NCINvNtB6_3map8map_foldB1b_INtB2Y_3MapINtNtB6_9enumerate9EnumerateIB3l_B1c_NCNvB1L_11split_ranges_0EENCNCB1J_s_00EuNCB1J_s_0NCINvNvMsg_NtB6_7flattenINtB54_13FlattenCompatppE9iter_fold7flattenB3k_uNCINvNvXsi_B54_B5h_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB3k_uNCINvNvB6m_8for_each4callB1b_NCINvNvNtB6q_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1c_EIB8r_jEEB1b_E0E0E0E0E0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i, %bb.a
  ret void, !dbg !46217
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2Q_20MorselResizePipeline3run00ENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRNtNtB1X_6series6SeriesjNCB2L_s_0E0EB4W_4foldTjB5K_ENCINvNvB4W_6max_by4foldB6t_INvB4U_7compareB5K_jEE0EB2Y_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !46218 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !46310
  %i.d = icmp eq ptr %0, %1, !dbg !46311
  br i1 %i.d, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2A_20MorselResizePipeline3run00ENtNtNtBa_6traits8iterator8Iterator4foldTjRNtNtB1H_6series6SeriesENCINvNtB8_3map8map_foldB5e_B5c_B5c_NCINvNvB4z_10max_by_key3keyB5e_jNCB2v_s_0E0NCINvNvB4z_6max_by4foldB5c_INvB6g_7compareB5e_jEE0E0EB2I_.exit, label %bb.b, !dbg !46312

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64, !dbg !46313
  %i.f = ptrtoint ptr %0 to i64, !dbg !46313
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !46313
  %i.h = udiv exact i64 %i.g, 160, !dbg !46313
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c, !dbg !46314

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i, %bb.b
  %.sroa.05.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ab, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i ], !dbg !46315 ; 2 uses
  %.sroa.6.0.i.i = phi ptr [ %3, %bb.b ], [ %.sroa.3.0.i.i.i.pn.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i ], !dbg !46316 ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.pn.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i ], !dbg !46316 ; 3 uses
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.05.0.i.i, !dbg !46317 ; 3 uses
  %i.l = load i8, ptr %i.k, align 16, !dbg !46318, !range !2211, !noalias !46296, !noundef !1880
  %.not.i.not.i.i.i = icmp eq i8 %i.l, 31, !dbg !46318
  br i1 %.not.i.not.i.i.i, label %bb.d, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i, !dbg !46319

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !46320 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46302), !dbg !46321
  call void @llvm.experimental.noalias.scope.decl(metadata !46303), !dbg !46322
  %i.n = load ptr, ptr %i.m, align 8, !dbg !46323, !alias.scope !46304, !noalias !46296, !nonnull !1880, !noundef !1880
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !46323
  %i.p = load ptr, ptr %i.o, align 16, !dbg !46323, !alias.scope !46304, !noalias !46296, !nonnull !1880, !align !2089, !noundef !1880 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !46324
  %i.r = load i64, ptr %i.q, align 8, !dbg !46324, !range !2099, !invariant.load !1880, !noalias !46307
  %i.s = add nsw i64 %i.r, -1, !dbg !46324
  %i.t = and i64 %i.s, -16, !dbg !46324
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t, !dbg !46324
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !46324
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 328, !dbg !46325
  %i.x = load ptr, ptr %i.w, align 8, !dbg !46325, !invariant.load !1880, !noalias !46307, !nonnull !1880
  %i.y = call noundef i64 %i.x(ptr noundef nonnull %i.v) #53, !dbg !46326, !noalias !46307, !inline_history !46279 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46308
  store i64 %.sroa.02.0.i.i, ptr %i.c, align 8, !noalias !46309
  store ptr %.sroa.6.0.i.i, ptr %i.i, align 8, !noalias !46309
  store i64 %i.y, ptr %i.b, align 8, !noalias !46309
  store ptr %i.m, ptr %i.j, align 8, !noalias !46309
  %i.z = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10max_by_key7compareRNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesjEINtB7_6FnOnceTRTjB1S_EB2S_EE9call_onceCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !46327
  %i.aa = icmp sgt i8 %i.z, 0, !dbg !46328        ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i = select i1 %i.aa, ptr %.sroa.6.0.i.i, ptr %i.m, !dbg !46327
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.aa, i64 %.sroa.02.0.i.i, i64 %i.y, !dbg !46327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !46329, !noalias !46308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !46329, !noalias !46308
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i, !dbg !46330

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.pn.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.d ], [ %.sroa.02.0.i.i, %bb.c ] ; 2 uses
  %.sroa.3.0.i.i.i.pn.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i.i.i, %bb.d ], [ %.sroa.6.0.i.i, %bb.c ] ; 2 uses
  %i.ab = add nuw i64 %.sroa.05.0.i.i, 1, !dbg !46331 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.h, !dbg !46332
  br i1 %i.ac, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2A_20MorselResizePipeline3run00ENtNtNtBa_6traits8iterator8Iterator4foldTjRNtNtB1H_6series6SeriesENCINvNtB8_3map8map_foldB5e_B5c_B5c_NCINvNvB4z_10max_by_key3keyB5e_jNCB2v_s_0E0NCINvNvB4z_6max_by4foldB5c_INvB6g_7compareB5e_jEE0E0EB2I_.exit, label %bb.c, !dbg !46332

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2A_20MorselResizePipeline3run00ENtNtNtBa_6traits8iterator8Iterator4foldTjRNtNtB1H_6series6SeriesENCINvNtB8_3map8map_foldB5e_B5c_B5c_NCINvNvB4z_10max_by_key3keyB5e_jNCB2v_s_0E0NCINvNvB4z_6max_by4foldB5c_INvB6g_7compareB5e_jEE0E0EB2I_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i, %bb.a
  %.pn20.i.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.pn.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i ]
  %.pn18.i.i = phi ptr [ %3, %bb.a ], [ %.sroa.3.0.i.i.i.pn.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnRNtNtB1h_6series6SeriesTjB22_ENCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components22morsel_resize_pipelineNtB2D_20MorselResizePipeline3run00NCINvNtB6_3map8map_foldB22_B2p_B2p_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyB22_jNCB2y_s_0E0NCINvNvB5h_6max_by4foldB2p_INvB5f_7compareB22_jEE0E0E0B2L_.exit.i.i ]
  %.pn.i.i = insertvalue { i64, ptr } poison, i64 %.pn20.i.i, 0, !dbg !46316
  %.merged.i.i = insertvalue { i64, ptr } %.pn.i.i, ptr %.pn18.i.i, 1, !dbg !46316
  ret { i64, ptr } %.merged.i.i, !dbg !46333
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan9functions19resolve_projections19resolve_projectionss_0ENCINvXs7_NtCshe0pyuXM1S4_13polars_schema6schemaINtB69_6SchemaB2Y_uEINtNtNtBa_6traits7collect12FromIteratorTB29_B2Y_EE9from_iterBX_E0ENtNtB7a_8iterator8Iterator4folduNCINvNvB89_8for_each4callB7I_NCINvXsb_B1w_INtB1w_8IndexMapB29_B2Y_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtB78_6ExtendB7I_E6extendBN_E0E0EB49_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !46334 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 5 uses
  %i.c = alloca [48 x i8], align 16               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 16               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i = alloca [32 x i8], align 16     ; 4 uses
  %.sroa.6.i.i.i = alloca [47 x i8], align 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46519), !dbg !46559
  %i.h = load ptr, ptr %0, align 8, !dbg !46560, !alias.scope !46519, !nonnull !1880, !noundef !1880 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !46560
  %i.j = load ptr, ptr %i.i, align 8, !dbg !46560, !alias.scope !46519, !nonnull !1880, !noundef !1880 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !46561
  %.sroa.01.0.copyload.i = load ptr, ptr %i.k, align 8, !dbg !46561, !alias.scope !46519 ; 2 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !46561
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !46561, !alias.scope !46519
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !46561
  %.sroa.53.0.copyload.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !46561, !alias.scope !46519 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsidoPH4Qgqxm_12polars_async10primitives19distributor_channel19distributor_channelTNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EEEB1v_
declare hidden void @_RINvNtNtCsidoPH4Qgqxm_12polars_async10primitives19distributor_channel19distributor_channelTNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EEEB1v_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCsidoPH4Qgqxm_12polars_async8executor10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE14extend_trustedINtNtNtNtB1D_4iter8adapters3map3MapINtNtB3g_3zip3ZipINtNtB6_9into_iter8IntoIterINtNtNtBL_10primitives19distributor_channel8ReceiverTNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnIBx_Amj2_EEEEIB42_NtNtB5n_4pipe10PortSenderEENCNvXs_NtNtB5n_5nodes16rolling_group_byNtB7L_14RollingGroupByNtB7N_11ComputeNode5spawns_0EEB5n_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtB6_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16rolling_group_byNtB1h_14RollingGroupByNtB1j_11ComputeNode5spawns0_0EB1l_(ptr noundef nonnull align 8, i1 noundef zeroext, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1360), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtB6_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16rolling_group_byNtB1h_14RollingGroupByNtB1j_11ComputeNode5spawn0EB1l_(ptr noundef nonnull align 8, i1 noundef zeroext, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1200), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB5_12BooleanArrayNtB7_9Splitable19__split_at_unchecked(ptr dead_on_unwind noalias noundef writable sret([192 x i8]) align 8 captures(none) dereferenceable(192), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayxENtB7_9Splitable19__split_at_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamE3lenB16_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE3lenCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_dropINtB2_11InPlaceDropRNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE3lenCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4asof11AsOfOptionsE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxTINtNtB6_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB11_5field5FieldEEE13new_uninit_inCs2g09Ig8GZd6_13polars_stream() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8RKTHBS4OBx_12object_store6client15ClientConfigKeyNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRejENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRxuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRjNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtCsgjwxzEoLG5s_12polars_error9ErrStringNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsV_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionNtCsgjwxzEoLG5s_12polars_error9ErrStringENtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsfyRUffk9zcp_6planus6errors18UnknownEnumTagKindNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRhNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRtNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB2_11OwnedObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtCsgZ49sUHp3tW_5alloc6string6StringEINtNtNtBa_5slice4iter4IterB14_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCse4dvU5uQ85g_8indexmap3mapINtB2_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBK_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan11PhysNodeKeyENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTjjNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecIBw_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtBK_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBG_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtB4_13SpecAdvanceBy15spec_advance_byCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_Cse4dvU5uQ85g_8indexmapINtB5_6BucketNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuE3keyBJ_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXNtNtCslFlrwjHoTci_14polars_compute7min_max6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB4_12MinMaxKernel21max_ignore_nan_kernelCs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #49

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #41

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #35 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #39 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #41 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #44 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #51 = { cold noreturn nounwind }
attributes #52 = { noinline }
attributes #53 = { inlinehint }
attributes #54 = { nounwind }
attributes #55 = { noreturn }
attributes #56 = { cold }
attributes #57 = { noinline noreturn }

!llvm.module.flags = !{!1869, !1870, !1871, !1872}
!llvm.ident = !{!1873}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1874, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "select_to_vec<&polars_utils::pl_str::PlSmallStr, indexmap::map::iter::Keys<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>", linkageName: "_RINvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB3_9dataframe9DataFrame13select_to_vecRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysB1j_NtNtNtB5_9datatypes5dtype8DataTypeEECs2g09Ig8GZd6_13polars_stream", scope: !1879, file: !1875, line: 1151, type: !1881, scopeLine: 1151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!2 = distinct !DISubprogram(name: "drop_in_place<polars_core::frame::projection::AmortizedColumnSelector>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame10projection23AmortizedColumnSelectorECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!3 = distinct !DISubprogram(name: "drop<(&str, usize), allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvXsf_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTRejEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream", scope: !1889, file: !1886, line: 3503, type: !1881, scopeLine: 3503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!4 = distinct !DISubprogram(name: "drop_in_place<hashbrown::raw::RawTable<(&str, usize), allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3raw8RawTableTRejEEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!5 = distinct !DISubprogram(name: "drop_in_place<hashbrown::map::HashMap<&str, usize, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapRejNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!6 = distinct !DISubprogram(name: "next<polars_core::frame::column::Column, alloc::alloc::Global>", linkageName: "_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream", scope: !1912, file: !1910, line: 213, type: !1881, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!7 = distinct !DILexicalBlock(scope: !6, file: !1910, line: 26, column: 33)
!8 = distinct !DISubprogram(name: "eq<polars_core::frame::column::Column>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtB9_3cmp9PartialEq2eqCs2g09Ig8GZd6_13polars_stream", scope: !1915, file: !1913, line: 1716, type: !1881, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!9 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::into_iter::IntoIter<polars_core::frame::column::Column, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!10 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE3addCs2g09Ig8GZd6_13polars_stream", scope: !1916, file: !1913, line: 651, type: !1881, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!11 = distinct !DILexicalBlock(scope: !6, file: !1910, line: 226, column: 13)
!12 = distinct !DISubprogram(name: "read<polars_core::frame::column::Column>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 1682, type: !1881, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!13 = distinct !DISubprogram(name: "read<polars_core::frame::column::Column>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE4readCs2g09Ig8GZd6_13polars_stream", scope: !1916, file: !1913, line: 985, type: !1881, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!14 = distinct !DILexicalBlock(scope: !6, file: !1910, line: 214, column: 9)
!15 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs0_NtCsk79RHlfmHDk_8foldhash4fastNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !1932, file: !1929, line: 134, type: !1881, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!16 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !1935, file: !1933, line: 79, type: !1881, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!17 = distinct !DISubprogram(name: "atomic_load<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadhECs2g09Ig8GZd6_13polars_stream", scope: !1938, file: !1936, line: 3900, type: !1939, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!18 = distinct !DISubprogram(name: "load", linkageName: "_RNvMsO_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomichE4load", scope: !1940, file: !1936, line: 2868, type: !1881, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!19 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed3new", scope: !1944, file: !1941, line: 212, type: !1881, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!20 = distinct !DISubprogram(name: "drop<(polars_utils::pl_str::PlSmallStr, ()), allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvXsf_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream", scope: !1889, file: !1886, line: 3503, type: !1881, scopeLine: 3503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!21 = distinct !DISubprogram(name: "drop_in_place<hashbrown::raw::RawTable<(polars_utils::pl_str::PlSmallStr, ()), allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3raw8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!22 = distinct !DISubprogram(name: "drop_in_place<hashbrown::map::HashMap<polars_utils::pl_str::PlSmallStr, (), foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!23 = distinct !DISubprogram(name: "drop_in_place<hashbrown::set::HashSet<polars_utils::pl_str::PlSmallStr, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!24 = distinct !DISubprogram(name: "reserve<(polars_utils::pl_str::PlSmallStr, ()), allocator_api2::stable::alloc::global::Global, hashbrown::map::make_hasher::{closure_env#0}<polars_utils::pl_str::PlSmallStr, (), foldhash::quality::RandomState>>", linkageName: "_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs2g09Ig8GZd6_13polars_stream", scope: !1954, file: !1886, line: 909, type: !1881, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!25 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCs7tGzs63DEEy_9hashbrown4util8unlikely", scope: !1957, file: !1956, line: 23, type: !1881, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!26 = distinct !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global18alloc_impl_runtime", scope: !2004, file: !2002, line: 205, type: !1881, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!27 = distinct !DILexicalBlock(scope: !26, file: !2002, line: 209, column: 13)
!28 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global10alloc_impl", scope: !2004, file: !2002, line: 331, type: !1881, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!29 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate", scope: !2005, file: !2002, line: 448, type: !1881, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!30 = distinct !DISubprogram(name: "box_new_uninit", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit", scope: !2007, file: !2006, line: 247, type: !1881, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!31 = distinct !DISubprogram(name: "alloc", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc5alloc", scope: !2003, file: !2002, line: 95, type: !1881, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!32 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::storage::SharedStorage<u8>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage13SharedStoragehEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!33 = distinct !DISubprogram(name: "drop_in_place<polars_buffer::buffer::Buffer<u8>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!34 = distinct !DISubprogram(name: "drop_in_place<bytes::bytes::Owned<polars_buffer::buffer::Buffer<u8>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCshK0ivY6saku_5bytes5bytes5OwnedINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!35 = distinct !DISubprogram(name: "atomic_load<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadmECs2g09Ig8GZd6_13polars_stream", scope: !1938, file: !1936, line: 3900, type: !1881, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!36 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj15overflowing_mul", scope: !2055, file: !2053, line: 3104, type: !1881, scopeLine: 3104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!37 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_mul", scope: !2055, file: !2053, line: 1214, type: !1881, scopeLine: 1214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!38 = distinct !DISubprogram(name: "repeat_packed", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB2_6Layout13repeat_packed", scope: !2059, file: !2056, line: 526, type: !1881, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!39 = distinct !DILexicalBlock(scope: !38, file: !2056, line: 527, column: 54)
!40 = distinct !DISubprogram(name: "layout_array", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12layout_array", scope: !2061, file: !2060, line: 896, type: !1881, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!41 = distinct !DISubprogram(name: "try_allocate_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream", scope: !2062, file: !2060, line: 446, type: !1881, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!42 = distinct !DILexicalBlock(scope: !41, file: !2060, line: 454, column: 9)
!43 = distinct !DISubprogram(name: "with_capacity_zeroed_in<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner23with_capacity_zeroed_inCs2g09Ig8GZd6_13polars_stream", scope: !2062, file: !2060, line: 589, type: !1881, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!44 = distinct !DISubprogram(name: "with_capacity_zeroed_in<usize, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE23with_capacity_zeroed_inCs2g09Ig8GZd6_13polars_stream", scope: !2063, file: !2060, line: 219, type: !1881, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!45 = distinct !DISubprogram(name: "from_elem<usize, alloc::alloc::Global>", linkageName: "_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemjNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream", scope: !2067, file: !2065, line: 22, type: !1881, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!46 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global10alloc_impl", scope: !2004, file: !2002, line: 331, type: !1881, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!47 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate", scope: !2005, file: !2002, line: 448, type: !1939, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!48 = distinct !DILexicalBlock(scope: !42, file: !2060, line: 464, column: 9)
!49 = distinct !DISubprogram(name: "alloc_zeroed", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc12alloc_zeroed", scope: !2003, file: !2002, line: 192, type: !1881, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!50 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global10alloc_impl", scope: !2004, file: !2002, line: 331, type: !1881, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!51 = distinct !DISubprogram(name: "allocate_zeroed", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator15allocate_zeroed", scope: !2005, file: !2002, line: 454, type: !1939, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!52 = distinct !DILexicalBlock(scope: !43, file: !2060, line: 592, column: 13)
!53 = distinct !DISubprogram(name: "current_memory<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14current_memoryCs2g09Ig8GZd6_13polars_stream", scope: !2062, file: !2060, line: 633, type: !1939, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!54 = distinct !DISubprogram(name: "deallocate<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2g09Ig8GZd6_13polars_stream", scope: !2062, file: !2060, line: 872, type: !1939, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!55 = distinct !DILexicalBlock(scope: !54, file: !2060, line: 874, column: 82)
!56 = distinct !DISubprogram(name: "unchecked_mul", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_mul", scope: !2055, file: !2053, line: 1274, type: !1881, scopeLine: 1274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!57 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !2003, file: !2002, line: 127, type: !1881, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!58 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !2004, file: !2002, line: 219, type: !1881, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!59 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !2004, file: !2002, line: 343, type: !1881, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!60 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !2005, file: !2002, line: 460, type: !1939, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!61 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<usize, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!62 = distinct !DISubprogram(name: "drop<usize, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream", scope: !2068, file: !2060, line: 422, type: !1881, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!63 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<usize, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecjEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1939, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!64 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<dyn polars_expr::idx_table::IdxTable, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCskY9G75ZWc4U_11polars_expr9idx_table8IdxTableEL_EECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1939, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!65 = distinct !DISubprogram(name: "size_of_val_raw<dyn polars_expr::idx_table::IdxTable>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawDNtNtCskY9G75ZWc4U_11polars_expr9idx_table8IdxTableEL_ECs2g09Ig8GZd6_13polars_stream", scope: !1896, file: !2096, line: 455, type: !1881, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!66 = distinct !DISubprogram(name: "for_value_raw<dyn polars_expr::idx_table::IdxTable>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawDNtNtCskY9G75ZWc4U_11polars_expr9idx_table8IdxTableEL_ECs2g09Ig8GZd6_13polars_stream", scope: !2059, file: !2056, line: 253, type: !1881, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!67 = distinct !DISubprogram(name: "drop<dyn polars_expr::idx_table::IdxTable, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCskY9G75ZWc4U_11polars_expr9idx_table8IdxTableEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream", scope: !2097, file: !2006, line: 1913, type: !1939, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!68 = distinct !DILexicalBlock(scope: !67, file: !2006, line: 1916, column: 9)
!69 = distinct !DILexicalBlock(scope: !68, file: !2006, line: 1919, column: 13)
!70 = distinct !DISubprogram(name: "align_of_val_raw<dyn polars_expr::idx_table::IdxTable>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem16align_of_val_rawDNtNtCskY9G75ZWc4U_11polars_expr9idx_table8IdxTableEL_ECs2g09Ig8GZd6_13polars_stream", scope: !1896, file: !2096, line: 594, type: !1881, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!71 = distinct !DISubprogram(name: "of_val_raw<dyn polars_expr::idx_table::IdxTable>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDNtNtCskY9G75ZWc4U_11polars_expr9idx_table8IdxTableEL_ECs2g09Ig8GZd6_13polars_stream", scope: !2102, file: !2100, line: 123, type: !1881, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!72 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<u32, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!73 = distinct !DISubprogram(name: "drop<u32, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream", scope: !2068, file: !2060, line: 422, type: !1881, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!74 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<u32, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecmEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1939, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!75 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!76 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE6as_refCs2g09Ig8GZd6_13polars_stream", scope: !1916, file: !1913, line: 440, type: !1881, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!77 = distinct !DISubprogram(name: "inner<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE5innerCs2g09Ig8GZd6_13polars_stream", scope: !2084, file: !2082, line: 2104, type: !1881, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!78 = distinct !DISubprogram(name: "drop<polars_schema::schema::Schema<polars_core::datatypes::dtype::DataType, ()>, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream", scope: !2106, file: !2082, line: 2810, type: !1881, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!79 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_subjjECs2g09Ig8GZd6_13polars_stream", scope: !1938, file: !1936, line: 3950, type: !1881, scopeLine: 3950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!80 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !1940, file: !1936, line: 3191, type: !1881, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!81 = distinct !DISubprogram(name: "fence", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4sync6atomic5fence", scope: !1938, file: !1936, line: 4383, type: !1881, scopeLine: 4383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!82 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<polars_core::series::builder::SeriesBuilder, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core6series7builder13SeriesBuilderEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!83 = distinct !DISubprogram(name: "drop<polars_core::series::builder::SeriesBuilder, alloc::alloc::Global>", linkageName: "_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core6series7builder13SeriesBuilderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream", scope: !2068, file: !2060, line: 422, type: !1881, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!84 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<polars_core::series::builder::SeriesBuilder, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core6series7builder13SeriesBuilderEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1939, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!85 = distinct !DILexicalBlock(scope: !48, file: !2060, line: 469, column: 9)
!86 = distinct !DISubprogram(name: "split_at_mut_checked<core::mem::maybe_uninit::MaybeUninit<u8>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE20split_at_mut_checkedCs2g09Ig8GZd6_13polars_stream", scope: !1978, file: !1977, line: 2192, type: !1881, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!87 = distinct !DISubprogram(name: "split_at_mut<core::mem::maybe_uninit::MaybeUninit<u8>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCs2g09Ig8GZd6_13polars_stream", scope: !1978, file: !1977, line: 1986, type: !1881, scopeLine: 1986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!88 = distinct !DISubprogram(name: "write<planus::Offset<str>, planus::Offset<str>, 4>", linkageName: "_RINvMs0_NtCsfyRUffk9zcp_6planus12table_writerNtB6_12ObjectWriter5writeINtB8_6OffseteEB16_Kj4_ECs2g09Ig8GZd6_13polars_stream", scope: !2152, file: !2148, line: 91, type: !1881, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!89 = distinct !DISubprogram(name: "add<core::mem::maybe_uninit::MaybeUninit<u8>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninithE3addCs2g09Ig8GZd6_13polars_stream", scope: !1909, file: !1907, line: 927, type: !1881, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!90 = distinct !DISubprogram(name: "split_at_mut_unchecked<core::mem::maybe_uninit::MaybeUninit<u8>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE22split_at_mut_uncheckedCs2g09Ig8GZd6_13polars_stream", scope: !1978, file: !1977, line: 2092, type: !1939, scopeLine: 2092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!91 = distinct !DILexicalBlock(scope: !90, file: !1977, line: 2093, column: 9)
!92 = distinct !DILexicalBlock(scope: !91, file: !1977, line: 2094, column: 9)
!93 = distinct !DISubprogram(name: "write<str, 4>", linkageName: "_RINvXs_NtNtCsfyRUffk9zcp_6planus5impls6offsetINtB9_6OffseteEINtNtB9_6traits16WriteAsPrimitiveBH_E5writeKj4_ECs2g09Ig8GZd6_13polars_stream", scope: !2156, file: !2153, line: 14, type: !1939, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!94 = distinct !DILexicalBlock(scope: !88, file: !2148, line: 96, column: 9)
!95 = distinct !DISubprogram(name: "write<planus::Offset<[planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Field>]>, planus::Offset<[planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Field>]>, 4>", linkageName: "_RINvMs0_NtCsfyRUffk9zcp_6planus12table_writerNtB6_12ObjectWriter5writeINtB8_6OffsetSIB17_NtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FieldEEB16_Kj4_ECs2g09Ig8GZd6_13polars_stream", scope: !2152, file: !2148, line: 91, type: !1881, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!96 = distinct !DISubprogram(name: "write<[planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Field>], 4>", linkageName: "_RINvXs_NtNtCsfyRUffk9zcp_6planus5impls6offsetINtB9_6OffsetSIBI_NtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5FieldEEINtNtB9_6traits16WriteAsPrimitiveBH_E5writeKj4_ECs2g09Ig8GZd6_13polars_stream", scope: !2156, file: !2153, line: 14, type: !1939, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!97 = distinct !DILexicalBlock(scope: !95, file: !2148, line: 96, column: 9)
!98 = distinct !DISubprogram(name: "write<planus::Offset<[planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::KeyValue>]>, planus::Offset<[planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::KeyValue>]>, 4>", linkageName: "_RINvMs0_NtCsfyRUffk9zcp_6planus12table_writerNtB6_12ObjectWriter5writeINtB8_6OffsetSIB17_NtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEB16_Kj4_ECs2g09Ig8GZd6_13polars_stream", scope: !2152, file: !2148, line: 91, type: !1881, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!99 = distinct !DISubprogram(name: "write<[planus::Offset<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::KeyValue>], 4>", linkageName: "_RINvXs_NtNtCsfyRUffk9zcp_6planus5impls6offsetINtB9_6OffsetSIBI_NtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEINtNtB9_6traits16WriteAsPrimitiveBH_E5writeKj4_ECs2g09Ig8GZd6_13polars_stream", scope: !2156, file: !2153, line: 14, type: !1939, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!100 = distinct !DILexicalBlock(scope: !98, file: !2148, line: 96, column: 9)
!101 = distinct !DISubprogram(name: "write<bool, bool, 1>", linkageName: "_RINvMs0_NtCsfyRUffk9zcp_6planus12table_writerNtB6_12ObjectWriter5writebbKj1_ECs2g09Ig8GZd6_13polars_stream", scope: !2152, file: !2148, line: 91, type: !1881, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!102 = distinct !DISubprogram(name: "write<1>", linkageName: "_RINvXs_NtNtCsfyRUffk9zcp_6planus5impls5bool_bINtNtB9_6traits16WriteAsPrimitivebE5writeKj1_ECs2g09Ig8GZd6_13polars_stream", scope: !2160, file: !2158, line: 16, type: !1939, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!103 = distinct !DILexicalBlock(scope: !101, file: !2148, line: 96, column: 9)
!104 = distinct !DISubprogram(name: "write<i32, i32, 4>", linkageName: "_RINvMs0_NtCsfyRUffk9zcp_6planus12table_writerNtB6_12ObjectWriter5writellKj4_ECs2g09Ig8GZd6_13polars_stream", scope: !2152, file: !2148, line: 91, type: !1881, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!105 = distinct !DISubprogram(name: "write<4>", linkageName: "_RINvXst_NtNtCsfyRUffk9zcp_6planus5impls10primitiveslINtNtBa_6traits16WriteAsPrimitivelE5writeKj4_ECs2g09Ig8GZd6_13polars_stream", scope: !2165, file: !2161, line: 18, type: !1939, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!106 = distinct !DILexicalBlock(scope: !104, file: !2148, line: 96, column: 9)
!107 = distinct !DISubprogram(name: "write<2>", linkageName: "_RINvXsd_NtNtCsfyRUffk9zcp_6planus5impls10primitivessINtNtBa_6traits16WriteAsPrimitivesE5writeKj2_ECs2g09Ig8GZd6_13polars_stream", scope: !2166, file: !2161, line: 18, type: !1939, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!108 = distinct !DISubprogram(name: "write<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::TimeUnit, polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::TimeUnit, 2>", linkageName: "_RINvMs0_NtCsfyRUffk9zcp_6planus12table_writerNtB6_12ObjectWriter5writeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8TimeUnitB16_Kj2_ECs2g09Ig8GZd6_13polars_stream", scope: !2152, file: !2148, line: 91, type: !1881, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!109 = distinct !DISubprogram(name: "write<2>", linkageName: "_RINvXs7p_NtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbufNtB7_8TimeUnitINtNtCsfyRUffk9zcp_6planus6traits16WriteAsPrimitiveB1C_E5writeKj2_ECs2g09Ig8GZd6_13polars_stream", scope: !2167, file: !2139, line: 7781, type: !1939, scopeLine: 7781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!110 = distinct !DILexicalBlock(scope: !108, file: !2148, line: 96, column: 9)
!111 = distinct !DISubprogram(name: "eq<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Block>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockENtNtB9_3cmp9PartialEq2eqCs2g09Ig8GZd6_13polars_stream", scope: !1915, file: !1913, line: 1716, type: !1881, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!112 = distinct !DISubprogram(name: "next<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Block>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream", scope: !2078, file: !2077, line: 157, type: !1881, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!113 = distinct !DILexicalBlock(scope: !112, file: !2077, line: 161, column: 17)
!114 = distinct !DILexicalBlock(scope: !113, file: !2077, line: 162, column: 17)
!115 = distinct !DISubprogram(name: "add<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Block>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockE3addCs2g09Ig8GZd6_13polars_stream", scope: !1916, file: !1913, line: 651, type: !1881, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!116 = distinct !DISubprogram(name: "drop_in_place<http::header::value::HeaderValue>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!117 = distinct !DISubprogram(name: "drop_in_place<bytes::bytes::Bytes>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshK0ivY6saku_5bytes5bytes5BytesECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!118 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs1_NtCshK0ivY6saku_5bytes5bytesNtB5_5BytesNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !2190, file: !1998, line: 682, type: !1881, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!119 = distinct !{null}
!120 = distinct !DISubprogram(name: "drop_in_place<http::header::name::HeaderName>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1d9mkheQt2j_4http6header4name10HeaderNameECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!121 = distinct !DISubprogram(name: "drop_in_place<http::header::name::Repr<http::header::name::Custom>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs1d9mkheQt2j_4http6header4name4ReprNtBJ_6CustomEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!122 = distinct !DISubprogram(name: "drop_in_place<http::header::name::Custom>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1d9mkheQt2j_4http6header4name6CustomECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!123 = distinct !DISubprogram(name: "drop_in_place<http::byte_str::ByteStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1d9mkheQt2j_4http8byte_str7ByteStrECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!124 = distinct !{null}
!125 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<http::header::value::HeaderValue>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!126 = distinct !{null}
!127 = distinct !DISubprogram(name: "drop_in_place<http::method::Inner>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1d9mkheQt2j_4http6method5InnerECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!128 = distinct !DISubprogram(name: "drop_in_place<http::method::Method>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1d9mkheQt2j_4http6method6MethodECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!129 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::scheduler::Handle>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler6HandleECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!130 = distinct !DISubprogram(name: "drop_in_place<alloc::sync::Arc<tokio::runtime::scheduler::current_thread::Handle, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleEECs2g09Ig8GZd6_13polars_stream", scope: !1885, file: !1883, line: 810, type: !1881, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!131 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<tokio::runtime::scheduler::current_thread::Handle>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleEE6as_refCs2g09Ig8GZd6_13polars_stream", scope: !1916, file: !1913, line: 440, type: !1881, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!132 = distinct !DISubprogram(name: "inner<tokio::runtime::scheduler::current_thread::Handle, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE5innerCs2g09Ig8GZd6_13polars_stream", scope: !2084, file: !2082, line: 2104, type: !1881, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
!133 = distinct !DISubprogram(name: "drop<tokio::runtime::scheduler::current_thread::Handle, alloc::alloc::Global>", linkageName: "_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream", scope: !2106, file: !2082, line: 2810, type: !1881, scopeLine: 2810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1880)
end_hunk_1
