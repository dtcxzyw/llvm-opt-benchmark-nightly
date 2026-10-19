Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-4ad57aac8b588e26.foundations_macros.5467af46aab99424-cgu.02?download=true
inline.NumInlined: 1699
inline.NumDeleted: 407
begin_hunk_0_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEINtB2_18SpecFromIterNestedB11_INtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterB11_EE9from_iterCs7fhJ7v7hOxk_18foundations_macros:bb.a
bb.k:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15027, !noalias !14992
  invoke void @_RNvXsn_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(address) dereferenceable(232) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.n unwind label %bb.m, !dbg !15028

bb.l:                                             ; preds = %bb.q, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %i.y, %bb.m ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body unwind label %bb.t, !dbg !15029

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.c, align 8, !dbg !15027, !range !14983, !noalias !14992, !noundef !637
  %.not.i.i = icmp eq i64 %i.z, -2, !dbg !15027
  br i1 %.not.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaE16extend_desugaredINtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterBG_EECs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.o, !dbg !15030

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15031, !noalias !14992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false), !dbg !15031, !noalias !14992
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15032, !alias.scope !14993, !noundef !637 ; 4 uses
  %i.ab = icmp ult i64 %i.aa, 39755913951960241, !dbg !15033
  call void @llvm.assume(i1 %i.ab), !dbg !15034
  %i.ac = load i64, ptr %i.i, align 8, !dbg !15035, !range !690, !alias.scope !14993, !noundef !637
  %i.ad = icmp eq i64 %i.aa, %i.ac, !dbg !15036
  br i1 %i.ad, label %bb.p, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i, !dbg !15036

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15037, !noalias !14992
  invoke void @_RNvXsn_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.r unwind label %bb.q, !dbg !15038

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i: ; preds = %bb.s, %bb.r, %bb.o
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15039, !alias.scope !14993, !nonnull !637, !noundef !637
  %i.af = getelementptr inbounds nuw [232 x i8], ptr %i.ae, i64 %i.aa, !dbg !15040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.af, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false), !dbg !15041
  %i.ag = add nuw nsw i64 %i.aa, 1, !dbg !15042
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15043, !alias.scope !14993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15044, !noalias !14992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15044, !noalias !14992
  br label %bb.k, !dbg !15026

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(232) %i.b) #15
          to label %bb.l unwind label %bb.t, !dbg !15044

bb.r:                                             ; preds = %bb.p
  %i.ai = load i64, ptr %i.a, align 8, !dbg !15045, !noalias !14992, !noundef !637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15046, !noalias !14992
  %i.aj = call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 1), !dbg !15047 ; 2 uses
  %i.ak = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15048, !alias.scope !14994, !noundef !637 ; 2 uses
  %i.al = load i64, ptr %i.i, align 8, !dbg !15049, !range !690, !alias.scope !14994, !noundef !637
  %i.am = sub i64 %i.al, %i.ak, !dbg !15050
  %i.an = icmp ugt i64 %i.aj, %i.am, !dbg !15051
  br i1 %i.an, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i, !dbg !15052, !prof !723

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 8, i64 noundef 232)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i unwind label %bb.q, !dbg !15053

bb.t:                                             ; preds = %bb.q, %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15054
  unreachable, !dbg !15054

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaE16extend_desugaredINtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterBG_EECs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15044, !noalias !14992
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEINtB2_10SpecExtendBR_INtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterBR_EE11spec_extendCs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.u, !dbg !15055

bb.u:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaE16extend_desugaredINtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterBG_EECs7fhJ7v7hOxk_18foundations_macros.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !15004

.body:                                            ; preds = %bb.l, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.u ], [ %.pn.i.i, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #15
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.v, !dbg !15004

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEINtB2_10SpecExtendBR_INtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterBR_EE11spec_extendCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaE16extend_desugaredINtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterBG_EECs7fhJ7v7hOxk_18foundations_macros.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !15057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15004
  br label %bb.f, !dbg !15004

bb.v:                                             ; preds = %bb.w, %.body, %bb.g
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15058
  unreachable, !dbg !15058

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.w, %.body
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.w ]
  resume { ptr, i32 } %.pn9, !dbg !15058

bb.w:                                             ; preds = %bb.g, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.n, %bb.g ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.v, !dbg !15059
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtB2h_5slice4iter4IterB12_ENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0EE9from_iterB3E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15060 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15154), !dbg !15183
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !15184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15158), !dbg !15185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15154
  store ptr %i.j, ptr %i.f, align 8, !noalias !15159
  %i.k = icmp eq ptr %1, %2, !dbg !15186
  br i1 %i.k, label %.loopexit14, label %.lr.ph.i.i, !dbg !15187

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256, !dbg !15188 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15189, !noalias !15159
  store ptr %i.l, ptr %i.e, align 8, !dbg !15189, !noalias !15159, !captures !15160
  %i.n = call noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0INtB7_5FnMutTRRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEE8call_mutBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !dbg !15190, !noalias !15158
  br i1 %i.n, label %bb.c, label %bb.b, !dbg !15190

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15191, !noalias !15159
  %i.o = icmp eq ptr %i.m, %2, !dbg !15186
  br i1 %i.o, label %.loopexit14, label %.lr.ph.i.i, !dbg !15187

bb.c:                                             ; preds = %.lr.ph.i.i
  store ptr %i.m, ptr %i.h, align 8, !dbg !15192, !alias.scope !15161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15191, !noalias !15159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15193, !noalias !15154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15194
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !15194
  %i.p = load i64, ptr %i.d, align 8, !dbg !15194, !range !705, !noundef !637
  %i.q = trunc nuw i64 %i.p to i1, !dbg !15195
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15196
  %i.s = load i64, ptr %i.r, align 8, !dbg !15196, !range !736, !noundef !637 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !15196 ; 2 uses
  br i1 %i.q, label %bb.d, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !15195, !prof !723

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.t, align 8, !dbg !15197
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #18, !dbg !15198
  unreachable, !dbg !15198

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.c
  %i.v = load ptr, ptr %i.t, align 8, !dbg !15199, !nonnull !637, !noundef !637 ; 2 uses
  %i.w = icmp ugt i64 %i.s, 3, !dbg !15200
  call void @llvm.assume(i1 %i.w), !dbg !15201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15202
  store ptr %i.l, ptr %i.v, align 8, !dbg !15203, !captures !15160
  store i64 %i.s, ptr %i.g, align 8, !dbg !15204
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !15204 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15204
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !15204 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15204
  %i.x = load ptr, ptr %i.h, align 8, !dbg !15205, !nonnull !637, !noundef !637 ; 3 uses
  %i.y = load ptr, ptr %i.i, align 8, !dbg !15205, !noundef !637 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15166), !dbg !15206
  call void @llvm.experimental.noalias.scope.decl(metadata !15167), !dbg !15207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15166
  store ptr %i.x, ptr %i.c, align 8, !noalias !15168
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !noalias !15168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15169
  store ptr %i.aa, ptr %i.b, align 8, !noalias !15170
  %i.ab = icmp eq ptr %i.x, %i.y, !dbg !15208
  br i1 %i.ab, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i, label %.lr.ph.i.i.preheader.i.i, !dbg !15209

.lr.ph.i.i.preheader.i.i:                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit, %.noexc8
  %.promoted.i.i11.i.i = phi ptr [ %.promoted.i.i.i.i, %.noexc8 ], [ %i.x, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit ]
  %i.ac = phi ptr [ %i.ao, %.noexc8 ], [ %i.y, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15171), !dbg !15210
  call void @llvm.experimental.noalias.scope.decl(metadata !15172), !dbg !15211
  br label %.lr.ph.i.i.i.i, !dbg !15212

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i
  %i.ad = phi ptr [ %i.ae, %bb.e ], [ %.promoted.i.i11.i.i, %.lr.ph.i.i.preheader.i.i ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 256, !dbg !15213 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15214, !noalias !15173
  store ptr %i.ad, ptr %i.a, align 8, !dbg !15214, !noalias !15173, !captures !15160
  %i.af = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0INtB7_5FnMutTRRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEE8call_mutBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !15212

.noexc:                                           ; preds = %.lr.ph.i.i.i.i
  br i1 %i.af, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.i.i, label %bb.e, !dbg !15212

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15215, !noalias !15173
  %i.ag = icmp eq ptr %i.ae, %i.ac, !dbg !15208
  br i1 %i.ag, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i, label %.lr.ph.i.i.i.i, !dbg !15209

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i: ; preds = %.noexc8, %bb.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15216, !noalias !15174
  br label %.loopexit12, !dbg !15217

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.i.i: ; preds = %.noexc
  store ptr %i.ae, ptr %i.c, align 8, !dbg !15218, !alias.scope !15175, !noalias !15168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15215, !noalias !15173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15216, !noalias !15174
  %.not.i.i = icmp eq ptr %i.ad, null, !dbg !15219
  br i1 %.not.i.i, label %.loopexit12, label %bb.f, !dbg !15217

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.i.i
  %i.ah = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15220, !alias.scope !15168, !noundef !637 ; 5 uses
  %i.ai = icmp ult i64 %i.ah, 1152921504606846976, !dbg !15221
  call void @llvm.assume(i1 %i.ai), !dbg !15222
  %i.aj = load i64, ptr %i.g, align 8, !dbg !15223, !range !690, !alias.scope !15168, !noundef !637
  %i.ak = icmp eq i64 %i.ah, %i.aj, !dbg !15224
  br i1 %i.ak, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i, label %.noexc8, !dbg !15224

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i: ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ah, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %.loopexit.split-lp, !dbg !15225

.noexc8:                                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i, %bb.f
  %i.al = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15226, !alias.scope !15168, !nonnull !637, !noundef !637
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ah, !dbg !15227
  store ptr %i.ad, ptr %i.am, align 8, !dbg !15228, !captures !15160
  %i.an = add nuw nsw i64 %i.ah, 1, !dbg !15229
  store i64 %i.an, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15230, !alias.scope !15168
  call void @llvm.experimental.noalias.scope.decl(metadata !15176), !dbg !15210
  call void @llvm.experimental.noalias.scope.decl(metadata !15177), !dbg !15211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15178
  store ptr %i.aa, ptr %i.b, align 8, !noalias !15179
  %i.ao = load ptr, ptr %i.z, align 8, !alias.scope !15180, !noalias !15168, !nonnull !637, !noundef !637 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15180, !noalias !15168 ; 2 uses
  %i.ap = icmp eq ptr %.promoted.i.i.i.i, %i.ao, !dbg !15208
  br i1 %i.ap, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i, label %.lr.ph.i.i.preheader.i.i, !dbg !15209

.loopexit14:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15193, !noalias !15154
  store i64 0, ptr %0, align 8, !dbg !15231
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15231
  store ptr inttoptr (i64 8 to ptr), ptr %i.aq, align 8, !dbg !15231
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15231
  store i64 0, ptr %i.ar, align 8, !dbg !15231
  br label %bb.g, !dbg !15232

bb.g:                                             ; preds = %.loopexit12, %.loopexit14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15232
  ret void, !dbg !15233

.loopexit.split-lp:                               ; preds = %.lr.ph.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.h, !dbg !15234

.loopexit12:                                      ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15235, !noalias !15166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !15236
  br label %bb.g, !dbg !15232

bb.h:                                             ; preds = %.loopexit.split-lp
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15237
  unreachable, !dbg !15237

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp, !dbg !15237
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EE9from_iterB45_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15238 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15278
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64, !dbg !15279
  %i.e = ptrtoint ptr %1 to i64, !dbg !15279
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !15279
  %i.g = udiv exact i64 %i.f, 352, !dbg !15279    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15280
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !dbg !15280
  %i.h = load i64, ptr %i.b, align 8, !dbg !15280, !range !705, !noundef !637
  %i.i = trunc nuw i64 %i.h to i1, !dbg !15281
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15282
  %i.k = load i64, ptr %i.j, align 8, !dbg !15282, !range !736, !noundef !637 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15282 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_.exit.i, !dbg !15281, !prof !723

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !15283
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #18, !dbg !15284
  unreachable, !dbg !15284

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !15285, !nonnull !637, !noundef !637 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !15286
  tail call void @llvm.assume(i1 %i.o), !dbg !15287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15288
  store i64 %i.k, ptr %i.c, align 8, !dbg !15289
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15289
  store ptr %i.n, ptr %i.p, align 8, !dbg !15289
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15289 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !15289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15290, !noalias !15277
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15290
  store ptr %i.n, ptr %i.r, align 8, !dbg !15290, !noalias !15277
  store ptr %i.q, ptr %i.a, align 8, !dbg !15290, !noalias !15277
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15290
  store i64 0, ptr %i.s, align 8, !dbg !15290, !noalias !15277
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3a_8for_each4callNtCse4VeaA6Ikg_11proc_macro211TokenStreamNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB4d_E14extend_trustedBN_E0E0EB20_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !15291

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #15
          to label %bb.f unwind label %bb.e, !dbg !15292

bb.d:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15293, !noalias !15277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !15294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15292
  ret void, !dbg !15295

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15296
  unreachable, !dbg !15296

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !15296
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15297 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15420
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15421
  %i.e = load ptr, ptr %i.d, align 8, !dbg !15421, !nonnull !637, !noundef !637 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !dbg !15422, !noundef !637 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15406), !dbg !15423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15424, !noalias !15408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15425, !noalias !15408
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 461168601842738791) %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 20), !dbg !15425, !noalias !15408
  %i.g = load i64, ptr %i.a, align 8, !dbg !15425, !range !705, !noalias !15408, !noundef !637
  %i.h = trunc nuw i64 %i.g to i1, !dbg !15426
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15427
  %i.j = load i64, ptr %i.i, align 8, !dbg !15427, !range !736, !noalias !15408, !noundef !637 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15427 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !15426, !prof !723

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !dbg !15428, !noalias !15408
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #18, !dbg !15429, !noalias !15408
  unreachable, !dbg !15429

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !dbg !15430, !noalias !15408, !nonnull !637, !noundef !637 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j, !dbg !15431
  tail call void @llvm.assume(i1 %i.n), !dbg !15432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15433, !noalias !15408
  store i64 %i.j, ptr %i.b, align 8, !dbg !15434, !noalias !15408
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15434
  store ptr %i.m, ptr %i.o, align 8, !dbg !15434, !noalias !15408
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15434 ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.f, !dbg !15435
  %i.r = icmp eq i64 %i.j, 0, !dbg !15436
  br i1 %i.r, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph.i, !dbg !15436

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  %.sroa.012.047.i = phi ptr [ %i.u, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i ] ; 14 uses
  %.sroa.7.045.i = phi i64 [ %i.v, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i ] ; 3 uses
  %.sroa.10.044.i = phi i64 [ %i.s, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.j, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i ]
  %i.s = add i64 %.sroa.10.044.i, -1, !dbg !15437 ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.047.i, %i.q, !dbg !15438
  br i1 %i.t, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.c, !dbg !15439

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 20, !dbg !15440
  %i.v = add nuw nsw i64 %.sroa.7.045.i, 1, !dbg !15441
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 16, !dbg !15442
  %i.x = load i8, ptr %i.w, align 4, !dbg !15442, !range !667, !alias.scope !15411, !noundef !637 ; 3 uses
  %i.y = icmp samesign ugt i8 %i.x, 3, !dbg !15442
  %i.z = zext nneg i8 %i.x to i64, !dbg !15442
  %i.aa = add nsw i64 %i.z, -3, !dbg !15442
  %i.ab = select i1 %i.y, i64 %i.aa, i64 0, !dbg !15442
  switch i64 %i.ab, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
  ], !dbg !15442

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !15442

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12, !dbg !15443 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !dbg !15443, !alias.scope !15412, !noundef !637
  %.not.i.i.i = icmp eq i32 %i.ad, 0, !dbg !15443
  br i1 %.not.i.i.i, label %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i, label %bb.f, !dbg !15444

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac)
          to label %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i unwind label %bb.k, !dbg !15445, !noalias !15413

_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.f ], !dbg !15446 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4, !dbg !15447
  %.val1.i.i.i.i = load i32, ptr %i.af, align 4, !dbg !15447, !range !788, !alias.scope !15414, !noundef !637
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8, !dbg !15448
  %.val.i.i.i.i = load i32, ptr %i.ag, align 4, !dbg !15448, !range !788, !alias.scope !15414, !noundef !637 ; 2 uses
  %.sroa.1016.sroa.0.0.extract.trunc17.i = trunc i32 %.val.i.i.i.i to i8, !dbg !15449
  %.sroa.1016.sroa.6.0.extract.shift18.i = and i32 %.val.i.i.i.i, -256, !dbg !15450
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %storemerge.i.i.i to i8, !dbg !15449
  %.sroa.13.sroa.5.0.extract.shift.i = lshr i32 %storemerge.i.i.i, 8, !dbg !15449
  %.sroa.13.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i to i8, !dbg !15449
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %storemerge.i.i.i, -65536, !dbg !15450
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !dbg !15451

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8, !dbg !15452
  %i.ai = load i8, ptr %i.ah, align 4, !dbg !15452, !range !800, !alias.scope !15416, !noundef !637
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4, !dbg !15453
  %.val.i.i.i = load i32, ptr %i.aj, align 4, !dbg !15453, !range !788, !alias.scope !15416, !noundef !637
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !dbg !15451

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4, !dbg !15454
  %i.al = load i16, ptr %i.ak, align 4, !dbg !15454, !alias.scope !15411
  %.sroa.013.sroa.7.0.extract.trunc.i = zext i16 %i.al to i32, !dbg !15455
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !dbg !15451

bb.i:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12, !dbg !15456
  %i.an = load i8, ptr %i.am, align 4, !dbg !15456, !range !804, !alias.scope !15419, !noundef !637
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 13, !dbg !15456
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !15456, !alias.scope !15419
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8, !dbg !15457
  %i.ar = load i32, ptr %i.aq, align 4, !dbg !15457, !alias.scope !15419, !noundef !637 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4, !dbg !15458
  %.val.i3.i.i = load i32, ptr %i.as, align 4, !dbg !15458, !range !788, !alias.scope !15419, !noundef !637
  %.sroa.1016.sroa.0.0.extract.trunc.i = trunc i32 %i.ar to i8, !dbg !15459
  %.sroa.1016.sroa.6.0.extract.shift.i = and i32 %i.ar, -256, !dbg !15450
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !dbg !15451

_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i
  %.sroa.013.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ %.val.i.i.i, %bb.g ], [ %.sroa.013.sroa.7.0.extract.trunc.i, %bb.h ], [ %.val.i3.i.i, %bb.i ], !dbg !15442
  %.sroa.1016.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1016.sroa.6.0.extract.shift18.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.1016.sroa.6.0.extract.shift.i, %bb.i ], !dbg !15460
  %.sroa.1016.sroa.0.0.i = phi i8 [ %.sroa.1016.sroa.0.0.extract.trunc17.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ %i.ai, %bb.g ], [ undef, %bb.h ], [ %.sroa.1016.sroa.0.0.extract.trunc.i, %bb.i ], !dbg !15460
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], !dbg !15460
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.ap, %bb.i ], !dbg !15460
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.an, %bb.i ], !dbg !15460
  %.sink.i.i = phi i8 [ %i.x, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ]
  %.sroa.013.sroa.0.0.i = load i32, ptr %.sroa.012.047.i, align 4, !dbg !15461, !range !788, !alias.scope !15411, !noundef !637
  %i.at = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.7.045.i, !dbg !15462 ; 4 uses
  %.sroa.013.sroa.7.0.insert.ext.i = zext i32 %.sroa.013.sroa.7.0.i to i64, !dbg !15450
  %.sroa.013.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.013.sroa.7.0.insert.ext.i, 32, !dbg !15450
  %.sroa.013.sroa.0.0.insert.ext.i = zext i32 %.sroa.013.sroa.0.0.i to i64, !dbg !15450
  %.sroa.013.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.013.sroa.7.0.insert.shift.i, %.sroa.013.sroa.0.0.insert.ext.i, !dbg !15450
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i32, !dbg !15450
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1016.sroa.6.sroa.0.0.i, %.sroa.1016.sroa.0.0.insert.ext.i, !dbg !15450
end_hunk_0
