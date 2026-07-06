inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@_RNCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0B3_:bb.a
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
  br label %bb.aa

bb.d:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.ae = invoke zeroext i1 @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtB6_6string6StringE8is_emptyCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ad)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.i, %bb.d
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.ae

bb.g:                                             ; preds = %bb.n, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.af, %bb.h ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesEBI_(ptr nonnull align 8 %i.m) #6
          to label %bb.af unwind label %bb.ad

bb.h:                                             ; preds = %bb.y, %bb.j, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  br i1 %i.ae, label %bb.f, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %2, align 8
  invoke fastcc void @_RNvCs4ZaLwAtrTbk_16deltalake_derive16determine_parser(ptr noalias align 8 %i.i, ptr align 8 %i.ag)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.i, align 8
  %i.ai = icmp eq i64 %i.ah, -9223372036854775807
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  br label %bb.ae

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.al = load i8, ptr %i.ak, align 8
  store i8 %i.al, ptr %i.j, align 1
  %i.am = invoke { ptr, i64 } @_RNvXs7_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ad)
          to label %bb.p unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.t, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.an, %bb.o ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.k) #6
          to label %bb.g unwind label %bb.ad

bb.o:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  %i.ao = extractvalue { ptr, i64 } %i.am, 0
  %i.ap = extractvalue { ptr, i64 } %i.am, 1
  %i.aq = invoke { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtCs6Po7BT7Nknu_5alloc6string6String4iterCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.ao, i64 %i.ap)
          to label %bb.q unwind label %bb.o       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  store ptr %i.j, ptr %i.g, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %i.au, align 8
  invoke void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCsbjGuDcEILED_11proc_macro211TokenStreamNCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00EB2R_(ptr nonnull sret([40 x i8]) align 8 %i.h, ptr %i.ar, ptr %i.as, ptr nonnull align 8 %i.g)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  invoke void @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00ENtNtNtCsBGNUbrdbJ0_5quote9___private3ext14RepIteratorExt15quote_into_iterB1Z_(ptr nonnull sret([40 x i8]) align 8 %i.d, ptr nonnull align 8 %i.a)
          to label %bb.u unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.f) #6
          to label %bb.n unwind label %bb.ad

.loopexit:                                        ; preds = %.preheader, %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.s, %bb.u, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  invoke void @_RNvXs0_NtCsBGNUbrdbJ0_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCsbvkFyIu7lgC_4core3ops3bit5BitOrIBC_Kb1_EE5bitor()
          to label %bb.v unwind label %.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvYINtNtCsBGNUbrdbJ0_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBP_E5checkCs4ZaLwAtrTbk_16deltalake_derive()
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.v, %bb.ac
  invoke void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00ENtNtNtB9_6traits8iterator8Iterator4nextB25_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.e)
          to label %bb.w unwind label %.loopexit

bb.w:                                             ; preds = %.preheader
  %i.av = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.av, -9223372036854775807
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.f)
          to label %bb.ac unwind label %bb.ab

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.k)
          to label %bb.z unwind label %bb.h

bb.z:                                             ; preds = %bb.y
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesEBI_(ptr nonnull align 8 %i.m)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %bb.z, %bb.c
  ret void

bb.ab:                                            ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c) #6
          to label %bb.t unwind label %bb.ad

bb.ac:                                            ; preds = %bb.x
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c)
          to label %.preheader unwind label %.loopexit

bb.ad:                                            ; preds = %bb.ab, %bb.t, %bb.n, %bb.g
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.ae:                                            ; preds = %bb.l, %bb.f
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesEBI_(ptr nonnull align 8 %i.m)
  br label %bb.aa

bb.af:                                            ; preds = %bb.g
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

bb.c:                                             ; preds = %bb.cp, %bb.cb, %bb.d
  %.pn29 = phi { ptr, i32 } [ %i.ak, %bb.d ], [ %.pn24.pn.pn.pn31, %bb.cp ], [ %i.cc, %bb.cb ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.ab) #6
          to label %bb.cq unwind label %bb.ba

bb.d:                                             ; preds = %bb.cm, %bb.cc, %bb.e, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE6unwrapCs4ZaLwAtrTbk_16deltalake_derive.exit
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
  br label %bb.cd

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 80, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %bb.i

end_hunk_0
