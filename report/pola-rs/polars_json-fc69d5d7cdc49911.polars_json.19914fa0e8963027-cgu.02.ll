Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_json-fc69d5d7cdc49911.polars_json.19914fa0e8963027-cgu.02?download=true
inline.NumInlined: 1582
inline.NumDeleted: 1033
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB1n_Es3_0ENtNtNtBa_6traits8iterator8Iterator4foldB1n_NCB2l_s4_0EB2s_:bb.a
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !13110

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !13111, !noalias !13094
  %i.g = ptrtoint ptr %2 to i64, !dbg !13112
  %i.h = ptrtoint ptr %1 to i64, !dbg !13112
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !13112
  %i.j = lshr exact i64 %i.i, 5, !dbg !13112
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d, !dbg !13124

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !13125, !alias.scope !13126
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1S_8adapters3map8map_foldRBQ_BQ_BQ_NCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es3_0NCB3k_s4_0E0EB3r_.exit, !dbg !13127

bb.d:                                             ; preds = %.preheader.i.i.i.1, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %.preheader.i.i.i.1 ], !dbg !13128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13129, !noalias !13126
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.0.i, !dbg !13131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13134, !noalias !13137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !13134, !noalias !13126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13142, !noalias !13137
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m) #27
          to label %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEs3_0B8_.exit.i.i unwind label %bb.i, !dbg !13143, !noalias !13146

_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEs3_0B8_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13147, !noalias !13150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !13147, !noalias !13126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !13147, !noalias !13137
  invoke void @_RINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEB6_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 2)
          to label %.preheader.i.i.i.preheader unwind label %bb.e, !dbg !13155, !noalias !13156

bb.e:                                             ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEs3_0B8_.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeANtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypej2_ECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(64) %i.a) #23
          to label %.body.i.i unwind label %bb.h, !dbg !13157, !noalias !13158

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %.preheader.i.i.i.1 unwind label %.peel.begin.i.i.i.i, !dbg !13159, !noalias !13158

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13157, !noalias !13150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13161, !noalias !13137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13161, !noalias !13137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !13162, !noalias !13126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13163, !noalias !13126
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !13164 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j, !dbg !13167
  br i1 %i.p, label %bb.k, label %bb.d, !dbg !13167

.preheader.i.i.i.preheader:                       ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEs3_0B8_.exit.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %.preheader.i.i.i unwind label %.peel.begin.i.i.i.i, !dbg !13159, !noalias !13158

.peel.begin.i.i.i.i:                              ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  %i.q = phi i1 [ false, %.preheader.i.i.i.preheader ], [ true, %.preheader.i.i.i ], !dbg !13159
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.q, label %.body.i.i, label %bb.f, !dbg !13159

bb.f:                                             ; preds = %.peel.begin.i.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(32) %i.k) #23
          to label %.body.i.i unwind label %bb.g, !dbg !13159, !noalias !13158

bb.g:                                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !13159, !noalias !13158
  unreachable, !dbg !13159

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !13168, !noalias !13158
  unreachable, !dbg !13168

.body.i.i:                                        ; preds = %bb.i, %bb.f, %.peel.begin.i.i.i.i, %bb.e
  %eh.lpad-body3.i.i = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.r, %.peel.begin.i.i.i.i ], [ %i.r, %bb.f ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body3.i.i, !dbg !13169

bb.i:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(32) %i.c) #23
          to label %.body.i.i unwind label %bb.j, !dbg !13161, !noalias !13146

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !13169, !noalias !13146
  unreachable, !dbg !13169

bb.k:                                             ; preds = %.preheader.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !13170, !noalias !13098
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1S_8adapters3map8map_foldRBQ_BQ_BQ_NCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es3_0NCB3k_s4_0E0EB3r_.exit, !dbg !13127

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1S_8adapters3map8map_foldRBQ_BQ_BQ_NCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es3_0NCB3k_s4_0E0EB3r_.exit: ; preds = %bb.c, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13171
  ret void, !dbg !13172
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callTReTRNtB1r_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRB3u_EEENCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6E_7HashMapB5q_B5s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB4q_7collect12FromIteratorB5p_E9from_iterBN_E0E0EB2r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13173 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !13174
  %i.c = icmp eq ptr %0, %1, !dbg !13183
  br i1 %i.c, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_TReTRNtBU_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB46_E0NCINvNvB1L_8for_each4callB39_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6U_7HashMapB3a_B3c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1P_7collect12FromIteratorB39_E9from_iterINtB2B_3MapBF_B4Z_EE0E0E0EB58_.exit, label %bb.b, !dbg !13184

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64, !dbg !13185
  %i.e = ptrtoint ptr %0 to i64, !dbg !13185
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !13185
  %i.g = udiv exact i64 %i.f, 72, !dbg !13185
  %.sroa.5.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %bb.c, !dbg !13197

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2M_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2M_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i ], !dbg !13198 ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !13199 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13203), !dbg !13206
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !13207 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 55, !dbg !13217
  %i.l = load i8, ptr %i.k, align 1, !dbg !13217, !range !1053, !alias.scope !13226, !noalias !13231, !noundef !12 ; 2 uses
  %i.m = icmp ugt i8 %i.l, -41, !dbg !13235
  br i1 %i.m, label %bb.e, label %bb.d, !dbg !13235

bb.d:                                             ; preds = %bb.c
  %i.n = add i8 %i.l, 64, !dbg !13236
  %i.o = call i8 @llvm.umin.i8(i8 %i.n, i8 24), !dbg !13240
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.o to i64, !dbg !13240
  br label %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i, !dbg !13245

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !dbg !13248, !alias.scope !13226, !noalias !13231, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !13249
  %i.r = load i64, ptr %i.q, align 8, !dbg !13249, !alias.scope !13226, !noalias !13231, !noundef !12
  br label %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i, !dbg !13250

_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %bb.d ], !dbg !13251
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.j, %bb.d ], !dbg !13252 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13253, !noalias !13261
  store ptr %i.i, ptr %i.b, align 8, !dbg !13264, !noalias !13265
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13264, !noalias !13265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13264, !noalias !13265
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa_idx.i.i, align 8, !dbg !13264, !noalias !13265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13266, !noalias !13268
  call fastcc void @_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.01.0.i.i.i.i, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b) #27, !dbg !13271, !noalias !13272
  %i.s = load i64, ptr %i.h, align 8, !dbg !13273, !range !250, !alias.scope !13276, !noalias !13268, !noundef !12
  %i.t = icmp eq i64 %i.s, -9223372036854775808, !dbg !13273
  br i1 %i.t, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2M_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i, label %bb.f, !dbg !13273

bb.f:                                             ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i unwind label %bb.g, !dbg !13279, !noalias !13272

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i.i.i unwind label %bb.h, !dbg !13282, !noalias !13272

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !13279, !noalias !13272
  unreachable, !dbg !13279

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  resume { ptr, i32 } %i.u, !dbg !13279

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !13284, !noalias !13272
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2M_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i, !dbg !13273

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2M_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13286, !noalias !13268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13287, !noalias !13261
  %i.w = add nuw i64 %.sroa.01.0.i, 1, !dbg !13288 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.g, !dbg !13291
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_TReTRNtBU_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB46_E0NCINvNvB1L_8for_each4callB39_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6U_7HashMapB3a_B3c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1P_7collect12FromIteratorB39_E9from_iterINtB2B_3MapBF_B4Z_EE0E0E0EB58_.exit, label %bb.c, !dbg !13291

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_TReTRNtBU_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB46_E0NCINvNvB1L_8for_each4callB39_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6U_7HashMapB3a_B3c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1P_7collect12FromIteratorB39_E9from_iterINtB2B_3MapBF_B4Z_EE0E0E0EB58_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2M_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i, %bb.a
  ret void, !dbg !13292
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4p_8try_folduNCINvNvB4p_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1t_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB7R_ENcNtB8P_5Break0E0B8P_E0IB8Q_B8P_EEB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13293 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13294), !dbg !13297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13298), !dbg !13297
  %i.c = load ptr, ptr %1, align 8, !dbg !13300, !alias.scope !13307, !noalias !13294, !nonnull !12, !noundef !12 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13310
  %i.e = load ptr, ptr %i.d, align 8, !dbg !13310, !alias.scope !13307, !noalias !13294, !nonnull !12, !noundef !12
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !13312
  br i1 %i.f, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5e_B3x_EENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B63_EIB3c_NtNtBa_7convert10InfallibleB4u_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5S_NcNtB5S_5Break0E0B5S_E0E0B5d_EB6c_.exit, label %bb.b, !dbg !13316

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13317
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !13318
  store ptr %i.h, ptr %1, align 8, !dbg !13321, !alias.scope !13307, !noalias !13294
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !13322
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !13322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13323), !dbg !13322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13326), !dbg !13322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13328
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.g, align 8, !dbg !13329, !noalias !13332, !nonnull !12, !align !405, !noundef !12 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !13329
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !13329, !noalias !13332 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13333), !dbg !13329
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !13336 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 55, !dbg !13343
  %i.m = load i8, ptr %i.l, align 1, !dbg !13343, !range !1053, !alias.scope !13348, !noalias !13351, !noundef !12 ; 2 uses
  %i.n = icmp ugt i8 %i.m, -41, !dbg !13353
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !13353

bb.c:                                             ; preds = %bb.b
  %i.o = add i8 %i.m, 64, !dbg !13354
  %i.p = tail call i8 @llvm.umin.i8(i8 %i.o, i8 24), !dbg !13356
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.p to i64, !dbg !13356
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i, !dbg !13359

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !dbg !13360, !alias.scope !13348, !noalias !13351, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !13361
  %i.s = load i64, ptr %i.r, align 8, !dbg !13361, !alias.scope !13348, !noalias !13351, !noundef !12
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i, !dbg !13362

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.s, %bb.d ], [ %.sroa.0.0.i.i.i.i.i, %bb.c ], !dbg !13363 ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.k, %bb.c ], !dbg !13364 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24, !dbg !13365
  %i.u = load i64, ptr %i.t, align 8, !dbg !13365, !alias.scope !13375, !noalias !13378, !noundef !12
  %i.v = icmp eq i64 %i.u, 0, !dbg !13380
  br i1 %i.v, label %select.unfold.i.i.i, label %bb.e, !dbg !13380

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32, !dbg !13381
  %i.x = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.01.0.i.i.i.i), !dbg !13382, !noalias !13351 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13385), !dbg !13388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13392), !dbg !13395
  %i.y = lshr i64 %i.x, 57, !dbg !13398
  %i.z = trunc nuw nsw i64 %i.y to i8, !dbg !13407
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !13409
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !13409, !alias.scope !13413, !noalias !13414, !noundef !12 ; 2 uses
  %i.ac = load ptr, ptr %.val.i.i, align 8, !alias.scope !13413, !noalias !13414, !nonnull !12, !noundef !12 ; 2 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f, !dbg !13416

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.011.0.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ax, %bb.g ], !dbg !13418
  %.pn.i.i.i.i.i.i = phi i64 [ %i.x, %bb.e ], [ %i.ay, %bb.g ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.ab, !dbg !13418 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i.i.i.i.i, !dbg !13419
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 1, !dbg !13424, !noalias !13433 ; 2 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, %i.ae, !dbg !13436
  %i.ah = bitcast <16 x i1> %i.ag to i16, !dbg !13443 ; 2 uses
  %.not.i.not33.i.i.i.i.i = icmp eq i16 %i.ah, 0, !dbg !13446
  br i1 %.not.i.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !13455

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i
  %.sroa.05.0.i34.i.i.i.i.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i.i.i.i.i, i1 true), !dbg !13456
  %i.aj = zext nneg i16 %i.ai to i64, !dbg !13461
  %i.ak = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aj, !dbg !13462
  %i.al = and i64 %i.ak, %i.ab, !dbg !13462
  %i.am = sub nsw i64 0, %i.al, !dbg !13464
  %i.an = getelementptr inbounds [48 x i8], ptr %i.ac, i64 %i.am, !dbg !13476 ; 5 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -40, !dbg !13477
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !dbg !13477, !noalias !13478, !noundef !12
  %i.ap = icmp eq i64 %.sroa.01.0.i.i.i.i, %.val4.i.i.i.i.i.i, !dbg !13481
  br i1 %i.ap, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i, !dbg !13481, !prof !13505

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -48, !dbg !13506
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !dbg !13477, !noalias !13478, !nonnull !12, !noundef !12
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i.i.i, i64 %.sroa.01.0.i.i.i.i), !dbg !13512, !alias.scope !13517, !noalias !13521
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0, !dbg !13512
  br i1 %i.ar, label %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0B8_.exit.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i, !dbg !13522, !prof !13527

._crit_edge.i.i.i.i.i:                            ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i, %bb.f
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, splat (i8 -1), !dbg !13528
  %i.at = bitcast <16 x i1> %i.as to i16, !dbg !13534
  %i.au = icmp eq i16 %i.at, 0, !dbg !13537
  br i1 %i.au, label %bb.g, label %select.unfold.i.i.i, !dbg !13537, !prof !220

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.av = add i16 %.sroa.05.0.i34.i.i.i.i.i, -1, !dbg !13539
  %i.aw = and i16 %i.av, %.sroa.05.0.i34.i.i.i.i.i, !dbg !13542 ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aw, 0, !dbg !13446
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !13455

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ax = add i64 %.sroa.011.0.i.i.i.i.i.i, 16, !dbg !13546 ; 2 uses
  %i.ay = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ax, !dbg !13550
  br label %bb.f, !dbg !13416

select.unfold.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !dbg !13551, !noalias !13351
  unreachable, !dbg !13551

_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0B8_.exit.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.an, i64 -32, !dbg !13554
  %i.ba = getelementptr inbounds i8, ptr %i.an, i64 -16, !dbg !13555
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !13555, !noalias !13351, !nonnull !12, !noundef !12
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 -8, !dbg !13570
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !13570, !noalias !13351, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13571, !noalias !13572
  %i.be = load ptr, ptr %i.az, align 8, !dbg !13571, !noalias !13351, !nonnull !12, !align !405, !noundef !12
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be) #27, !dbg !13573, !noalias !13351
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bf = load i8, ptr %.val2.i.i, align 1, !dbg !13574, !range !3009, !noalias !13575, !noundef !12
  %i.bg = trunc nuw i8 %i.bf to i1, !dbg !13574
  call void @_RINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize12__deserializeRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bb, i64 noundef %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i1 noundef zeroext %i.bg), !dbg !13576, !noalias !13577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13578, !noalias !13572
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !13579, !noalias !13332 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13579
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13579, !noalias !13332 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13579
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13579, !noalias !13332 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13580), !dbg !13579
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !13583
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h, !dbg !13588

bb.h:                                             ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0B8_.exit.i.i
  %i.bh = load i64, ptr %3, align 8, !dbg !13589, !range !12705, !alias.scope !13592, !noalias !13595, !noundef !12
  %i.bi = icmp eq i64 %i.bh, 18, !dbg !13589
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i, label %bb.i, !dbg !13589

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i unwind label %bb.k, !dbg !13597, !noalias !13599

bb.j:                                             ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0B8_.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !13600
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !13600, !alias.scope !13606, !noalias !13607
  br label %bb.l, !dbg !13608

bb.k:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !13609, !noalias !13595
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !13609
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !13609, !noalias !13595
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !13609
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !13609, !noalias !13595
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !13609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !13609, !noalias !13332
  resume { ptr, i32 } %i.bj, !dbg !13610

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.i, %bb.h
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !13609, !noalias !13595
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !13609
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !13609, !noalias !13595
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !13609
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !13609, !noalias !13595
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !13609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !13609, !noalias !13332
  br label %bb.l, !dbg !13611

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i, %bb.j
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.j ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.j ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !13612, !alias.scope !13606, !noalias !13607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13613, !noalias !13328
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !13614, !alias.scope !13618, !noalias !13621, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !13614
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !13614, !alias.scope !13618, !noalias !13621
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !13614
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !13623
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !13623
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13624
  store ptr %5, ptr %i.bk, align 8, !dbg !13624, !alias.scope !13630, !noalias !13298
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13624
  store ptr %6, ptr %i.bl, align 8, !dbg !13624, !alias.scope !13630, !noalias !13298
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5e_B3x_EENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B63_EIB3c_NtNtBa_7convert10InfallibleB4u_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5S_NcNtB5S_5Break0E0B5S_E0E0B5d_EB6c_.exit, !dbg !13633

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5e_B3x_EENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B63_EIB3c_NtNtBa_7convert10InfallibleB4u_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5S_NcNtB5S_5Break0E0B5S_E0E0B5d_EB6c_.exit: ; preds = %bb.a, %bb.l
  %storemerge.i = phi i64 [ 1, %bb.l ], [ 0, %bb.a ], !dbg !13634
  store i64 %storemerge.i, ptr %0, align 8, !dbg !13634, !alias.scope !13294, !noalias !13298
  ret void, !dbg !13635
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4n_8for_each4callTReTRNtB1r_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3u_EEENCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6E_7HashMapB5r_B5t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB4r_7collect12FromIteratorB5q_E9from_iterBN_E0E0EB2r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13636 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !13637
  %i.c = icmp eq ptr %0, %1, !dbg !13646
  br i1 %i.c, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_TReTRNtBU_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB45_E0NCINvNvB1L_8for_each4callB39_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6U_7HashMapB3a_B3c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1P_7collect12FromIteratorB39_E9from_iterINtB2B_3MapBF_B4Z_EE0E0E0EB58_.exit, label %bb.b, !dbg !13647

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64, !dbg !13648
  %i.e = ptrtoint ptr %0 to i64, !dbg !13648
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !13648
  %i.g = udiv exact i64 %i.f, 72, !dbg !13648
  %.sroa.5.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %bb.c, !dbg !13660

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i ], !dbg !13661 ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !13662 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13666), !dbg !13669
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !13670 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 55, !dbg !13679
  %i.l = load i8, ptr %i.k, align 1, !dbg !13679, !range !1053, !alias.scope !13684, !noalias !13689, !noundef !12 ; 2 uses
  %i.m = icmp ugt i8 %i.l, -41, !dbg !13693
  br i1 %i.m, label %bb.e, label %bb.d, !dbg !13693

bb.d:                                             ; preds = %bb.c
  %i.n = add i8 %i.l, 64, !dbg !13694
  %i.o = call i8 @llvm.umin.i8(i8 %i.n, i8 24), !dbg !13696
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.o to i64, !dbg !13696
  br label %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i, !dbg !13699

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !dbg !13700, !alias.scope !13684, !noalias !13689, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !13701
  %i.r = load i64, ptr %i.q, align 8, !dbg !13701, !alias.scope !13684, !noalias !13689, !noundef !12
  br label %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i, !dbg !13702

_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %bb.d ], !dbg !13703
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.j, %bb.d ], !dbg !13704 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13705, !noalias !13710
  store ptr %i.i, ptr %i.b, align 8, !dbg !13713, !noalias !13714
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13713, !noalias !13714
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13713, !noalias !13714
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa_idx.i.i, align 8, !dbg !13713, !noalias !13714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13715, !noalias !13717
  call fastcc void @_RNvMs3_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE6insertCs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.01.0.i.i.i.i, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b) #27, !dbg !13720, !noalias !13721
  %i.s = load i64, ptr %i.h, align 8, !dbg !13722, !range !250, !alias.scope !13724, !noalias !13717, !noundef !12
  %i.t = icmp eq i64 %i.s, -9223372036854775808, !dbg !13722
  br i1 %i.t, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i, label %bb.f, !dbg !13722

bb.f:                                             ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i unwind label %bb.g, !dbg !13727, !noalias !13721

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i.i.i unwind label %bb.h, !dbg !13730, !noalias !13721

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !13727, !noalias !13721
  unreachable, !dbg !13727

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  resume { ptr, i32 } %i.u, !dbg !13727

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !13732, !noalias !13721
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i, !dbg !13722

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEECs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0B8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13734, !noalias !13717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13735, !noalias !13710
  %i.w = add nuw i64 %.sroa.01.0.i, 1, !dbg !13736 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.g, !dbg !13739
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_TReTRNtBU_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB45_E0NCINvNvB1L_8for_each4callB39_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6U_7HashMapB3a_B3c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1P_7collect12FromIteratorB39_E9from_iterINtB2B_3MapBF_B4Z_EE0E0E0EB58_.exit, label %bb.c, !dbg !13739

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1R_8adapters3map8map_foldRBQ_TReTRNtBU_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB45_E0NCINvNvB1L_8for_each4callB39_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6U_7HashMapB3a_B3c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1P_7collect12FromIteratorB39_E9from_iterINtB2B_3MapBF_B4Z_EE0E0E0EB58_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldTReTRNtBZ_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEuNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structB2L_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1P_NCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB64_7HashMapB1Q_B1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB58_7collect12FromIteratorB1P_E9from_iterINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3F_EE0E0E0B3O_.exit.i, %bb.a
  ret void, !dbg !13740
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4q_8try_folduNCINvNvB4q_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1t_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB7S_ENcNtB8Q_5Break0E0B8Q_E0IB8R_B8Q_EEB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13741 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13742), !dbg !13745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13746), !dbg !13745
  %i.c = load ptr, ptr %1, align 8, !dbg !13748, !alias.scope !13754, !noalias !13742, !nonnull !12, !noundef !12 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13757
  %i.e = load ptr, ptr %i.d, align 8, !dbg !13757, !alias.scope !13754, !noalias !13742, !nonnull !12, !noundef !12
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !13758
  br i1 %i.f, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5e_B3x_EENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B63_EIB3c_NtNtBa_7convert10InfallibleB4u_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5S_NcNtB5S_5Break0E0B5S_E0E0B5d_EB6c_.exit, label %bb.b, !dbg !13760

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13761
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !13762
  store ptr %i.h, ptr %1, align 8, !dbg !13764, !alias.scope !13754, !noalias !13742
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !13765
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !13765
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13766), !dbg !13765
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13769), !dbg !13765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13771
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.g, align 8, !dbg !13772, !noalias !13775, !nonnull !12, !align !405, !noundef !12 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !13772
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !13772, !noalias !13775 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13776), !dbg !13772
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !13779 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 55, !dbg !13786
  %i.m = load i8, ptr %i.l, align 1, !dbg !13786, !range !1053, !alias.scope !13791, !noalias !13794, !noundef !12 ; 2 uses
  %i.n = icmp ugt i8 %i.m, -41, !dbg !13796
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !13796

bb.c:                                             ; preds = %bb.b
  %i.o = add i8 %i.m, 64, !dbg !13797
  %i.p = tail call i8 @llvm.umin.i8(i8 %i.o, i8 24), !dbg !13799
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.p to i64, !dbg !13799
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i, !dbg !13802

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !dbg !13803, !alias.scope !13791, !noalias !13794, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !13804
  %i.s = load i64, ptr %i.r, align 8, !dbg !13804, !alias.scope !13791, !noalias !13794, !noundef !12
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i, !dbg !13805

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.s, %bb.d ], [ %.sroa.0.0.i.i.i.i.i, %bb.c ], !dbg !13806 ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.k, %bb.c ], !dbg !13807 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24, !dbg !13808
  %i.u = load i64, ptr %i.t, align 8, !dbg !13808, !alias.scope !13812, !noalias !13815, !noundef !12
  %i.v = icmp eq i64 %i.u, 0, !dbg !13817
  br i1 %i.v, label %select.unfold.i.i.i, label %bb.e, !dbg !13817

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32, !dbg !13818
  %i.x = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.01.0.i.i.i.i), !dbg !13819, !noalias !13794 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13821), !dbg !13824
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13826), !dbg !13829
  %i.y = lshr i64 %i.x, 57, !dbg !13831
  %i.z = trunc nuw nsw i64 %i.y to i8, !dbg !13834
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !13835
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !13835, !alias.scope !13837, !noalias !13838, !noundef !12 ; 2 uses
  %i.ac = load ptr, ptr %.val.i.i, align 8, !alias.scope !13837, !noalias !13838, !nonnull !12, !noundef !12 ; 2 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f, !dbg !13840

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.011.0.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ax, %bb.g ], !dbg !13841
  %.pn.i.i.i.i.i.i = phi i64 [ %i.x, %bb.e ], [ %i.ay, %bb.g ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.ab, !dbg !13841 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i.i.i.i.i, !dbg !13842
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 1, !dbg !13845, !noalias !13849 ; 2 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, %i.ae, !dbg !13852
  %i.ah = bitcast <16 x i1> %i.ag to i16, !dbg !13855 ; 2 uses
  %.not.i.not33.i.i.i.i.i = icmp eq i16 %i.ah, 0, !dbg !13857
  br i1 %.not.i.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !13860

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i
  %.sroa.05.0.i34.i.i.i.i.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i.i.i.i.i, i1 true), !dbg !13861
  %i.aj = zext nneg i16 %i.ai to i64, !dbg !13864
  %i.ak = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aj, !dbg !13865
  %i.al = and i64 %i.ak, %i.ab, !dbg !13865
  %i.am = sub nsw i64 0, %i.al, !dbg !13866
  %i.an = getelementptr inbounds [48 x i8], ptr %i.ac, i64 %i.am, !dbg !13871 ; 5 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -40, !dbg !13872
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !dbg !13872, !noalias !13873, !noundef !12
  %i.ap = icmp eq i64 %.sroa.01.0.i.i.i.i, %.val4.i.i.i.i.i.i, !dbg !13876
  br i1 %i.ap, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i, !dbg !13876, !prof !13505

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -48, !dbg !13882
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !dbg !13872, !noalias !13873, !nonnull !12, !noundef !12
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i.i.i, i64 %.sroa.01.0.i.i.i.i), !dbg !13886, !alias.scope !13888, !noalias !13892
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0, !dbg !13886
  br i1 %i.ar, label %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0B8_.exit.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i, !dbg !13893, !prof !13527

._crit_edge.i.i.i.i.i:                            ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i, %bb.f
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, splat (i8 -1), !dbg !13895
  %i.at = bitcast <16 x i1> %i.as to i16, !dbg !13899
  %i.au = icmp eq i16 %i.at, 0, !dbg !13901
  br i1 %i.au, label %bb.g, label %select.unfold.i.i.i, !dbg !13901, !prof !220

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.thread.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.av = add i16 %.sroa.05.0.i34.i.i.i.i.i, -1, !dbg !13903
  %i.aw = and i16 %i.av, %.sroa.05.0.i34.i.i.i.i.i, !dbg !13905 ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aw, 0, !dbg !13857
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !13860

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ax = add i64 %.sroa.011.0.i.i.i.i.i.i, 16, !dbg !13907 ; 2 uses
  %i.ay = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ax, !dbg !13909
  br label %bb.f, !dbg !13840

select.unfold.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !dbg !13910, !noalias !13794
  unreachable, !dbg !13910

_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0B8_.exit.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0Cs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.an, i64 -32, !dbg !13913
  %i.ba = getelementptr inbounds i8, ptr %i.an, i64 -16, !dbg !13914
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !13914, !noalias !13794, !nonnull !12, !noundef !12
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 -8, !dbg !13928
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !13928, !noalias !13794, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13929, !noalias !13930
  %i.be = load ptr, ptr %i.az, align 8, !dbg !13929, !noalias !13794, !nonnull !12, !align !405, !noundef !12
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be) #27, !dbg !13931, !noalias !13794
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bf = load i8, ptr %.val2.i.i, align 1, !dbg !13932, !range !3009, !noalias !13933, !noundef !12
  %i.bg = trunc nuw i8 %i.bf to i1, !dbg !13932
  call void @_RINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize12__deserializeRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bb, i64 noundef %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i1 noundef zeroext %i.bg), !dbg !13934, !noalias !13935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13936, !noalias !13930
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !13937, !noalias !13775 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13937
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !13937, !noalias !13775 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13937
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13937, !noalias !13775 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13938), !dbg !13937
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !13941
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.h, !dbg !13945

bb.h:                                             ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0B8_.exit.i.i
  %i.bh = load i64, ptr %3, align 8, !dbg !13946, !range !12705, !alias.scope !13949, !noalias !13952, !noundef !12
  %i.bi = icmp eq i64 %i.bh, 18, !dbg !13946
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i, label %bb.i, !dbg !13946

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i unwind label %bb.k, !dbg !13954, !noalias !13956

bb.j:                                             ; preds = %_RNCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0B8_.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !13957
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !13957, !alias.scope !13962, !noalias !13963
  br label %bb.l, !dbg !13964

bb.k:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !13965, !noalias !13952
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !13965
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !13965, !noalias !13952
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !13965
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !13965, !noalias !13952
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !13965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !13965, !noalias !13775
  resume { ptr, i32 } %i.bj, !dbg !13966

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.i, %bb.h
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !13965, !noalias !13952
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !13965
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !13965, !noalias !13952
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !13965
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !13965, !noalias !13952
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !13965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !13965, !noalias !13775
  br label %bb.l, !dbg !13967

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i, %bb.j
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.j ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.j ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs2c5WrizoNH7_11polars_json.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !13968, !alias.scope !13962, !noalias !13963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13969, !noalias !13771
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !13970, !alias.scope !13972, !noalias !13975, !noundef !12
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !13970
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !13970, !alias.scope !13972, !noalias !13975
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !13970
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !13977
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !13977
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13978
  store ptr %5, ptr %i.bk, align 8, !dbg !13978, !alias.scope !13982, !noalias !13746
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13978
  store ptr %6, ptr %i.bl, align 8, !dbg !13978, !alias.scope !13982, !noalias !13746
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5e_B3x_EENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B63_EIB3c_NtNtBa_7convert10InfallibleB4u_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5S_NcNtB5S_5Break0E0B5S_E0E0B5d_EB6c_.exit, !dbg !13985

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBP_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5e_B3x_EENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEs0_0NCINvXB2A_INtB2A_12GenericShuntINtB2y_3MapB3_B63_EIB3c_NtNtBa_7convert10InfallibleB4u_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3x_B5S_NcNtB5S_5Break0E0B5S_E0E0B5d_EB6c_.exit: ; preds = %bb.a, %bb.l
  %storemerge.i = phi i64 [ 1, %bb.l ], [ 0, %bb.a ], !dbg !13986
  store i64 %storemerge.i, ptr %0, align 8, !dbg !13986, !alias.scope !13742, !noalias !13746
  ret void, !dbg !13987
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3a_8try_folduNCINvMs0_NtNtBc_3ops9try_traitINtB6h_17NeverShortCircuituE10wrap_mut_2uNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNCINvB6_8map_foldB7h_TB7h_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtB8O_8IndexSetB7h_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3e_7collect12FromIteratorB7h_E9from_iterB41_E0NCINvNvB3a_8for_each4callB8x_NCINvXsb_NtB8Q_3mapINtBbQ_8IndexMapB7h_uB9B_EINtBar_6ExtendB8x_E6extendIBO_B41_B8F_EE0E0E0E0B6C_E0INtNtB6j_12control_flow11ControlFlowB6C_EEB2j_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13988 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13989), !dbg !13992
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !13993, !nonnull !12, !noundef !12 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !13993 ; 2 uses
  %.not.i = icmp eq ptr %.promoted.i, %i.d, !dbg !13996
  br i1 %.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB5b_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B6q_EIB37_NtNtBa_7convert10InfallibleB4n_EEB1z_8try_folduNCINvMs0_B5O_B5L_10wrap_mut_2uB3s_NCINvB2t_8map_foldB3s_TB3s_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtBab_8IndexSetB3s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1D_7collect12FromIteratorB3s_E9from_iterB7w_E0NCINvNvB1z_8for_each4callB9U_NCINvXsb_NtBad_3mapINtBdd_8IndexMapB3s_uBaY_EINtBbO_6ExtendB9U_E6extendIB7S_B7w_Ba2_EE0E0E0E0B5L_E0E0B56_EB6w_.exit, label %.lr.ph.i, !dbg !14007

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.val.i.i.i = load ptr, ptr %1, align 8, !nonnull !12, !align !405
  br label %bb.b, !dbg !14007

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueINtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3U_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB59_EIB1Q_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B4x_B4u_10wrap_mut_2uB2b_NCINvB4_8map_foldB2b_TB2b_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtB9M_8IndexSetB2b_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB7Y_7collect12FromIteratorB2b_E9from_iterB6e_E0NCINvNvB7U_8for_each4callB9v_NCINvXsb_NtB9O_3mapINtBcO_8IndexMapB2b_uBaz_EINtBbp_6ExtendB9v_E6extendIB6z_B6e_B9D_EE0E0E0E0B4u_E0E0B5f_.exit.i, %.lr.ph.i
  %i.f = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.g, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueINtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3U_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB59_EIB1Q_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B4x_B4u_10wrap_mut_2uB2b_NCINvB4_8map_foldB2b_TB2b_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtB9M_8IndexSetB2b_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB7Y_7collect12FromIteratorB2b_E9from_iterB6e_E0NCINvNvB7U_8for_each4callB9v_NCINvXsb_NtB9O_3mapINtBcO_8IndexMapB2b_uBaz_EINtBbp_6ExtendB9v_E6extendIB6z_B6e_B9D_EE0E0E0E0B4u_E0E0B5f_.exit.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !14008 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !dbg !14011, !alias.scope !13993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13989
  call void @_RNvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5infer(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.f), !dbg !14012, !noalias !13989
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !14018, !noalias !14019 ; 3 uses
  %.not.i.i.i.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !14022
  br i1 %.not.i.i.i.not.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueINtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3U_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB59_EIB1Q_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B4x_B4u_10wrap_mut_2uB2b_NCINvB4_8map_foldB2b_TB2b_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtB9M_8IndexSetB2b_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB7Y_7collect12FromIteratorB2b_E9from_iterB6e_E0NCINvNvB7U_8for_each4callB9v_NCINvXsb_NtB9O_3mapINtBcO_8IndexMapB2b_uBaz_EINtBbp_6ExtendB9v_E6extendIB6z_B6e_B9D_EE0E0E0E0B4u_E0E0B5f_.exit.i, label %bb.c, !dbg !14027

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.i = load i64, ptr %2, align 8, !dbg !14028, !range !12705, !alias.scope !14031, !noalias !14034, !noundef !12
  %i.j = icmp eq i64 %i.i, 18, !dbg !14028
  br i1 %i.j, label %bb.f, label %bb.d, !dbg !14028

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.f unwind label %bb.e, !dbg !14037, !noalias !14039

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !dbg !14040, !noalias !14034
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !14040, !noalias !14019
  %.sroa.68.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !14040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !14040, !noalias !14019
  resume { ptr, i32 } %i.k, !dbg !14041

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueINtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3U_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB59_EIB1Q_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B4x_B4u_10wrap_mut_2uB2b_NCINvB4_8map_foldB2b_TB2b_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtB9M_8IndexSetB2b_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB7Y_7collect12FromIteratorB2b_E9from_iterB6e_E0NCINvNvB7U_8for_each4callB9v_NCINvXsb_NtB9O_3mapINtBcO_8IndexMapB2b_uBaz_EINtBbp_6ExtendB9v_E6extendIB6z_B6e_B9D_EE0E0E0E0B4u_E0E0B5f_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14042, !noalias !14061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !14068, !noalias !14019
  %i.l = call { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !14069, !noalias !14074 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14077, !noalias !14061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14078, !noalias !13989
  %.not9.i = icmp eq ptr %i.g, %i.d, !dbg !13996
  br i1 %.not9.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB5b_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B6q_EIB37_NtNtBa_7convert10InfallibleB4n_EEB1z_8try_folduNCINvMs0_B5O_B5L_10wrap_mut_2uB3s_NCINvB2t_8map_foldB3s_TB3s_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtBab_8IndexSetB3s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1D_7collect12FromIteratorB3s_E9from_iterB7w_E0NCINvNvB1z_8for_each4callB9U_NCINvXsb_NtBad_3mapINtBdd_8IndexMapB3s_uBaY_EINtBbO_6ExtendB9U_E6extendIB7S_B7w_Ba2_EE0E0E0E0B5L_E0E0B56_EB6w_.exit, label %bb.b, !dbg !14007

bb.f:                                             ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !dbg !14040, !noalias !14034
  %.sroa.5.0..8.val.sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..8.val.sroa_idx7.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !14040, !noalias !14019
  %.sroa.68.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !14040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68.0..8.val.sroa_idx9.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !14040, !noalias !14019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14078, !noalias !13989
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB5b_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B6q_EIB37_NtNtBa_7convert10InfallibleB4n_EEB1z_8try_folduNCINvMs0_B5O_B5L_10wrap_mut_2uB3s_NCINvB2t_8map_foldB3s_TB3s_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtBab_8IndexSetB3s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1D_7collect12FromIteratorB3s_E9from_iterB7w_E0NCINvNvB1z_8for_each4callB9U_NCINvXsb_NtBad_3mapINtBdd_8IndexMapB3s_uBaY_EINtBbO_6ExtendB9U_E6extendIB7S_B7w_Ba2_EE0E0E0E0B5L_E0E0B56_EB6w_.exit, !dbg !14079

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB5b_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B6q_EIB37_NtNtBa_7convert10InfallibleB4n_EEB1z_8try_folduNCINvMs0_B5O_B5L_10wrap_mut_2uB3s_NCINvB2t_8map_foldB3s_TB3s_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtBab_8IndexSetB3s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1D_7collect12FromIteratorB3s_E9from_iterB7w_E0NCINvNvB1z_8for_each4callB9U_NCINvXsb_NtBad_3mapINtBdd_8IndexMapB3s_uBaY_EINtBbO_6ExtendB9U_E6extendIB7S_B7w_Ba2_EE0E0E0E0B5L_E0E0B56_EB6w_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueINtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3U_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB59_EIB1Q_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B4x_B4u_10wrap_mut_2uB2b_NCINvB4_8map_foldB2b_TB2b_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtB9M_8IndexSetB2b_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB7Y_7collect12FromIteratorB2b_E9from_iterB6e_E0NCINvNvB7U_8for_each4callB9v_NCINvXsb_NtB9O_3mapINtBcO_8IndexMapB2b_uBaz_EINtBbp_6ExtendB9v_E6extendIB6z_B6e_B9D_EE0E0E0E0B4u_E0E0B5f_.exit.i, %bb.a, %bb.f
  %i.m = phi i1 [ true, %bb.f ], [ false, %bb.a ], [ false, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueINtNtBa_6result6ResultNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3U_9try_trait17NeverShortCircuituEENvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema5inferNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB59_EIB1Q_NtNtBa_7convert10InfallibleB36_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B4x_B4u_10wrap_mut_2uB2b_NCINvB4_8map_foldB2b_TB2b_uEuNCINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtB9M_8IndexSetB2b_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB7Y_7collect12FromIteratorB2b_E9from_iterB6e_E0NCINvNvB7U_8for_each4callB9v_NCINvXsb_NtB9O_3mapINtBcO_8IndexMapB2b_uBaz_EINtBbp_6ExtendB9v_E6extendIB6z_B6e_B9D_EE0E0E0E0B4u_E0E0B5f_.exit.i ]
  ret i1 %i.m, !dbg !14080
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB1n_Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callB1n_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VecB1n_E14extend_trustedBN_E0E0EB2t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14081 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !14082 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14082
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !14082 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !14082
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !14082 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !14085
  %i.a = icmp eq ptr %0, %1, !dbg !14094
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit, label %bb.b, !dbg !14095

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !14096
  %i.c = ptrtoint ptr %0 to i64, !dbg !14096
  %i.d = sub i64 %i.b, %i.c, !dbg !14096          ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !14096            ; 3 uses
  %i.f = icmp eq i64 %i.e, 1, !dbg !14108
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !14108

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !14108
  br label %bb.c, !dbg !14108

bb.c:                                             ; preds = %bb.e, %.new
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %.new ], [ %i.u, %bb.e ] ; 4 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.v, %bb.e ], !dbg !14109 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.e ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !14110
  %.val16.i = load ptr, ptr %i.g, align 8, !dbg !14114, !noalias !14115, !nonnull !12, !align !405, !noundef !12 ; 2 uses
  %i.h = load i8, ptr %.val16.i, align 8, !dbg !14118, !range !872, !noalias !14124, !noundef !12
  %i.i = icmp eq i8 %i.h, 29, !dbg !14127
  br i1 %i.i, label %bb.d, label %.loopexit, !dbg !14127, !prof !13048

.loopexit:                                        ; preds = %bb.c, %bb.d, %.epil.preheader
  %.val15.i.lcssa = phi i64 [ %.val15.i.epil.init, %.epil.preheader ], [ %.val15.i, %bb.c ], [ %i.m, %bb.d ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
          to label %.noexc.i unwind label %bb.f, !dbg !14128, !noalias !14115

.noexc.i:                                         ; preds = %.loopexit
  unreachable, !dbg !14128

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8, !dbg !14129
  %i.k = load ptr, ptr %i.j, align 8, !dbg !14129, !noalias !14124, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !14130
  store ptr %i.k, ptr %i.l, align 8, !dbg !14137, !noalias !14140
  %i.m = add i64 %.val15.i, 1, !dbg !14147        ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !14110
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !14110
  %.val16.i.1 = load ptr, ptr %i.o, align 8, !dbg !14114, !noalias !14115, !nonnull !12, !align !405, !noundef !12 ; 2 uses
  %i.p = load i8, ptr %.val16.i.1, align 8, !dbg !14118, !range !872, !noalias !14124, !noundef !12
  %i.q = icmp eq i8 %i.p, 29, !dbg !14127
  br i1 %i.q, label %bb.e, label %.loopexit, !dbg !14127, !prof !13048

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val16.i.1, i64 8, !dbg !14129
  %i.s = load ptr, ptr %i.r, align 8, !dbg !14129, !noalias !14124, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.m, !dbg !14130
  store ptr %i.s, ptr %i.t, align 8, !dbg !14137, !noalias !14140
  %i.u = add i64 %.val15.i, 2, !dbg !14147        ; 3 uses
  %i.v = add nuw i64 %.sroa.01.0.i, 2, !dbg !14150 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !14153  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !14153
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !14153

bb.f:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i.lcssa, ptr %.sroa.0.0.copyload, align 8, !dbg !14154, !noalias !14115
  resume { ptr, i32 } %i.w, !dbg !14163

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %i.x = and i64 %i.d, 8, !dbg !14127
  %lcmp.mod.not = icmp eq i64 %i.x, 0, !dbg !14127
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit, label %.epil.preheader, !dbg !14127

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.unr-lcssa, %bb.b
  %.val15.i.epil.init = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.v, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i64 %i.e to i1, !dbg !14127
  tail call void @llvm.assume(i1 %lcmp.mod9), !dbg !14127
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !14110
  %.val16.i.epil = load ptr, ptr %i.y, align 8, !dbg !14114, !noalias !14115, !nonnull !12, !align !405, !noundef !12 ; 2 uses
  %i.z = load i8, ptr %.val16.i.epil, align 8, !dbg !14118, !range !872, !noalias !14124, !noundef !12
  %i.aa = icmp eq i8 %i.z, 29, !dbg !14127
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.epilog-lcssa, label %.loopexit, !dbg !14127, !prof !13048

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.epilog-lcssa: ; preds = %.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.val16.i.epil, i64 8, !dbg !14129
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !14129, !noalias !14124, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i.epil.init, !dbg !14130
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !14137, !noalias !14140
  %i.ae = add i64 %.val15.i.epil.init, 1, !dbg !14147
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.unr-lcssa ], [ %i.ae, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldRBQ_BQ_uNCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBQ_Es2_0NCINvNvB1N_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecBQ_E14extend_trustedINtB2D_3MapBF_B3f_EE0E0E0EB3o_.exit.loopexit.epilog-lcssa ], !dbg !14164
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !14164, !noalias !14115
  ret void, !dbg !14170
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB1n_Es3_0ENtNtNtBa_6traits8iterator8Iterator4foldB1o_NCB2m_s4_0EB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14171 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14172), !dbg !14175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14176), !dbg !14175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14178
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ], !dbg !14178
  %i.f = icmp eq ptr %1, %2, !dbg !14187
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !14188

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !14189, !noalias !14172
  %i.g = ptrtoint ptr %2 to i64, !dbg !14190
end_hunk_0
