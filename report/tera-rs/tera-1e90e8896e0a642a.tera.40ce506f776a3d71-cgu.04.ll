Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.04?download=true
inline.NumInlined: 1305
inline.NumDeleted: 669
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1B_7sources4once4OncejEINtNtB1z_3map3MapINtNtNtB1D_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE9from_iterB3O_:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23352
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8, !dbg !23352
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23352
  store i64 0, ptr %i.dc, align 8, !dbg !23352
  br label %bb.m, !dbg !23353

bb.m:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1j_7sources4once4OncejEINtNtB1h_3map3MapINtNtNtB1l_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE11spec_extendB3w_.exit, %.loopexit30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23353
  ret void, !dbg !23354

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OncejEINtNtB6_3map3MapINtNtNtBa_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2o_.exit.i.i
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !4969, !DIExpression(), !22806)
    #dbg_value(ptr %i.c, !4975, !DIExpression(), !22808)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit unwind label %bb.n, !dbg !23355

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1j_7sources4once4OncejEINtNtB1h_3map3MapINtNtNtB1l_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE11spec_extendB3w_.exit: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs5yXxDE1DkoT_4tera.exit.thread.i.i.i, %bb.j, %.noexc20, %.preheader.i.i.i.i.i.i.i.i.i.i, %bb.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs5yXxDE1DkoT_4tera.exit.thread.i.us40.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCs5yXxDE1DkoT_4tera.exit.us.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs5yXxDE1DkoT_4tera.exit.i.us.preheader.i.i, %.split.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !23357
  br label %bb.m, !dbg !23353

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !23358
  unreachable, !dbg !23358

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp72, !dbg !23358
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23360 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !23435, !DIExpression(), !23441)
    #dbg_declare(ptr %1, !23436, !DIExpression(), !23442)
    #dbg_declare(ptr poison, !23443, !DIExpression(), !23452)
    #dbg_declare(ptr poison, !23463, !DIExpression(), !23473)
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5yXxDE1DkoT_4tera5utils4SpanE8as_sliceB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d, !dbg !23544 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0, !dbg !23545
  %i.d = extractvalue { ptr, i64 } %i.b, 1, !dbg !23545 ; 5 uses
    #dbg_value(ptr %0, !23474, !DIExpression(), !23371)
    #dbg_value(ptr %0, !23480, !DIExpression(), !23376)
    #dbg_value(ptr %0, !23486, !DIExpression(), !23379)
    #dbg_value(ptr %0, !23491, !DIExpression(), !23382)
    #dbg_value(ptr %i.c, !23478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23371)
    #dbg_value(ptr %i.c, !23482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23376)
    #dbg_value(i64 %i.d, !23478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23371)
    #dbg_value(i64 %i.d, !23482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23376)
    #dbg_value(i64 %i.d, !23483, !DIExpression(), !23383)
    #dbg_value(i64 %i.d, !23496, !DIExpression(), !23386)
    #dbg_value(ptr %0, !23502, !DIExpression(), !23389)
    #dbg_value(i64 %i.d, !23506, !DIExpression(), !23389)
    #dbg_value(i64 %i.d, !23508, !DIExpression(), !23392)
    #dbg_value(i64 %i.d, !23515, !DIExpression(), !23395)
    #dbg_value(i64 %i.d, !23520, !DIExpression(), !23398)
    #dbg_value(ptr %0, !23512, !DIExpression(), !23399)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23546 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !23546, !alias.scope !23525, !noundef !1322 ; 5 uses
    #dbg_value(i64 %i.f, !23513, !DIExpression(), !23392)
    #dbg_value(i64 %i.f, !23517, !DIExpression(), !23395)
    #dbg_value(i64 %i.f, !23522, !DIExpression(), !23398)
    #dbg_value(i64 %i.f, !23526, !DIExpression(), !23406)
    #dbg_value(ptr %0, !23516, !DIExpression(), !23395)
    #dbg_value(ptr %0, !23521, !DIExpression(), !23398)
    #dbg_value(ptr %0, !23529, !DIExpression(), !23409)
    #dbg_value(i64 8, !23518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23395)
    #dbg_value(i64 8, !23523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23398)
    #dbg_value(i64 48, !23518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23395)
    #dbg_value(i64 48, !23523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23398)
    #dbg_value(i64 48, !23530, !DIExpression(), !23409)
  %i.g = load i64, ptr %0, align 8, !dbg !23547, !range !3717, !alias.scope !23525, !noundef !1322
    #dbg_value(i64 %i.g, !23527, !DIExpression(), !23406)
  %i.h = sub i64 %i.g, %i.f, !dbg !23548
  %i.i = icmp ugt i64 %i.d, %i.h, !dbg !23549
  br i1 %i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i, !dbg !23550, !prof !3490

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 48)
          to label %.noexc unwind label %bb.d, !dbg !23551

.noexc:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !dbg !23552, !alias.scope !23532, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.j, !23484, !DIExpression(), !23410)
    #dbg_value(i64 %i.j, !23533, !DIExpression(), !23413)
  %i.k = icmp ult i64 %i.j, 192153584101141163, !dbg !23553
  tail call void @llvm.assume(i1 %i.k), !dbg !23554
  br label %bb.c, !dbg !23555

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i: ; preds = %bb.b
    #dbg_value(i64 %i.f, !23484, !DIExpression(), !23410)
    #dbg_value(i64 %i.f, !23533, !DIExpression(), !23413)
  %i.l = icmp ult i64 %i.f, 192153584101141163, !dbg !23553
  tail call void @llvm.assume(i1 %i.l), !dbg !23554
  %.not.i = icmp eq i64 %i.d, 0, !dbg !23555
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1j_.exit, label %bb.c, !dbg !23555

bb.c:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i ]
    #dbg_value(ptr %i.c, !23499, !DIExpression(), !23386)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23556
  %i.o = load ptr, ptr %i.n, align 8, !dbg !23556, !alias.scope !23532, !nonnull !1322, !noundef !1322
    #dbg_value(ptr %i.o, !23534, !DIExpression(), !23413)
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.m, !dbg !23557
    #dbg_value(ptr %i.p, !23500, !DIExpression(), !23386)
  %i.q = mul nuw nsw i64 %i.d, 48, !dbg !23558
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false), !dbg !23558
  %.pre.i = load i64, ptr %i.e, align 8, !dbg !23559, !alias.scope !23532
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1j_.exit, !dbg !23560

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1j_.exit: ; preds = %bb.c, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i ], !dbg !23559
  %i.s = add i64 %i.r, %i.d, !dbg !23559
  store i64 %i.s, ptr %i.e, align 8, !dbg !23559, !alias.scope !23532
  %i.t = load ptr, ptr %1, align 8, !dbg !23561, !nonnull !1322, !noundef !1322
    #dbg_value(ptr %i.t, !23456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23536)
    #dbg_value(ptr %i.t, !23467, !DIExpression(), !23537)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23561
  %i.v = load i64, ptr %i.u, align 8, !dbg !23561, !noundef !1322
    #dbg_value(i64 %i.v, !23456, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23536)
    #dbg_value(i64 %i.v, !23457, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23538)
    #dbg_value(i64 %i.v, !23468, !DIExpression(), !23537)
    #dbg_value(ptr poison, !23456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23536)
    #dbg_value(ptr poison, !23457, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23538)
    #dbg_value(ptr poison, !23456, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23536)
    #dbg_value(ptr poison, !23457, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23538)
    #dbg_value(ptr %i.t, !23457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23538)
    #dbg_value(ptr poison, !23448, !DIExpression(), !23539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23562
    #dbg_value(ptr %i.t, !23469, !DIExpression(), !23540)
    #dbg_value(i64 %i.v, !23470, !DIExpression(), !23541)
  store i64 %i.v, ptr %i.a, align 8, !dbg !23563
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23563
  store ptr %i.t, ptr %i.w, align 8, !dbg !23563
    #dbg_value(ptr %i.a, !3097, !DIExpression(), !23421)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !23564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23565
  ret void, !dbg !23566

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1t_.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm, !dbg !23567

bb.d:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !23542, !DIExpression(), !23424)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1t_.exit unwind label %bb.e, !dbg !23568

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !23567
  unreachable, !dbg !23567
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYB1l_INtNtBb_7convert4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoENtNtNtB9_6traits8iterator8Iterator4nextB1U_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 !dbg !23569 {
bb.a:
    #dbg_value(ptr %1, !23955, !DIExpression(), !23958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23959), !dbg !24324
    #dbg_value(ptr %1, !23961, !DIExpression(), !23574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23966), !dbg !24325
    #dbg_value(ptr %1, !23968, !DIExpression(), !23582)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 121, !dbg !24326 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !24326, !range !3505, !alias.scope !23977, !noundef !1322
  %i.c = trunc nuw i8 %i.b to i1, !dbg !24326
  br i1 %i.c, label %bb.ao, label %bb.b, !dbg !24326

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !24327
  %.val.i.i = load ptr, ptr %i.d, align 8, !dbg !24327, !alias.scope !23977, !nonnull !1322, !noundef !1322 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !24327
  %.val13.i.i = load i64, ptr %i.e, align 8, !dbg !24327, !alias.scope !23977, !noundef !1322 ; 33 uses
    #dbg_value(ptr poison, !23972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23583)
    #dbg_value(ptr poison, !23979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23586)
    #dbg_value(ptr poison, !23987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23591)
    #dbg_value(i64 poison, !23972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23583)
    #dbg_value(i64 poison, !23979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23586)
    #dbg_value(i64 poison, !23987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23996), !dbg !24328
    #dbg_value(ptr %1, !23998, !DIExpression(), !23603)
  %i.f = load i64, ptr %1, align 8, !dbg !24329, !range !4930, !alias.scope !24013, !noundef !1322
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  switch i64 %i.f, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.q
    i64 2, label %bb.r
  ], !dbg !24330

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !range !3505, !alias.scope !24013
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  br i1 %i.j, label %bb.ak, label %.lr.ph.preheader.i.i.i, !dbg !24331

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %.promoted225.i.i.i = load i8, ptr %i.k, align 8, !alias.scope !24013 ; 4 uses
  %.promoted176.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !24013 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24045), !dbg !24332
  %i.l = trunc nuw i8 %.promoted225.i.i.i to i1, !dbg !24333 ; 2 uses
    #dbg_value(i1 %i.l, !24031, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23626)
    #dbg_value(i64 %.promoted176.i.i.i, !24032, !DIExpression(), !23627)
    #dbg_value(i64 %.promoted176.i.i.i, !24046, !DIExpression(), !23635)
    #dbg_value(ptr %.val.i.i, !24060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23636)
    #dbg_value(ptr %.val.i.i, !24053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23637)
    #dbg_value(i64 %.val13.i.i, !24060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23636)
    #dbg_value(i64 %.val13.i.i, !24053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23637)
    #dbg_value(i64 %.promoted176.i.i.i, !24061, !DIExpression(), !23636)
    #dbg_value(i64 %.promoted176.i.i.i, !24052, !DIExpression(), !23637)
    #dbg_value(i64 %.val13.i.i, !24054, !DIExpression(), !23635)
    #dbg_value(i64 %.promoted176.i.i.i, !24065, !DIExpression(), !23640)
    #dbg_value(ptr %.val.i.i, !24068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23640)
    #dbg_value(ptr %.val.i.i, !24070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23643)
    #dbg_value(ptr %.val.i.i, !24075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23647)
    #dbg_value(ptr %.val.i.i, !24081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23652)
    #dbg_value(i64 %.val13.i.i, !24068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23640)
    #dbg_value(i64 %.val13.i.i, !24070, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23643)
    #dbg_value(i64 %.val13.i.i, !24075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23647)
    #dbg_value(i64 %.val13.i.i, !24081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23652)
    #dbg_value(i64 %.promoted176.i.i.i, !24073, !DIExpression(), !23643)
    #dbg_value(i64 %.promoted176.i.i.i, !24078, !DIExpression(), !23647)
    #dbg_value(i64 %.promoted176.i.i.i, !24082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23652)
    #dbg_value(i64 %.promoted176.i.i.i, !24086, !DIExpression(), !23655)
  %i.m = icmp eq i64 %.promoted176.i.i.i, 0, !dbg !24334
  br i1 %i.m, label %bb.e, label %bb.c, !dbg !24334

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted176.i.i.i, %.val13.i.i, !dbg !24335
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.d, label %.split.i.i.us.i.peel.i.i, !dbg !24335

.split.i.i.us.i.peel.i.i:                         ; preds = %bb.c
  %i.n = icmp eq i64 %.promoted176.i.i.i, %.val13.i.i, !dbg !24336
  br i1 %i.n, label %bb.e, label %.split.us180.i.i.i, !dbg !24337

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted176.i.i.i, !dbg !24338
  %i.p = load i8, ptr %i.o, align 1, !dbg !24338, !alias.scope !24091, !noalias !24092, !noundef !1322
    #dbg_value(i8 %i.p, !24094, !DIExpression(), !23663)
  %i.q = icmp sgt i8 %i.p, -65, !dbg !24339
  br i1 %i.q, label %bb.e, label %.split.us180.i.i.i, !dbg !24337

bb.e:                                             ; preds = %bb.d, %.split.i.i.us.i.peel.i.i, %.lr.ph.preheader.i.i.i
    #dbg_value(ptr %.val.i.i, !24083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23664)
    #dbg_value(i64 %.val13.i.i, !24083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23664)
    #dbg_value(i64 %.val13.i.i, !24079, !DIExpression(), !23665)
    #dbg_value(i64 %.val13.i.i, !24082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23652)
    #dbg_value(!DIArgList(i64 %.val13.i.i, i64 %.promoted176.i.i.i), !24084, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !23666)
    #dbg_value(ptr %.val.i.i, !24089, !DIExpression(), !23655)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted176.i.i.i, !dbg !24340 ; 4 uses
    #dbg_value(ptr undef, !24099, !DIExpression(), !23669)
    #dbg_value(ptr undef, !4868, !DIExpression(), !23671)
    #dbg_value(i32 2, !4893, !DIExpression(), !23673)
    #dbg_value(ptr undef, !4841, !DIExpression(), !23675)
    #dbg_value(i64 1, !4898, !DIExpression(), !23677)
    #dbg_value(ptr %i.r, !4851, !DIExpression(), !23678)
    #dbg_value(ptr %i.r, !4902, !DIExpression(), !23677)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23679)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23681)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23682)
  %i.s = icmp samesign eq i64 %.promoted176.i.i.i, %.val13.i.i, !dbg !24341
  br i1 %i.s, label %.split185.us.i.i.i, label %bb.f, !dbg !24342

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.r, align 1, !dbg !24343, !noalias !24101, !noundef !1322 ; 5 uses
    #dbg_value(i8 %i.t, !4869, !DIExpression(), !23685)
    #dbg_value(i8 %i.t, !4896, !DIExpression(), !23673)
  %i.u = icmp sgt i8 %i.t, -1, !dbg !24344
  br i1 %i.u, label %bb.g, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i, !dbg !24344

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !24345
  %i.w = and i8 %i.t, 31, !dbg !24346
  %i.x = zext nneg i8 %i.w to i32, !dbg !24346    ; 3 uses
    #dbg_value(i32 %i.x, !4872, !DIExpression(), !23686)
    #dbg_value(i32 %i.x, !4910, !DIExpression(), !23688)
    #dbg_value(ptr undef, !4841, !DIExpression(), !23690)
    #dbg_value(i64 1, !4898, !DIExpression(), !23692)
    #dbg_value(ptr %i.v, !4851, !DIExpression(), !23693)
    #dbg_value(ptr %i.v, !4902, !DIExpression(), !23692)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23694)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23696)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23697)
  %i.y = add nuw nsw i64 %.promoted176.i.i.i, 1, !dbg !24347
  %i.z = icmp samesign ne i64 %i.y, %.val13.i.i, !dbg !24347
  tail call void @llvm.assume(i1 %i.z), !dbg !24348
  %i.aa = load i8, ptr %i.v, align 1, !dbg !24349, !noalias !24101, !noundef !1322
    #dbg_value(i8 %i.aa, !4873, !DIExpression(), !23698)
    #dbg_value(i8 %i.aa, !4913, !DIExpression(), !23688)
  %i.ab = shl nuw nsw i32 %i.x, 6, !dbg !24350
  %i.ac = and i8 %i.aa, 63, !dbg !24351
  %i.ad = zext nneg i8 %i.ac to i32, !dbg !24351  ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad, !dbg !24350
    #dbg_value(i32 %i.ae, !4874, !DIExpression(), !23699)
  %i.af = icmp samesign ugt i8 %i.t, -33, !dbg !24352
  br i1 %i.af, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i, label %bb.h, !dbg !24352

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2, !dbg !24353
    #dbg_value(ptr undef, !4841, !DIExpression(), !23701)
    #dbg_value(i64 1, !4898, !DIExpression(), !23703)
    #dbg_value(ptr %i.ag, !4851, !DIExpression(), !23704)
    #dbg_value(ptr %i.ag, !4902, !DIExpression(), !23703)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23705)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23707)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23708)
  %i.ah = add nuw nsw i64 %.promoted176.i.i.i, 2, !dbg !24354
  %i.ai = icmp samesign ne i64 %i.ah, %.val13.i.i, !dbg !24354
  tail call void @llvm.assume(i1 %i.ai), !dbg !24355
  %i.aj = load i8, ptr %i.ag, align 1, !dbg !24356, !noalias !24101, !noundef !1322
    #dbg_value(i8 %i.aj, !4875, !DIExpression(), !23709)
    #dbg_value(i8 %i.aj, !4913, !DIExpression(), !23711)
    #dbg_value(i32 %i.ad, !4910, !DIExpression(), !23711)
  %i.ak = shl nuw nsw i32 %i.ad, 6, !dbg !24357
  %i.al = and i8 %i.aj, 63, !dbg !24358
  %i.am = zext nneg i8 %i.al to i32, !dbg !24358
  %i.an = or disjoint i32 %i.ak, %i.am, !dbg !24357 ; 2 uses
    #dbg_value(i32 %i.an, !4876, !DIExpression(), !23712)
    #dbg_value(i32 %i.an, !4910, !DIExpression(), !23714)
  %i.ao = shl nuw nsw i32 %i.x, 12, !dbg !24359
  %i.ap = or disjoint i32 %i.an, %i.ao, !dbg !24360
    #dbg_value(i32 %i.ap, !4874, !DIExpression(), !23699)
  %i.aq = icmp samesign ugt i8 %i.t, -17, !dbg !24361
  br i1 %i.aq, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i.i, label %bb.h, !dbg !24361

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3, !dbg !24362
    #dbg_value(ptr undef, !4841, !DIExpression(), !23716)
    #dbg_value(i64 1, !4898, !DIExpression(), !23718)
    #dbg_value(ptr %i.ar, !4851, !DIExpression(), !23719)
    #dbg_value(ptr %i.ar, !4902, !DIExpression(), !23718)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23720)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23722)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23723)
  %i.as = add nuw nsw i64 %.promoted176.i.i.i, 3, !dbg !24363
  %i.at = icmp samesign ne i64 %i.as, %.val13.i.i, !dbg !24363
  tail call void @llvm.assume(i1 %i.at), !dbg !24364
  %i.au = load i8, ptr %i.ar, align 1, !dbg !24365, !noalias !24101, !noundef !1322
    #dbg_value(i8 %i.au, !4877, !DIExpression(), !23724)
    #dbg_value(i8 %i.au, !4913, !DIExpression(), !23714)
  %i.av = shl nuw nsw i32 %i.x, 18, !dbg !24366
  %i.aw = and i32 %i.av, 1835008, !dbg !24366
  %i.ax = shl nuw nsw i32 %i.an, 6, !dbg !24367
  %i.ay = and i8 %i.au, 63, !dbg !24368
  %i.az = zext nneg i8 %i.ay to i32, !dbg !24368
  %i.ba = or disjoint i32 %i.ax, %i.az, !dbg !24367
  %i.bb = or disjoint i32 %i.ba, %i.aw, !dbg !24369
    #dbg_value(i32 %i.bb, !4874, !DIExpression(), !23699)
  br label %bb.h, !dbg !24370

bb.g:                                             ; preds = %bb.f
  %i.bc = zext nneg i8 %i.t to i32, !dbg !24371
  br label %bb.h, !dbg !24372

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.ap, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i ], [ %i.bb, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i ], [ %i.bc, %bb.g ] ; 4 uses
    #dbg_value(i32 1, !24103, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !23729)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24103, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !23729)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24112, !DIExpression(), !23730)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24115, !DIExpression(), !23733)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24119, !DIExpression(), !23736)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24124, !DIExpression(), !23739)
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112, !dbg !24373
  tail call void @llvm.assume(i1 %i.bd), !dbg !24373
  br i1 %i.l, label %.loopexit61.split.us.i.i.i, label %bb.i, !dbg !24374

bb.i:                                             ; preds = %bb.h
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24033, !DIExpression(), !23740)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24129, !DIExpression(), !23743)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24131, !DIExpression(), !23746)
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128, !dbg !24375
  br i1 %i.be, label %.lr.ph.i.i.i, label %bb.j, !dbg !24375

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048, !dbg !24376
  br i1 %i.bf, label %.lr.ph.i.i.i, label %bb.k, !dbg !24376

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536, !dbg !24377
  %..i.us.i.peel.i.i = select i1 %i.bg, i64 3, i64 4, !dbg !24378
  br label %.lr.ph.i.i.i, !dbg !24378

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.j ], [ %..i.us.i.peel.i.i, %bb.k ], [ 1, %bb.i ], !dbg !24378
  %i.bh = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted176.i.i.i, !dbg !24379 ; 16 uses
  store i64 %i.bh, ptr %i.g, align 8, !dbg !24379, !alias.scope !24133
    #dbg_value(ptr poison, !4841, !DIExpression(), !23716)
    #dbg_value(ptr poison, !4841, !DIExpression(), !23701)
    #dbg_value(ptr poison, !4841, !DIExpression(), !23690)
    #dbg_value(ptr poison, !4841, !DIExpression(), !23675)
    #dbg_value(ptr poison, !4868, !DIExpression(), !23671)
    #dbg_value(ptr poison, !24099, !DIExpression(), !23669)
    #dbg_value(ptr %1, !24028, !DIExpression(), !23747)
    #dbg_declare(ptr poison, !24111, !DIExpression(), !23748)
    #dbg_value(ptr %1, !24030, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24134), !dbg !24332
    #dbg_value(i1 true, !24031, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23626)
    #dbg_value(i64 %i.bh, !24032, !DIExpression(), !23627)
    #dbg_value(i64 %i.bh, !24046, !DIExpression(), !23635)
    #dbg_value(ptr %.val.i.i, !24060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23636)
    #dbg_value(ptr %.val.i.i, !24053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23637)
    #dbg_value(i64 %.val13.i.i, !24060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23636)
    #dbg_value(i64 %.val13.i.i, !24053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23637)
    #dbg_value(i64 %i.bh, !24061, !DIExpression(), !23636)
    #dbg_value(i64 %i.bh, !24052, !DIExpression(), !23637)
    #dbg_value(i64 %.val13.i.i, !24054, !DIExpression(), !23635)
    #dbg_value(i64 %i.bh, !24065, !DIExpression(), !23640)
    #dbg_value(ptr %.val.i.i, !24068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23640)
    #dbg_value(ptr %.val.i.i, !24070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23643)
    #dbg_value(ptr %.val.i.i, !24075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23647)
    #dbg_value(ptr %.val.i.i, !24081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23652)
    #dbg_value(i64 %.val13.i.i, !24068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23640)
    #dbg_value(i64 %.val13.i.i, !24070, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23643)
    #dbg_value(i64 %.val13.i.i, !24075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23647)
    #dbg_value(i64 %.val13.i.i, !24081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23652)
    #dbg_value(i64 %i.bh, !24073, !DIExpression(), !23643)
    #dbg_value(i64 %i.bh, !24078, !DIExpression(), !23647)
    #dbg_value(i64 %i.bh, !24082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23652)
    #dbg_value(i64 %i.bh, !24086, !DIExpression(), !23655)
  %i.bi = icmp eq i64 %i.bh, 0, !dbg !24334
  br i1 %i.bi, label %bb.n, label %bb.l, !dbg !24334

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.bh, %.val13.i.i, !dbg !24335
  br i1 %.not.i.i.us.i.i.i, label %bb.m, label %.split.i.i.us.i.i.i, !dbg !24335

.split.i.i.us.i.i.i:                              ; preds = %bb.l
  %i.bj = icmp eq i64 %i.bh, %.val13.i.i, !dbg !24336
  br i1 %i.bj, label %bb.n, label %.split.us180.i.i.i, !dbg !24337

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bh, !dbg !24338
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !24338, !alias.scope !24091, !noalias !24135, !noundef !1322
    #dbg_value(i8 %i.bl, !24094, !DIExpression(), !23663)
  %i.bm = icmp sgt i8 %i.bl, -65, !dbg !24339
  br i1 %i.bm, label %bb.n, label %.split.us180.i.i.i, !dbg !24337

bb.n:                                             ; preds = %bb.m, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
    #dbg_value(ptr %.val.i.i, !24083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23664)
    #dbg_value(i64 %.val13.i.i, !24083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23664)
    #dbg_value(i64 %.val13.i.i, !24079, !DIExpression(), !23665)
    #dbg_value(i64 %.val13.i.i, !24082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23652)
    #dbg_value(!DIArgList(i64 %.val13.i.i, i64 %i.bh), !24084, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !23666)
    #dbg_value(ptr %.val.i.i, !24089, !DIExpression(), !23655)
    #dbg_value(ptr undef, !24099, !DIExpression(), !23669)
    #dbg_value(ptr undef, !4868, !DIExpression(), !23671)
    #dbg_value(i32 2, !4893, !DIExpression(), !23673)
    #dbg_value(ptr undef, !4841, !DIExpression(), !23675)
    #dbg_value(i64 1, !4898, !DIExpression(), !23677)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23678)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23677)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23679)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23681)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23682)
  %i.bn = icmp samesign eq i64 %i.bh, %.val13.i.i, !dbg !24341
  br i1 %i.bn, label %.split185.us.i.thread.i.i, label %bb.o, !dbg !24342

.split185.us.i.thread.i.i:                        ; preds = %bb.n
  store i8 0, ptr %i.k, align 8, !dbg !24380, !alias.scope !24136
    #dbg_value(i32 0, !24103, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !23729)
    #dbg_value(i32 undef, !24103, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !23729)
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24374

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bh, !dbg !24340
    #dbg_value(ptr %i.bo, !4851, !DIExpression(), !23678)
    #dbg_value(ptr %i.bo, !4902, !DIExpression(), !23677)
  %i.bp = load i8, ptr %i.bo, align 1, !dbg !24343, !noalias !24137, !noundef !1322 ; 3 uses
    #dbg_value(i8 %i.bp, !4869, !DIExpression(), !23685)
    #dbg_value(i8 %i.bp, !4896, !DIExpression(), !23673)
  %i.bq = icmp sgt i8 %i.bp, -1, !dbg !24344
  br i1 %i.bq, label %.loopexit61.split.us.i.i.i, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i, !dbg !24344

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i: ; preds = %bb.o
    #dbg_value(i8 %i.bp, !4872, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !23686)
    #dbg_value(i8 %i.bp, !4910, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !23688)
    #dbg_value(ptr undef, !4841, !DIExpression(), !23690)
    #dbg_value(i64 1, !4898, !DIExpression(), !23692)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !23693)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !23692)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23694)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23696)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23697)
  %i.br = add nuw nsw i64 %i.bh, 1, !dbg !24347
  %i.bs = icmp samesign ne i64 %i.br, %.val13.i.i, !dbg !24347
  tail call void @llvm.assume(i1 %i.bs), !dbg !24348
    #dbg_value(i8 poison, !4873, !DIExpression(), !23698)
    #dbg_value(i8 poison, !4913, !DIExpression(), !23688)
    #dbg_value(!DIArgList(i8 poison, i8 poison), !4874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 6, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !23699)
  %i.bt = icmp samesign ugt i8 %i.bp, -33, !dbg !24352
  br i1 %i.bt, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i, label %.loopexit61.split.us.i.i.i, !dbg !24352

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i
    #dbg_value(ptr undef, !4841, !DIExpression(), !23701)
    #dbg_value(i64 1, !4898, !DIExpression(), !23703)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !23704)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !23703)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23705)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23707)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23708)
  %i.bu = add nuw nsw i64 %i.bh, 2, !dbg !24354
  %i.bv = icmp samesign ne i64 %i.bu, %.val13.i.i, !dbg !24354
  tail call void @llvm.assume(i1 %i.bv), !dbg !24355
    #dbg_value(i8 poison, !4875, !DIExpression(), !23709)
    #dbg_value(i8 poison, !4913, !DIExpression(), !23711)
    #dbg_value(i8 poison, !4910, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !23711)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !4876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !23712)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !4910, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !23714)
    #dbg_value(!DIArgList(i32 poison, i8 poison, i8 poison), !4874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 12, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !23699)
  %i.bw = icmp samesign ugt i8 %i.bp, -17, !dbg !24361
  br i1 %i.bw, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i, label %.loopexit61.split.us.i.i.i, !dbg !24361

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i
    #dbg_value(ptr undef, !4841, !DIExpression(), !23716)
    #dbg_value(i64 1, !4898, !DIExpression(), !23718)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !23719)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !23718)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23720)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23722)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23723)
  %i.bx = add nuw nsw i64 %i.bh, 3, !dbg !24363
  %i.by = icmp samesign ne i64 %i.bx, %.val13.i.i, !dbg !24363
  tail call void @llvm.assume(i1 %i.by), !dbg !24364
    #dbg_value(i8 poison, !4877, !DIExpression(), !23724)
    #dbg_value(i8 poison, !4913, !DIExpression(), !23714)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i8 poison), !4874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 18, DW_OP_shl, DW_OP_constu, 1835008, DW_OP_and, DW_OP_or, DW_OP_stack_value), !23699)
  br label %.loopexit61.split.us.i.i.i, !dbg !24370

.split.us180.i.i.i:                               ; preds = %bb.m, %.split.i.i.us.i.i.i, %bb.d, %.split.i.i.us.i.peel.i.i
  %.lcssa43.i.i = phi i64 [ %.promoted176.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted176.i.i.i, %bb.d ], [ %i.bh, %.split.i.i.us.i.i.i ], [ %i.bh, %bb.m ]
  %.lcssa40.i.i = phi i8 [ %.promoted225.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted225.i.i.i, %bb.d ], [ 1, %.split.i.i.us.i.i.i ], [ 1, %bb.m ]
  %i.bz = xor i8 %.lcssa40.i.i, 1
  store i8 %i.bz, ptr %i.k, align 8, !dbg !24380, !alias.scope !24136
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val13.i.i, i64 noundef %.lcssa43.i.i, i64 noundef %.val13.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28, !dbg !24381, !noalias !24135
  unreachable, !dbg !24381

.split185.us.i.i.i:                               ; preds = %bb.e
  %i.ca = xor i8 %.promoted225.i.i.i, 1
  store i8 %i.ca, ptr %i.k, align 8, !dbg !24380, !alias.scope !24136
    #dbg_value(i32 0, !24103, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !23729)
    #dbg_value(i32 undef, !24103, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !23729)
  br i1 %i.l, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.p, !dbg !24374

.loopexit61.split.us.i.i.i:                       ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i, %bb.o, %bb.h
  %.lcssa45.i.i = phi i64 [ %.promoted176.i.i.i, %bb.h ], [ %i.bh, %bb.o ], [ %i.bh, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i ] ; 2 uses
  store i8 0, ptr %i.k, align 8, !dbg !24380, !alias.scope !24136
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24382

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.p:                                             ; preds = %.split185.us.i.i.i
  store i8 1, ptr %i.h, align 2, !dbg !24383, !alias.scope !24136
  br label %bb.ak, !dbg !24384

bb.q:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !24005, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23751)
    #dbg_value(ptr poison, !24006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23752)
    #dbg_value(ptr poison, !24146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23755)
    #dbg_value(ptr poison, !24152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23759)
    #dbg_value(ptr poison, !24159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23762)
    #dbg_value(i64 %.val13.i.i, !24006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23752)
    #dbg_value(i64 %.val13.i.i, !24146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23755)
    #dbg_value(i64 %.val13.i.i, !24152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23759)
    #dbg_value(i64 %.val13.i.i, !24159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23762)
  %i.cb = load i64, ptr %i.g, align 8, !dbg !24385, !alias.scope !24013, !noundef !1322 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.cb, %.val13.i.i, !dbg !24385
  br i1 %.not.i.i.i, label %bb.s, label %bb.ak, !dbg !24385

bb.r:                                             ; preds = %bb.b
    #dbg_value(ptr %i.g, !24010, !DIExpression(), !23763)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !24386 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !24386, !alias.scope !24013, !noundef !1322 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1, !dbg !24386
    #dbg_value(i1 %i.ce, !24011, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23764)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !24387
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !24387, !alias.scope !24013, !nonnull !1322, !noundef !1322 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !24387
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !24387, !alias.scope !24013, !noundef !1322 ; 16 uses
    #dbg_value(ptr poison, !24163, !DIExpression(), !23789)
    #dbg_value(ptr poison, !24163, !DIExpression(), !23795)
    #dbg_value(ptr poison, !24166, !DIExpression(), !23796)
    #dbg_value(ptr poison, !24166, !DIExpression(), !23797)
    #dbg_value(ptr poison, !24169, !DIExpression(), !23798)
    #dbg_value(ptr poison, !24169, !DIExpression(), !23799)
    #dbg_value(ptr poison, !24180, !DIExpression(), !23800)
    #dbg_value(ptr poison, !24180, !DIExpression(), !23801)
    #dbg_value(ptr poison, !24163, !DIExpression(), !23808)
    #dbg_value(ptr poison, !24163, !DIExpression(), !23812)
    #dbg_value(ptr poison, !24205, !DIExpression(), !23813)
    #dbg_value(ptr poison, !24205, !DIExpression(), !23814)
    #dbg_value(ptr poison, !24208, !DIExpression(), !23815)
    #dbg_value(ptr poison, !24208, !DIExpression(), !23816)
    #dbg_value(ptr %i.g, !24189, !DIExpression(), !23817)
    #dbg_value(ptr %i.g, !24189, !DIExpression(), !23818)
    #dbg_value(ptr %i.g, !24211, !DIExpression(), !23821)
    #dbg_value(ptr %i.g, !24211, !DIExpression(), !23823)
    #dbg_value(ptr %.val.i.i, !24190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23817)
    #dbg_value(ptr %.val.i.i, !24190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23818)
    #dbg_value(ptr %.val.i.i, !24218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23826)
    #dbg_value(ptr %.val.i.i, !24218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23828)
    #dbg_value(ptr %.val.i.i, !24225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23831)
    #dbg_value(ptr %.val.i.i, !24225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23833)
    #dbg_value(ptr %.val.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23836)
    #dbg_value(ptr %.val.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23838)
    #dbg_value(ptr %.val.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23841)
    #dbg_value(ptr %.val.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23843)
    #dbg_value(ptr %.val.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23845)
    #dbg_value(ptr %.val.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23847)
    #dbg_value(ptr %.val.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23849)
    #dbg_value(ptr %.val.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23851)
    #dbg_value(i64 %.val13.i.i, !24190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23817)
    #dbg_value(i64 %.val13.i.i, !24190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23818)
    #dbg_value(i64 %.val13.i.i, !24218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23826)
    #dbg_value(i64 %.val13.i.i, !24218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23828)
    #dbg_value(i64 %.val13.i.i, !24225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23831)
    #dbg_value(i64 %.val13.i.i, !24225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23833)
    #dbg_value(i64 %.val13.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23836)
    #dbg_value(i64 %.val13.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23838)
    #dbg_value(i64 %.val13.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23841)
    #dbg_value(i64 %.val13.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23843)
    #dbg_value(i64 %.val13.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23845)
    #dbg_value(i64 %.val13.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23847)
    #dbg_value(i64 %.val13.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23849)
    #dbg_value(i64 %.val13.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23851)
    #dbg_value(ptr %i.cg, !24191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23817)
    #dbg_value(ptr %i.cg, !24191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23818)
    #dbg_value(i64 %i.ci, !24191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23817)
    #dbg_value(i64 %i.ci, !24191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23818)
    #dbg_value(i64 1, !24242, !DIExpression(), !23854)
    #dbg_value(i64 1, !24242, !DIExpression(), !23856)
    #dbg_value(i64 1, !24245, !DIExpression(), !23859)
    #dbg_value(i64 1, !24245, !DIExpression(), !23861)
    #dbg_value(i64 1, !24248, !DIExpression(), !23864)
    #dbg_value(i64 1, !24248, !DIExpression(), !23866)
    #dbg_value(i64 1, !24251, !DIExpression(), !23869)
    #dbg_value(i64 1, !24251, !DIExpression(), !23871)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !24388 ; 9 uses
    #dbg_value(i64 poison, !24193, !DIExpression(), !23873)
    #dbg_value(i64 poison, !24193, !DIExpression(), !23874)
  %i.ck = add nsw i64 %i.ci, -1, !dbg !24389      ; 5 uses
  br i1 %i.ce, label %bb.ad, label %bb.v, !dbg !24390

bb.s:                                             ; preds = %bb.q
    #dbg_value(ptr %.val.i.i, !24006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23752)
    #dbg_value(ptr %.val.i.i, !24146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23755)
    #dbg_value(ptr %.val.i.i, !24152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23759)
    #dbg_value(ptr %.val.i.i, !24159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23762)
    #dbg_value(i64 %i.cb, !24149, !DIExpression(), !23755)
    #dbg_value(i64 %i.cb, !24156, !DIExpression(), !23759)
    #dbg_value(i64 %i.cb, !24160, !DIExpression(), !23762)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24391
  %i.cm = load i8, ptr %i.cl, align 8, !dbg !24391, !alias.scope !24013, !noundef !1322 ; 2 uses
  %i.cn = sub nuw i64 %.val13.i.i, %i.cb, !dbg !24392 ; 4 uses
    #dbg_value(i64 %i.cn, !24157, !DIExpression(), !23875)
    #dbg_value(i64 %i.cn, !24161, !DIExpression(), !23762)
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cb, !dbg !24393 ; 2 uses
    #dbg_value(i8 %i.cm, !4954, !DIExpression(), !23877)
    #dbg_value(i8 %i.cm, !4959, !DIExpression(), !23879)
    #dbg_value(ptr %i.co, !4955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23877)
    #dbg_value(ptr %i.co, !4960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23879)
    #dbg_value(i64 %i.cn, !4955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23877)
    #dbg_value(i64 %i.cn, !4960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23879)
  %i.cp = icmp samesign ult i64 %i.cn, 16, !dbg !24394
  br i1 %i.cp, label %.lr.ph.i.i.i.i, label %bb.t, !dbg !24394

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef range(i64 0, -9223372036854775808) %i.cn), !dbg !24395, !noalias !24254 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0, !dbg !24395
  %i.cs = extractvalue { i64, i64 } %i.cq, 1, !dbg !24395
    #dbg_value(i64 %i.cr, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23880)
    #dbg_value(i64 %i.cs, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23880)
  %i.ct = trunc nuw i64 %i.cr to i1, !dbg !24396
  br i1 %i.ct, label %.loopexit62.i.i.i, label %.loopexit63.i.i.i, !dbg !24396

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %bb.u
  %.sroa.04.015.i.i.i.i = phi i64 [ %i.cx, %bb.u ], [ 0, %bb.s ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i, !4961, !DIExpression(), !23881)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.04.015.i.i.i.i, !dbg !24397
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !24397, !alias.scope !24255, !noalias !24254, !noundef !1322
  %i.cw = icmp eq i8 %i.cv, %i.cm, !dbg !24397
  br i1 %i.cw, label %.loopexit62.i.i.i, label %bb.u, !dbg !24397

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cx = add nuw nsw i64 %.sroa.04.015.i.i.i.i, 1, !dbg !24398 ; 2 uses
    #dbg_value(i64 %i.cx, !4961, !DIExpression(), !23881)
  %exitcond.not.i27.i.i.i = icmp eq i64 %i.cx, %i.cn, !dbg !24399
  br i1 %exitcond.not.i27.i.i.i, label %.loopexit63.i.i.i, label %.lr.ph.i.i.i.i, !dbg !24399

.loopexit62.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.t
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.cs, %bb.t ], [ %.sroa.04.015.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !24400 ; 2 uses
    #dbg_value(i64 1, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23880)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23880)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !4957, !DIExpression(), !23884)
  %i.cy = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.cn, !dbg !24401
    #dbg_value(i1 true, !4963, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23886)
  tail call void @llvm.assume(i1 %i.cy), !dbg !24402
    #dbg_value(i64 1, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23880)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23880)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !24007, !DIExpression(), !23887)
  %i.cz = add i64 %.sroa.5.0.i.i.i.i, %i.cb, !dbg !24403 ; 2 uses
    #dbg_value(i64 %i.cz, !24008, !DIExpression(), !23888)
  %i.da = add i64 %i.cz, 1, !dbg !24404           ; 2 uses
  store i64 %i.da, ptr %i.g, align 8, !dbg !24404, !alias.scope !24013
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24405

.loopexit63.i.i.i:                                ; preds = %bb.u, %bb.t
    #dbg_value(i64 0, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23880)
    #dbg_value(i64 poison, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23880)
  store i64 %.val13.i.i, ptr %i.g, align 8, !dbg !24406, !alias.scope !24013
  br label %bb.ak, !dbg !24407

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24256), !dbg !24408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24257), !dbg !24408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24258), !dbg !24408
    #dbg_value(i1 false, !24192, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23818)
    #dbg_value(i64 %i.ck, !24194, !DIExpression(), !23893)
  %.promoted.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !24259 ; 2 uses
  %i.db = add i64 %.promoted.i.i.i.i, %i.ck, !dbg !24409 ; 2 uses
  %i.dc = icmp ult i64 %i.db, %.val13.i.i, !dbg !24410
  br i1 %i.dc, label %.lr.ph.i28.i.i.i, label %._crit_edge.i.i.i.i, !dbg !24410

.lr.ph.i28.i.i.i:                                 ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !24259, !noundef !1322
  %i.df = load i64, ptr %i.g, align 8, !alias.scope !24259 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !24259 ; 2 uses
  %i.di = sub i64 %i.ci, %i.dh
  %invariant.op = sub i64 1, %i.df, !dbg !24411
  br label %.lr.ph.split.i.i.i.i, !dbg !24411

._crit_edge.i.i.i.i:                              ; preds = %bb.y, %bb.v
  store i64 %.val13.i.i, ptr %i.cj, align 8, !dbg !24412, !alias.scope !24259
  br label %bb.ak, !dbg !24413

.lr.ph.split.i.i.i.i:                             ; preds = %bb.y, %.lr.ph.i28.i.i.i
  %i.dj = phi i64 [ %.sink94.i.i.i.i, %bb.y ], [ %i.cd, %.lr.ph.i28.i.i.i ] ; 3 uses
  %i.dk = phi i64 [ %i.dv, %bb.y ], [ %i.db, %.lr.ph.i28.i.i.i ]
  %i.dl = phi i64 [ %.sink95.i.i.i.i, %bb.y ], [ %.promoted.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dk, !dbg !24414
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !24415, !alias.scope !24257, !noalias !24254, !noundef !1322
    #dbg_value(i8 %i.dn, !24195, !DIExpression(), !23894)
    #dbg_value(i8 %i.dn, !24216, !DIExpression(), !23823)
  %i.do = and i8 %i.dn, 63, !dbg !24416
  %i.dp = zext nneg i8 %i.do to i64, !dbg !24417
  %i.dq = shl nuw i64 1, %i.dp, !dbg !24418
  %i.dr = and i64 %i.dq, %i.de, !dbg !24418
  %.not.i29.i.i.i = icmp eq i64 %i.dr, 0, !dbg !24418
  br i1 %.not.i29.i.i.i, label %bb.w, label %bb.x, !dbg !24411

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYB1l_INtNtBb_7convert4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoENtNtNtB9_6traits8iterator8Iterator4nextB1U_:bb.a

.preheader59.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
    #dbg_value(i64 %.fr234.i.i.i, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23815)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23808)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  br i1 %exitcond.not.i36.i.i.us.i94.not, label %.lr.ph96, label %.preheader.i38.us.i.i.us.i.preheader, !dbg !24457

.preheader59.i.i.i.us.i:                          ; preds = %.lr.ph96
  %i.fi = add i64 %.sroa.04.0.us.i.i.i.us.i95, 1, !dbg !24458 ; 2 uses
    #dbg_value(i64 %i.fi, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %i.fi, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23815)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23808)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  %exitcond.not.i36.i.i.us.i = icmp eq i64 %i.fi, %umax.i.i.i.i, !dbg !24459
  br i1 %exitcond.not.i36.i.i.us.i, label %.preheader.i38.us.i.i.us.i.preheader, label %.lr.ph96, !dbg !24457

.preheader.i38.us.i.i.us.i.preheader:             ; preds = %.preheader59.i.i.i.us.i, %.preheader59.i.i.i.us.i.preheader
    #dbg_value(i64 %.fr234.i.i.i, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(ptr undef, !24180, !DIExpression(), !23800)
    #dbg_value(ptr undef, !24169, !DIExpression(), !23798)
    #dbg_value(ptr undef, !24166, !DIExpression(), !23796)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23789)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23919)
  br i1 %.not58.i.us.i.i.us.i97, label %.split.us.i40.i.i.i, label %.lr.ph99, !dbg !24460

.lr.ph96:                                         ; preds = %.preheader59.i.i.i.us.i.preheader, %.preheader59.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i95 = phi i64 [ %i.fi, %.preheader59.i.i.i.us.i ], [ %.fr234.i.i.i, %.preheader59.i.i.i.us.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24206, !DIExpression(), !23920)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24243, !DIExpression(), !23854)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24246, !DIExpression(), !23859)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24198, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24199, !DIExpression(), !23921)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i.i.us.i95, !dbg !24461
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !24461, !alias.scope !24271, !noalias !24254, !noundef !1322
  %i.fl = add i64 %.sroa.04.0.us.i.i.i.us.i95, %i.fb, !dbg !24462 ; 2 uses
    #dbg_value(i64 %i.fl, !24234, !DIExpression(), !23836)
    #dbg_value(i64 %i.fl, !24239, !DIExpression(), !23841)
  %i.fm = icmp ult i64 %i.fl, %.val13.i.i, !dbg !24463
  tail call void @llvm.assume(i1 %i.fm), !dbg !24464
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fl, !dbg !24465
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !24466, !alias.scope !24270, !noalias !24254, !noundef !1322
  %.not45.us.i.i.i.us.i = icmp eq i8 %i.fk, %i.fo, !dbg !24461
  br i1 %.not45.us.i.i.i.us.i, label %.preheader59.i.i.i.us.i, label %bb.ae, !dbg !24461

bb.ae:                                            ; preds = %.lr.ph96
  %.reass301.i.reass.i.us.i = add i64 %i.fb, %reass.sub91.i.i
  %i.fp = add i64 %.reass301.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i95, !dbg !24467
  br label %bb.ag, !dbg !24468

.preheader.i38.us.i.i.us.i:                       ; preds = %.lr.ph99
    #dbg_value(i64 %i.fq, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(ptr undef, !24180, !DIExpression(), !23800)
    #dbg_value(ptr undef, !24169, !DIExpression(), !23798)
    #dbg_value(ptr undef, !24166, !DIExpression(), !23796)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23789)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23919)
  %.not58.i.us.i.i.us.i = icmp eq i64 %i.fq, 0, !dbg !24469
  br i1 %.not58.i.us.i.i.us.i, label %.split.us.i40.i.i.i, label %.lr.ph99, !dbg !24460

.lr.ph99:                                         ; preds = %.preheader.i38.us.i.i.us.i.preheader, %.preheader.i38.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i98 = phi i64 [ %i.fq, %.preheader.i38.us.i.i.us.i ], [ %.fr234.i.i.i, %.preheader.i38.us.i.i.us.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i98, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i98, !24249, !DIExpression(), !23864)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i98, !24252, !DIExpression(), !23869)
  %i.fq = add i64 %.sroa.2.0.us.i.us.i.i.us.i98, -1, !dbg !24470 ; 4 uses
    #dbg_value(i64 %i.fq, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(i64 %i.fq, !24202, !DIExpression(), !23922)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fq, !dbg !24471
  %i.fs = load i8, ptr %i.fr, align 1, !dbg !24471, !alias.scope !24271, !noalias !24254, !noundef !1322
  %i.ft = add i64 %i.fq, %i.fb, !dbg !24472       ; 2 uses
    #dbg_value(i64 %i.ft, !24234, !DIExpression(), !23845)
    #dbg_value(i64 %i.ft, !24239, !DIExpression(), !23849)
  %i.fu = icmp ult i64 %i.ft, %.val13.i.i, !dbg !24473
  tail call void @llvm.assume(i1 %i.fu), !dbg !24474
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ft, !dbg !24475
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !24476, !alias.scope !24270, !noalias !24254, !noundef !1322
  %.not44.us.i.us.i.i.us.i = icmp eq i8 %i.fs, %i.fw, !dbg !24471
  br i1 %.not44.us.i.us.i.i.us.i, label %.preheader.i38.us.i.i.us.i, label %.split.us.i.i.us.i, !dbg !24471

.split.us.i.i.us.i:                               ; preds = %.lr.ph99
  %i.fx = add i64 %i.fb, %i.ey, !dbg !24477
  br label %bb.ag, !dbg !24478

bb.af:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.fy = add i64 %i.fb, %i.ci, !dbg !24479
  br label %bb.ag, !dbg !24480

bb.ag:                                            ; preds = %bb.af, %.split.us.i.i.us.i, %bb.ae
  %.sink.i37.i.i.us.i = phi i64 [ %i.fy, %bb.af ], [ %i.fp, %bb.ae ], [ %i.fx, %.split.us.i.i.us.i ] ; 3 uses
  store i64 %.sink.i37.i.i.us.i, ptr %i.cj, align 8, !dbg !24481, !alias.scope !24272
  %i.fz = add i64 %.sink.i37.i.i.us.i, %i.ck, !dbg !24449 ; 2 uses
    #dbg_value(i64 %i.fz, !24221, !DIExpression(), !23826)
    #dbg_value(i64 %i.fz, !24229, !DIExpression(), !23831)
  %i.ga = icmp ult i64 %i.fz, %.val13.i.i, !dbg !24450
  br i1 %i.ga, label %.lr.ph.split.us.i.i.i.us.i, label %._crit_edge.i32.i.i.i, !dbg !24450

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.aj
  %i.gb = phi i64 [ %i.gs, %bb.aj ], [ %i.es, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.gc = phi i64 [ %.sink.i37.i.i.i, %bb.aj ], [ %.promoted.i31.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gb, !dbg !24452
  %i.ge = load i8, ptr %i.gd, align 1, !dbg !24453, !alias.scope !24270, !noalias !24254, !noundef !1322
    #dbg_value(i8 %i.ge, !24195, !DIExpression(), !23915)
    #dbg_value(i8 %i.ge, !24216, !DIExpression(), !23821)
  %i.gf = and i8 %i.ge, 63, !dbg !24454
  %i.gg = zext nneg i8 %i.gf to i64, !dbg !24455
  %i.gh = shl nuw i64 1, %i.gg, !dbg !24456
  %i.gi = and i64 %i.gh, %i.ev, !dbg !24456
  %.not.us.i.i.i.i = icmp eq i64 %i.gi, 0, !dbg !24456
  br i1 %.not.us.i.i.i.i, label %bb.ai, label %.preheader59.i.i.i.i.preheader, !dbg !24451

.preheader59.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
    #dbg_value(i64 %.fr234.i.i.i, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23815)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23808)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  br i1 %exitcond.not.i36.i.i.i89.not, label %.lr.ph91, label %.preheader.i38.i.i.i, !dbg !24457

.preheader59.i.i.i.i:                             ; preds = %.lr.ph91
  %i.gj = add i64 %.sroa.04.0.us.i.i.i.i90, 1, !dbg !24458 ; 2 uses
    #dbg_value(i64 %i.gj, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %i.gj, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23815)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23808)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  %exitcond.not.i36.i.i.i = icmp eq i64 %i.gj, %umax.i.i.i.i, !dbg !24459
  br i1 %exitcond.not.i36.i.i.i, label %.preheader.i38.i.i.i, label %.lr.ph91, !dbg !24457

.lr.ph91:                                         ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
  %.sroa.04.0.us.i.i.i.i90 = phi i64 [ %i.gj, %.preheader59.i.i.i.i ], [ %.fr234.i.i.i, %.preheader59.i.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24206, !DIExpression(), !23920)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24243, !DIExpression(), !23854)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24246, !DIExpression(), !23859)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24198, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24199, !DIExpression(), !23921)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i.i.i90, !dbg !24461
  %i.gl = load i8, ptr %i.gk, align 1, !dbg !24461, !alias.scope !24271, !noalias !24254, !noundef !1322
  %i.gm = add i64 %.sroa.04.0.us.i.i.i.i90, %i.gc, !dbg !24462 ; 2 uses
    #dbg_value(i64 %i.gm, !24234, !DIExpression(), !23836)
    #dbg_value(i64 %i.gm, !24239, !DIExpression(), !23841)
  %i.gn = icmp ult i64 %i.gm, %.val13.i.i, !dbg !24463
  tail call void @llvm.assume(i1 %i.gn), !dbg !24464
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gm, !dbg !24465
  %i.gp = load i8, ptr %i.go, align 1, !dbg !24466, !alias.scope !24270, !noalias !24254, !noundef !1322
  %.not45.us.i.i.i.i = icmp eq i8 %i.gl, %i.gp, !dbg !24461
  br i1 %.not45.us.i.i.i.i, label %.preheader59.i.i.i.i, label %bb.ah, !dbg !24461

.preheader.i38.i.i.i:                             ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
    #dbg_value(i64 %i.ew, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(ptr undef, !24180, !DIExpression(), !23800)
    #dbg_value(ptr undef, !24169, !DIExpression(), !23798)
    #dbg_value(ptr undef, !24166, !DIExpression(), !23796)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23789)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23919)
  %.not58.i.i.i.i = icmp eq i64 %.fr234.i.i.i, 0, !dbg !24469
  br i1 %.not58.i.i.i.i, label %.split.us.i40.i.i.i, label %.split56.us.i39.i.i.i, !dbg !24460

.split56.us.i39.i.i.i:                            ; preds = %.preheader.i38.i.i.i
    #dbg_value(i64 %i.ew, !24249, !DIExpression(), !23864)
    #dbg_value(i64 %i.ew, !24252, !DIExpression(), !23869)
    #dbg_value(i64 %i.ez, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(i64 %i.ez, !24202, !DIExpression(), !23922)
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ez, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !dbg !24471, !noalias !24273
  unreachable, !dbg !24471

bb.ah:                                            ; preds = %.lr.ph91
  %.reass301.i.reass.i.i = add i64 %i.gc, %reass.sub91.i.i
  %i.gq = add i64 %.reass301.i.reass.i.i, %.sroa.04.0.us.i.i.i.i90, !dbg !24467
  br label %bb.aj, !dbg !24468

bb.ai:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gr = add i64 %i.gc, %i.ci, !dbg !24479
  br label %bb.aj, !dbg !24480

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink.i37.i.i.i = phi i64 [ %i.gr, %bb.ai ], [ %i.gq, %bb.ah ] ; 3 uses
  store i64 %.sink.i37.i.i.i, ptr %i.cj, align 8, !dbg !24481, !alias.scope !24272
  %i.gs = add i64 %.sink.i37.i.i.i, %i.ck, !dbg !24449 ; 2 uses
    #dbg_value(i64 %i.gs, !24221, !DIExpression(), !23826)
    #dbg_value(i64 %i.gs, !24229, !DIExpression(), !23831)
  %i.gt = icmp ult i64 %i.gs, %.val13.i.i, !dbg !24450
  br i1 %i.gt, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i32.i.i.i, !dbg !24450

._crit_edge.i32.i.i.i:                            ; preds = %bb.aj, %bb.ag, %bb.ad
  store i64 %.val13.i.i, ptr %i.cj, align 8, !dbg !24482, !alias.scope !24272
  br label %bb.ak, !dbg !24483

.split.us.i40.i.i.i:                              ; preds = %.preheader.i38.us.i.i.us.i.preheader, %.preheader.i38.us.i.i.us.i, %.preheader.i38.i.i.i
  %i.gu = phi i64 [ %i.gc, %.preheader.i38.i.i.i ], [ %i.fb, %.preheader.i38.us.i.i.us.i ], [ %i.fb, %.preheader.i38.us.i.i.us.i.preheader ] ; 2 uses
  %i.gv = add i64 %i.gu, %i.ci, !dbg !24484       ; 2 uses
  store i64 %i.gv, ptr %i.cj, align 8, !dbg !24484, !alias.scope !24272
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24485

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %.split.us.i40.i.i.i, %.split.us.i30.i.i.i, %.loopexit62.i.i.i, %.loopexit61.split.us.i.i.i, %.split185.us.i.i.i, %.split185.us.i.thread.i.i
  %.sroa.9.0.i.i = phi i64 [ %.val13.i.i, %.split185.us.i.i.i ], [ %i.eh, %.split.us.i30.i.i.i ], [ %.lcssa45.i.i, %.loopexit61.split.us.i.i.i ], [ %i.da, %.loopexit62.i.i.i ], [ %i.gv, %.split.us.i40.i.i.i ], [ %.val13.i.i, %.split185.us.i.thread.i.i ], !dbg !24486
  %.sroa.4.015.i.i = phi i64 [ %.val13.i.i, %.split185.us.i.i.i ], [ %i.dl, %.split.us.i30.i.i.i ], [ %.lcssa45.i.i, %.loopexit61.split.us.i.i.i ], [ %i.cz, %.loopexit62.i.i.i ], [ %i.gu, %.split.us.i40.i.i.i ], [ %.val13.i.i, %.split185.us.i.thread.i.i ], !dbg !24486
    #dbg_value(ptr %.val.i.i, !23972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23583)
    #dbg_value(ptr %.val.i.i, !23979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23586)
    #dbg_value(ptr %.val.i.i, !23987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23591)
    #dbg_value(i64 %.sroa.4.015.i.i, !23973, !DIExpression(), !23924)
    #dbg_value(i64 %.sroa.4.015.i.i, !23983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23586)
    #dbg_value(i64 %.sroa.4.015.i.i, !23992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23591)
    #dbg_value(i64 %.sroa.9.0.i.i, !23974, !DIExpression(), !23924)
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !24487 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !24487, !alias.scope !23977, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.gx, !23983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23586)
    #dbg_value(i64 %i.gx, !23992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23591)
    #dbg_value(ptr %.val.i.i, !23993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23925)
    #dbg_value(i64 poison, !23993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23925)
  %i.gy = sub nuw i64 %.sroa.4.015.i.i, %i.gx, !dbg !24488
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.gx), !23975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23926)
    #dbg_value(i64 %i.gy, !23975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23926)
  store i64 %.sroa.9.0.i.i, ptr %i.gw, align 8, !dbg !24489, !alias.scope !23977
  br label %bb.an, !dbg !24490

bb.ak:                                            ; preds = %._crit_edge.i32.i.i.i, %._crit_edge.i.i.i.i, %.loopexit63.i.i.i, %bb.q, %bb.p, %.preheader.i.i.i
    #dbg_value(ptr %1, !24274, !DIExpression(), !23930)
  store i8 1, ptr %i.a, align 1, !dbg !24491, !alias.scope !24278
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !24492
  %i.ha = load i8, ptr %i.gz, align 8, !dbg !24492, !range !3505, !alias.scope !24278, !noundef !1322
  %i.hb = trunc nuw i8 %i.ha to i1, !dbg !24492
  br i1 %i.hb, label %._crit_edge.i.i.i, label %bb.al, !dbg !24492

._crit_edge.i.i.i:                                ; preds = %bb.ak
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !24493, !alias.scope !24278
  %.phi.trans.insert13.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre14.i.i.i = load i64, ptr %.phi.trans.insert13.i.i.i, align 8, !dbg !24494, !alias.scope !24278
  br label %bb.am, !dbg !24492

bb.al:                                            ; preds = %bb.ak
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !24495
  %i.hd = load i64, ptr %i.hc, align 8, !dbg !24495, !alias.scope !24278, !noundef !1322 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !24496
  %i.hf = load i64, ptr %i.he, align 8, !dbg !24496, !alias.scope !24278, !noundef !1322 ; 2 uses
  %.not.i14.i.i = icmp eq i64 %i.hd, %i.hf, !dbg !24495
  br i1 %.not.i14.i.i, label %bb.ao, label %bb.am, !dbg !24495

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i.i
  %i.hg = phi i64 [ %.pre14.i.i.i, %._crit_edge.i.i.i ], [ %i.hd, %bb.al ], !dbg !24494
  %i.hh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hf, %bb.al ], !dbg !24493 ; 2 uses
    #dbg_value(ptr %.val.i.i, !24279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23935)
    #dbg_value(ptr %.val.i.i, !24282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23940)
    #dbg_value(i64 poison, !24279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23935)
    #dbg_value(i64 poison, !24282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23940)
    #dbg_value(i64 %i.hh, !24280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23935)
    #dbg_value(i64 %i.hh, !24283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23940)
    #dbg_value(i64 %i.hg, !24280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23935)
    #dbg_value(i64 %i.hg, !24283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23940)
    #dbg_value(ptr %.val.i.i, !24284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23941)
    #dbg_value(i64 poison, !24284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23941)
  %i.hi = sub nuw i64 %i.hg, %i.hh, !dbg !24497
  br label %bb.an, !dbg !24498

bb.an:                                            ; preds = %bb.am, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.hi, %bb.am ], [ %i.gy, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], !dbg !24499
  %.pn = phi i64 [ %i.hh, %bb.am ], [ %i.gx, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn, !dbg !24500
    #dbg_value(ptr %.sroa.0.1.i.i, !24287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24298)
    #dbg_value(ptr %1, !24294, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24298)
    #dbg_value(ptr %1, !24299, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24309)
    #dbg_value(i64 %.sroa.4.1.i.i, !24287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24298)
    #dbg_value(ptr %.sroa.0.1.i.i, !24295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24310)
    #dbg_value(i64 %.sroa.4.1.i.i, !24295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24310)
    #dbg_value(ptr %.sroa.0.1.i.i, !24302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24309)
    #dbg_value(i64 %.sroa.4.1.i.i, !24302, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24309)
    #dbg_value(ptr %.sroa.0.1.i.i, !24311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23948)
    #dbg_value(i64 %.sroa.4.1.i.i, !24311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23948)
    #dbg_value(ptr poison, !24314, !DIExpression(), !23948)
    #dbg_value(ptr %.sroa.0.1.i.i, !24319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23951)
    #dbg_value(i64 %.sroa.4.1.i.i, !24319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23951)
  tail call void @_RNvXsc_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i, i64 noundef %.sroa.4.1.i.i), !dbg !24501
  br label %bb.ap, !dbg !24502

bb.ao:                                            ; preds = %bb.a, %bb.al
    #dbg_value(ptr null, !24287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24298)
    #dbg_value(i64 poison, !24287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24298)
    #dbg_value(ptr %1, !24294, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24298)
    #dbg_value(ptr %1, !24299, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24309)
  store i8 -1, ptr %0, align 8, !dbg !24503
  br label %bb.ap, !dbg !24504

bb.ap:                                            ; preds = %bb.ao, %bb.an
  ret void, !dbg !24505
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1S_5ValueENCNvNtB1U_7filters5pairs0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24506 {
bb.a:
  %.sroa.7.i.i = alloca [6 x i8], align 2         ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !24708, !DIExpression(), !24711)
    #dbg_value(ptr %1, !4584, !DIExpression(), !24508)
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBO_5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !dbg !24862 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0, !dbg !24863 ; 11 uses
    #dbg_value(ptr %i.e, !24712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24723)
    #dbg_value(ptr poison, !24712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24723)
    #dbg_value(ptr %1, !24719, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24723)
    #dbg_value(ptr %1, !24724, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24731)
  %.not = icmp eq ptr %i.e, null, !dbg !24864
  br i1 %.not, label %bb.ap, label %bb.b, !dbg !24865

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !24719, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24723)
    #dbg_value(ptr %1, !24724, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24731)
  %i.f = extractvalue { ptr, ptr } %i.d, 1, !dbg !24863 ; 18 uses
    #dbg_value(ptr %i.f, !24712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24723)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
    #dbg_value(ptr %i.e, !24720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24732)
    #dbg_value(ptr %i.f, !24720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24732)
    #dbg_value(ptr %i.e, !24727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24731)
    #dbg_value(ptr %i.f, !24727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24733), !dbg !24866
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24734), !dbg !24866
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !24867
    #dbg_value(ptr poison, !24738, !DIExpression(), !24518)
    #dbg_value(ptr %i.e, !24739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24518)
    #dbg_value(ptr %i.f, !24739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24518)
    #dbg_declare(ptr poison, !24741, !DIExpression(), !24528)
    #dbg_declare(ptr poison, !24767, !DIExpression(), !24531)
    #dbg_value(ptr %i.e, !24736, !DIExpression(), !24532)
    #dbg_value(ptr %i.f, !24737, !DIExpression(), !24532)
    #dbg_value(ptr %i.f, !24775, !DIExpression(), !24535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24867, !noalias !24777
    #dbg_value(i64 8, !24778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24543)
    #dbg_value(i64 8, !24788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24551)
    #dbg_value(i64 8, !24805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24554)
    #dbg_value(i64 48, !24778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24543)
    #dbg_value(i64 48, !24788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24551)
    #dbg_value(i64 48, !24805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24554)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !24803, !DIExpression(), !24551)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !24809, !DIExpression(), !24554)
    #dbg_value(i8 0, !24810, !DIExpression(), !24554)
    #dbg_value(i64 8, !24812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24566)
    #dbg_value(i64 8, !24832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24569)
    #dbg_value(i64 48, !24812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24566)
    #dbg_value(i64 48, !24832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24569)
    #dbg_value(i1 false, !24816, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24566)
    #dbg_value(i64 48, !24817, !DIExpression(), !24570)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !24868, !noalias !24777
  %i.g = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #22, !dbg !24869, !noalias !24777 ; 9 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !24870
  br i1 %i.h, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !dbg !24871, !prof !3490

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26, !dbg !24872, !noalias !24777
  unreachable, !dbg !24872

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24873, !noalias !24777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24874, !noalias !24777
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24834), !dbg !24875
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24835), !dbg !24875
    #dbg_value(ptr %i.e, !3585, !DIExpression(), !24575)
    #dbg_value(i64 1, !3603, !DIExpression(), !24578)
    #dbg_value(i8 0, !3606, !DIExpression(), !24578)
    #dbg_value(i64 1, !3614, !DIExpression(), !24580)
    #dbg_value(i8 0, !3616, !DIExpression(), !24580)
  %i.i = load i8, ptr %i.e, align 16, !dbg !24876, !range !3385, !alias.scope !24836, !noundef !1322 ; 2 uses
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ], !dbg !24876

default.unreachable:                              ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  unreachable

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
    #dbg_value(ptr %i.e, !3590, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24581)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !24877
  %i.k = load i8, ptr %i.j, align 1, !dbg !24877, !range !3505, !alias.scope !24836, !noundef !1322
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !24878
  store i8 %i.k, ptr %i.l, align 1, !dbg !24878, !alias.scope !24834, !noalias !24777
  br label %bb.n, !dbg !24879

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
    #dbg_value(ptr %i.e, !3592, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24582)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !24880
  %i.n = load i64, ptr %i.m, align 8, !dbg !24880, !alias.scope !24836, !noundef !1322
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24881
  store i64 %i.n, ptr %i.o, align 8, !dbg !24881, !alias.scope !24834, !noalias !24777
  br label %bb.n, !dbg !24879

bb.f:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
    #dbg_value(ptr %i.e, !3594, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24583)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !24882
  %i.q = load i64, ptr %i.p, align 8, !dbg !24882, !alias.scope !24836, !noundef !1322
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24883
  store i64 %i.q, ptr %i.r, align 8, !dbg !24883, !alias.scope !24834, !noalias !24777
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!23934 = distinct !DILocation(line: 648, column: 63, scope: !23928, inlinedAt: !23929)
!23935 = distinct !DILocation(line: 0, scope: !23933, inlinedAt: !23934)
!23936 = distinct !DILexicalBlock(scope: !23937, file: !23986, line: 221, column: 13)
!23937 = distinct !DILexicalBlock(scope: !23938, file: !23986, line: 200, column: 9)
!23938 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs5_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !23989, file: !23986, line: 199, type: !23991, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !1322, retainedNodes: !24286)
!23939 = distinct !DILocation(line: 704, column: 22, scope: !23933, inlinedAt: !23934)
!23940 = distinct !DILocation(line: 0, scope: !23938, inlinedAt: !23939)
!23941 = distinct !DILocation(line: 0, scope: !23937, inlinedAt: !23939)
!23942 = distinct !DILexicalBlock(scope: !23943, file: !3570, line: 1165, column: 13)
!23943 = distinct !DISubprogram(name: "map<&str, tera::value::Value, &mut fn(&str) -> tera::value::Value>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE3mapNtNtCs5yXxDE1DkoT_4tera5value5ValueQNvYBI_INtNtB5_7convert4IntoBP_E4intoEBT_", scope: !762, file: !3570, line: 1160, type: !24290, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !24292, declaration: !24293, retainedNodes: !24296)
!23944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&str)", file: !1108, size: 128, align: 64, elements: !24305, templateParams: !1322, identifier: "29dee924b0cdef2c90c1bdd118010547")
!23945 = distinct !DISubprogram(name: "call_once<(&str), fn(&str) -> tera::value::Value>", linkageName: "_RNvXs2_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNvYReINtNtBb_7convert4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoINtB7_6FnOnceTBR_EE9call_onceB1i_", scope: !4084, file: !4081, line: 309, type: !24301, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !24307, retainedNodes: !24303)
!23946 = distinct !DISubprogram(name: "call_mut<fn(&str) -> tera::value::Value, (&str)>", linkageName: "_RNvYNvYReINtNtCsf3Ta7LF998c_4core7convert4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoINtNtNtBc_3ops8function5FnMutTB5_EE8call_mutBM_", scope: !24312, file: !4081, line: 166, type: !24313, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !24318, retainedNodes: !24315)
!23947 = distinct !DILocation(line: 310, column: 21, scope: !23945, inlinedAt: !24308)
!23948 = distinct !DILocation(line: 0, scope: !23946, inlinedAt: !23947)
!23949 = distinct !DISubprogram(name: "into<&str, tera::value::Value>", linkageName: "_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoBP_", scope: !4716, file: !4714, line: 779, type: !24321, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !24323, retainedNodes: !24322)
!23950 = distinct !DILocation(line: 166, column: 5, scope: !23946, inlinedAt: !23947)
!23951 = distinct !DILocation(line: 0, scope: !23949, inlinedAt: !23950)
!23952 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::Map<core::str::iter::Split<&str>, fn(&str) -> tera::value::Value>", baseType: !838, size: 64, align: 64, dwarfAddressSpace: 0)
!23953 = !{!250, !23952}
!23954 = !DISubroutineType(types: !23953)
!23955 = !DILocalVariable(name: "self", arg: 1, scope: !23569, file: !3924, line: 106, type: !23952)
!23956 = !{!23955}
!23957 = !{!4711, !4659, !4660}
!23958 = !DILocation(line: 0, scope: !23569)
!23959 = !{!23571}
!23960 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::Split<&str>", baseType: !837, size: 64, align: 64, dwarfAddressSpace: 0)
!23961 = !DILocalVariable(name: "self", arg: 1, scope: !23572, file: !4881, line: 511, type: !23960)
!23962 = !DINamespace(name: "{impl#61}", scope: !4612)
!23963 = !{!762, !23960}
!23964 = !DISubroutineType(types: !23963)
!23965 = !{!23961}
!23966 = !{!23576}
!23967 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::SplitInternal<&str>", baseType: !836, size: 64, align: 64, dwarfAddressSpace: 0)
!23968 = !DILocalVariable(name: "self", arg: 1, scope: !23580, file: !4881, line: 657, type: !23967)
!23969 = !{!762, !23967}
!23970 = !DISubroutineType(types: !23969)
!23971 = !DISubprogram(name: "next<&str>", linkageName: "_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalReE4nextCs5yXxDE1DkoT_4tera", scope: !836, file: !4881, line: 657, type: !23970, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4658)
!23972 = !DILocalVariable(name: "haystack", scope: !23579, file: !4881, line: 662, type: !85, align: 64)
!23973 = !DILocalVariable(name: "a", scope: !23578, file: !4881, line: 665, type: !1302, align: 64)
!23974 = !DILocalVariable(name: "b", scope: !23578, file: !4881, line: 665, type: !1302, align: 64)
!23975 = !DILocalVariable(name: "elt", scope: !23577, file: !4881, line: 666, type: !556, align: 64)
!23976 = !{!23968, !23972, !23973, !23974, !23975}
!23977 = !{!23576, !23571}
!23978 = !DIFile(filename: "library/core/src/str/mod.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "6ab1951b4847882473ed0a4d06a2515b")
!23979 = !DILocalVariable(name: "self", arg: 1, scope: !23584, file: !23978, line: 700, type: !85)
!23980 = !DINamespace(name: "{impl#0}", scope: !4611)
!23981 = !{!85, !85, !34}
!23982 = !DISubroutineType(types: !23981)
!23983 = !DILocalVariable(name: "i", scope: !23584, file: !23978, line: 700, type: !34, align: 64)
!23984 = !{!23979, !23983}
!23985 = !{!4947}
!23986 = !DIFile(filename: "library/core/src/str/traits.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "d8ae730ba1532c9b0c00bc889a42d36f")
!23987 = !DILocalVariable(name: "slice", arg: 2, scope: !23589, file: !23986, line: 199, type: !85)
!23988 = !DINamespace(name: "traits", scope: !4611)
!23989 = !DINamespace(name: "{impl#7}", scope: !23988)
!23990 = !{!556, !34, !556, !3445}
!23991 = !DISubroutineType(types: !23990)
!23992 = !DILocalVariable(name: "self", scope: !23589, file: !23986, line: 199, type: !34, align: 64)
!23993 = !DILocalVariable(name: "slice", scope: !23588, file: !23986, line: 200, type: !602, align: 64)
!23994 = !DILocalVariable(name: "new_len", scope: !23587, file: !23986, line: 221, type: !1302, align: 64)
!23995 = !{!23992, !23987, !23993, !23994}
!23996 = !{!23593}
!23997 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::StrSearcher", baseType: !835, size: 64, align: 64, dwarfAddressSpace: 0)
!23998 = !DILocalVariable(name: "self", arg: 1, scope: !23601, file: !4931, line: 1205, type: !23997)
!23999 = !DINamespace(name: "{impl#33}", scope: !4621)
!24000 = !{!894, !23997}
!24001 = !DISubroutineType(types: !24000)
!24002 = !DILocalVariable(name: "a", scope: !23600, file: !4931, line: 1209, type: !1302, align: 64)
!24003 = !DILocalVariable(name: "b", scope: !23600, file: !4931, line: 1209, type: !1302, align: 64)
!24004 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::ByteNeedle", baseType: !829, size: 64, align: 64, dwarfAddressSpace: 0)
!24005 = !DILocalVariable(name: "searcher", scope: !23599, file: !4931, line: 1214, type: !24004, align: 64)
!24006 = !DILocalVariable(name: "bytes", scope: !23598, file: !4931, line: 1215, type: !597, align: 64)
!24007 = !DILocalVariable(name: "i", scope: !23597, file: !4931, line: 1220, type: !1302, align: 64)
!24008 = !DILocalVariable(name: "pos", scope: !23596, file: !4931, line: 1221, type: !1302, align: 64)
!24009 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::TwoWaySearcher", baseType: !827, size: 64, align: 64, dwarfAddressSpace: 0)
!24010 = !DILocalVariable(name: "searcher", scope: !23595, file: !4931, line: 1231, type: !24009, align: 64)
!24011 = !DILocalVariable(name: "is_long", scope: !23594, file: !4931, line: 1232, type: !1364, align: 8)
!24012 = !{!23998, !24002, !24003, !24005, !24006, !24007, !24008, !24010, !24011}
!24013 = !{!23593, !23576, !23571}
!24014 = !{!23608, !23997}
!24015 = !DISubroutineType(types: !24014)
!24016 = !{!23607}
!24017 = !DIDerivedType(tag: DW_TAG_member, name: "Match", scope: !23607, file: !1108, baseType: !23606, size: 192, align: 64, extraData: i64 0)
!24018 = !DIDerivedType(tag: DW_TAG_member, name: "Reject", scope: !23607, file: !1108, baseType: !23605, size: 192, align: 64, extraData: i64 1)
!24019 = !DIDerivedType(tag: DW_TAG_member, name: "Done", scope: !23607, file: !1108, baseType: !23604, size: 192, align: 64, extraData: i64 2)
!24020 = !{!24017, !24018, !24019}
!24021 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23605, file: !1108, baseType: !1302, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!24022 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !23605, file: !1108, baseType: !1302, size: 64, align: 64, offset: 128, flags: DIFlagPublic)
!24023 = !{!24021, !24022}
!24024 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23606, file: !1108, baseType: !1302, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!24025 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !23606, file: !1108, baseType: !1302, size: 64, align: 64, offset: 128, flags: DIFlagPublic)
!24026 = !{!24024, !24025}
!24027 = !DIDerivedType(tag: DW_TAG_member, scope: !23608, file: !1108, baseType: !1212, size: 64, align: 64, flags: DIFlagArtificial)
!24028 = !DILocalVariable(name: "self", arg: 1, scope: !23621, file: !4931, line: 1138, type: !23997)
!24029 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::EmptyNeedle", baseType: !831, size: 64, align: 64, dwarfAddressSpace: 0)
!24030 = !DILocalVariable(name: "searcher", scope: !23622, file: !4931, line: 1140, type: !24029, align: 64)
!24031 = !DILocalVariable(name: "is_match", scope: !23620, file: !4931, line: 1145, type: !1364, align: 8)
!24032 = !DILocalVariable(name: "pos", scope: !23619, file: !4931, line: 1147, type: !1302, align: 64)
!24033 = !DILocalVariable(name: "ch", scope: !23618, file: !4931, line: 1154, type: !4836, align: 32)
!24034 = !DILocalVariable(name: "searcher", scope: !23617, file: !4931, line: 1160, type: !24004, align: 64)
!24035 = !DILocalVariable(name: "bytes", scope: !23616, file: !4931, line: 1161, type: !597, align: 64)
!24036 = !DILocalVariable(name: "pos", scope: !23615, file: !4931, line: 1162, type: !1302, align: 64)
!24037 = !DILocalVariable(name: "end", scope: !23614, file: !4931, line: 1172, type: !1302, align: 64)
!24038 = !DILocalVariable(name: "searcher", scope: !23613, file: !4931, line: 1177, type: !24009, align: 64)
!24039 = !DILocalVariable(name: "is_long", scope: !23612, file: !4931, line: 1186, type: !1364, align: 8)
!24040 = !DILocalVariable(name: "a", scope: !23611, file: !4931, line: 1192, type: !1302, align: 64)
!24041 = !DILocalVariable(name: "b", scope: !23611, file: !4931, line: 1192, type: !1302, align: 64)
!24042 = !DILocalVariable(name: "b", scope: !23610, file: !4931, line: 1194, type: !1302, align: 64)
!24043 = !DILocalVariable(name: "otherwise", scope: !23609, file: !4931, line: 1198, type: !23608, align: 64)
!24044 = !{!24028, !24030, !24031, !24032, !24033, !24034, !24035, !24036, !24037, !24038, !24039, !24040, !24041, !24042, !24043}
!24045 = !{!23625}
!24046 = !DILocalVariable(name: "start", scope: !23631, file: !23986, line: 525, type: !1302, align: 64)
!24047 = !DINamespace(name: "{impl#11}", scope: !23988)
!24048 = !{!85, !23628, !85, !3445}
!24049 = !DISubroutineType(types: !24048)
!24050 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !23628, file: !1108, baseType: !1302, size: 64, align: 64, flags: DIFlagPublic)
!24051 = !{!24050}
!24052 = !DILocalVariable(name: "self", arg: 1, scope: !23630, file: !23986, line: 524, type: !23628)
!24053 = !DILocalVariable(name: "slice", arg: 2, scope: !23630, file: !23986, line: 524, type: !85)
!24054 = !DILocalVariable(name: "end", scope: !23631, file: !23986, line: 525, type: !1302, align: 64)
!24055 = !DILocalVariable(name: "s", scope: !23629, file: !23986, line: 527, type: !85, align: 64)
!24056 = !{!24052, !24053, !24046, !24054, !24055}
!24057 = !DINamespace(name: "{impl#4}", scope: !23988)
!24058 = !{!85, !85, !23628, !3445}
!24059 = !DISubroutineType(types: !24058)
!24060 = !DILocalVariable(name: "self", arg: 1, scope: !23632, file: !23986, line: 62, type: !85)
!24061 = !DILocalVariable(name: "index", arg: 2, scope: !23632, file: !23986, line: 62, type: !23628)
!24062 = !{!24060, !24061}
!24063 = !DITemplateTypeParameter(name: "I", type: !23628)
!24064 = !{!24063}
!24065 = !DILocalVariable(name: "self", arg: 1, scope: !23638, file: !23986, line: 492, type: !23628)
!24066 = !{!762, !23628, !85}
!24067 = !DISubroutineType(types: !24066)
!24068 = !DILocalVariable(name: "slice", arg: 2, scope: !23638, file: !23986, line: 492, type: !85)
!24069 = !{!24065, !24068}
!24070 = !DILocalVariable(name: "self", arg: 1, scope: !23641, file: !23978, line: 375, type: !85)
!24071 = !{!1364, !85, !1302}
!24072 = !DISubroutineType(types: !24071)
!24073 = !DILocalVariable(name: "index", arg: 2, scope: !23641, file: !23978, line: 375, type: !1302)
!24074 = !{!24070, !24073}
!24075 = !DILocalVariable(name: "slice", arg: 2, scope: !23645, file: !23986, line: 512, type: !85)
!24076 = !{!556, !23628, !556}
!24077 = !DISubroutineType(types: !24076)
!24078 = !DILocalVariable(name: "self", scope: !23645, file: !23986, line: 512, type: !23628, align: 64)
!24079 = !DILocalVariable(name: "len", scope: !23644, file: !23986, line: 513, type: !1302, align: 64)
!24080 = !{!24078, !24075, !24079}
!24081 = !DILocalVariable(name: "slice", arg: 2, scope: !23650, file: !23986, line: 199, type: !85)
!24082 = !DILocalVariable(name: "self", scope: !23650, file: !23986, line: 199, type: !34, align: 64)
!24083 = !DILocalVariable(name: "slice", scope: !23649, file: !23986, line: 200, type: !602, align: 64)
!24084 = !DILocalVariable(name: "new_len", scope: !23648, file: !23986, line: 221, type: !1302, align: 64)
!24085 = !{!24082, !24081, !24083, !24084}
!24086 = !DILocalVariable(name: "count", arg: 2, scope: !23653, file: !3938, line: 838, type: !1302)
!24087 = !{!1340, !1340, !1302, !3445}
!24088 = !DISubroutineType(types: !24087)
!24089 = !DILocalVariable(name: "self", arg: 1, scope: !23653, file: !3938, line: 838, type: !1340)
!24090 = !{!24089, !24086}
!24091 = !{!23657}
!24092 = !{!23660, !23625, !23658, !23593, !23576, !23571}
!24093 = !DIFile(filename: "library/core/src/num/mod.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "ecb2f290941f286067e076e0d471735a")
!24094 = !DILocalVariable(name: "self", arg: 1, scope: !23661, file: !24093, line: 1229, type: !1111)
!24095 = !DINamespace(name: "{impl#6}", scope: !1330)
!24096 = !{!1364, !1111}
!24097 = !DISubroutineType(types: !24096)
!24098 = !{!24094}
!24099 = !DILocalVariable(name: "self", arg: 1, scope: !23667, file: !4881, line: 39, type: !4883)
!24100 = !{!24099}
!24101 = !{!23684, !23660, !23625, !23658, !23593, !23576, !23571}
!24103 = !DILocalVariable(name: "self", arg: 1, scope: !23727, file: !3570, line: 1160, type: !871)
!24104 = !{!885, !871, !23725}
!24105 = !DISubroutineType(types: !24104)
!24106 = !DINamespace(name: "next", scope: !4882)
!24107 = !DITemplateTypeParameter(name: "U", type: !4836)
!24108 = !DITemplateTypeParameter(name: "F", type: !23725)
!24109 = !{!4865, !24107, !24108}
!24110 = !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs5yXxDE1DkoT_4tera", scope: !871, file: !3570, line: 1160, type: !24105, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !24109)
!24111 = !DILocalVariable(name: "f", scope: !23727, file: !3570, line: 1160, type: !23725, align: 8)
!24112 = !DILocalVariable(name: "x", scope: !23726, file: !3570, line: 1165, type: !3449, align: 32)
!24113 = !{!24103, !24111, !24112}
!24115 = !DILocalVariable(name: "ch", arg: 2, scope: !23731, file: !4881, line: 42, type: !3449)
!24116 = !{!4836, !23725, !3449}
!24117 = !DISubroutineType(types: !24116)
!24118 = !{!24115}
!24119 = !DILocalVariable(name: "i", arg: 1, scope: !23734, file: !5003, line: 243, type: !3449)
!24120 = !{!4836, !3449}
!24121 = !DISubroutineType(types: !24120)
!24122 = !{!24119}
!24123 = !DIFile(filename: "library/core/src/char/convert.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "06f18dc36f52feefd195ff986dbdcce9")
!24124 = !DILocalVariable(name: "i", arg: 1, scope: !23737, file: !24123, line: 26, type: !3449)
!24125 = !DINamespace(name: "convert", scope: !5004)
!24126 = !{!4836, !3449, !3445}
!24127 = !DISubroutineType(types: !24126)
!24128 = !{!24124}
!24129 = !DILocalVariable(name: "self", arg: 1, scope: !23741, file: !5003, line: 665, type: !4836)
!24130 = !{!24129}
!24131 = !DILocalVariable(name: "code", arg: 1, scope: !23744, file: !5003, line: 2473, type: !3449)
!24132 = !{!24131}
!24133 = !{!23625, !23593, !23576, !23571}
!24134 = !{!23750}
!24135 = !{!23660, !23750, !23658, !23593, !23576, !23571}
!24136 = !{!23750, !23593, !23576, !23571}
!24137 = !{!23684, !23660, !23750, !23658, !23593, !23576, !23571}
!24146 = !DILocalVariable(name: "self", arg: 1, scope: !23753, file: !4944, line: 18, type: !597)
!24147 = !{!597, !597, !23628, !3445}
!24148 = !DISubroutineType(types: !24147)
!24149 = !DILocalVariable(name: "index", scope: !23753, file: !4944, line: 18, type: !23628, align: 64)
!24150 = !{!24146, !24149}
!24151 = !{!1323, !24063}
!24152 = !DILocalVariable(name: "slice", arg: 2, scope: !23757, file: !4944, line: 543, type: !597)
!24153 = !DINamespace(name: "{impl#7}", scope: !4945)
!24154 = !{!597, !23628, !597, !3445}
!24155 = !DISubroutineType(types: !24154)
!24156 = !DILocalVariable(name: "self", scope: !23757, file: !4944, line: 543, type: !23628, align: 64)
!24157 = !DILocalVariable(name: "new_len", scope: !23756, file: !4944, line: 549, type: !1302, align: 64)
!24158 = !{!24156, !24152, !24157}
!24159 = !DILocalVariable(name: "ptr", arg: 1, scope: !23760, file: !4944, line: 84, type: !597)
!24160 = !DILocalVariable(name: "offset", arg: 2, scope: !23760, file: !4944, line: 85, type: !1302)
!24161 = !DILocalVariable(name: "len", arg: 3, scope: !23760, file: !4944, line: 86, type: !1302)
!24162 = !{!24159, !24160, !24161}
!24163 = !DILocalVariable(name: "self", arg: 1, scope: !23765, file: !3740, line: 2224, type: !3741)
!24164 = !DILocalVariable(name: "other", arg: 2, scope: !23765, file: !3740, line: 2224, type: !3741)
!24165 = !{!24163, !24164}
!24166 = !DILocalVariable(name: "self", arg: 1, scope: !23766, file: !3747, line: 1141, type: !3750)
!24167 = !{!24166}
!24168 = !DINamespace(name: "{impl#7}", scope: !3748)
!24169 = !DILocalVariable(name: "self", arg: 1, scope: !23767, file: !3747, line: 1315, type: !3750)
!24170 = !{!24169}
!24171 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "97bbf16646f958a86a45b6ba280b14d9")
!24172 = !DINamespace(name: "{impl#1}", scope: !5011)
!24173 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::rev::Rev<core::ops::range::Range<usize>>", baseType: !23768, size: 64, align: 64, dwarfAddressSpace: 0)
!24174 = !{!624, !24173}
!24175 = !DISubroutineType(types: !24174)
!24176 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !23768, file: !1108, baseType: !34, size: 128, align: 64, flags: DIFlagPrivate)
!24177 = !{!24176}
!24178 = !DITemplateTypeParameter(name: "T", type: !34)
!24179 = !{!24178}
!24180 = !DILocalVariable(name: "self", arg: 1, scope: !23769, file: !24171, line: 52, type: !24173)
!24181 = !{!24180}
!24182 = !DILexicalBlockFile(scope: !23783, file: !4931, discriminator: 2)
!24183 = !{!894, !24009, !597, !597, !1364}
!24184 = !DISubroutineType(types: !24183)
!24185 = !DITemplateTypeParameter(name: "S", type: !23771)
!24186 = !{!24185}
!24187 = !DISubprogram(name: "next<core::str::pattern::MatchOnly>", linkageName: "_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yXxDE1DkoT_4tera", scope: !827, file: !4931, line: 1541, type: !24184, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !24186)
!24188 = !{!23770}
!24189 = !DILocalVariable(name: "self", arg: 1, scope: !23777, file: !4931, line: 1541, type: !24009)
!24190 = !DILocalVariable(name: "haystack", arg: 2, scope: !23777, file: !4931, line: 1541, type: !597)
!24191 = !DILocalVariable(name: "needle", arg: 3, scope: !23777, file: !4931, line: 1541, type: !597)
!24192 = !DILocalVariable(name: "long_period", arg: 4, scope: !23777, file: !4931, line: 1541, type: !1364)
!24193 = !DILocalVariable(name: "old_pos", scope: !23778, file: !4931, line: 1546, type: !1302, align: 64)
!24194 = !DILocalVariable(name: "needle_last", scope: !23779, file: !4931, line: 1547, type: !1302, align: 64)
!24195 = !DILocalVariable(name: "tail_byte", scope: !23780, file: !4931, line: 1552, type: !1111, align: 8)
!24196 = !DILocalVariable(name: "b", scope: !23776, file: !4931, line: 1553, type: !1111, align: 8)
!24197 = !DILocalVariable(name: "start", scope: !23781, file: !4931, line: 1574, type: !1302, align: 64)
!24198 = !DILocalVariable(name: "iter", scope: !23775, file: !4931, line: 1576, type: !34, align: 64)
!24199 = !DILocalVariable(name: "i", scope: !23774, file: !4931, line: 1576, type: !1302, align: 64)
!24200 = !DILocalVariable(name: "start", scope: !23782, file: !4931, line: 1593, type: !1302, align: 64)
!24201 = !DILocalVariable(name: "iter", scope: !23783, file: !4931, line: 1594, type: !23768, align: 64)
!24202 = !DILocalVariable(name: "i", scope: !23773, file: !4931, line: 1594, type: !1302, align: 64)
!24203 = !DILocalVariable(name: "match_pos", scope: !23772, file: !4931, line: 1611, type: !1302, align: 64)
!24204 = !{!24189, !24190, !24191, !24192, !24193, !24194, !24195, !24196, !24197, !24198, !24199, !24200, !24201, !24202, !24203}
!24205 = !DILocalVariable(name: "self", arg: 1, scope: !23803, file: !3747, line: 1099, type: !3750)
!24206 = !DILocalVariable(name: "old", scope: !23802, file: !3747, line: 1101, type: !1302, align: 64)
!24207 = !{!24205, !24206}
!24208 = !DILocalVariable(name: "self", arg: 1, scope: !23804, file: !3747, line: 1184, type: !3750)
!24209 = !{!24208}
!24210 = !DILexicalBlockFile(scope: !23775, file: !4931, discriminator: 2)
!24211 = !DILocalVariable(name: "self", arg: 1, scope: !23819, file: !4931, line: 1531, type: !24009)
!24212 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::str::pattern::TwoWaySearcher", baseType: !827, size: 64, align: 64, dwarfAddressSpace: 0)
!24213 = !{!1364, !24212, !1111}
!24214 = !DISubroutineType(types: !24213)
!24215 = !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !827, file: !4931, line: 1531, type: !24214, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1322)
!24216 = !DILocalVariable(name: "byte", arg: 2, scope: !23819, file: !4931, line: 1531, type: !1111)
!24217 = !{!24211, !24216}
!24218 = !DILocalVariable(name: "self", arg: 1, scope: !23824, file: !3442, line: 574, type: !597)
!24219 = !{!863, !597, !1302}
!24220 = !DISubroutineType(types: !24219)
!24221 = !DILocalVariable(name: "index", arg: 2, scope: !23824, file: !3442, line: 574, type: !1302)
!24222 = !{!24218, !24221}
!24223 = !DITemplateTypeParameter(name: "I", type: !1302)
!24224 = !{!1323, !24223}
!24225 = !DILocalVariable(name: "slice", arg: 2, scope: !23829, file: !4944, line: 183, type: !597)
!24226 = !DINamespace(name: "{impl#2}", scope: !4945)
!24227 = !{!863, !1302, !597}
!24228 = !DISubroutineType(types: !24227)
!24229 = !DILocalVariable(name: "self", arg: 1, scope: !23829, file: !4944, line: 183, type: !1302)
!24230 = !{!24229, !24225}
!24231 = !DILocalVariable(name: "self", arg: 1, scope: !23834, file: !3442, line: 642, type: !597)
!24232 = !{!3634, !597, !1302, !3445}
!24233 = !DISubroutineType(types: !24232)
!24234 = !DILocalVariable(name: "index", arg: 2, scope: !23834, file: !3442, line: 642, type: !1302)
!24235 = !{!24231, !24234}
!24236 = !DILocalVariable(name: "slice", arg: 2, scope: !23839, file: !4944, line: 205, type: !597)
!24237 = !{!1340, !1302, !602, !3445}
!24238 = !DISubroutineType(types: !24237)
!24239 = !DILocalVariable(name: "self", arg: 1, scope: !23839, file: !4944, line: 205, type: !1302)
!24240 = !{!24239, !24236}
!24241 = !DILexicalBlockFile(scope: !23834, file: !3442, discriminator: 2)
!24242 = !DILocalVariable(name: "n", scope: !23852, file: !3747, line: 263, type: !1302, align: 64)
!24243 = !DILocalVariable(name: "start", arg: 1, scope: !23852, file: !3747, line: 263, type: !1302)
!24244 = !{!24243, !24242}
!24245 = !DILocalVariable(name: "rhs", scope: !23857, file: !3704, line: 1031, type: !1302, align: 64)
!24246 = !DILocalVariable(name: "self", arg: 1, scope: !23857, file: !3704, line: 1031, type: !1302)
!24247 = !{!24246, !24245}
!24248 = !DILocalVariable(name: "n", scope: !23862, file: !3747, line: 269, type: !1302, align: 64)
!24249 = !DILocalVariable(name: "start", arg: 1, scope: !23862, file: !3747, line: 269, type: !1302)
!24250 = !{!24249, !24248}
!24251 = !DILocalVariable(name: "rhs", scope: !23867, file: !3704, line: 1210, type: !1302, align: 64)
!24252 = !DILocalVariable(name: "self", arg: 1, scope: !23867, file: !3704, line: 1210, type: !1302)
!24253 = !{!24252, !24251}
!24254 = !{!23658, !23593, !23576, !23571}
!24255 = !{!23883}
!24256 = !{!23890}
!24257 = !{!23891}
!24258 = !{!23892}
!24259 = !{!23890, !23593, !23576, !23571}
!24260 = !DILexicalBlockFile(scope: !23779, file: !4915, discriminator: 0)
!24261 = !DILocalVariable(name: "v1", arg: 1, scope: !23895, file: !3740, line: 1773, type: !1302)
!24262 = !DILocalVariable(name: "v2", arg: 2, scope: !23895, file: !3740, line: 1773, type: !1302)
!24263 = !{!24261, !24262}
!24264 = !DILocalVariable(name: "self", arg: 1, scope: !23898, file: !3740, line: 2324, type: !1302)
!24265 = !DILocalVariable(name: "other", arg: 2, scope: !23898, file: !3740, line: 2324, type: !1302)
!24266 = !{!24264, !24265}
!24267 = !DILexicalBlockFile(scope: !23780, file: !4915, discriminator: 0)
!24268 = !{!23909, !23890, !23891, !23892, !23658, !23593, !23576, !23571}
!24269 = !{!23911}
!24270 = !{!23912}
!24271 = !{!23913}
!24272 = !{!23911, !23593, !23576, !23571}
!24273 = !{!23923, !23911, !23912, !23913, !23658, !23593, !23576, !23571}
!24274 = !DILocalVariable(name: "self", arg: 1, scope: !23928, file: !4881, line: 642, type: !23967)
!24275 = !DISubprogram(name: "get_end<&str>", linkageName: "_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalReE7get_endCs5yXxDE1DkoT_4tera", scope: !836, file: !4881, line: 642, type: !23970, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4658)
!24276 = !DILocalVariable(name: "string", scope: !23927, file: !4881, line: 648, type: !556, align: 64)
!24277 = !{!24274, !24276}
!24278 = !{!23932, !23576, !23571}
!24279 = !DILocalVariable(name: "self", arg: 1, scope: !23933, file: !23978, line: 700, type: !85)
!24280 = !DILocalVariable(name: "i", scope: !23933, file: !23978, line: 700, type: !34, align: 64)
!24281 = !{!24279, !24280}
!24282 = !DILocalVariable(name: "slice", arg: 2, scope: !23938, file: !23986, line: 199, type: !85)
!24283 = !DILocalVariable(name: "self", scope: !23938, file: !23986, line: 199, type: !34, align: 64)
!24284 = !DILocalVariable(name: "slice", scope: !23937, file: !23986, line: 200, type: !602, align: 64)
!24285 = !DILocalVariable(name: "new_len", scope: !23936, file: !23986, line: 221, type: !1302, align: 64)
!24286 = !{!24283, !24282, !24284, !24285}
!24287 = !DILocalVariable(name: "self", arg: 1, scope: !23943, file: !3570, line: 1160, type: !762)
!24288 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut fn(&str) -> tera::value::Value", baseType: !4608, size: 64, align: 64, dwarfAddressSpace: 0)
!24289 = !{!250, !762, !24288}
!24290 = !DISubroutineType(types: !24289)
!24291 = !DITemplateTypeParameter(name: "F", type: !24288)
!24292 = !{!3454, !4712, !24291}
!24293 = !DISubprogram(name: "map<&str, tera::value::Value, &mut fn(&str) -> tera::value::Value>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE3mapNtNtCs5yXxDE1DkoT_4tera5value5ValueQNvYBI_INtNtB5_7convert4IntoBP_E4intoEBT_", scope: !762, file: !3570, line: 1160, type: !24290, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !24292)
!24294 = !DILocalVariable(name: "f", arg: 2, scope: !23943, file: !3570, line: 1160, type: !24288)
!24295 = !DILocalVariable(name: "x", scope: !23942, file: !3570, line: 1165, type: !85, align: 64)
!24296 = !{!24287, !24294, !24295}
!24297 = !DILocation(line: 107, column: 26, scope: !23569)
!24298 = !DILocation(line: 0, scope: !23943, inlinedAt: !24297)
!24299 = !DILocalVariable(name: "self", arg: 1, scope: !23945, file: !4081, line: 309, type: !24288)
!24300 = !{!191, !24288, !85}
!24301 = !DISubroutineType(types: !24300)
!24302 = !DILocalVariable(name: "args", arg: 2, scope: !23945, file: !4081, line: 309, type: !23944)
!24303 = !{!24299, !24302}
!24304 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23944, file: !1108, baseType: !85, size: 128, align: 64)
!24305 = !{!24304}
!24306 = !DITemplateTypeParameter(name: "A", type: !23944)
!24307 = !{!24306, !4660}
!24308 = !DILocation(line: 1165, column: 29, scope: !23942, inlinedAt: !24297)
!24309 = !DILocation(line: 0, scope: !23945, inlinedAt: !24308)
!24310 = !DILocation(line: 0, scope: !23942, inlinedAt: !24297)
!24311 = !DILocalVariable(arg: 2, scope: !23946, file: !4081, line: 166, type: !23944)
!24312 = !DINamespace(name: "FnMut", scope: !4082)
!24313 = !DISubroutineType(cc: DW_CC_nocall, types: !24300)
!24314 = !DILocalVariable(arg: 1, scope: !23946, file: !4081, line: 166, type: !24288)
!24315 = !{!24314, !24311}
!24316 = !DITemplateTypeParameter(name: "Self", type: !4608)
!24317 = !DITemplateTypeParameter(name: "Args", type: !23944)
!24318 = !{!24316, !24317}
!24319 = !DILocalVariable(name: "self", arg: 1, scope: !23949, file: !4714, line: 779, type: !85)
!24320 = !{!191, !85, !3445}
!24321 = !DISubroutineType(cc: DW_CC_nocall, types: !24320)
!24322 = !{!24319}
!24323 = !{!3454, !4712}
!24324 = !DILocation(line: 107, column: 19, scope: !23569)
!24325 = !DILocation(line: 512, column: 24, scope: !23572, inlinedAt: !23573)
!24326 = !DILocation(line: 658, column: 12, scope: !23580, inlinedAt: !23581)
!24327 = !DILocation(line: 662, column: 37, scope: !23580, inlinedAt: !23581)
!24328 = !DILocation(line: 663, column: 28, scope: !23579, inlinedAt: !23581)
!24329 = !DILocation(line: 1206, column: 15, scope: !23601, inlinedAt: !23602)
!24330 = !DILocation(line: 1206, column: 9, scope: !23601, inlinedAt: !23602)
!24331 = !DILocation(line: 1141, column: 20, scope: !23622, inlinedAt: !23623)
!24332 = !DILocation(line: 1208, column: 28, scope: !23601, inlinedAt: !23602)
!24333 = !DILocation(line: 1145, column: 32, scope: !23622, inlinedAt: !23623)
!24334 = !DILocation(line: 380, column: 12, scope: !23641, inlinedAt: !23642)
!24335 = !DILocation(line: 384, column: 12, scope: !23641, inlinedAt: !23642)
!24336 = !DILocation(line: 394, column: 13, scope: !23641, inlinedAt: !23642)
!24337 = !DILocation(line: 493, column: 12, scope: !23638, inlinedAt: !23639)
!24338 = !DILocation(line: 396, column: 13, scope: !23641, inlinedAt: !23642)
!24339 = !DILocation(line: 1231, column: 9, scope: !23661, inlinedAt: !23662)
!24340 = !DILocation(line: 872, column: 18, scope: !23653, inlinedAt: !23654)
!24341 = !DILocation(line: 1663, column: 9, scope: !888, inlinedAt: !23680)
!24342 = !DILocation(line: 180, column: 28, scope: !865, inlinedAt: !23674)
!24343 = !DILocation(line: 37, column: 13, scope: !875, inlinedAt: !23670)
!24344 = !DILocation(line: 38, column: 8, scope: !876, inlinedAt: !23670)
!24345 = !DILocation(line: 627, column: 28, scope: !887, inlinedAt: !23676)
end_hunk_2
