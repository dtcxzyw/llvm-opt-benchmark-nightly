inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@_RNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0B3_:bb.a
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
  %i.am = and i8 %i.al, 1
  store i8 %i.am, ptr %i.j, align 1
  %i.an = invoke { ptr, i64 } @_RNvXs7_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ad)
          to label %bb.p unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %bb.t, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.ao, %bb.o ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.k) #6
          to label %bb.g unwind label %bb.ad

bb.o:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  %i.ap = extractvalue { ptr, i64 } %i.an, 0
  %i.aq = extractvalue { ptr, i64 } %i.an, 1
  %i.ar = invoke { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtCs6Po7BT7Nknu_5alloc6string6String4iterCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.ap, i64 %i.aq)
          to label %bb.q unwind label %bb.o       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.as = extractvalue { ptr, ptr } %i.ar, 0
  %i.at = extractvalue { ptr, ptr } %i.ar, 1
  store ptr %i.j, ptr %i.g, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %i.av, align 8
  invoke void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCsbjGuDcEILED_11proc_macro211TokenStreamNCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00EB2R_(ptr nonnull sret([40 x i8]) align 8 %i.h, ptr %i.as, ptr %i.at, ptr nonnull align 8 %i.g)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  invoke void @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00ENtNtNtCsBGNUbrdbJ0_5quote9___private3ext14RepIteratorExt15quote_into_iterB1Z_(ptr nonnull sret([40 x i8]) align 8 %i.d, ptr nonnull align 8 %i.a)
          to label %bb.u unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
  %i.aw = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.aw, -9223372036854775807
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
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c) #6
          to label %bb.t unwind label %bb.ad

bb.ac:                                            ; preds = %bb.x
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsBGNUbrdbJ0_5quote9___private9RepInterpNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c)
          to label %.preheader unwind label %.loopexit

bb.ad:                                            ; preds = %bb.ab, %bb.t, %bb.n, %bb.g
  %i.ay = landingpad { ptr, i32 }
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
define hidden void @_RNCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0B3_(ptr writeonly sret([32 x i8]) align 8 captures(none) %0, ptr readnone captures(none) %1, ptr readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.v = alloca [8 x i8], align 8                 ; 3 uses
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

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %2, align 8
  invoke fastcc void @_RNvCs4ZaLwAtrTbk_16deltalake_derive16determine_parser(ptr noalias align 8 %i.x, ptr align 8 %i.at)
          to label %bb.m unwind label %.thread

.thread:                                          ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.j:                                             ; preds = %bb.h
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.cm

bb.k:                                             ; preds = %bb.p
  br i1 %.sroa.011.2, label %bb.co, label %bb.cn

bb.l:                                             ; preds = %bb.bz
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.m:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.x, align 8
  %i.ax = icmp eq i64 %i.aw, -9223372036854775807
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false)
  br label %bb.cm

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = invoke align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninitCs4ZaLwAtrTbk_16deltalake_derive(i64 8, i64 32) #8
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.w, %bb.r, %bb.q
  %.sroa.011.2 = phi i1 [ false, %bb.w ], [ %.sroa.011.3, %bb.q ], [ true, %bb.r ]
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.w ], [ %i.bd, %bb.q ], [ %.pn, %bb.r ] ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.y) #6
          to label %bb.k unwind label %bb.ba

bb.q:                                             ; preds = %bb.o, %bb.az
  %.sroa.011.3 = phi i1 [ false, %bb.az ], [ true, %bb.o ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.o
  store ptr %i.bc, ptr %i.v, align 8
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.u)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.u, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.u ], [ %i.be, %bb.s ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtB4_3mem12maybe_uninit11MaybeUninitANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_EEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.v) #6
          to label %bb.p unwind label %bb.ba

bb.s:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit
  invoke void @_RNvXs6_NtCsBGNUbrdbJ0_5quote9to_tokensNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.u)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.u) #6
          to label %bb.r unwind label %bb.ba

bb.v:                                             ; preds = %bb.t
  %3 = load ptr, ptr %i.v, align 8                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  store i64 1, ptr %i.w, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %3, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  invoke void @_RNvXsf_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr nonnull align 8 %i.s)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %.loopexit, %.loopexit35, %bb.aa, %bb.x
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.aa ], [ %.pn20, %.loopexit ], [ %i.bi, %bb.x ], [ %.pn15, %.loopexit35 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.w) #6
          to label %bb.p unwind label %bb.ba

bb.x:                                             ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.cl, %bb.y
  invoke void @_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr nonnull align 8 %i.r)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.cg, %bb.ab
  %.pn24 = phi { ptr, i32 } [ %i.bj, %bb.ab ], [ %.pn22, %bb.cg ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.r) #6
          to label %bb.w unwind label %bb.ba

bb.ab:                                            ; preds = %bb.cl, %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  %i.bk = load i64, ptr %i.q, align 8
  %.not = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.n)
          to label %bb.ci unwind label %bb.ch

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.r)
          to label %bb.af unwind label %bb.x

bb.af:                                            ; preds = %bb.ae
  br i1 %i.bb, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.ai unwind label %bb.x

bb.ah:                                            ; preds = %bb.af
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.m)
          to label %bb.bd unwind label %bb.x

bb.ai:                                            ; preds = %bb.ag
  %i.bl = invoke { ptr, ptr } @_RNvXs4_NtNtCsBGNUbrdbJ0_5quote9___private3extINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtB5_16RepAsIteratorExt15quote_into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.w)
          to label %bb.aj unwind label %.loopexit.split-lp36 ; 2 uses

.loopexit35:                                      ; preds = %.loopexit35.loopexit, %.loopexit35.loopexit.split-lp, %.loopexit.split-lp36, %bb.av
  %.pn15 = phi { ptr, i32 } [ %i.br, %bb.av ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp36 ], [ %lpad.loopexit41, %.loopexit35.loopexit ], [ %lpad.loopexit.split-lp42, %.loopexit35.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.f) #6
          to label %bb.w unwind label %bb.ba

.loopexit35.loopexit:                             ; preds = %bb.bc, %bb.bb, %.preheader34
  %lpad.loopexit41 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit35

.loopexit35.loopexit.split-lp:                    ; preds = %.preheader34.preheader, %bb.am
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit35

.loopexit.split-lp36:                             ; preds = %bb.ai, %bb.aj, %bb.ak, %.loopexit43, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.aw, %bb.ax, %bb.ay
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit35

bb.aj:                                            ; preds = %bb.ai
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0
  %i.bn = extractvalue { ptr, ptr } %i.bl, 1
  store ptr %i.bm, ptr %i.e, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  invoke void @_RNvXs0_NtCsBGNUbrdbJ0_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCsbvkFyIu7lgC_4core3ops3bit5BitOrIBC_Kb1_EE5bitor()
          to label %bb.ak unwind label %.loopexit.split-lp36

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvYINtNtCsBGNUbrdbJ0_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBP_E5checkCs4ZaLwAtrTbk_16deltalake_derive()
          to label %.preheader34.preheader unwind label %.loopexit.split-lp36

.preheader34.preheader:                           ; preds = %bb.ak
  %i.bp = invoke align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e)
          to label %bb.al unwind label %.loopexit35.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %.preheader34.preheader
  %.not14.peel = icmp eq ptr %i.bp, null
  br i1 %.not14.peel, label %.loopexit43, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.bp, ptr %i.d, align 8
  invoke void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpRNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.f)
          to label %.preheader34 unwind label %.loopexit35.loopexit.split-lp

.preheader34:                                     ; preds = %bb.am, %bb.bc
  %i.bq = invoke align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e)
          to label %bb.an unwind label %.loopexit35.loopexit ; 2 uses

bb.an:                                            ; preds = %.preheader34
  %.not14 = icmp eq ptr %i.bq, null
  br i1 %.not14, label %.loopexit43, label %bb.bb

.loopexit43:                                      ; preds = %bb.an, %bb.al
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private14push_fat_arrow(ptr nonnull align 8 %i.f)
          to label %bb.ao unwind label %.loopexit.split-lp36

bb.ao:                                            ; preds = %.loopexit43
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.f, ptr nonnull @2, i64 4)
          to label %bb.ap unwind label %.loopexit.split-lp36

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_dot(ptr nonnull align 8 %i.f)
          to label %bb.aq unwind label %.loopexit.split-lp36

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRRNtCsbjGuDcEILED_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.f)
          to label %bb.ar unwind label %.loopexit.split-lp36

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr nonnull align 8 %i.f)
          to label %bb.as unwind label %.loopexit.split-lp36

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.f)
          to label %bb.at unwind label %.loopexit.split-lp36

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
          to label %bb.au unwind label %.loopexit.split-lp36

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.b, ptr nonnull @26, i64 1)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.b) #6
          to label %.loopexit35 unwind label %bb.ba

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.f, i8 0, ptr nonnull align 8 %i.c)
          to label %bb.ax unwind label %.loopexit.split-lp36

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private13push_question(ptr nonnull align 8 %i.f)
          to label %bb.ay unwind label %.loopexit.split-lp36

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_comma(ptr nonnull align 8 %i.f)
          to label %bb.az unwind label %.loopexit.split-lp36

bb.az:                                            ; preds = %bb.ay, %bb.by
  %.sink = phi ptr [ %i.m, %bb.by ], [ %i.f, %bb.ay ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.w)
          to label %bb.bz unwind label %bb.q

bb.ba:                                            ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cj, %bb.cg, %bb.cb, %bb.bu, %bb.bq, %.loopexit, %bb.av, %.loopexit35, %bb.aa, %bb.w, %bb.u, %bb.r, %bb.p, %bb.c
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.bb:                                            ; preds = %bb.an
  store ptr %i.bq, ptr %i.d, align 8
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_or(ptr nonnull align 8 %i.f)
          to label %bb.bc unwind label %.loopexit35.loopexit

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpRNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.f)
          to label %.preheader34 unwind label %.loopexit35.loopexit, !llvm.loop !3

bb.bd:                                            ; preds = %bb.ah
  %i.bt = invoke { ptr, ptr } @_RNvXs4_NtNtCsBGNUbrdbJ0_5quote9___private3extINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtB5_16RepAsIteratorExt15quote_into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.w)
          to label %bb.be unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %bb.bq
  %.pn20 = phi { ptr, i32 } [ %.pn18, %bb.bq ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit45, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp46, %.loopexit.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.m) #6
          to label %bb.w unwind label %bb.ba

.loopexit.loopexit:                               ; preds = %bb.cf, %bb.ce, %.preheader
end_hunk_0
