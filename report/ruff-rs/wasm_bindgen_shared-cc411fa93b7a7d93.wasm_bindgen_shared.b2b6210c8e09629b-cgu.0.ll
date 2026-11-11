Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/wasm_bindgen_shared-cc411fa93b7a7d93.wasm_bindgen_shared.b2b6210c8e09629b-cgu.0?download=true
inline.NumInlined: 459
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs_NtNtCs4NRVxsYgnAr_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtB7_9try_traitINtB3R_17NeverShortCircuituE10wrap_mut_2ucQNCINvNvB10_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB5m_6StringINtNtB14_7collect6ExtendcE6extendINtNtNtB16_8adapters7flatten7FlatMapNtNtNtB9_3str4iter5CharsNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0EE0E0E0B46_E0B46_EB7Z_:bb.a
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 10 uses
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i
  %i.w = icmp ult i32 %i.i, 2048
  %i.x = trunc i32 %i.i to i8
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128                ; 3 uses
  %i.aa = lshr i32 %i.i, 6
  %i.ab = trunc i32 %i.aa to i8                   ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128              ; 2 uses
  %i.ae = lshr i32 %i.i, 12
  %i.af = trunc i32 %i.ae to i8                   ; 2 uses
  %i.ag = and i8 %i.af, 63
  %i.ah = or disjoint i8 %i.ag, -128
  %i.ai = lshr i32 %i.i, 18
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = or i8 %i.aj, -16
  br i1 %i.w, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i
  %i.al = trunc nuw nsw i32 %i.i to i8
  store i8 %i.al, ptr %i.v, align 1
  br label %_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucQNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4s_6StringINtNtB3t_7collect6ExtendcE6extendINtNtNtB3v_8adapters7flatten7FlatMapNtNtNtBe_3str4iter5CharsNtNtBe_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0EE0E0E0B2B_E0B75_.exit

bb.i:                                             ; preds = %bb.g
  %i.am = or disjoint i8 %i.ab, -64
  store i8 %i.am, ptr %i.v, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.z, ptr %i.an, align 1
  br label %_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucQNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4s_6StringINtNtB3t_7collect6ExtendcE6extendINtNtNtB3v_8adapters7flatten7FlatMapNtNtNtBe_3str4iter5CharsNtNtBe_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0EE0E0E0B2B_E0B75_.exit

bb.j:                                             ; preds = %bb.g
  %i.ao = icmp ult i32 %i.i, 65536
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = or disjoint i8 %i.af, -32
  store i8 %i.ap, ptr %i.v, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.ad, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.z, ptr %i.ar, align 1
  br label %_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucQNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4s_6StringINtNtB3t_7collect6ExtendcE6extendINtNtNtB3v_8adapters7flatten7FlatMapNtNtNtBe_3str4iter5CharsNtNtBe_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0EE0E0E0B2B_E0B75_.exit

bb.l:                                             ; preds = %bb.j
  store i8 %i.ak, ptr %i.v, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.ah, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.ad, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  store i8 %i.z, ptr %i.au, align 1
  br label %_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucQNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4s_6StringINtNtB3t_7collect6ExtendcE6extendINtNtNtB3v_8adapters7flatten7FlatMapNtNtNtBe_3str4iter5CharsNtNtBe_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0EE0E0E0B2B_E0B75_.exit

_RNCINvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucQNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4s_6StringINtNtB3t_7collect6ExtendcE6extendINtNtNtB3v_8adapters7flatten7FlatMapNtNtNtBe_3str4iter5CharsNtNtBe_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0EE0E0E0B2B_E0B75_.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %i.av = add i64 %.sroa.0.0.i.i.i.i.i.i, %i.m
  store i64 %i.av, ptr %i.l, align 8
  %i.aw = load i64, ptr %0, align 8               ; 2 uses
  %i.ax = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.aw, %i.ax
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1U_8map_foldB1s_cuNCNvB2z_14to_valid_ident0NCINvNvB3K_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB5K_6StringINtNtB3O_7collect6ExtendcE6extendIB1S_BO_B4M_EE0E0E0EB2B_(ptr nofree readonly align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #8 personality ptr @rust_eh_personality !guid !93 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %.off = add i32 %i.b, 3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceINtNtBc_6option6OptioncEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_cuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvB1h_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4g_6StringINtNtB1l_7collect6ExtendcE6extendINtB21_3MapINtNtB23_5chain5ChainB3_IB5t_NtNtNtBc_3str4iter5CharsNCNvB2D_17maybe_valid_charss_0EEB2z_EE0E0E0EB2F_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %i.b, -1
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 95, i32 %i.b ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp ult i32 %..i.i.i.i.i, 128           ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = icmp ult i32 %..i.i.i.i.i, 2048
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i32 %..i.i.i.i.i, 65536
  %..i.i.i.i.i.i = select i1 %i.g, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 2, %bb.b ], [ %..i.i.i.i.i.i, %bb.c ], [ 1, %.lr.ph.i ] ; 3 uses
  %i.h = load i64, ptr %1, align 8
  %i.i = sub i64 %i.h, %i.d
  %i.j = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i, %i.i
  br i1 %i.j, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %1, i64 %i.d, i64 %.sroa.0.0.i.i.i.i.i.i, i64 1, i64 1)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d ; 10 uses
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i
  %i.n = icmp ult i32 %..i.i.i.i.i, 2048
  %i.o = trunc i32 %..i.i.i.i.i to i8
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128                ; 3 uses
  %i.r = lshr i32 %..i.i.i.i.i, 6
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  %i.t = and i8 %i.s, 63
  %i.u = or disjoint i8 %i.t, -128                ; 2 uses
  %i.v = lshr i32 %..i.i.i.i.i, 12
  %i.w = trunc i32 %i.v to i8                     ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = or disjoint i8 %i.x, -128
  %i.z = lshr i32 %..i.i.i.i.i, 18
  %i.aa = trunc i32 %i.z to i8
  %i.ab = or i8 %i.aa, -16
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i.i
  %i.ac = trunc nuw nsw i32 %..i.i.i.i.i to i8
  store i8 %i.ac, ptr %i.m, align 1
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ad = or disjoint i8 %i.s, -64
  store i8 %i.ad, ptr %i.m, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.q, ptr %i.ae, align 1
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit.i

bb.i:                                             ; preds = %bb.f
  %i.af = icmp ult i32 %..i.i.i.i.i, 65536
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = or disjoint i8 %i.w, -32
  store i8 %i.ag, ptr %i.m, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.u, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i8 %i.q, ptr %i.ai, align 1
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit.i

bb.k:                                             ; preds = %bb.i
  store i8 %i.ab, ptr %i.m, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.y, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i8 %i.u, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  store i8 %i.q, ptr %i.al, align 1
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.am = add i64 %.sroa.0.0.i.i.i.i.i.i, %i.d
  store i64 %i.am, ptr %i.c, align 8
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceINtNtBc_6option6OptioncEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_cuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvB1h_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4g_6StringINtNtB1l_7collect6ExtendcE6extendINtB21_3MapINtNtB23_5chain5ChainB3_IB5t_NtNtNtBc_3str4iter5CharsNCNvB2D_17maybe_valid_charss_0EEB2z_EE0E0E0EB2F_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceINtNtBc_6option6OptioncEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_cuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvB1h_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4g_6StringINtNtB1l_7collect6ExtendcE6extendINtB21_3MapINtNtB23_5chain5ChainB3_IB5t_NtNtNtBc_3str4iter5CharsNCNvB2D_17maybe_valid_charss_0EEB2z_EE0E0E0EB2F_.exit: ; preds = %bb.a, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit.i
  %i.an = load ptr, ptr %0, align 8               ; 2 uses
  %.not4 = icmp eq ptr %i.an, null
  br i1 %.not4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceINtNtBc_6option6OptioncEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_cuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvB1h_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4g_6StringINtNtB1l_7collect6ExtendcE6extendINtB21_3MapINtNtB23_5chain5ChainB3_IB5t_NtNtNtBc_3str4iter5CharsNCNvB2D_17maybe_valid_charss_0EEB2z_EE0E0E0EB2F_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4folduNCINvNtNtBN_8adapters3map8map_foldcINtNtB9_6option6OptioncEuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0NCIB1v_B21_cuNCNvB2u_14to_valid_ident0NCINvNvBH_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4N_6StringINtNtBL_7collect6ExtendcE6extendINtB1x_3MapINtNtB1z_5chain5ChainINtNtNtBN_7sources4once4OnceB21_EIB5Z_B3_B2q_EEB3Q_EE0E0E0E0EB2w_(ptr nonnull readonly %i.an, ptr readnone %i.ap, ptr align 8 %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceINtNtBc_6option6OptioncEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_cuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvB1h_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4g_6StringINtNtB1l_7collect6ExtendcE6extendINtB21_3MapINtNtB23_5chain5ChainB3_IB5t_NtNtNtBc_3str4iter5CharsNCNvB2D_17maybe_valid_charss_0EEB2z_EE0E0E0EB2F_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB3K_3all5checkB1s_NCNvB2z_14is_valid_ident0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2B_(ptr nofree align 8 captures(none) %0) unnamed_addr #8 personality ptr @rust_eh_personality !guid !94 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, -3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -2, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %1

bb.d:                                             ; preds = %bb.b
  store i32 -3, ptr %i.a, align 8
  br label %bb.c

bb.e:                                             ; preds = %50, %thread-pre-split, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i, %1, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ false, %1 ], [ false, %thread-pre-split ], [ true, %50 ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i ]
  ret i1 %.sroa.0.0

1:                                                ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %3 = load ptr, ptr %2, align 8                  ; 2 uses
  %4 = icmp eq ptr %i.c, %3
  br i1 %4, label %bb.e, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i

thread-pre-split:                                 ; preds = %50
  %.pr = load ptr, ptr %0, align 8                ; 2 uses
  %5 = load ptr, ptr %2, align 8                  ; 2 uses
  %6 = icmp eq ptr %.pr, %5
  br i1 %6, label %bb.e, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i: ; preds = %1, %thread-pre-split
  %7 = phi ptr [ %5, %thread-pre-split ], [ %3, %1 ] ; 3 uses
  %8 = phi ptr [ %.pr, %thread-pre-split ], [ %i.c, %1 ] ; 6 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 3 uses
  store ptr %9, ptr %0, align 8
  %.not.i.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i.i, label %bb.e, label %10

10:                                               ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i
  %11 = load i8, ptr %8, align 1                  ; 5 uses
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = and i8 %11, 31
  %15 = zext nneg i8 %14 to i32                   ; 3 uses
  %16 = icmp eq ptr %9, %7
  br i1 %16, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i.i, label %19

17:                                               ; preds = %10
  %18 = zext nneg i8 %11 to i32
  br label %50

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 3 uses
  store ptr %20, ptr %0, align 8
  %21 = load i8, ptr %9, align 1
  %22 = shl nuw nsw i32 %15, 6
  %23 = and i8 %21, 63
  %24 = zext nneg i8 %23 to i32                   ; 2 uses
  %25 = or disjoint i32 %22, %24
  %26 = icmp samesign ugt i8 %11, -33
  br i1 %26, label %27, label %50

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i.i: ; preds = %13
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @1) #32
  unreachable

27:                                               ; preds = %19
  %28 = icmp eq ptr %20, %7
  br i1 %28, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i.i, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %8, i64 3 ; 3 uses
  store ptr %30, ptr %0, align 8
  %31 = load i8, ptr %20, align 1
  %32 = shl nuw nsw i32 %24, 6
  %33 = and i8 %31, 63
  %34 = zext nneg i8 %33 to i32
  %35 = or disjoint i32 %32, %34                  ; 2 uses
  %36 = shl nuw nsw i32 %15, 12
  %37 = or disjoint i32 %35, %36
  %38 = icmp samesign ugt i8 %11, -17
  br i1 %38, label %39, label %50

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i.i: ; preds = %27
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @2) #32
  unreachable

39:                                               ; preds = %29
  %40 = icmp eq ptr %30, %7
  br i1 %40, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %39
  %41 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store ptr %41, ptr %0, align 8
  %42 = load i8, ptr %30, align 1
  %43 = shl nuw nsw i32 %15, 18
  %44 = and i32 %43, 1835008
  %45 = shl nuw nsw i32 %35, 6
  %46 = and i8 %42, 63
  %47 = zext nneg i8 %46 to i32
  %48 = or disjoint i32 %45, %47
  %49 = or disjoint i32 %48, %44
  br label %50

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i.i: ; preds = %39
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @3) #32
  unreachable

50:                                               ; preds = %bb.f, %29, %19, %17
  %.sroa.0.0.i.i.ph.i = phi i32 [ %25, %19 ], [ %37, %29 ], [ %49, %bb.f ], [ %18, %17 ]
  %51 = tail call zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14is_id_continue(i32 %.sroa.0.0.i.i.ph.i)
  br i1 %51, label %thread-pre-split, label %bb.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2D_(ptr nofree align 8 captures(none) %0) unnamed_addr #10 personality ptr @rust_eh_personality !guid !95 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8        ; 2 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0E0B2j_EB3p_.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0E0B2j_EB3p_.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %0, align 8
  %.not.not.i = icmp eq ptr %i.e, null
  br i1 %.not.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0E0B2j_EB3p_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i
  %i.g = load i8, ptr %i.e, align 1               ; 6 uses
  %i.h = icmp ugt i8 %i.g, 64
  %i.i = icmp ugt i8 %i.g, 96
  %i.j = icmp ugt i8 %i.g, 122
  %i.k = icmp ugt i8 %i.g, 90
  %i.l = add i8 %i.g, -58
  %i.m = icmp ult i8 %i.l, -10
  %i.n = select i1 %i.h, i1 %i.k, i1 %i.m
  %.sroa.02.0.i.i.not.i.i.i = select i1 %i.i, i1 %i.j, i1 %i.n
  %i.o = icmp ne i8 %i.g, 95
  %.sroa.0.0.i.not.i.i.i = and i1 %i.o, %.sroa.02.0.i.i.not.i.i.i
  br i1 %.sroa.0.0.i.not.i.i.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0E0B2j_EB3p_.exit, label %bb.b

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0E0B2j_EB3p_.exit: ; preds = %bb.c, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i, %bb.b, %bb.a
  %.not8.i = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i ], [ false, %bb.b ]
  ret i1 %.not8.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !96 {
bb.a:
  %.not.i.i = icmp slt i64 %2, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, label %bb.c

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread: ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.d = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) %2, i64 1) #32 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.2.0.ph.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %.sroa.2.0.ph.i, i64 %2) #33
  unreachable

bb.e:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, %bb.f
  ret void

bb.f:                                             ; preds = %bb.c
  store i64 %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.g, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters3map3MapINtNtB1R_5chain5ChainINtNtNtBR_7sources4once4OnceINtNtBT_6option6OptioncEEIB1N_NtNtNtBT_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB3W_14to_valid_ident0EEB3Y_(ptr nofree align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #8 personality ptr @rust_eh_personality !guid !97 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload2 = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload4 = load ptr, ptr %.sroa.3.0..sroa_idx3, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load <2 x i32>, ptr %.sroa.5.0..sroa_idx5, align 8
  %.sroa.5.0.copyload6 = load i32, ptr %.sroa.5.0..sroa_idx5, align 8 ; 2 uses
  %.not.i.i = icmp eq i32 %.sroa.5.0.copyload6, -3
  %.not7.i.i = icmp eq ptr %.sroa.0.0.copyload2, null ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %.sroa.5.0.copyload6, -2
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  br i1 %.not7.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEIBN_NtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB2D_14to_valid_ident0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2F_.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = ptrtoint ptr %.sroa.3.0.copyload4 to i64
  %i.f = ptrtoint ptr %.sroa.0.0.copyload2 to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = and i64 %i.g, 3
  %.not.i.i.i.i = icmp ne i64 %i.i, 0
  %i.j = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.h, %i.j
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEIBN_NtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB2D_14to_valid_ident0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2F_.exit

bb.e:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %.sroa.3.0.copyload4 to i64
  %i.l = ptrtoint ptr %.sroa.0.0.copyload2 to i64
  %i.m = sub nuw i64 %i.k, %i.l                   ; 2 uses
  %i.n = lshr i64 %i.m, 2
  %i.o = and i64 %i.m, 3
  %.not.i.i14.i.i = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not.i.i14.i.i to i64
  %.sroa.0.0.i.i15.i.i = add nuw nsw i64 %i.n, %i.d
  %i.q = add nuw nsw i64 %.sroa.0.0.i.i15.i.i, %i.p
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEIBN_NtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB2D_14to_valid_ident0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2F_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEIBN_NtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB2D_14to_valid_ident0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2F_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sink23.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i.i.i.i, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = load i64, ptr %0, align 8
  %i.u = sub i64 %i.t, %i.s
  %i.v = icmp ugt i64 %.sink23.i.i, %i.u
  br i1 %i.v, label %bb.f, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEIBN_NtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB2D_14to_valid_ident0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2F_.exit
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %0, i64 %i.s, i64 %.sink23.i.i, i64 1, i64 1)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.c, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEIBN_NtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB2D_14to_valid_ident0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2F_.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload2, ptr %i.a, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3.0.copyload4, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i32> %i.b, ptr %.sroa.313.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1U_8map_foldB1s_cuNCNvB2z_14to_valid_ident0NCINvNvB3K_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB5K_6StringINtNtB3O_7collect6ExtendcE6extendIB1S_BO_B4M_EE0E0E0EB2B_(ptr nonnull align 8 %i.a, ptr align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters7flatten7FlatMapNtNtNtBT_3str4iter5CharsNtNtBT_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared12new_function0EEB3c_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #8 personality ptr @rust_eh_personality !guid !98 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [96 x i8], align 8                ; 3 uses
  call void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters7flatten7FlatMapNtNtNtB8_3str4iter5CharsNtNtB8_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared12new_function0ENtB2_12IntoIterator9into_iterB2b_(ptr nonnull sret([96 x i8]) align 8 %i.c, ptr align 8 %1)
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapNtNtNtBb_3str4iter5CharsNtNtBb_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared12new_function0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.b:                                             ; preds = %bb.a
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %0, i64 %i.f, i64 %i.d, i64 1, i64 1)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapNtNtNtBc_3str4iter5CharsNtNtBc_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared12new_function0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB3v_6StringINtNtB2J_7collect6ExtendcE6extendB3_E0EB1Q_(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters7flatten7FlatMapNtNtNtBT_3str4iter5CharsNtNtBT_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared13free_function0EEB3c_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #8 personality ptr @rust_eh_personality !guid !99 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [96 x i8], align 8                ; 3 uses
  call void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters7flatten7FlatMapNtNtNtB8_3str4iter5CharsNtNtB8_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared13free_function0ENtB2_12IntoIterator9into_iterB2b_(ptr nonnull sret([96 x i8]) align 8 %i.c, ptr align 8 %1)
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapNtNtNtBb_3str4iter5CharsNtNtBb_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared13free_function0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.b:                                             ; preds = %bb.a
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %0, i64 %i.f, i64 %i.d, i64 1, i64 1)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

end_hunk_0
begin_hunk_1_@_RINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtBR_8adapters7flatten7FlatMapNtNtNtBT_3str4iter5CharsNtNtBT_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0EEB3c_:bb.a
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapNtNtNtBb_3str4iter5CharsNtNtBb_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1V_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.c)
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.b:                                             ; preds = %bb.a
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %0, i64 %i.f, i64 %i.d, i64 1, i64 1)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapNtNtNtBc_3str4iter5CharsNtNtBc_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB3K_6StringINtNtB2Y_7collect6ExtendcE6extendB3_E0EB1Q_(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNvBL_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0E0B2j_EB3p_(ptr nofree align 8 captures(none) %0) unnamed_addr #9 personality ptr @rust_eh_personality !guid !107 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
  br i1 %i.c, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %0, align 8
  %.not.not = icmp eq ptr %i.e, null
  br i1 %.not.not, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit
  %i.g = load i8, ptr %i.e, align 1               ; 6 uses
  %i.h = icmp ugt i8 %i.g, 64
  %i.i = icmp ugt i8 %i.g, 96
  %i.j = icmp ugt i8 %i.g, 122
  %i.k = icmp ugt i8 %i.g, 90
  %i.l = add i8 %i.g, -58
  %i.m = icmp ult i8 %i.l, -10
  %i.n = select i1 %i.h, i1 %i.k, i1 %i.m
  %.sroa.02.0.i.i.not.i.i = select i1 %i.i, i1 %i.j, i1 %i.n
  %i.o = icmp ne i8 %i.g, 95
  %.sroa.0.0.i.not.i.i = and i1 %i.o, %.sroa.02.0.i.i.not.i.i
  br i1 %.sroa.0.0.i.not.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, label %bb.b

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, %bb.c, %bb.b, %bb.a
  %.not8 = phi i1 [ false, %bb.a ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.not8
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceINtNtBc_6option6OptioncEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNtNtBa_8adapters3map8map_foldBS_cuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvB1h_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4g_6StringINtNtB1l_7collect6ExtendcE6extendINtB21_3MapINtNtB23_5chain5ChainB3_IB5t_NtNtNtBc_3str4iter5CharsNCNvB2D_17maybe_valid_charss_0EEB2z_EE0E0E0EB2F_(i32 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !108 {
bb.a:
  %.not5 = icmp eq i32 %0, -2
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %0, -1
  %..i.i.i.i = select i1 %.not.i.i.i.i, i32 95, i32 %0 ; 10 uses
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp ult i32 %..i.i.i.i, 128             ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp ult i32 %..i.i.i.i, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %..i.i.i.i, 65536
  %..i.i.i.i.i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 2, %bb.b ], [ %..i.i.i.i.i, %bb.c ], [ 1, %.lr.ph ] ; 3 uses
  %i.g = load i64, ptr %i.a, align 8
  %i.h = sub i64 %i.g, %i.c
  %i.i = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %i.a, i64 %i.c, i64 %.sroa.0.0.i.i.i.i.i, i64 1, i64 1)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i
  %i.m = icmp ult i32 %..i.i.i.i, 2048
  %i.n = trunc i32 %..i.i.i.i to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %..i.i.i.i, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %..i.i.i.i, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %..i.i.i.i, 18
  %i.z = trunc i32 %i.y to i8
  %i.aa = or i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.i.i.i
  %i.ab = trunc nuw nsw i32 %..i.i.i.i to i8
  store i8 %i.ab, ptr %i.l, align 1
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp ult i32 %..i.i.i.i, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add i64 %.sroa.0.0.i.i.i.i.i, %i.c
  store i64 %i.al, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtNtBb_6option6OptioncEcuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB44_6StringINtNtB3c_7collect6ExtendcE6extendINtBT_3MapINtNtBV_5chain5ChainINtNtNtBX_7sources4once4OnceB1t_EIB5h_NtNtNtBb_3str4iter5CharsNCNvB1X_17maybe_valid_charss_0EEB1T_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1Z_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceINtNtBc_6option6OptioncEENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapNtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EEB2Q_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 20)) %0, i32 %1, ptr %2, ptr %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !109 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8
  store ptr %2, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceINtNtBc_6option6OptioncEENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB1h_3all5checkBS_NCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14is_valid_ident0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2u_(ptr nofree align 4 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !110 {
.peel.begin:
  %.pr = load i32, ptr %0, align 4
  store i32 -2, ptr %0, align 4
  %.not = icmp eq i32 %.pr, -1
  ret i1 %.not
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceINtNtBc_6option6OptioncEEIB4_NtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB2y_14to_valid_ident0ENtNtNtBa_6traits8iterator8Iterator7collectNtNtCscdodAO9FK5_5alloc6string6StringEB2A_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !111 {
bb.a:
  tail call void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtB21_5chain5ChainINtNtNtBR_7sources4once4OnceINtNtBT_6option6OptioncEEIB1X_NtNtNtBT_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB46_14to_valid_ident0EEB48_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceINtNtBc_6option6OptioncEEIB4_NtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB2y_14to_valid_ident0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4Z_6StringINtNtB4d_7collect6ExtendcE6extendB3_E0EB2A_(ptr nofree readonly align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #1 !guid !112 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1U_8map_foldB1s_cuNCNvB2z_14to_valid_ident0NCINvNvB3K_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB5K_6StringINtNtB3O_7collect6ExtendcE6extendIB1S_BO_B4M_EE0E0E0EB2B_(ptr nonnull align 8 %i.a, ptr align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceINtNtBc_6option6OptioncEEINtNtB8_3map3MapNtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtBa_6traits8iterator8Iterator3allNCNvB2u_14is_valid_ident0EB2w_(ptr nofree align 8 captures(none) %0) unnamed_addr #1 !guid !113 {
bb.a:
  %1 = tail call zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB3K_3all5checkB1s_NCNvB2z_14is_valid_ident0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2B_(ptr align 8 %0)
  %i.a = xor i1 %1, true
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OnceINtNtBc_6option6OptioncEEINtNtB8_3map3MapNtNtNtBc_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtBa_6traits8iterator8Iterator3mapcNCNvB2u_14to_valid_ident0EB2w_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 !guid !114 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator3allNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0EB26_(ptr nofree align 8 captures(none) %0) unnamed_addr #9 personality ptr @rust_eh_personality !guid !115 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8      ; 2 uses
  %i.c = icmp eq ptr %.promoted.i.i, %i.b
  br i1 %i.c, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2D_.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq ptr %i.f, %i.b
  br i1 %i.d, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2D_.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %.promoted.i.i, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.f, ptr %0, align 8
  %.not.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.not.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2D_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i
  %i.g = load i8, ptr %i.e, align 1               ; 6 uses
  %i.h = icmp ugt i8 %i.g, 64
  %i.i = icmp ugt i8 %i.g, 96
  %i.j = icmp ugt i8 %i.g, 122
  %i.k = icmp ugt i8 %i.g, 90
  %i.l = add i8 %i.g, -58
  %i.m = icmp ult i8 %i.l, -10
  %i.n = select i1 %i.h, i1 %i.k, i1 %i.m
  %.sroa.02.0.i.i.not.i.i.i.i = select i1 %i.i, i1 %i.j, i1 %i.n
  %i.o = icmp ne i8 %i.g, 95
  %.sroa.0.0.i.not.i.i.i.i = and i1 %i.o, %.sroa.02.0.i.i.not.i.i.i.i
  br i1 %.sroa.0.0.i.not.i.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2D_.exit, label %bb.b

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_3all5checkhNCNvCsflha3QUX5Q5_19wasm_bindgen_shared18export_name_suffix0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2D_.exit: ; preds = %bb.c, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i, %bb.b, %bb.a
  %i.p = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ true, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i ], [ true, %bb.b ]
  ret i1 %i.p
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapINtNtB9_6option6OptioncENCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EB1U_(ptr %0, ptr %1) unnamed_addr #3 !guid !116 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared12new_function0EB1T_(ptr %0, ptr %1) unnamed_addr #3 !guid !117 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared13free_function0EB1T_(ptr %0, ptr %1) unnamed_addr #3 !guid !118 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared15unwrap_function0EB1T_(ptr %0, ptr %1) unnamed_addr #3 !guid !119 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared15upcast_function0EB1T_(ptr %0, ptr %1) unnamed_addr #3 !guid !120 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared15upcast_functions_0EB1T_(ptr %0, ptr %1) unnamed_addr #3 !guid !121 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_get0EB1T_(ptr %0, ptr %1) unnamed_addr #3 !guid !122 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared16struct_field_set0EB1T_(ptr %0, ptr %1) unnamed_addr #3 !guid !123 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared21dynamic_union_variant0EB1T_(ptr %0, ptr %1) unnamed_addr #3 !guid !124 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator3mapNtNtB9_4char11ToLowercaseNCNvCsflha3QUX5Q5_19wasm_bindgen_shared27struct_function_export_name0EB1T_(ptr %0, ptr %1) unnamed_addr #3 !guid !125 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4folduNCINvNtNtBN_8adapters3map8map_foldcINtNtB9_6option6OptioncEuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0NCIB1v_B21_cuNCNvB2u_14to_valid_ident0NCINvNvBH_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4N_6StringINtNtBL_7collect6ExtendcE6extendINtB1x_3MapINtNtB1z_5chain5ChainINtNtNtBN_7sources4once4OnceB21_EIB5Z_B3_B2q_EEB3Q_EE0E0E0E0EB2w_(ptr nofree readonly captures(address) %0, ptr nofree readnone captures(address) %1, ptr nofree align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !126 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.lr.ph

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.lr.ph: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldcINtNtBa_6option6OptioncEuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0NCIB2_BV_cuNCNvB1o_14to_valid_ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4a_6StringINtNtB3i_7collect6ExtendcE6extendINtB4_3MapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceBV_EIB5n_NtNtNtBa_3str4iter5CharsB1k_EEB2I_EE0E0E0E0B1q_.exit
  %.sroa.0.010 = phi ptr [ %0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i.lr.ph ], [ %.sroa.0.1.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldcINtNtBa_6option6OptioncEuNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0NCIB2_BV_cuNCNvB1o_14to_valid_ident0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB4a_6StringINtNtB3i_7collect6ExtendcE6extendINtB4_3MapINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceBV_EIB5n_NtNtNtBa_3str4iter5CharsB1k_EEB2I_EE0E0E0E0B1q_.exit ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 1 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.010, null
  br i1 %.not.i.i, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i
  %i.e = load i8, ptr %.sroa.0.010, align 1       ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp eq ptr %i.d, %1
  br i1 %i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = zext nneg i8 %i.e to i32
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.d, align 1
  %i.m = shl nuw nsw i32 %i.h, 6
  %i.n = and i8 %i.l, 63
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = icmp samesign ugt i8 %i.e, -33
  br i1 %i.q, label %bb.f, label %bb.j

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i: ; preds = %bb.c
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @1) #32
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq ptr %i.k, %1
  br i1 %i.r, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 3 ; 3 uses
  %i.t = load i8, ptr %i.k, align 1
  %i.u = shl nuw nsw i32 %i.o, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %bb.h, label %bb.j

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i: ; preds = %bb.f
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @2) #32
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq ptr %i.s, %1
  br i1 %i.ab, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 4
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsflha3QUX5Q5_19wasm_bindgen_shared:bb.a
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %3, ptr %i.m, align 8
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  store i64 %1, ptr %i.m, align 8
  store ptr %.pn10, ptr %i.n, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsflha3QUX5Q5_19wasm_bindgen_shared(i64 %0, i64 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !424 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %0) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 4 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %1
  %.not.i = icmp ugt i64 %i.b, %i.d
  %or.cond.i = select i1 %i.c, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.g = tail call ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 range(i64 0, -9223372036854775807) %i.b, i64 %1) #32 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.2.0.ph = phi i64 [ %1, %bb.d ], [ 0, %bb.a ]
  %.sroa.8.0.ph = phi i64 [ %i.b, %bb.d ], [ undef, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 %.sroa.2.0.ph, i64 %.sroa.8.0.ph) #33
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.d, %bb.c
  %.sroa.2.0 = phi i64 [ 0, %bb.c ], [ %0, %bb.d ]
  %.sroa.8.0 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.2.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.8.0, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define i32 @_RNvMs6_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitcEE9next_backCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #0 !guid !425 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nofree align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #1 !guid !426 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %0, i64 %i.b, i64 %2, i64 1, i64 1)
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.c

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit
  %i.f = phi i64 [ %.pre2, %bb.c ], [ %i.b, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit ]
  %i.g = add i64 %i.f, %2
  store i64 %i.g, ptr %i.a, align 8
  ret void

bb.c:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit
  %i.h = phi i64 [ %.pre, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit.thread ], [ %i.b, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  %.pre2 = load i64, ptr %i.a, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #8 !guid !427 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 1, i64 1)
  br label %bb.b
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvNtCs4NRVxsYgnAr_4core10intrinsics9cold_pathCsflha3QUX5Q5_19wasm_bindgen_shared() unnamed_addr #15 !guid !428 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #16 personality ptr @rust_eh_personality !guid !429 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i, %bb.a
  %.idx = phi i64 [ 0, %bb.a ], [ %.add, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i ] ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @59, i64 %.idx ; 2 uses
  %.add = add nuw nsw i64 %.idx, 16               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.ptr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %.split.i.i.i, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.d = load ptr, ptr %.ptr, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.d, ptr readonly %0, i64 %1)
  %i.e = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.e, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe8containsCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i

_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %bb.b
  %.not4.i.i.i = icmp eq i64 %.add, 752
  br i1 %.not4.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe8containsCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.b

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe8containsCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %.split.i.i.i, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i
  %.lcssa.i.i.i = phi i1 [ false, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i ], [ true, %.split.i.i.i ]
  ret i1 %.lcssa.i.i.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14is_id_continue(i32 %0) unnamed_addr #8 !guid !430 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 890, label %bb.c
    i32 12443, label %bb.c
    i32 12444, label %bb.c
    i32 64606, label %bb.c
    i32 64607, label %bb.c
    i32 64608, label %bb.c
    i32 64609, label %bb.c
    i32 64610, label %bb.c
    i32 64611, label %bb.c
    i32 65018, label %bb.c
    i32 65019, label %bb.c
    i32 65136, label %bb.c
    i32 65138, label %bb.c
    i32 65140, label %bb.c
    i32 65142, label %bb.c
    i32 65144, label %bb.c
    i32 65146, label %bb.c
    i32 65148, label %bb.c
    i32 65150, label %bb.c
    i32 36, label %bb.c
    i32 8204, label %bb.c
    i32 8205, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @_RNvCs1dwOdj1368s_13unicode_ident15is_xid_continue(i32 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14is_valid_ident(ptr %0, i64 %1) unnamed_addr #8 !guid !431 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call fastcc void @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_chars(ptr noalias align 8 %i.a, ptr %0, i64 %1)
  %2 = call zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceINtNtBb_6option6OptioncEEINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB3K_3all5checkB1s_NCNvB2z_14is_valid_ident0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2B_(ptr nonnull align 8 %i.a)
  %3 = xor i1 %2, true
  ret i1 %3
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier14to_valid_ident(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #8 personality ptr @rust_eh_personality !guid !432 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call fastcc void @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_chars(ptr noalias align 8 %i.c, ptr %1, i64 %2)
  call void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtB21_5chain5ChainINtNtNtBR_7sources4once4OnceINtNtBT_6option6OptioncEEIB1X_NtNtNtBT_3str4iter5CharsNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_charss_0EENCNvB46_14to_valid_ident0EEB48_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull readonly align 8 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.val3 = load ptr, ptr %i.e, align 8            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val4 = load i64, ptr %i.f, align 8            ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %i.d, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.j, i64 %i.h, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.d:                                             ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i, %bb.a
  %.idx.i = phi i64 [ 0, %bb.a ], [ %.add.i, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i ] ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr @59, i64 %.idx.i ; 2 uses
  %.add.i = add nuw nsw i64 %.idx.i, 16           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, %.val4
  br i1 %i.m, label %.split.i.i.i.i, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.d
  %i.n = load ptr, ptr %.ptr.i, align 8
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.n, ptr readonly %.val3, i64 %.val4)
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i

_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i, %bb.d
  %.not4.i.i.i.i = icmp eq i64 %.add.i, 752
  br i1 %.not4.i.i.i.i, label %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit, label %bb.d

_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit: ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i.i
  %i.p = tail call zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier23is_non_value_js_keyword(ptr %.val3, i64 %.val4)
  br i1 %i.p, label %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit6

_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread: ; preds = %.split.i.i.i.i, %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsflha3QUX5Q5_19wasm_bindgen_shared, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull @60, ptr nonnull %i.a)
          to label %.critedge unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit6: ; preds = %bb.f, %.critedge, %bb.e
  ret void

.critedge:                                        ; preds = %_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier13is_js_keyword.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.q = load i64, ptr %i.d, align 8              ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit6, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.s = load ptr, ptr %i.e, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.s, i64 %i.q, i64 1) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_chars(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #8 personality ptr @rust_eh_personality !guid !433 {
bb.a:
  %i.a = icmp samesign eq i64 %2, 0
  br i1 %i.a, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i
  %i.c = load i8, ptr %1, align 1                 ; 5 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i8 %i.c, 31
  %i.f = zext nneg i8 %i.e to i32                 ; 3 uses
  %i.g = icmp samesign eq i64 %2, 1
  br i1 %i.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = zext nneg i8 %i.c to i32
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.b, align 1
  %i.k = shl nuw nsw i32 %i.f, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.c, -33
  br i1 %i.o, label %bb.f, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit15.thread.i.i: ; preds = %bb.c
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @1) #32
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = icmp samesign eq i64 %2, 2
  br i1 %i.p, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.r = load i8, ptr %i.i, align 1
  %i.s = shl nuw nsw i32 %i.m, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.f, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.c, -17
  br i1 %i.y, label %bb.h, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit17.thread.i.i: ; preds = %bb.f
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @2) #32
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.z = icmp samesign eq i64 %2, 3
  br i1 %i.z, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.q, align 1
  %i.ac = shl nuw nsw i32 %i.f, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit19.thread.i.i: ; preds = %bb.h
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsflha3QUX5Q5_19wasm_bindgen_shared(ptr nonnull align 8 @3) #32
  unreachable

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit: ; preds = %bb.a, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i, %bb.d, %bb.e, %bb.g, %bb.i
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i ], [ %i.b, %bb.d ], [ %i.aa, %bb.i ], [ %i.q, %bb.g ], [ %i.i, %bb.e ]
  %.sroa.0.0.i.i = phi i32 [ -1, %bb.a ], [ -1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsflha3QUX5Q5_19wasm_bindgen_shared.exit.i.i ], [ %i.h, %bb.d ], [ %i.ai, %bb.i ], [ %i.x, %bb.g ], [ %i.n, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ak = tail call i32 @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6filterNCNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier17maybe_valid_chars0EBX_(i32 %.sroa.0.0.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ak, ptr %i.al, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.am, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvNtCsflha3QUX5Q5_19wasm_bindgen_shared10identifier23is_non_value_js_keyword(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #16 personality ptr @rust_eh_personality !guid !434 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i, %bb.a
  %.idx = phi i64 [ 0, %bb.a ], [ %.add, %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i ] ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @59, i64 %.idx ; 2 uses
  %.add = add nuw nsw i64 %.idx, 16               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.ptr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %.split.i.i.i, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.d = load ptr, ptr %.ptr, align 8
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.d, ptr readonly %0, i64 %1)
  %i.e = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.e, label %.preheader.preheader, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i

.preheader.preheader:                             ; preds = %.split.i.i.i
  switch i64 %1, label %_RNCNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Csflha3QUX5Q5_19wasm_bindgen_shared.exit.backedge.i.i.i1.6 [
    i64 4, label %.split.i.i.i4
    i64 5, label %.split.i.i.i4.1
    i64 6, label %.split.i.i.i4.2
    i64 3, label %.split.i.i.i4.3
end_hunk_2
