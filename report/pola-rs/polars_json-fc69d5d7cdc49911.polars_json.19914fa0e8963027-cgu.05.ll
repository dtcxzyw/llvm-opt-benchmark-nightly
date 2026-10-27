Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_json-fc69d5d7cdc49911.polars_json.19914fa0e8963027-cgu.05?download=true
inline.NumInlined: 634
inline.NumDeleted: 387
begin_hunk_0_@_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE14extend_trustedINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterBH_EECs2c5WrizoNH7_11polars_json:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader13, %.lr.ph.i
  %i.y = phi i64 [ %i.aa, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader13 ], !dbg !650 ; 2 uses
  %.sroa.0.06.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.sroa.0.06.i.ph, %.lr.ph.i.preheader13 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.y, !dbg !648
  store ptr %.sroa.0.06.i, ptr %i.z, align 8, !dbg !649, !noalias !635
  %i.aa = add i64 %i.y, 1, !dbg !651              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 32, !dbg !652 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %2, !dbg !646
  br i1 %i.ac, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2D_3VecRBQ_E14extend_trustedBF_E0ECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph.i, !dbg !647, !llvm.loop !624

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2D_3VecRBQ_E14extend_trustedBF_E0ECs2c5WrizoNH7_11polars_json.exit: ; preds = %.lr.ph.i, %middle.block, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE7reserveCs2c5WrizoNH7_11polars_json.exit
  %.val3.i = phi i64 [ %i.j, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE7reserveCs2c5WrizoNH7_11polars_json.exit ], [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i ], !dbg !653
  store i64 %.val3.i, ptr %i.e, align 8, !dbg !654, !noalias !636
  ret void, !dbg !655
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideEECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !661, !range !304, !noundef !267 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !661
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs2c5WrizoNH7_11polars_json.exit, label %bb.b, !dbg !661

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void, !dbg !661

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0, !dbg !662
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !662 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d, !dbg !662

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !663
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs2c5WrizoNH7_11polars_json.exit, !dbg !662

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !664
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs2c5WrizoNH7_11polars_json.exit, !dbg !662
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set8IntoIterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 !dbg !16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !678
  tail call void @_RNvMsn_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_7RawIterTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEE13drop_elementsCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !679
  %i.b = load i64, ptr %0, align 8, !dbg !680, !range !309, !alias.scope !677, !noundef !267 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0, !dbg !680
  br i1 %.not.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map8IntoIterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit, label %bb.b, !dbg !681

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !682
  %i.d = load i64, ptr %i.c, align 8, !dbg !682, !alias.scope !677, !noundef !267 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !683
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map8IntoIterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit, label %bb.c, !dbg !683

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !684
  %i.g = load ptr, ptr %i.f, align 8, !dbg !684, !alias.scope !677, !nonnull !267, !noundef !267
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.b) #17, !dbg !685
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map8IntoIterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit, !dbg !686

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map8IntoIterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void, !dbg !687
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !688 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !692

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2c5WrizoNH7_11polars_json.exit unwind label %bb.d, !dbg !693

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !694
  ret void, !dbg !692

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !692
  unreachable, !dbg !692

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !692
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2Q_4SyncEL_EEEB1E_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !695 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB2i_4SyncEL_EENtNtNtB2k_3ops4drop4Drop4dropB16_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !699

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB2p_4SyncEL_EENtNtNtB2r_3ops4drop4Drop4dropB1d_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2X_4SyncEL_EEEB1L_.exit unwind label %bb.d, !dbg !700

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB2p_4SyncEL_EENtNtNtB2r_3ops4drop4Drop4dropB1d_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !701
  ret void, !dbg !699

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !699
  unreachable, !dbg !699

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtBL_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2X_4SyncEL_EEEB1L_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !699
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713), !dbg !714
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !715
  %i.b = load ptr, ptr %i.a, align 8, !dbg !715, !alias.scope !713, !nonnull !267, !noundef !267 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !716
  %i.d = load i64, ptr %i.c, align 8, !dbg !716, !alias.scope !713, !noundef !267 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !717
  br i1 %i.e, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !717

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !717
  br i1 %i.f, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !717

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1, !dbg !717
  %i.h = add i64 %.sroa.0.0.i.i1, 1, !dbg !717    ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !717, !noalias !713, !inline_history !710

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1, !dbg !717    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !717
  br i1 %i.j, label %.body, label %.lr.ph3, !dbg !717

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !717
  br i1 %i.l, label %.body, label %.lr.ph3, !dbg !717

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2, !dbg !717
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(72) %i.m) #19
          to label %bb.c unwind label %bb.e, !dbg !717, !noalias !713, !inline_history !710

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !717, !noalias !713, !inline_history !710
  unreachable, !dbg !717

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit unwind label %bb.f, !dbg !718

_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !719
  ret void, !dbg !714

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !714
  unreachable, !dbg !714

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit: ; preds = %.body
  resume { ptr, i32 } %i.k, !dbg !714
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !738, !invariant.load !267 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !738
  br i1 %.not, label %bb.c, label %bb.b, !dbg !738

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !738

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !739
  %i.c = load i64, ptr %i.b, align 8, !dbg !739, !range !285, !invariant.load !267 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !740
  br i1 %i.d, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit, label %bb.d, !dbg !740

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !739
  %i.f = load i64, ptr %i.e, align 8, !dbg !741, !range !328, !invariant.load !267
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #17, !dbg !742
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit, !dbg !743

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !738

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !744
  %i.i = load i64, ptr %i.h, align 8, !dbg !744, !range !285, !invariant.load !267 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !745
  br i1 %i.j, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit4, label %bb.f, !dbg !745

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !744
  %i.l = load i64, ptr %i.k, align 8, !dbg !746, !range !328, !invariant.load !267
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #17, !dbg !747
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit4, !dbg !748

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !738
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2A_4SyncEL_EEB1o_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !44 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !767, !invariant.load !267 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !767
  br i1 %.not, label %bb.c, label %bb.b, !dbg !767

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !767

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !768
  %i.c = load i64, ptr %i.b, align 8, !dbg !768, !range !285, !invariant.load !267 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !769
  br i1 %i.d, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB22_4SyncEL_ENtNtNtB24_3ops4drop4Drop4dropBQ_.exit, label %bb.d, !dbg !769

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !768
  %i.f = load i64, ptr %i.e, align 8, !dbg !770, !range !328, !invariant.load !267
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #17, !dbg !771
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB22_4SyncEL_ENtNtNtB24_3ops4drop4Drop4dropBQ_.exit, !dbg !772

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB22_4SyncEL_ENtNtNtB24_3ops4drop4Drop4dropBQ_.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !767

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !773
  %i.i = load i64, ptr %i.h, align 8, !dbg !773, !range !285, !invariant.load !267 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !774
  br i1 %i.j, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB22_4SyncEL_ENtNtNtB24_3ops4drop4Drop4dropBQ_.exit4, label %bb.f, !dbg !774

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !773
  %i.l = load i64, ptr %i.k, align 8, !dbg !775, !range !328, !invariant.load !267
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #17, !dbg !776
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB22_4SyncEL_ENtNtNtB24_3ops4drop4Drop4dropBQ_.exit4, !dbg !777

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB22_4SyncEL_ENtNtNtB24_3ops4drop4Drop4dropBQ_.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !767
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !778 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !988, !range !334, !noundef !267
  switch i8 %i.a, label %bb.b [
    i8 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 1, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 2, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 3, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 4, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 5, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 6, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 7, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 8, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 9, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 10, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 11, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 12, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 13, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 14, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 15, label %bb.n
    i8 16, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 17, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 18, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 19, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 20, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 21, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 22, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 23, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 24, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 25, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 26, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 27, label %bb.p
    i8 28, label %bb.r
    i8 29, label %bb.t
    i8 30, label %bb.v
    i8 31, label %bb.ab
    i8 32, label %bb.ad
    i8 33, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 34, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 35, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 36, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 37, label %bb.af
    i8 38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 39, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
    i8 40, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit
  ], !dbg !988

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !988 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970), !dbg !988
  %i.c = load ptr, ptr %i.b, align 8, !dbg !989, !alias.scope !970, !nonnull !267, !noundef !267 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971), !dbg !990
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !991
  %i.e = load ptr, ptr %i.d, align 8, !dbg !991, !alias.scope !971, !noalias !970, !nonnull !267, !noundef !267 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !992
  %i.g = load i64, ptr %i.f, align 8, !dbg !992, !alias.scope !971, !noalias !970, !noundef !267 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0, !dbg !993
  br i1 %i.h, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit31, label %.lr.ph43, !dbg !993

bb.c:                                             ; preds = %.lr.ph43
  %i.i = icmp eq i64 %i.k, %i.g, !dbg !993
  br i1 %i.i, label %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit31, label %.lr.ph43, !dbg !993

.lr.ph43:                                         ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i2742 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %.sroa.0.0.i.i2742, !dbg !993
  %i.k = add i64 %.sroa.0.0.i.i2742, 1, !dbg !993 ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(72) %i.j)
          to label %bb.c unwind label %bb.e, !dbg !993, !noalias !972, !inline_history !794

bb.d:                                             ; preds = %.lr.ph45
  %i.l = add i64 %.sroa.0.1.i.i2844, 1, !dbg !993 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.g, !dbg !993
  br i1 %i.m, label %.body29, label %.lr.ph45, !dbg !993

bb.e:                                             ; preds = %.lr.ph43
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.g, !dbg !993
  br i1 %i.o, label %.body29, label %.lr.ph45, !dbg !993

.lr.ph45:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i2844 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %.sroa.0.1.i.i2844, !dbg !993
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(72) %i.p) #19
          to label %bb.d unwind label %bb.f, !dbg !993, !noalias !972, !inline_history !794

bb.f:                                             ; preds = %.lr.ph45
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !993, !noalias !972, !inline_history !794
  unreachable, !dbg !993

.body29:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %.body.i unwind label %bb.g, !dbg !994

_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit31: ; preds = %bb.c, %bb.b
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.h, !dbg !995

bb.g:                                             ; preds = %.body29
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !990, !noalias !970, !inline_history !797
  unreachable, !dbg !990

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit31
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !996 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !dbg !997, !range !309, !alias.scope !973, !noalias !970, !noundef !267
  %i.u = icmp eq i64 %i.t, -9223372036854775808, !dbg !997
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeEECs2c5WrizoNH7_11polars_json.exit, label %bb.j, !dbg !997

bb.h:                                             ; preds = %_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json.exit31
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !996

.body.i:                                          ; preds = %.body29, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.n, %.body29 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !996 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !998, !range !309, !alias.scope !974, !noalias !970, !noundef !267
  %i.y = icmp eq i64 %i.x, -9223372036854775808, !dbg !998
  br i1 %i.y, label %bb.m, label %bb.i, !dbg !998

bb.i:                                             ; preds = %.body.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.m unwind label %bb.k, !dbg !999, !noalias !970, !inline_history !807

bb.j:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeEECs2c5WrizoNH7_11polars_json.exit unwind label %bb.l, !dbg !1000, !inline_history !807

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !996, !noalias !970, !inline_history !807
  unreachable, !dbg !996

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !989

common.resume:                                    ; preds = %.body17, %bb.ap, %bb.ae, %bb.ac, %bb.u, %bb.s, %bb.q, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %bb.m ], [ %i.ag, %bb.q ], [ %i.aj, %bb.s ], [ %i.am, %bb.u ], [ %eh.lpad-body21, %bb.ap ], [ %i.bf, %bb.ac ], [ %i.bi, %bb.ae ], [ %i.ay, %.body17 ]
  resume { ptr, i32 } %common.resume.op, !dbg !988

bb.m:                                             ; preds = %bb.l, %bb.i, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %eh.lpad-body.i, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  %.val1.i = load ptr, ptr %i.b, align 8, !dbg !989, !alias.scope !970, !nonnull !267, !noundef !267
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 56, i64 noundef 8) #17, !dbg !1001, !noalias !970
  br label %common.resume, !dbg !989

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeEECs2c5WrizoNH7_11polars_json.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit.i, %bb.j
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !989, !alias.scope !970, !nonnull !267, !noundef !267
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 56, i64 noundef 8) #17, !dbg !1002, !noalias !970
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit, !dbg !988

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.o, %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeEECs2c5WrizoNH7_11polars_json.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECs2c5WrizoNH7_11polars_json.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit11, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeEECs2c5WrizoNH7_11polars_json.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void, !dbg !988

bb.n:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !1003
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !1003, !range !335, !alias.scope !975, !noundef !267
  %cond.i = icmp eq i8 %i.ac, -40, !dbg !1003
  br i1 %cond.i, label %bb.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit, !dbg !1003, !prof !976

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !988
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad), !dbg !1004
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2c5WrizoNH7_11polars_json.exit, !dbg !1004

bb.p:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !988
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtBY_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4u_Es1_0EE9from_iterB5L_:bb.a
  invoke fastcc void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB2q_Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextB4i_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.b, !dbg !2168, !noalias !2157

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64, !dbg !2167
  %i.l = load i8, ptr %i.k, align 8, !dbg !2167, !range !366, !noalias !2158, !noundef !267
  %.not.i = icmp eq i8 %i.l, 2, !dbg !2167
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !2169

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2170, !noalias !2158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !dbg !2170, !noalias !2158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2171, !noalias !2158
  invoke void @_RNvXso_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.g unwind label %bb.f, !dbg !2172, !noalias !2157

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !dbg !2173, !alias.scope !2157
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2173
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !dbg !2173, !alias.scope !2157
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2173
  store i64 0, ptr %i.n, align 8, !dbg !2173, !alias.scope !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2174, !noalias !2158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2175, !noalias !2158
  tail call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !2176, !noalias !2157
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtB15_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4I_Es1_0EE9from_iterB60_.exit, !dbg !2175

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(72) %i.g) #19
          to label %bb.u unwind label %bb.t, !dbg !2177, !noalias !2157

bb.g:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.f, align 8, !dbg !2178, !noalias !2158, !noundef !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2179, !noalias !2158
  %i.q = call i64 @llvm.uadd.sat.i64(i64 %i.p, i64 1), !dbg !2180
  %.sroa.0.0.i.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.q, i64 4), !dbg !2181 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2182, !noalias !2158
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72)
          to label %.noexc.i unwind label %bb.f, !dbg !2182, !noalias !2157

.noexc.i:                                         ; preds = %bb.g
  %i.r = load i64, ptr %i.d, align 8, !dbg !2182, !range !362, !noalias !2158, !noundef !267
  %i.s = trunc nuw i64 %i.r to i1, !dbg !2183
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2184
  %i.u = load i64, ptr %i.t, align 8, !dbg !2184, !range !309, !noalias !2158, !noundef !267 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2184 ; 2 uses
  br i1 %i.s, label %bb.h, label %bb.i, !dbg !2183, !prof !293

bb.h:                                             ; preds = %.noexc.i
  %i.w = load i64, ptr %i.v, align 8, !dbg !2185, !noalias !2158
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #21
          to label %.noexc5.i unwind label %bb.f, !dbg !2186, !noalias !2157

.noexc5.i:                                        ; preds = %bb.h
  unreachable, !dbg !2186

bb.i:                                             ; preds = %.noexc.i
  %i.x = load ptr, ptr %i.v, align 8, !dbg !2187, !noalias !2158, !nonnull !267, !noundef !267 ; 2 uses
  %i.y = icmp ule i64 %.sroa.0.0.i.i, %i.u, !dbg !2188
  call void @llvm.assume(i1 %i.y), !dbg !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2190, !noalias !2158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !dbg !2191, !noalias !2157
  store i64 %i.u, ptr %i.i, align 8, !dbg !2192, !noalias !2158
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !2192 ; 2 uses
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !2192, !noalias !2158
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !2192 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !2192, !noalias !2158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2177, !noalias !2158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2174, !noalias !2158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2193, !noalias !2158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !2193, !noalias !2157
  call void @llvm.experimental.noalias.scope.decl(metadata !2159), !dbg !2194
  call void @llvm.experimental.noalias.scope.decl(metadata !2160), !dbg !2195
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  br label %bb.j, !dbg !2196

bb.j:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE7reserveCs2c5WrizoNH7_11polars_json.exit.i.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2197, !noalias !2161
  invoke fastcc void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB2q_Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextB4i_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.m unwind label %bb.l, !dbg !2198, !noalias !2157

bb.k:                                             ; preds = %bb.p, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.aa, %bb.l ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body.i unwind label %bb.r, !dbg !2199, !noalias !2157

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.ab = load i8, ptr %i.z, align 8, !dbg !2197, !range !366, !noalias !2161, !noundef !267
  %.not.i.i.i = icmp eq i8 %i.ab, 2, !dbg !2197
  br i1 %.not.i.i.i, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtBK_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4b_Es1_0EEB5s_.exit.i.i, label %bb.n, !dbg !2200

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2201, !noalias !2161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !2201, !noalias !2161
  %i.ac = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !2202, !alias.scope !2162, !noalias !2158, !noundef !267 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 128102389400760776, !dbg !2203
  call void @llvm.assume(i1 %i.ad), !dbg !2204
  %i.ae = load i64, ptr %i.i, align 8, !dbg !2205, !range !285, !alias.scope !2162, !noalias !2158, !noundef !267
  %i.af = icmp eq i64 %i.ac, %i.ae, !dbg !2206
  br i1 %i.af, label %bb.o, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE7reserveCs2c5WrizoNH7_11polars_json.exit.i.i.i, !dbg !2206

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2207, !noalias !2161
  invoke void @_RNvXso_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB2q_Es1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4i_.exit.i.i.i unwind label %bb.p, !dbg !2208, !noalias !2157

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE7reserveCs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.q, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB2q_Es1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4i_.exit.i.i.i, %bb.n
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !2209, !alias.scope !2162, !noalias !2158, !nonnull !267, !noundef !267
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %i.ag, i64 %i.ac, !dbg !2210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !2211, !noalias !2157
  %i.ai = add nuw nsw i64 %i.ac, 1, !dbg !2212
  store i64 %i.ai, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !2213, !alias.scope !2162, !noalias !2158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2214, !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2214, !noalias !2161
  br label %bb.j, !dbg !2196

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(72) %i.b) #19
          to label %bb.k unwind label %bb.r, !dbg !2214, !noalias !2157

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB2q_Es1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4i_.exit.i.i.i: ; preds = %bb.o
  %i.ak = load i64, ptr %i.a, align 8, !dbg !2215, !noalias !2161, !noundef !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2216, !noalias !2161
  %i.al = call i64 @llvm.uadd.sat.i64(i64 %i.ak, i64 1), !dbg !2217 ; 2 uses
  %i.am = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !2218, !alias.scope !2163, !noalias !2158, !noundef !267 ; 2 uses
  %i.an = load i64, ptr %i.i, align 8, !dbg !2219, !range !285, !alias.scope !2163, !noalias !2158, !noundef !267
  %i.ao = sub i64 %i.an, %i.am, !dbg !2220
  %i.ap = icmp ugt i64 %i.al, %i.ao, !dbg !2221
  br i1 %i.ap, label %bb.q, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE7reserveCs2c5WrizoNH7_11polars_json.exit.i.i.i, !dbg !2222, !prof !293

bb.q:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB2q_Es1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB4i_.exit.i.i.i
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.am, i64 noundef range(i64 1, 0) %i.al, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE7reserveCs2c5WrizoNH7_11polars_json.exit.i.i.i unwind label %bb.p, !dbg !2223, !noalias !2157

bb.r:                                             ; preds = %bb.p, %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2224, !noalias !2157
  unreachable, !dbg !2224

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtBK_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4b_Es1_0EEB5s_.exit.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2214, !noalias !2161
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtBV_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4p_Es1_0EE11spec_extendB5G_.exit.i unwind label %bb.s, !dbg !2225, !noalias !2157

bb.s:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtBK_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4b_Es1_0EEB5s_.exit.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !2175

.body.i:                                          ; preds = %bb.s, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %.pn.i.i.i, %bb.k ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(24) %i.i) #19
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB2I_Es1_0EEB4A_.exit.i unwind label %bb.t, !dbg !2175, !noalias !2157

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtBV_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4p_Es1_0EE11spec_extendB5G_.exit.i: ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtBK_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4b_Es1_0EEB5s_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2226, !noalias !2158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !2227, !noalias !2164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2175, !noalias !2158
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtB15_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4I_Es1_0EE9from_iterB60_.exit, !dbg !2175

bb.t:                                             ; preds = %bb.u, %.body.i, %bb.f
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2228, !noalias !2157
  unreachable, !dbg !2228

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB2I_Es1_0EEB4A_.exit.i: ; preds = %bb.u, %.body.i
  %.pn10.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.u ]
  resume { ptr, i32 } %.pn10.i, !dbg !2228

bb.u:                                             ; preds = %bb.f, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.o, %bb.f ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB2I_Es1_0EEB4A_.exit.i unwind label %bb.t, !dbg !2229, !noalias !2157

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtB15_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4I_Es1_0EE9from_iterB60_.exit: ; preds = %bb.e, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter8IntoIterReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtBV_13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB4p_Es1_0EE11spec_extendB5G_.exit.i
  ret void, !dbg !2230
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterBU_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBU_Es2_0EE9from_iterB3G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2231 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2278, !noalias !2276
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64, !dbg !2279
  %i.e = ptrtoint ptr %1 to i64, !dbg !2279
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !2279
  %i.g = lshr exact i64 %i.f, 3, !dbg !2279       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2280, !noalias !2276
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !2280, !noalias !2276
  %i.h = load i64, ptr %i.b, align 8, !dbg !2280, !range !362, !noalias !2276, !noundef !267
  %i.i = trunc nuw i64 %i.h to i1, !dbg !2281
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2282
  %i.k = load i64, ptr %i.j, align 8, !dbg !2282, !range !309, !noalias !2276, !noundef !267 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2282 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterBG_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBG_Es2_0EEB3l_.exit.i.i, !dbg !2281, !prof !293

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !2283, !noalias !2276
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21, !dbg !2284, !noalias !2276
  unreachable, !dbg !2284

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterBG_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBG_Es2_0EEB3l_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !2285, !noalias !2276, !nonnull !267, !noundef !267 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !2286
  tail call void @llvm.assume(i1 %i.o), !dbg !2287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2288, !noalias !2276
  store i64 %i.k, ptr %i.c, align 8, !dbg !2289, !noalias !2276
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2289
  store ptr %i.n, ptr %i.p, align 8, !dbg !2289, !noalias !2276
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2289 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !2289, !noalias !2276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2290, !noalias !2277
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2290
  store ptr %i.n, ptr %i.r, align 8, !dbg !2290, !noalias !2277
  store ptr %i.q, ptr %i.a, align 8, !dbg !2290, !noalias !2277
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2290
  store i64 0, ptr %i.s, align 8, !dbg !2290, !noalias !2277
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB1n_Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3B_8for_each4callB1n_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VecB1n_E14extend_trustedBN_E0E0EB2t_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2D_5slice4iter4IterB13_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB13_Es2_0EE9from_iterB3X_.exit unwind label %bb.c, !dbg !2291, !noalias !2276

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterBG_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBG_Es2_0EEB3l_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.d, !dbg !2292, !noalias !2276

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2293, !noalias !2276
  unreachable, !dbg !2293

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !2293

_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2D_5slice4iter4IterB13_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB13_Es2_0EE9from_iterB3X_.exit: ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterBG_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBG_Es2_0EEB3l_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2294, !noalias !2277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2296, !noalias !2276
  ret void, !dbg !2297
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterBV_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBV_Es2_0EE9from_iterB3G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2298 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2345, !noalias !2343
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64, !dbg !2346
  %i.e = ptrtoint ptr %1 to i64, !dbg !2346
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !2346
  %i.g = lshr exact i64 %i.f, 5, !dbg !2346       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2347, !noalias !2343
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !2347, !noalias !2343
  %i.h = load i64, ptr %i.b, align 8, !dbg !2347, !range !362, !noalias !2343, !noundef !267
  %i.i = trunc nuw i64 %i.h to i1, !dbg !2348
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2349
  %i.k = load i64, ptr %i.j, align 8, !dbg !2349, !range !309, !noalias !2343, !noundef !267 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2349 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterBH_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBH_Es2_0EEB3l_.exit.i.i, !dbg !2348, !prof !293

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !2350, !noalias !2343
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21, !dbg !2351, !noalias !2343
  unreachable, !dbg !2351

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterBH_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBH_Es2_0EEB3l_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !2352, !noalias !2343, !nonnull !267, !noundef !267 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !2353
  tail call void @llvm.assume(i1 %i.o), !dbg !2354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2355, !noalias !2343
  store i64 %i.k, ptr %i.c, align 8, !dbg !2356, !noalias !2343
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2356
  store ptr %i.n, ptr %i.p, align 8, !dbg !2356, !noalias !2343
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2356 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !2356, !noalias !2343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2357, !noalias !2344
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2357
  store ptr %i.n, ptr %i.r, align 8, !dbg !2357, !noalias !2344
  store ptr %i.q, ptr %i.a, align 8, !dbg !2357, !noalias !2344
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2357
  store i64 0, ptr %i.s, align 8, !dbg !2357, !noalias !2344
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB1n_Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3A_8for_each4callRB1n_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4R_3VecB4D_E14extend_trustedBN_E0E0EB2s_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2D_5slice4iter4IterB14_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB14_Es2_0EE9from_iterB3X_.exit unwind label %bb.c, !dbg !2358, !noalias !2343

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterBH_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBH_Es2_0EEB3l_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.d, !dbg !2359, !noalias !2343

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2360, !noalias !2343
  unreachable, !dbg !2360

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !2360

_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2D_5slice4iter4IterB14_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeB14_Es2_0EE9from_iterB3X_.exit: ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterBH_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json12infer_schema12coerce_dtypeBH_Es2_0EEB3l_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2361, !noalias !2344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2363, !noalias !2343
  ret void, !dbg !2364
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1i_INtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB34_NCINvB40_12__deserializeB34_Es0_0E0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB67_21MutablePrimitiveArraylEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionlEE9from_iterB25_E0EE9from_iterB44_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2365 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409), !dbg !2413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2414, !noalias !2410
  %.val.i = load ptr, ptr %1, align 8, !dbg !2415, !alias.scope !2409, !nonnull !267, !noundef !267
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2415
  %.val3.i = load ptr, ptr %i.d, align 8, !dbg !2415, !alias.scope !2409, !nonnull !267, !noundef !267
  %i.e = ptrtoint ptr %.val3.i to i64, !dbg !2416
  %i.f = ptrtoint ptr %.val.i to i64, !dbg !2416
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !2416
  %i.h = lshr exact i64 %i.g, 5, !dbg !2416       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2417, !noalias !2410
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !2417, !noalias !2410
  %i.i = load i64, ptr %i.b, align 8, !dbg !2417, !range !362, !noalias !2410, !noundef !267
  %i.j = trunc nuw i64 %i.i to i1, !dbg !2418
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2419
  %i.l = load i64, ptr %i.k, align 8, !dbg !2419, !range !309, !noalias !2410, !noundef !267 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2419 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB2K_NCINvB3G_12__deserializeB2K_Es0_0E0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5N_21MutablePrimitiveArraylEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3K_.exit.i.i, !dbg !2418, !prof !293

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !2420, !noalias !2410
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !dbg !2421, !noalias !2410
  unreachable, !dbg !2421

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB2K_NCINvB3G_12__deserializeB2K_Es0_0E0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5N_21MutablePrimitiveArraylEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3K_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !dbg !2422, !noalias !2410, !nonnull !267, !noundef !267 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l, !dbg !2423
  tail call void @llvm.assume(i1 %i.p), !dbg !2424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2425, !noalias !2410
  store i64 %i.l, ptr %i.c, align 8, !dbg !2426, !noalias !2410
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2426
  store ptr %i.o, ptr %i.q, align 8, !dbg !2426, !noalias !2410
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2426 ; 2 uses
  store i64 0, ptr %i.r, align 8, !dbg !2426, !noalias !2410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2427, !noalias !2411
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2427
  store ptr %i.o, ptr %i.s, align 8, !dbg !2427, !noalias !2411
  store ptr %i.r, ptr %i.a, align 8, !dbg !2427, !noalias !2411
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2427
  store i64 0, ptr %i.t, align 8, !dbg !2427, !noalias !2411
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB1T_NCINvB2P_12__deserializeB1T_Es0_0E0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB4W_21MutablePrimitiveArraylEINtNtNtBa_6traits7collect12FromIteratorINtNtBc_6option6OptionlEE9from_iterBX_E0ENtNtB6t_8iterator8Iterator4folduNCINvNvB7G_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8L_3VeclE14extend_trustedBN_E0E0EB2T_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1x_INtNtB1B_9enumerate9EnumerateINtNtNtB1F_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB3j_NCINvB4f_12__deserializeB3j_Es0_0E0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6m_21MutablePrimitiveArraylEINtNtNtB1D_6traits7collect12FromIteratorINtNtB1F_6option6OptionlEE9from_iterB2k_E0EE9from_iterB4j_.exit unwind label %bb.c, !dbg !2428, !noalias !2412

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB2K_NCINvB3G_12__deserializeB2K_Es0_0E0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5N_21MutablePrimitiveArraylEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3K_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.d, !dbg !2429, !noalias !2410

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2430, !noalias !2410
  unreachable, !dbg !2430

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u, !dbg !2430

_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1x_INtNtB1B_9enumerate9EnumerateINtNtNtB1F_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB3j_NCINvB4f_12__deserializeB3j_Es0_0E0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6m_21MutablePrimitiveArraylEINtNtNtB1D_6traits7collect12FromIteratorINtNtB1F_6option6OptionlEE9from_iterB2k_E0EE9from_iterB4j_.exit: ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB2K_NCINvB3G_12__deserializeB2K_Es0_0E0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5N_21MutablePrimitiveArraylEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3K_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2431, !noalias !2411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2432, !noalias !2409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2433, !noalias !2410
  ret void, !dbg !2434
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VeclEINtB2_12SpecFromIterlINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1i_INtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB34_NvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal25utf8_to_naive_date_scalarE0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6P_21MutablePrimitiveArraylEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionlEE9from_iterB25_E0EE9from_iterB44_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2435 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2479), !dbg !2483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2484, !noalias !2480
  %.val.i = load ptr, ptr %1, align 8, !dbg !2485, !alias.scope !2479, !nonnull !267, !noundef !267
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2485
  %.val3.i = load ptr, ptr %i.d, align 8, !dbg !2485, !alias.scope !2479, !nonnull !267, !noundef !267
  %i.e = ptrtoint ptr %.val3.i to i64, !dbg !2486
  %i.f = ptrtoint ptr %.val.i to i64, !dbg !2486
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !2486
  %i.h = lshr exact i64 %i.g, 5, !dbg !2486       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2487, !noalias !2480
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !2487, !noalias !2480
  %i.i = load i64, ptr %i.b, align 8, !dbg !2487, !range !362, !noalias !2480, !noundef !267
  %i.j = trunc nuw i64 %i.i to i1, !dbg !2488
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2489
  %i.l = load i64, ptr %i.k, align 8, !dbg !2489, !range !309, !noalias !2480, !noundef !267 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2489 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB2K_NvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal25utf8_to_naive_date_scalarE0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6v_21MutablePrimitiveArraylEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3K_.exit.i.i, !dbg !2488, !prof !293

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !2490, !noalias !2480
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !dbg !2491, !noalias !2480
  unreachable, !dbg !2491

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB2K_NvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal25utf8_to_naive_date_scalarE0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6v_21MutablePrimitiveArraylEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3K_.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !dbg !2492, !noalias !2480, !nonnull !267, !noundef !267 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l, !dbg !2493
  tail call void @llvm.assume(i1 %i.p), !dbg !2494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2495, !noalias !2480
  store i64 %i.l, ptr %i.c, align 8, !dbg !2496, !noalias !2480
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2496
  store ptr %i.o, ptr %i.q, align 8, !dbg !2496, !noalias !2480
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2496 ; 2 uses
  store i64 0, ptr %i.r, align 8, !dbg !2496, !noalias !2480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2497, !noalias !2481
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2497
  store ptr %i.o, ptr %i.s, align 8, !dbg !2497, !noalias !2481
  store ptr %i.r, ptr %i.a, align 8, !dbg !2497, !noalias !2481
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2497
  store i64 0, ptr %i.t, align 8, !dbg !2497, !noalias !2481
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB1T_NvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal25utf8_to_naive_date_scalarE0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5E_21MutablePrimitiveArraylEINtNtNtBa_6traits7collect12FromIteratorINtNtBc_6option6OptionlEE9from_iterBX_E0ENtNtB7b_8iterator8Iterator4folduNCINvNvB8o_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB9t_3VeclE14extend_trustedBN_E0E0EB2T_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1x_INtNtB1B_9enumerate9EnumerateINtNtNtB1F_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB3j_NvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal25utf8_to_naive_date_scalarE0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB74_21MutablePrimitiveArraylEINtNtNtB1D_6traits7collect12FromIteratorINtNtB1F_6option6OptionlEE9from_iterB2k_E0EE9from_iterB4j_.exit unwind label %bb.c, !dbg !2498, !noalias !2482

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB2K_NvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal25utf8_to_naive_date_scalarE0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6v_21MutablePrimitiveArraylEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3K_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.d, !dbg !2499, !noalias !2480

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2500, !noalias !2480
  unreachable, !dbg !2500

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u, !dbg !2500

_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VeclEINtB4_18SpecFromIterNestedlINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1x_INtNtB1B_9enumerate9EnumerateINtNtNtB1F_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB3j_NvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal25utf8_to_naive_date_scalarE0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB74_21MutablePrimitiveArraylEINtNtNtB1D_6traits7collect12FromIteratorINtNtB1F_6option6OptionlEE9from_iterB2k_E0EE9from_iterB4j_.exit: ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize30deserialize_temporal_primitivelB2K_NvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal25utf8_to_naive_date_scalarE0ENCINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6v_21MutablePrimitiveArraylEINtNtNtB15_6traits7collect12FromIteratorINtNtB17_6option6OptionlEE9from_iterB1M_E0EEB3K_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2501, !noalias !2481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2502, !noalias !2479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2503, !noalias !2480
  ret void, !dbg !2504
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecyEINtB4_10SpecExtendyINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1f_INtNtB1j_9enumerate9EnumerateINtNtNtB1n_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB31_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipB22_yyE0EE11spec_extendB41_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6064), !dbg !6068
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6065), !dbg !6068
  %.val.i = load ptr, ptr %1, align 8, !dbg !6069, !alias.scope !6065, !nonnull !267, !noundef !267
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6069
  %.val5.i = load ptr, ptr %i.b, align 8, !dbg !6069, !alias.scope !6065, !nonnull !267, !noundef !267
  %i.c = ptrtoint ptr %.val5.i to i64, !dbg !6070
  %i.d = ptrtoint ptr %.val.i to i64, !dbg !6070
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !6070
  %i.f = lshr exact i64 %i.e, 5, !dbg !6070       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6071 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !6071, !alias.scope !6066, !noundef !267 ; 3 uses
  %i.i = load i64, ptr %0, align 8, !dbg !6072, !range !285, !alias.scope !6066, !noundef !267
  %i.j = sub i64 %i.i, %i.h, !dbg !6073
  %i.k = icmp ugt i64 %i.f, %i.j, !dbg !6074
  br i1 %i.k, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB2K_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipB1M_yyE0EEB3K_.exit, !dbg !6075, !prof !293

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 8, i64 noundef 8), !dbg !6076, !noalias !6065
  %.pre.i = load i64, ptr %i.g, align 8, !dbg !6077, !alias.scope !6064
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB2K_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipB1M_yyE0EEB3K_.exit, !dbg !6076

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB2K_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipB1M_yyE0EEB3K_.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.h, %bb.a ], [ %.pre.i, %bb.b ], !dbg !6077
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6078
  %i.n = load ptr, ptr %i.m, align 8, !dbg !6078, !alias.scope !6064, !nonnull !267, !noundef !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6079, !noalias !6067
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6079
  store ptr %i.n, ptr %i.o, align 8, !dbg !6079, !noalias !6067
  store ptr %i.g, ptr %i.a, align 8, !dbg !6079, !noalias !6067
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6079
  store i64 %i.l, ptr %i.p, align 8, !dbg !6079, !noalias !6067
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB1T_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipBX_yyE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5L_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6Y_3VecyE14extend_trustedBN_E0E0EB2T_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !6080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6081, !noalias !6067
  ret void, !dbg !6082
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecyEINtB4_10SpecExtendyINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1f_INtNtB1j_9enumerate9EnumerateINtNtNtB1n_5slice4iter4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB31_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipB22_yyE0EE11spec_extendB42_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6083 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6122), !dbg !6126
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6123), !dbg !6126
  %.val.i = load ptr, ptr %1, align 8, !dbg !6127, !alias.scope !6123, !nonnull !267, !noundef !267
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6127
  %.val5.i = load ptr, ptr %i.b, align 8, !dbg !6127, !alias.scope !6123, !nonnull !267, !noundef !267
  %i.c = ptrtoint ptr %.val5.i to i64, !dbg !6128
  %i.d = ptrtoint ptr %.val.i to i64, !dbg !6128
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !6128
  %i.f = lshr exact i64 %i.e, 3, !dbg !6128       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6129 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !6129, !alias.scope !6124, !noundef !267 ; 3 uses
  %i.i = load i64, ptr %0, align 8, !dbg !6130, !range !285, !alias.scope !6124, !noundef !267
  %i.j = sub i64 %i.i, %i.h, !dbg !6131
  %i.k = icmp ugt i64 %i.f, %i.j, !dbg !6132
  br i1 %i.k, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB2K_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipB1M_yyE0EEB3L_.exit, !dbg !6133, !prof !293

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef %i.f, i64 noundef 8, i64 noundef 8), !dbg !6134, !noalias !6123
  %.pre.i = load i64, ptr %i.g, align 8, !dbg !6135, !alias.scope !6122
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB2K_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipB1M_yyE0EEB3L_.exit, !dbg !6134

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecyE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIBZ_INtNtB13_9enumerate9EnumerateINtNtNtB17_5slice4iter4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB2K_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipB1M_yyE0EEB3L_.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.h, %bb.a ], [ %.pre.i, %bb.b ], !dbg !6135
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6136
  %i.n = load ptr, ptr %i.m, align 8, !dbg !6136, !alias.scope !6122, !nonnull !267, !noundef !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6137, !noalias !6125
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6137
  store ptr %i.n, ptr %i.o, align 8, !dbg !6137, !noalias !6125
  store ptr %i.g, ptr %i.a, align 8, !dbg !6137, !noalias !6125
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6137
  store i64 %i.l, ptr %i.p, align 8, !dbg !6137, !noalias !6125
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize26deserialize_primitive_intoyB1T_E0ENCINvNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable24extend_trusted_len_unzipBX_yyE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5M_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6Z_3VecyE14extend_trustedBN_E0E0EB2U_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !6138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6139, !noalias !6125
  ret void, !dbg !6140
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB2G_4SyncEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtB2I_4iter8adapters3map3MapIB3Y_INtNtNtB2I_5slice4iter4IterIB14_DNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB1o_17struct_serializer0ENCB5X_s_0EE9from_iterB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6141 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6185
  %.val = load ptr, ptr %1, align 8, !dbg !6186, !nonnull !267, !noundef !267
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6186
  %.val3 = load ptr, ptr %i.d, align 8, !dbg !6186, !nonnull !267, !noundef !267
  %i.e = ptrtoint ptr %.val3 to i64, !dbg !6187
  %i.f = ptrtoint ptr %.val to i64, !dbg !6187
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !6187
  %i.h = lshr exact i64 %i.g, 4, !dbg !6187       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6188
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !6188
  %i.i = load i64, ptr %i.b, align 8, !dbg !6188, !range !362, !noundef !267
  %i.j = trunc nuw i64 %i.i to i1, !dbg !6189
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6190
  %i.l = load i64, ptr %i.k, align 8, !dbg !6190, !range !309, !noundef !267 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6190 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB2j_4SyncEL_EE14extend_trustedINtNtNtNtB2l_4iter8adapters3map3MapIB3n_INtNtNtB2l_5slice4iter4IterIBH_DNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB11_17struct_serializer0ENCB5l_s_0EEB17_.exit.i, !dbg !6189, !prof !293

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !6191
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !dbg !6192
  unreachable, !dbg !6192

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB2j_4SyncEL_EE14extend_trustedINtNtNtNtB2l_4iter8adapters3map3MapIB3n_INtNtNtB2l_5slice4iter4IterIBH_DNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB11_17struct_serializer0ENCB5l_s_0EEB17_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !dbg !6193, !nonnull !267, !noundef !267 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l, !dbg !6194
  tail call void @llvm.assume(i1 %i.p), !dbg !6195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6196
  store i64 %i.l, ptr %i.c, align 8, !dbg !6197
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6197
  store ptr %i.o, ptr %i.q, align 8, !dbg !6197
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6197 ; 2 uses
  store i64 0, ptr %i.r, align 8, !dbg !6197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6198, !noalias !6184
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6198
  store ptr %i.o, ptr %i.s, align 8, !dbg !6198, !noalias !6184
  store ptr %i.r, ptr %i.a, align 8, !dbg !6198, !noalias !6184
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6198
  store i64 0, ptr %i.t, align 8, !dbg !6198, !noalias !6184
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize17struct_serializer0ENCB2Q_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4f_8for_each4callIB1s_DNtB2S_14JsonSerializerp4ItemShNtNtBc_6marker4SendNtB5U_4SyncEL_ENCINvMsj_NtB1w_3vecINtB6z_3VecB5i_E14extend_trustedBN_E0E0EB2Y_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !6199

bb.c:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB2j_4SyncEL_EE14extend_trustedINtNtNtNtB2l_4iter8adapters3map3MapIB3n_INtNtNtB2l_5slice4iter4IterIBH_DNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB11_17struct_serializer0ENCB5l_s_0EEB17_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2Q_4SyncEL_EEEB1E_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #19
          to label %bb.f unwind label %bb.e, !dbg !6200

bb.d:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtB8_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB2j_4SyncEL_EE14extend_trustedINtNtNtNtB2l_4iter8adapters3map3MapIB3n_INtNtNtB2l_5slice4iter4IterIBH_DNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB11_17struct_serializer0ENCB5l_s_0EEB17_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6201, !noalias !6184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !6202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6200
  ret void, !dbg !6203

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6204
  unreachable, !dbg !6204

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u, !dbg !6204
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2c5WrizoNH7_11polars_json(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6205 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6282
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6283
  %i.e = load ptr, ptr %i.d, align 8, !dbg !6283, !nonnull !267, !noundef !267 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !dbg !6284, !noundef !267 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6285, !noalias !6277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6286, !noalias !6277
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !6286, !noalias !6277
  %i.g = load i64, ptr %i.a, align 8, !dbg !6286, !range !362, !noalias !6277, !noundef !267
  %i.h = trunc nuw i64 %i.g to i1, !dbg !6287
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6288
  %i.j = load i64, ptr %i.i, align 8, !dbg !6288, !range !309, !noalias !6277, !noundef !267 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6288 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i, !dbg !6287, !prof !293

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !dbg !6289, !noalias !6277
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #21, !dbg !6290, !noalias !6277
  unreachable, !dbg !6290

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !dbg !6291, !noalias !6277, !nonnull !267, !noundef !267 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j, !dbg !6292
  tail call void @llvm.assume(i1 %i.n), !dbg !6293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6294, !noalias !6277
  store i64 %i.j, ptr %i.b, align 8, !dbg !6295, !noalias !6277
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6295
  store ptr %i.m, ptr %i.o, align 8, !dbg !6295, !noalias !6277
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6295 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f, !dbg !6296
  %i.r = icmp eq i64 %i.j, 0, !dbg !6297
  br i1 %i.r, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph.i, !dbg !6297

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.e, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.s, %bb.d ], [ %i.j, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i ]
  %i.s = add i64 %.sroa.10.021.i, -1, !dbg !6298  ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.023.i, %i.q, !dbg !6299
  br i1 %i.t, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit, label %bb.c, !dbg !6300

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = invoke { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !dbg !6301, !noalias !6280 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1, !dbg !6302
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 16, !dbg !6303
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.7.022.i, !dbg !6304 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.u, 0, !dbg !6305 ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.u, 1, !dbg !6305 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y), "nonnull"(ptr %i.z) ], !dbg !6306
  store ptr %i.y, ptr %i.x, align 8, !dbg !6307, !noalias !6280
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !6307
  store ptr %i.z, ptr %i.aa, align 8, !dbg !6307, !noalias !6280
  %i.ab = icmp eq i64 %i.s, 0, !dbg !6297
  br i1 %i.ab, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph.i, !dbg !6297

bb.e:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6308, !noalias !6280
  unreachable, !dbg !6308

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.p, align 8, !dbg !6309, !noalias !6277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(24) %i.b) #19
          to label %bb.g unwind label %bb.e, !dbg !6310, !noalias !6280

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i, !dbg !6308

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i
  store i64 %i.f, ptr %i.p, align 8, !dbg !6311, !noalias !6277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !6312, !noalias !6281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6310, !noalias !6277
  ret void, !dbg !6313
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2c5WrizoNH7_11polars_json(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6314 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.04 = alloca [56 x i8], align 8           ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6437
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6438
  %i.h = load ptr, ptr %i.g, align 8, !dbg !6438, !nonnull !267, !noundef !267 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !dbg !6439, !noundef !267 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6440, !noalias !6420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6441, !noalias !6420
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 128102389400760776) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !dbg !6441, !noalias !6420
  %i.j = load i64, ptr %i.a, align 8, !dbg !6441, !range !362, !noalias !6420, !noundef !267
  %i.k = trunc nuw i64 %i.j to i1, !dbg !6442
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6443
  %i.m = load i64, ptr %i.l, align 8, !dbg !6443, !range !309, !noalias !6420, !noundef !267 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6443 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit, !dbg !6442, !prof !293

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !dbg !6444, !noalias !6420
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #21, !dbg !6445, !noalias !6420
  unreachable, !dbg !6445

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !dbg !6446, !noalias !6420, !nonnull !267, !noundef !267 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m, !dbg !6447
  tail call void @llvm.assume(i1 %i.q), !dbg !6448, !noalias !6420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6449, !noalias !6420
  store i64 %i.m, ptr %i.e, align 8, !dbg !6450, !noalias !6420
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6450
  store ptr %i.p, ptr %i.r, align 8, !dbg !6450, !noalias !6420
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !6450 ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.i, !dbg !6451
  %i.u = icmp eq i64 %i.m, 0, !dbg !6452
  br i1 %i.u, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6452

.lr.ph:                                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit
  %.sroa.04.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 32
  br label %bb.c, !dbg !6452

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.03.032 = phi ptr [ %i.h, %.lr.ph ], [ %i.x, %bb.m ] ; 7 uses
  %.sroa.7.031 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.m ] ; 3 uses
  %.sroa.10.030 = phi i64 [ %i.m, %.lr.ph ], [ %i.v, %bb.m ]
  %i.v = add i64 %.sroa.10.030, -1, !dbg !6453    ; 2 uses
  %i.w = icmp eq ptr %.sroa.03.032, %i.t, !dbg !6454
  br i1 %i.w, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit, label %bb.d, !dbg !6455

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 72, !dbg !6456
  %i.y = add nuw nsw i64 %.sroa.7.031, 1, !dbg !6457
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04), !dbg !6458
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6423), !dbg !6459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6460, !noalias !6424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6461, !noalias !6424
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 32, !dbg !6461 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 55, !dbg !6462
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !6462, !range !341, !alias.scope !6423, !noalias !6425, !noundef !267
  %i.ac = icmp eq i8 %i.ab, -40, !dbg !6463
  br i1 %i.ac, label %bb.e, label %bb.f, !dbg !6463

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #20
          to label %.noexc unwind label %.loopexit, !dbg !6464, !inline_history !6374

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !6465, !noalias !6426
  br label %.noexc, !dbg !6466

.noexc:                                           ; preds = %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !6467, !noalias !6424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6468, !noalias !6424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6469, !noalias !6424
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.03.032)
          to label %bb.i unwind label %bb.g, !dbg !6469, !noalias !6426, !inline_history !6374

bb.g:                                             ; preds = %.noexc
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !6470
  %i.af = load i8, ptr %i.ae, align 1, !dbg !6470, !range !341, !alias.scope !6427, !noalias !6424, !noundef !267
  %i.ag = icmp eq i8 %i.af, -40, !dbg !6471
  br i1 %i.ag, label %bb.h, label %bb.o, !dbg !6471, !prof !293

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !dbg !6472, !noalias !6426, !inline_history !6374

bb.i:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 64, !dbg !6473
  %i.ai = load i8, ptr %i.ah, align 8, !dbg !6473, !range !459, !alias.scope !6423, !noalias !6425, !noundef !267
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 56, !dbg !6474
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !6474, !alias.scope !6423, !noalias !6425, !noundef !267 ; 3 uses
  %.not.i1 = icmp eq ptr %i.ak, null, !dbg !6474
  br i1 %.not.i1, label %bb.m, label %bb.j, !dbg !6475

bb.j:                                             ; preds = %bb.i
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !dbg !6476, !noalias !6426
  %i.am = icmp slt i64 %i.al, 0, !dbg !6477
  br i1 %i.am, label %bb.k, label %bb.m, !dbg !6477

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap(), !dbg !6478, !noalias !6425
  unreachable, !dbg !6478

bb.l:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6479, !noalias !6426, !inline_history !6374
  unreachable, !dbg !6479

bb.m:                                             ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !6479, !noalias !6428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !6479, !noalias !6428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6480, !noalias !6424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6480, !noalias !6424
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.7.031, !dbg !6481 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04, i64 56, i1 false), !dbg !6482, !noalias !6425
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56, !dbg !6483
  store ptr %i.ak, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !6483, !noalias !6425
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64, !dbg !6483
  store i8 %i.ai, ptr %.sroa.517.0..sroa_idx, align 8, !dbg !6483, !noalias !6425
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04), !dbg !6484
  %i.ap = icmp eq i64 %i.v, 0, !dbg !6452
  br i1 %i.ap, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit, label %bb.c, !dbg !6452

bb.n:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6485, !noalias !6425, !inline_history !6402
  unreachable, !dbg !6485

bb.o:                                             ; preds = %.loopexit, %bb.h, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.031, ptr %i.s, align 8, !dbg !6486, !noalias !6425
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(24) %i.e) #19
          to label %bb.p unwind label %bb.n, !dbg !6487, !noalias !6425, !inline_history !6402

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %eh.lpad-body, !dbg !6485

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.m, %bb.c, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit
  store i64 %i.i, ptr %i.s, align 8, !dbg !6488, !noalias !6420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !6489, !noalias !6436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6487, !noalias !6420
  ret void, !dbg !6490
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2c5WrizoNH7_11polars_json(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !6491 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6536
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6537
  %i.d = load ptr, ptr %i.c, align 8, !dbg !6537, !nonnull !267, !noundef !267
  %i.e = load i64, ptr %i.b, align 8, !dbg !6538, !noundef !267 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6532), !dbg !6539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6540, !noalias !6534
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.e, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !6540, !noalias !6534
  %i.f = load i64, ptr %i.a, align 8, !dbg !6540, !range !362, !noalias !6534, !noundef !267
  %i.g = trunc nuw i64 %i.f to i1, !dbg !6541
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6542
  %i.i = load i64, ptr %i.h, align 8, !dbg !6542, !range !309, !noalias !6534, !noundef !267 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6542 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i, !dbg !6541, !prof !293

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !6543, !noalias !6534
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21, !dbg !6544, !noalias !6534
  unreachable, !dbg !6544

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !6545, !noalias !6534, !nonnull !267, !noundef !267 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !6546
  tail call void @llvm.assume(i1 %i.m), !dbg !6547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6548, !noalias !6534
  store i64 %i.i, ptr %0, align 8, !dbg !6549, !alias.scope !6532
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6549
  store ptr %i.l, ptr %i.n, align 8, !dbg !6549, !alias.scope !6532
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6549 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !6549, !alias.scope !6532
  %.not.i = icmp eq i64 %i.e, 0, !dbg !6550
  br i1 %.not.i, label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit, label %bb.c, !dbg !6550

bb.c:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i
  %i.p = shl nuw nsw i64 %i.e, 2, !dbg !6551
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 4 %i.d, i64 %i.p, i1 false), !dbg !6551, !noalias !6532
  store i64 %i.e, ptr %i.o, align 8, !dbg !6552, !alias.scope !6532
  br label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit, !dbg !6553

_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2c5WrizoNH7_11polars_json.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2c5WrizoNH7_11polars_json.exit.i, %bb.c
  ret void, !dbg !6554
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6555 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6569
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6569, !nonnull !267, !noundef !267 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6570
  %i.d = load i64, ptr %i.c, align 8, !dbg !6570, !noundef !267 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !6571
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6571

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !6571
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6571

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !6571
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !6571     ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.b, !dbg !6572

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !6571     ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !6571
  br i1 %i.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit7.i._crit_edge, label %.lr.ph3, !dbg !6571

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !6571
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit7.i._crit_edge, label %.lr.ph3, !dbg !6571

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !6571
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit7.i unwind label %bb.c, !dbg !6573

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit7.i._crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit7.i, %bb.b
  resume { ptr, i32 } %i.k, !dbg !6571

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6571
  unreachable, !dbg !6571

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuEECs2c5WrizoNH7_11polars_json.exit.i, %bb.a
  ret void, !dbg !6574
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6575 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6601
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6601, !nonnull !267, !noundef !267 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6602
  %i.d = load i64, ptr %i.c, align 8, !dbg !6602, !noundef !267 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !6603
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6603

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !6603
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6603

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !6603 ; 2 uses
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !6603     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !6604
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !6605
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.b, !dbg !6606

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit7.i: ; preds = %.lr.ph3
  %i.k = add i64 %.sroa.0.1.i2, 1, !dbg !6603     ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.d, !dbg !6603
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit7.i._crit_edge, label %.lr.ph3, !dbg !6603

bb.b:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.h, %i.d, !dbg !6603
  br i1 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit7.i._crit_edge, label %.lr.ph3, !dbg !6603

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.k, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !6603 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !6607
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48, !dbg !6608
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit7.i unwind label %bb.c, !dbg !6609

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit7.i._crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit7.i, %bb.b
  resume { ptr, i32 } %i.m, !dbg !6603

bb.c:                                             ; preds = %.lr.ph3
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6603
  unreachable, !dbg !6603

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketReINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECs2c5WrizoNH7_11polars_json.exit.i, %bb.a
  ret void, !dbg !6610
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6611 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6644
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6644, !nonnull !267, !noundef !267 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6645
  %i.d = load i64, ptr %i.c, align 8, !dbg !6645, !noundef !267 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6643), !dbg !6646
  %i.e = icmp eq i64 %i.d, 0, !dbg !6647
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph.i, !dbg !6647

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i, !dbg !6647 ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i, 1, !dbg !6647 ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !dbg !6647, !alias.scope !6643 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8, !dbg !6647
  %.val9.i = load ptr, ptr %i.h, align 8, !dbg !6647, !alias.scope !6643, !nonnull !267, !align !394, !noundef !267 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !dbg !6648, !invariant.load !267, !noalias !6643 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null, !dbg !6648
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !6648

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !dbg !6648, !noalias !6643

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !6649
  %i.k = load i64, ptr %i.j, align 8, !dbg !6649, !range !285, !invariant.load !267, !noalias !6643 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !6650
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json.exit.i, label %bb.d, !dbg !6650

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !6649
  %i.n = load i64, ptr %i.m, align 8, !dbg !6651, !range !328, !invariant.load !267, !noalias !6643
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #17, !dbg !6652, !noalias !6643
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json.exit.i, !dbg !6653

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !6654
  %i.q = load i64, ptr %i.p, align 8, !dbg !6654, !range !285, !invariant.load !267, !noalias !6643 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !6655
  br i1 %i.r, label %.body.i, label %bb.f, !dbg !6655

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !6654
  %i.t = load i64, ptr %i.s, align 8, !dbg !6656, !range !328, !invariant.load !267, !noalias !6643
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #17, !dbg !6657, !noalias !6643
  br label %.body.i, !dbg !6658

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d, !dbg !6647
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph.i, !dbg !6647

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1, !dbg !6647    ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !6647
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !dbg !6647

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d, !dbg !6647
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !6647

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17, !dbg !6647 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !dbg !6647, !alias.scope !6643
  %i.z = getelementptr i8, ptr %i.y, i64 8, !dbg !6647
  %.val7.i = load ptr, ptr %i.z, align 8, !dbg !6647, !alias.scope !6643, !nonnull !267, !align !394, !noundef !267
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json(ptr %.val.i, ptr nonnull %.val7.i) #19
          to label %bb.g unwind label %bb.h, !dbg !6647, !noalias !6643

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o, !dbg !6647

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6647, !noalias !6643
  unreachable, !dbg !6647

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json.exit.i, %bb.a
  ret void, !dbg !6659
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtCscgRAwXFJnXP_4core6marker4SendNtB2i_4SyncEL_EENtNtNtB2k_3ops4drop4Drop4dropB16_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6660 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6693
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6693, !nonnull !267, !noundef !267 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6694
  %i.d = load i64, ptr %i.c, align 8, !dbg !6694, !noundef !267 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6692), !dbg !6695
  %i.e = icmp eq i64 %i.d, 0, !dbg !6696
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2B_4SyncEL_EEB1p_.exit, label %.lr.ph.i, !dbg !6696

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2A_4SyncEL_EEB1o_.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2A_4SyncEL_EEB1o_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i, !dbg !6696 ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i, 1, !dbg !6696 ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !dbg !6696, !alias.scope !6692 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8, !dbg !6696
  %.val9.i = load ptr, ptr %i.h, align 8, !dbg !6696, !alias.scope !6692, !nonnull !267, !align !394, !noundef !267 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !dbg !6697, !invariant.load !267, !noalias !6692 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null, !dbg !6697
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !6697

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !dbg !6697, !noalias !6692

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !6698
  %i.k = load i64, ptr %i.j, align 8, !dbg !6698, !range !285, !invariant.load !267, !noalias !6692 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !6699
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2A_4SyncEL_EEB1o_.exit.i, label %bb.d, !dbg !6699

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !6698
  %i.n = load i64, ptr %i.m, align 8, !dbg !6700, !range !328, !invariant.load !267, !noalias !6692
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #17, !dbg !6701, !noalias !6692
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2A_4SyncEL_EEB1o_.exit.i, !dbg !6702

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8, !dbg !6703
  %i.q = load i64, ptr %i.p, align 8, !dbg !6703, !range !285, !invariant.load !267, !noalias !6692 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !6704
  br i1 %i.r, label %.body.i, label %bb.f, !dbg !6704

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16, !dbg !6703
  %i.t = load i64, ptr %i.s, align 8, !dbg !6705, !range !328, !invariant.load !267, !noalias !6692
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #17, !dbg !6706, !noalias !6692
  br label %.body.i, !dbg !6707

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2A_4SyncEL_EEB1o_.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d, !dbg !6696
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2B_4SyncEL_EEB1p_.exit, label %.lr.ph.i, !dbg !6696

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1, !dbg !6696    ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !6696
  br i1 %i.w, label %._crit_edge, label %.lr.ph, !dbg !6696

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d, !dbg !6696
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !6696

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17, !dbg !6696 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !dbg !6696, !alias.scope !6692
  %i.z = getelementptr i8, ptr %i.y, i64 8, !dbg !6696
  %.val7.i = load ptr, ptr %i.z, align 8, !dbg !6696, !alias.scope !6692, !nonnull !267, !align !394, !noundef !267
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2A_4SyncEL_EEB1o_(ptr %.val.i, ptr nonnull %.val7.i) #19
          to label %bb.g unwind label %bb.h, !dbg !6696, !noalias !6692

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o, !dbg !6696

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6696, !noalias !6692
  unreachable, !dbg !6696

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2B_4SyncEL_EEB1p_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize14JsonSerializerp4ItemShNtNtB4_6marker4SendNtB2A_4SyncEL_EEB1o_.exit.i, %bb.a
  ret void, !dbg !6708
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6709 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6726
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6726, !nonnull !267, !noundef !267 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6727
  %i.d = load i64, ptr %i.c, align 8, !dbg !6727, !noundef !267 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !6728
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6728

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !6728
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6728

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !6728
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !6728     ; 4 uses
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.b, !dbg !6729

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !6728     ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !6728
  br i1 %i.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit7.i._crit_edge, label %.lr.ph3, !dbg !6728

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !6728
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit7.i._crit_edge, label %.lr.ph3, !dbg !6728

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !6728
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit7.i unwind label %bb.c, !dbg !6730

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit7.i._crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit7.i, %bb.b
  resume { ptr, i32 } %i.k, !dbg !6728

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6728
  unreachable, !dbg !6728

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs2c5WrizoNH7_11polars_json.exit.i, %bb.a
  ret void, !dbg !6731
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 !dbg !6732 {
bb.a:
  ret void, !dbg !6733
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6734 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6745
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6745, !nonnull !267, !noundef !267 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6746
  %i.d = load i64, ptr %i.c, align 8, !dbg !6746, !noundef !267 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !6747
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6747

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !6747
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6747

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !6747
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !6747     ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !6747

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !6747     ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !6747
  br i1 %i.j, label %._crit_edge, label %.lr.ph3, !dbg !6747

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !6747
  br i1 %i.l, label %._crit_edge, label %.lr.ph3, !dbg !6747

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !6747
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(32) %i.m) #19
          to label %bb.c unwind label %bb.e, !dbg !6747

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k, !dbg !6747

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !6747
  unreachable, !dbg !6747

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.b, %bb.a
  ret void, !dbg !6748
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6749 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6760
  %i.b = load ptr, ptr %i.a, align 8, !dbg !6760, !nonnull !267, !noundef !267 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6761
  %i.d = load i64, ptr %i.c, align 8, !dbg !6761, !noundef !267 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !6762
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6762

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !6762
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs2c5WrizoNH7_11polars_json.exit, label %.lr.ph, !dbg !6762

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !6762
  %i.h = add i64 %.sroa.0.0.i1, 1, !dbg !6762     ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(56) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !6762

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !6762     ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !6762
  br i1 %i.j, label %._crit_edge, label %.lr.ph3, !dbg !6762

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !6762
  br i1 %i.l, label %._crit_edge, label %.lr.ph3, !dbg !6762

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !6762
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace14BacktraceFrameECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(56) %i.m) #19
          to label %bb.c unwind label %bb.e, !dbg !6762

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k, !dbg !6762
end_hunk_2
