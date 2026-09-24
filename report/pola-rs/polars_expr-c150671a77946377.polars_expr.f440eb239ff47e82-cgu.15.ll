Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.15?download=true
inline.NumInlined: 9427
inline.NumDeleted: 4812
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch7strings16iter_and_replaceNCNvB2_9replace_n0EB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !68044, !noalias !67970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false), !dbg !68045, !noalias !67993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !68040, !noalias !67970
  call void @_RNvXs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB7_22BinaryViewArrayGenericeEINtNtCscgRAwXFJnXP_4core7convert4FromINtB5_22MutableBinaryViewArrayeEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %i.g), !dbg !68046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !68047
  call void @_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes10StringTypeE10with_chunkINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.j, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @67, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.h), !dbg !68048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !67969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !68049
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !68050
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !68050, !nonnull !2531, !noundef !2531 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !68051
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !68051 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 87, !dbg !68052
  %i.an = load i8, ptr %i.am, align 1, !dbg !68052, !range !2800, !noundef !2531
  %i.ao = icmp eq i8 %i.an, -40, !dbg !68053
  br i1 %i.ao, label %bb.j, label %bb.k, !dbg !68053

bb.j:                                             ; preds = %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayeE13from_iteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1Q_3zip3ZipINtNtBc_11trusted_len13TrustMyLengthINtNtB1Q_7flatten7FlatMapIB1M_INtNtNtB1U_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtBa_5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB5m_12ChunkedArrayNtNtB5o_9datatypes10StringTypeE13downcast_iter0EINtNtNtNtBc_6bitmap5utils12zip_validity11ZipValidityReINtNtBa_8iterator15ArrayValuesIterINtB8_22BinaryViewArrayGenericeEENtNtB7t_8iterator10BitmapIterENCNvMNtB5m_8iteratorB6h_4iter0EINtNtB1U_6option6OptionB8e_EEB2Q_ENCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch7strings16iter_and_replaceNCNvBaX_9replace_n0E0EINtNtB4q_6borrow3CoweEEBb1_.exit
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.m unwind label %bb.l, !dbg !68054

bb.k:                                             ; preds = %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayeE13from_iteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1Q_3zip3ZipINtNtBc_11trusted_len13TrustMyLengthINtNtB1Q_7flatten7FlatMapIB1M_INtNtNtB1U_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtBa_5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB5m_12ChunkedArrayNtNtB5o_9datatypes10StringTypeE13downcast_iter0EINtNtNtNtBc_6bitmap5utils12zip_validity11ZipValidityReINtNtBa_8iterator15ArrayValuesIterINtB8_22BinaryViewArrayGenericeEENtNtB7t_8iterator10BitmapIterENCNvMNtB5m_8iteratorB6h_4iter0EINtNtB1U_6option6OptionB8e_EEB2Q_ENCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch7strings16iter_and_replaceNCNvBaX_9replace_n0E0EINtNtB4q_6borrow3CoweEEBb1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !68055
  br label %bb.m, !dbg !68056

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10StringTypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.j) #38
          to label %common.resume unwind label %bb.o, !dbg !68057

bb.m:                                             ; preds = %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !68058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !68059
  invoke void @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes10StringTypeE6renameCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.n unwind label %bb.l, !dbg !68060

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !68061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !dbg !68062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !68057
  ret void, !dbg !68063

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !68064
  unreachable, !dbg !68064
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr %.8.val, i64 %.16.val, ptr noalias noundef nonnull readonly captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !68065 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !68202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !68203
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !68203
  %i.f = load i64, ptr %i.b, align 8, !dbg !68203, !range !2686, !noundef !2531
  %i.g = trunc nuw i64 %i.f to i1, !dbg !68204
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !68205
  %i.i = load i64, ptr %i.h, align 8, !dbg !68205, !range !2687, !noundef !2531 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !68205 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !68204, !prof !2688

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !68206
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36, !dbg !68207
  unreachable, !dbg !68207

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !68208, !nonnull !2531, !noundef !2531
  %i.m = icmp ule i64 %1, %i.i, !dbg !68209
  tail call void @llvm.assume(i1 %i.m), !dbg !68210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !68211
  store i64 %i.i, ptr %i.e, align 8, !dbg !68212
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !68212 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !dbg !68212
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !68212 ; 4 uses
  store i64 0, ptr %i.o, align 8, !dbg !68212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !68213
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %3, !dbg !68214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !68215, !noalias !68183
  store ptr %.8.val, ptr %i.a, align 8, !dbg !68216, !alias.scope !68184, !noalias !68185
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !68216
  store i64 %.16.val, ptr %.sroa.4.0..sroa_idx2, align 8, !dbg !68216, !alias.scope !68184, !noalias !68185
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !68216
  store i64 2, ptr %.sroa.5.0..sroa_idx3, align 8, !dbg !68216, !alias.scope !68184, !noalias !68185
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxE0EIBX_INtB1f_7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB3o_13OffsetsBufferxE7lengths0EEINtB5_7ZipImplBW_B2V_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noundef nonnull %2, ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %.loopexit.split-lp, !dbg !68217

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !68218, !noalias !68183
  call void @llvm.experimental.noalias.scope.decl(metadata !68186), !dbg !68219
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !68220 ; 2 uses
  %.val.i = load i64, ptr %i.q, align 8, !dbg !68220, !alias.scope !68186, !noundef !2531 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !68220
  %.val8.i = load i64, ptr %i.r, align 8, !dbg !68220, !alias.scope !68186, !noundef !2531 ; 2 uses
  %i.s = sub i64 %.val8.i, %.val.i, !dbg !68221
  %.not.i = icmp eq i64 %.val8.i, %.val.i, !dbg !68222
  br i1 %.not.i, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterxENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxE0EIBY_INtB1g_7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB3p_13OffsetsBufferxE7lengths0EEINtB6_7ZipImplBX_B2W_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjjENCB1H_s_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph.i, !dbg !68223

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.e, !dbg !68223

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTjjENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxEs_0E0CskY9G75ZWc4U_11polars_expr.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.u, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTjjENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxEs_0E0CskY9G75ZWc4U_11polars_expr.exit.i ] ; 2 uses
  %i.u = add nuw i64 %.sroa.0.01.i, 1, !dbg !68224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68191), !dbg !68225
  %i.v = load i64, ptr %i.q, align 8, !dbg !68226, !alias.scope !68192, !noundef !2531
  %i.w = add i64 %i.v, %.sroa.0.01.i, !dbg !68226 ; 2 uses
  %.val.i.i = load ptr, ptr %i.d, align 8, !dbg !68227, !alias.scope !68192, !nonnull !2531, !noundef !2531
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.w, !dbg !68228
  %.val1.i.i.i = load i64, ptr %i.x, align 8, !dbg !68229, !noalias !68191, !noundef !2531
  %i.y = invoke { ptr, i64 } @_RNvXsY_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7WindowsxENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.w)
          to label %.noexc unwind label %.loopexit, !dbg !68230 ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.z = extractvalue { ptr, i64 } %i.y, 1, !dbg !68231 ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.z, 1, !dbg !68232
  br i1 %i.aa, label %_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxE0EIBX_INtB1f_7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB3o_13OffsetsBufferxE7lengths0EEINtB5_7ZipImplBW_B2V_E13get_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i, label %bb.f, !dbg !68232

bb.f:                                             ; preds = %.noexc
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef range(i64 0, 1152921504606846976) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #35
          to label %.noexc10 unwind label %.loopexit.split-lp, !dbg !68232

.noexc10:                                         ; preds = %bb.f
  unreachable, !dbg !68232

_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxE0EIBX_INtB1f_7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB3o_13OffsetsBufferxE7lengths0EEINtB5_7ZipImplBW_B2V_E13get_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %.noexc
  %i.ab = extractvalue { ptr, i64 } %i.y, 0, !dbg !68231 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !68232
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !68232, !alias.scope !68196, !noundef !2531 ; 2 uses
  %i.ae = load i64, ptr %i.ab, align 8, !dbg !68233, !alias.scope !68196, !noundef !2531 ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae, !dbg !68234       ; 3 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.af)
          to label %.noexc11 unwind label %.loopexit, !dbg !68235

.noexc11:                                         ; preds = %_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxE0EIBX_INtB1f_7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB3o_13OffsetsBufferxE7lengths0EEINtB5_7ZipImplBW_B2V_E13get_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i
  %i.ag = load i64, ptr %i.o, align 8, !dbg !68236, !alias.scope !68198, !noalias !68186, !noundef !2531 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !68237
  call void @llvm.assume(i1 %i.ah), !dbg !68238
  %.not.i.i.i.i = icmp eq i64 %i.ad, %i.ae, !dbg !68239
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTjjENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxEs_0E0CskY9G75ZWc4U_11polars_expr.exit.i, label %bb.g, !dbg !68239

bb.g:                                             ; preds = %.noexc11
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 %.val1.i.i.i, !dbg !68240
  %i.aj = load ptr, ptr %i.n, align 8, !dbg !68241, !alias.scope !68198, !noalias !68186, !nonnull !2531, !noundef !2531
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag, !dbg !68242
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.ai, i64 %i.af, i1 false), !dbg !68243
  %.pre.i.i.i.i = load i64, ptr %i.o, align 8, !dbg !68244, !alias.scope !68198, !noalias !68186
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTjjENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxEs_0E0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !68245

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTjjENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxEs_0E0CskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.g, %.noexc11
  %i.al = phi i64 [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %.noexc11 ], !dbg !68244
  %i.am = add i64 %i.al, %i.af, !dbg !68244
  store i64 %i.am, ptr %i.o, align 8, !dbg !68244, !alias.scope !68198, !noalias !68186
  %exitcond.not.i = icmp eq i64 %i.u, %i.s, !dbg !68222
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterxENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxE0EIBY_INtB1g_7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB3p_13OffsetsBufferxE7lengths0EEINtB6_7ZipImplBX_B2W_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjjENCB1H_s_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.e, !dbg !68223

_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterxENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxE0EIBY_INtB1g_7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB3p_13OffsetsBufferxE7lengths0EEINtB6_7ZipImplBX_B2W_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTjjENCB1H_s_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTjjENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxEs_0E0CskY9G75ZWc4U_11polars_expr.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !68246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !68247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !68247
  %i.an = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !68248
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.an), !dbg !68249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !68250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !68251
  ret void, !dbg !68252

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.phi, !dbg !68253

.loopexit:                                        ; preds = %bb.e, %_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterxENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary11take_valuesxE0EIBX_INtB1f_7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB3o_13OffsetsBufferxE7lengths0EEINtB5_7ZipImplBW_B2V_E13get_uncheckedCskY9G75ZWc4U_11polars_expr.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
          to label %bb.h unwind label %bb.j, !dbg !68251

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !68253
  unreachable, !dbg !68253
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef nonnull readonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !68254 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [72 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !68675 ; 25 uses
  %i.o = load ptr, ptr %i.n, align 8, !dbg !68675, !noundef !2531
  %.not.i16 = icmp eq ptr %i.o, null, !dbg !68675 ; 2 uses
  %..i = select i1 %.not.i16, ptr null, ptr %i.n, !dbg !68676
  br i1 %.not.i16, label %bb.as, label %bb.b, !dbg !68677, !prof !2688

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %3, 2, !dbg !68678
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !68678 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !68679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !68680, !noalias !68612
  store i64 0, ptr %i.e, align 8, !dbg !68681, !noalias !68612
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !68681 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !dbg !68681, !noalias !68612
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !68681 ; 8 uses
  store i64 0, ptr %i.r, align 8, !dbg !68681, !noalias !68612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68615), !dbg !68682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !68683, !noalias !68612
  %i.s = lshr i64 %3, 6, !dbg !68684              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !68685, !noalias !68616
  %i.t = lshr i64 %3, 3, !dbg !68686              ; 3 uses
  %i.u = and i64 %3, 7, !dbg !68687               ; 7 uses
  %.not.i.i = icmp ne i64 %i.u, 0, !dbg !68688    ; 2 uses
  %i.v = zext i1 %.not.i.i to i64, !dbg !68688    ; 2 uses
  %storemerge.i.i = add nuw nsw i64 %i.t, %i.v, !dbg !68688 ; 2 uses
  store i64 %storemerge.i.i, ptr %i.d, align 8, !dbg !68689, !noalias !68616
  %i.w = shl nuw nsw i64 %i.s, 3, !dbg !68690
  %i.x = and i64 %i.t, 7, !dbg !68691             ; 3 uses
  %i.y = or disjoint i64 %i.w, %i.x, !dbg !68690  ; 2 uses
  %i.z = add nuw nsw i64 %i.y, %i.v, !dbg !68690
  store i64 %i.z, ptr %i.c, align 8, !dbg !68690, !noalias !68616
  %i.aa = icmp eq i64 %i.t, %i.y, !dbg !68692
  br i1 %i.aa, label %bb.d, label %bb.c, !dbg !68692, !prof !2818

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #36
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !68693, !noalias !68612

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %storemerge.i.i)
          to label %.noexc1.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !68694, !noalias !68612

.noexc1.i:                                        ; preds = %bb.d
  %.not53.i.i = icmp eq i64 %i.s, 0, !dbg !68695
  br i1 %.not53.i.i, label %.preheader36.i.i, label %.lr.ph.i.i, !dbg !68696

.lr.ph.i.i:                                       ; preds = %.noexc1.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 8 uses
  br label %bb.e, !dbg !68696

.preheader36.i.i:                                 ; preds = %.noexc2.i, %.noexc1.i
  %.promoted42.i.i = phi ptr [ %2, %.noexc1.i ], [ %i.he, %.noexc2.i ] ; 2 uses
  %.not54.i.i = icmp eq i64 %i.x, 0, !dbg !68697
  br i1 %.not54.i.i, label %._crit_edge.i.i, label %.lr.ph48.i.i, !dbg !68698

.lr.ph48.i.i:                                     ; preds = %.preheader36.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %..i, i64 8 ; 8 uses
  br label %bb.o, !dbg !68698

bb.e:                                             ; preds = %.noexc2.i, %.lr.ph.i.i
  %.sroa.020.037.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.hi, %.noexc2.i ]
  %i.ad = phi ptr [ %2, %.lr.ph.i.i ], [ %i.he, %.noexc2.i ] ; 2 uses
  br label %bb.f, !dbg !68699

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.7.i.i.i, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.e ], [ %i.he, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.7.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.7.i.i.i ] ; 2 uses
  %.sroa.0.021.i.i.i = phi i64 [ 0, %bb.e ], [ %.sroa.07.0.7.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.7.i.i.i ]
  %.promoted1819.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %.promoted16.7.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.7.i.i.i ] ; 4 uses
  %i.af = shl nuw nsw i64 %indvars.iv.i.i.i, 3, !dbg !68700 ; 8 uses
  %i.ag = shl nuw nsw i64 1, %i.af, !dbg !68701
  %i.ah = icmp eq ptr %.promoted1819.i.i.i, %i.p, !dbg !68702
  br i1 %i.ah, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i, label %bb.g, !dbg !68703

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted1819.i.i.i, i64 4, !dbg !68704 ; 2 uses
  %.val3.i.i.i.i = load i32, ptr %.promoted1819.i.i.i, align 4, !dbg !68705, !noalias !68624, !noundef !2531
  %i.aj = zext i32 %.val3.i.i.i.i to i64, !dbg !68706
  %i.ak = load ptr, ptr %i.n, align 8, !dbg !68707, !noalias !68624, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40, !dbg !68708
  %i.am = load i64, ptr %i.al, align 8, !dbg !68708, !noalias !68624, !noundef !2531
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32, !dbg !68709
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !68709, !noalias !68624, !noundef !2531
  %i.ap = load i64, ptr %i.ab, align 8, !dbg !68710, !noalias !68624, !noundef !2531
  %i.aq = add i64 %i.ap, %i.aj, !dbg !68710       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3, !dbg !68711          ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.am, !dbg !68712
  call void @llvm.assume(i1 %i.as), !dbg !68713
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar, !dbg !68714
  %i.au = load i8, ptr %i.at, align 1, !dbg !68715, !noalias !68624, !noundef !2531
  %i.av = trunc i64 %i.aq to i8, !dbg !68716
  %i.aw = and i8 %i.av, 7, !dbg !68716
  %i.ax = lshr i8 %i.au, %i.aw, !dbg !68716
  %i.ay = and i8 %i.ax, 1, !dbg !68717
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !68718

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.az = phi ptr [ %i.ai, %bb.g ], [ %i.ae, %bb.f ]
  %.promoted16.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %.promoted1819.i.i.i, %bb.f ] ; 4 uses
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ay, %bb.g ], [ 2, %bb.f ], !dbg !68719 ; 2 uses
  %i.ba = icmp ne i8 %.sroa.0.0.i.i.i.i, 2, !dbg !68720
  call void @llvm.assume(i1 %i.ba), !dbg !68721
  %i.bb = trunc nuw i8 %.sroa.0.0.i.i.i.i to i1, !dbg !68722
  %i.bc = select i1 %i.bb, i64 %i.ag, i64 0, !dbg !68723
  %.sroa.07.0.i.i.i = or i64 %i.bc, %.sroa.0.021.i.i.i, !dbg !68723
  %i.bd = shl nuw i64 2, %i.af, !dbg !68724
  %i.be = icmp eq ptr %.promoted16.i.i.i, %i.p, !dbg !68702
  br i1 %i.be, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.1.i.i.i, label %bb.h, !dbg !68703

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.promoted16.i.i.i, i64 4, !dbg !68704 ; 2 uses
  %.val3.i.1.i.i.i = load i32, ptr %.promoted16.i.i.i, align 4, !dbg !68705, !noalias !68626, !noundef !2531
  %i.bg = zext i32 %.val3.i.1.i.i.i to i64, !dbg !68706
  %i.bh = load ptr, ptr %i.n, align 8, !dbg !68707, !noalias !68626, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40, !dbg !68708
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !68708, !noalias !68626, !noundef !2531
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 32, !dbg !68709
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !68709, !noalias !68626, !noundef !2531
  %i.bm = load i64, ptr %i.ab, align 8, !dbg !68710, !noalias !68626, !noundef !2531
  %i.bn = add i64 %i.bm, %i.bg, !dbg !68710       ; 2 uses
  %i.bo = lshr i64 %i.bn, 3, !dbg !68711          ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bj, !dbg !68712
  call void @llvm.assume(i1 %i.bp), !dbg !68713
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo, !dbg !68714
  %i.br = load i8, ptr %i.bq, align 1, !dbg !68715, !noalias !68626, !noundef !2531
  %i.bs = trunc i64 %i.bn to i8, !dbg !68716
  %i.bt = and i8 %i.bs, 7, !dbg !68716
  %i.bu = lshr i8 %i.br, %i.bt, !dbg !68716
  %i.bv = and i8 %i.bu, 1, !dbg !68717
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.1.i.i.i, !dbg !68718

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.1.i.i.i: ; preds = %bb.h, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.bw = phi ptr [ %i.bf, %bb.h ], [ %i.az, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ]
  %.promoted16.1.i.i.i = phi ptr [ %i.bf, %bb.h ], [ %.promoted16.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ] ; 4 uses
  %.sroa.0.0.i.1.i.i.i = phi i8 [ %i.bv, %bb.h ], [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], !dbg !68719 ; 2 uses
  %i.bx = icmp ne i8 %.sroa.0.0.i.1.i.i.i, 2, !dbg !68720
  call void @llvm.assume(i1 %i.bx), !dbg !68721
  %i.by = trunc nuw i8 %.sroa.0.0.i.1.i.i.i to i1, !dbg !68722
  %i.bz = select i1 %i.by, i64 %i.bd, i64 0, !dbg !68723
  %.sroa.07.0.1.i.i.i = or i64 %.sroa.07.0.i.i.i, %i.bz, !dbg !68723
  %i.ca = shl i64 4, %i.af, !dbg !68724
  %i.cb = icmp eq ptr %.promoted16.1.i.i.i, %i.p, !dbg !68702
  br i1 %i.cb, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.2.i.i.i, label %bb.i, !dbg !68703

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.1.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.promoted16.1.i.i.i, i64 4, !dbg !68704 ; 2 uses
  %.val3.i.2.i.i.i = load i32, ptr %.promoted16.1.i.i.i, align 4, !dbg !68705, !noalias !68627, !noundef !2531
  %i.cd = zext i32 %.val3.i.2.i.i.i to i64, !dbg !68706
  %i.ce = load ptr, ptr %i.n, align 8, !dbg !68707, !noalias !68627, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40, !dbg !68708
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !68708, !noalias !68627, !noundef !2531
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 32, !dbg !68709
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !68709, !noalias !68627, !noundef !2531
  %i.cj = load i64, ptr %i.ab, align 8, !dbg !68710, !noalias !68627, !noundef !2531
  %i.ck = add i64 %i.cj, %i.cd, !dbg !68710       ; 2 uses
  %i.cl = lshr i64 %i.ck, 3, !dbg !68711          ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.cg, !dbg !68712
  call void @llvm.assume(i1 %i.cm), !dbg !68713
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cl, !dbg !68714
  %i.co = load i8, ptr %i.cn, align 1, !dbg !68715, !noalias !68627, !noundef !2531
  %i.cp = trunc i64 %i.ck to i8, !dbg !68716
  %i.cq = and i8 %i.cp, 7, !dbg !68716
  %i.cr = lshr i8 %i.co, %i.cq, !dbg !68716
  %i.cs = and i8 %i.cr, 1, !dbg !68717
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.2.i.i.i, !dbg !68718

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.2.i.i.i: ; preds = %bb.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.1.i.i.i
  %i.ct = phi ptr [ %i.cc, %bb.i ], [ %i.bw, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.1.i.i.i ]
  %.promoted16.2.i.i.i = phi ptr [ %i.cc, %bb.i ], [ %.promoted16.1.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.1.i.i.i ] ; 4 uses
  %.sroa.0.0.i.2.i.i.i = phi i8 [ %i.cs, %bb.i ], [ 2, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.1.i.i.i ], !dbg !68719 ; 2 uses
  %i.cu = icmp ne i8 %.sroa.0.0.i.2.i.i.i, 2, !dbg !68720
  call void @llvm.assume(i1 %i.cu), !dbg !68721
  %i.cv = trunc nuw i8 %.sroa.0.0.i.2.i.i.i to i1, !dbg !68722
  %i.cw = select i1 %i.cv, i64 %i.ca, i64 0, !dbg !68723
  %.sroa.07.0.2.i.i.i = or i64 %.sroa.07.0.1.i.i.i, %i.cw, !dbg !68723
  %i.cx = shl i64 8, %i.af, !dbg !68724
  %i.cy = icmp eq ptr %.promoted16.2.i.i.i, %i.p, !dbg !68702
  br i1 %i.cy, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.3.i.i.i, label %bb.j, !dbg !68703

bb.j:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4ItermENCINvNtNtCslFlrwjHoTci_14polars_compute6gather14generic_binary20take_values_validityxmINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.2.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.promoted16.2.i.i.i, i64 4, !dbg !68704 ; 2 uses
  %.val3.i.3.i.i.i = load i32, ptr %.promoted16.2.i.i.i, align 4, !dbg !68705, !noalias !68628, !noundef !2531
  %i.da = zext i32 %.val3.i.3.i.i.i to i64, !dbg !68706
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_13RefUnwindSafeNtNtB2d_6marker4SendNtB42_4SyncEL_EE9put_valueCskY9G75ZWc4U_11polars_expr:bb.a
  %i.ed = icmp eq i32 %i.ec, 2, !dbg !97320
  br i1 %i.ed, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.6, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.6, !dbg !97320, !prof !2688

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.6: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.6
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i18.6)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.6 unwind label %.loopexit, !dbg !97309

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.6: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.6, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.6, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97276
  %i.ee = load i64, ptr %i.h, align 8, !dbg !97280, !noundef !2531 ; 2 uses
  %i.ef = icmp ult i64 %i.m, %i.ee, !dbg !97281
  br i1 %i.ef, label %bb.bn, label %bb.h, !dbg !97281

bb.bn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.6
  %i.eg = load ptr, ptr %i.n, align 8, !dbg !97277, !nonnull !2531, !noundef !2531
  %i.eh = getelementptr inbounds nuw [64 x i8], ptr %i.eg, i64 %i.m, !dbg !97278
  invoke void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEE8try_lockCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.eh)
          to label %bb.bo unwind label %.loopexit, !dbg !97279

bb.bo:                                            ; preds = %bb.bn
  %i.ei = load i64, ptr %i.a, align 8, !dbg !97276, !range !2686, !noundef !2531
  %i.ej = trunc nuw i64 %i.ei to i1, !dbg !97282
  br i1 %i.ej, label %bb.bp, label %bb.j, !dbg !97282

bb.bp:                                            ; preds = %bb.bo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97255), !dbg !97284
  %.val.i18.7 = load ptr, ptr %i.o, align 8, !dbg !97309, !alias.scope !97255 ; 4 uses
  %.val3.i19.7 = load i8, ptr %i.p, align 8, !dbg !97309, !range !2878, !alias.scope !97255, !noundef !2531 ; 2 uses
  %.not.i.i20.7 = icmp eq i8 %.val3.i19.7, 2, !dbg !97310
  br i1 %.not.i.i20.7, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.7, label %bb.bq, !dbg !97310

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i18.7) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i18.7, i64 4, !dbg !97311
  %i.el = trunc nuw i8 %.val3.i19.7 to i1, !dbg !97312
  br i1 %i.el, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.7, label %bb.br, !dbg !97312

bb.br:                                            ; preds = %bb.bq
  %i.em = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !97313, !noalias !97255
  %i.en = and i64 %i.em, 9223372036854775807, !dbg !97314
  %i.eo = icmp eq i64 %i.en, 0, !dbg !97314
  br i1 %i.eo, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.7, label %bb.bs, !dbg !97314, !prof !2818

bb.bs:                                            ; preds = %bb.br
  %i.ep = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #40
          to label %.noexc26.7 unwind label %.loopexit, !dbg !97315

.noexc26.7:                                       ; preds = %bb.bs
  br i1 %i.ep, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.7, label %bb.bt, !dbg !97316

bb.bt:                                            ; preds = %.noexc26.7
  store atomic i8 1, ptr %i.ek monotonic, align 1, !dbg !97317, !noalias !97255
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.7, !dbg !97318

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.7: ; preds = %bb.bt, %.noexc26.7, %bb.br, %bb.bq
  %i.eq = atomicrmw xchg ptr %.val.i18.7, i32 0 release, align 4, !dbg !97319, !noalias !97255
  %i.er = icmp eq i32 %i.eq, 2, !dbg !97320
  br i1 %i.er, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.7, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.7, !dbg !97320, !prof !2688

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.7: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.7
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i18.7)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.7 unwind label %.loopexit, !dbg !97309

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.7: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.7, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.7, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97276
  %i.es = load i64, ptr %i.h, align 8, !dbg !97280, !noundef !2531 ; 2 uses
  %i.et = icmp ult i64 %i.m, %i.es, !dbg !97281
  br i1 %i.et, label %bb.bu, label %bb.h, !dbg !97281

bb.bu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.7
  %i.eu = load ptr, ptr %i.n, align 8, !dbg !97277, !nonnull !2531, !noundef !2531
  %i.ev = getelementptr inbounds nuw [64 x i8], ptr %i.eu, i64 %i.m, !dbg !97278
  invoke void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEE8try_lockCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ev)
          to label %bb.bv unwind label %.loopexit, !dbg !97279

bb.bv:                                            ; preds = %bb.bu
  %i.ew = load i64, ptr %i.a, align 8, !dbg !97276, !range !2686, !noundef !2531
  %i.ex = trunc nuw i64 %i.ew to i1, !dbg !97282
  br i1 %i.ex, label %bb.bw, label %bb.j, !dbg !97282

bb.bw:                                            ; preds = %bb.bv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97256), !dbg !97284
  %.val.i18.8 = load ptr, ptr %i.o, align 8, !dbg !97309, !alias.scope !97256 ; 4 uses
  %.val3.i19.8 = load i8, ptr %i.p, align 8, !dbg !97309, !range !2878, !alias.scope !97256, !noundef !2531 ; 2 uses
  %.not.i.i20.8 = icmp eq i8 %.val3.i19.8, 2, !dbg !97310
  br i1 %.not.i.i20.8, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.8, label %bb.bx, !dbg !97310

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i18.8) ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i18.8, i64 4, !dbg !97311
  %i.ez = trunc nuw i8 %.val3.i19.8 to i1, !dbg !97312
  br i1 %i.ez, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8, label %bb.by, !dbg !97312

bb.by:                                            ; preds = %bb.bx
  %i.fa = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !97313, !noalias !97256
  %i.fb = and i64 %i.fa, 9223372036854775807, !dbg !97314
  %i.fc = icmp eq i64 %i.fb, 0, !dbg !97314
  br i1 %i.fc, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8, label %bb.bz, !dbg !97314, !prof !2818

bb.bz:                                            ; preds = %bb.by
  %i.fd = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #40
          to label %.noexc26.8 unwind label %.loopexit, !dbg !97315

.noexc26.8:                                       ; preds = %bb.bz
  br i1 %i.fd, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8, label %bb.ca, !dbg !97316

bb.ca:                                            ; preds = %.noexc26.8
  store atomic i8 1, ptr %i.ey monotonic, align 1, !dbg !97317, !noalias !97256
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8, !dbg !97318

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8: ; preds = %bb.ca, %.noexc26.8, %bb.by, %bb.bx
  %i.fe = atomicrmw xchg ptr %.val.i18.8, i32 0 release, align 4, !dbg !97319, !noalias !97256
  %i.ff = icmp eq i32 %i.fe, 2, !dbg !97320
  br i1 %i.ff, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.8, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.8, !dbg !97320, !prof !2688

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.8: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i18.8)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.8 unwind label %.loopexit, !dbg !97309

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.8: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.8, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.8, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97276
  %i.fg = load i64, ptr %i.h, align 8, !dbg !97280, !noundef !2531 ; 2 uses
  %i.fh = icmp ult i64 %i.m, %i.fg, !dbg !97281
  br i1 %i.fh, label %bb.cb, label %bb.h, !dbg !97281

bb.cb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.8
  %i.fi = load ptr, ptr %i.n, align 8, !dbg !97277, !nonnull !2531, !noundef !2531
  %i.fj = getelementptr inbounds nuw [64 x i8], ptr %i.fi, i64 %i.m, !dbg !97278
  invoke void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEE8try_lockCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.fj)
          to label %bb.cc unwind label %.loopexit, !dbg !97279

bb.cc:                                            ; preds = %bb.cb
  %i.fk = load i64, ptr %i.a, align 8, !dbg !97276, !range !2686, !noundef !2531
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !97282
  br i1 %i.fl, label %bb.cd, label %bb.j, !dbg !97282

bb.cd:                                            ; preds = %bb.cc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97257), !dbg !97284
  %.val.i18.9 = load ptr, ptr %i.o, align 8, !dbg !97309, !alias.scope !97257 ; 4 uses
  %.val3.i19.9 = load i8, ptr %i.p, align 8, !dbg !97309, !range !2878, !alias.scope !97257, !noundef !2531 ; 2 uses
  %.not.i.i20.9 = icmp eq i8 %.val3.i19.9, 2, !dbg !97310
  br i1 %.not.i.i20.9, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.9, label %bb.ce, !dbg !97310

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i18.9) ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.val.i18.9, i64 4, !dbg !97311
  %i.fn = trunc nuw i8 %.val3.i19.9 to i1, !dbg !97312
  br i1 %i.fn, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9, label %bb.cf, !dbg !97312

bb.cf:                                            ; preds = %bb.ce
  %i.fo = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !97313, !noalias !97257
  %i.fp = and i64 %i.fo, 9223372036854775807, !dbg !97314
  %i.fq = icmp eq i64 %i.fp, 0, !dbg !97314
  br i1 %i.fq, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9, label %bb.cg, !dbg !97314, !prof !2818

bb.cg:                                            ; preds = %bb.cf
  %i.fr = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #40
          to label %.noexc26.9 unwind label %.loopexit, !dbg !97315

.noexc26.9:                                       ; preds = %bb.cg
  br i1 %i.fr, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9, label %bb.ch, !dbg !97316

bb.ch:                                            ; preds = %.noexc26.9
  store atomic i8 1, ptr %i.fm monotonic, align 1, !dbg !97317, !noalias !97257
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9, !dbg !97318

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9: ; preds = %bb.ch, %.noexc26.9, %bb.cf, %bb.ce
  %i.fs = atomicrmw xchg ptr %.val.i18.9, i32 0 release, align 4, !dbg !97319, !noalias !97257
  %i.ft = icmp eq i32 %i.fs, 2, !dbg !97320
  br i1 %i.ft, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.9, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.9, !dbg !97320, !prof !2688

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.9: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i18.9)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.9 unwind label %.loopexit, !dbg !97309

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB22_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEINtB17_12TryLockErrorB12_EEECskY9G75ZWc4U_11polars_expr.exit28.9: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.9, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21.9, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97284
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(1400) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.f, !dbg !97271

.loopexit:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.9, %bb.cg, %bb.cb, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.8, %bb.bz, %bb.bu, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.7, %bb.bs, %bb.bn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.6, %bb.bl, %bb.bg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.5, %bb.be, %bb.az, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.4, %bb.ax, %bb.as, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.3, %bb.aq, %bb.al, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.2, %bb.aj, %bb.ae, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22.1, %bb.ac, %bb.x, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1G_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEEECskY9G75ZWc4U_11polars_expr.exit.sink.split.i22, %bb.g, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp:                               ; preds = %bb.d, %bb.h, %bb.c, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEECskY9G75ZWc4U_11polars_expr(ptr %1) #38
          to label %common.resume unwind label %bb.r, !dbg !97273
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1, i16 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !97321 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 10 uses
  %i.f = alloca [48 x i8], align 16               ; 6 uses
  %.sroa.082 = alloca [23 x i8], align 8          ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.677 = alloca [32 x i8], align 8          ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.468 = alloca [31 x i8], align 1          ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 3 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %i.q = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.537.sroa.0 = alloca [29 x i8], align 2   ; 4 uses
  %i.r = alloca [2 x i8], align 2                 ; 2 uses
  store i16 %2, ptr %i.r, align 2
  %i.s = load i8, ptr %1, align 16, !dbg !97535, !range !3100, !noundef !2531 ; 2 uses
  switch i8 %i.s, label %default.unreachable128 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %switch.lookup
    i8 20, label %switch.lookup129
    i8 21, label %bb.u
    i8 22, label %bb.v
    i8 23, label %bb.z
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %bb.af
    i8 27, label %bb.af
    i8 28, label %bb.ak
    i8 29, label %bb.al
    i8 30, label %bb.am
  ], !dbg !97536, !prof !97473

default.unreachable128:                           ; preds = %bb.am, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97537
  store i8 1, ptr %i.t, align 8, !dbg !97537
  store i64 18, ptr %0, align 8, !dbg !97537
  br label %bb.an, !dbg !97538

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97539
  store i8 7, ptr %i.u, align 8, !dbg !97539
  store i64 18, ptr %0, align 8, !dbg !97539
  br label %bb.an, !dbg !97540

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97541
  store i8 8, ptr %i.v, align 8, !dbg !97541
  store i64 18, ptr %0, align 8, !dbg !97541
  br label %bb.an, !dbg !97542

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97543
  store i8 9, ptr %i.w, align 8, !dbg !97543
  store i64 18, ptr %0, align 8, !dbg !97543
  br label %bb.an, !dbg !97544

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97545
  store i8 10, ptr %i.x, align 8, !dbg !97545
  store i64 18, ptr %0, align 8, !dbg !97545
  br label %bb.an, !dbg !97546

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97547
  store i8 11, ptr %i.y, align 8, !dbg !97547
  store i64 18, ptr %0, align 8, !dbg !97547
  br label %bb.an, !dbg !97548

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97549
  store i8 2, ptr %i.z, align 8, !dbg !97549
  store i64 18, ptr %0, align 8, !dbg !97549
  br label %bb.an, !dbg !97550

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97551
  store i8 3, ptr %i.aa, align 8, !dbg !97551
  store i64 18, ptr %0, align 8, !dbg !97551
  br label %bb.an, !dbg !97552

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97553
  store i8 4, ptr %i.ab, align 8, !dbg !97553
  store i64 18, ptr %0, align 8, !dbg !97553
  br label %bb.an, !dbg !97554

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97555
  store i8 5, ptr %i.ac, align 8, !dbg !97555
  store i64 18, ptr %0, align 8, !dbg !97555
  br label %bb.an, !dbg !97556

bb.l:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97557
  store i8 6, ptr %i.ad, align 8, !dbg !97557
  store i64 18, ptr %0, align 8, !dbg !97557
  br label %bb.an, !dbg !97558

bb.m:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97559
  store i8 12, ptr %i.ae, align 8, !dbg !97559
  store i64 18, ptr %0, align 8, !dbg !97559
  br label %bb.an, !dbg !97560

bb.n:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97561
  store i8 13, ptr %i.af, align 8, !dbg !97561
  store i64 18, ptr %0, align 8, !dbg !97561
  br label %bb.an, !dbg !97562

bb.o:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97563
  store i8 14, ptr %i.ag, align 8, !dbg !97563
  store i64 18, ptr %0, align 8, !dbg !97563
  br label %bb.an, !dbg !97564

bb.p:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !97565
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !97565, !noundef !2531 ; 2 uses
  %i.aj = add i64 %i.ai, -1, !dbg !97565
  %or.cond = icmp ult i64 %i.aj, 38, !dbg !97565
  br i1 %or.cond, label %bb.ap, label %bb.ao, !dbg !97565, !prof !3053

bb.q:                                             ; preds = %bb.a
  %.not111 = icmp eq i16 %2, 0, !dbg !97566
  %. = select i1 %.not111, i8 26, i8 39, !dbg !97567
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97568
  store i8 %., ptr %i.ak, align 8, !dbg !97568
  store i64 18, ptr %0, align 8, !dbg !97568
  br label %bb.an, !dbg !97569

bb.r:                                             ; preds = %bb.a
  %.not110 = icmp eq i16 %2, 0, !dbg !97570
  %.112 = select i1 %.not110, i8 24, i8 38, !dbg !97571
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97572
  store i8 %.112, ptr %i.al, align 8, !dbg !97572
  store i64 18, ptr %0, align 8, !dbg !97572
  br label %bb.an, !dbg !97573

bb.s:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97574
  store i8 24, ptr %i.am, align 8, !dbg !97574
  store i64 18, ptr %0, align 8, !dbg !97574
  br label %bb.an, !dbg !97575

bb.t:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97576
  store i8 16, ptr %i.an, align 8, !dbg !97576
  store i64 18, ptr %0, align 8, !dbg !97576
  br label %bb.an, !dbg !97577

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.537.sroa.0), !dbg !97578
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !97579
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !97579, !range !2878, !noundef !2531
  %switch.offset = xor i8 %i.ap, 3, !dbg !97580
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !97581 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !97581
  %i.as = load i8, ptr %i.ar, align 1, !dbg !97581, !range !3040, !noundef !2531 ; 2 uses
  switch i8 %i.as, label %bb.as [
    i8 -38, label %bb.aq
    i8 -40, label %bb.ar
  ], !dbg !97582

switch.lookup129:                                 ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !97583
  %i.au = load i8, ptr %i.at, align 1, !dbg !97583, !range !2878, !noundef !2531
  %switch.offset131 = xor i8 %i.au, 3, !dbg !97584
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97585
  store i8 20, ptr %i.av, align 8, !dbg !97585
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !97585
  store i8 %switch.offset131, ptr %.sroa.444.0..sroa_idx, align 1, !dbg !97585
  store i64 18, ptr %0, align 8, !dbg !97585
  br label %bb.an, !dbg !97586

bb.u:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97587
  store i8 19, ptr %i.aw, align 8, !dbg !97587
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !97587
  store i8 3, ptr %.sroa.448.0..sroa_idx, align 1, !dbg !97587
  store i64 18, ptr %0, align 8, !dbg !97587
  br label %bb.an, !dbg !97588

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !97589
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !97589
  %i.ay = load ptr, ptr %i.ax, align 16, !dbg !97589, !nonnull !2531, !noundef !2531
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType14to_arrow_field(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @305, i16 noundef %2), !dbg !97590
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !97591, !noalias !97479
  %i.az = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1401) 72, i64 noundef range(i64 8, 17) 8) #41, !dbg !97592, !noalias !97479 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null, !dbg !97593
  br i1 %i.ba, label %bb.w, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit114, !dbg !97594, !prof !2688

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #36
          to label %.noexc unwind label %bb.x, !dbg !97595

.noexc:                                           ; preds = %bb.w
  unreachable, !dbg !97595

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.q) #38
          to label %common.resume unwind label %bb.y, !dbg !97596

bb.y:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !97597
  unreachable, !dbg !97597

common.resume:                                    ; preds = %bb.bw, %bb.ay, %bb.ax, %bb.bm, %bb.bl, %bb.bh, %bb.av, %bb.ah, %bb.ab, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.bh ], [ %i.bb, %bb.x ], [ %i.bk, %bb.ab ], [ %i.bq, %bb.ah ], [ %i.co, %bb.av ], [ %i.ct, %bb.ax ], [ %.pn, %bb.bw ], [ %i.ct, %bb.ay ], [ %i.dc, %bb.bm ], [ %i.dc, %bb.bl ]
  resume { ptr, i32 } %common.resume.op, !dbg !97598

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit114: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !97599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !97600
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !97601
  %i.be = load i64, ptr %i.bd, align 8, !dbg !97601, !noundef !2531
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97602
  store i8 28, ptr %i.bf, align 8, !dbg !97602
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !97602
  store i64 %i.be, ptr %.sroa.452.0..sroa_idx, align 8, !dbg !97602
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !97602
  store ptr %i.az, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !97602
  store i64 18, ptr %0, align 8, !dbg !97602
  br label %bb.an, !dbg !97603

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !97604
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !97604
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !97604, !nonnull !2531, !noundef !2531
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType14to_arrow_field(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.bh, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @305, i16 noundef %2), !dbg !97605
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !97606, !noalias !97480
  %i.bi = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1401) 72, i64 noundef range(i64 8, 17) 8) #41, !dbg !97607, !noalias !97480 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null, !dbg !97608
  br i1 %i.bj, label %bb.aa, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !97609, !prof !2688

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #36
          to label %.noexc115 unwind label %bb.ab, !dbg !97610

.noexc115:                                        ; preds = %bb.aa
  unreachable, !dbg !97610

bb.ab:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p) #38
          to label %common.resume unwind label %bb.ac, !dbg !97611

bb.ac:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !97612
  unreachable, !dbg !97612

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !97613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !97614
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97615
  store i8 29, ptr %i.bm, align 8, !dbg !97615
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !97615
  store ptr %i.bi, ptr %.sroa.457.0..sroa_idx, align 8, !dbg !97615
  store i64 18, ptr %0, align 8, !dbg !97615
  br label %bb.an, !dbg !97616

bb.ad:                                            ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97617
  tail call void @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object8registry24get_object_physical_type(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bn), !dbg !97618
  store i64 18, ptr %0, align 8, !dbg !97617
  br label %bb.an, !dbg !97619

bb.ae:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97620
  store i8 0, ptr %i.bo, align 8, !dbg !97620
  store i64 18, ptr %0, align 8, !dbg !97620
  br label %bb.an, !dbg !97621

bb.af:                                            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !97622
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12cat_physical(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !97623
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97481), !dbg !97624
  %i.bp = load i64, ptr %i.o, align 8, !dbg !97625, !range !3034, !alias.scope !97481, !noalias !97482, !noundef !2531
  %.not.i = icmp eq i64 %i.bp, 18, !dbg !97625
  br i1 %.not.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit, label %bb.ag, !dbg !97626, !prof !2818

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97627, !noalias !97483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !97627, !noalias !97482
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @252, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #36
          to label %bb.ai unwind label %bb.ah, !dbg !97628, !noalias !97481

bb.ah:                                            ; preds = %bb.ag
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #38
          to label %common.resume unwind label %bb.aj, !dbg !97629, !noalias !97481

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !97630, !noalias !97481
  unreachable, !dbg !97630

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !97631
  %i.bt = load i8, ptr %i.bs, align 8, !dbg !97631, !range !2878, !alias.scope !97481, !noalias !97482, !noundef !2531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !97632
  %.not108 = icmp eq i16 %2, 0, !dbg !97633
  %.113 = select i1 %.not108, i8 26, i8 39, !dbg !97634
  store i8 %.113, ptr %i.n, align 8, !dbg !97635
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !97636, !noalias !97484
  %i.bu = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1401) 32, i64 noundef range(i64 8, 17) 8) #41, !dbg !97637, !noalias !97484 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null, !dbg !97638
  br i1 %i.bv, label %bb.au, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !97639, !prof !2688

bb.ak:                                            ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !97640
  %i.bx = load ptr, ptr %i.bw, align 16, !dbg !97640, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !97641
  %i.bz = load i64, ptr %i.by, align 8, !dbg !97641, !noundef !2531
  %i.ca = getelementptr inbounds nuw [80 x i8], ptr %i.bx, i64 %i.bz, !dbg !97642
  store ptr %i.bx, ptr %i.l, align 8, !dbg !97643
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !97643
  store ptr %i.ca, ptr %i.cb, align 8, !dbg !97643
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !97643
  store ptr %i.r, ptr %i.cc, align 8, !dbg !97643
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCNvMs4_NtB3L_5dtypeNtB4J_8DataType12try_to_arrow0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l), !dbg !97644
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.468), !dbg !97645
  %.sroa.468.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.468, i64 7, !dbg !97645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.468.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !97645
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97646
  store i8 30, ptr %i.cd, align 8, !dbg !97646
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !97646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.468.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.468, i64 31, i1 false), !dbg !97646
  store i64 18, ptr %0, align 8, !dbg !97646
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.468), !dbg !97647
  br label %bb.an, !dbg !97648

bb.al:                                            ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !97649 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !97650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !97651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !97651
  call void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB5_21ExtensionTypeInstance4name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce), !dbg !97652
  call void @_RNvXss_Cs7VARH73bmU_11compact_strNtB5_13CompactStringINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i), !dbg !97653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !97654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !97513
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.677), !dbg !97513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !97513
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !97513
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !97513, !nonnull !2531, !noundef !2531
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cg, i16 noundef %2)
          to label %bb.az unwind label %bb.ax, !dbg !97655

bb.am:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !97656
  %i.ci = load i128, ptr %i.ch, align 16, !dbg !97656, !range !3099, !noundef !2531
  %i.cj = trunc nuw nsw i128 %i.ci to i64, !dbg !97656
  switch i64 %i.cj, label %default.unreachable128 [
    i64 0, label %bb.bn
    i64 1, label %bb.cc
    i64 2, label %bb.bu
    i64 3, label %bb.bv
  ], !dbg !97657

bb.an:                                            ; preds = %bb.cc, %bb.cb, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCskY9G75ZWc4U_11polars_expr.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit120, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE3newCskY9G75ZWc4U_11polars_expr.exit, %switch.lookup129, %bb.aq, %bb.r, %bb.q, %bb.ap, %bb.ak, %bb.ae, %bb.ad, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit, %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE3newCskY9G75ZWc4U_11polars_expr.exit114, %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !97658

bb.ao:                                            ; preds = %bb.p
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @302, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #35, !dbg !97659
  unreachable, !dbg !97659

bb.ap:                                            ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !97660
  %i.cl = load i64, ptr %i.ck, align 16, !dbg !97660, !noundef !2531
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97661
  store i8 33, ptr %i.cm, align 8, !dbg !97661
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !97661
  store i64 %i.ai, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !97661
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !97661
  store i64 %i.cl, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !97661
  store i64 18, ptr %0, align 8, !dbg !97661
  br label %bb.an, !dbg !97662

bb.aq:                                            ; preds = %switch.lookup, %bb.at
  %.sroa.440.0 = phi i8 [ %.sroa.491.0.copyload, %bb.at ], [ %i.as, %switch.lookup ], !dbg !97663
  %.sroa.537.sroa.0.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.537.sroa.0, i64 6, !dbg !97578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(23) %.sroa.537.sroa.0.6..sroa_idx, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !97578
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97664
  store i8 15, ptr %i.cn, align 8, !dbg !97664
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !97664
  store i8 %switch.offset, ptr %.sroa.436.0..sroa_idx, align 1, !dbg !97664
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !97664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(29) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(29) %.sroa.537.sroa.0, i64 29, i1 false), !dbg !97664
  %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39, !dbg !97664
  store i8 %.sroa.440.0, ptr %.sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx, align 1, !dbg !97664
  store i64 18, ptr %0, align 8, !dbg !97664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537.sroa.0), !dbg !97665
  br label %bb.an, !dbg !97666

bb.ar:                                            ; preds = %switch.lookup
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq) #40, !dbg !97667
  br label %bb.at, !dbg !97667

bb.as:                                            ; preds = %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !dbg !97668
  br label %bb.at, !dbg !97669

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !97670
  %.sroa.491.0.copyload = load i8, ptr %.sroa.491.0..sroa_idx, align 1, !dbg !97670
  br label %bb.aq, !dbg !97671

bb.au:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #36
          to label %.noexc117 unwind label %bb.av, !dbg !97672

.noexc117:                                        ; preds = %bb.au
  unreachable, !dbg !97672

bb.av:                                            ; preds = %bb.au
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n) #38
          to label %common.resume unwind label %bb.aw, !dbg !97673

bb.aw:                                            ; preds = %bb.av
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !97674
  unreachable, !dbg !97674

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCs80wj1cxFixi_12polars_dtype11categorical19CategoricalPhysicalNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit
  %switch.offset133 = add nuw nsw i8 %i.bt, 5, !dbg !97675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !97676
  %i.cq = icmp eq i8 %i.s, 27, !dbg !97677
  %i.cr = zext i1 %i.cq to i8, !dbg !97678
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97679
  store i8 32, ptr %i.cs, align 8, !dbg !97679
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !97679
  store i8 %switch.offset133, ptr %.sroa.463.0..sroa_idx, align 1, !dbg !97679
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10, !dbg !97679
  store i8 %i.cr, ptr %.sroa.564.0..sroa_idx, align 2, !dbg !97679
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !97679
  store ptr %i.bu, ptr %.sroa.666.0..sroa_idx, align 8, !dbg !97679
  store i64 18, ptr %0, align 8, !dbg !97679
  br label %bb.an, !dbg !97680

bb.ax:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 23, !dbg !97681
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !97681, !range !2800, !alias.scope !97512, !noundef !2531
  %i.cw = icmp eq i8 %i.cv, -40, !dbg !97682
  br i1 %i.cw, label %bb.ay, label %common.resume, !dbg !97682, !prof !2688

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.bk, !dbg !97683

bb.az:                                            ; preds = %bb.al
  %i.cx = load i64, ptr %i.g, align 8, !dbg !97684, !range !3034, !noundef !2531 ; 2 uses
  %.not = icmp eq i64 %i.cx, 18, !dbg !97684
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !97685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.677, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false), !dbg !97685
  br i1 %.not, label %bb.bc, label %bb.ba, !dbg !97686
end_hunk_1
begin_hunk_2_@llvm.umax.i8
!97417 = distinct !DILocation(line: 810, column: 1, scope: !561, inlinedAt: !97416)
!97418 = distinct !DILocation(line: 810, column: 1, scope: !560, inlinedAt: !97417)
!97419 = distinct !DILocation(line: 810, column: 1, scope: !559, inlinedAt: !97418)
!97420 = distinct !DILocation(line: 779, column: 17, scope: !558, inlinedAt: !97419)
!97421 = distinct !DILocation(line: 447, column: 30, scope: !557, inlinedAt: !97420)
!97422 = distinct !{!97422, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr"}
!97423 = distinct !{!97423, !97422, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr: argument 0"}
!97424 = distinct !{!97424, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECskY9G75ZWc4U_11polars_expr"}
!97425 = distinct !{!97425, !97424, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECskY9G75ZWc4U_11polars_expr: argument 0"}
!97426 = distinct !{!97426, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECskY9G75ZWc4U_11polars_expr"}
!97427 = distinct !{!97427, !97426, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECskY9G75ZWc4U_11polars_expr: argument 0"}
!97428 = distinct !{!97428, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!97429 = distinct !{!97429, !97428, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!97430 = distinct !DISubprogram(name: "map<alloc::borrow::Cow<str>, polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::{impl#6}::try_to_arrow::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEE3mapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB2m_8DataType12try_to_arrows_0ECskY9G75ZWc4U_11polars_expr", scope: !2589, file: !2587, line: 1160, type: !2532, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97431 = distinct !DILexicalBlock(scope: !97430, file: !2587, line: 1165, column: 13)
!97432 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB7_8DataType12try_to_arrows_0CskY9G75ZWc4U_11polars_expr", scope: !97525, file: !3477, line: 1058, type: !2532, scopeLine: 1058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97433 = distinct !{!97433, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCskY9G75ZWc4U_11polars_expr"}
!97434 = distinct !{!97434, !97433, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCskY9G75ZWc4U_11polars_expr: argument 0"}
!97435 = distinct !DISubprogram(name: "new<polars_arrow::datatypes::ExtensionType>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCskY9G75ZWc4U_11polars_expr", scope: !3398, file: !2918, line: 284, type: !2532, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97436 = distinct !DILocation(line: 1054, column: 66, scope: !97383)
!97437 = distinct !DILexicalBlock(scope: !97435, file: !2918, line: 286, column: 9)
!97438 = distinct !DILocation(line: 1059, column: 17, scope: !97383)
!97439 = distinct !DILocation(line: 810, column: 1, scope: !561, inlinedAt: !97438)
!97440 = distinct !DILocation(line: 810, column: 1, scope: !560, inlinedAt: !97439)
!97441 = distinct !DILocation(line: 810, column: 1, scope: !559, inlinedAt: !97440)
!97442 = distinct !DILocation(line: 779, column: 17, scope: !558, inlinedAt: !97441)
!97443 = distinct !DILocation(line: 447, column: 30, scope: !557, inlinedAt: !97442)
!97444 = distinct !{!97444, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr"}
!97445 = distinct !{!97445, !97444, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr: argument 0"}
!97446 = distinct !{!97446, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECskY9G75ZWc4U_11polars_expr"}
!97447 = distinct !{!97447, !97446, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECskY9G75ZWc4U_11polars_expr: argument 0"}
!97448 = distinct !{!97448, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECskY9G75ZWc4U_11polars_expr"}
!97449 = distinct !{!97449, !97448, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECskY9G75ZWc4U_11polars_expr: argument 0"}
!97450 = distinct !{!97450, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!97451 = distinct !{!97451, !97450, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!97452 = distinct !DILexicalBlock(scope: !97386, file: !3477, line: 1066, column: 21)
!97453 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs2u_NtNtCscgRAwXFJnXP_4core7convert3numlINtB8_7TryFromnE8try_from", scope: !97528, file: !3260, line: 317, type: !2532, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97454 = distinct !DILexicalBlock(scope: !97453, file: !3260, line: 318, column: 17)
!97455 = distinct !DILexicalBlock(scope: !97454, file: !3260, line: 319, column: 17)
!97456 = distinct !DISubprogram(name: "materialize_dyn_int", linkageName: "_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int", scope: !97530, file: !97529, line: 617, type: !2532, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97457 = distinct !DILexicalBlock(scope: !97456, file: !97529, line: 620, column: 37)
!97458 = distinct !DILocation(line: 1067, column: 32, scope: !97452)
!97459 = distinct !DILocation(line: 620, column: 20, scope: !97457, inlinedAt: !97458)
!97460 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs2v_NtNtCscgRAwXFJnXP_4core7convert3numxINtB8_7TryFromnE8try_from", scope: !97531, file: !3260, line: 317, type: !2532, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97461 = distinct !DILexicalBlock(scope: !97460, file: !3260, line: 318, column: 17)
!97462 = distinct !DILexicalBlock(scope: !97461, file: !3260, line: 319, column: 17)
!97463 = distinct !DILexicalBlock(scope: !97456, file: !97529, line: 623, column: 37)
!97464 = distinct !DILocation(line: 623, column: 20, scope: !97463, inlinedAt: !97458)
!97465 = distinct !{!97465, !"_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int"}
!97466 = distinct !{!97466, !97465, !"_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int: argument 0"}
!97467 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs38_NtNtCscgRAwXFJnXP_4core7convert3numyINtB8_7TryFromnE8try_from", scope: !97534, file: !3260, line: 317, type: !2532, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97468 = distinct !DILexicalBlock(scope: !97467, file: !3260, line: 318, column: 17)
!97469 = distinct !DILexicalBlock(scope: !97468, file: !3260, line: 319, column: 17)
!97470 = distinct !DILexicalBlock(scope: !97456, file: !97529, line: 626, column: 37)
!97471 = distinct !DILocation(line: 626, column: 20, scope: !97470, inlinedAt: !97458)
!97472 = distinct !DILexicalBlock(scope: !97386, file: !3477, line: 1062, column: 17)
!97473 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!97474 = !DINamespace(name: "TimeUnit", scope: !3481)
!97475 = !DILocation(line: 1008, column: 22, scope: !97325)
!97476 = !DILocation(line: 1009, column: 20, scope: !97325)
!97477 = !DILocation(line: 1394, column: 14, scope: !97328, inlinedAt: !97476)
!97478 = !DILocation(line: 1011, column: 63, scope: !97329)
!97479 = !{!97332}
!97480 = !{!97343}
!97481 = !{!97351}
!97482 = !{!97352}
!97483 = !{!97351, !97352}
!97484 = !{!97356}
!97485 = !DILocation(line: 1046, column: 30, scope: !97366)
!97486 = !DILocation(line: 3756, column: 14, scope: !97367, inlinedAt: !97485)
!97487 = !DILocation(line: 1841, column: 76, scope: !97368, inlinedAt: !97486)
!97488 = !DILocation(line: 1942, column: 18, scope: !97369, inlinedAt: !97487)
!97489 = !DILocation(line: 296, column: 20, scope: !97370, inlinedAt: !97488)
!97490 = !DILocation(line: 609, column: 14, scope: !97371, inlinedAt: !97489)
!97491 = !DILocation(line: 1047, column: 22, scope: !97366)
!97492 = !DILocation(line: 1041, column: 9, scope: !97373, inlinedAt: !97491)
!97493 = !DILocation(line: 102, column: 78, scope: !97376, inlinedAt: !97492)
!97494 = !DILocation(line: 1048, column: 22, scope: !97366)
!97495 = !DILocation(line: 836, column: 9, scope: !97378, inlinedAt: !97494)
!97496 = !DILocation(line: 1049, column: 22, scope: !97366)
!97497 = !DILocation(line: 2104, column: 9, scope: !97380, inlinedAt: !97496)
!97498 = !DILocation(line: 3892, column: 9, scope: !97381, inlinedAt: !97497)
!97499 = !DINamespace(name: "{impl#12}", scope: !2795)
!97500 = !DILocation(line: 1056, column: 38, scope: !97383)
!97501 = !DILocation(line: 778, column: 9, scope: !97385, inlinedAt: !97500)
!97502 = !DILocation(line: 1009, column: 31, scope: !97325)
!97503 = !DILocation(line: 2164, column: 14, scope: !97388, inlinedAt: !97502)
!97504 = !DILexicalBlockFile(scope: !97391, file: !2590, discriminator: 2)
!97505 = !DILexicalBlockFile(scope: !97390, file: !2587, discriminator: 2)
!97506 = !DILocation(line: 1165, column: 29, scope: !97505, inlinedAt: !97503)
!97507 = !DILocation(line: 250, column: 5, scope: !97504, inlinedAt: !97506)
!97508 = !DILocation(line: 20, column: 10, scope: !97392, inlinedAt: !97507)
!97509 = !DILocation(line: 1955, column: 21, scope: !97393, inlinedAt: !97508)
!97510 = !DILocation(line: 749, column: 22, scope: !97389, inlinedAt: !97509)
!97511 = !DILexicalBlockFile(scope: !97396, file: !3477, discriminator: 0)
!97512 = !{!97410, !97408, !97406, !97404}
!97513 = !DILocation(line: 1057, column: 28, scope: !97383)
!97514 = !DILexicalBlockFile(scope: !97415, file: !3477, discriminator: 2)
!97515 = !DILocation(line: 1057, column: 28, scope: !97514)
!97516 = !{!97429, !97427, !97425, !97423}
!97517 = !DILexicalBlockFile(scope: !97321, file: !2578, discriminator: 0)
!97518 = !DILocation(line: 1058, column: 56, scope: !97383)
!97519 = !DILexicalBlockFile(scope: !97385, file: !2872, discriminator: 2)
!97520 = !DILexicalBlockFile(scope: !97431, file: !2587, discriminator: 4)
!97521 = !DILocation(line: 1165, column: 29, scope: !97520, inlinedAt: !97518)
!97522 = !DILocation(line: 1058, column: 66, scope: !97432, inlinedAt: !97521)
!97523 = !DILocation(line: 778, column: 9, scope: !97519, inlinedAt: !97522)
!97524 = !DINamespace(name: "{impl#6}", scope: !3478)
!97525 = !DINamespace(name: "try_to_arrow", scope: !97524)
!97526 = !{!97434}
!97527 = !{!97451, !97449, !97447, !97445}
!97528 = !DINamespace(name: "{impl#156}", scope: !3261)
!97529 = !DIFile(filename: "crates/polars-core/src/utils/supertype.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "ee8b0a4d297a90caded07ce0d5b1a72e")
!97530 = !DINamespace(name: "supertype", scope: !3440)
!97531 = !DINamespace(name: "{impl#157}", scope: !3261)
!97532 = !{!97466}
!97533 = !DILexicalBlockFile(scope: !97456, file: !2578, discriminator: 0)
!97534 = !DINamespace(name: "{impl#196}", scope: !3261)
!97535 = !DILocation(line: 970, column: 15, scope: !97321)
!97536 = !DILocation(line: 970, column: 9, scope: !97321)
!97537 = !DILocation(line: 971, column: 24, scope: !97321)
!97538 = !DILocation(line: 971, column: 49, scope: !97321)
!97539 = !DILocation(line: 972, column: 22, scope: !97321)
!97540 = !DILocation(line: 972, column: 45, scope: !97321)
!97541 = !DILocation(line: 973, column: 23, scope: !97321)
!97542 = !DILocation(line: 973, column: 47, scope: !97321)
!97543 = !DILocation(line: 974, column: 23, scope: !97321)
!97544 = !DILocation(line: 974, column: 47, scope: !97321)
!97545 = !DILocation(line: 975, column: 23, scope: !97321)
!97546 = !DILocation(line: 975, column: 47, scope: !97321)
!97547 = !DILocation(line: 976, column: 24, scope: !97321)
!97548 = !DILocation(line: 976, column: 49, scope: !97321)
!97549 = !DILocation(line: 977, column: 21, scope: !97321)
!97550 = !DILocation(line: 977, column: 43, scope: !97321)
!97551 = !DILocation(line: 978, column: 22, scope: !97321)
!97552 = !DILocation(line: 978, column: 45, scope: !97321)
!97553 = !DILocation(line: 979, column: 22, scope: !97321)
!97554 = !DILocation(line: 979, column: 45, scope: !97321)
!97555 = !DILocation(line: 980, column: 22, scope: !97321)
!97556 = !DILocation(line: 980, column: 45, scope: !97321)
!97557 = !DILocation(line: 981, column: 23, scope: !97321)
!97558 = !DILocation(line: 981, column: 47, scope: !97321)
!97559 = !DILocation(line: 982, column: 24, scope: !97321)
!97560 = !DILocation(line: 982, column: 49, scope: !97321)
!97561 = !DILocation(line: 983, column: 24, scope: !97321)
!97562 = !DILocation(line: 983, column: 49, scope: !97321)
!97563 = !DILocation(line: 984, column: 24, scope: !97321)
!97564 = !DILocation(line: 984, column: 49, scope: !97321)
!97565 = !DILocation(line: 987, column: 25, scope: !97322)
!97566 = !DILocation(line: 991, column: 29, scope: !97321)
!97567 = !DILocation(line: 991, column: 26, scope: !97321)
!97568 = !DILocation(line: 996, column: 17, scope: !97323)
!97569 = !DILocation(line: 997, column: 13, scope: !97321)
!97570 = !DILocation(line: 999, column: 29, scope: !97321)
!97571 = !DILocation(line: 999, column: 26, scope: !97321)
!97572 = !DILocation(line: 1004, column: 17, scope: !97324)
!97573 = !DILocation(line: 1005, column: 13, scope: !97321)
!97574 = !DILocation(line: 1052, column: 29, scope: !97321)
!97575 = !DILocation(line: 1052, column: 58, scope: !97321)
!97576 = !DILocation(line: 1006, column: 21, scope: !97321)
!97577 = !DILocation(line: 1006, column: 45, scope: !97321)
!97578 = !DILocation(line: 1007, column: 38, scope: !97325)
!97579 = !DILocation(line: 1008, column: 17, scope: !97325)
!97580 = !DILocation(line: 54, column: 9, scope: !97326, inlinedAt: !97475)
!97581 = !DILocation(line: 745, column: 15, scope: !97327, inlinedAt: !97477)
!97582 = !DILocation(line: 745, column: 9, scope: !97327, inlinedAt: !97477)
!97583 = !DILocation(line: 1011, column: 58, scope: !97329)
!97584 = !DILocation(line: 54, column: 9, scope: !97326, inlinedAt: !97478)
!97585 = !DILocation(line: 1011, column: 31, scope: !97329)
!97586 = !DILocation(line: 1011, column: 74, scope: !97321)
!97587 = !DILocation(line: 1012, column: 21, scope: !97321)
!97588 = !DILocation(line: 1012, column: 72, scope: !97321)
!97589 = !DILocation(line: 1015, column: 26, scope: !97330)
!97590 = !DILocation(line: 1015, column: 29, scope: !97330)
!97591 = !DILocation(line: 99, column: 9, scope: !1994, inlinedAt: !97339)
!97592 = !DILocation(line: 101, column: 9, scope: !1994, inlinedAt: !97339)
!97593 = !DILocation(line: 248, column: 11, scope: !1999, inlinedAt: !97335)
!97594 = !DILocation(line: 248, column: 5, scope: !1999, inlinedAt: !97335)
!97595 = !DILocation(line: 250, column: 19, scope: !1999, inlinedAt: !97335)
!97596 = !DILocation(line: 292, column: 5, scope: !97333, inlinedAt: !97334)
!97597 = !DILocation(line: 284, column: 5, scope: !97333, inlinedAt: !97334)
!97598 = !DILocation(line: 0, scope: !97321)
!97599 = !DILocation(line: 289, column: 56, scope: !97340, inlinedAt: !97334)
!97600 = !DILocation(line: 1015, column: 75, scope: !97330)
!97601 = !DILocation(line: 1016, column: 17, scope: !97330)
!97602 = !DILocation(line: 1014, column: 33, scope: !97330)
!97603 = !DILocation(line: 1017, column: 14, scope: !97321)
!97604 = !DILocation(line: 1019, column: 17, scope: !97341)
!97605 = !DILocation(line: 1019, column: 20, scope: !97341)
!97606 = !DILocation(line: 99, column: 9, scope: !1994, inlinedAt: !97349)
!97607 = !DILocation(line: 101, column: 9, scope: !1994, inlinedAt: !97349)
!97608 = !DILocation(line: 248, column: 11, scope: !1999, inlinedAt: !97345)
!97609 = !DILocation(line: 248, column: 5, scope: !1999, inlinedAt: !97345)
!97610 = !DILocation(line: 250, column: 19, scope: !1999, inlinedAt: !97345)
!97611 = !DILocation(line: 292, column: 5, scope: !97333, inlinedAt: !97344)
!97612 = !DILocation(line: 284, column: 5, scope: !97333, inlinedAt: !97344)
!97613 = !DILocation(line: 289, column: 56, scope: !97340, inlinedAt: !97344)
!97614 = !DILocation(line: 1020, column: 13, scope: !97341)
!97615 = !DILocation(line: 1018, column: 25, scope: !97341)
!97616 = !DILocation(line: 1020, column: 15, scope: !97321)
!97617 = !DILocation(line: 1023, column: 26, scope: !97321)
!97618 = !DILocation(line: 1023, column: 29, scope: !97321)
!97619 = !DILocation(line: 1023, column: 55, scope: !97321)
!97620 = !DILocation(line: 1021, column: 21, scope: !97321)
!97621 = !DILocation(line: 1021, column: 43, scope: !97321)
!97622 = !DILocation(line: 1026, column: 40, scope: !97321)
!97623 = !DILocation(line: 1026, column: 45, scope: !97321)
!97624 = !DILocation(line: 1026, column: 60, scope: !97321)
!97625 = !DILocation(line: 1231, column: 15, scope: !2125, inlinedAt: !97353)
!97626 = !DILocation(line: 1231, column: 9, scope: !2125, inlinedAt: !97353)
!97627 = !DILocation(line: 1233, column: 17, scope: !2125, inlinedAt: !97353)
!97628 = !DILocation(line: 1233, column: 23, scope: !2126, inlinedAt: !97353)
!97629 = !DILocation(line: 1233, column: 86, scope: !2125, inlinedAt: !97353)
!97630 = !DILocation(line: 1227, column: 5, scope: !2125, inlinedAt: !97353)
!97631 = !DILocation(line: 1232, column: 16, scope: !2125, inlinedAt: !97353)
!97632 = !DILocation(line: 1026, column: 67, scope: !97321)
!97633 = !DILocation(line: 1032, column: 33, scope: !97354)
!97634 = !DILocation(line: 1032, column: 30, scope: !97354)
!97635 = !DILocation(line: 0, scope: !97354)
!97636 = !DILocation(line: 99, column: 9, scope: !1994, inlinedAt: !97364)
!97637 = !DILocation(line: 101, column: 9, scope: !1994, inlinedAt: !97364)
!97638 = !DILocation(line: 248, column: 11, scope: !1999, inlinedAt: !97360)
!97639 = !DILocation(line: 248, column: 5, scope: !1999, inlinedAt: !97360)
!97640 = !DILocation(line: 614, column: 9, scope: !97365, inlinedAt: !97490)
!97641 = !DILocation(line: 1841, column: 86, scope: !97368, inlinedAt: !97486)
!97642 = !DILocation(line: 961, column: 18, scope: !97372, inlinedAt: !97493)
!97643 = !DILocation(line: 69, column: 9, scope: !97377, inlinedAt: !97495)
!97644 = !DILocation(line: 33, column: 9, scope: !97379, inlinedAt: !97498)
!97645 = !DILocation(line: 1050, column: 20, scope: !97382)
!97646 = !DILocation(line: 1050, column: 17, scope: !97382)
!97647 = !DILocation(line: 1050, column: 49, scope: !97382)
!97648 = !DILocation(line: 1051, column: 13, scope: !97321)
!97649 = !DILocation(line: 1054, column: 23, scope: !97321)
!97650 = !DILocation(line: 1055, column: 17, scope: !97383)
!97651 = !DILocation(line: 1056, column: 27, scope: !97383)
!97652 = !DILocation(line: 1056, column: 31, scope: !97383)
!97653 = !DILocation(line: 175, column: 14, scope: !97384, inlinedAt: !97501)
!97654 = !DILocation(line: 1056, column: 43, scope: !97383)
!97655 = !DILocation(line: 1057, column: 34, scope: !97383)
!97656 = !DILocation(line: 1062, column: 32, scope: !97386)
!97657 = !DILocation(line: 1062, column: 26, scope: !97386)
!97658 = !DILocation(line: 1073, column: 6, scope: !97321)
!97659 = !DILocation(line: 987, column: 17, scope: !97322)
!97660 = !DILocation(line: 988, column: 55, scope: !97322)
!97661 = !DILocation(line: 988, column: 17, scope: !97322)
!97662 = !DILocation(line: 989, column: 13, scope: !97321)
!97663 = !DILocation(line: 0, scope: !97387, inlinedAt: !97503)
!97664 = !DILocation(line: 1007, column: 35, scope: !97325)
!97665 = !DILocation(line: 1010, column: 14, scope: !97325)
!97666 = !DILocation(line: 1010, column: 14, scope: !97321)
!97667 = !DILocation(line: 745, column: 13, scope: !97389, inlinedAt: !97509)
!97668 = !DILocation(line: 1721, column: 9, scope: !97394, inlinedAt: !97510)
!97669 = !DILocation(line: 744, column: 9, scope: !97389, inlinedAt: !97509)
!97670 = !DILocation(line: 1955, column: 9, scope: !97393, inlinedAt: !97508)
!97671 = !DILocation(line: 1165, column: 33, scope: !97387, inlinedAt: !97503)
!97672 = !DILocation(line: 250, column: 19, scope: !1999, inlinedAt: !97360)
!97673 = !DILocation(line: 292, column: 5, scope: !97357, inlinedAt: !97359)
!97674 = !DILocation(line: 284, column: 5, scope: !97357, inlinedAt: !97359)
!97675 = !DILocation(line: 1026, column: 34, scope: !97321)
!97676 = !DILocation(line: 289, column: 56, scope: !97395, inlinedAt: !97359)
!97677 = !DILocation(line: 1041, column: 21, scope: !97511)
!97678 = !DILocation(line: 1038, column: 20, scope: !97358)
!97679 = !DILocation(line: 1038, column: 17, scope: !97358)
!97680 = !DILocation(line: 1043, column: 13, scope: !97321)
!97681 = !DILocation(line: 612, column: 33, scope: !556, inlinedAt: !97402)
!97682 = !DILocation(line: 779, column: 12, scope: !558, inlinedAt: !97400)
!97683 = !DILocation(line: 780, column: 13, scope: !558, inlinedAt: !97400)
!97684 = !DILocation(line: 2173, column: 15, scope: !97411, inlinedAt: !97513)
!97685 = !DILocation(line: 0, scope: !97411, inlinedAt: !97513)
!97686 = !DILocation(line: 2173, column: 9, scope: !97411, inlinedAt: !97513)
!97687 = !DILocation(line: 2175, column: 17, scope: !97411, inlinedAt: !97513)
!97688 = !DILocation(line: 2189, column: 23, scope: !97413, inlinedAt: !97515)
!97689 = !DILocation(line: 1057, column: 60, scope: !97383)
!97690 = !DILocation(line: 1059, column: 17, scope: !97383)
!97691 = !DILocation(line: 612, column: 33, scope: !556, inlinedAt: !97421)
!97692 = !DILocation(line: 779, column: 12, scope: !558, inlinedAt: !97419)
!97693 = !DILocation(line: 780, column: 13, scope: !558, inlinedAt: !97419)
!97694 = !DILocation(line: 1060, column: 13, scope: !97383)
!97695 = !DILocation(line: 1060, column: 15, scope: !97321)
!97696 = !DILocation(line: 0, scope: !97517)
!97697 = !DILocation(line: 1058, column: 31, scope: !97383)
!97698 = !DILocation(line: 1058, column: 35, scope: !97383)
!97699 = !DILocation(line: 1164, column: 15, scope: !97430, inlinedAt: !97518)
!97700 = !DILocation(line: 1164, column: 9, scope: !97430, inlinedAt: !97518)
!97701 = !DILocation(line: 175, column: 14, scope: !97384, inlinedAt: !97523)
!97702 = !DILocation(line: 0, scope: !97430, inlinedAt: !97518)
!97703 = !DILocation(line: 286, column: 19, scope: !97435, inlinedAt: !97436)
!97704 = !DILocation(line: 292, column: 5, scope: !97435, inlinedAt: !97436)
!97705 = !DILocation(line: 284, column: 5, scope: !97435, inlinedAt: !97436)
!97706 = !DILocation(line: 289, column: 56, scope: !97437, inlinedAt: !97436)
!97707 = !DILocation(line: 1054, column: 38, scope: !97383)
!97708 = !DILocation(line: 175, column: 9, scope: !97384, inlinedAt: !97523)
!97709 = !DILocation(line: 175, column: 32, scope: !97384, inlinedAt: !97523)
!97710 = !DILocation(line: 1165, column: 33, scope: !97430, inlinedAt: !97518)
!97711 = !DILocation(line: 968, column: 5, scope: !97321)
!97712 = !DILocation(line: 612, column: 33, scope: !556, inlinedAt: !97443)
!97713 = !DILocation(line: 779, column: 12, scope: !558, inlinedAt: !97441)
!97714 = !DILocation(line: 780, column: 13, scope: !558, inlinedAt: !97441)
!97715 = !DILocation(line: 1067, column: 32, scope: !97452)
!97716 = !DILocation(line: 1067, column: 52, scope: !97452)
!97717 = !DILocation(line: 320, column: 20, scope: !97455, inlinedAt: !97459)
!97718 = !DILocation(line: 320, column: 20, scope: !97462, inlinedAt: !97464)
!97719 = !DILocation(line: 323, column: 24, scope: !97455, inlinedAt: !97459)
!97720 = !DILocation(line: 621, column: 16, scope: !97457, inlinedAt: !97458)
!97721 = !DILocation(line: 0, scope: !97533, inlinedAt: !97458)
!97722 = !DILocation(line: 320, column: 20, scope: !97469, inlinedAt: !97471)
!97723 = !DILocation(line: 323, column: 24, scope: !97462, inlinedAt: !97464)
!97724 = !DILocation(line: 624, column: 16, scope: !97463, inlinedAt: !97458)
!97725 = !DILocation(line: 631, column: 9, scope: !97456, inlinedAt: !97458)
!97726 = !DILocation(line: 636, column: 2, scope: !97456, inlinedAt: !97458)
!97727 = !DILocation(line: 323, column: 24, scope: !97469, inlinedAt: !97471)
!97728 = !DILocation(line: 627, column: 16, scope: !97470, inlinedAt: !97458)
!97729 = !DILocation(line: 0, scope: !97456, inlinedAt: !97458)
!97730 = !DILocation(line: 1067, column: 56, scope: !97452)
!97731 = !DILocation(line: 1065, column: 41, scope: !97386)
!97732 = !DILocation(line: 1063, column: 41, scope: !97386)
!97733 = !DILocation(line: 1067, column: 90, scope: !97452)
!97734 = !DILocation(line: 1067, column: 64, scope: !97452)
!97735 = !DILocation(line: 0, scope: !97386)
!97736 = !DILocation(line: 1070, column: 17, scope: !97472)
!97737 = !DILocation(line: 1071, column: 13, scope: !97321)
!97738 = distinct !DISubprogram(name: "new_unchecked<58>", linkageName: "_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !3476, file: !3473, line: 649, type: !2532, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97739 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_add", scope: !2734, file: !2626, line: 815, type: !2532, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97740 = !DILocation(line: 662, column: 29, scope: !97738)
!97741 = !DILocation(line: 652, column: 12, scope: !97738)
!97742 = !DILocation(line: 823, column: 37, scope: !97739, inlinedAt: !97740)
!97743 = !DILocation(line: 673, column: 6, scope: !97738)
!97744 = distinct !DISubprogram(name: "get<polars_core::datatypes::StringType>", linkageName: "_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10StringTypeE3getCskY9G75ZWc4U_11polars_expr", scope: !2825, file: !3230, line: 547, type: !2534, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97745 = distinct !DISubprogram(name: "len<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3lenCskY9G75ZWc4U_11polars_expr", scope: !2635, file: !2632, line: 3023, type: !2532, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97746 = distinct !DILexicalBlock(scope: !97745, file: !2632, line: 3024, column: 9)
!97747 = distinct !DISubprogram(name: "index_to_chunked_index<polars_core::datatypes::StringType>", linkageName: "_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10StringTypeE22index_to_chunked_indexCskY9G75ZWc4U_11polars_expr", scope: !2825, file: !2824, line: 132, type: !2534, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97748 = distinct !DILocation(line: 548, column: 41, scope: !97744)
!97749 = distinct !DILocation(line: 134, column: 24, scope: !97747, inlinedAt: !97748)
!97750 = distinct !{null}
!97751 = distinct !DILexicalBlock(scope: !97747, file: !2824, line: 136, column: 13)
!97752 = distinct !DISubprogram(name: "add<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E3addCskY9G75ZWc4U_11polars_expr", scope: !2539, file: !2535, line: 927, type: !2532, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97753 = distinct !DISubprogram(name: "new<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3newCskY9G75ZWc4U_11polars_expr", scope: !2543, file: !2540, line: 96, type: !2532, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97754 = distinct !DILexicalBlock(scope: !97753, file: !2540, line: 97, column: 9)
!97755 = distinct !DILexicalBlock(scope: !97754, file: !2540, line: 98, column: 9)
!97756 = distinct !DISubprogram(name: "iter<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E4iterCskY9G75ZWc4U_11polars_expr", scope: !2545, file: !2544, line: 1040, type: !2532, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97757 = distinct !DISubprogram(name: "chunk_lengths<polars_core::datatypes::StringType>", linkageName: "_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes10StringTypeE13chunk_lengthsCskY9G75ZWc4U_11polars_expr", scope: !2825, file: !3230, line: 473, type: !2532, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97758 = distinct !DILocation(line: 143, column: 31, scope: !97747, inlinedAt: !97748)
!97759 = distinct !DILocation(line: 474, column: 21, scope: !97757, inlinedAt: !97758)
!97760 = distinct !DILocation(line: 1041, column: 9, scope: !97756, inlinedAt: !97759)
!97761 = distinct !DILocation(line: 102, column: 78, scope: !97755, inlinedAt: !97760)
!97762 = distinct !DILexicalBlock(scope: !97747, file: !2824, line: 143, column: 9)
!97763 = distinct !DILexicalBlock(scope: !97762, file: !2824, line: 144, column: 9)
!97764 = distinct !DILocation(line: 147, column: 13, scope: !97763, inlinedAt: !97748)
!97765 = distinct !DILocation(line: 1221, column: 22, scope: !2113, inlinedAt: !97764)
!97766 = distinct !DILocation(line: 107, column: 19, scope: !2109, inlinedAt: !97765)
!97767 = distinct !DILocation(line: 180, column: 28, scope: !2108, inlinedAt: !97766)
!97768 = distinct !{!97768, !"_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes10StringTypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr"}
!97769 = distinct !{!97769, !97768, !"_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes10StringTypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr: argument 0"}
!97770 = distinct !DILocation(line: 107, column: 26, scope: !2109, inlinedAt: !97765)
!97771 = distinct !DILocation(line: 1165, column: 29, scope: !2118, inlinedAt: !97770)
!97772 = distinct !DILocation(line: 310, column: 21, scope: !2116, inlinedAt: !97771)
!97773 = distinct !{!97773, !"_RINvNtCs1LHh8CLbVkQ_11polars_core5utils22index_to_chunked_indexINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2e_EjEjECskY9G75ZWc4U_11polars_expr"}
!97774 = distinct !{!97774, !97773, !"_RINvNtCs1LHh8CLbVkQ_11polars_core5utils22index_to_chunked_indexINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B2e_EjEjECskY9G75ZWc4U_11polars_expr: argument 0"}
!97775 = distinct !{!97775, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1m_EjENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr"}
!97776 = distinct !{!97776, !97775, !"_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1m_EjENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr: argument 0"}
!97777 = distinct !DISubprogram(name: "call_once<polars_core::chunked_array::{impl#0}::chunk_lengths::{closure_env#0}<polars_core::datatypes::StringType>, (&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>)>", linkageName: "_RNvYNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB7_12ChunkedArrayNtNtB9_9datatypes10StringTypeE13chunk_lengths0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEE9call_onceCskY9G75ZWc4U_11polars_expr", scope: !2906, file: !2590, line: 250, type: !2532, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97778 = distinct !DILocation(line: 166, column: 5, scope: !2115, inlinedAt: !97772)
!97779 = distinct !DISubprogram(name: "{closure#0}<polars_core::datatypes::StringType>", linkageName: "_RNCNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10StringTypeE13chunk_lengths0CskY9G75ZWc4U_11polars_expr", scope: !3465, file: !3230, line: 474, type: !2534, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97780 = distinct !DILocation(line: 250, column: 5, scope: !97777, inlinedAt: !97778)
!97781 = distinct !{null, null, null, null, null, null}
!97782 = distinct !DILocation(line: 1222, column: 12, scope: !2114, inlinedAt: !97764)
!97783 = distinct !DILocation(line: 185, column: 40, scope: !2108, inlinedAt: !97766)
!97784 = distinct !DILocation(line: 1226, column: 13, scope: !2114, inlinedAt: !97764)
!97785 = distinct !DISubprogram(name: "len<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3lenCskY9G75ZWc4U_11polars_expr", scope: !2635, file: !2632, line: 3023, type: !2532, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97786 = distinct !DILexicalBlock(scope: !97744, file: !3230, line: 548, column: 9)
!97787 = distinct !DILexicalBlock(scope: !97785, file: !2632, line: 3024, column: 9)
!97788 = distinct !DISubprogram(name: "len<polars_core::datatypes::StringType>", linkageName: "_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10StringTypeE3lenCskY9G75ZWc4U_11polars_expr", scope: !2825, file: !3213, line: 113, type: !2532, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97789 = distinct !DILexicalBlock(scope: !97786, file: !3300, line: 62, column: 38)
!97790 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr", scope: !2631, file: !2629, line: 613, type: !2532, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97791 = distinct !DISubprogram(name: "downcast_get_unchecked<polars_core::datatypes::StringType>", linkageName: "_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes10StringTypeE22downcast_get_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !2825, file: !2824, line: 123, type: !2532, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97792 = distinct !DISubprogram(name: "deref<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !2634, file: !2632, line: 3755, type: !2532, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97793 = distinct !DISubprogram(name: "as_slice<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8as_sliceCskY9G75ZWc4U_11polars_expr", scope: !2635, file: !2632, line: 1824, type: !2532, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97794 = distinct !DISubprogram(name: "as_ptr<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE6as_ptrCskY9G75ZWc4U_11polars_expr", scope: !2635, file: !2632, line: 1939, type: !2532, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97795 = distinct !DISubprogram(name: "ptr<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3ptrCskY9G75ZWc4U_11polars_expr", scope: !2636, file: !2629, line: 295, type: !2532, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97796 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr", scope: !2631, file: !2629, line: 608, type: !2532, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97797 = distinct !DISubprogram(name: "get_unchecked<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE13get_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !2639, file: !2637, line: 239, type: !2532, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97798 = distinct !DISubprogram(name: "get_unchecked<alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_E13get_uncheckedjECskY9G75ZWc4U_11polars_expr", scope: !2545, file: !2544, line: 639, type: !2532, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97799 = distinct !DILexicalBlock(scope: !97791, file: !2824, line: 124, column: 9)
!97800 = distinct !DILexicalBlock(scope: !97786, file: !3230, line: 556, column: 13)
!97801 = distinct !DILocation(line: 558, column: 31, scope: !97800)
!97802 = distinct !DILocation(line: 692, column: 9, scope: !312, inlinedAt: !97801)
!97803 = distinct !DILocation(line: 548, column: 20, scope: !311, inlinedAt: !97802)
!97804 = distinct !DILexicalBlock(scope: !97800, file: !3300, line: 62, column: 38)
!97805 = distinct !DISubprogram(name: "as_ref<polars_arrow::bitmap::immutable::Bitmap>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6as_refCskY9G75ZWc4U_11polars_expr", scope: !2589, file: !2587, line: 744, type: !2532, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97806 = distinct !DISubprogram(name: "validity<str>", linkageName: "_RNvXs7_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeENtB7_5Array8validityCskY9G75ZWc4U_11polars_expr", scope: !2844, file: !2842, line: 705, type: !2532, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97807 = distinct !DISubprogram(name: "is_null_unchecked<polars_arrow::array::binview::BinaryViewArrayGeneric<str>>", linkageName: "_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeENtB7_5Array17is_null_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !3468, file: !3467, line: 137, type: !2532, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97808 = distinct !DISubprogram(name: "get_unchecked<polars_arrow::array::binview::BinaryViewArrayGeneric<str>>", linkageName: "_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeENtNtB7_12static_array11StaticArray13get_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !3471, file: !3469, line: 48, type: !2532, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97809 = distinct !DILocation(line: 563, column: 17, scope: !97800)
!97810 = distinct !DILocation(line: 49, column: 17, scope: !97808, inlinedAt: !97809)
!97811 = distinct !DILocation(line: 138, column: 14, scope: !97807, inlinedAt: !97810)
!97812 = distinct !DILocation(line: 706, column: 23, scope: !97806, inlinedAt: !97811)
!97813 = distinct !DISubprogram(name: "as_ref<&polars_arrow::bitmap::immutable::Bitmap>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6as_refCskY9G75ZWc4U_11polars_expr", scope: !2589, file: !2587, line: 744, type: !2532, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97814 = distinct !DILocation(line: 139, column: 14, scope: !97807, inlinedAt: !97810)
!97815 = distinct !DISubprogram(name: "deref<u8>", linkageName: "_RNvXsc_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !3253, file: !3147, line: 458, type: !2532, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97816 = distinct !DILexicalBlock(scope: !97815, file: !3147, line: 460, column: 13)
!97817 = distinct !DISubprogram(name: "get_bit_unchecked", linkageName: "_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap17get_bit_unchecked", scope: !3170, file: !3151, line: 358, type: !2532, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
!97818 = distinct !DISubprogram(name: "{closure#0}<polars_arrow::array::binview::BinaryViewArrayGeneric<str>>", linkageName: "_RNCNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeENtB9_5Array17is_null_unchecked0CskY9G75ZWc4U_11polars_expr", scope: !3472, file: !3467, line: 140, type: !2532, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2531)
end_hunk_2
