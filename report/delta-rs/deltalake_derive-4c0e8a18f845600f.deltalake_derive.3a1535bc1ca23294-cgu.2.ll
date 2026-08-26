Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_derive-4c0e8a18f845600f.deltalake_derive.3a1535bc1ca23294-cgu.2?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@_RNCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0B3_:bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.g) #6
          to label %bb.ag unwind label %bb.aj

bb.v:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.s
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_pound(ptr nonnull align 8 %i.f)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.ab, %bb.y
  %.pn = phi { ptr, i32 } [ %i.as, %bb.y ], [ %i.at, %bb.ab ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.f) #6
          to label %bb.u unwind label %bb.aj

bb.y:                                             ; preds = %bb.ae, %bb.z, %bb.w
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.d)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.d, ptr nonnull @21, i64 3)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.ac, %bb.aa
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.d) #6
          to label %bb.x unwind label %bb.aj

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr nonnull align 8 %i.d)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXs6_NtCsBGNUbrdbJ0_5quote9to_tokensNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.d)
          to label %bb.ae unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.f, i8 2, ptr nonnull align 8 %i.e)
          to label %bb.af unwind label %bb.y

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.g)
          to label %bb.ai unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ak, %bb.ah, %bb.u
  %.pn8 = phi { ptr, i32 } [ %i.au, %bb.ah ], [ %.pn6, %bb.ak ], [ %.pn.pn, %bb.u ] ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.k) #6
          to label %bb.aw unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ap, %bb.af, %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %bb.t, %bb.af
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.am unwind label %bb.al

bb.aj:                                            ; preds = %bb.ay, %bb.aw, %bb.ar, %bb.an, %bb.ak, %bb.ag, %bb.ab, %bb.x, %bb.u, %bb.k, %bb.g, %bb.d
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.ak:                                            ; preds = %bb.an, %bb.al
  %.pn6 = phi { ptr, i32 } [ %i.ax, %bb.an ], [ %i.aw, %bb.al ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.h) #6
          to label %bb.ag unwind label %bb.aj

bb.al:                                            ; preds = %bb.ai
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %bb.ai
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.c)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.c) #6
          to label %bb.ak unwind label %bb.aj

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvXsq_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.c)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.h)
          to label %bb.aq unwind label %bb.ah

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.k)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.az) #6
          to label %bb.k unwind label %bb.aj

bb.as:                                            ; preds = %bb.aq
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.ba)
          to label %bb.at unwind label %bb.l

bb.at:                                            ; preds = %bb.as
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentEBI_(ptr nonnull align 8 %i.n)
          to label %bb.au unwind label %bb.e

bb.au:                                            ; preds = %bb.at
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.q)
  br label %bb.av

bb.av:                                            ; preds = %bb.ba, %bb.au, %bb.b
  ret void

bb.aw:                                            ; preds = %bb.ag
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.bb) #6
          to label %bb.ax unwind label %bb.aj

bb.ax:                                            ; preds = %bb.aw
  %i.bc = load i64, ptr %i.ao, align 8
  %i.bd = icmp ne i64 %i.bc, -9223372036854775808
  %or.cond = and i1 %.not3, %i.bd
  br i1 %or.cond, label %bb.ay, label %bb.k

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.ao) #6
          to label %bb.k unwind label %bb.aj

bb.az:                                            ; preds = %bb.q
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentEBI_(ptr nonnull align 8 %i.n)
          to label %bb.ba unwind label %bb.e

bb.ba:                                            ; preds = %bb.az
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.q)
  br label %bb.av

bb.bb:                                            ; preds = %bb.d
  resume { ptr, i32 } %.pn12
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0B3_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  %i.p = load ptr, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 288
  %i.r = tail call align 8 ptr @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtCsbjGuDcEILED_11proc_macro25IdentE6as_refCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.q) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr nonnull align 8 @24) #9
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.a
  store ptr %i.r, ptr %i.n, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.s = load ptr, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %i.u = call { ptr, i64 } @_RNvXs7_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.t) #8 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  call fastcc void @_RNvCs4ZaLwAtrTbk_16deltalake_derive24extract_field_attributes(ptr noalias align 8 %i.l, ptr align 8 %i.v, i64 %i.w)
  %i.x = load i64, ptr %i.l, align 8
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  br label %bb.z

bb.d:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.ae = invoke zeroext i1 @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtB6_6string6StringE8is_emptyCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ad)
          to label %bb.h unwind label %bb.g

3:                                                ; preds = %bb.h, %bb.d
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.ad

bb.f:                                             ; preds = %bb.m, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.af, %bb.g ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesEBI_(ptr nonnull align 8 %i.m) #6
          to label %bb.ae unwind label %bb.ac

bb.g:                                             ; preds = %bb.x, %bb.i, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  br i1 %i.ae, label %3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %2, align 8
  invoke fastcc void @_RNvCs4ZaLwAtrTbk_16deltalake_derive16determine_parser(ptr noalias align 8 %i.i, ptr align 8 %i.ag)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.i, align 8
  %i.ai = icmp eq i64 %i.ah, -9223372036854775807
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  br label %bb.ad

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.al = load i8, ptr %i.ak, align 8
  store i8 %i.al, ptr %i.j, align 1
  %i.am = invoke { ptr, i64 } @_RNvXs7_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ad)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %bb.s, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %i.an, %bb.n ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.k) #6
          to label %bb.f unwind label %bb.ac

bb.n:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.ao = extractvalue { ptr, i64 } %i.am, 0
  %i.ap = extractvalue { ptr, i64 } %i.am, 1
  %i.aq = invoke { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtCs6Po7BT7Nknu_5alloc6string6String4iterCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.ao, i64 %i.ap)
          to label %bb.p unwind label %bb.n       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  store ptr %i.j, ptr %i.g, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %i.au, align 8
  invoke void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCsbjGuDcEILED_11proc_macro211TokenStreamNCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00EB2R_(ptr nonnull sret([40 x i8]) align 8 %i.h, ptr %i.ar, ptr %i.as, ptr nonnull align 8 %i.g)
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  invoke void @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00ENtNtNtCsBGNUbrdbJ0_5quote9___private3ext14RepIteratorExt15quote_into_iterB1Z_(ptr nonnull sret([40 x i8]) align 8 %i.d, ptr nonnull align 8 %i.a)
          to label %bb.t unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.f) #6
          to label %bb.m unwind label %bb.ac

.loopexit:                                        ; preds = %.preheader, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.r, %bb.t, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  invoke void @_RNvXs0_NtCsBGNUbrdbJ0_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCsbvkFyIu7lgC_4core3ops3bit5BitOrIBC_Kb1_EE5bitor()
          to label %bb.u unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvYINtNtCsBGNUbrdbJ0_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBP_E5checkCs4ZaLwAtrTbk_16deltalake_derive()
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.u, %bb.ab
  invoke void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00ENtNtNtB9_6traits8iterator8Iterator4nextB25_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.e)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %.preheader
  %i.av = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.av, -9223372036854775807
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.f)
          to label %bb.ab unwind label %bb.aa

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.k)
          to label %bb.y unwind label %bb.g

bb.y:                                             ; preds = %bb.x
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesEBI_(ptr nonnull align 8 %i.m)
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %bb.y, %bb.c
  ret void

bb.aa:                                            ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c) #6
          to label %bb.s unwind label %bb.ac

bb.ab:                                            ; preds = %bb.w
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c)
          to label %.preheader unwind label %.loopexit

bb.ac:                                            ; preds = %bb.aa, %bb.s, %bb.m, %bb.f
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.ad:                                            ; preds = %bb.k, %3
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesEBI_(ptr nonnull align 8 %i.m)
  br label %bb.z

bb.ae:                                            ; preds = %bb.f
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0B3_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 15 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 2 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 14 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 3 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [32 x i8], align 8                ; 2 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 2 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [40 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
  %i.z = alloca [80 x i8], align 8                ; 4 uses
  %i.aa = alloca [80 x i8], align 8               ; 10 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 3 uses
  %i.ad = alloca [8 x i8], align 8                ; 3 uses
  %i.ae = load ptr, ptr %2, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 288
  %i.ag = tail call align 8 ptr @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtCsbjGuDcEILED_11proc_macro25IdentE6as_refCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.af) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr nonnull align 8 @25) #9
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.a
  store ptr %i.ag, ptr %i.ac, align 8
  store ptr %i.ac, ptr %i.ad, align 8
  call void @_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringRNtCsbjGuDcEILED_11proc_macro25IdentNtB5_8ToString9to_stringCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.ab, ptr nonnull align 8 %i.ac) #8
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  %i.aj = invoke { ptr, i64 } @_RNvXs7_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.ai)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.cn, %bb.bz, %bb.d
  %.pn29 = phi { ptr, i32 } [ %i.ak, %bb.d ], [ %.pn24.pn.pn.pn31, %bb.cn ], [ %i.cc, %bb.bz ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.ab) #6
          to label %bb.co unwind label %bb.ay

bb.d:                                             ; preds = %bb.ck, %bb.ca, %bb.e, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit
  %i.al = extractvalue { ptr, i64 } %i.aj, 0
  %i.am = extractvalue { ptr, i64 } %i.aj, 1
  invoke fastcc void @_RNvCs4ZaLwAtrTbk_16deltalake_derive24extract_field_attributes(ptr noalias align 8 %i.z, ptr align 8 %i.al, i64 %i.am)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.z, align 8
  %i.ao = icmp eq i64 %i.an, -9223372036854775808
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  br label %bb.cb

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 80, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %2, align 8
  invoke fastcc void @_RNvCs4ZaLwAtrTbk_16deltalake_derive16determine_parser(ptr noalias align 8 %i.x, ptr align 8 %i.at)
          to label %bb.k unwind label %.split.thread

.split.thread:                                    ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

3:                                                ; preds = %bb.h
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.ck

bb.j:                                             ; preds = %bb.n
  br i1 %.sroa.011.2, label %bb.cm, label %bb.cl

.split:                                           ; preds = %bb.bx
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.k:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.x, align 8
  %i.ax = icmp eq i64 %i.aw, -9223372036854775807
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  br label %bb.ck

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = invoke align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninitCs4ZaLwAtrTbk_16deltalake_derive(i64 8, i64 32) #8
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.o ; 3 uses

bb.n:                                             ; preds = %bb.u, %bb.p, %bb.o
  %.sroa.011.2 = phi i1 [ false, %bb.u ], [ %.sroa.011.3, %bb.o ], [ true, %bb.p ]
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.u ], [ %i.bd, %bb.o ], [ %.pn, %bb.p ] ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.y) #6
          to label %bb.j unwind label %bb.ay

bb.o:                                             ; preds = %bb.m, %bb.ax
  %.sroa.011.3 = phi i1 [ false, %bb.ax ], [ true, %bb.m ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.m
  store ptr %i.bc, ptr %i.v, align 8
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.u)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.s, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.be, %bb.q ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtB4_3mem12maybe_uninit11MaybeUninitANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_EEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.v) #6
          to label %bb.n unwind label %bb.ay

bb.q:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit
  invoke void @_RNvXs6_NtCsBGNUbrdbJ0_5quote9to_tokensNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.u)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.u) #6
          to label %bb.p unwind label %bb.ay

bb.t:                                             ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  store i64 1, ptr %i.w, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bc, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  invoke void @_RNvXsf_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr nonnull align 8 %i.s)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %.loopexit, %.loopexit35, %bb.y, %bb.v
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.y ], [ %.pn20, %.loopexit ], [ %i.bi, %bb.v ], [ %.pn15, %.loopexit35 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.w) #6
          to label %bb.n unwind label %bb.ay

bb.v:                                             ; preds = %bb.af, %bb.ae, %bb.ac, %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.cj, %bb.w
  invoke void @_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr nonnull align 8 %i.r)
          to label %bb.aa unwind label %bb.z

bb.y:                                             ; preds = %bb.ce, %bb.z
  %.pn24 = phi { ptr, i32 } [ %i.bj, %bb.z ], [ %.pn22, %bb.ce ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.r) #6
          to label %bb.u unwind label %bb.ay

bb.z:                                             ; preds = %bb.cj, %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  %i.bk = load i64, ptr %i.q, align 8
  %.not = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.n)
          to label %bb.cg unwind label %bb.cf

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.r)
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.ag unwind label %bb.v

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.m)
          to label %bb.bb unwind label %bb.v

bb.ag:                                            ; preds = %bb.ae
  %i.bl = invoke { ptr, ptr } @_RNvXs4_NtNtCsBGNUbrdbJ0_5quote9___private3extINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtB5_16RepAsIteratorExt15quote_into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.w)
          to label %bb.ah unwind label %.loopexit.split-lp36 ; 2 uses

.loopexit35:                                      ; preds = %.loopexit35.loopexit, %.loopexit35.loopexit.split-lp, %.loopexit.split-lp36, %bb.at
  %.pn15 = phi { ptr, i32 } [ %i.br, %bb.at ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp36 ], [ %lpad.loopexit41, %.loopexit35.loopexit ], [ %lpad.loopexit.split-lp42, %.loopexit35.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.f) #6
          to label %bb.u unwind label %bb.ay

.loopexit35.loopexit:                             ; preds = %bb.ba, %bb.az, %.preheader34
  %lpad.loopexit41 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit35

.loopexit35.loopexit.split-lp:                    ; preds = %.preheader34.preheader, %bb.ak
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit35

.loopexit.split-lp36:                             ; preds = %bb.ag, %bb.ah, %bb.ai, %.loopexit43, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.au, %bb.av, %bb.aw
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit35

bb.ah:                                            ; preds = %bb.ag
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0
  %i.bn = extractvalue { ptr, ptr } %i.bl, 1
  store ptr %i.bm, ptr %i.e, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  invoke void @_RNvXs0_NtCsBGNUbrdbJ0_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCsbvkFyIu7lgC_4core3ops3bit5BitOrIBC_Kb1_EE5bitor()
          to label %bb.ai unwind label %.loopexit.split-lp36

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvYINtNtCsBGNUbrdbJ0_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBP_E5checkCs4ZaLwAtrTbk_16deltalake_derive()
          to label %.preheader34.preheader unwind label %.loopexit.split-lp36

.preheader34.preheader:                           ; preds = %bb.ai
  %i.bp = invoke align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e)
          to label %bb.aj unwind label %.loopexit35.loopexit.split-lp ; 2 uses

bb.aj:                                            ; preds = %.preheader34.preheader
  %.not14.peel = icmp eq ptr %i.bp, null
  br i1 %.not14.peel, label %.loopexit43, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.bp, ptr %i.d, align 8
  invoke void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpRNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.f)
          to label %.preheader34 unwind label %.loopexit35.loopexit.split-lp

.preheader34:                                     ; preds = %bb.ak, %bb.ba
  %i.bq = invoke align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e)
          to label %bb.al unwind label %.loopexit35.loopexit ; 2 uses

bb.al:                                            ; preds = %.preheader34
  %.not14 = icmp eq ptr %i.bq, null
  br i1 %.not14, label %.loopexit43, label %bb.az

.loopexit43:                                      ; preds = %bb.al, %bb.aj
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private14push_fat_arrow(ptr nonnull align 8 %i.f)
          to label %bb.am unwind label %.loopexit.split-lp36

bb.am:                                            ; preds = %.loopexit43
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.f, ptr nonnull @2, i64 4)
          to label %bb.an unwind label %.loopexit.split-lp36

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_dot(ptr nonnull align 8 %i.f)
          to label %bb.ao unwind label %.loopexit.split-lp36

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRRNtCsbjGuDcEILED_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.f)
          to label %bb.ap unwind label %.loopexit.split-lp36

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr nonnull align 8 %i.f)
          to label %bb.aq unwind label %.loopexit.split-lp36

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.f)
          to label %bb.ar unwind label %.loopexit.split-lp36

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
          to label %bb.as unwind label %.loopexit.split-lp36

bb.as:                                            ; preds = %bb.ar
end_hunk_0
begin_hunk_1_@_RNCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0B3_:bb.a

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpRNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.f)
          to label %.preheader34 unwind label %.loopexit35.loopexit, !llvm.loop !3

bb.bb:                                            ; preds = %bb.af
  %i.bt = invoke { ptr, ptr } @_RNvXs4_NtNtCsBGNUbrdbJ0_5quote9___private3extINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtB5_16RepAsIteratorExt15quote_into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.w)
          to label %bb.bc unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %bb.bo
  %.pn20 = phi { ptr, i32 } [ %.pn18, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit45, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp46, %.loopexit.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.m) #6
          to label %bb.u unwind label %bb.ay

.loopexit.loopexit:                               ; preds = %bb.cd, %bb.cc, %.preheader
  %lpad.loopexit45 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %.preheader.preheader, %bb.bf
  %lpad.loopexit.split-lp46 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.bb, %bb.bc, %bb.bd, %.loopexit48, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bv, %bb.bw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.bu = extractvalue { ptr, ptr } %i.bt, 0
  %i.bv = extractvalue { ptr, ptr } %i.bt, 1
  store ptr %i.bu, ptr %i.l, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bv, ptr %i.bw, align 8
  invoke void @_RNvXs0_NtCsBGNUbrdbJ0_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCsbvkFyIu7lgC_4core3ops3bit5BitOrIBC_Kb1_EE5bitor()
          to label %bb.bd unwind label %.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvYINtNtCsBGNUbrdbJ0_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBP_E5checkCs4ZaLwAtrTbk_16deltalake_derive()
          to label %.preheader.preheader unwind label %.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.bd
  %i.bx = invoke align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.l)
          to label %bb.be unwind label %.loopexit.loopexit.split-lp ; 2 uses

bb.be:                                            ; preds = %.preheader.preheader
  %.not17.peel = icmp eq ptr %i.bx, null
  br i1 %.not17.peel, label %.loopexit48, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.bx, ptr %i.k, align 8
  invoke void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpRNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.m)
          to label %.preheader unwind label %.loopexit.loopexit.split-lp

.preheader:                                       ; preds = %bb.bf, %bb.cd
  %i.by = invoke align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.l)
          to label %bb.bg unwind label %.loopexit.loopexit ; 2 uses

bb.bg:                                            ; preds = %.preheader
  %.not17 = icmp eq ptr %i.by, null
  br i1 %.not17, label %.loopexit48, label %bb.cc

.loopexit48:                                      ; preds = %bb.bg, %bb.be
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private14push_fat_arrow(ptr nonnull align 8 %i.m)
          to label %bb.bh unwind label %.loopexit.split-lp

bb.bh:                                            ; preds = %.loopexit48
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.m, ptr nonnull @2, i64 4)
          to label %bb.bi unwind label %.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_dot(ptr nonnull align 8 %i.m)
          to label %bb.bj unwind label %.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRRNtCsbjGuDcEILED_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.m)
          to label %bb.bk unwind label %.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr nonnull align 8 %i.m)
          to label %bb.bl unwind label %.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.m, ptr nonnull @18, i64 4)
          to label %bb.bm unwind label %.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.i)
          to label %bb.bn unwind label %.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.i)
          to label %bb.bq unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bs, %bb.bp
  %.pn18 = phi { ptr, i32 } [ %i.bz, %bb.bp ], [ %i.ca, %bb.bs ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.i) #6
          to label %.loopexit unwind label %bb.ay

bb.bp:                                            ; preds = %bb.bu, %bb.bt, %bb.bq, %bb.bn
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bq:                                            ; preds = %bb.bn
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.g)
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.g, ptr nonnull @26, i64 1)
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.g) #6
          to label %bb.bo unwind label %bb.ay

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.i, i8 0, ptr nonnull align 8 %i.h)
          to label %bb.bu unwind label %bb.bp

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private13push_question(ptr nonnull align 8 %i.i)
          to label %bb.bv unwind label %bb.bp

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.m, i8 0, ptr nonnull align 8 %i.j)
          to label %bb.bw unwind label %.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_comma(ptr nonnull align 8 %i.m)
          to label %bb.ax unwind label %.loopexit.split-lp

bb.bx:                                            ; preds = %bb.ax
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.y)
          to label %bb.by unwind label %.split

bb.by:                                            ; preds = %bb.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.cb)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7nQiqFc7Txl_3syn(ptr nonnull align 8 %i.cd) #6
          to label %bb.c unwind label %bb.ay

bb.ca:                                            ; preds = %bb.by
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7nQiqFc7Txl_3syn(ptr nonnull align 8 %i.ce)
          to label %bb.cb unwind label %bb.d

bb.cb:                                            ; preds = %bb.ca, %bb.g, %bb.ck
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.ab)
  ret void

bb.cc:                                            ; preds = %bb.bg
  store ptr %i.by, ptr %i.k, align 8
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_or(ptr nonnull align 8 %i.m)
          to label %bb.cd unwind label %.loopexit.loopexit

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpRNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.m)
          to label %.preheader unwind label %.loopexit.loopexit, !llvm.loop !5

bb.ce:                                            ; preds = %bb.ch, %bb.cf
  %.pn22 = phi { ptr, i32 } [ %i.cf, %bb.cf ], [ %i.cg, %bb.ch ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.p) #6
          to label %bb.y unwind label %bb.ay

bb.cf:                                            ; preds = %bb.ci, %bb.ab
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cg:                                            ; preds = %bb.ab
  invoke void @_RNvXs6_NtCsBGNUbrdbJ0_5quote9to_tokensNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.n)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.n) #6
          to label %bb.ce unwind label %bb.ay

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  invoke void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.o)
          to label %bb.cj unwind label %bb.cf

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.p)
          to label %bb.x unwind label %bb.z

bb.ck:                                            ; preds = %bb.l, %3
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesEBI_(ptr nonnull align 8 %i.aa)
          to label %bb.cb unwind label %bb.d

bb.cl:                                            ; preds = %.split, %bb.cm, %bb.j
  %.pn24.pn.pn.pn31 = phi { ptr, i32 } [ %i.av, %.split ], [ %.pn24.pn.pn.pn32, %bb.cm ], [ %.pn24.pn.pn, %bb.j ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.ch) #6
          to label %bb.cn unwind label %bb.ay

bb.cm:                                            ; preds = %.split.thread, %bb.j
  %.pn24.pn.pn.pn32 = phi { ptr, i32 } [ %i.au, %.split.thread ], [ %.pn24.pn.pn, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.aa) #6
          to label %bb.cl unwind label %bb.ay

bb.cn:                                            ; preds = %bb.cl
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7nQiqFc7Txl_3syn(ptr nonnull align 8 %i.ci) #6
          to label %bb.c unwind label %bb.ay

bb.co:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn29
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCs4ZaLwAtrTbk_16deltalake_derive16determine_parser(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  %i.p = load i64, ptr %1, align 8
  %i.q = icmp eq i64 %i.p, 10
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.r, ptr %i.o, align 8
  call void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.l)
  invoke void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRNtNtCs7nQiqFc7Txl_3syn2ty8TypePathNtB2_8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.l)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = tail call { ptr, ptr } @_RNvMs4_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Arguments8from_strCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull @43, i64 39) #8 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %i.u = extractvalue { ptr, ptr } %i.s, 1
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr %i.t, ptr %i.u, ptr nonnull align 8 @44) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.l) #6
          to label %bb.ce unwind label %bb.ax

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  invoke void @_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToString9to_stringCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.m) #6
          to label %bb.ce unwind label %bb.ax

bb.g:                                             ; preds = %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.m)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.bx, %bb.bp, %bb.bh, %bb.az, %bb.ap, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.bx ], [ %i.x, %bb.i ], [ %i.bj, %bb.bp ], [ %i.bi, %bb.bh ], [ %i.bh, %bb.az ], [ %i.be, %bb.ap ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.n) #6
          to label %bb.ce unwind label %bb.ax

bb.i:                                             ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.y = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.n)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = invoke zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre11starts_withReECsbjGuDcEILED_11proc_macro2(ptr %i.z, i64 %i.aa, ptr nonnull @27, i64 6)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.n)
          to label %bb.m unwind label %bb.i       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  %i.af = invoke zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs4ZaLwAtrTbk_16deltalake_derive(ptr %i.ad, i64 %i.ae, ptr nonnull @28, i64 5)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.n)
          to label %bb.q unwind label %bb.i       ; 2 uses

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.k)
          to label %bb.bw unwind label %bb.i

bb.q:                                             ; preds = %bb.o
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1
  %i.aj = invoke zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs4ZaLwAtrTbk_16deltalake_derive(ptr %i.ah, i64 %i.ai, ptr nonnull @29, i64 3)
          to label %bb.r unwind label %bb.i

bb.r:                                             ; preds = %bb.q
  br i1 %i.aj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.n)
          to label %bb.u unwind label %bb.i       ; 2 uses

bb.t:                                             ; preds = %bb.v, %bb.r
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.j)
          to label %bb.bo unwind label %bb.i

bb.u:                                             ; preds = %bb.s
  %i.al = extractvalue { ptr, i64 } %i.ak, 0
  %i.am = extractvalue { ptr, i64 } %i.ak, 1
  %i.an = invoke zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs4ZaLwAtrTbk_16deltalake_derive(ptr %i.al, i64 %i.am, ptr nonnull @30, i64 3)
          to label %bb.v unwind label %bb.i

bb.v:                                             ; preds = %bb.u
  br i1 %i.an, label %bb.t, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.n)
          to label %bb.x unwind label %bb.i       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1
  %i.ar = invoke zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs4ZaLwAtrTbk_16deltalake_derive(ptr %i.ap, i64 %i.aq, ptr nonnull @31, i64 8)
          to label %bb.y unwind label %bb.i

bb.y:                                             ; preds = %bb.x
  br i1 %i.ar, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.n)
          to label %bb.ab unwind label %bb.i      ; 2 uses

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.i)
          to label %bb.bg unwind label %bb.i

bb.ab:                                            ; preds = %bb.z
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  %i.au = extractvalue { ptr, i64 } %i.as, 1
  %i.av = invoke zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs4ZaLwAtrTbk_16deltalake_derive(ptr %i.at, i64 %i.au, ptr nonnull @32, i64 4)
          to label %bb.ac unwind label %bb.i

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.av, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aw = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.n)
          to label %bb.af unwind label %bb.i      ; 2 uses

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.h)
          to label %bb.ay unwind label %bb.i

bb.af:                                            ; preds = %bb.ad
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  %i.az = invoke zeroext i1 @_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs4ZaLwAtrTbk_16deltalake_derive(ptr %i.ax, i64 %i.ay, ptr nonnull @33, i64 6)
          to label %bb.ag unwind label %bb.i

bb.ag:                                            ; preds = %bb.af
  br i1 %i.az, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvMNtNtCsbvkFyIu7lgC_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.n)
          to label %bb.aj unwind label %bb.i

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.g)
end_hunk_1
