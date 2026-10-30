Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.04?download=true
inline.NumInlined: 1305
inline.NumDeleted: 669
begin_hunk_0_@_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1B_7sources4once4OncejEINtNtB1z_3map3MapINtNtNtB1D_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE9from_iterB3O_:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23350
  store ptr inttoptr (i64 8 to ptr), ptr %i.cz, align 8, !dbg !23350
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23350
  store i64 0, ptr %i.da, align 8, !dbg !23350
  br label %bb.m, !dbg !23351

bb.m:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1j_7sources4once4OncejEINtNtB1h_3map3MapINtNtNtB1l_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE11spec_extendB3w_.exit, %.loopexit30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23351
  ret void, !dbg !23352

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OncejEINtNtB6_3map3MapINtNtNtBa_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2o_.exit.i.i
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !4969, !DIExpression(), !22806)
    #dbg_value(ptr %i.c, !4975, !DIExpression(), !22808)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit unwind label %bb.n, !dbg !23353

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1j_7sources4once4OncejEINtNtB1h_3map3MapINtNtNtB1l_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE11spec_extendB3w_.exit: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs5yXxDE1DkoT_4tera.exit.thread.i.i.i, %bb.j, %.noexc20, %.preheader.i.i.i.i.i.i.i.i.i.i, %bb.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncejEjNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs5yXxDE1DkoT_4tera.exit.thread.i.us40.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCs5yXxDE1DkoT_4tera.exit.us.i.i, %.split.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !23355
  br label %bb.m, !dbg !23351

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !23356
  unreachable, !dbg !23356

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp72, !dbg !23356
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23358 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !23433, !DIExpression(), !23439)
    #dbg_declare(ptr %1, !23434, !DIExpression(), !23440)
    #dbg_declare(ptr poison, !23441, !DIExpression(), !23450)
    #dbg_declare(ptr poison, !23461, !DIExpression(), !23471)
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5yXxDE1DkoT_4tera5utils4SpanE8as_sliceB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d, !dbg !23542 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0, !dbg !23543
  %i.d = extractvalue { ptr, i64 } %i.b, 1, !dbg !23543 ; 5 uses
    #dbg_value(ptr %0, !23472, !DIExpression(), !23369)
    #dbg_value(ptr %0, !23478, !DIExpression(), !23374)
    #dbg_value(ptr %0, !23484, !DIExpression(), !23377)
    #dbg_value(ptr %0, !23489, !DIExpression(), !23380)
    #dbg_value(ptr %i.c, !23476, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23369)
    #dbg_value(ptr %i.c, !23480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23374)
    #dbg_value(i64 %i.d, !23476, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23369)
    #dbg_value(i64 %i.d, !23480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23374)
    #dbg_value(i64 %i.d, !23481, !DIExpression(), !23381)
    #dbg_value(i64 %i.d, !23494, !DIExpression(), !23384)
    #dbg_value(ptr %0, !23500, !DIExpression(), !23387)
    #dbg_value(i64 %i.d, !23504, !DIExpression(), !23387)
    #dbg_value(i64 %i.d, !23506, !DIExpression(), !23390)
    #dbg_value(i64 %i.d, !23513, !DIExpression(), !23393)
    #dbg_value(i64 %i.d, !23518, !DIExpression(), !23396)
    #dbg_value(ptr %0, !23510, !DIExpression(), !23397)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23544 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !23544, !alias.scope !23523, !noundef !1322 ; 5 uses
    #dbg_value(i64 %i.f, !23511, !DIExpression(), !23390)
    #dbg_value(i64 %i.f, !23515, !DIExpression(), !23393)
    #dbg_value(i64 %i.f, !23520, !DIExpression(), !23396)
    #dbg_value(i64 %i.f, !23524, !DIExpression(), !23404)
    #dbg_value(ptr %0, !23514, !DIExpression(), !23393)
    #dbg_value(ptr %0, !23519, !DIExpression(), !23396)
    #dbg_value(ptr %0, !23527, !DIExpression(), !23407)
    #dbg_value(i64 8, !23516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23393)
    #dbg_value(i64 8, !23521, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23396)
    #dbg_value(i64 48, !23516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23393)
    #dbg_value(i64 48, !23521, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23396)
    #dbg_value(i64 48, !23528, !DIExpression(), !23407)
  %i.g = load i64, ptr %0, align 8, !dbg !23545, !range !3717, !alias.scope !23523, !noundef !1322
    #dbg_value(i64 %i.g, !23525, !DIExpression(), !23404)
  %i.h = sub i64 %i.g, %i.f, !dbg !23546
  %i.i = icmp ugt i64 %i.d, %i.h, !dbg !23547
  br i1 %i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i, !dbg !23548, !prof !3490

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 48)
          to label %.noexc unwind label %bb.d, !dbg !23549

.noexc:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !dbg !23550, !alias.scope !23530, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.j, !23482, !DIExpression(), !23408)
    #dbg_value(i64 %i.j, !23531, !DIExpression(), !23411)
  %i.k = icmp ult i64 %i.j, 192153584101141163, !dbg !23551
  tail call void @llvm.assume(i1 %i.k), !dbg !23552
  br label %bb.c, !dbg !23553

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i: ; preds = %bb.b
    #dbg_value(i64 %i.f, !23482, !DIExpression(), !23408)
    #dbg_value(i64 %i.f, !23531, !DIExpression(), !23411)
  %i.l = icmp ult i64 %i.f, 192153584101141163, !dbg !23551
  tail call void @llvm.assume(i1 %i.l), !dbg !23552
  %.not.i = icmp eq i64 %i.d, 0, !dbg !23553
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1j_.exit, label %bb.c, !dbg !23553

bb.c:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i ]
    #dbg_value(ptr %i.c, !23497, !DIExpression(), !23384)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23554
  %i.o = load ptr, ptr %i.n, align 8, !dbg !23554, !alias.scope !23530, !nonnull !1322, !noundef !1322
    #dbg_value(ptr %i.o, !23532, !DIExpression(), !23411)
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.m, !dbg !23555
    #dbg_value(ptr %i.p, !23498, !DIExpression(), !23384)
  %i.q = mul nuw nsw i64 %i.d, 48, !dbg !23556
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false), !dbg !23556
  %.pre.i = load i64, ptr %i.e, align 8, !dbg !23557, !alias.scope !23530
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1j_.exit, !dbg !23558

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1j_.exit: ; preds = %bb.c, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.i ], !dbg !23557
  %i.s = add i64 %i.r, %i.d, !dbg !23557
  store i64 %i.s, ptr %i.e, align 8, !dbg !23557, !alias.scope !23530
  %i.t = load ptr, ptr %1, align 8, !dbg !23559, !nonnull !1322, !noundef !1322
    #dbg_value(ptr %i.t, !23454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23534)
    #dbg_value(ptr %i.t, !23465, !DIExpression(), !23535)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23559
  %i.v = load i64, ptr %i.u, align 8, !dbg !23559, !noundef !1322
    #dbg_value(i64 %i.v, !23454, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23534)
    #dbg_value(i64 %i.v, !23455, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23536)
    #dbg_value(i64 %i.v, !23466, !DIExpression(), !23535)
    #dbg_value(ptr poison, !23454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23534)
    #dbg_value(ptr poison, !23455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23536)
    #dbg_value(ptr poison, !23454, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23534)
    #dbg_value(ptr poison, !23455, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23536)
    #dbg_value(ptr %i.t, !23455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23536)
    #dbg_value(ptr poison, !23446, !DIExpression(), !23537)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23560
    #dbg_value(ptr %i.t, !23467, !DIExpression(), !23538)
    #dbg_value(i64 %i.v, !23468, !DIExpression(), !23539)
  store i64 %i.v, ptr %i.a, align 8, !dbg !23561
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23561
  store ptr %i.t, ptr %i.w, align 8, !dbg !23561
    #dbg_value(ptr %i.a, !3097, !DIExpression(), !23419)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !23562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23563
  ret void, !dbg !23564

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1t_.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm, !dbg !23565

bb.d:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE7reserveBI_.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !23540, !DIExpression(), !23422)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1t_.exit unwind label %bb.e, !dbg !23566

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !dbg !23565
  unreachable, !dbg !23565
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYB1l_INtNtBb_7convert4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoENtNtNtB9_6traits8iterator8Iterator4nextB1U_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 !dbg !23567 {
bb.a:
    #dbg_value(ptr %1, !23953, !DIExpression(), !23956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23957), !dbg !24322
    #dbg_value(ptr %1, !23959, !DIExpression(), !23572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23964), !dbg !24323
    #dbg_value(ptr %1, !23966, !DIExpression(), !23580)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 121, !dbg !24324 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !24324, !range !3505, !alias.scope !23975, !noundef !1322
  %i.c = trunc nuw i8 %i.b to i1, !dbg !24324
  br i1 %i.c, label %bb.ao, label %bb.b, !dbg !24324

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !24325
  %.val.i.i = load ptr, ptr %i.d, align 8, !dbg !24325, !alias.scope !23975, !nonnull !1322, !noundef !1322 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !24325
  %.val13.i.i = load i64, ptr %i.e, align 8, !dbg !24325, !alias.scope !23975, !noundef !1322 ; 33 uses
    #dbg_value(ptr poison, !23970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23581)
    #dbg_value(ptr poison, !23977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23584)
    #dbg_value(ptr poison, !23985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23589)
    #dbg_value(i64 poison, !23970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23581)
    #dbg_value(i64 poison, !23977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23584)
    #dbg_value(i64 poison, !23985, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23994), !dbg !24326
    #dbg_value(ptr %1, !23996, !DIExpression(), !23601)
  %i.f = load i64, ptr %1, align 8, !dbg !24327, !range !4930, !alias.scope !24011, !noundef !1322
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  switch i64 %i.f, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.q
    i64 2, label %bb.r
  ], !dbg !24328

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !range !3505, !alias.scope !24011
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br i1 %i.j, label %bb.ak, label %.lr.ph.preheader.i.i.i, !dbg !24329

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %.promoted225.i.i.i = load i8, ptr %i.k, align 8, !alias.scope !24011 ; 4 uses
  %.promoted176.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !24011 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24043), !dbg !24330
  %i.l = trunc nuw i8 %.promoted225.i.i.i to i1, !dbg !24331 ; 2 uses
    #dbg_value(i1 %i.l, !24029, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23624)
    #dbg_value(i64 %.promoted176.i.i.i, !24030, !DIExpression(), !23625)
    #dbg_value(i64 %.promoted176.i.i.i, !24044, !DIExpression(), !23633)
    #dbg_value(ptr %.val.i.i, !24058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23634)
    #dbg_value(ptr %.val.i.i, !24051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23635)
    #dbg_value(i64 %.val13.i.i, !24058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23634)
    #dbg_value(i64 %.val13.i.i, !24051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23635)
    #dbg_value(i64 %.promoted176.i.i.i, !24059, !DIExpression(), !23634)
    #dbg_value(i64 %.promoted176.i.i.i, !24050, !DIExpression(), !23635)
    #dbg_value(i64 %.val13.i.i, !24052, !DIExpression(), !23633)
    #dbg_value(i64 %.promoted176.i.i.i, !24063, !DIExpression(), !23638)
    #dbg_value(ptr %.val.i.i, !24066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23638)
    #dbg_value(ptr %.val.i.i, !24068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23641)
    #dbg_value(ptr %.val.i.i, !24073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23645)
    #dbg_value(ptr %.val.i.i, !24079, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23650)
    #dbg_value(i64 %.val13.i.i, !24066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23638)
    #dbg_value(i64 %.val13.i.i, !24068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23641)
    #dbg_value(i64 %.val13.i.i, !24073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23645)
    #dbg_value(i64 %.val13.i.i, !24079, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23650)
    #dbg_value(i64 %.promoted176.i.i.i, !24071, !DIExpression(), !23641)
    #dbg_value(i64 %.promoted176.i.i.i, !24076, !DIExpression(), !23645)
    #dbg_value(i64 %.promoted176.i.i.i, !24080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23650)
    #dbg_value(i64 %.promoted176.i.i.i, !24084, !DIExpression(), !23653)
  %i.m = icmp eq i64 %.promoted176.i.i.i, 0, !dbg !24332
  br i1 %i.m, label %bb.e, label %bb.c, !dbg !24332

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted176.i.i.i, %.val13.i.i, !dbg !24333
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.d, label %.split.i.i.us.i.peel.i.i, !dbg !24333

.split.i.i.us.i.peel.i.i:                         ; preds = %bb.c
  %i.n = icmp eq i64 %.promoted176.i.i.i, %.val13.i.i, !dbg !24334
  br i1 %i.n, label %bb.e, label %.split.us180.i.i.i, !dbg !24335

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted176.i.i.i, !dbg !24336
  %i.p = load i8, ptr %i.o, align 1, !dbg !24336, !alias.scope !24089, !noalias !24090, !noundef !1322
    #dbg_value(i8 %i.p, !24092, !DIExpression(), !23661)
  %i.q = icmp sgt i8 %i.p, -65, !dbg !24337
  br i1 %i.q, label %bb.e, label %.split.us180.i.i.i, !dbg !24335

bb.e:                                             ; preds = %bb.d, %.split.i.i.us.i.peel.i.i, %.lr.ph.preheader.i.i.i
    #dbg_value(ptr %.val.i.i, !24081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23662)
    #dbg_value(i64 %.val13.i.i, !24081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23662)
    #dbg_value(i64 %.val13.i.i, !24077, !DIExpression(), !23663)
    #dbg_value(i64 %.val13.i.i, !24080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23650)
    #dbg_value(!DIArgList(i64 %.val13.i.i, i64 %.promoted176.i.i.i), !24082, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !23664)
    #dbg_value(ptr %.val.i.i, !24087, !DIExpression(), !23653)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted176.i.i.i, !dbg !24338 ; 4 uses
    #dbg_value(ptr undef, !24097, !DIExpression(), !23667)
    #dbg_value(ptr undef, !4868, !DIExpression(), !23669)
    #dbg_value(i32 2, !4893, !DIExpression(), !23671)
    #dbg_value(ptr undef, !4841, !DIExpression(), !23673)
    #dbg_value(i64 1, !4898, !DIExpression(), !23675)
    #dbg_value(ptr %i.r, !4851, !DIExpression(), !23676)
    #dbg_value(ptr %i.r, !4902, !DIExpression(), !23675)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23677)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23679)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23680)
  %i.s = icmp samesign eq i64 %.promoted176.i.i.i, %.val13.i.i, !dbg !24339
  br i1 %i.s, label %.split185.us.i.i.i, label %bb.f, !dbg !24340

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.r, align 1, !dbg !24341, !noalias !24099, !noundef !1322 ; 5 uses
    #dbg_value(i8 %i.t, !4869, !DIExpression(), !23683)
    #dbg_value(i8 %i.t, !4896, !DIExpression(), !23671)
  %i.u = icmp sgt i8 %i.t, -1, !dbg !24342
  br i1 %i.u, label %bb.g, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i, !dbg !24342

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !24343
  %i.w = and i8 %i.t, 31, !dbg !24344
  %i.x = zext nneg i8 %i.w to i32, !dbg !24344    ; 3 uses
    #dbg_value(i32 %i.x, !4872, !DIExpression(), !23684)
    #dbg_value(i32 %i.x, !4910, !DIExpression(), !23686)
    #dbg_value(ptr undef, !4841, !DIExpression(), !23688)
    #dbg_value(i64 1, !4898, !DIExpression(), !23690)
    #dbg_value(ptr %i.v, !4851, !DIExpression(), !23691)
    #dbg_value(ptr %i.v, !4902, !DIExpression(), !23690)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23692)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23694)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23695)
  %i.y = add nuw nsw i64 %.promoted176.i.i.i, 1, !dbg !24345
  %i.z = icmp samesign ne i64 %i.y, %.val13.i.i, !dbg !24345
  tail call void @llvm.assume(i1 %i.z), !dbg !24346
  %i.aa = load i8, ptr %i.v, align 1, !dbg !24347, !noalias !24099, !noundef !1322
    #dbg_value(i8 %i.aa, !4873, !DIExpression(), !23696)
    #dbg_value(i8 %i.aa, !4913, !DIExpression(), !23686)
  %i.ab = shl nuw nsw i32 %i.x, 6, !dbg !24348
  %i.ac = and i8 %i.aa, 63, !dbg !24349
  %i.ad = zext nneg i8 %i.ac to i32, !dbg !24349  ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad, !dbg !24348
    #dbg_value(i32 %i.ae, !4874, !DIExpression(), !23697)
  %i.af = icmp samesign ugt i8 %i.t, -33, !dbg !24350
  br i1 %i.af, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i, label %bb.h, !dbg !24350

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2, !dbg !24351
    #dbg_value(ptr undef, !4841, !DIExpression(), !23699)
    #dbg_value(i64 1, !4898, !DIExpression(), !23701)
    #dbg_value(ptr %i.ag, !4851, !DIExpression(), !23702)
    #dbg_value(ptr %i.ag, !4902, !DIExpression(), !23701)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23703)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23705)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23706)
  %i.ah = add nuw nsw i64 %.promoted176.i.i.i, 2, !dbg !24352
  %i.ai = icmp samesign ne i64 %i.ah, %.val13.i.i, !dbg !24352
  tail call void @llvm.assume(i1 %i.ai), !dbg !24353
  %i.aj = load i8, ptr %i.ag, align 1, !dbg !24354, !noalias !24099, !noundef !1322
    #dbg_value(i8 %i.aj, !4875, !DIExpression(), !23707)
    #dbg_value(i8 %i.aj, !4913, !DIExpression(), !23709)
    #dbg_value(i32 %i.ad, !4910, !DIExpression(), !23709)
  %i.ak = shl nuw nsw i32 %i.ad, 6, !dbg !24355
  %i.al = and i8 %i.aj, 63, !dbg !24356
  %i.am = zext nneg i8 %i.al to i32, !dbg !24356
  %i.an = or disjoint i32 %i.ak, %i.am, !dbg !24355 ; 2 uses
    #dbg_value(i32 %i.an, !4876, !DIExpression(), !23710)
    #dbg_value(i32 %i.an, !4910, !DIExpression(), !23712)
  %i.ao = shl nuw nsw i32 %i.x, 12, !dbg !24357
  %i.ap = or disjoint i32 %i.an, %i.ao, !dbg !24358
    #dbg_value(i32 %i.ap, !4874, !DIExpression(), !23697)
  %i.aq = icmp samesign ugt i8 %i.t, -17, !dbg !24359
  br i1 %i.aq, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i.i, label %bb.h, !dbg !24359

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3, !dbg !24360
    #dbg_value(ptr undef, !4841, !DIExpression(), !23714)
    #dbg_value(i64 1, !4898, !DIExpression(), !23716)
    #dbg_value(ptr %i.ar, !4851, !DIExpression(), !23717)
    #dbg_value(ptr %i.ar, !4902, !DIExpression(), !23716)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23718)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23720)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23721)
  %i.as = add nuw nsw i64 %.promoted176.i.i.i, 3, !dbg !24361
  %i.at = icmp samesign ne i64 %i.as, %.val13.i.i, !dbg !24361
  tail call void @llvm.assume(i1 %i.at), !dbg !24362
  %i.au = load i8, ptr %i.ar, align 1, !dbg !24363, !noalias !24099, !noundef !1322
    #dbg_value(i8 %i.au, !4877, !DIExpression(), !23722)
    #dbg_value(i8 %i.au, !4913, !DIExpression(), !23712)
  %i.av = shl nuw nsw i32 %i.x, 18, !dbg !24364
  %i.aw = and i32 %i.av, 1835008, !dbg !24364
  %i.ax = shl nuw nsw i32 %i.an, 6, !dbg !24365
  %i.ay = and i8 %i.au, 63, !dbg !24366
  %i.az = zext nneg i8 %i.ay to i32, !dbg !24366
  %i.ba = or disjoint i32 %i.ax, %i.az, !dbg !24365
  %i.bb = or disjoint i32 %i.ba, %i.aw, !dbg !24367
    #dbg_value(i32 %i.bb, !4874, !DIExpression(), !23697)
  br label %bb.h, !dbg !24368

bb.g:                                             ; preds = %bb.f
  %i.bc = zext nneg i8 %i.t to i32, !dbg !24369
  br label %bb.h, !dbg !24370

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.ap, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.peel.i.i ], [ %i.bb, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.peel.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.peel.i.i ], [ %i.bc, %bb.g ] ; 4 uses
    #dbg_value(i32 1, !24101, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !23727)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24101, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !23727)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24110, !DIExpression(), !23728)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24113, !DIExpression(), !23731)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24117, !DIExpression(), !23734)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24122, !DIExpression(), !23737)
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112, !dbg !24371
  tail call void @llvm.assume(i1 %i.bd), !dbg !24371
  br i1 %i.l, label %.loopexit61.split.us.i.i.i, label %bb.i, !dbg !24372

bb.i:                                             ; preds = %bb.h
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24031, !DIExpression(), !23738)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24127, !DIExpression(), !23741)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !24129, !DIExpression(), !23744)
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128, !dbg !24373
  br i1 %i.be, label %.lr.ph.i.i.i, label %bb.j, !dbg !24373

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048, !dbg !24374
  br i1 %i.bf, label %.lr.ph.i.i.i, label %bb.k, !dbg !24374

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536, !dbg !24375
  %..i.us.i.peel.i.i = select i1 %i.bg, i64 3, i64 4, !dbg !24376
  br label %.lr.ph.i.i.i, !dbg !24376

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.j ], [ %..i.us.i.peel.i.i, %bb.k ], [ 1, %bb.i ], !dbg !24376
  %i.bh = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted176.i.i.i, !dbg !24377 ; 16 uses
  store i64 %i.bh, ptr %i.g, align 8, !dbg !24377, !alias.scope !24131
    #dbg_value(ptr poison, !4841, !DIExpression(), !23714)
    #dbg_value(ptr poison, !4841, !DIExpression(), !23699)
    #dbg_value(ptr poison, !4841, !DIExpression(), !23688)
    #dbg_value(ptr poison, !4841, !DIExpression(), !23673)
    #dbg_value(ptr poison, !4868, !DIExpression(), !23669)
    #dbg_value(ptr poison, !24097, !DIExpression(), !23667)
    #dbg_value(ptr %1, !24026, !DIExpression(), !23745)
    #dbg_declare(ptr poison, !24109, !DIExpression(), !23746)
    #dbg_value(ptr %1, !24028, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24132), !dbg !24330
    #dbg_value(i1 true, !24029, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23624)
    #dbg_value(i64 %i.bh, !24030, !DIExpression(), !23625)
    #dbg_value(i64 %i.bh, !24044, !DIExpression(), !23633)
    #dbg_value(ptr %.val.i.i, !24058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23634)
    #dbg_value(ptr %.val.i.i, !24051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23635)
    #dbg_value(i64 %.val13.i.i, !24058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23634)
    #dbg_value(i64 %.val13.i.i, !24051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23635)
    #dbg_value(i64 %i.bh, !24059, !DIExpression(), !23634)
    #dbg_value(i64 %i.bh, !24050, !DIExpression(), !23635)
    #dbg_value(i64 %.val13.i.i, !24052, !DIExpression(), !23633)
    #dbg_value(i64 %i.bh, !24063, !DIExpression(), !23638)
    #dbg_value(ptr %.val.i.i, !24066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23638)
    #dbg_value(ptr %.val.i.i, !24068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23641)
    #dbg_value(ptr %.val.i.i, !24073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23645)
    #dbg_value(ptr %.val.i.i, !24079, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23650)
    #dbg_value(i64 %.val13.i.i, !24066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23638)
    #dbg_value(i64 %.val13.i.i, !24068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23641)
    #dbg_value(i64 %.val13.i.i, !24073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23645)
    #dbg_value(i64 %.val13.i.i, !24079, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23650)
    #dbg_value(i64 %i.bh, !24071, !DIExpression(), !23641)
    #dbg_value(i64 %i.bh, !24076, !DIExpression(), !23645)
    #dbg_value(i64 %i.bh, !24080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23650)
    #dbg_value(i64 %i.bh, !24084, !DIExpression(), !23653)
  %i.bi = icmp eq i64 %i.bh, 0, !dbg !24332
  br i1 %i.bi, label %bb.n, label %bb.l, !dbg !24332

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.bh, %.val13.i.i, !dbg !24333
  br i1 %.not.i.i.us.i.i.i, label %bb.m, label %.split.i.i.us.i.i.i, !dbg !24333

.split.i.i.us.i.i.i:                              ; preds = %bb.l
  %i.bj = icmp eq i64 %i.bh, %.val13.i.i, !dbg !24334
  br i1 %i.bj, label %bb.n, label %.split.us180.i.i.i, !dbg !24335

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bh, !dbg !24336
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !24336, !alias.scope !24089, !noalias !24133, !noundef !1322
    #dbg_value(i8 %i.bl, !24092, !DIExpression(), !23661)
  %i.bm = icmp sgt i8 %i.bl, -65, !dbg !24337
  br i1 %i.bm, label %bb.n, label %.split.us180.i.i.i, !dbg !24335

bb.n:                                             ; preds = %bb.m, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
    #dbg_value(ptr %.val.i.i, !24081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23662)
    #dbg_value(i64 %.val13.i.i, !24081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23662)
    #dbg_value(i64 %.val13.i.i, !24077, !DIExpression(), !23663)
    #dbg_value(i64 %.val13.i.i, !24080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23650)
    #dbg_value(!DIArgList(i64 %.val13.i.i, i64 %i.bh), !24082, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !23664)
    #dbg_value(ptr %.val.i.i, !24087, !DIExpression(), !23653)
    #dbg_value(ptr undef, !24097, !DIExpression(), !23667)
    #dbg_value(ptr undef, !4868, !DIExpression(), !23669)
    #dbg_value(i32 2, !4893, !DIExpression(), !23671)
    #dbg_value(ptr undef, !4841, !DIExpression(), !23673)
    #dbg_value(i64 1, !4898, !DIExpression(), !23675)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23676)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23675)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23677)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23679)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23680)
  %i.bn = icmp samesign eq i64 %i.bh, %.val13.i.i, !dbg !24339
  br i1 %i.bn, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.o, !dbg !24340

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bh, !dbg !24338
    #dbg_value(ptr %i.bo, !4851, !DIExpression(), !23676)
    #dbg_value(ptr %i.bo, !4902, !DIExpression(), !23675)
  %i.bp = load i8, ptr %i.bo, align 1, !dbg !24341, !noalias !24134, !noundef !1322 ; 3 uses
    #dbg_value(i8 %i.bp, !4869, !DIExpression(), !23683)
    #dbg_value(i8 %i.bp, !4896, !DIExpression(), !23671)
  %i.bq = icmp sgt i8 %i.bp, -1, !dbg !24342
  br i1 %i.bq, label %.loopexit61.split.us.i.i.i, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i, !dbg !24342

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i: ; preds = %bb.o
    #dbg_value(i8 %i.bp, !4872, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !23684)
    #dbg_value(i8 %i.bp, !4910, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !23686)
    #dbg_value(ptr undef, !4841, !DIExpression(), !23688)
    #dbg_value(i64 1, !4898, !DIExpression(), !23690)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !23691)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !23690)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23692)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23694)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23695)
  %i.br = add nuw nsw i64 %i.bh, 1, !dbg !24345
  %i.bs = icmp samesign ne i64 %i.br, %.val13.i.i, !dbg !24345
  tail call void @llvm.assume(i1 %i.bs), !dbg !24346
    #dbg_value(i8 poison, !4873, !DIExpression(), !23696)
    #dbg_value(i8 poison, !4913, !DIExpression(), !23686)
    #dbg_value(!DIArgList(i8 poison, i8 poison), !4874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 6, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !23697)
  %i.bt = icmp samesign ugt i8 %i.bp, -33, !dbg !24350
  br i1 %i.bt, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i, label %.loopexit61.split.us.i.i.i, !dbg !24350

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i
    #dbg_value(ptr undef, !4841, !DIExpression(), !23699)
    #dbg_value(i64 1, !4898, !DIExpression(), !23701)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !23702)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !23701)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23703)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23705)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23706)
  %i.bu = add nuw nsw i64 %i.bh, 2, !dbg !24352
  %i.bv = icmp samesign ne i64 %i.bu, %.val13.i.i, !dbg !24352
  tail call void @llvm.assume(i1 %i.bv), !dbg !24353
    #dbg_value(i8 poison, !4875, !DIExpression(), !23707)
    #dbg_value(i8 poison, !4913, !DIExpression(), !23709)
    #dbg_value(i8 poison, !4910, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !23709)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !4876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !23710)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !4910, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !23712)
    #dbg_value(!DIArgList(i32 poison, i8 poison, i8 poison), !4874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 12, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !23697)
  %i.bw = icmp samesign ugt i8 %i.bp, -17, !dbg !24359
  br i1 %i.bw, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i, label %.loopexit61.split.us.i.i.i, !dbg !24359

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i
    #dbg_value(ptr undef, !4841, !DIExpression(), !23714)
    #dbg_value(i64 1, !4898, !DIExpression(), !23716)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !23717)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bh), !4902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !23716)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !4852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !23718)
    #dbg_value(ptr poison, !4905, !DIExpression(), !23720)
    #dbg_value(ptr poison, !4908, !DIExpression(), !23721)
  %i.bx = add nuw nsw i64 %i.bh, 3, !dbg !24361
  %i.by = icmp samesign ne i64 %i.bx, %.val13.i.i, !dbg !24361
  tail call void @llvm.assume(i1 %i.by), !dbg !24362
    #dbg_value(i8 poison, !4877, !DIExpression(), !23722)
    #dbg_value(i8 poison, !4913, !DIExpression(), !23712)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i8 poison), !4874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 18, DW_OP_shl, DW_OP_constu, 1835008, DW_OP_and, DW_OP_or, DW_OP_stack_value), !23697)
  br label %.loopexit61.split.us.i.i.i, !dbg !24368

.split.us180.i.i.i:                               ; preds = %bb.m, %.split.i.i.us.i.i.i, %bb.d, %.split.i.i.us.i.peel.i.i
  %.lcssa43.i.i = phi i64 [ %.promoted176.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted176.i.i.i, %bb.d ], [ %i.bh, %.split.i.i.us.i.i.i ], [ %i.bh, %bb.m ]
  %.lcssa40.i.i = phi i8 [ %.promoted225.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted225.i.i.i, %bb.d ], [ 1, %.split.i.i.us.i.i.i ], [ 1, %bb.m ]
  %i.bz = xor i8 %.lcssa40.i.i, 1
  store i8 %i.bz, ptr %i.k, align 8, !dbg !24378, !alias.scope !24143
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val13.i.i, i64 noundef %.lcssa43.i.i, i64 noundef %.val13.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28, !dbg !24379, !noalias !24133
  unreachable, !dbg !24379

.split185.us.i.i.i:                               ; preds = %bb.e
  %i.ca = xor i8 %.promoted225.i.i.i, 1
  store i8 %i.ca, ptr %i.k, align 8, !dbg !24378, !alias.scope !24143
    #dbg_value(i32 0, !24101, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !23727)
    #dbg_value(i32 undef, !24101, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !23727)
  br i1 %i.l, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.p, !dbg !24372

.loopexit61.split.us.i.i.i:                       ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i, %bb.o, %bb.h
  %.lcssa45.i.i = phi i64 [ %.promoted176.i.i.i, %bb.h ], [ %i.bh, %bb.o ], [ %i.bh, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i ] ; 2 uses
  store i8 0, ptr %i.k, align 8, !dbg !24378, !alias.scope !24143
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24380

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.p:                                             ; preds = %.split185.us.i.i.i
  store i8 1, ptr %i.h, align 2, !dbg !24381, !alias.scope !24143
  br label %bb.ak, !dbg !24382

bb.q:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !24003, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23749)
    #dbg_value(ptr poison, !24004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23750)
    #dbg_value(ptr poison, !24144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23753)
    #dbg_value(ptr poison, !24150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23757)
    #dbg_value(ptr poison, !24157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23760)
    #dbg_value(i64 %.val13.i.i, !24004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23750)
    #dbg_value(i64 %.val13.i.i, !24144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23753)
    #dbg_value(i64 %.val13.i.i, !24150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23757)
    #dbg_value(i64 %.val13.i.i, !24157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23760)
  %i.cb = load i64, ptr %i.g, align 8, !dbg !24383, !alias.scope !24011, !noundef !1322 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.cb, %.val13.i.i, !dbg !24383
  br i1 %.not.i.i.i, label %bb.s, label %bb.ak, !dbg !24383

bb.r:                                             ; preds = %bb.b
    #dbg_value(ptr %i.g, !24008, !DIExpression(), !23761)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !24384 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !24384, !alias.scope !24011, !noundef !1322 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1, !dbg !24384
    #dbg_value(i1 %i.ce, !24009, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23762)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !24385
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !24385, !alias.scope !24011, !nonnull !1322, !noundef !1322 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !24385
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !24385, !alias.scope !24011, !noundef !1322 ; 16 uses
    #dbg_value(ptr poison, !24161, !DIExpression(), !23787)
    #dbg_value(ptr poison, !24161, !DIExpression(), !23793)
    #dbg_value(ptr poison, !24164, !DIExpression(), !23794)
    #dbg_value(ptr poison, !24164, !DIExpression(), !23795)
    #dbg_value(ptr poison, !24167, !DIExpression(), !23796)
    #dbg_value(ptr poison, !24167, !DIExpression(), !23797)
    #dbg_value(ptr poison, !24178, !DIExpression(), !23798)
    #dbg_value(ptr poison, !24178, !DIExpression(), !23799)
    #dbg_value(ptr poison, !24161, !DIExpression(), !23806)
    #dbg_value(ptr poison, !24161, !DIExpression(), !23810)
    #dbg_value(ptr poison, !24203, !DIExpression(), !23811)
    #dbg_value(ptr poison, !24203, !DIExpression(), !23812)
    #dbg_value(ptr poison, !24206, !DIExpression(), !23813)
    #dbg_value(ptr poison, !24206, !DIExpression(), !23814)
    #dbg_value(ptr %i.g, !24187, !DIExpression(), !23815)
    #dbg_value(ptr %i.g, !24187, !DIExpression(), !23816)
    #dbg_value(ptr %i.g, !24209, !DIExpression(), !23819)
    #dbg_value(ptr %i.g, !24209, !DIExpression(), !23821)
    #dbg_value(ptr %.val.i.i, !24188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23815)
    #dbg_value(ptr %.val.i.i, !24188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23816)
    #dbg_value(ptr %.val.i.i, !24216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23824)
    #dbg_value(ptr %.val.i.i, !24216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23826)
    #dbg_value(ptr %.val.i.i, !24223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23829)
    #dbg_value(ptr %.val.i.i, !24223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23831)
    #dbg_value(ptr %.val.i.i, !24229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23834)
    #dbg_value(ptr %.val.i.i, !24229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23836)
    #dbg_value(ptr %.val.i.i, !24234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23839)
    #dbg_value(ptr %.val.i.i, !24234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23841)
    #dbg_value(ptr %.val.i.i, !24229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23843)
    #dbg_value(ptr %.val.i.i, !24229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23845)
    #dbg_value(ptr %.val.i.i, !24234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23847)
    #dbg_value(ptr %.val.i.i, !24234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23849)
    #dbg_value(i64 %.val13.i.i, !24188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23815)
    #dbg_value(i64 %.val13.i.i, !24188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23816)
    #dbg_value(i64 %.val13.i.i, !24216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23824)
    #dbg_value(i64 %.val13.i.i, !24216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23826)
    #dbg_value(i64 %.val13.i.i, !24223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23829)
    #dbg_value(i64 %.val13.i.i, !24223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23831)
    #dbg_value(i64 %.val13.i.i, !24229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23834)
    #dbg_value(i64 %.val13.i.i, !24229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23836)
    #dbg_value(i64 %.val13.i.i, !24234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23839)
    #dbg_value(i64 %.val13.i.i, !24234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23841)
    #dbg_value(i64 %.val13.i.i, !24229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23843)
    #dbg_value(i64 %.val13.i.i, !24229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23845)
    #dbg_value(i64 %.val13.i.i, !24234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23847)
    #dbg_value(i64 %.val13.i.i, !24234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23849)
    #dbg_value(ptr %i.cg, !24189, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23815)
    #dbg_value(ptr %i.cg, !24189, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23816)
    #dbg_value(i64 %i.ci, !24189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23815)
    #dbg_value(i64 %i.ci, !24189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23816)
    #dbg_value(i64 1, !24240, !DIExpression(), !23852)
    #dbg_value(i64 1, !24240, !DIExpression(), !23854)
    #dbg_value(i64 1, !24243, !DIExpression(), !23857)
    #dbg_value(i64 1, !24243, !DIExpression(), !23859)
    #dbg_value(i64 1, !24246, !DIExpression(), !23862)
    #dbg_value(i64 1, !24246, !DIExpression(), !23864)
    #dbg_value(i64 1, !24249, !DIExpression(), !23867)
    #dbg_value(i64 1, !24249, !DIExpression(), !23869)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !24386 ; 9 uses
    #dbg_value(i64 poison, !24191, !DIExpression(), !23871)
    #dbg_value(i64 poison, !24191, !DIExpression(), !23872)
  %i.ck = add nsw i64 %i.ci, -1, !dbg !24387      ; 5 uses
  br i1 %i.ce, label %bb.ad, label %bb.v, !dbg !24388

bb.s:                                             ; preds = %bb.q
    #dbg_value(ptr %.val.i.i, !24004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23750)
    #dbg_value(ptr %.val.i.i, !24144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23753)
    #dbg_value(ptr %.val.i.i, !24150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23757)
    #dbg_value(ptr %.val.i.i, !24157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23760)
    #dbg_value(i64 %i.cb, !24147, !DIExpression(), !23753)
    #dbg_value(i64 %i.cb, !24154, !DIExpression(), !23757)
    #dbg_value(i64 %i.cb, !24158, !DIExpression(), !23760)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24389
  %i.cm = load i8, ptr %i.cl, align 8, !dbg !24389, !alias.scope !24011, !noundef !1322 ; 2 uses
  %i.cn = sub nuw i64 %.val13.i.i, %i.cb, !dbg !24390 ; 4 uses
    #dbg_value(i64 %i.cn, !24155, !DIExpression(), !23873)
    #dbg_value(i64 %i.cn, !24159, !DIExpression(), !23760)
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cb, !dbg !24391 ; 2 uses
    #dbg_value(i8 %i.cm, !4954, !DIExpression(), !23875)
    #dbg_value(i8 %i.cm, !4959, !DIExpression(), !23877)
    #dbg_value(ptr %i.co, !4955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23875)
    #dbg_value(ptr %i.co, !4960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23877)
    #dbg_value(i64 %i.cn, !4955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23875)
    #dbg_value(i64 %i.cn, !4960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23877)
  %i.cp = icmp samesign ult i64 %i.cn, 16, !dbg !24392
  br i1 %i.cp, label %.lr.ph.i.i.i.i, label %bb.t, !dbg !24392

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef range(i64 0, -9223372036854775808) %i.cn), !dbg !24393, !noalias !24252 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0, !dbg !24393
  %i.cs = extractvalue { i64, i64 } %i.cq, 1, !dbg !24393
    #dbg_value(i64 %i.cr, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23878)
    #dbg_value(i64 %i.cs, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23878)
  %i.ct = trunc nuw i64 %i.cr to i1, !dbg !24394
  br i1 %i.ct, label %.loopexit62.i.i.i, label %.loopexit63.i.i.i, !dbg !24394

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %bb.u
  %.sroa.04.015.i.i.i.i = phi i64 [ %i.cx, %bb.u ], [ 0, %bb.s ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i, !4961, !DIExpression(), !23879)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.04.015.i.i.i.i, !dbg !24395
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !24395, !alias.scope !24253, !noalias !24252, !noundef !1322
  %i.cw = icmp eq i8 %i.cv, %i.cm, !dbg !24395
  br i1 %i.cw, label %.loopexit62.i.i.i, label %bb.u, !dbg !24395

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cx = add nuw nsw i64 %.sroa.04.015.i.i.i.i, 1, !dbg !24396 ; 2 uses
    #dbg_value(i64 %i.cx, !4961, !DIExpression(), !23879)
  %exitcond.not.i27.i.i.i = icmp eq i64 %i.cx, %i.cn, !dbg !24397
  br i1 %exitcond.not.i27.i.i.i, label %.loopexit63.i.i.i, label %.lr.ph.i.i.i.i, !dbg !24397

.loopexit62.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.t
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.cs, %bb.t ], [ %.sroa.04.015.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !24398 ; 2 uses
    #dbg_value(i64 1, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23878)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23878)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !4957, !DIExpression(), !23882)
  %i.cy = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.cn, !dbg !24399
    #dbg_value(i1 true, !4963, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23884)
  tail call void @llvm.assume(i1 %i.cy), !dbg !24400
    #dbg_value(i64 1, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23878)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23878)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !24005, !DIExpression(), !23885)
  %i.cz = add i64 %.sroa.5.0.i.i.i.i, %i.cb, !dbg !24401 ; 2 uses
    #dbg_value(i64 %i.cz, !24006, !DIExpression(), !23886)
  %i.da = add i64 %i.cz, 1, !dbg !24402           ; 2 uses
  store i64 %i.da, ptr %i.g, align 8, !dbg !24402, !alias.scope !24011
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24403

.loopexit63.i.i.i:                                ; preds = %bb.u, %bb.t
    #dbg_value(i64 0, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23878)
    #dbg_value(i64 poison, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23878)
  store i64 %.val13.i.i, ptr %i.g, align 8, !dbg !24404, !alias.scope !24011
  br label %bb.ak, !dbg !24405

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24254), !dbg !24406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24255), !dbg !24406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24256), !dbg !24406
    #dbg_value(i1 false, !24190, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23816)
    #dbg_value(i64 %i.ck, !24192, !DIExpression(), !23891)
  %.promoted.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !24257 ; 2 uses
  %i.db = add i64 %.promoted.i.i.i.i, %i.ck, !dbg !24407 ; 2 uses
  %i.dc = icmp ult i64 %i.db, %.val13.i.i, !dbg !24408
  br i1 %i.dc, label %.lr.ph.i28.i.i.i, label %._crit_edge.i.i.i.i, !dbg !24408

.lr.ph.i28.i.i.i:                                 ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !24257, !noundef !1322
  %i.df = load i64, ptr %i.g, align 8, !alias.scope !24257 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !24257 ; 2 uses
  %i.di = sub i64 %i.ci, %i.dh
  %invariant.op = sub i64 1, %i.df, !dbg !24409
  br label %.lr.ph.split.i.i.i.i, !dbg !24409

._crit_edge.i.i.i.i:                              ; preds = %bb.y, %bb.v
  store i64 %.val13.i.i, ptr %i.cj, align 8, !dbg !24410, !alias.scope !24257
  br label %bb.ak, !dbg !24411

.lr.ph.split.i.i.i.i:                             ; preds = %bb.y, %.lr.ph.i28.i.i.i
  %i.dj = phi i64 [ %.sink94.i.i.i.i, %bb.y ], [ %i.cd, %.lr.ph.i28.i.i.i ] ; 3 uses
  %i.dk = phi i64 [ %i.dv, %bb.y ], [ %i.db, %.lr.ph.i28.i.i.i ]
  %i.dl = phi i64 [ %.sink95.i.i.i.i, %bb.y ], [ %.promoted.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dk, !dbg !24412
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !24413, !alias.scope !24255, !noalias !24252, !noundef !1322
    #dbg_value(i8 %i.dn, !24193, !DIExpression(), !23892)
    #dbg_value(i8 %i.dn, !24214, !DIExpression(), !23821)
  %i.do = and i8 %i.dn, 63, !dbg !24414
  %i.dp = zext nneg i8 %i.do to i64, !dbg !24415
  %i.dq = shl nuw i64 1, %i.dp, !dbg !24416
  %i.dr = and i64 %i.dq, %i.de, !dbg !24416
  %.not.i29.i.i.i = icmp eq i64 %i.dr, 0, !dbg !24416
  br i1 %.not.i29.i.i.i, label %bb.w, label %bb.x, !dbg !24409

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYB1l_INtNtBb_7convert4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoENtNtNtB9_6traits8iterator8Iterator4nextB1U_:bb.a

.preheader59.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
    #dbg_value(i64 %.fr234.i.i.i, !24196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(ptr undef, !24206, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24203, !DIExpression(), !23811)
    #dbg_value(ptr undef, !24161, !DIExpression(), !23806)
    #dbg_value(ptr undef, !24162, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23915)
  br i1 %exitcond.not.i36.i.i.us.i94.not, label %.lr.ph96, label %.preheader.i38.us.i.i.us.i.preheader, !dbg !24455

.preheader59.i.i.i.us.i:                          ; preds = %.lr.ph96
  %i.fi = add i64 %.sroa.04.0.us.i.i.i.us.i95, 1, !dbg !24456 ; 2 uses
    #dbg_value(i64 %i.fi, !24196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(i64 %i.fi, !24196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(ptr undef, !24206, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24203, !DIExpression(), !23811)
    #dbg_value(ptr undef, !24161, !DIExpression(), !23806)
    #dbg_value(ptr undef, !24162, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23915)
  %exitcond.not.i36.i.i.us.i = icmp eq i64 %i.fi, %umax.i.i.i.i, !dbg !24457
  br i1 %exitcond.not.i36.i.i.us.i, label %.preheader.i38.us.i.i.us.i.preheader, label %.lr.ph96, !dbg !24455

.preheader.i38.us.i.i.us.i.preheader:             ; preds = %.preheader59.i.i.i.us.i, %.preheader59.i.i.i.us.i.preheader
    #dbg_value(i64 %.fr234.i.i.i, !24199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23916)
    #dbg_value(ptr undef, !24178, !DIExpression(), !23798)
    #dbg_value(ptr undef, !24167, !DIExpression(), !23796)
    #dbg_value(ptr undef, !24164, !DIExpression(), !23794)
    #dbg_value(ptr undef, !24161, !DIExpression(), !23787)
    #dbg_value(ptr undef, !24162, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  br i1 %.not58.i.us.i.i.us.i97, label %.split.us.i40.i.i.i, label %.lr.ph99, !dbg !24458

.lr.ph96:                                         ; preds = %.preheader59.i.i.i.us.i.preheader, %.preheader59.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i95 = phi i64 [ %i.fi, %.preheader59.i.i.i.us.i ], [ %.fr234.i.i.i, %.preheader59.i.i.i.us.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24204, !DIExpression(), !23918)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24241, !DIExpression(), !23852)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24244, !DIExpression(), !23857)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24197, !DIExpression(), !23919)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i.i.us.i95, !dbg !24459
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !24459, !alias.scope !24269, !noalias !24252, !noundef !1322
  %i.fl = add i64 %.sroa.04.0.us.i.i.i.us.i95, %i.fb, !dbg !24460 ; 2 uses
    #dbg_value(i64 %i.fl, !24232, !DIExpression(), !23834)
    #dbg_value(i64 %i.fl, !24237, !DIExpression(), !23839)
  %i.fm = icmp ult i64 %i.fl, %.val13.i.i, !dbg !24461
  tail call void @llvm.assume(i1 %i.fm), !dbg !24462
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fl, !dbg !24463
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !24464, !alias.scope !24268, !noalias !24252, !noundef !1322
  %.not45.us.i.i.i.us.i = icmp eq i8 %i.fk, %i.fo, !dbg !24459
  br i1 %.not45.us.i.i.i.us.i, label %.preheader59.i.i.i.us.i, label %bb.ae, !dbg !24459

bb.ae:                                            ; preds = %.lr.ph96
  %.reass301.i.reass.i.us.i = add i64 %i.fb, %reass.sub91.i.i
  %i.fp = add i64 %.reass301.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i95, !dbg !24465
  br label %bb.ag, !dbg !24466

.preheader.i38.us.i.i.us.i:                       ; preds = %.lr.ph99
    #dbg_value(i64 %i.fq, !24199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23916)
    #dbg_value(ptr undef, !24178, !DIExpression(), !23798)
    #dbg_value(ptr undef, !24167, !DIExpression(), !23796)
    #dbg_value(ptr undef, !24164, !DIExpression(), !23794)
    #dbg_value(ptr undef, !24161, !DIExpression(), !23787)
    #dbg_value(ptr undef, !24162, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  %.not58.i.us.i.i.us.i = icmp eq i64 %i.fq, 0, !dbg !24467
  br i1 %.not58.i.us.i.i.us.i, label %.split.us.i40.i.i.i, label %.lr.ph99, !dbg !24458

.lr.ph99:                                         ; preds = %.preheader.i38.us.i.i.us.i.preheader, %.preheader.i38.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i98 = phi i64 [ %i.fq, %.preheader.i38.us.i.i.us.i ], [ %.fr234.i.i.i, %.preheader.i38.us.i.i.us.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i98, !24199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23916)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i98, !24247, !DIExpression(), !23862)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i98, !24250, !DIExpression(), !23867)
  %i.fq = add i64 %.sroa.2.0.us.i.us.i.i.us.i98, -1, !dbg !24468 ; 4 uses
    #dbg_value(i64 %i.fq, !24199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23916)
    #dbg_value(i64 %i.fq, !24200, !DIExpression(), !23920)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fq, !dbg !24469
  %i.fs = load i8, ptr %i.fr, align 1, !dbg !24469, !alias.scope !24269, !noalias !24252, !noundef !1322
  %i.ft = add i64 %i.fq, %i.fb, !dbg !24470       ; 2 uses
    #dbg_value(i64 %i.ft, !24232, !DIExpression(), !23843)
    #dbg_value(i64 %i.ft, !24237, !DIExpression(), !23847)
  %i.fu = icmp ult i64 %i.ft, %.val13.i.i, !dbg !24471
  tail call void @llvm.assume(i1 %i.fu), !dbg !24472
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ft, !dbg !24473
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !24474, !alias.scope !24268, !noalias !24252, !noundef !1322
  %.not44.us.i.us.i.i.us.i = icmp eq i8 %i.fs, %i.fw, !dbg !24469
  br i1 %.not44.us.i.us.i.i.us.i, label %.preheader.i38.us.i.i.us.i, label %.split.us.i.i.us.i, !dbg !24469

.split.us.i.i.us.i:                               ; preds = %.lr.ph99
  %i.fx = add i64 %i.fb, %i.ey, !dbg !24475
  br label %bb.ag, !dbg !24476

bb.af:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.fy = add i64 %i.fb, %i.ci, !dbg !24477
  br label %bb.ag, !dbg !24478

bb.ag:                                            ; preds = %bb.af, %.split.us.i.i.us.i, %bb.ae
  %.sink.i37.i.i.us.i = phi i64 [ %i.fy, %bb.af ], [ %i.fp, %bb.ae ], [ %i.fx, %.split.us.i.i.us.i ] ; 3 uses
  store i64 %.sink.i37.i.i.us.i, ptr %i.cj, align 8, !dbg !24479, !alias.scope !24270
  %i.fz = add i64 %.sink.i37.i.i.us.i, %i.ck, !dbg !24447 ; 2 uses
    #dbg_value(i64 %i.fz, !24219, !DIExpression(), !23824)
    #dbg_value(i64 %i.fz, !24227, !DIExpression(), !23829)
  %i.ga = icmp ult i64 %i.fz, %.val13.i.i, !dbg !24448
  br i1 %i.ga, label %.lr.ph.split.us.i.i.i.us.i, label %._crit_edge.i32.i.i.i, !dbg !24448

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.aj
  %i.gb = phi i64 [ %i.gs, %bb.aj ], [ %i.es, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.gc = phi i64 [ %.sink.i37.i.i.i, %bb.aj ], [ %.promoted.i31.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gb, !dbg !24450
  %i.ge = load i8, ptr %i.gd, align 1, !dbg !24451, !alias.scope !24268, !noalias !24252, !noundef !1322
    #dbg_value(i8 %i.ge, !24193, !DIExpression(), !23913)
    #dbg_value(i8 %i.ge, !24214, !DIExpression(), !23819)
  %i.gf = and i8 %i.ge, 63, !dbg !24452
  %i.gg = zext nneg i8 %i.gf to i64, !dbg !24453
  %i.gh = shl nuw i64 1, %i.gg, !dbg !24454
  %i.gi = and i64 %i.gh, %i.ev, !dbg !24454
  %.not.us.i.i.i.i = icmp eq i64 %i.gi, 0, !dbg !24454
  br i1 %.not.us.i.i.i.i, label %bb.ai, label %.preheader59.i.i.i.i.preheader, !dbg !24449

.preheader59.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
    #dbg_value(i64 %.fr234.i.i.i, !24196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(ptr undef, !24206, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24203, !DIExpression(), !23811)
    #dbg_value(ptr undef, !24161, !DIExpression(), !23806)
    #dbg_value(ptr undef, !24162, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23915)
  br i1 %exitcond.not.i36.i.i.i89.not, label %.lr.ph91, label %.preheader.i38.i.i.i, !dbg !24455

.preheader59.i.i.i.i:                             ; preds = %.lr.ph91
  %i.gj = add i64 %.sroa.04.0.us.i.i.i.i90, 1, !dbg !24456 ; 2 uses
    #dbg_value(i64 %i.gj, !24196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(i64 %i.gj, !24196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(ptr undef, !24206, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24203, !DIExpression(), !23811)
    #dbg_value(ptr undef, !24161, !DIExpression(), !23806)
    #dbg_value(ptr undef, !24162, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23915)
  %exitcond.not.i36.i.i.i = icmp eq i64 %i.gj, %umax.i.i.i.i, !dbg !24457
  br i1 %exitcond.not.i36.i.i.i, label %.preheader.i38.i.i.i, label %.lr.ph91, !dbg !24455

.lr.ph91:                                         ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
  %.sroa.04.0.us.i.i.i.i90 = phi i64 [ %i.gj, %.preheader59.i.i.i.i ], [ %.fr234.i.i.i, %.preheader59.i.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24204, !DIExpression(), !23918)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24241, !DIExpression(), !23852)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24244, !DIExpression(), !23857)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24196, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23914)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24197, !DIExpression(), !23919)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i.i.i90, !dbg !24459
  %i.gl = load i8, ptr %i.gk, align 1, !dbg !24459, !alias.scope !24269, !noalias !24252, !noundef !1322
  %i.gm = add i64 %.sroa.04.0.us.i.i.i.i90, %i.gc, !dbg !24460 ; 2 uses
    #dbg_value(i64 %i.gm, !24232, !DIExpression(), !23834)
    #dbg_value(i64 %i.gm, !24237, !DIExpression(), !23839)
  %i.gn = icmp ult i64 %i.gm, %.val13.i.i, !dbg !24461
  tail call void @llvm.assume(i1 %i.gn), !dbg !24462
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gm, !dbg !24463
  %i.gp = load i8, ptr %i.go, align 1, !dbg !24464, !alias.scope !24268, !noalias !24252, !noundef !1322
  %.not45.us.i.i.i.i = icmp eq i8 %i.gl, %i.gp, !dbg !24459
  br i1 %.not45.us.i.i.i.i, label %.preheader59.i.i.i.i, label %bb.ah, !dbg !24459

.preheader.i38.i.i.i:                             ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
    #dbg_value(i64 %i.ew, !24199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23916)
    #dbg_value(ptr undef, !24178, !DIExpression(), !23798)
    #dbg_value(ptr undef, !24167, !DIExpression(), !23796)
    #dbg_value(ptr undef, !24164, !DIExpression(), !23794)
    #dbg_value(ptr undef, !24161, !DIExpression(), !23787)
    #dbg_value(ptr undef, !24162, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  %.not58.i.i.i.i = icmp eq i64 %.fr234.i.i.i, 0, !dbg !24467
  br i1 %.not58.i.i.i.i, label %.split.us.i40.i.i.i, label %.split56.us.i39.i.i.i, !dbg !24458

.split56.us.i39.i.i.i:                            ; preds = %.preheader.i38.i.i.i
    #dbg_value(i64 %i.ew, !24247, !DIExpression(), !23862)
    #dbg_value(i64 %i.ew, !24250, !DIExpression(), !23867)
    #dbg_value(i64 %i.ez, !24199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23916)
    #dbg_value(i64 %i.ez, !24200, !DIExpression(), !23920)
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ez, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !dbg !24469, !noalias !24271
  unreachable, !dbg !24469

bb.ah:                                            ; preds = %.lr.ph91
  %.reass301.i.reass.i.i = add i64 %i.gc, %reass.sub91.i.i
  %i.gq = add i64 %.reass301.i.reass.i.i, %.sroa.04.0.us.i.i.i.i90, !dbg !24465
  br label %bb.aj, !dbg !24466

bb.ai:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gr = add i64 %i.gc, %i.ci, !dbg !24477
  br label %bb.aj, !dbg !24478

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink.i37.i.i.i = phi i64 [ %i.gr, %bb.ai ], [ %i.gq, %bb.ah ] ; 3 uses
  store i64 %.sink.i37.i.i.i, ptr %i.cj, align 8, !dbg !24479, !alias.scope !24270
  %i.gs = add i64 %.sink.i37.i.i.i, %i.ck, !dbg !24447 ; 2 uses
    #dbg_value(i64 %i.gs, !24219, !DIExpression(), !23824)
    #dbg_value(i64 %i.gs, !24227, !DIExpression(), !23829)
  %i.gt = icmp ult i64 %i.gs, %.val13.i.i, !dbg !24448
  br i1 %i.gt, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i32.i.i.i, !dbg !24448

._crit_edge.i32.i.i.i:                            ; preds = %bb.aj, %bb.ag, %bb.ad
  store i64 %.val13.i.i, ptr %i.cj, align 8, !dbg !24480, !alias.scope !24270
  br label %bb.ak, !dbg !24481

.split.us.i40.i.i.i:                              ; preds = %.preheader.i38.us.i.i.us.i.preheader, %.preheader.i38.us.i.i.us.i, %.preheader.i38.i.i.i
  %i.gu = phi i64 [ %i.gc, %.preheader.i38.i.i.i ], [ %i.fb, %.preheader.i38.us.i.i.us.i ], [ %i.fb, %.preheader.i38.us.i.i.us.i.preheader ] ; 2 uses
  %i.gv = add i64 %i.gu, %i.ci, !dbg !24482       ; 2 uses
  store i64 %i.gv, ptr %i.cj, align 8, !dbg !24482, !alias.scope !24270
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24483

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %.split.us.i40.i.i.i, %.split.us.i30.i.i.i, %.loopexit62.i.i.i, %.loopexit61.split.us.i.i.i, %.split185.us.i.i.i, %bb.n
  %.sroa.9.0.i.i = phi i64 [ %.val13.i.i, %.split185.us.i.i.i ], [ %i.eh, %.split.us.i30.i.i.i ], [ %.lcssa45.i.i, %.loopexit61.split.us.i.i.i ], [ %i.da, %.loopexit62.i.i.i ], [ %i.gv, %.split.us.i40.i.i.i ], [ %.val13.i.i, %bb.n ], !dbg !24484
  %.sroa.4.015.i.i = phi i64 [ %.val13.i.i, %.split185.us.i.i.i ], [ %i.dl, %.split.us.i30.i.i.i ], [ %.lcssa45.i.i, %.loopexit61.split.us.i.i.i ], [ %i.cz, %.loopexit62.i.i.i ], [ %i.gu, %.split.us.i40.i.i.i ], [ %.val13.i.i, %bb.n ], !dbg !24484
    #dbg_value(ptr %.val.i.i, !23970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23581)
    #dbg_value(ptr %.val.i.i, !23977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23584)
    #dbg_value(ptr %.val.i.i, !23985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23589)
    #dbg_value(i64 %.sroa.4.015.i.i, !23971, !DIExpression(), !23922)
    #dbg_value(i64 %.sroa.4.015.i.i, !23981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23584)
    #dbg_value(i64 %.sroa.4.015.i.i, !23990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23589)
    #dbg_value(i64 %.sroa.9.0.i.i, !23972, !DIExpression(), !23922)
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !24485 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !24485, !alias.scope !23975, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.gx, !23981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23584)
    #dbg_value(i64 %i.gx, !23990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23589)
    #dbg_value(ptr %.val.i.i, !23991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23923)
    #dbg_value(i64 poison, !23991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23923)
  %i.gy = sub nuw i64 %.sroa.4.015.i.i, %i.gx, !dbg !24486
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.gx), !23973, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23924)
    #dbg_value(i64 %i.gy, !23973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23924)
  store i64 %.sroa.9.0.i.i, ptr %i.gw, align 8, !dbg !24487, !alias.scope !23975
  br label %bb.an, !dbg !24488

bb.ak:                                            ; preds = %._crit_edge.i32.i.i.i, %._crit_edge.i.i.i.i, %.loopexit63.i.i.i, %bb.q, %bb.p, %.preheader.i.i.i
    #dbg_value(ptr %1, !24272, !DIExpression(), !23928)
  store i8 1, ptr %i.a, align 1, !dbg !24489, !alias.scope !24276
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !24490
  %i.ha = load i8, ptr %i.gz, align 8, !dbg !24490, !range !3505, !alias.scope !24276, !noundef !1322
  %i.hb = trunc nuw i8 %i.ha to i1, !dbg !24490
  br i1 %i.hb, label %._crit_edge.i.i.i, label %bb.al, !dbg !24490

._crit_edge.i.i.i:                                ; preds = %bb.ak
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !24491, !alias.scope !24276
  %.phi.trans.insert13.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre14.i.i.i = load i64, ptr %.phi.trans.insert13.i.i.i, align 8, !dbg !24492, !alias.scope !24276
  br label %bb.am, !dbg !24490

bb.al:                                            ; preds = %bb.ak
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !24493
  %i.hd = load i64, ptr %i.hc, align 8, !dbg !24493, !alias.scope !24276, !noundef !1322 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !24494
  %i.hf = load i64, ptr %i.he, align 8, !dbg !24494, !alias.scope !24276, !noundef !1322 ; 2 uses
  %.not.i14.i.i = icmp eq i64 %i.hd, %i.hf, !dbg !24493
  br i1 %.not.i14.i.i, label %bb.ao, label %bb.am, !dbg !24493

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i.i
  %i.hg = phi i64 [ %.pre14.i.i.i, %._crit_edge.i.i.i ], [ %i.hd, %bb.al ], !dbg !24492
  %i.hh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hf, %bb.al ], !dbg !24491 ; 2 uses
    #dbg_value(ptr %.val.i.i, !24277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23933)
    #dbg_value(ptr %.val.i.i, !24280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23938)
    #dbg_value(i64 poison, !24277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23933)
    #dbg_value(i64 poison, !24280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23938)
    #dbg_value(i64 %i.hh, !24278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23933)
    #dbg_value(i64 %i.hh, !24281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23938)
    #dbg_value(i64 %i.hg, !24278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23933)
    #dbg_value(i64 %i.hg, !24281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23938)
    #dbg_value(ptr %.val.i.i, !24282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23939)
    #dbg_value(i64 poison, !24282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23939)
  %i.hi = sub nuw i64 %i.hg, %i.hh, !dbg !24495
  br label %bb.an, !dbg !24496

bb.an:                                            ; preds = %bb.am, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.hi, %bb.am ], [ %i.gy, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], !dbg !24497
  %.pn = phi i64 [ %i.hh, %bb.am ], [ %i.gx, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn, !dbg !24498
    #dbg_value(ptr %.sroa.0.1.i.i, !24285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24296)
    #dbg_value(ptr %1, !24292, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24296)
    #dbg_value(ptr %1, !24297, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24307)
    #dbg_value(i64 %.sroa.4.1.i.i, !24285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24296)
    #dbg_value(ptr %.sroa.0.1.i.i, !24293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24308)
    #dbg_value(i64 %.sroa.4.1.i.i, !24293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24308)
    #dbg_value(ptr %.sroa.0.1.i.i, !24300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24307)
    #dbg_value(i64 %.sroa.4.1.i.i, !24300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24307)
    #dbg_value(ptr %.sroa.0.1.i.i, !24309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23946)
    #dbg_value(i64 %.sroa.4.1.i.i, !24309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23946)
    #dbg_value(ptr poison, !24312, !DIExpression(), !23946)
    #dbg_value(ptr %.sroa.0.1.i.i, !24317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23949)
    #dbg_value(i64 %.sroa.4.1.i.i, !24317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23949)
  tail call void @_RNvXsc_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i, i64 noundef %.sroa.4.1.i.i), !dbg !24499
  br label %bb.ap, !dbg !24500

bb.ao:                                            ; preds = %bb.a, %bb.al
    #dbg_value(ptr null, !24285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24296)
    #dbg_value(i64 poison, !24285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24296)
    #dbg_value(ptr %1, !24292, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24296)
    #dbg_value(ptr %1, !24297, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24307)
  store i8 -1, ptr %0, align 8, !dbg !24501
  br label %bb.ap, !dbg !24502

bb.ap:                                            ; preds = %bb.ao, %bb.an
  ret void, !dbg !24503
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1S_5ValueENCNvNtB1U_7filters5pairs0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24504 {
bb.a:
  %.sroa.7.i.i = alloca [6 x i8], align 2         ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !24706, !DIExpression(), !24709)
    #dbg_value(ptr %1, !4584, !DIExpression(), !24506)
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBO_5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !dbg !24860 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0, !dbg !24861 ; 11 uses
    #dbg_value(ptr %i.e, !24710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24721)
    #dbg_value(ptr poison, !24710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24721)
    #dbg_value(ptr %1, !24717, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24721)
    #dbg_value(ptr %1, !24722, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24729)
  %.not = icmp eq ptr %i.e, null, !dbg !24862
  br i1 %.not, label %bb.ap, label %bb.b, !dbg !24863

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !24717, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24721)
    #dbg_value(ptr %1, !24722, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24729)
  %i.f = extractvalue { ptr, ptr } %i.d, 1, !dbg !24861 ; 18 uses
    #dbg_value(ptr %i.f, !24710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24721)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
    #dbg_value(ptr %i.e, !24718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24730)
    #dbg_value(ptr %i.f, !24718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24730)
    #dbg_value(ptr %i.e, !24725, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24729)
    #dbg_value(ptr %i.f, !24725, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24731), !dbg !24864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24732), !dbg !24864
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !24865
    #dbg_value(ptr poison, !24736, !DIExpression(), !24516)
    #dbg_value(ptr %i.e, !24737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24516)
    #dbg_value(ptr %i.f, !24737, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24516)
    #dbg_declare(ptr poison, !24739, !DIExpression(), !24526)
    #dbg_declare(ptr poison, !24765, !DIExpression(), !24529)
    #dbg_value(ptr %i.e, !24734, !DIExpression(), !24530)
    #dbg_value(ptr %i.f, !24735, !DIExpression(), !24530)
    #dbg_value(ptr %i.f, !24773, !DIExpression(), !24533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24865, !noalias !24775
    #dbg_value(i64 8, !24776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24541)
    #dbg_value(i64 8, !24786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24549)
    #dbg_value(i64 8, !24803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24552)
    #dbg_value(i64 48, !24776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24541)
    #dbg_value(i64 48, !24786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24549)
    #dbg_value(i64 48, !24803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24552)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !24801, !DIExpression(), !24549)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !24807, !DIExpression(), !24552)
    #dbg_value(i8 0, !24808, !DIExpression(), !24552)
    #dbg_value(i64 8, !24810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24564)
    #dbg_value(i64 8, !24830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24567)
    #dbg_value(i64 48, !24810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24564)
    #dbg_value(i64 48, !24830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24567)
    #dbg_value(i1 false, !24814, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24564)
    #dbg_value(i64 48, !24815, !DIExpression(), !24568)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !24866, !noalias !24775
  %i.g = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #22, !dbg !24867, !noalias !24775 ; 9 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !24868
  br i1 %i.h, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !dbg !24869, !prof !3490

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26, !dbg !24870, !noalias !24775
  unreachable, !dbg !24870

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24871, !noalias !24775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24872, !noalias !24775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24832), !dbg !24873
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24833), !dbg !24873
    #dbg_value(ptr %i.e, !3585, !DIExpression(), !24573)
    #dbg_value(i64 1, !3603, !DIExpression(), !24576)
    #dbg_value(i8 0, !3606, !DIExpression(), !24576)
    #dbg_value(i64 1, !3614, !DIExpression(), !24578)
    #dbg_value(i8 0, !3616, !DIExpression(), !24578)
  %i.i = load i8, ptr %i.e, align 16, !dbg !24874, !range !3385, !alias.scope !24834, !noundef !1322 ; 2 uses
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ], !dbg !24874

default.unreachable:                              ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  unreachable

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
    #dbg_value(ptr %i.e, !3590, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24579)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !24875
  %i.k = load i8, ptr %i.j, align 1, !dbg !24875, !range !3505, !alias.scope !24834, !noundef !1322
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !24876
  store i8 %i.k, ptr %i.l, align 1, !dbg !24876, !alias.scope !24832, !noalias !24775
  br label %bb.n, !dbg !24877

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
    #dbg_value(ptr %i.e, !3592, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24580)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !24878
  %i.n = load i64, ptr %i.m, align 8, !dbg !24878, !alias.scope !24834, !noundef !1322
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24879
  store i64 %i.n, ptr %i.o, align 8, !dbg !24879, !alias.scope !24832, !noalias !24775
  br label %bb.n, !dbg !24877

bb.f:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
    #dbg_value(ptr %i.e, !3594, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24581)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !24880
  %i.q = load i64, ptr %i.p, align 8, !dbg !24880, !alias.scope !24834, !noundef !1322
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24881
  store i64 %i.q, ptr %i.r, align 8, !dbg !24881, !alias.scope !24832, !noalias !24775
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!23932 = distinct !DILocation(line: 648, column: 63, scope: !23926, inlinedAt: !23927)
!23933 = distinct !DILocation(line: 0, scope: !23931, inlinedAt: !23932)
!23934 = distinct !DILexicalBlock(scope: !23935, file: !23984, line: 221, column: 13)
!23935 = distinct !DILexicalBlock(scope: !23936, file: !23984, line: 200, column: 9)
!23936 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs5_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !23987, file: !23984, line: 199, type: !23989, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !1322, retainedNodes: !24284)
!23937 = distinct !DILocation(line: 704, column: 22, scope: !23931, inlinedAt: !23932)
!23938 = distinct !DILocation(line: 0, scope: !23936, inlinedAt: !23937)
!23939 = distinct !DILocation(line: 0, scope: !23935, inlinedAt: !23937)
!23940 = distinct !DILexicalBlock(scope: !23941, file: !3570, line: 1165, column: 13)
!23941 = distinct !DISubprogram(name: "map<&str, tera::value::Value, &mut fn(&str) -> tera::value::Value>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE3mapNtNtCs5yXxDE1DkoT_4tera5value5ValueQNvYBI_INtNtB5_7convert4IntoBP_E4intoEBT_", scope: !762, file: !3570, line: 1160, type: !24288, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !24290, declaration: !24291, retainedNodes: !24294)
!23942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&str)", file: !1108, size: 128, align: 64, elements: !24303, templateParams: !1322, identifier: "29dee924b0cdef2c90c1bdd118010547")
!23943 = distinct !DISubprogram(name: "call_once<(&str), fn(&str) -> tera::value::Value>", linkageName: "_RNvXs2_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNvYReINtNtBb_7convert4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoINtB7_6FnOnceTBR_EE9call_onceB1i_", scope: !4084, file: !4081, line: 309, type: !24299, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !24305, retainedNodes: !24301)
!23944 = distinct !DISubprogram(name: "call_mut<fn(&str) -> tera::value::Value, (&str)>", linkageName: "_RNvYNvYReINtNtCsf3Ta7LF998c_4core7convert4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoINtNtNtBc_3ops8function5FnMutTB5_EE8call_mutBM_", scope: !24310, file: !4081, line: 166, type: !24311, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !24316, retainedNodes: !24313)
!23945 = distinct !DILocation(line: 310, column: 21, scope: !23943, inlinedAt: !24306)
!23946 = distinct !DILocation(line: 0, scope: !23944, inlinedAt: !23945)
!23947 = distinct !DISubprogram(name: "into<&str, tera::value::Value>", linkageName: "_RNvXs1_NtCsf3Ta7LF998c_4core7convertReINtB5_4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoBP_", scope: !4716, file: !4714, line: 779, type: !24319, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, templateParams: !24321, retainedNodes: !24320)
!23948 = distinct !DILocation(line: 166, column: 5, scope: !23944, inlinedAt: !23945)
!23949 = distinct !DILocation(line: 0, scope: !23947, inlinedAt: !23948)
!23950 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::Map<core::str::iter::Split<&str>, fn(&str) -> tera::value::Value>", baseType: !838, size: 64, align: 64, dwarfAddressSpace: 0)
!23951 = !{!250, !23950}
!23952 = !DISubroutineType(types: !23951)
!23953 = !DILocalVariable(name: "self", arg: 1, scope: !23567, file: !3924, line: 106, type: !23950)
!23954 = !{!23953}
!23955 = !{!4711, !4659, !4660}
!23956 = !DILocation(line: 0, scope: !23567)
!23957 = !{!23569}
!23958 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::Split<&str>", baseType: !837, size: 64, align: 64, dwarfAddressSpace: 0)
!23959 = !DILocalVariable(name: "self", arg: 1, scope: !23570, file: !4881, line: 511, type: !23958)
!23960 = !DINamespace(name: "{impl#61}", scope: !4612)
!23961 = !{!762, !23958}
!23962 = !DISubroutineType(types: !23961)
!23963 = !{!23959}
!23964 = !{!23574}
!23965 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::SplitInternal<&str>", baseType: !836, size: 64, align: 64, dwarfAddressSpace: 0)
!23966 = !DILocalVariable(name: "self", arg: 1, scope: !23578, file: !4881, line: 657, type: !23965)
!23967 = !{!762, !23965}
!23968 = !DISubroutineType(types: !23967)
!23969 = !DISubprogram(name: "next<&str>", linkageName: "_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalReE4nextCs5yXxDE1DkoT_4tera", scope: !836, file: !4881, line: 657, type: !23968, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4658)
!23970 = !DILocalVariable(name: "haystack", scope: !23577, file: !4881, line: 662, type: !85, align: 64)
!23971 = !DILocalVariable(name: "a", scope: !23576, file: !4881, line: 665, type: !1302, align: 64)
!23972 = !DILocalVariable(name: "b", scope: !23576, file: !4881, line: 665, type: !1302, align: 64)
!23973 = !DILocalVariable(name: "elt", scope: !23575, file: !4881, line: 666, type: !556, align: 64)
!23974 = !{!23966, !23970, !23971, !23972, !23973}
!23975 = !{!23574, !23569}
!23976 = !DIFile(filename: "library/core/src/str/mod.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "6ab1951b4847882473ed0a4d06a2515b")
!23977 = !DILocalVariable(name: "self", arg: 1, scope: !23582, file: !23976, line: 700, type: !85)
!23978 = !DINamespace(name: "{impl#0}", scope: !4611)
!23979 = !{!85, !85, !34}
!23980 = !DISubroutineType(types: !23979)
!23981 = !DILocalVariable(name: "i", scope: !23582, file: !23976, line: 700, type: !34, align: 64)
!23982 = !{!23977, !23981}
!23983 = !{!4947}
!23984 = !DIFile(filename: "library/core/src/str/traits.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "d8ae730ba1532c9b0c00bc889a42d36f")
!23985 = !DILocalVariable(name: "slice", arg: 2, scope: !23587, file: !23984, line: 199, type: !85)
!23986 = !DINamespace(name: "traits", scope: !4611)
!23987 = !DINamespace(name: "{impl#7}", scope: !23986)
!23988 = !{!556, !34, !556, !3445}
!23989 = !DISubroutineType(types: !23988)
!23990 = !DILocalVariable(name: "self", scope: !23587, file: !23984, line: 199, type: !34, align: 64)
!23991 = !DILocalVariable(name: "slice", scope: !23586, file: !23984, line: 200, type: !602, align: 64)
!23992 = !DILocalVariable(name: "new_len", scope: !23585, file: !23984, line: 221, type: !1302, align: 64)
!23993 = !{!23990, !23985, !23991, !23992}
!23994 = !{!23591}
!23995 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::StrSearcher", baseType: !835, size: 64, align: 64, dwarfAddressSpace: 0)
!23996 = !DILocalVariable(name: "self", arg: 1, scope: !23599, file: !4931, line: 1205, type: !23995)
!23997 = !DINamespace(name: "{impl#33}", scope: !4621)
!23998 = !{!894, !23995}
!23999 = !DISubroutineType(types: !23998)
!24000 = !DILocalVariable(name: "a", scope: !23598, file: !4931, line: 1209, type: !1302, align: 64)
!24001 = !DILocalVariable(name: "b", scope: !23598, file: !4931, line: 1209, type: !1302, align: 64)
!24002 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::ByteNeedle", baseType: !829, size: 64, align: 64, dwarfAddressSpace: 0)
!24003 = !DILocalVariable(name: "searcher", scope: !23597, file: !4931, line: 1214, type: !24002, align: 64)
!24004 = !DILocalVariable(name: "bytes", scope: !23596, file: !4931, line: 1215, type: !597, align: 64)
!24005 = !DILocalVariable(name: "i", scope: !23595, file: !4931, line: 1220, type: !1302, align: 64)
!24006 = !DILocalVariable(name: "pos", scope: !23594, file: !4931, line: 1221, type: !1302, align: 64)
!24007 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::TwoWaySearcher", baseType: !827, size: 64, align: 64, dwarfAddressSpace: 0)
!24008 = !DILocalVariable(name: "searcher", scope: !23593, file: !4931, line: 1231, type: !24007, align: 64)
!24009 = !DILocalVariable(name: "is_long", scope: !23592, file: !4931, line: 1232, type: !1364, align: 8)
!24010 = !{!23996, !24000, !24001, !24003, !24004, !24005, !24006, !24008, !24009}
!24011 = !{!23591, !23574, !23569}
!24012 = !{!23606, !23995}
!24013 = !DISubroutineType(types: !24012)
!24014 = !{!23605}
!24015 = !DIDerivedType(tag: DW_TAG_member, name: "Match", scope: !23605, file: !1108, baseType: !23604, size: 192, align: 64, extraData: i64 0)
!24016 = !DIDerivedType(tag: DW_TAG_member, name: "Reject", scope: !23605, file: !1108, baseType: !23603, size: 192, align: 64, extraData: i64 1)
!24017 = !DIDerivedType(tag: DW_TAG_member, name: "Done", scope: !23605, file: !1108, baseType: !23602, size: 192, align: 64, extraData: i64 2)
!24018 = !{!24015, !24016, !24017}
!24019 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23603, file: !1108, baseType: !1302, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!24020 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !23603, file: !1108, baseType: !1302, size: 64, align: 64, offset: 128, flags: DIFlagPublic)
!24021 = !{!24019, !24020}
!24022 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23604, file: !1108, baseType: !1302, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!24023 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !23604, file: !1108, baseType: !1302, size: 64, align: 64, offset: 128, flags: DIFlagPublic)
!24024 = !{!24022, !24023}
!24025 = !DIDerivedType(tag: DW_TAG_member, scope: !23606, file: !1108, baseType: !1212, size: 64, align: 64, flags: DIFlagArtificial)
!24026 = !DILocalVariable(name: "self", arg: 1, scope: !23619, file: !4931, line: 1138, type: !23995)
!24027 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::EmptyNeedle", baseType: !831, size: 64, align: 64, dwarfAddressSpace: 0)
!24028 = !DILocalVariable(name: "searcher", scope: !23620, file: !4931, line: 1140, type: !24027, align: 64)
!24029 = !DILocalVariable(name: "is_match", scope: !23618, file: !4931, line: 1145, type: !1364, align: 8)
!24030 = !DILocalVariable(name: "pos", scope: !23617, file: !4931, line: 1147, type: !1302, align: 64)
!24031 = !DILocalVariable(name: "ch", scope: !23616, file: !4931, line: 1154, type: !4836, align: 32)
!24032 = !DILocalVariable(name: "searcher", scope: !23615, file: !4931, line: 1160, type: !24002, align: 64)
!24033 = !DILocalVariable(name: "bytes", scope: !23614, file: !4931, line: 1161, type: !597, align: 64)
!24034 = !DILocalVariable(name: "pos", scope: !23613, file: !4931, line: 1162, type: !1302, align: 64)
!24035 = !DILocalVariable(name: "end", scope: !23612, file: !4931, line: 1172, type: !1302, align: 64)
!24036 = !DILocalVariable(name: "searcher", scope: !23611, file: !4931, line: 1177, type: !24007, align: 64)
!24037 = !DILocalVariable(name: "is_long", scope: !23610, file: !4931, line: 1186, type: !1364, align: 8)
!24038 = !DILocalVariable(name: "a", scope: !23609, file: !4931, line: 1192, type: !1302, align: 64)
!24039 = !DILocalVariable(name: "b", scope: !23609, file: !4931, line: 1192, type: !1302, align: 64)
!24040 = !DILocalVariable(name: "b", scope: !23608, file: !4931, line: 1194, type: !1302, align: 64)
!24041 = !DILocalVariable(name: "otherwise", scope: !23607, file: !4931, line: 1198, type: !23606, align: 64)
!24042 = !{!24026, !24028, !24029, !24030, !24031, !24032, !24033, !24034, !24035, !24036, !24037, !24038, !24039, !24040, !24041}
!24043 = !{!23623}
!24044 = !DILocalVariable(name: "start", scope: !23629, file: !23984, line: 525, type: !1302, align: 64)
!24045 = !DINamespace(name: "{impl#11}", scope: !23986)
!24046 = !{!85, !23626, !85, !3445}
!24047 = !DISubroutineType(types: !24046)
!24048 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !23626, file: !1108, baseType: !1302, size: 64, align: 64, flags: DIFlagPublic)
!24049 = !{!24048}
!24050 = !DILocalVariable(name: "self", arg: 1, scope: !23628, file: !23984, line: 524, type: !23626)
!24051 = !DILocalVariable(name: "slice", arg: 2, scope: !23628, file: !23984, line: 524, type: !85)
!24052 = !DILocalVariable(name: "end", scope: !23629, file: !23984, line: 525, type: !1302, align: 64)
!24053 = !DILocalVariable(name: "s", scope: !23627, file: !23984, line: 527, type: !85, align: 64)
!24054 = !{!24050, !24051, !24044, !24052, !24053}
!24055 = !DINamespace(name: "{impl#4}", scope: !23986)
!24056 = !{!85, !85, !23626, !3445}
!24057 = !DISubroutineType(types: !24056)
!24058 = !DILocalVariable(name: "self", arg: 1, scope: !23630, file: !23984, line: 62, type: !85)
!24059 = !DILocalVariable(name: "index", arg: 2, scope: !23630, file: !23984, line: 62, type: !23626)
!24060 = !{!24058, !24059}
!24061 = !DITemplateTypeParameter(name: "I", type: !23626)
!24062 = !{!24061}
!24063 = !DILocalVariable(name: "self", arg: 1, scope: !23636, file: !23984, line: 492, type: !23626)
!24064 = !{!762, !23626, !85}
!24065 = !DISubroutineType(types: !24064)
!24066 = !DILocalVariable(name: "slice", arg: 2, scope: !23636, file: !23984, line: 492, type: !85)
!24067 = !{!24063, !24066}
!24068 = !DILocalVariable(name: "self", arg: 1, scope: !23639, file: !23976, line: 375, type: !85)
!24069 = !{!1364, !85, !1302}
!24070 = !DISubroutineType(types: !24069)
!24071 = !DILocalVariable(name: "index", arg: 2, scope: !23639, file: !23976, line: 375, type: !1302)
!24072 = !{!24068, !24071}
!24073 = !DILocalVariable(name: "slice", arg: 2, scope: !23643, file: !23984, line: 512, type: !85)
!24074 = !{!556, !23626, !556}
!24075 = !DISubroutineType(types: !24074)
!24076 = !DILocalVariable(name: "self", scope: !23643, file: !23984, line: 512, type: !23626, align: 64)
!24077 = !DILocalVariable(name: "len", scope: !23642, file: !23984, line: 513, type: !1302, align: 64)
!24078 = !{!24076, !24073, !24077}
!24079 = !DILocalVariable(name: "slice", arg: 2, scope: !23648, file: !23984, line: 199, type: !85)
!24080 = !DILocalVariable(name: "self", scope: !23648, file: !23984, line: 199, type: !34, align: 64)
!24081 = !DILocalVariable(name: "slice", scope: !23647, file: !23984, line: 200, type: !602, align: 64)
!24082 = !DILocalVariable(name: "new_len", scope: !23646, file: !23984, line: 221, type: !1302, align: 64)
!24083 = !{!24080, !24079, !24081, !24082}
!24084 = !DILocalVariable(name: "count", arg: 2, scope: !23651, file: !3938, line: 838, type: !1302)
!24085 = !{!1340, !1340, !1302, !3445}
!24086 = !DISubroutineType(types: !24085)
!24087 = !DILocalVariable(name: "self", arg: 1, scope: !23651, file: !3938, line: 838, type: !1340)
!24088 = !{!24087, !24084}
!24089 = !{!23655}
!24090 = !{!23658, !23623, !23656, !23591, !23574, !23569}
!24091 = !DIFile(filename: "library/core/src/num/mod.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "ecb2f290941f286067e076e0d471735a")
!24092 = !DILocalVariable(name: "self", arg: 1, scope: !23659, file: !24091, line: 1229, type: !1111)
!24093 = !DINamespace(name: "{impl#6}", scope: !1330)
!24094 = !{!1364, !1111}
!24095 = !DISubroutineType(types: !24094)
!24096 = !{!24092}
!24097 = !DILocalVariable(name: "self", arg: 1, scope: !23665, file: !4881, line: 39, type: !4883)
!24098 = !{!24097}
!24099 = !{!23682, !23658, !23623, !23656, !23591, !23574, !23569}
!24101 = !DILocalVariable(name: "self", arg: 1, scope: !23725, file: !3570, line: 1160, type: !871)
!24102 = !{!885, !871, !23723}
!24103 = !DISubroutineType(types: !24102)
!24104 = !DINamespace(name: "next", scope: !4882)
!24105 = !DITemplateTypeParameter(name: "U", type: !4836)
!24106 = !DITemplateTypeParameter(name: "F", type: !23723)
!24107 = !{!4865, !24105, !24106}
!24108 = !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs5yXxDE1DkoT_4tera", scope: !871, file: !3570, line: 1160, type: !24103, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !24107)
!24109 = !DILocalVariable(name: "f", scope: !23725, file: !3570, line: 1160, type: !23723, align: 8)
!24110 = !DILocalVariable(name: "x", scope: !23724, file: !3570, line: 1165, type: !3449, align: 32)
!24111 = !{!24101, !24109, !24110}
!24113 = !DILocalVariable(name: "ch", arg: 2, scope: !23729, file: !4881, line: 42, type: !3449)
!24114 = !{!4836, !23723, !3449}
!24115 = !DISubroutineType(types: !24114)
!24116 = !{!24113}
!24117 = !DILocalVariable(name: "i", arg: 1, scope: !23732, file: !5003, line: 243, type: !3449)
!24118 = !{!4836, !3449}
!24119 = !DISubroutineType(types: !24118)
!24120 = !{!24117}
!24121 = !DIFile(filename: "library/core/src/char/convert.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "06f18dc36f52feefd195ff986dbdcce9")
!24122 = !DILocalVariable(name: "i", arg: 1, scope: !23735, file: !24121, line: 26, type: !3449)
!24123 = !DINamespace(name: "convert", scope: !5004)
!24124 = !{!4836, !3449, !3445}
!24125 = !DISubroutineType(types: !24124)
!24126 = !{!24122}
!24127 = !DILocalVariable(name: "self", arg: 1, scope: !23739, file: !5003, line: 665, type: !4836)
!24128 = !{!24127}
!24129 = !DILocalVariable(name: "code", arg: 1, scope: !23742, file: !5003, line: 2473, type: !3449)
!24130 = !{!24129}
!24131 = !{!23623, !23591, !23574, !23569}
!24132 = !{!23748}
!24133 = !{!23658, !23748, !23656, !23591, !23574, !23569}
!24134 = !{!23682, !23658, !23748, !23656, !23591, !23574, !23569}
!24143 = !{!23748, !23591, !23574, !23569}
!24144 = !DILocalVariable(name: "self", arg: 1, scope: !23751, file: !4944, line: 18, type: !597)
!24145 = !{!597, !597, !23626, !3445}
!24146 = !DISubroutineType(types: !24145)
!24147 = !DILocalVariable(name: "index", scope: !23751, file: !4944, line: 18, type: !23626, align: 64)
!24148 = !{!24144, !24147}
!24149 = !{!1323, !24061}
!24150 = !DILocalVariable(name: "slice", arg: 2, scope: !23755, file: !4944, line: 543, type: !597)
!24151 = !DINamespace(name: "{impl#7}", scope: !4945)
!24152 = !{!597, !23626, !597, !3445}
!24153 = !DISubroutineType(types: !24152)
!24154 = !DILocalVariable(name: "self", scope: !23755, file: !4944, line: 543, type: !23626, align: 64)
!24155 = !DILocalVariable(name: "new_len", scope: !23754, file: !4944, line: 549, type: !1302, align: 64)
!24156 = !{!24154, !24150, !24155}
!24157 = !DILocalVariable(name: "ptr", arg: 1, scope: !23758, file: !4944, line: 84, type: !597)
!24158 = !DILocalVariable(name: "offset", arg: 2, scope: !23758, file: !4944, line: 85, type: !1302)
!24159 = !DILocalVariable(name: "len", arg: 3, scope: !23758, file: !4944, line: 86, type: !1302)
!24160 = !{!24157, !24158, !24159}
!24161 = !DILocalVariable(name: "self", arg: 1, scope: !23763, file: !3740, line: 2224, type: !3741)
!24162 = !DILocalVariable(name: "other", arg: 2, scope: !23763, file: !3740, line: 2224, type: !3741)
!24163 = !{!24161, !24162}
!24164 = !DILocalVariable(name: "self", arg: 1, scope: !23764, file: !3747, line: 1141, type: !3750)
!24165 = !{!24164}
!24166 = !DINamespace(name: "{impl#7}", scope: !3748)
!24167 = !DILocalVariable(name: "self", arg: 1, scope: !23765, file: !3747, line: 1315, type: !3750)
!24168 = !{!24167}
!24169 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "97bbf16646f958a86a45b6ba280b14d9")
!24170 = !DINamespace(name: "{impl#1}", scope: !5011)
!24171 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::rev::Rev<core::ops::range::Range<usize>>", baseType: !23766, size: 64, align: 64, dwarfAddressSpace: 0)
!24172 = !{!624, !24171}
!24173 = !DISubroutineType(types: !24172)
!24174 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !23766, file: !1108, baseType: !34, size: 128, align: 64, flags: DIFlagPrivate)
!24175 = !{!24174}
!24176 = !DITemplateTypeParameter(name: "T", type: !34)
!24177 = !{!24176}
!24178 = !DILocalVariable(name: "self", arg: 1, scope: !23767, file: !24169, line: 52, type: !24171)
!24179 = !{!24178}
!24180 = !DILexicalBlockFile(scope: !23781, file: !4931, discriminator: 2)
!24181 = !{!894, !24007, !597, !597, !1364}
!24182 = !DISubroutineType(types: !24181)
!24183 = !DITemplateTypeParameter(name: "S", type: !23769)
!24184 = !{!24183}
!24185 = !DISubprogram(name: "next<core::str::pattern::MatchOnly>", linkageName: "_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs5yXxDE1DkoT_4tera", scope: !827, file: !4931, line: 1541, type: !24182, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !24184)
!24186 = !{!23768}
!24187 = !DILocalVariable(name: "self", arg: 1, scope: !23775, file: !4931, line: 1541, type: !24007)
!24188 = !DILocalVariable(name: "haystack", arg: 2, scope: !23775, file: !4931, line: 1541, type: !597)
!24189 = !DILocalVariable(name: "needle", arg: 3, scope: !23775, file: !4931, line: 1541, type: !597)
!24190 = !DILocalVariable(name: "long_period", arg: 4, scope: !23775, file: !4931, line: 1541, type: !1364)
!24191 = !DILocalVariable(name: "old_pos", scope: !23776, file: !4931, line: 1546, type: !1302, align: 64)
!24192 = !DILocalVariable(name: "needle_last", scope: !23777, file: !4931, line: 1547, type: !1302, align: 64)
!24193 = !DILocalVariable(name: "tail_byte", scope: !23778, file: !4931, line: 1552, type: !1111, align: 8)
!24194 = !DILocalVariable(name: "b", scope: !23774, file: !4931, line: 1553, type: !1111, align: 8)
!24195 = !DILocalVariable(name: "start", scope: !23779, file: !4931, line: 1574, type: !1302, align: 64)
!24196 = !DILocalVariable(name: "iter", scope: !23773, file: !4931, line: 1576, type: !34, align: 64)
!24197 = !DILocalVariable(name: "i", scope: !23772, file: !4931, line: 1576, type: !1302, align: 64)
!24198 = !DILocalVariable(name: "start", scope: !23780, file: !4931, line: 1593, type: !1302, align: 64)
!24199 = !DILocalVariable(name: "iter", scope: !23781, file: !4931, line: 1594, type: !23766, align: 64)
!24200 = !DILocalVariable(name: "i", scope: !23771, file: !4931, line: 1594, type: !1302, align: 64)
!24201 = !DILocalVariable(name: "match_pos", scope: !23770, file: !4931, line: 1611, type: !1302, align: 64)
!24202 = !{!24187, !24188, !24189, !24190, !24191, !24192, !24193, !24194, !24195, !24196, !24197, !24198, !24199, !24200, !24201}
!24203 = !DILocalVariable(name: "self", arg: 1, scope: !23801, file: !3747, line: 1099, type: !3750)
!24204 = !DILocalVariable(name: "old", scope: !23800, file: !3747, line: 1101, type: !1302, align: 64)
!24205 = !{!24203, !24204}
!24206 = !DILocalVariable(name: "self", arg: 1, scope: !23802, file: !3747, line: 1184, type: !3750)
!24207 = !{!24206}
!24208 = !DILexicalBlockFile(scope: !23773, file: !4931, discriminator: 2)
!24209 = !DILocalVariable(name: "self", arg: 1, scope: !23817, file: !4931, line: 1531, type: !24007)
!24210 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::str::pattern::TwoWaySearcher", baseType: !827, size: 64, align: 64, dwarfAddressSpace: 0)
!24211 = !{!1364, !24210, !1111}
!24212 = !DISubroutineType(types: !24211)
!24213 = !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !827, file: !4931, line: 1531, type: !24212, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1322)
!24214 = !DILocalVariable(name: "byte", arg: 2, scope: !23817, file: !4931, line: 1531, type: !1111)
!24215 = !{!24209, !24214}
!24216 = !DILocalVariable(name: "self", arg: 1, scope: !23822, file: !3442, line: 574, type: !597)
!24217 = !{!863, !597, !1302}
!24218 = !DISubroutineType(types: !24217)
!24219 = !DILocalVariable(name: "index", arg: 2, scope: !23822, file: !3442, line: 574, type: !1302)
!24220 = !{!24216, !24219}
!24221 = !DITemplateTypeParameter(name: "I", type: !1302)
!24222 = !{!1323, !24221}
!24223 = !DILocalVariable(name: "slice", arg: 2, scope: !23827, file: !4944, line: 183, type: !597)
!24224 = !DINamespace(name: "{impl#2}", scope: !4945)
!24225 = !{!863, !1302, !597}
!24226 = !DISubroutineType(types: !24225)
!24227 = !DILocalVariable(name: "self", arg: 1, scope: !23827, file: !4944, line: 183, type: !1302)
!24228 = !{!24227, !24223}
!24229 = !DILocalVariable(name: "self", arg: 1, scope: !23832, file: !3442, line: 642, type: !597)
!24230 = !{!3634, !597, !1302, !3445}
!24231 = !DISubroutineType(types: !24230)
!24232 = !DILocalVariable(name: "index", arg: 2, scope: !23832, file: !3442, line: 642, type: !1302)
!24233 = !{!24229, !24232}
!24234 = !DILocalVariable(name: "slice", arg: 2, scope: !23837, file: !4944, line: 205, type: !597)
!24235 = !{!1340, !1302, !602, !3445}
!24236 = !DISubroutineType(types: !24235)
!24237 = !DILocalVariable(name: "self", arg: 1, scope: !23837, file: !4944, line: 205, type: !1302)
!24238 = !{!24237, !24234}
!24239 = !DILexicalBlockFile(scope: !23832, file: !3442, discriminator: 2)
!24240 = !DILocalVariable(name: "n", scope: !23850, file: !3747, line: 263, type: !1302, align: 64)
!24241 = !DILocalVariable(name: "start", arg: 1, scope: !23850, file: !3747, line: 263, type: !1302)
!24242 = !{!24241, !24240}
!24243 = !DILocalVariable(name: "rhs", scope: !23855, file: !3704, line: 1031, type: !1302, align: 64)
!24244 = !DILocalVariable(name: "self", arg: 1, scope: !23855, file: !3704, line: 1031, type: !1302)
!24245 = !{!24244, !24243}
!24246 = !DILocalVariable(name: "n", scope: !23860, file: !3747, line: 269, type: !1302, align: 64)
!24247 = !DILocalVariable(name: "start", arg: 1, scope: !23860, file: !3747, line: 269, type: !1302)
!24248 = !{!24247, !24246}
!24249 = !DILocalVariable(name: "rhs", scope: !23865, file: !3704, line: 1210, type: !1302, align: 64)
!24250 = !DILocalVariable(name: "self", arg: 1, scope: !23865, file: !3704, line: 1210, type: !1302)
!24251 = !{!24250, !24249}
!24252 = !{!23656, !23591, !23574, !23569}
!24253 = !{!23881}
!24254 = !{!23888}
!24255 = !{!23889}
!24256 = !{!23890}
!24257 = !{!23888, !23591, !23574, !23569}
!24258 = !DILexicalBlockFile(scope: !23777, file: !4915, discriminator: 0)
!24259 = !DILocalVariable(name: "v1", arg: 1, scope: !23893, file: !3740, line: 1773, type: !1302)
!24260 = !DILocalVariable(name: "v2", arg: 2, scope: !23893, file: !3740, line: 1773, type: !1302)
!24261 = !{!24259, !24260}
!24262 = !DILocalVariable(name: "self", arg: 1, scope: !23896, file: !3740, line: 2324, type: !1302)
!24263 = !DILocalVariable(name: "other", arg: 2, scope: !23896, file: !3740, line: 2324, type: !1302)
!24264 = !{!24262, !24263}
!24265 = !DILexicalBlockFile(scope: !23778, file: !4915, discriminator: 0)
!24266 = !{!23907, !23888, !23889, !23890, !23656, !23591, !23574, !23569}
!24267 = !{!23909}
!24268 = !{!23910}
!24269 = !{!23911}
!24270 = !{!23909, !23591, !23574, !23569}
!24271 = !{!23921, !23909, !23910, !23911, !23656, !23591, !23574, !23569}
!24272 = !DILocalVariable(name: "self", arg: 1, scope: !23926, file: !4881, line: 642, type: !23965)
!24273 = !DISubprogram(name: "get_end<&str>", linkageName: "_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalReE7get_endCs5yXxDE1DkoT_4tera", scope: !836, file: !4881, line: 642, type: !23968, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4658)
!24274 = !DILocalVariable(name: "string", scope: !23925, file: !4881, line: 648, type: !556, align: 64)
!24275 = !{!24272, !24274}
!24276 = !{!23930, !23574, !23569}
!24277 = !DILocalVariable(name: "self", arg: 1, scope: !23931, file: !23976, line: 700, type: !85)
!24278 = !DILocalVariable(name: "i", scope: !23931, file: !23976, line: 700, type: !34, align: 64)
!24279 = !{!24277, !24278}
!24280 = !DILocalVariable(name: "slice", arg: 2, scope: !23936, file: !23984, line: 199, type: !85)
!24281 = !DILocalVariable(name: "self", scope: !23936, file: !23984, line: 199, type: !34, align: 64)
!24282 = !DILocalVariable(name: "slice", scope: !23935, file: !23984, line: 200, type: !602, align: 64)
!24283 = !DILocalVariable(name: "new_len", scope: !23934, file: !23984, line: 221, type: !1302, align: 64)
!24284 = !{!24281, !24280, !24282, !24283}
!24285 = !DILocalVariable(name: "self", arg: 1, scope: !23941, file: !3570, line: 1160, type: !762)
!24286 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut fn(&str) -> tera::value::Value", baseType: !4608, size: 64, align: 64, dwarfAddressSpace: 0)
!24287 = !{!250, !762, !24286}
!24288 = !DISubroutineType(types: !24287)
!24289 = !DITemplateTypeParameter(name: "F", type: !24286)
!24290 = !{!3454, !4712, !24289}
!24291 = !DISubprogram(name: "map<&str, tera::value::Value, &mut fn(&str) -> tera::value::Value>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE3mapNtNtCs5yXxDE1DkoT_4tera5value5ValueQNvYBI_INtNtB5_7convert4IntoBP_E4intoEBT_", scope: !762, file: !3570, line: 1160, type: !24288, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !24290)
!24292 = !DILocalVariable(name: "f", arg: 2, scope: !23941, file: !3570, line: 1160, type: !24286)
!24293 = !DILocalVariable(name: "x", scope: !23940, file: !3570, line: 1165, type: !85, align: 64)
!24294 = !{!24285, !24292, !24293}
!24295 = !DILocation(line: 107, column: 26, scope: !23567)
!24296 = !DILocation(line: 0, scope: !23941, inlinedAt: !24295)
!24297 = !DILocalVariable(name: "self", arg: 1, scope: !23943, file: !4081, line: 309, type: !24286)
!24298 = !{!191, !24286, !85}
!24299 = !DISubroutineType(types: !24298)
!24300 = !DILocalVariable(name: "args", arg: 2, scope: !23943, file: !4081, line: 309, type: !23942)
!24301 = !{!24297, !24300}
!24302 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23942, file: !1108, baseType: !85, size: 128, align: 64)
!24303 = !{!24302}
!24304 = !DITemplateTypeParameter(name: "A", type: !23942)
!24305 = !{!24304, !4660}
!24306 = !DILocation(line: 1165, column: 29, scope: !23940, inlinedAt: !24295)
!24307 = !DILocation(line: 0, scope: !23943, inlinedAt: !24306)
!24308 = !DILocation(line: 0, scope: !23940, inlinedAt: !24295)
!24309 = !DILocalVariable(arg: 2, scope: !23944, file: !4081, line: 166, type: !23942)
!24310 = !DINamespace(name: "FnMut", scope: !4082)
!24311 = !DISubroutineType(cc: DW_CC_nocall, types: !24298)
!24312 = !DILocalVariable(arg: 1, scope: !23944, file: !4081, line: 166, type: !24286)
!24313 = !{!24312, !24309}
!24314 = !DITemplateTypeParameter(name: "Self", type: !4608)
!24315 = !DITemplateTypeParameter(name: "Args", type: !23942)
!24316 = !{!24314, !24315}
!24317 = !DILocalVariable(name: "self", arg: 1, scope: !23947, file: !4714, line: 779, type: !85)
!24318 = !{!191, !85, !3445}
!24319 = !DISubroutineType(cc: DW_CC_nocall, types: !24318)
!24320 = !{!24317}
!24321 = !{!3454, !4712}
!24322 = !DILocation(line: 107, column: 19, scope: !23567)
!24323 = !DILocation(line: 512, column: 24, scope: !23570, inlinedAt: !23571)
!24324 = !DILocation(line: 658, column: 12, scope: !23578, inlinedAt: !23579)
!24325 = !DILocation(line: 662, column: 37, scope: !23578, inlinedAt: !23579)
!24326 = !DILocation(line: 663, column: 28, scope: !23577, inlinedAt: !23579)
!24327 = !DILocation(line: 1206, column: 15, scope: !23599, inlinedAt: !23600)
!24328 = !DILocation(line: 1206, column: 9, scope: !23599, inlinedAt: !23600)
!24329 = !DILocation(line: 1141, column: 20, scope: !23620, inlinedAt: !23621)
!24330 = !DILocation(line: 1208, column: 28, scope: !23599, inlinedAt: !23600)
!24331 = !DILocation(line: 1145, column: 32, scope: !23620, inlinedAt: !23621)
!24332 = !DILocation(line: 380, column: 12, scope: !23639, inlinedAt: !23640)
!24333 = !DILocation(line: 384, column: 12, scope: !23639, inlinedAt: !23640)
!24334 = !DILocation(line: 394, column: 13, scope: !23639, inlinedAt: !23640)
!24335 = !DILocation(line: 493, column: 12, scope: !23636, inlinedAt: !23637)
!24336 = !DILocation(line: 396, column: 13, scope: !23639, inlinedAt: !23640)
!24337 = !DILocation(line: 1231, column: 9, scope: !23659, inlinedAt: !23660)
!24338 = !DILocation(line: 872, column: 18, scope: !23651, inlinedAt: !23652)
!24339 = !DILocation(line: 1663, column: 9, scope: !888, inlinedAt: !23678)
!24340 = !DILocation(line: 180, column: 28, scope: !865, inlinedAt: !23672)
!24341 = !DILocation(line: 37, column: 13, scope: !875, inlinedAt: !23668)
!24342 = !DILocation(line: 38, column: 8, scope: !876, inlinedAt: !23668)
!24343 = !DILocation(line: 627, column: 28, scope: !887, inlinedAt: !23674)
end_hunk_2
