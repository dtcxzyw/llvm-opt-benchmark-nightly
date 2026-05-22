inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@_RNCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00B5_:bb.a

bb.dt:                                            ; preds = %bb.ds
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ab, ptr nonnull @5, i64 2)
          to label %bb.dw unwind label %bb.dv

bb.du:                                            ; preds = %bb.ey, %bb.eo, %bb.ei, %bb.dy, %bb.dv
  %.pn8 = phi { ptr, i32 } [ %i.bu, %bb.dv ], [ %i.bz, %bb.ey ], [ %i.by, %bb.eo ], [ %i.bx, %bb.ei ], [ %i.bv, %bb.dy ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.ab) #6
          to label %bb.dk unwind label %bb.cd

bb.dv:                                            ; preds = %bb.fe, %bb.fd, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dw, %bb.dt
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dw:                                            ; preds = %bb.dt
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.z)
          to label %bb.dx unwind label %bb.dv

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.z, ptr nonnull @11, i64 6)
          to label %bb.dz unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.z) #6
          to label %bb.du unwind label %bb.cd

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.ab, i8 0, ptr nonnull align 8 %i.aa)
          to label %bb.ea unwind label %bb.dv

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private14push_fat_arrow(ptr nonnull align 8 %i.ab)
          to label %bb.eb unwind label %bb.dv

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ab, ptr nonnull @2, i64 4)
          to label %bb.ec unwind label %bb.dv

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_dot(ptr nonnull align 8 %i.ab)
          to label %bb.ed unwind label %bb.dv

bb.ed:                                            ; preds = %bb.ec
  %i.bw = load ptr, ptr %i.bl, align 8
  invoke void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRRNtCsbjGuDcEILED_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.bw, ptr nonnull align 8 %i.ab)
          to label %bb.ee unwind label %bb.dv

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr nonnull align 8 %i.ab)
          to label %bb.ef unwind label %bb.dv

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ab, ptr nonnull @18, i64 4)
          to label %bb.eg unwind label %bb.dv

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.x)
          to label %bb.eh unwind label %bb.dv

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.x, ptr nonnull @11, i64 6)
          to label %bb.ej unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.x) #6
          to label %bb.du unwind label %bb.cd

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.ab, i8 0, ptr nonnull align 8 %i.y)
          to label %bb.ek unwind label %bb.dv

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_comma(ptr nonnull align 8 %i.ab)
          to label %bb.el unwind label %bb.dv

bb.el:                                            ; preds = %bb.ek
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ab, ptr nonnull @12, i64 3)
          to label %bb.em unwind label %bb.dv

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.v)
          to label %bb.en unwind label %bb.dv

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.v, ptr nonnull @13, i64 1)
          to label %bb.ep unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.v) #6
          to label %bb.du unwind label %bb.cd

bb.ep:                                            ; preds = %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.ab, i8 0, ptr nonnull align 8 %i.w)
          to label %bb.eq unwind label %bb.dv

bb.eq:                                            ; preds = %bb.ep
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private14push_fat_arrow(ptr nonnull align 8 %i.ab)
          to label %bb.er unwind label %bb.dv

bb.er:                                            ; preds = %bb.eq
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.ab)
          to label %bb.es unwind label %bb.dv

bb.es:                                            ; preds = %bb.er
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ab, ptr nonnull @14, i64 7)
          to label %bb.et unwind label %bb.dv

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.ab)
          to label %bb.eu unwind label %bb.dv

bb.eu:                                            ; preds = %bb.et
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ab, ptr nonnull @15, i64 4)
          to label %bb.ev unwind label %bb.dv

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private9push_bang(ptr nonnull align 8 %i.ab)
          to label %bb.ew unwind label %bb.dv

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.t)
          to label %bb.ex unwind label %bb.dv

bb.ex:                                            ; preds = %bb.ew
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private5parse(ptr nonnull align 8 %i.t, ptr nonnull @16, i64 45)
          to label %bb.ez unwind label %bb.ey

bb.ey:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ex
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.t) #6
          to label %bb.du unwind label %bb.cd

bb.ez:                                            ; preds = %bb.ex
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_comma(ptr nonnull align 8 %i.t)
          to label %bb.fa unwind label %bb.ey

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB2_8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.t)
          to label %bb.fb unwind label %bb.ey

bb.fb:                                            ; preds = %bb.fa
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_comma(ptr nonnull align 8 %i.t)
          to label %bb.fc unwind label %bb.ey

bb.fc:                                            ; preds = %bb.fb
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.t, ptr nonnull @13, i64 1)
          to label %bb.fd unwind label %bb.ey

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.ab, i8 0, ptr nonnull align 8 %i.u)
          to label %bb.fe unwind label %bb.dv

bb.fe:                                            ; preds = %bb.fd
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_comma(ptr nonnull align 8 %i.ab)
          to label %bb.ff unwind label %bb.dv

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.af, i8 1, ptr nonnull align 8 %i.ac)
          to label %bb.fg unwind label %bb.dl

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.al, i8 1, ptr nonnull align 8 %i.ag)
          to label %bb.fh unwind label %bb.cr

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.ao, i8 1, ptr nonnull align 8 %i.am)
          to label %bb.cc unwind label %bb.cg
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0B3_(ptr sret([32 x i8]) align 8 %0, ptr readnone captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 2 uses
  %i.j = alloca [80 x i8], align 8                ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.r, align 8
  %i.s = load ptr, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  %i.u = tail call align 8 ptr @_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtCsbjGuDcEILED_11proc_macro25IdentE6as_refCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.t) #8
  call void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtCsbjGuDcEILED_11proc_macro25IdentE10ok_or_elseNtNtCs7nQiqFc7Txl_3syn5error5ErrorNCNCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys00EB29_(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr align 8 %i.u, ptr nonnull align 8 %i.r) #8
  call void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultRNtCsbjGuDcEILED_11proc_macro25IdentNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o) #8
  %i.v = load i64, ptr %i.p, align 8
  %.not = icmp eq i64 %i.v, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @23) #8
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void @_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr align 8 %i.x) #8
  store i64 19, ptr %i.l, align 8
  invoke void @_RNvXCsl1mHGn7pXMx_12convert_caseNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_6CasingBu_E7to_caseCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.l)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.k, %bb.g, %bb.e
  %.pn12 = phi { ptr, i32 } [ %i.y, %bb.e ], [ %.pn10, %bb.k ], [ %i.aa, %bb.g ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.q) #6
          to label %bb.az unwind label %bb.aj

bb.e:                                             ; preds = %bb.ay, %3, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.z = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.m)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.m) #6
          to label %bb.d unwind label %bb.aj

bb.h:                                             ; preds = %bb.f
  %i.ab = invoke i32 @_RNvMsi_CsbjGuDcEILED_11proc_macro2NtB5_4Span9call_site()
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { ptr, i64 } %i.z, 1
  %i.ad = extractvalue { ptr, i64 } %i.z, 0
  invoke void @_RNvMsx_CsbjGuDcEILED_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr %i.ad, i64 %i.ac, i32 %i.ab, ptr nonnull align 8 @20)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.m)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.ax, %bb.aw, %bb.ar, %bb.l
  %.pn10 = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.ay, %bb.ar ], [ %.pn8, %bb.ax ], [ %.pn8, %bb.aw ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentEBI_(ptr nonnull align 8 %i.n) #6
          to label %bb.d unwind label %bb.aj

bb.l:                                             ; preds = %bb.as, %bb.q, %bb.o, %bb.n, %bb.m, %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.r, align 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  %i.ai = invoke { ptr, i64 } @_RNvXs7_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.ah)
          to label %bb.n unwind label %bb.l       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  invoke fastcc void @_RNvCs4ZaLwAtrTbk_16deltalake_derive24extract_field_attributes(ptr noalias align 8 %i.i, ptr align 8 %i.aj, i64 %i.ak)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBM_(ptr nonnull sret([80 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.p unwind label %bb.l

bb.p:                                             ; preds = %bb.o
  %i.al = load i64, ptr %i.j, align 8
  %i.am = icmp eq i64 %i.al, -9223372036854775808
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @22)
          to label %bb.ay unwind label %bb.l

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %.not3 = icmp eq i64 %i.ap, -9223372036854775808 ; 2 uses
  br i1 %.not3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.w unwind label %bb.v

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.h)
          to label %bb.ai unwind label %bb.ah

bb.u:                                             ; preds = %bb.x, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.ar, %bb.v ]
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
          to label %bb.av unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ap, %bb.af, %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %bb.t, %bb.af
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.am unwind label %bb.al

bb.aj:                                            ; preds = %bb.ax, %bb.av, %bb.ar, %bb.an, %bb.ak, %bb.ag, %bb.ab, %bb.x, %bb.u, %bb.k, %bb.g, %bb.d
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
          to label %3 unwind label %bb.l

3:                                                ; preds = %bb.as
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentEBI_(ptr nonnull align 8 %i.n)
          to label %bb.at unwind label %bb.e

bb.at:                                            ; preds = %3
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.q)
  br label %bb.au

bb.au:                                            ; preds = %4, %bb.at, %bb.b
  ret void

bb.av:                                            ; preds = %bb.ag
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.bb) #6
          to label %bb.aw unwind label %bb.aj

bb.aw:                                            ; preds = %bb.av
  %i.bc = load i64, ptr %i.ao, align 8
  %i.bd = icmp ne i64 %i.bc, -9223372036854775808
  %or.cond = and i1 %.not3, %i.bd
  br i1 %or.cond, label %bb.ax, label %bb.k

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.ao) #6
          to label %bb.k unwind label %bb.aj

bb.ay:                                            ; preds = %bb.q
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentEBI_(ptr nonnull align 8 %i.n)
          to label %4 unwind label %bb.e

4:                                                ; preds = %bb.ay
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.q)
  br label %bb.au

bb.az:                                            ; preds = %bb.d
  resume { ptr, i32 } %.pn12
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0B3_(ptr writeonly sret([32 x i8]) align 8 captures(none) %0, ptr readnone captures(none) %1, ptr readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br label %3

bb.g:                                             ; preds = %bb.n, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.af, %bb.h ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesEBI_(ptr nonnull align 8 %i.m) #6
          to label %bb.ae unwind label %bb.ad

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
  br label %3

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

bb.aa:                                            ; preds = %3, %bb.z, %bb.c
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

3:                                                ; preds = %bb.l, %bb.f
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesEBI_(ptr nonnull align 8 %i.m)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.g
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
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxANtCsbjGuDcEILED_11proc_macro211TokenStreamj1_E10new_uninitCs4ZaLwAtrTbk_16deltalake_derive.exit unwind label %bb.q ; 3 uses

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
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  store i64 1, ptr %i.w, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bc, ptr %i.bg, align 8
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
end_hunk_0
begin_hunk_1_@_RNvCs4ZaLwAtrTbk_16deltalake_derive16determine_parser:bb.a

bb.bg:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.i, ptr nonnull @35, i64 5)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bg
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.i) #6
          to label %bb.h unwind label %bb.ax

bb.bi:                                            ; preds = %bb.bg
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.i)
          to label %bb.bj unwind label %bb.bh

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.i, ptr nonnull @36, i64 8)
          to label %bb.bk unwind label %bb.bh

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.i)
          to label %bb.bl unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.i, ptr nonnull @37, i64 6)
          to label %bb.bm unwind label %bb.bh

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.i)
          to label %bb.bn unwind label %bb.bh

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.i, ptr nonnull @40, i64 14)
          to label %bb.aw unwind label %bb.bh

bb.bo:                                            ; preds = %bb.t
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.j, ptr nonnull @35, i64 5)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bo
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.j) #6
          to label %bb.h unwind label %bb.ax

bb.bq:                                            ; preds = %bb.bo
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.j)
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.j, ptr nonnull @36, i64 8)
          to label %bb.bs unwind label %bb.bp

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.j)
          to label %bb.bt unwind label %bb.bp

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.j, ptr nonnull @37, i64 6)
          to label %bb.bu unwind label %bb.bp

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.j)
          to label %bb.bv unwind label %bb.bp

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.j, ptr nonnull @41, i64 9)
          to label %bb.aw unwind label %bb.bp

bb.bw:                                            ; preds = %bb.p
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.k, ptr nonnull @35, i64 5)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bw
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.k) #6
          to label %bb.h unwind label %bb.ax

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.k)
          to label %bb.bz unwind label %bb.bx

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.k, ptr nonnull @36, i64 8)
          to label %bb.ca unwind label %bb.bx

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.k)
          to label %bb.cb unwind label %bb.bx

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.k, ptr nonnull @37, i64 6)
          to label %bb.cc unwind label %bb.bx

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.k)
          to label %bb.cd unwind label %bb.bx

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.k, ptr nonnull @42, i64 11)
          to label %bb.aw unwind label %bb.bx

bb.ce:                                            ; preds = %bb.h, %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.w, %bb.f ], [ %i.v, %bb.d ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_config(i32 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 17 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 20 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 45 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 11 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 16 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 8 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 4 uses
  %i.av = alloca [32 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [32 x i8], align 8               ; 12 uses
  %i.be = alloca [32 x i8], align 8               ; 4 uses
  %i.bf = alloca [32 x i8], align 8               ; 10 uses
  %i.bg = alloca [32 x i8], align 8               ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %i.bi = alloca [32 x i8], align 8               ; 18 uses
  %i.bj = alloca [32 x i8], align 8               ; 4 uses
  %i.bk = alloca [32 x i8], align 8               ; 29 uses
  %i.bl = alloca [32 x i8], align 8               ; 4 uses
  %i.bm = alloca [32 x i8], align 8               ; 6 uses
  %i.bn = alloca [32 x i8], align 8               ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 18 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [32 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [32 x i8], align 8               ; 4 uses
  %i.bt = alloca [32 x i8], align 8               ; 5 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 2 uses
  %i.bx = alloca [24 x i8], align 8               ; 2 uses
  %i.by = alloca [32 x i8], align 8               ; 2 uses
  %i.bz = alloca [32 x i8], align 8               ; 6 uses
  %i.ca = alloca [32 x i8], align 8               ; 4 uses
  %i.cb = alloca [32 x i8], align 8               ; 2 uses
  %i.cc = alloca [32 x i8], align 8               ; 5 uses
  %i.cd = alloca [32 x i8], align 8               ; 4 uses
  %i.ce = alloca [32 x i8], align 8               ; 2 uses
  %i.cf = alloca [32 x i8], align 8               ; 6 uses
  %i.cg = alloca [32 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [32 x i8], align 8               ; 2 uses
  %i.cj = alloca [24 x i8], align 8               ; 4 uses
  %i.ck = alloca [240 x i8], align 8              ; 4 uses
  %i.cl = alloca [240 x i8], align 8              ; 7 uses
  call void @_RINvCs7nQiqFc7Txl_3syn5parseNtNtB2_6derive11DeriveInputECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([240 x i8]) align 8 %i.ck, i32 %0)
  %i.cm = load i64, ptr %i.ck, align 8
  %i.cn = icmp eq i64 %i.cm, 5
  br i1 %i.cn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  invoke void @_RNvMNtCs7nQiqFc7Txl_3syn5errorNtB2_5Error16to_compile_error(ptr nonnull sret([32 x i8]) align 8 %i.ci, ptr nonnull align 8 %i.cj)
          to label %bb.kx unwind label %bb.kw

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.cl, ptr noundef nonnull align 8 dereferenceable(240) %i.ck, i64 240, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 216 ; 3 uses
  %i.cq = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 3
  br i1 %i.cr, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ct = invoke { ptr, ptr } @_RNvMs4_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Arguments8from_strCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull @49, i64 44)
          to label %.invoke unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cv = invoke { ptr, ptr } @_RNvXs9_NtCs7nQiqFc7Txl_3syn10punctuatedRINtB5_10PunctuatedNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.cu)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %bb.d
  %i.cw = invoke { ptr, ptr } @_RNvMs4_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Arguments8from_strCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull @47, i64 62)
          to label %.invoke unwind label %bb.i

bb.h:                                             ; preds = %.body, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.cx, %bb.i ], [ %.pn7, %.body ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.cl) #6
          to label %bb.kv unwind label %bb.kq

bb.i:                                             ; preds = %.invoke, %bb.kt, %bb.kn, %bb.j, %bb.g, %bb.f, %bb.e
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.f
  %i.cy = extractvalue { ptr, ptr } %i.cv, 0
  %i.cz = extractvalue { ptr, ptr } %i.cv, 1
  invoke void @_RINvYINtNtCs7nQiqFc7Txl_3syn10punctuated4IterNtNtB8_4data5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtCs6Po7BT7Nknu_5alloc3vec3VecRBH_EECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.ch, ptr %i.cy, ptr align 8 %i.cz)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.da = invoke { ptr, i64 } @_RNvXs7_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ch)
          to label %bb.m unwind label %bb.l       ; 2 uses

.body:                                            ; preds = %bb.p, %bb.l, %.body29
  %.pn7 = phi { ptr, i32 } [ %.pn5, %.body29 ], [ %i.db, %bb.l ], [ %.pn15.i, %bb.p ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ch) #6
          to label %bb.h unwind label %bb.kq

bb.l:                                             ; preds = %.invoke39, %bb.n, %.noexc14, %.noexc13, %.noexc, %bb.m, %bb.ku, %bb.ks, %bb.km, %bb.er, %bb.k
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.k
  %i.dc = extractvalue { ptr, i64 } %i.da, 0      ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.da, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %i.cp, ptr %i.bv, align 8, !noalias !6
  %i.de = invoke { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core5sliceSRNtNtCs7nQiqFc7Txl_3syn4data5Field4iterCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.dc, i64 %i.dd) #8
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %bb.m
  %i.df = extractvalue { ptr, ptr } %i.de, 0
  %i.dg = extractvalue { ptr, ptr } %i.de, 1
  %i.dh = invoke { ptr, ptr } @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EB3z_(ptr %i.df, ptr %i.dg) #8
          to label %.noexc13 unwind label %bb.l   ; 2 uses

.noexc13:                                         ; preds = %.noexc
  %i.di = extractvalue { ptr, ptr } %i.dh, 0
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1
  invoke void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtCsFBWFmMICZI_9itertools9Itertools11try_collectNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3R_ENtNtB1A_5error5ErrorEB28_(ptr nonnull sret([32 x i8]) align 8 %i.bs, ptr %i.di, ptr %i.dj)
          to label %.noexc14 unwind label %bb.l

.noexc14:                                         ; preds = %.noexc13
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.bt, ptr nonnull align 8 %i.bs) #8
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %.noexc14
  %i.dk = load i64, ptr %i.bt, align 8, !noalias !6
  %i.dl = trunc nuw i64 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !6
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.cf, ptr nonnull align 8 %i.ah, ptr nonnull align 8 @84) #8
          to label %bb.eq unwind label %bb.l

bb.o:                                             ; preds = %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !6
  %i.dn = invoke { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core5sliceSRNtNtCs7nQiqFc7Txl_3syn4data5Field4iterCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.dc, i64 %i.dd) #8
          to label %.noexc.i unwind label %bb.q, !noalias !6 ; 2 uses

.noexc.i:                                         ; preds = %bb.o
  %i.do = extractvalue { ptr, ptr } %i.dn, 0
  %i.dp = extractvalue { ptr, ptr } %i.dn, 1
  %i.dq = invoke { ptr, ptr } @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EB3z_(ptr %i.do, ptr %i.dp) #8
          to label %.noexc17.i unwind label %bb.q, !noalias !6 ; 2 uses

.noexc17.i:                                       ; preds = %.noexc.i
  %i.dr = extractvalue { ptr, ptr } %i.dq, 0
  %i.ds = extractvalue { ptr, ptr } %i.dq, 1
  invoke void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtCsFBWFmMICZI_9itertools9Itertools11try_collectNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3Q_ENtNtB1A_5error5ErrorEB28_(ptr nonnull sret([32 x i8]) align 8 %i.bp, ptr %i.dr, ptr %i.ds)
          to label %_RNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env.exit.i unwind label %bb.q, !noalias !6

bb.p:                                             ; preds = %bb.u, %bb.q
  %.pn15.i = phi { ptr, i32 } [ %i.dt, %bb.q ], [ %.pn9.pn.pn.pn.pn.i, %bb.u ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.bu) #6
          to label %.body unwind label %bb.ep

bb.q:                                             ; preds = %bb.eo, %bb.s, %_RNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env.exit.i, %.noexc17.i, %.noexc.i, %bb.o
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_RNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env.exit.i: ; preds = %.noexc17.i
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.bq, ptr nonnull align 8 %i.bp)
          to label %bb.r unwind label %bb.q, !noalias !6

bb.r:                                             ; preds = %_RNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env.exit.i
  %i.du = load i64, ptr %i.bq, align 8, !noalias !6
  %i.dv = trunc nuw i64 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false), !noalias !6
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.cf, ptr nonnull align 8 %i.ai, ptr nonnull align 8 @83)
          to label %.invoke39 unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false), !noalias !6
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bo)
          to label %bb.w unwind label %bb.v, !noalias !6

bb.u:                                             ; preds = %bb.x, %bb.v
  %.pn9.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.pn.pn.i, %bb.x ], [ %i.dx, %bb.v ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.br) #6
          to label %bb.p unwind label %bb.ep, !noalias !6

bb.v:                                             ; preds = %bb.t
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_pound(ptr nonnull align 8 %i.bo)
          to label %bb.z unwind label %bb.y, !noalias !6

bb.x:                                             ; preds = %bb.ap, %bb.ab, %bb.y
  %.pn9.pn.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.pn.i, %bb.ap ], [ %i.dy, %bb.y ], [ %i.dz, %bb.ab ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.bo) #6
          to label %bb.u unwind label %bb.ep, !noalias !6

bb.y:                                             ; preds = %bb.en, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.z, %bb.w
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bm)
          to label %bb.aa unwind label %bb.y, !noalias !6

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bm, ptr nonnull @53, i64 21)
          to label %bb.ac unwind label %bb.ab, !noalias !6

bb.ab:                                            ; preds = %bb.aa
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.bm) #6
          to label %bb.x unwind label %bb.ep, !noalias !6

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !noalias !6
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.bo, i8 2, ptr nonnull align 8 %i.bn)
          to label %bb.ad unwind label %bb.y, !noalias !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bo, ptr nonnull @57, i64 4)
          to label %bb.ae unwind label %bb.y, !noalias !6

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bo, ptr nonnull @35, i64 5)
          to label %bb.af unwind label %bb.y, !noalias !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.bo)
          to label %bb.ag unwind label %bb.y, !noalias !6

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bo, ptr nonnull @36, i64 8)
          to label %bb.ah unwind label %bb.y, !noalias !6

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.bo)
          to label %bb.ai unwind label %bb.y, !noalias !6

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bo, ptr nonnull @37, i64 6)
          to label %bb.aj unwind label %bb.y, !noalias !6

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.bo)
          to label %bb.ak unwind label %bb.y, !noalias !6

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bo, ptr nonnull @74, i64 12)
          to label %bb.al unwind label %bb.y, !noalias !6

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bo, ptr nonnull @61, i64 3)
          to label %bb.am unwind label %bb.y, !noalias !6

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXNtCsBGNUbrdbJ0_5quote9to_tokensRNtCsbjGuDcEILED_11proc_macro25IdentNtB2_8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.bv, ptr nonnull align 8 %i.bo)
          to label %bb.an unwind label %bb.y, !noalias !6

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bk)
          to label %bb.ao unwind label %bb.y, !noalias !6

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bk, ptr nonnull @66, i64 2)
          to label %bb.ar unwind label %bb.aq, !noalias !6

bb.ap:                                            ; preds = %bb.ds, %bb.de, %bb.bu, %bb.au, %bb.aq
  %.pn9.pn.pn.i = phi { ptr, i32 } [ %.pn9.pn.i, %bb.bu ], [ %.pn7.i, %bb.ds ], [ %i.ea, %bb.aq ], [ %i.el, %bb.de ], [ %i.eb, %bb.au ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.bk) #6
          to label %bb.x unwind label %bb.ep, !noalias !6

bb.aq:                                            ; preds = %bb.em, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.as, %bb.ar, %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ao
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bk, ptr nonnull @75, i64 14)
          to label %bb.as unwind label %bb.aq, !noalias !6

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bi)
          to label %bb.at unwind label %bb.aq, !noalias !6

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_and(ptr nonnull align 8 %i.bi)
          to label %bb.av unwind label %bb.au, !noalias !6

bb.au:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.at
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.bi) #6
          to label %bb.ap unwind label %bb.ep, !noalias !6

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bi, ptr nonnull @76, i64 3)
          to label %bb.aw unwind label %bb.au, !noalias !6

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bi, ptr nonnull @2, i64 4)
          to label %bb.ax unwind label %bb.au, !noalias !6

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_comma(ptr nonnull align 8 %i.bi)
          to label %bb.ay unwind label %bb.au, !noalias !6

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bi, ptr nonnull @77, i64 3)
          to label %bb.az unwind label %bb.au, !noalias !6

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_colon(ptr nonnull align 8 %i.bi)
          to label %bb.ba unwind label %bb.au, !noalias !6

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_and(ptr nonnull align 8 %i.bi)
          to label %bb.bb unwind label %bb.au, !noalias !6

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bi, ptr nonnull @64, i64 3)
          to label %bb.bc unwind label %bb.au, !noalias !6

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_comma(ptr nonnull align 8 %i.bi)
          to label %bb.bd unwind label %bb.au, !noalias !6

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bi, ptr nonnull @26, i64 1)
          to label %bb.be unwind label %bb.au, !noalias !6

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_colon(ptr nonnull align 8 %i.bi)
          to label %bb.bf unwind label %bb.au, !noalias !6

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_and(ptr nonnull align 8 %i.bi)
          to label %bb.bg unwind label %bb.au, !noalias !6

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bi, ptr nonnull @64, i64 3)
          to label %bb.bh unwind label %bb.au, !noalias !6

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !noalias !6
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.bk, i8 0, ptr nonnull align 8 %i.bj)
          to label %bb.bi unwind label %bb.aq, !noalias !6

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_rarrow(ptr nonnull align 8 %i.bk)
          to label %bb.bj unwind label %bb.aq, !noalias !6

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bk, ptr nonnull @35, i64 5)
          to label %bb.bk unwind label %bb.aq, !noalias !6

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.bk)
          to label %bb.bl unwind label %bb.aq, !noalias !6

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bk, ptr nonnull @78, i64 11)
          to label %bb.bm unwind label %bb.aq, !noalias !6

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_lt(ptr nonnull align 8 %i.bk)
          to label %bb.bn unwind label %bb.aq, !noalias !6

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bk, ptr nonnull @27, i64 6)
end_hunk_1
begin_hunk_2_@_RNvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_config:bb.a
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.bf, i8 0, ptr nonnull align 8 %i.ay)
          to label %bb.cz unwind label %bb.bv, !noalias !6

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !6
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.bk, i8 1, ptr nonnull align 8 %i.bg)
          to label %bb.da unwind label %bb.aq, !noalias !6

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bk, ptr nonnull @66, i64 2)
          to label %bb.db unwind label %bb.aq, !noalias !6

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bk, ptr nonnull @81, i64 21)
          to label %bb.dc unwind label %bb.aq, !noalias !6

bb.dc:                                            ; preds = %bb.db
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.as)
          to label %bb.dd unwind label %bb.aq, !noalias !6

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_and(ptr nonnull align 8 %i.as)
          to label %bb.df unwind label %bb.de, !noalias !6

bb.de:                                            ; preds = %bb.dg, %bb.df, %bb.dd
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.as) #6
          to label %bb.ap unwind label %bb.ep, !noalias !6

bb.df:                                            ; preds = %bb.dd
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.as, ptr nonnull @76, i64 3)
          to label %bb.dg unwind label %bb.de, !noalias !6

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.as, ptr nonnull @2, i64 4)
          to label %bb.dh unwind label %bb.de, !noalias !6

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !noalias !6
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.bk, i8 0, ptr nonnull align 8 %i.at)
          to label %bb.di unwind label %bb.aq, !noalias !6

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_rarrow(ptr nonnull align 8 %i.bk)
          to label %bb.dj unwind label %bb.aq, !noalias !6

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bk, ptr nonnull @35, i64 5)
          to label %bb.dk unwind label %bb.aq, !noalias !6

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.bk)
          to label %bb.dl unwind label %bb.aq, !noalias !6

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.bk, ptr nonnull @78, i64 11)
          to label %bb.dm unwind label %bb.aq, !noalias !6

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_lt(ptr nonnull align 8 %i.bk)
          to label %bb.dn unwind label %bb.aq, !noalias !6

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ar)
          to label %bb.do unwind label %bb.aq, !noalias !6

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.bk, i8 0, ptr nonnull align 8 %i.ar)
          to label %bb.dp unwind label %bb.aq, !noalias !6

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_gt(ptr nonnull align 8 %i.bk)
          to label %bb.dq unwind label %bb.aq, !noalias !6

bb.dq:                                            ; preds = %bb.dp
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ap)
          to label %bb.dr unwind label %bb.aq, !noalias !6

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ap, ptr nonnull @4, i64 3)
          to label %bb.dt unwind label %.loopexit.split-lp.i, !noalias !6

bb.ds:                                            ; preds = %bb.ej, %.loopexit.split-lp.i, %.loopexit.i
  %.pn7.i = phi { ptr, i32 } [ %i.er, %bb.ej ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.ap) #6
          to label %bb.ap unwind label %bb.ep, !noalias !6

.loopexit.i:                                      ; preds = %bb.ef, %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.loopexit.split-lp.i:                             ; preds = %bb.el, %bb.eh, %bb.eg, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dr
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dt:                                            ; preds = %bb.dr
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ap, ptr nonnull @3, i64 14)
          to label %bb.du unwind label %.loopexit.split-lp.i, !noalias !6

bb.du:                                            ; preds = %bb.dt
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr nonnull align 8 %i.ap)
          to label %bb.dv unwind label %.loopexit.split-lp.i, !noalias !6

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ap, ptr nonnull @72, i64 4)
          to label %bb.dw unwind label %.loopexit.split-lp.i, !noalias !6

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.ap)
          to label %bb.dx unwind label %.loopexit.split-lp.i, !noalias !6

bb.dx:                                            ; preds = %bb.dw
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ap, ptr nonnull @82, i64 7)
          to label %bb.dy unwind label %.loopexit.split-lp.i, !noalias !6

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ao)
          to label %bb.dz unwind label %.loopexit.split-lp.i, !noalias !6

bb.dz:                                            ; preds = %bb.dy
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.ap, i8 0, ptr nonnull align 8 %i.ao)
          to label %bb.ea unwind label %.loopexit.split-lp.i, !noalias !6

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private9push_semi(ptr nonnull align 8 %i.ap)
          to label %bb.eb unwind label %.loopexit.split-lp.i, !noalias !6

bb.eb:                                            ; preds = %bb.ea
  %i.em = invoke { ptr, ptr } @_RNvXs4_NtNtCsBGNUbrdbJ0_5quote9___private3extINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtB5_16RepAsIteratorExt15quote_into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.br)
          to label %bb.ec unwind label %.loopexit.split-lp.i, !noalias !6 ; 2 uses

bb.ec:                                            ; preds = %bb.eb
  %i.en = extractvalue { ptr, ptr } %i.em, 0
  %i.eo = extractvalue { ptr, ptr } %i.em, 1
  store ptr %i.en, ptr %i.an, align 8, !noalias !6
  %i.ep = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.eo, ptr %i.ep, align 8, !noalias !6
  invoke void @_RNvXs0_NtCsBGNUbrdbJ0_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCsbvkFyIu7lgC_4core3ops3bit5BitOrIBC_Kb1_EE5bitor()
          to label %bb.ed unwind label %.loopexit.split-lp.i, !noalias !6

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvYINtNtCsBGNUbrdbJ0_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBP_E5checkCs4ZaLwAtrTbk_16deltalake_derive()
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !noalias !6

.preheader.i:                                     ; preds = %bb.ed, %bb.ef
  %i.eq = invoke align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.an)
          to label %bb.ee unwind label %.loopexit.i, !noalias !6 ; 2 uses

bb.ee:                                            ; preds = %.preheader.i
  %.not6.i = icmp eq ptr %i.eq, null
  br i1 %.not6.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.eq, ptr %i.am, align 8, !noalias !6
  invoke void @_RNvXs5_NtCsBGNUbrdbJ0_5quote9___privateINtB5_9RepInterpRNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.ap)
          to label %.preheader.i unwind label %.loopexit.i, !noalias !6

bb.eg:                                            ; preds = %bb.ee
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.ap, ptr nonnull @5, i64 2)
          to label %bb.eh unwind label %.loopexit.split-lp.i, !noalias !6

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ak)
          to label %bb.ei unwind label %.loopexit.split-lp.i, !noalias !6

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aj)
          to label %bb.ek unwind label %bb.ej, !noalias !6

bb.ej:                                            ; preds = %bb.ek, %bb.ei
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.ak) #6
          to label %bb.ds unwind label %bb.ep, !noalias !6

bb.ek:                                            ; preds = %bb.ei
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.ak, i8 0, ptr nonnull align 8 %i.aj)
          to label %bb.el unwind label %bb.ej, !noalias !6

bb.el:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !6
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.ap, i8 0, ptr nonnull align 8 %i.al)
          to label %bb.em unwind label %.loopexit.split-lp.i, !noalias !6

bb.em:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !noalias !6
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.bk, i8 1, ptr nonnull align 8 %i.aq)
          to label %bb.en unwind label %bb.aq, !noalias !6

bb.en:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false), !noalias !6
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.bo, i8 1, ptr nonnull align 8 %i.bl)
          to label %bb.eo unwind label %bb.y, !noalias !6

bb.eo:                                            ; preds = %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.br)
          to label %.invoke39 unwind label %bb.q, !noalias !6

bb.ep:                                            ; preds = %bb.ej, %bb.ds, %bb.de, %bb.cv, %bb.cr, %bb.ck, %bb.bz, %bb.bu, %bb.au, %bb.ap, %bb.ab, %bb.x, %bb.u, %bb.p
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

.invoke39:                                        ; preds = %bb.s, %bb.eo
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.bu)
          to label %bb.eq unwind label %bb.l

bb.eq:                                            ; preds = %.invoke39, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.et = load i64, ptr %i.cf, align 8
  %i.eu = icmp eq i64 %i.et, -9223372036854775807
  br i1 %i.eu, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false)
  invoke void @_RNvMNtCs7nQiqFc7Txl_3syn5errorNtB2_5Error18into_compile_error(ptr nonnull sret([32 x i8]) align 8 %i.ce, ptr nonnull align 8 %i.bw)
          to label %bb.ku unwind label %bb.l

bb.es:                                            ; preds = %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false)
  %i.ew = invoke { ptr, i64 } @_RNvXs7_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ch)
          to label %bb.eu unwind label %bb.et     ; 2 uses

.body29:                                          ; preds = %bb.ev, %bb.ez, %bb.et, %.body33
  %.pn5 = phi { ptr, i32 } [ %.pn3, %.body33 ], [ %i.ex, %bb.et ], [ %.pn6.i, %bb.ez ], [ %i.fe, %bb.ev ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.cg) #6
          to label %.body unwind label %bb.kq

bb.et:                                            ; preds = %bb.gc, %.noexc26.a, %.noexc25.a, %bb.eu, %bb.kr, %bb.kl, %bb.gh, %bb.es
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body29

bb.eu:                                            ; preds = %bb.es
  %i.ey = extractvalue { ptr, i64 } %i.ew, 0
  %i.ez = extractvalue { ptr, i64 } %i.ew, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.cp, ptr %i.ag, align 8, !noalias !9
  invoke void @_RINvMNtNtCsbvkFyIu7lgC_4core3fmt2rtNtB3_8Argument11new_displayRNtCsbjGuDcEILED_11proc_macro25IdentEB11_(ptr nonnull sret([16 x i8]) align 8 %i.ab, ptr nonnull align 8 %i.ag) #8
          to label %.noexc25.a unwind label %bb.et

.noexc25.a:                                       ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !noalias !9
  %i.fa = invoke { ptr, ptr } @_RINvMs2_NtCsbvkFyIu7lgC_4core3fmtNtB6_9Arguments3newKj6_Kj1_ECsbjGuDcEILED_11proc_macro2(ptr nonnull @51, ptr nonnull align 8 %i.ac) #8
          to label %.noexc26.a unwind label %bb.et ; 2 uses

.noexc26.a:                                       ; preds = %.noexc25.a
  %i.fb = extractvalue { ptr, ptr } %i.fa, 0
  %i.fc = extractvalue { ptr, ptr } %i.fa, 1
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc3fmt6formatCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.ad, ptr %i.fb, ptr %i.fc) #8
          to label %.noexc27 unwind label %bb.et

.noexc27:                                         ; preds = %.noexc26.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !9
  %i.fd = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ae)
          to label %bb.ew unwind label %bb.ev, !noalias !9 ; 2 uses

bb.ev:                                            ; preds = %bb.ex, %bb.ew, %.noexc27
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.ae) #6
          to label %.body29 unwind label %bb.gf, !noalias !9

bb.ew:                                            ; preds = %.noexc27
  %i.ff = invoke i32 @_RNvMsi_CsbjGuDcEILED_11proc_macro2NtB5_4Span9call_site()
          to label %bb.ex unwind label %bb.ev, !noalias !9

bb.ex:                                            ; preds = %bb.ew
  %i.fg = extractvalue { ptr, i64 } %i.fd, 1
  %i.fh = extractvalue { ptr, i64 } %i.fd, 0
  invoke void @_RNvMsx_CsbjGuDcEILED_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.af, ptr %i.fh, i64 %i.fg, i32 %i.ff, ptr nonnull align 8 @52)
          to label %bb.ey unwind label %bb.ev, !noalias !9

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.ae)
          to label %bb.fb unwind label %bb.fa, !noalias !9

bb.ez:                                            ; preds = %bb.fi, %bb.fa
  %.pn6.i = phi { ptr, i32 } [ %i.fi, %bb.fa ], [ %.pn.pn.i, %bb.fi ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentEBI_(ptr nonnull align 8 %i.af) #6
          to label %.body29 unwind label %bb.gf

bb.fa:                                            ; preds = %bb.gb, %bb.fg, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.ey
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.fb:                                            ; preds = %bb.ey
  %i.fj = invoke { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core5sliceSRNtNtCs7nQiqFc7Txl_3syn4data5Field4iterCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.ey, i64 %i.ez)
          to label %bb.fc unwind label %bb.fa, !noalias !9 ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.fk = extractvalue { ptr, ptr } %i.fj, 0
  %i.fl = extractvalue { ptr, ptr } %i.fj, 1
  %i.fm = invoke { ptr, ptr } @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator3mapINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EB3r_(ptr %i.fk, ptr %i.fl)
          to label %bb.fd unwind label %bb.fa, !noalias !9 ; 2 uses

bb.fd:                                            ; preds = %bb.fc
  %i.fn = extractvalue { ptr, ptr } %i.fm, 0
  %i.fo = extractvalue { ptr, ptr } %i.fm, 1
  invoke void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB1m_5error5ErrorEEB1U_(ptr nonnull sret([32 x i8]) align 8 %i.y, ptr %i.fn, ptr %i.fo)
          to label %bb.fe unwind label %bb.fa, !noalias !9

bb.fe:                                            ; preds = %bb.fd
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.z, ptr nonnull align 8 %i.y)
          to label %bb.ff unwind label %bb.fa, !noalias !9

bb.ff:                                            ; preds = %bb.fe
  %i.fp = load i64, ptr %i.z, align 8, !noalias !9
  %i.fq = trunc nuw i64 %i.fp to i1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.fq, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 24, i1 false), !noalias !9
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.cc, ptr nonnull align 8 %i.q, ptr nonnull align 8 @56)
          to label %bb.gc unwind label %bb.fa

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 24, i1 false), !noalias !9
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.x)
          to label %bb.fk unwind label %bb.fj, !noalias !9

bb.fi:                                            ; preds = %bb.fl, %bb.fj
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i19, %bb.fl ], [ %i.fs, %bb.fj ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.aa) #6
          to label %bb.ez unwind label %bb.gf, !noalias !9

bb.fj:                                            ; preds = %bb.fh
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fk:                                            ; preds = %bb.fh
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_pound(ptr nonnull align 8 %i.x)
          to label %bb.fn unwind label %bb.fm, !noalias !9

bb.fl:                                            ; preds = %.loopexit.i22, %bb.fp, %bb.fm
  %.pn.i19 = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.i22 ], [ %i.ft, %bb.fm ], [ %i.fu, %bb.fp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.x) #6
          to label %bb.fi unwind label %bb.gf, !noalias !9

bb.fm:                                            ; preds = %.loopexit13.i, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fn, %bb.fk
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fn:                                            ; preds = %bb.fk
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.v)
          to label %bb.fo unwind label %bb.fm, !noalias !9

end_hunk_2
begin_hunk_3_@_RNvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_config:bb.a
bb.ja:                                            ; preds = %bb.jc, %bb.jb, %bb.iz
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.e) #6
          to label %bb.ih unwind label %bb.ka, !noalias !13

bb.jb:                                            ; preds = %bb.iz
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_colon(ptr nonnull align 8 %i.e)
          to label %bb.jc unwind label %bb.ja, !noalias !13

bb.jc:                                            ; preds = %bb.jb
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.e, ptr nonnull @68, i64 1)
          to label %bb.jd unwind label %bb.ja, !noalias !13

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !13
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.i, i8 0, ptr nonnull align 8 %i.f)
          to label %bb.je unwind label %bb.ii, !noalias !13

bb.je:                                            ; preds = %bb.jd
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_rarrow(ptr nonnull align 8 %i.i)
          to label %bb.jf unwind label %bb.ii, !noalias !13

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.i, ptr nonnull @72, i64 4)
          to label %bb.jg unwind label %bb.ii, !noalias !13

bb.jg:                                            ; preds = %bb.jf
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.jh unwind label %bb.ii, !noalias !13

bb.jh:                                            ; preds = %bb.jg
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @35, i64 5)
          to label %bb.jk unwind label %bb.jj, !noalias !13

bb.ji:                                            ; preds = %bb.ju, %bb.jj
  %.pn.i31 = phi { ptr, i32 } [ %i.gl, %bb.jj ], [ %i.gm, %bb.ju ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.c) #6
          to label %bb.ih unwind label %bb.ka, !noalias !13

bb.jj:                                            ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jh
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.jk:                                            ; preds = %bb.jh
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.c)
          to label %bb.jl unwind label %bb.jj, !noalias !13

bb.jl:                                            ; preds = %bb.jk
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @36, i64 8)
          to label %bb.jm unwind label %bb.jj, !noalias !13

bb.jm:                                            ; preds = %bb.jl
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.c)
          to label %bb.jn unwind label %bb.jj, !noalias !13

bb.jn:                                            ; preds = %bb.jm
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @37, i64 6)
          to label %bb.jo unwind label %bb.jj, !noalias !13

bb.jo:                                            ; preds = %bb.jn
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.c)
          to label %bb.jp unwind label %bb.jj, !noalias !13

bb.jp:                                            ; preds = %bb.jo
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @73, i64 11)
          to label %bb.jq unwind label %bb.jj, !noalias !13

bb.jq:                                            ; preds = %bb.jp
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private11push_colon2(ptr nonnull align 8 %i.c)
          to label %bb.jr unwind label %bb.jj, !noalias !13

bb.jr:                                            ; preds = %bb.jq
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @67, i64 9)
          to label %bb.js unwind label %bb.jj, !noalias !13

bb.js:                                            ; preds = %bb.jr
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.jt unwind label %bb.jj, !noalias !13

bb.jt:                                            ; preds = %bb.js
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @71, i64 4)
          to label %bb.jv unwind label %bb.ju, !noalias !13

bb.ju:                                            ; preds = %bb.jt
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.a) #6
          to label %bb.ji unwind label %bb.ka, !noalias !13

bb.jv:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !13
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.c, i8 0, ptr nonnull align 8 %i.b)
          to label %bb.jw unwind label %bb.jj, !noalias !13

bb.jw:                                            ; preds = %bb.jv
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private8push_dot(ptr nonnull align 8 %i.c)
          to label %bb.jx unwind label %bb.jj, !noalias !13

bb.jx:                                            ; preds = %bb.jw
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @37, i64 6)
          to label %bb.jy unwind label %bb.jj, !noalias !13

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !13
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.i, i8 1, ptr nonnull align 8 %i.d)
          to label %bb.jz unwind label %bb.ii, !noalias !13

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !13
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr nonnull align 8 %i.o, i8 1, ptr nonnull align 8 %i.j)
          to label %bb.kc unwind label %bb.gk, !noalias !13

bb.ka:                                            ; preds = %bb.ju, %bb.ji, %bb.ja, %bb.it, %bb.ih, %bb.gz, %bb.gn, %bb.gj
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7, !noalias !13
  unreachable

.body33:                                          ; preds = %bb.kb, %bb.gj, %bb.kd
  %.pn3 = phi { ptr, i32 } [ %.pn, %bb.kd ], [ %i.go, %bb.kb ], [ %.pn4.i, %bb.gj ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.cd) #6
          to label %.body29 unwind label %bb.kq

bb.kb:                                            ; preds = %bb.gi, %bb.kk
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.kc:                                            ; preds = %bb.jz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.bz)
          to label %bb.kf unwind label %bb.ke

bb.kd:                                            ; preds = %bb.kg, %bb.ke
  %.pn = phi { ptr, i32 } [ %i.gp, %bb.ke ], [ %i.gq, %bb.kg ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.ca) #6
          to label %.body33 unwind label %bb.kq

bb.ke:                                            ; preds = %bb.kj, %bb.kc
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.kf:                                            ; preds = %bb.kc
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.cg, ptr nonnull align 8 %i.bz)
          to label %bb.kh unwind label %bb.kg

bb.kg:                                            ; preds = %bb.ki, %bb.kh, %bb.kf
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.bz) #6
          to label %bb.kd unwind label %bb.kq

bb.kh:                                            ; preds = %bb.kf
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.cd, ptr nonnull align 8 %i.bz)
          to label %bb.ki unwind label %bb.kg

bb.ki:                                            ; preds = %bb.kh
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ca, ptr nonnull align 8 %i.bz)
          to label %bb.kj unwind label %bb.kg

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 32, i1 false)
  %i.gr = invoke i32 @_RNvXs2_CsbjGuDcEILED_11proc_macro2NtCsjJ0p09o2jmV_10proc_macro11TokenStreamINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.by)
          to label %bb.kk unwind label %bb.ke

bb.kk:                                            ; preds = %bb.kj
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.ca)
          to label %bb.kl unwind label %bb.kb

bb.kl:                                            ; preds = %bb.kk
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.cd)
          to label %bb.km unwind label %bb.et

bb.km:                                            ; preds = %bb.kl
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.cg)
          to label %bb.kn unwind label %bb.l

bb.kn:                                            ; preds = %bb.km
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ch)
          to label %bb.ko unwind label %bb.i

bb.ko:                                            ; preds = %bb.kn
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.cl)
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ky, %1, %bb.ko
  %.sroa.0.0 = phi i32 [ %i.gz, %bb.ky ], [ %.sroa.0.1, %1 ], [ %i.gr, %bb.ko ]
  ret i32 %.sroa.0.0

bb.kq:                                            ; preds = %bb.kw, %bb.kg, %bb.kd, %.body33, %.body29, %.body, %bb.h
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.kr:                                            ; preds = %bb.gh
  %i.gt = invoke i32 @_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtCsbjGuDcEILED_11proc_macro211TokenStreamINtB5_4IntoNtCsjJ0p09o2jmV_10proc_macro11TokenStreamE4intoCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.cb, ptr nonnull align 8 @45)
          to label %bb.ks unwind label %bb.et

bb.ks:                                            ; preds = %bb.kr
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr nonnull align 8 %i.cg)
          to label %bb.kt unwind label %bb.l

bb.kt:                                            ; preds = %bb.ku, %bb.ks
  %.sroa.0.1 = phi i32 [ %i.gt, %bb.ks ], [ %i.gu, %bb.ku ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ch)
          to label %1 unwind label %bb.i

bb.ku:                                            ; preds = %bb.er
  %i.gu = invoke i32 @_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtCsbjGuDcEILED_11proc_macro211TokenStreamINtB5_4IntoNtCsjJ0p09o2jmV_10proc_macro11TokenStreamE4intoCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ce, ptr nonnull align 8 @46)
          to label %bb.kt unwind label %bb.l

1:                                                ; preds = %bb.kt
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn6derive11DeriveInputECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.cl)
  br label %bb.kp

.invoke:                                          ; preds = %bb.e, %bb.g
  %.sink40 = phi { ptr, ptr } [ %i.cw, %bb.g ], [ %i.ct, %bb.e ] ; 2 uses
  %i.gv = phi ptr [ @48, %bb.g ], [ @50, %bb.e ]
  %i.gw = extractvalue { ptr, ptr } %.sink40, 0
  %i.gx = extractvalue { ptr, ptr } %.sink40, 1
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr %i.gw, ptr %i.gx, ptr nonnull align 8 %i.gv) #10
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

bb.kv:                                            ; preds = %bb.kw, %bb.h
  %.pn11 = phi { ptr, i32 } [ %i.gy, %bb.kw ], [ %.pn9, %bb.h ]
  resume { ptr, i32 } %.pn11

bb.kw:                                            ; preds = %bb.kx, %bb.b
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn5error5ErrorEBK_(ptr nonnull align 8 %i.cj) #6
          to label %bb.kv unwind label %bb.kq

bb.kx:                                            ; preds = %bb.b
  %i.gz = invoke i32 @_RNvXs2_CsbjGuDcEILED_11proc_macro2NtCsjJ0p09o2jmV_10proc_macro11TokenStreamINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.ci)
          to label %bb.ky unwind label %bb.kw

bb.ky:                                            ; preds = %bb.kx
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn5error5ErrorEBK_(ptr nonnull align 8 %i.cj)
  br label %bb.kp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCs4ZaLwAtrTbk_16deltalake_derive24extract_field_attributes(ptr noalias nonnull align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.06 = alloca [72 x i8], align 8           ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [176 x i8], align 8               ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [232 x i8], align 8               ; 8 uses
  %i.m = alloca [232 x i8], align 8               ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 2 uses
  %i.q = alloca [32 x i8], align 8                ; 2 uses
  %i.r = alloca [32 x i8], align 8                ; 2 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  call void @_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecNtNtB4_6string6StringE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.ab) #8
  invoke void @_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecNtNtB4_6string6StringE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.aa)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.ce, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.z, align 8
  invoke void @_RNvMNtCs6Po7BT7Nknu_5alloc3vecINtB2_3VecNtNtB4_6string6StringE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.y)
          to label %bb.d unwind label %.thread43

.thread43:                                        ; preds = %bb.ca, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread37

bb.d:                                             ; preds = %bb.c
  %i.ad = invoke { ptr, ptr } @_RNvXs_NtNtCsbvkFyIu7lgC_4core5slice4iterRSNtNtCs7nQiqFc7Txl_3syn4attr9AttributeNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBI_(ptr align 8 %1, i64 %2)
          to label %bb.e unwind label %.loopexit.split-lp57 ; 2 uses

.loopexit56:                                      ; preds = %.loopexit61, %.loopexit.split-lp62, %.loopexit.split-lp57, %.loopexit56.loopexit.split-lp, %.loopexit56.loopexit, %bb.at, %bb.ab, %bb.o
  %.pn20 = phi { ptr, i32 } [ %lpad.loopexit.split-lp67, %.loopexit56.loopexit.split-lp ], [ %i.as, %bb.o ], [ %i.bg, %bb.ab ], [ %.pn17, %bb.at ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp57 ], [ %lpad.loopexit66, %.loopexit56.loopexit ], [ %lpad.loopexit63, %.loopexit61 ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp62 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %i.y) #6
          to label %.thread37 unwind label %bb.ag

.loopexit56.loopexit:                             ; preds = %bb.ah, %bb.af, %bb.z, %bb.v, %bb.u, %bb.t, %bb.r, %bb.h, %bb.f
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit56

.loopexit56.loopexit.split-lp:                    ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit56

.loopexit.split-lp57:                             ; preds = %.invoke, %bb.d, %bb.i, %bb.k, %bb.m, %bb.al
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit56

bb.e:                                             ; preds = %bb.d
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  store ptr %i.ae, ptr %i.x, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.aw, %bb.e
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.1, %bb.aw ], [ 0, %bb.e ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.ai
  %i.am = invoke align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.x)
          to label %bb.g unwind label %.loopexit56.loopexit ; 8 uses

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = invoke align 8 ptr @_RNvMNtCs7nQiqFc7Txl_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.am)
          to label %bb.r unwind label %.loopexit56.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ao = invoke zeroext i1 @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtB6_6string6StringE8is_emptyCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.y)
          to label %bb.j unwind label %.loopexit.split-lp57

bb.j:                                             ; preds = %bb.i
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke { ptr, i64 } @_RNvXs7_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.y)
          to label %bb.m unwind label %.loopexit.split-lp57 ; 2 uses

bb.l:                                             ; preds = %bb.p, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %.sroa.06.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %.sroa.06.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.06, i64 72, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.0.0.ph, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  invoke void @_RINvMNtCs6Po7BT7Nknu_5alloc5sliceSNtNtB5_6string6String4joinReECsl1mHGn7pXMx_12convert_case(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %i.aq, i64 %i.ar, ptr nonnull @85, i64 1)
          to label %bb.n unwind label %.loopexit.split-lp57

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7nQiqFc7Txl_3syn(ptr nonnull align 8 %i.z)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %.loopexit56

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.l

bb.q:                                             ; preds = %bb.ce, %bb.l
  %.sink = phi ptr [ %i.y, %bb.l ], [ %i.ab, %bb.ce ]
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsl1mHGn7pXMx_12convert_case(ptr nonnull align 8 %.sink)
  ret void

bb.r:                                             ; preds = %bb.h
  %i.at = invoke zeroext i1 @_RINvMs_NtCs7nQiqFc7Txl_3syn4pathNtB5_4Path8is_identeEB7_(ptr align 8 %i.an, ptr nonnull @21, i64 3)
          to label %bb.s unwind label %.loopexit56.loopexit

bb.s:                                             ; preds = %bb.r
  br i1 %i.at, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.af, %bb.y, %bb.x, %bb.s
  %i.au = invoke align 8 ptr @_RNvMNtCs7nQiqFc7Txl_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.am)
          to label %bb.ah unwind label %.loopexit56.loopexit

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvMs_NtCs7nQiqFc7Txl_3syn4attrNtB4_4Meta18require_name_value(ptr nonnull sret([24 x i8]) align 8 %i.v, ptr nonnull align 8 %i.am)
          to label %bb.v unwind label %.loopexit56.loopexit

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultRNtNtCs7nQiqFc7Txl_3syn4attr13MetaNameValueNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.w, ptr nonnull align 8 %i.v)
          to label %bb.w unwind label %.loopexit56.loopexit

bb.w:                                             ; preds = %bb.v
  %i.av = load i64, ptr %i.w, align 8
  %.not12 = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not12, label %bb.x, label %3

3:                                                ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.aq, %3
  %i.aw = phi ptr [ %i.a, %3 ], [ %i.b, %bb.aq ]
  %i.ax = phi ptr [ @94, %3 ], [ @92, %bb.aq ]
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCs4ZaLwAtrTbk_16deltalake_derive15FieldAttributesNtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1z_EE13from_residualBM_(ptr nonnull sret([80 x i8]) align 8 %0, ptr nonnull align 8 %i.aw, ptr nonnull align 8 %i.ax)
          to label %bb.ca unwind label %.loopexit.split-lp57

bb.x:                                             ; preds = %bb.w
  %i.ay = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = icmp eq i64 %i.az, 19
  br i1 %i.ba, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp eq i64 %i.bc, -9223372036854775807
  br i1 %i.bd, label %bb.z, label %bb.t

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  invoke void @_RNvMNtCs7nQiqFc7Txl_3syn3litNtB2_6LitStr5value(ptr nonnull sret([24 x i8]) align 8 %i.t, ptr nonnull align 8 %i.be)
          to label %bb.aa unwind label %.loopexit56.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.bf = invoke { ptr, i64 } @_RNvXsx_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.t)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.ab:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.t) #6
          to label %.loopexit56 unwind label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.bh = extractvalue { ptr, i64 } %i.bf, 0
  %i.bi = extractvalue { ptr, i64 } %i.bf, 1
  %i.bj = invoke { ptr, i64 } @_RNvMNtCsbvkFyIu7lgC_4core3stre4trimCs4ZaLwAtrTbk_16deltalake_derive(ptr %i.bh, i64 %i.bi)
          to label %bb.ad unwind label %bb.ab     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  %i.bl = extractvalue { ptr, i64 } %i.bj, 1
  invoke void @_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringeNtB5_8ToString9to_stringCsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.u, ptr %i.bk, i64 %i.bl)
          to label %bb.ae unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.u)
          to label %bb.af unwind label %bb.ab

bb.af:                                            ; preds = %bb.ae
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.t)
          to label %bb.t unwind label %.loopexit56.loopexit

bb.ag:                                            ; preds = %bb.ch, %bb.cf, %.thread37, %bb.bz, %bb.bs, %bb.bf, %bb.bb, %bb.at, %bb.ab, %.loopexit56
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.ah:                                            ; preds = %bb.t
  %i.bn = invoke zeroext i1 @_RINvMs_NtCs7nQiqFc7Txl_3syn4pathNtB5_4Path8is_identeEB7_(ptr align 8 %i.au, ptr nonnull @86, i64 5)
          to label %bb.ai unwind label %.loopexit56.loopexit

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bn, label %bb.aj, label %bb.f

bb.aj:                                            ; preds = %bb.ai
  %i.bo = load i64, ptr %i.am, align 8
  %i.bp = icmp eq i64 %i.bo, 41
  br i1 %i.bp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  invoke void @_RNvXsK_CsbjGuDcEILED_11proc_macro2NtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr nonnull align 8 %i.bq)
          to label %bb.am unwind label %.loopexit56.loopexit.split-lp

bb.al:                                            ; preds = %bb.aj
  invoke void @_RINvMNtCs7nQiqFc7Txl_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4attr4MetaReECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.am, ptr nonnull @93, i64 31)
          to label %bb.cb unwind label %.loopexit.split-lp57

bb.am:                                            ; preds = %bb.ak
  %i.br = invoke i32 @_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtCsbjGuDcEILED_11proc_macro211TokenStreamINtB5_4IntoNtCsjJ0p09o2jmV_10proc_macro11TokenStreamE4intoCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.q, ptr nonnull align 8 @87)
          to label %bb.an unwind label %.loopexit56.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.r, i32 %i.br)
          to label %bb.ao unwind label %.loopexit56.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBP_4attr4MetaNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r)
          to label %bb.ap unwind label %.loopexit56.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.bs = load i64, ptr %i.s, align 8
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808
  br i1 %i.bt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  br label %.invoke

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  invoke void @_RNvXs8_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o)
          to label %bb.as unwind label %.loopexit61

.loopexit61:                                      ; preds = %bb.ar, %bb.aw
  %lpad.loopexit63 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit56

.loopexit.split-lp62:                             ; preds = %bb.bx
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit56

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.as
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.ph, %bb.as ], [ %.sroa.0.3, %.backedge.backedge ] ; 3 uses
  invoke void @_RNvXsn_NtCs7nQiqFc7Txl_3syn10punctuatedINtB5_8IntoIterNtNtB7_4attr4MetaENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([232 x i8]) align 8 %i.m, ptr nonnull align 8 %i.n)
          to label %bb.au unwind label %.loopexit

bb.at:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bz, %bb.bd, %bb.bd
  %.pn17 = phi { ptr, i32 } [ %.pn15, %bb.bd ], [ %.pn15, %bb.bz ], [ %.pn15, %bb.bd ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated8IntoIterNtNtBL_4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.n) #6
          to label %.loopexit56 unwind label %bb.ag

.loopexit:                                        ; preds = %.backedge, %bb.bv
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp:                               ; preds = %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.au:                                            ; preds = %.backedge
  %i.bv = load i64, ptr %i.m, align 8
  %.not13 = icmp eq i64 %i.bv, 42
  br i1 %.not13, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.l, ptr noundef nonnull align 8 dereferenceable(232) %i.m, i64 232, i1 false)
  %i.bw = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bx = add i64 %i.bw, -40
  %i.by = icmp ugt i64 %i.bw, 39
  %i.bz = select i1 %i.by, i64 %i.bx, i64 2
  switch i64 %i.bz, label %bb.ax [
    i64 0, label %bb.ay
    i64 2, label %bb.az
    i64 1, label %bb.ba
  ]

bb.aw:                                            ; preds = %bb.au
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated8IntoIterNtNtBL_4attr4MetaEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.n)
          to label %.outer unwind label %.loopexit61

bb.ax:                                            ; preds = %bb.av
  unreachable

bb.ay:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false)
  %i.ca = invoke zeroext i1 @_RINvMs_NtCs7nQiqFc7Txl_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.g, ptr nonnull @88, i64 4)
          to label %bb.bc unwind label %bb.bb

bb.az:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.j, ptr noundef nonnull align 8 dereferenceable(176) %i.m, i64 176, i1 false)
  %i.cb = invoke zeroext i1 @_RINvMs_NtCs7nQiqFc7Txl_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.k, ptr nonnull @89, i64 5)
          to label %bb.bg unwind label %bb.bf

bb.ba:                                            ; preds = %bb.av
  invoke void @_RINvMNtCs7nQiqFc7Txl_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4attr4MetaReECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.am, ptr nonnull @91, i64 48)
          to label %bb.bw unwind label %.loopexit.split-lp52

bb.bb:                                            ; preds = %bb.ay
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4path4PathEBK_(ptr nonnull align 8 %i.g) #6
          to label %bb.bd unwind label %bb.ag

bb.bc:                                            ; preds = %bb.ay
  %spec.select = select i1 %i.ca, i8 1, i8 %.sroa.0.1
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4path4PathEBK_(ptr nonnull align 8 %i.g)
          to label %bb.be unwind label %.loopexit51

bb.bd:                                            ; preds = %.loopexit51, %.loopexit.split-lp52, %bb.bs, %bb.bb
  %.pn15 = phi { ptr, i32 } [ %.pn, %bb.bs ], [ %i.cc, %bb.bb ], [ %lpad.loopexit53, %.loopexit51 ], [ %lpad.loopexit.split-lp54, %.loopexit.split-lp52 ] ; 3 uses
  %i.cd = load i64, ptr %i.l, align 8             ; 2 uses
  %i.ce = add i64 %i.cd, -40
  %i.cf = icmp ugt i64 %i.cd, 39
  %i.cg = select i1 %i.cf, i64 %i.ce, i64 2
  switch i64 %i.cg, label %bb.bz [
    i64 0, label %bb.at
    i64 2, label %bb.at
  ]

.loopexit51:                                      ; preds = %bb.bc, %bb.bu
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp52:                             ; preds = %bb.ba
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.be:                                            ; preds = %bb.bu, %bb.bc
  %.sroa.0.3 = phi i8 [ %spec.select, %bb.bc ], [ %.sroa.0.1, %bb.bu ]
  %i.ch = load i64, ptr %i.l, align 8
  %i.ci = icmp eq i64 %i.ch, 41
  br i1 %i.ci, label %bb.bv, label %.backedge.backedge

bb.bf:                                            ; preds = %bb.br, %bb.bq, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.az
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4expr4ExprEBK_(ptr nonnull align 8 %i.j) #6
          to label %bb.bs unwind label %bb.ag

bb.bg:                                            ; preds = %bb.az
  %i.ck = load i64, ptr %i.j, align 8
  %i.cl = icmp eq i64 %i.ck, 19
  %or.cond = select i1 %i.cb, i1 %i.cl, i1 false
  %i.cm = load i64, ptr %i.ai, align 8
  %i.cn = icmp eq i64 %i.cm, -9223372036854775807
  %or.cond31 = select i1 %or.cond, i1 %i.cn, i1 false
  br i1 %or.cond31, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %bb.bg
  %i.co = invoke zeroext i1 @_RINvMs_NtCs7nQiqFc7Txl_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.k, ptr nonnull @90, i64 11)
          to label %bb.bk unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bg
  invoke void @_RNvMNtCs7nQiqFc7Txl_3syn3litNtB2_6LitStr5value(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.aj)
          to label %bb.bj unwind label %bb.bf

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.i)
          to label %bb.bh unwind label %bb.bf

bb.bk:                                            ; preds = %bb.bh
  br i1 %i.co, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cp = invoke zeroext i1 @_RINvMs_NtCs7nQiqFc7Txl_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.k, ptr nonnull @8, i64 3)
          to label %bb.bn unwind label %bb.bf

bb.bm:                                            ; preds = %bb.bk
  %.old = load i64, ptr %i.j, align 8
  %.old2 = icmp eq i64 %.old, 19
  br i1 %.old2, label %bb.bp, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.cq = load i64, ptr %i.j, align 8
  %i.cr = icmp eq i64 %i.cq, 19
  %or.cond3 = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %or.cond3, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.br, %bb.bp, %bb.bn, %bb.bm
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4expr4ExprEBK_(ptr nonnull align 8 %i.j)
          to label %bb.bu unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %i.cs = load i64, ptr %i.ai, align 8
  %i.ct = icmp eq i64 %i.cs, -9223372036854775807
  br i1 %i.ct, label %bb.bq, label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMNtCs7nQiqFc7Txl_3syn3litNtB2_6LitStr5value(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.aj)
          to label %bb.br unwind label %bb.bf

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringE4pushCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.h)
          to label %bb.bo unwind label %bb.bf

bb.bs:                                            ; preds = %bb.bt, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.bt ], [ %i.cj, %bb.bf ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4path4PathEBK_(ptr nonnull align 8 %i.k) #6
          to label %bb.bd unwind label %bb.ag

bb.bt:                                            ; preds = %bb.bo
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bu:                                            ; preds = %bb.bo
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4path4PathEBK_(ptr nonnull align 8 %i.k)
          to label %bb.be unwind label %.loopexit51

bb.bv:                                            ; preds = %bb.be
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr nonnull align 8 %i.l)
          to label %.backedge.backedge unwind label %.loopexit

.backedge.backedge:                               ; preds = %bb.bv, %bb.be
  br label %.backedge
end_hunk_3
