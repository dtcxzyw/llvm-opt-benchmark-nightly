Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-4ad57aac8b588e26.foundations_macros.5467af46aab99424-cgu.02?download=true
inline.NumInlined: 1699
inline.NumDeleted: 407
begin_hunk_0_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtB2h_5slice4iter4IterB12_ENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0EE9from_iterB3E_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15115, !noalias !15116
  store ptr %i.ad, ptr %i.a, align 8, !dbg !15115, !noalias !15116, !captures !15044
  %i.af = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0INtB7_5FnMutTRRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEE8call_mutBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit, !dbg !15112

.noexc:                                           ; preds = %.lr.ph.i.i.i.i
  br i1 %i.af, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.i.i, label %bb.e, !dbg !15112

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15117, !noalias !15116
  %i.ag = icmp eq ptr %i.ae, %i.ac, !dbg !15097
  br i1 %i.ag, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i, label %.lr.ph.i.i.i.i, !dbg !15105

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i: ; preds = %.noexc8, %bb.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15118, !noalias !15119
  br label %.loopexit12, !dbg !15120

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.i.i: ; preds = %.noexc
  store ptr %i.ae, ptr %i.c, align 8, !dbg !15121, !alias.scope !15122, !noalias !15123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15117, !noalias !15116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15118, !noalias !15119
  %.not.i.i = icmp eq ptr %i.ad, null, !dbg !15124
  br i1 %.not.i.i, label %.loopexit12, label %bb.f, !dbg !15120

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.i.i
  %i.ah = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15125, !alias.scope !15089, !noundef !13 ; 5 uses
  %i.ai = icmp ult i64 %i.ah, 1152921504606846976, !dbg !15128
  call void @llvm.assume(i1 %i.ai), !dbg !15130
  %i.aj = load i64, ptr %i.g, align 8, !dbg !15131, !range !3103, !alias.scope !15089, !noundef !13
  %i.ak = icmp eq i64 %i.ah, %i.aj, !dbg !15139
  br i1 %i.ak, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i, label %.noexc8, !dbg !15139

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i: ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ah, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %.loopexit.split-lp, !dbg !15140

.noexc8:                                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i, %bb.f
  %i.al = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15148, !alias.scope !15089, !nonnull !13, !noundef !13
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ah, !dbg !15157
  store ptr %i.ad, ptr %i.am, align 8, !dbg !15160, !captures !15044
  %i.an = add nuw nsw i64 %i.ah, 1, !dbg !15163
  store i64 %i.an, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15164, !alias.scope !15089
  call void @llvm.experimental.noalias.scope.decl(metadata !15167), !dbg !15108
  call void @llvm.experimental.noalias.scope.decl(metadata !15169), !dbg !15111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15171
  store ptr %i.aa, ptr %i.b, align 8, !noalias !15172
  %i.ao = load ptr, ptr %i.z, align 8, !alias.scope !15173, !noalias !15123, !nonnull !13, !noundef !13 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15173, !noalias !15123 ; 2 uses
  %i.ap = icmp eq ptr %.promoted.i.i.i.i, %i.ao, !dbg !15097
  br i1 %i.ap, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i, label %.lr.ph.i.i.preheader.i.i, !dbg !15105

.loopexit14:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15050, !noalias !15012
  store i64 0, ptr %0, align 8, !dbg !15174
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15174
  store ptr inttoptr (i64 8 to ptr), ptr %i.aq, align 8, !dbg !15174
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15174
  store i64 0, ptr %i.ar, align 8, !dbg !15174
  br label %bb.g, !dbg !15177

bb.g:                                             ; preds = %.loopexit12, %.loopexit14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15177
  ret void, !dbg !15178

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7reserveCs7fhJ7v7hOxk_18foundations_macros.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.i, !dbg !15179

.loopexit12:                                      ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4attr9AttributeENCNvNtCs7fhJ7v7hOxk_18foundations_macros8settings29impl_settings_trait_for_field0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15184, !noalias !15079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !15185
  br label %bb.g, !dbg !15177

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15186
  unreachable, !dbg !15186

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCs6bAnw1I7Lci_3syn4attr9AttributeEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.h
  resume { ptr, i32 } %lpad.phi, !dbg !15186
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EE9from_iterB45_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15187 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15188
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64, !dbg !15189
  %i.e = ptrtoint ptr %1 to i64, !dbg !15189
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !15189
  %i.g = udiv exact i64 %i.f, 352, !dbg !15189    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15203
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !dbg !15203
  %i.h = load i64, ptr %i.b, align 8, !dbg !15203, !range !3533, !noundef !13
  %i.i = trunc nuw i64 %i.h to i1, !dbg !15212
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15213
  %i.k = load i64, ptr %i.j, align 8, !dbg !15213, !range !14330, !noundef !13 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15213 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_.exit.i, !dbg !15212, !prof !14194

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !15214
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #18, !dbg !15215
  unreachable, !dbg !15215

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !15216, !nonnull !13, !noundef !13 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !15217
  tail call void @llvm.assume(i1 %i.o), !dbg !15219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15221
  store i64 %i.k, ptr %i.c, align 8, !dbg !15222
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15222
  store ptr %i.n, ptr %i.p, align 8, !dbg !15222
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15222 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !15222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15223, !noalias !15233
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15223
  store ptr %i.n, ptr %i.r, align 8, !dbg !15223, !noalias !15233
  store ptr %i.q, ptr %i.a, align 8, !dbg !15223, !noalias !15233
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15223
  store i64 0, ptr %i.s, align 8, !dbg !15223, !noalias !15233
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3a_8for_each4callNtCse4VeaA6Ikg_11proc_macro211TokenStreamNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB4d_E14extend_trustedBN_E0E0EB20_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !15238

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #15
          to label %bb.f unwind label %bb.e, !dbg !15241

bb.d:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15242, !noalias !15233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !15243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15241
  ret void, !dbg !15244

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15245
  unreachable, !dbg !15245

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !15245
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15246 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15248
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15255
  %i.e = load ptr, ptr %i.d, align 8, !dbg !15255, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !dbg !15270, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15271), !dbg !15274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15280, !noalias !15285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15287, !noalias !15285
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 461168601842738791) %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 20), !dbg !15287, !noalias !15285
  %i.g = load i64, ptr %i.a, align 8, !dbg !15287, !range !3533, !noalias !15285, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1, !dbg !15293
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15294
  %i.j = load i64, ptr %i.i, align 8, !dbg !15294, !range !14330, !noalias !15285, !noundef !13 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15294 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !15293, !prof !14194

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !dbg !15295, !noalias !15285
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #18, !dbg !15296, !noalias !15285
  unreachable, !dbg !15296

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !dbg !15297, !noalias !15285, !nonnull !13, !noundef !13 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j, !dbg !15298
  tail call void @llvm.assume(i1 %i.n), !dbg !15300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15302, !noalias !15285
  store i64 %i.j, ptr %i.b, align 8, !dbg !15303, !noalias !15285
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15303
  store ptr %i.m, ptr %i.o, align 8, !dbg !15303, !noalias !15285
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15303 ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.f, !dbg !15304
  %i.r = icmp eq i64 %i.j, 0, !dbg !15320
  br i1 %i.r, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph.i, !dbg !15320

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  %.sroa.012.047.i = phi ptr [ %i.u, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i ] ; 14 uses
  %.sroa.7.045.i = phi i64 [ %i.v, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i ] ; 3 uses
  %.sroa.10.044.i = phi i64 [ %i.s, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.j, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i ]
  %i.s = add i64 %.sroa.10.044.i, -1, !dbg !15328 ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.047.i, %i.q, !dbg !15329
  br i1 %i.t, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.c, !dbg !15341

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 20, !dbg !15342
  %i.v = add nuw nsw i64 %.sroa.7.045.i, 1, !dbg !15345
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 16, !dbg !15348
  %i.x = load i8, ptr %i.w, align 4, !dbg !15348, !range !806, !alias.scope !15355, !noalias !15358, !noundef !13 ; 3 uses
  %i.y = icmp samesign ugt i8 %i.x, 3, !dbg !15348
  %i.z = zext nneg i8 %i.x to i64, !dbg !15348
  %i.aa = add nsw i64 %i.z, -3, !dbg !15348
  %i.ab = select i1 %i.y, i64 %i.aa, i64 0, !dbg !15348
  switch i64 %i.ab, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
  ], !dbg !15348

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !15348

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12, !dbg !15360 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !dbg !15360, !alias.scope !15373, !noalias !15376, !noundef !13
  %.not.i.i.i = icmp eq i32 %i.ad, 0, !dbg !15360
  br i1 %.not.i.i.i, label %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i, label %bb.f, !dbg !15378

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac)
          to label %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i unwind label %bb.k, !dbg !15379, !noalias !15381

_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.f ], !dbg !15382 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4, !dbg !15383
  %.val1.i.i.i.i = load i32, ptr %i.af, align 4, !dbg !15383, !range !15387, !alias.scope !15388, !noalias !15391, !noundef !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8, !dbg !15393
  %.val.i.i.i.i = load i32, ptr %i.ag, align 4, !dbg !15393, !range !15387, !alias.scope !15388, !noalias !15391, !noundef !13 ; 2 uses
  %.sroa.1016.sroa.0.0.extract.trunc17.i = trunc i32 %.val.i.i.i.i to i8, !dbg !15394
  %.sroa.1016.sroa.6.0.extract.shift18.i = and i32 %.val.i.i.i.i, -256, !dbg !15395
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %storemerge.i.i.i to i8, !dbg !15394
  %.sroa.13.sroa.5.0.extract.shift.i = lshr i32 %storemerge.i.i.i, 8, !dbg !15394
  %.sroa.13.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i to i8, !dbg !15394
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %storemerge.i.i.i, -65536, !dbg !15395
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !dbg !15414

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8, !dbg !15415
  %i.ai = load i8, ptr %i.ah, align 4, !dbg !15415, !range !15423, !alias.scope !15424, !noalias !15427, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4, !dbg !15429
  %.val.i.i.i = load i32, ptr %i.aj, align 4, !dbg !15429, !range !15387, !alias.scope !15424, !noalias !15427, !noundef !13
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !dbg !15414

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4, !dbg !15430
  %2 = load i16, ptr %i.ak, align 4, !dbg !15430, !alias.scope !15355, !noalias !15358
  %.sroa.013.sroa.7.0.extract.trunc.i = zext i16 %2 to i32, !dbg !15438
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !dbg !15414

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12, !dbg !15439
  %i.am = load i8, ptr %i.al, align 4, !dbg !15439, !range !15451, !alias.scope !15452, !noalias !15455, !noundef !13
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 13, !dbg !15439
  %i.ao = load i8, ptr %i.an, align 1, !dbg !15439, !alias.scope !15452, !noalias !15455
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8, !dbg !15457
  %i.aq = load i32, ptr %i.ap, align 4, !dbg !15457, !alias.scope !15452, !noalias !15455, !noundef !13 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4, !dbg !15460
  %.val.i3.i.i = load i32, ptr %i.ar, align 4, !dbg !15460, !range !15387, !alias.scope !15452, !noalias !15455, !noundef !13
  %.sroa.1016.sroa.0.0.extract.trunc.i = trunc i32 %i.aq to i8, !dbg !15461
  %.sroa.1016.sroa.6.0.extract.shift.i = and i32 %i.aq, -256, !dbg !15395
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !dbg !15414

_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i
  %.sroa.013.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ %.val.i.i.i, %bb.g ], [ %.sroa.013.sroa.7.0.extract.trunc.i, %bb.h ], [ %.val.i3.i.i, %bb.i ], !dbg !15348
  %.sroa.1016.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1016.sroa.6.0.extract.shift18.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.1016.sroa.6.0.extract.shift.i, %bb.i ], !dbg !15462
  %.sroa.1016.sroa.0.0.i = phi i8 [ %.sroa.1016.sroa.0.0.extract.trunc17.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ %i.ai, %bb.g ], [ undef, %bb.h ], [ %.sroa.1016.sroa.0.0.extract.trunc.i, %bb.i ], !dbg !15462
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], !dbg !15462
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.ao, %bb.i ], !dbg !15462
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.am, %bb.i ], !dbg !15462
  %.sink.i.i = phi i8 [ %i.x, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros.exit.i.i ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ]
  %.sroa.013.sroa.0.0.i = load i32, ptr %.sroa.012.047.i, align 4, !dbg !15463, !range !15387, !alias.scope !15355, !noalias !15358, !noundef !13
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.7.045.i, !dbg !15464 ; 4 uses
  %.sroa.013.sroa.7.0.insert.ext.i = zext i32 %.sroa.013.sroa.7.0.i to i64, !dbg !15395
  %.sroa.013.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.013.sroa.7.0.insert.ext.i, 32, !dbg !15395
  %.sroa.013.sroa.0.0.insert.ext.i = zext i32 %.sroa.013.sroa.0.0.i to i64, !dbg !15395
  %.sroa.013.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.013.sroa.7.0.insert.shift.i, %.sroa.013.sroa.0.0.insert.ext.i, !dbg !15395
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i32, !dbg !15395
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1016.sroa.6.sroa.0.0.i, %.sroa.1016.sroa.0.0.insert.ext.i, !dbg !15395
  %.sroa.13.sroa.5.0.insert.ext.i = zext i8 %.sroa.13.sroa.5.0.i to i32, !dbg !15395
  %.sroa.13.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i, 8, !dbg !15395
  %.sroa.13.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i, %.sroa.13.sroa.6.0.i, !dbg !15395
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32, !dbg !15395
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i, !dbg !15395
  store i64 %.sroa.013.sroa.0.0.insert.insert.i, ptr %i.as, align 4, !dbg !15465, !noalias !15381
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !15465
  store i32 %.sroa.1016.sroa.0.0.insert.insert.i, ptr %.sroa.430.0..sroa_idx.i, align 4, !dbg !15465, !noalias !15381
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 12, !dbg !15465
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.531.0..sroa_idx.i, align 4, !dbg !15465, !noalias !15381
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !15465
  store i8 %.sink.i.i, ptr %.sroa.632.0..sroa_idx.i, align 4, !dbg !15465, !noalias !15381
  %i.at = icmp eq i64 %i.s, 0, !dbg !15320
  br i1 %i.at, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph.i, !dbg !15320

bb.j:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15466, !noalias !15381
  unreachable, !dbg !15466

bb.k:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.045.i, ptr %i.p, align 8, !dbg !15467, !noalias !15285
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #15
          to label %bb.l unwind label %bb.j, !dbg !15476, !noalias !15381

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit.i, !dbg !15466

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %.lr.ph.i, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i
  store i64 %i.f, ptr %i.p, align 8, !dbg !15477, !noalias !15285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !15480, !noalias !15271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15476, !noalias !15285
  ret void, !dbg !15481
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15482 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.16.i = alloca [3 x i8], align 1          ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !15483
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15490
  %i.f = load ptr, ptr %i.e, align 8, !dbg !15490, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !dbg !15504, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15505), !dbg !15508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15511, !noalias !15514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15516, !noalias !15514
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !dbg !15516, !noalias !15514
  %i.h = load i64, ptr %i.b, align 8, !dbg !15516, !range !3533, !noalias !15514, !noundef !13
  %i.i = trunc nuw i64 %i.h to i1, !dbg !15522
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15523
  %i.k = load i64, ptr %i.j, align 8, !dbg !15523, !range !14330, !noalias !15514, !noundef !13 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15523 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !15522, !prof !14194

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !15524, !noalias !15514
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #18, !dbg !15525, !noalias !15514
  unreachable, !dbg !15525

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !15526, !noalias !15514, !nonnull !13, !noundef !13 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !15527
  tail call void @llvm.assume(i1 %i.o), !dbg !15529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15531, !noalias !15514
  store i64 %i.k, ptr %i.c, align 8, !dbg !15532, !noalias !15514
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15532
  store ptr %i.n, ptr %i.p, align 8, !dbg !15532, !noalias !15514
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15532 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g, !dbg !15533
  %i.s = icmp eq i64 %i.k, 0, !dbg !15545
  br i1 %i.s, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCse4VeaA6Ikg_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph.i, !dbg !15545

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 2 uses
  br label %bb.c, !dbg !15545

bb.c:                                             ; preds = %bb.p, %.lr.ph.i
  %.sroa.015.065.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.w, %bb.p ] ; 21 uses
  %.sroa.7.062.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.p ] ; 3 uses
  %.sroa.10.061.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.p ]
  %i.u = add i64 %.sroa.10.061.i, -1, !dbg !15550 ; 2 uses
  %i.v = icmp eq ptr %.sroa.015.065.i, %i.r, !dbg !15551
  br i1 %i.v, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCse4VeaA6Ikg_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.d, !dbg !15560

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 32, !dbg !15561
  %i.x = add nuw nsw i64 %.sroa.7.062.i, 1, !dbg !15564
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i), !dbg !15567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15569), !dbg !15572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15573, !noalias !15514
  %i.y = load i32, ptr %.sroa.015.065.i, align 8, !dbg !15573, !range !3266, !alias.scope !15579, !noalias !15580, !noundef !13 ; 2 uses
  switch i32 %i.y, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 3, label %bb.m
  ], !dbg !15573

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8, !dbg !15582
  %i.aa = load i32, ptr %i.z, align 8, !dbg !15583, !range !3288, !alias.scope !15593, !noalias !15598, !noundef !13
  %i.ab = trunc nuw i32 %i.aa to i1, !dbg !15583
  br i1 %i.ab, label %bb.f, label %bb.g, !dbg !15583

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16, !dbg !15601
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24, !dbg !15602
  %.val.i.i.i.i.i = load i8, ptr %i.ad, align 8, !dbg !15602, !range !15609, !alias.scope !15610, !noalias !15598, !noundef !13
  %i.ae = invoke noundef nonnull ptr @_RNvXs1_NtCse4VeaA6Ikg_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i unwind label %bb.r, !dbg !15613, !noalias !15617

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 12, !dbg !15618
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 28, !dbg !15619
  %i.ah = load i8, ptr %i.ag, align 4, !dbg !15619, !range !15609, !alias.scope !15627, !noalias !15632, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24, !dbg !15635 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !dbg !15635, !alias.scope !15627, !noalias !15632, !noundef !13
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0, !dbg !15635
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.h, !dbg !15637

bb.h:                                             ; preds = %bb.g
  %i.ak = invoke noundef i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.r, !dbg !15638, !noalias !15617

_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ak, %bb.h ], !dbg !15639 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.af, align 4, !dbg !15640, !range !15387, !alias.scope !15642, !noalias !15645, !noundef !13
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16, !dbg !15647
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !dbg !15647, !alias.scope !15642, !noalias !15645
  %i.am = inttoptr i64 %.val1.i.i.i.i.i.i.i to ptr, !dbg !15648
  %.sroa.6.sroa.0.0.extract.trunc.i.i.i = trunc i32 %storemerge.i.i.i.i.i.i to i8, !dbg !15648
  %i.an = zext i32 %.val2.i.i.i.i.i.i.i to i64, !dbg !15649
  %i.ao = shl nuw i64 %i.an, 32, !dbg !15649
  %i.ap = and i32 %storemerge.i.i.i.i.i.i, -256, !dbg !15650
  br label %_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, !dbg !15660

_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.f
  %.sroa.6.sroa.3.sroa.0.0.i.i.i = phi i32 [ %i.ap, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.f ]
  %.sroa.6.sroa.0.0.i.i.i = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc.i.i.i, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val.i.i.i.i.i, %bb.f ], !dbg !15583
  %.sroa.8.0.i.i.i = phi i8 [ %i.ah, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.f ]
  %.sroa.3.0.i.i.i = phi ptr [ %i.am, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.ae, %bb.f ], !dbg !15583
  %.sroa.518.4.insert.insert.i = phi i64 [ %i.ao, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 1, %bb.f ], !dbg !15649
  %i.aq = inttoptr i64 %.sroa.518.4.insert.insert.i to ptr, !dbg !15649
  %i.ar = ptrtoint ptr %.sroa.3.0.i.i.i to i64, !dbg !15649
  br label %bb.p, !dbg !15661

bb.i:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8, !dbg !15662 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24, !dbg !15663
  %i.au = load i8, ptr %i.at, align 8, !dbg !15663, !range !173, !alias.scope !15671, !noalias !15676, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.au, 2, !dbg !15663
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j, !dbg !15663

bb.j:                                             ; preds = %bb.i
  %i.av = invoke { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %.noexc13.i unwind label %bb.r, !dbg !15679, !noalias !15617 ; 2 uses

.noexc13.i:                                       ; preds = %bb.j
  %i.aw = extractvalue { ptr, i64 } %i.av, 0, !dbg !15679 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1, !dbg !15679 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %.sroa.5.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.ax to i8, !dbg !15684
  %.sroa.5.sroa.4.0.extract.shift.i.i.i = and i64 %i.ax, -256, !dbg !15685
  br label %_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, !dbg !15686

bb.k:                                             ; preds = %bb.i
  %.val1.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !dbg !15687, !alias.scope !15692, !noalias !15697
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16, !dbg !15700
  %i.az = load i8, ptr %i.ay, align 8, !dbg !15700, !range !15423, !alias.scope !15692, !noalias !15697, !noundef !13
  %i.ba = inttoptr i64 %.val1.i.i.i.i.i.i to ptr, !dbg !15701
  br label %_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, !dbg !15686

_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.k, %.noexc13.i
  %.sroa.5.sroa.4.sroa.0.0.i.i.i = phi i64 [ 0, %bb.k ], [ %.sroa.5.sroa.4.0.extract.shift.i.i.i, %.noexc13.i ]
  %.sroa.5.sroa.0.0.i.i.i = phi i8 [ %i.az, %bb.k ], [ %.sroa.5.sroa.0.0.extract.trunc.i.i.i, %.noexc13.i ], !dbg !15663
  %.sroa.0.0.i.i.i = phi ptr [ %i.ba, %bb.k ], [ %i.aw, %.noexc13.i ], !dbg !15663
  %.sroa.5.sroa.0.0.insert.ext.i.i.i = zext i8 %.sroa.5.sroa.0.0.i.i.i to i64, !dbg !15685
  %.sroa.5.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.5.sroa.4.sroa.0.0.i.i.i, %.sroa.5.sroa.0.0.insert.ext.i.i.i, !dbg !15685
  br label %bb.p, !dbg !15661

bb.l:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 4, !dbg !15702
  %i.bc = load i32, ptr %i.bb, align 4, !dbg !15703, !range !15708, !alias.scope !15709, !noalias !15712, !noundef !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 12, !dbg !15714
  %.val.i.i.i = load i8, ptr %i.bd, align 4, !dbg !15714, !range !15423, !alias.scope !15709, !noalias !15712, !noundef !13
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8, !dbg !15715
  %.val1.i.i.i = load i32, ptr %i.be, align 8, !dbg !15715, !alias.scope !15709, !noalias !15712, !noundef !13
  %.sroa.518.0.insert.ext.i = zext i32 %.val1.i.i.i to i64, !dbg !15716
  %.sroa.518.4.insert.ext28.i = zext nneg i8 %.val.i.i.i to i64, !dbg !15716
  %.sroa.518.4.insert.shift29.i = shl nuw nsw i64 %.sroa.518.4.insert.ext28.i, 32, !dbg !15716
  %.sroa.518.4.insert.insert31.i = or disjoint i64 %.sroa.518.4.insert.shift29.i, %.sroa.518.0.insert.ext.i, !dbg !15716
  %i.bf = inttoptr i64 %.sroa.518.4.insert.insert31.i to ptr, !dbg !15716
  br label %bb.p, !dbg !15661

bb.m:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8, !dbg !15717 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !15718, !range !417, !alias.scope !15726, !noalias !15731, !noundef !13
  %.not.i.i2.i.i = icmp eq i64 %i.bh, -1, !dbg !15718
  br i1 %.not.i.i2.i.i, label %bb.o, label %bb.n, !dbg !15718

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %._RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i unwind label %bb.r, !dbg !15734, !noalias !15617

._RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i: ; preds = %bb.n
  %.sroa.518.8.copyload.pre.i = load ptr, ptr %i.a, align 8, !dbg !15739, !noalias !15740
  %.sroa.13.8.copyload.pre.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !dbg !15739, !noalias !15740
  %.sroa.15.8.copyload.pre.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !dbg !15739, !noalias !15740
  br label %_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, !dbg !15734

bb.o:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16, !dbg !15741
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 28, !dbg !15742
  %i.bk = load i8, ptr %i.bj, align 4, !dbg !15742, !range !15451, !alias.scope !15748, !noalias !15753, !noundef !13 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 29, !dbg !15742
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !15742, !alias.scope !15748, !noalias !15753
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24, !dbg !15756
  %i.bo = load i32, ptr %i.bn, align 8, !dbg !15756, !alias.scope !15748, !noalias !15753, !noundef !13 ; 2 uses
  %i.bp = load <2 x i32>, ptr %i.bi, align 8, !dbg !15758, !alias.scope !15748, !noalias !15753
  store <2 x i32> %i.bp, ptr %i.t, align 8, !dbg !15759, !noalias !15760
  store i32 %i.bo, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !dbg !15759, !noalias !15760
  store i8 %i.bk, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !dbg !15759, !noalias !15760
  store i8 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 1, !dbg !15759, !noalias !15760
  store i64 -1, ptr %i.a, align 8, !dbg !15759, !noalias !15760
  br label %_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, !dbg !15761

_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.o, %._RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i
  %.sroa.15.8.copyload.i = phi i8 [ %.sroa.15.8.copyload.pre.i, %._RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i ], [ %i.bk, %bb.o ], !dbg !15739
  %.sroa.13.8.copyload.i = phi i32 [ %.sroa.13.8.copyload.pre.i, %._RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i ], [ %i.bo, %bb.o ], !dbg !15739 ; 2 uses
  %.sroa.518.8.copyload.i = phi ptr [ %.sroa.518.8.copyload.pre.i, %._RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i ], [ inttoptr (i64 -1 to ptr), %bb.o ], !dbg !15739
  %.sroa.11.8.copyload.i = load i64, ptr %i.t, align 8, !dbg !15739, !noalias !15740
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.13.8.copyload.i to i8, !dbg !15739
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %.sroa.13.8.copyload.i, -256, !dbg !15650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i.i.i, i64 3, i1 false), !dbg !15739, !noalias !15740
  br label %bb.p, !dbg !15661

bb.p:                                             ; preds = %_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, %bb.l, %_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, %_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i
  %.sroa.518.0.i = phi ptr [ %i.aq, %_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0.0.i.i.i, %_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.bf, %bb.l ], [ %.sroa.518.8.copyload.i, %_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !15573
  %.sroa.13.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.6.sroa.3.sroa.0.0.i.i.i, %_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.l ], [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !15762
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.6.sroa.0.0.i.i.i, %_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.au, %_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.l ], [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !15762
  %.sroa.15.0.i = phi i8 [ %.sroa.8.0.i.i.i, %_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.l ], [ %.sroa.15.8.copyload.i, %_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !15762
  %.sroa.11.0.i = phi i64 [ %i.ar, %_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.0.0.insert.insert.i.i.i, %_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.l ], [ %.sroa.11.8.copyload.i, %_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !15762
  %.sroa.417.0.i = phi i32 [ undef, %_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs15_Cse4VeaA6Ikg_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.bc, %bb.l ], [ undef, %_RNvXs16_Cse4VeaA6Ikg_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], !dbg !15762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15763, !noalias !15514
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.062.i, !dbg !15764 ; 7 uses
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32, !dbg !15650
  %.sroa.13.sroa.0.0.insert.insert.i = or i32 %.sroa.13.sroa.6.sroa.0.0.i, %.sroa.13.sroa.0.0.insert.ext.i, !dbg !15650
  %.sroa.949.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 29, !dbg !15765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.949.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.i, i64 3, i1 false), !dbg !15650, !noalias !15617
  store i32 %i.y, ptr %i.bq, align 8, !dbg !15765, !noalias !15617
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 4, !dbg !15765
  store i32 %.sroa.417.0.i, ptr %.sroa.444.0..sroa_idx.i, align 4, !dbg !15765, !noalias !15617
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !15765
  store ptr %.sroa.518.0.i, ptr %.sroa.545.0..sroa_idx.i, align 8, !dbg !15765, !noalias !15617
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !15765
  store i64 %.sroa.11.0.i, ptr %.sroa.646.0..sroa_idx.i, align 8, !dbg !15765, !noalias !15617
  %.sroa.747.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24, !dbg !15765
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.747.0..sroa_idx.i, align 8, !dbg !15765, !noalias !15617
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 28, !dbg !15765
  store i8 %.sroa.15.0.i, ptr %.sroa.848.0..sroa_idx.i, align 4, !dbg !15765, !noalias !15617
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i), !dbg !15766
  %i.br = icmp eq i64 %i.u, 0, !dbg !15545
  br i1 %i.br, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCse4VeaA6Ikg_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.c, !dbg !15545

bb.q:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15767, !noalias !15617
  unreachable, !dbg !15767

bb.r:                                             ; preds = %bb.n, %bb.j, %bb.h, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.062.i, ptr %i.q, align 8, !dbg !15768, !noalias !15514
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #15
          to label %bb.s unwind label %bb.q, !dbg !15775, !noalias !15617

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.loopexit.i, !dbg !15767

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCse4VeaA6Ikg_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.c, %bb.p, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i
  store i64 %i.g, ptr %i.q, align 8, !dbg !15776, !noalias !15514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !15779, !noalias !15505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15775, !noalias !15514
  ret void, !dbg !15780
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !793 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15781
  %i.b = load ptr, ptr %i.a, align 8, !dbg !15781, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15786
  %i.d = load i64, ptr %i.c, align 8, !dbg !15786, !noundef !13 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !15787
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph.i, !dbg !15787

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i, !dbg !15787 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1, !dbg !15787 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !15791
  %i.i = load i8, ptr %i.h, align 4, !dbg !15791, !range !806, !alias.scope !15793, !noundef !13
  %i.j = icmp samesign ult i8 %i.i, 4, !dbg !15791
  br i1 %i.j, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !15791

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12, !dbg !15798 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !dbg !15801, !alias.scope !15803, !noundef !13
  %i.m = icmp eq i32 %i.l, 0, !dbg !15801
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.c, !dbg !15801

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit.i unwind label %bb.d, !dbg !15810

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d, !dbg !15787
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph.i, !dbg !15787

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.g, %i.d, !dbg !15787
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i, !dbg !15787

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.110.i, !dbg !15787 ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1, !dbg !15787   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !15812
  %i.t = load i8, ptr %i.s, align 4, !dbg !15812, !range !806, !alias.scope !15814, !noundef !13
  %i.u = icmp samesign ult i8 %i.t, 4, !dbg !15812
  br i1 %i.u, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit8.i, !dbg !15812

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12, !dbg !15817 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !dbg !15820, !alias.scope !15822, !noundef !13
  %i.x = icmp eq i32 %i.w, 0, !dbg !15820
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit8.i, label %bb.f, !dbg !15820

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit8.i unwind label %bb.g, !dbg !15829

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.y = icmp eq i64 %i.r, %i.d, !dbg !15787
  br i1 %i.y, label %._crit_edge13.i, label %.lr.ph12.i, !dbg !15787

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit8.i, %bb.d
  resume { ptr, i32 } %i.o, !dbg !15787

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15787
  unreachable, !dbg !15787

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros.exit.i, %bb.a
  ret void, !dbg !15831
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !868 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15832
  %i.b = load ptr, ptr %i.a, align 8, !dbg !15832, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15837
  %i.d = load i64, ptr %i.c, align 8, !dbg !15837, !noundef !13 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !15838
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCse4VeaA6Ikg_11proc_macro211TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph, !dbg !15838

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !15838
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCse4VeaA6Ikg_11proc_macro211TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph, !dbg !15838

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !15838
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1, !dbg !15838 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d, !dbg !15838

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !15838    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !15838
  br i1 %i.j, label %._crit_edge, label %.lr.ph3, !dbg !15838

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !15838
  br i1 %i.l, label %._crit_edge, label %.lr.ph3, !dbg !15838

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !15838
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #15
          to label %bb.c unwind label %bb.e, !dbg !15838

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k, !dbg !15838

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #14, !dbg !15838
  unreachable, !dbg !15838

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCse4VeaA6Ikg_11proc_macro211TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.b, %bb.a
  ret void, !dbg !15842
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !913 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15843
  %i.b = load ptr, ptr %i.a, align 8, !dbg !15843, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15848
  %i.d = load i64, ptr %i.c, align 8, !dbg !15848, !noundef !13 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !15849
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph, !dbg !15849

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !15849
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph, !dbg !15849

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1, !dbg !15849
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1, !dbg !15849 ; 4 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit.i unwind label %bb.b, !dbg !15853

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1, !dbg !15849    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d, !dbg !15849
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit7.i._crit_edge, label %.lr.ph3, !dbg !15849

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d, !dbg !15849
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit7.i._crit_edge, label %.lr.ph3, !dbg !15849

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2, !dbg !15849
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit7.i unwind label %bb.c, !dbg !15857

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit7.i._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7fhJ7v7hOxk_18foundations_macros.exit7.i, %bb.b
  resume { ptr, i32 } %i.k, !dbg !15849

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!15230 = distinct !DISubprogram(name: "spec_extend<proc_macro2::TokenStream, core::iter::adapters::map::Map<core::slice::iter::Iter<syn::stmt::Stmt>, foundations_macros::span_fn::try_async_trait_fn_rewrite::{closure_env#0}>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EE11spec_extendB3M_", scope: !14525, file: !14361, line: 26, type: !12, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15231 = distinct !DILocation(line: 60, column: 16, scope: !15232)
!15232 = distinct !DILexicalBlock(scope: !15187, file: !14270, line: 51, column: 9)
!15233 = !{!15234, !15236}
!15234 = distinct !{!15234, !15235, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_: argument 0"}
!15235 = distinct !{!15235, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EEB3u_"}
!15236 = distinct !{!15236, !15237, !"_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EE11spec_extendB3M_: argument 0"}
!15237 = distinct !{!15237, !"_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamEINtB4_10SpecExtendBT_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB23_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0EE11spec_extendB3M_"}
!15238 = !DILocation(line: 887, column: 14, scope: !15239, inlinedAt: !15240)
!15239 = distinct !DISubprogram(name: "for_each<core::iter::adapters::map::Map<core::slice::iter::Iter<syn::stmt::Stmt>, foundations_macros::span_fn::try_async_trait_fn_rewrite::{closure_env#0}>, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<proc_macro2::TokenStream, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<syn::stmt::Stmt>, foundations_macros::span_fn::try_async_trait_fn_rewrite::{closure_env#0}>>>", linkageName: "_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs6bAnw1I7Lci_3syn4stmt4StmtENCNvNtCs7fhJ7v7hOxk_18foundations_macros7span_fn26try_async_trait_fn_rewrite0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3U_3VecNtCse4VeaA6Ikg_11proc_macro211TokenStreamE14extend_trustedB3_E0EB1U_", scope: !14536, file: !14535, line: 877, type: !12, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15240 = distinct !DILocation(line: 4135, column: 26, scope: !15224, inlinedAt: !15229)
!15241 = !DILocation(line: 62, column: 5, scope: !15187)
!15242 = !DILocation(line: 4141, column: 18, scope: !15224, inlinedAt: !15229)
!15243 = !DILocation(line: 61, column: 9, scope: !15232)
!15244 = !DILocation(line: 62, column: 6, scope: !15187)
!15245 = !DILocation(line: 50, column: 5, scope: !15187)
!15246 = distinct !DISubprogram(name: "clone<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros", scope: !15247, file: !436, line: 3879, type: !12, scopeLine: 3879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15247 = !DINamespace(name: "{impl#13}", scope: !438)
!15248 = !DILocation(line: 621, column: 9, scope: !15249, inlinedAt: !15250)
!15249 = distinct !DISubprogram(name: "allocator<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner9allocatorCs7fhJ7v7hOxk_18foundations_macros", scope: !427, file: !426, line: 620, type: !12, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15250 = !DILocation(line: 315, column: 20, scope: !15251, inlinedAt: !15252)
!15251 = distinct !DISubprogram(name: "allocator<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE9allocatorCs7fhJ7v7hOxk_18foundations_macros", scope: !433, file: !426, line: 314, type: !12, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15252 = !DILocation(line: 2125, column: 18, scope: !15253, inlinedAt: !15254)
!15253 = distinct !DISubprogram(name: "allocator<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE9allocatorCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 2124, type: !12, scopeLine: 2124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15254 = !DILocation(line: 3880, column: 26, scope: !15246)
!15255 = !DILocation(line: 611, column: 9, scope: !15256, inlinedAt: !15257)
!15256 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, proc_macro::TokenTree>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros", scope: !427, file: !426, line: 610, type: !12, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15257 = !DILocation(line: 606, column: 14, scope: !15258, inlinedAt: !15259)
!15258 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, proc_macro::TokenTree>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner3ptrNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs7fhJ7v7hOxk_18foundations_macros", scope: !427, file: !426, line: 605, type: !12, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15259 = !DILocation(line: 296, column: 20, scope: !15260, inlinedAt: !15261)
!15260 = distinct !DISubprogram(name: "ptr<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE3ptrCs7fhJ7v7hOxk_18foundations_macros", scope: !433, file: !426, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15261 = !DILocation(line: 1969, column: 18, scope: !15262, inlinedAt: !15263)
!15262 = distinct !DISubprogram(name: "as_ptr<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE6as_ptrCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 1966, type: !12, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15263 = !DILocation(line: 1865, column: 76, scope: !15264, inlinedAt: !15265)
!15264 = distinct !DISubprogram(name: "as_slice<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE8as_sliceCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 1848, type: !12, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15265 = !DILocation(line: 3855, column: 14, scope: !15266, inlinedAt: !15268)
!15266 = distinct !DISubprogram(name: "deref<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs7fhJ7v7hOxk_18foundations_macros", scope: !15267, file: !436, line: 3854, type: !12, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15267 = !DINamespace(name: "{impl#10}", scope: !438)
!15268 = !DILocation(line: 3881, column: 26, scope: !15269)
!15269 = distinct !DILexicalBlock(scope: !15246, file: !436, line: 3880, column: 9)
!15270 = !DILocation(line: 1865, column: 86, scope: !15264, inlinedAt: !15265)
!15271 = !{!15272}
!15272 = distinct !{!15272, !15273, !"_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros: argument 1"}
!15273 = distinct !{!15273, !"_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros"}
!15274 = !DILocation(line: 400, column: 16, scope: !15275, inlinedAt: !15279)
!15275 = distinct !DISubprogram(name: "to_vec_in<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RINvMNtCs1xwejQucwHj_5alloc5sliceSNtCsa5ERaWwhjCQ_10proc_macro9TokenTree9to_vec_inNtNtB5_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros", scope: !15277, file: !15276, line: 396, type: !12, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15276 = !DIFile(filename: "library/alloc/src/slice.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "8e7bce5d617a4e88f7bdb700dff9d669")
!15277 = !DINamespace(name: "{impl#0}", scope: !15278)
!15278 = !DINamespace(name: "slice", scope: !27)
!15279 = !DILocation(line: 3881, column: 9, scope: !15269)
!15280 = !DILocation(line: 425, column: 21, scope: !15281, inlinedAt: !15284)
!15281 = distinct !DISubprogram(name: "to_vec<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros", scope: !15282, file: !15276, line: 410, type: !12, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15282 = !DINamespace(name: "{impl#0}", scope: !15283)
!15283 = !DINamespace(name: "to_vec_in", scope: !15277)
!15284 = distinct !DILocation(line: 400, column: 16, scope: !15275, inlinedAt: !15279)
!15285 = !{!15286, !15272}
!15286 = distinct !{!15286, !15273, !"_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!15287 = !DILocation(line: 435, column: 15, scope: !14319, inlinedAt: !15288)
!15288 = distinct !DILocation(line: 177, column: 20, scope: !15289, inlinedAt: !15290)
!15289 = distinct !DISubprogram(name: "with_capacity_in<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros", scope: !433, file: !426, line: 175, type: !12, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15290 = distinct !DILocation(line: 969, column: 20, scope: !15291, inlinedAt: !15292)
!15291 = distinct !DISubprogram(name: "with_capacity_in<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 968, type: !12, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15292 = distinct !DILocation(line: 425, column: 31, scope: !15281, inlinedAt: !15284)
!15293 = !DILocation(line: 435, column: 9, scope: !14319, inlinedAt: !15288)
!15294 = !DILocation(line: 0, scope: !14319, inlinedAt: !15288)
!15295 = !DILocation(line: 443, column: 17, scope: !14319, inlinedAt: !15288)
!15296 = !DILocation(line: 443, column: 25, scope: !14333, inlinedAt: !15288)
!15297 = !DILocation(line: 436, column: 16, scope: !14319, inlinedAt: !15288)
!15298 = !DILocation(line: 764, column: 9, scope: !14336, inlinedAt: !15299)
!15299 = distinct !DILocation(line: 439, column: 50, scope: !14338, inlinedAt: !15288)
!15300 = !DILocation(line: 210, column: 9, scope: !14340, inlinedAt: !15301)
!15301 = distinct !DILocation(line: 439, column: 21, scope: !14338, inlinedAt: !15288)
!15302 = !DILocation(line: 444, column: 9, scope: !14319, inlinedAt: !15288)
!15303 = !DILocation(line: 969, column: 9, scope: !15291, inlinedAt: !15292)
!15304 = !DILocation(line: 970, column: 18, scope: !15305, inlinedAt: !15306)
!15305 = distinct !DISubprogram(name: "add<proc_macro::TokenTree>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtCsa5ERaWwhjCQ_10proc_macro9TokenTree3addCs7fhJ7v7hOxk_18foundations_macros", scope: !456, file: !455, line: 936, type: !12, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15306 = distinct !DILocation(line: 100, column: 78, scope: !15307, inlinedAt: !15312)
!15307 = distinct !DILexicalBlock(scope: !15309, file: !15308, line: 96, column: 9)
!15308 = !DIFile(filename: "library/core/src/slice/iter.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "ebc5d6aac232a80fd1dcb153129554c9")
!15309 = distinct !DILexicalBlock(scope: !15310, file: !15308, line: 95, column: 9)
!15310 = distinct !DISubprogram(name: "new<proc_macro::TokenTree>", linkageName: "_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE3newCs7fhJ7v7hOxk_18foundations_macros", scope: !15311, file: !15308, line: 94, type: !12, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15311 = !DINamespace(name: "Iter", scope: !14487)
!15312 = distinct !DILocation(line: 1040, column: 9, scope: !15313, inlinedAt: !15316)
!15313 = distinct !DISubprogram(name: "iter<proc_macro::TokenTree>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core5sliceSNtCsa5ERaWwhjCQ_10proc_macro9TokenTree4iterCs7fhJ7v7hOxk_18foundations_macros", scope: !15315, file: !15314, line: 1039, type: !12, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15314 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "3864a87bb6bc29c76dd67717f51013ca")
!15315 = !DINamespace(name: "{impl#0}", scope: !14488)
!15316 = distinct !DILocation(line: 430, column: 33, scope: !15317, inlinedAt: !15284)
!15317 = distinct !DILexicalBlock(scope: !15318, file: !15276, line: 427, column: 17)
!15318 = distinct !DILexicalBlock(scope: !15319, file: !15276, line: 426, column: 17)
!15319 = distinct !DILexicalBlock(scope: !15281, file: !15276, line: 425, column: 17)
!15320 = !DILocation(line: 37, column: 12, scope: !15321, inlinedAt: !15325)
!15321 = distinct !DISubprogram(name: "next<core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<proc_macro::TokenTree>>>", linkageName: "_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEEENtNtNtB8_6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros", scope: !15323, file: !15322, line: 36, type: !12, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15322 = !DIFile(filename: "library/core/src/iter/adapters/take.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "c26f67e0ebb3407ed3802e085ce3525b")
!15323 = !DINamespace(name: "{impl#1}", scope: !15324)
!15324 = !DINamespace(name: "take", scope: !14494)
!15325 = distinct !DILocation(line: 430, column: 31, scope: !15326, inlinedAt: !15284)
!15326 = !DILexicalBlockFile(scope: !15327, file: !15276, discriminator: 2)
!15327 = distinct !DILexicalBlock(scope: !15317, file: !15276, line: 430, column: 17)
!15328 = !DILocation(line: 38, column: 13, scope: !15321, inlinedAt: !15325)
!15329 = !DILocation(line: 1663, column: 9, scope: !15330, inlinedAt: !15331)
!15330 = distinct !DISubprogram(name: "eq<proc_macro::TokenTree>", linkageName: "_RNvXsd_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtB9_3cmp9PartialEq2eqCs7fhJ7v7hOxk_18foundations_macros", scope: !15030, file: !3179, line: 1662, type: !12, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15331 = distinct !DILocation(line: 180, column: 28, scope: !15332, inlinedAt: !15335)
!15332 = distinct !DILexicalBlock(scope: !15333, file: !14483, line: 162, column: 17)
!15333 = distinct !DILexicalBlock(scope: !15334, file: !14483, line: 161, column: 17)
!15334 = distinct !DISubprogram(name: "next<proc_macro::TokenTree>", linkageName: "_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros", scope: !14486, file: !14483, line: 157, type: !12, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15335 = distinct !DILocation(line: 80, column: 27, scope: !15336, inlinedAt: !15340)
!15336 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<proc_macro::TokenTree>>", linkageName: "_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEENtNtNtB8_6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros", scope: !15338, file: !15337, line: 79, type: !12, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15337 = !DIFile(filename: "library/core/src/iter/adapters/enumerate.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "593117651994d9f54658d086cd09bf97")
!15338 = !DINamespace(name: "{impl#1}", scope: !15339)
!15339 = !DINamespace(name: "enumerate", scope: !14494)
!15340 = distinct !DILocation(line: 39, column: 23, scope: !15321, inlinedAt: !15325)
!15341 = !DILocation(line: 180, column: 28, scope: !15332, inlinedAt: !15335)
!15342 = !DILocation(line: 627, column: 28, scope: !15343, inlinedAt: !15344)
!15343 = distinct !DISubprogram(name: "add<proc_macro::TokenTree>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE3addCs7fhJ7v7hOxk_18foundations_macros", scope: !3180, file: !3179, line: 619, type: !12, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15344 = distinct !DILocation(line: 185, column: 40, scope: !15332, inlinedAt: !15335)
!15345 = !DILocation(line: 82, column: 9, scope: !15346, inlinedAt: !15340)
!15346 = distinct !DILexicalBlock(scope: !15347, file: !15337, line: 81, column: 9)
!15347 = distinct !DILexicalBlock(scope: !15336, file: !15337, line: 80, column: 9)
!15348 = !DILocation(line: 783, column: 10, scope: !15349, inlinedAt: !15353)
!15349 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15351, file: !15350, line: 783, type: !12, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15350 = !DIFile(filename: "library/proc_macro/src/lib.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "8adda14903fc250bdb0ed14ce666e0e5")
!15351 = !DINamespace(name: "{impl#75}", scope: !15352)
!15352 = !DINamespace(name: "proc_macro", scope: null)
!15353 = distinct !DILocation(line: 432, column: 38, scope: !15354, inlinedAt: !15284)
!15354 = distinct !DILexicalBlock(scope: !15327, file: !15276, line: 430, column: 17)
!15355 = !{!15356, !15272}
!15356 = distinct !{!15356, !15357, !"_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!15357 = distinct !{!15357, !"_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!15358 = !{!15359, !15286}
!15359 = distinct !{!15359, !15357, !"_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!15360 = !DILocation(line: 2274, column: 15, scope: !15361, inlinedAt: !15363)
!15361 = distinct !DISubprogram(name: "clone<proc_macro::bridge::client::TokenStream>", linkageName: "_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6client11TokenStreamENtNtB7_5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros", scope: !15362, file: !14667, line: 2273, type: !12, scopeLine: 2273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15362 = !DINamespace(name: "{impl#6}", scope: !14669)
!15363 = distinct !DILocation(line: 371, column: 5, scope: !15364, inlinedAt: !15368)
!15364 = distinct !DISubprogram(name: "clone<proc_macro::bridge::client::TokenStream, proc_macro::bridge::client::Span>", linkageName: "_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros", scope: !15366, file: !15365, line: 368, type: !12, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15365 = !DIFile(filename: "library/proc_macro/src/bridge/mod.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "18dd62668a4868b662f4ea71e3a9e0ca")
!15366 = !DINamespace(name: "{impl#37}", scope: !15367)
!15367 = !DINamespace(name: "bridge", scope: !15352)
!15368 = distinct !DILocation(line: 902, column: 10, scope: !15369, inlinedAt: !15371)
!15369 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15370, file: !15350, line: 902, type: !12, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15370 = !DINamespace(name: "{impl#76}", scope: !15352)
!15371 = distinct !DILocation(line: 787, column: 68, scope: !15372, inlinedAt: !15353)
!15372 = distinct !DILexicalBlock(scope: !15349, file: !15350, line: 783, column: 10)
!15373 = !{!15374, !15356, !15272}
!15374 = distinct !{!15374, !15375, !"_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 1"}
!15375 = distinct !{!15375, !"_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros"}
!15376 = !{!15377, !15359, !15286}
!15377 = distinct !{!15377, !15375, !"_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!15378 = !DILocation(line: 2274, column: 9, scope: !15361, inlinedAt: !15363)
!15379 = !DILocation(line: 2275, column: 31, scope: !15380, inlinedAt: !15363)
!15380 = distinct !DILexicalBlock(scope: !15361, file: !14667, line: 2275, column: 13)
!15381 = !{!15286}
!15382 = !DILocation(line: 0, scope: !15361, inlinedAt: !15363)
!15383 = !DILocation(line: 356, column: 5, scope: !15384, inlinedAt: !15386)
!15384 = distinct !DISubprogram(name: "clone<proc_macro::bridge::client::Span>", linkageName: "_RNvXsv_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros", scope: !15385, file: !15365, line: 353, type: !12, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15385 = !DINamespace(name: "{impl#33}", scope: !15367)
!15386 = distinct !DILocation(line: 372, column: 5, scope: !15364, inlinedAt: !15368)
!15387 = !{i32 1, i32 0}
!15388 = !{!15389, !15374, !15356, !15272}
!15389 = distinct !{!15389, !15390, !"_RNvXsv_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 1"}
!15390 = distinct !{!15390, !"_RNvXsv_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros"}
!15391 = !{!15392, !15377, !15359, !15286}
!15392 = distinct !{!15392, !15390, !"_RNvXsv_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!15393 = !DILocation(line: 357, column: 5, scope: !15384, inlinedAt: !15386)
!15394 = !DILocation(line: 783, column: 10, scope: !15372, inlinedAt: !15353)
!15395 = !DILocation(line: 82, column: 9, scope: !15396, inlinedAt: !15400)
!15396 = distinct !DISubprogram(name: "new<proc_macro::TokenTree>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3mem14maybe_danglingINtB2_13MaybeDanglingNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE3newCs7fhJ7v7hOxk_18foundations_macros", scope: !15398, file: !15397, line: 78, type: !12, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15397 = !DIFile(filename: "library/core/src/mem/maybe_dangling.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "51ae793cba9c4914f325c7adfc43ccf6")
!15398 = !DINamespace(name: "MaybeDangling", scope: !15399)
!15399 = !DINamespace(name: "maybe_dangling", scope: !3086)
!15400 = distinct !DILocation(line: 183, column: 31, scope: !15401, inlinedAt: !15406)
!15401 = !DILexicalBlockFile(scope: !15403, file: !15402, discriminator: 2)
!15402 = !DIFile(filename: "library/core/src/mem/manually_drop.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "ae146de8933b4b1f8c741a16d69d5c8e")
!15403 = distinct !DISubprogram(name: "new<proc_macro::TokenTree>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3mem13manually_dropINtB2_12ManuallyDropNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE3newCs7fhJ7v7hOxk_18foundations_macros", scope: !15404, file: !15402, line: 182, type: !12, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15404 = !DINamespace(name: "ManuallyDrop", scope: !15405)
!15405 = !DINamespace(name: "manually_drop", scope: !3086)
!15406 = distinct !DILocation(line: 407, column: 30, scope: !15407, inlinedAt: !15411)
!15407 = distinct !DISubprogram(name: "new<proc_macro::TokenTree>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE3newCs7fhJ7v7hOxk_18foundations_macros", scope: !15409, file: !15408, line: 406, type: !12, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15408 = !DIFile(filename: "library/core/src/mem/maybe_uninit.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "40dbcdd878e6b463fb6e4e245b9345ae")
!15409 = !DINamespace(name: "MaybeUninit", scope: !15410)
!15410 = !DINamespace(name: "maybe_uninit", scope: !3086)
!15411 = distinct !DILocation(line: 575, column: 17, scope: !15412, inlinedAt: !15413)
!15412 = distinct !DISubprogram(name: "write<proc_macro::TokenTree>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE5writeCs7fhJ7v7hOxk_18foundations_macros", scope: !15409, file: !15408, line: 574, type: !12, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15413 = distinct !DILocation(line: 432, column: 30, scope: !15354, inlinedAt: !15284)
!15414 = !DILocation(line: 783, column: 14, scope: !15349, inlinedAt: !15353)
!15415 = !DILocation(line: 389, column: 5, scope: !15416, inlinedAt: !15418)
!15416 = distinct !DISubprogram(name: "clone<proc_macro::bridge::client::Span, proc_macro::bridge::symbol::Symbol>", linkageName: "_RNvXsI_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros", scope: !15417, file: !15365, line: 386, type: !12, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15417 = !DINamespace(name: "{impl#46}", scope: !15367)
!15418 = distinct !DILocation(line: 1168, column: 10, scope: !15419, inlinedAt: !15421)
!15419 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs1s_Csa5ERaWwhjCQ_10proc_macroNtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15420, file: !15350, line: 1168, type: !12, scopeLine: 1168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15420 = !DINamespace(name: "{impl#92}", scope: !15352)
!15421 = distinct !DILocation(line: 790, column: 68, scope: !15422, inlinedAt: !15353)
!15422 = distinct !DILexicalBlock(scope: !15349, file: !15350, line: 783, column: 10)
!15423 = !{i8 0, i8 2}
!15424 = !{!15425, !15356, !15272}
!15425 = distinct !{!15425, !15426, !"_RNvXsI_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 1"}
!15426 = distinct !{!15426, !"_RNvXsI_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros"}
!15427 = !{!15428, !15359, !15286}
!15428 = distinct !{!15428, !15426, !"_RNvXsI_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!15429 = !DILocation(line: 390, column: 5, scope: !15416, inlinedAt: !15418)
!15430 = !DILocation(line: 377, column: 10, scope: !15431, inlinedAt: !15433)
!15431 = distinct !DISubprogram(name: "clone<proc_macro::bridge::client::Span>", linkageName: "_RNvXsD_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5PunctNtNtB5_6client4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros", scope: !15432, file: !15365, line: 377, type: !12, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15432 = !DINamespace(name: "{impl#41}", scope: !15367)
!15433 = distinct !DILocation(line: 1047, column: 10, scope: !15434, inlinedAt: !15436)
!15434 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs1k_Csa5ERaWwhjCQ_10proc_macroNtB6_5PunctNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15435, file: !15350, line: 1047, type: !12, scopeLine: 1047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15435 = !DINamespace(name: "{impl#84}", scope: !15352)
!15436 = distinct !DILocation(line: 793, column: 68, scope: !15437, inlinedAt: !15353)
!15437 = distinct !DILexicalBlock(scope: !15349, file: !15350, line: 783, column: 10)
!15438 = !DILocation(line: 783, column: 10, scope: !15437, inlinedAt: !15353)
!15439 = !DILocation(line: 248, column: 16, scope: !15440, inlinedAt: !15443)
!15440 = distinct !DILexicalBlock(scope: !15441, file: !15365, line: 248, column: 16)
!15441 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsn_NtCsa5ERaWwhjCQ_10proc_macro6bridgeNtB5_7LitKindNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15442, file: !15365, line: 248, type: !12, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15442 = !DINamespace(name: "{impl#25}", scope: !15367)
!15443 = distinct !DILocation(line: 397, column: 5, scope: !15444, inlinedAt: !15446)
!15444 = distinct !DISubprogram(name: "clone<proc_macro::bridge::client::Span, proc_macro::bridge::symbol::Symbol>", linkageName: "_RNvXsP_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros", scope: !15445, file: !15365, line: 395, type: !12, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15445 = !DINamespace(name: "{impl#53}", scope: !15367)
!15446 = distinct !DILocation(line: 1258, column: 10, scope: !15447, inlinedAt: !15449)
!15447 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs1t_Csa5ERaWwhjCQ_10proc_macroNtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15448, file: !15350, line: 1258, type: !12, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15448 = !DINamespace(name: "{impl#93}", scope: !15352)
!15449 = distinct !DILocation(line: 796, column: 70, scope: !15450, inlinedAt: !15353)
!15450 = distinct !DILexicalBlock(scope: !15349, file: !15350, line: 783, column: 10)
!15451 = !{i8 0, i8 11}
!15452 = !{!15453, !15356, !15272}
!15453 = distinct !{!15453, !15454, !"_RNvXsP_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 1"}
!15454 = distinct !{!15454, !"_RNvXsP_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros"}
!15455 = !{!15456, !15359, !15286}
!15456 = distinct !{!15456, !15454, !"_RNvXsP_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!15457 = !DILocation(line: 2274, column: 15, scope: !15458, inlinedAt: !15459)
!15458 = distinct !DISubprogram(name: "clone<proc_macro::bridge::symbol::Symbol>", linkageName: "_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa5ERaWwhjCQ_10proc_macro6bridge6symbol6SymbolENtNtB7_5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros", scope: !15362, file: !14667, line: 2273, type: !12, scopeLine: 2273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15459 = distinct !DILocation(line: 399, column: 5, scope: !15444, inlinedAt: !15446)
!15460 = !DILocation(line: 400, column: 5, scope: !15444, inlinedAt: !15446)
!15461 = !DILocation(line: 783, column: 10, scope: !15450, inlinedAt: !15353)
!15462 = !DILocation(line: 432, scope: !15354, inlinedAt: !15284)
!15463 = !DILocation(line: 0, scope: !15349, inlinedAt: !15353)
!15464 = !DILocation(line: 432, column: 21, scope: !15354, inlinedAt: !15284)
!15465 = !DILocation(line: 575, column: 9, scope: !15412, inlinedAt: !15413)
!15466 = !DILocation(line: 410, column: 13, scope: !15281, inlinedAt: !15284)
!15467 = !DILocation(line: 2224, column: 9, scope: !15468, inlinedAt: !15469)
!15468 = distinct !DISubprogram(name: "set_len<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE7set_lenCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 2217, type: !12, scopeLine: 2217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15469 = distinct !DILocation(line: 421, column: 38, scope: !15470, inlinedAt: !15473)
!15470 = distinct !DISubprogram(name: "drop<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvXNvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inpNtB5_10ConvertVec6to_vecINtB2_9DropGuardNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtNtBa_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros", scope: !15471, file: !15276, line: 417, type: !36, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15471 = !DINamespace(name: "{impl#0}", scope: !15472)
!15472 = !DINamespace(name: "to_vec", scope: !15282)
!15473 = distinct !DILocation(line: 848, column: 1, scope: !15474, inlinedAt: !15475)
!15474 = distinct !DISubprogram(name: "drop_glue<alloc::slice::{impl#0}::to_vec_in::{impl#0}::to_vec::DropGuard<proc_macro::TokenTree, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtNtBM_5alloc6GlobalEECs7fhJ7v7hOxk_18foundations_macros", scope: !10, file: !9, line: 848, type: !36, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15475 = distinct !DILocation(line: 441, column: 13, scope: !15319, inlinedAt: !15284)
!15476 = !DILocation(line: 441, column: 13, scope: !15281, inlinedAt: !15284)
!15477 = !DILocation(line: 2224, column: 9, scope: !15478, inlinedAt: !15479)
!15478 = distinct !DISubprogram(name: "set_len<proc_macro::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE7set_lenCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 2217, type: !12, scopeLine: 2217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15479 = distinct !DILocation(line: 438, column: 25, scope: !15317, inlinedAt: !15284)
!15480 = !DILocation(line: 440, column: 17, scope: !15317, inlinedAt: !15284)
!15481 = !DILocation(line: 3882, column: 6, scope: !15246)
!15482 = distinct !DISubprogram(name: "clone<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros", scope: !15247, file: !436, line: 3879, type: !12, scopeLine: 3879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15483 = !DILocation(line: 621, column: 9, scope: !15484, inlinedAt: !15485)
!15484 = distinct !DISubprogram(name: "allocator<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner9allocatorCs7fhJ7v7hOxk_18foundations_macros", scope: !427, file: !426, line: 620, type: !12, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15485 = !DILocation(line: 315, column: 20, scope: !15486, inlinedAt: !15487)
!15486 = distinct !DISubprogram(name: "allocator<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCse4VeaA6Ikg_11proc_macro29TokenTreeE9allocatorCs7fhJ7v7hOxk_18foundations_macros", scope: !433, file: !426, line: 314, type: !12, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15487 = !DILocation(line: 2125, column: 18, scope: !15488, inlinedAt: !15489)
!15488 = distinct !DISubprogram(name: "allocator<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeE9allocatorCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 2124, type: !12, scopeLine: 2124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15489 = !DILocation(line: 3880, column: 26, scope: !15482)
!15490 = !DILocation(line: 611, column: 9, scope: !15491, inlinedAt: !15492)
!15491 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, proc_macro2::TokenTree>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtCse4VeaA6Ikg_11proc_macro29TokenTreeECs7fhJ7v7hOxk_18foundations_macros", scope: !427, file: !426, line: 610, type: !12, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15492 = !DILocation(line: 606, column: 14, scope: !15493, inlinedAt: !15494)
!15493 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, proc_macro2::TokenTree>", linkageName: "_RINvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB6_11RawVecInner3ptrNtCse4VeaA6Ikg_11proc_macro29TokenTreeECs7fhJ7v7hOxk_18foundations_macros", scope: !427, file: !426, line: 605, type: !12, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15494 = !DILocation(line: 296, column: 20, scope: !15495, inlinedAt: !15496)
!15495 = distinct !DISubprogram(name: "ptr<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCse4VeaA6Ikg_11proc_macro29TokenTreeE3ptrCs7fhJ7v7hOxk_18foundations_macros", scope: !433, file: !426, line: 295, type: !12, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15496 = !DILocation(line: 1969, column: 18, scope: !15497, inlinedAt: !15498)
!15497 = distinct !DISubprogram(name: "as_ptr<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeE6as_ptrCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 1966, type: !12, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15498 = !DILocation(line: 1865, column: 76, scope: !15499, inlinedAt: !15500)
!15499 = distinct !DISubprogram(name: "as_slice<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeE8as_sliceCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 1848, type: !12, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15500 = !DILocation(line: 3855, column: 14, scope: !15501, inlinedAt: !15502)
!15501 = distinct !DISubprogram(name: "deref<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs7fhJ7v7hOxk_18foundations_macros", scope: !15267, file: !436, line: 3854, type: !12, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15502 = !DILocation(line: 3881, column: 26, scope: !15503)
!15503 = distinct !DILexicalBlock(scope: !15482, file: !436, line: 3880, column: 9)
!15504 = !DILocation(line: 1865, column: 86, scope: !15499, inlinedAt: !15500)
!15505 = !{!15506}
!15506 = distinct !{!15506, !15507, !"_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCse4VeaA6Ikg_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros: argument 1"}
!15507 = distinct !{!15507, !"_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCse4VeaA6Ikg_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros"}
!15508 = !DILocation(line: 400, column: 16, scope: !15509, inlinedAt: !15510)
!15509 = distinct !DISubprogram(name: "to_vec_in<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RINvMNtCs1xwejQucwHj_5alloc5sliceSNtCse4VeaA6Ikg_11proc_macro29TokenTree9to_vec_inNtNtB5_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros", scope: !15277, file: !15276, line: 396, type: !12, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15510 = !DILocation(line: 3881, column: 9, scope: !15503)
!15511 = !DILocation(line: 425, column: 21, scope: !15512, inlinedAt: !15513)
!15512 = distinct !DISubprogram(name: "to_vec<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCse4VeaA6Ikg_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros", scope: !15282, file: !15276, line: 410, type: !12, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15513 = distinct !DILocation(line: 400, column: 16, scope: !15509, inlinedAt: !15510)
!15514 = !{!15515, !15506}
!15515 = distinct !{!15515, !15507, !"_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCse4VeaA6Ikg_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!15516 = !DILocation(line: 435, column: 15, scope: !14319, inlinedAt: !15517)
!15517 = distinct !DILocation(line: 177, column: 20, scope: !15518, inlinedAt: !15519)
!15518 = distinct !DISubprogram(name: "with_capacity_in<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCse4VeaA6Ikg_11proc_macro29TokenTreeE16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros", scope: !433, file: !426, line: 175, type: !12, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15519 = distinct !DILocation(line: 969, column: 20, scope: !15520, inlinedAt: !15521)
!15520 = distinct !DISubprogram(name: "with_capacity_in<proc_macro2::TokenTree, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeE16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros", scope: !437, file: !436, line: 968, type: !12, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15521 = distinct !DILocation(line: 425, column: 31, scope: !15512, inlinedAt: !15513)
!15522 = !DILocation(line: 435, column: 9, scope: !14319, inlinedAt: !15517)
!15523 = !DILocation(line: 0, scope: !14319, inlinedAt: !15517)
!15524 = !DILocation(line: 443, column: 17, scope: !14319, inlinedAt: !15517)
!15525 = !DILocation(line: 443, column: 25, scope: !14333, inlinedAt: !15517)
!15526 = !DILocation(line: 436, column: 16, scope: !14319, inlinedAt: !15517)
!15527 = !DILocation(line: 764, column: 9, scope: !14336, inlinedAt: !15528)
!15528 = distinct !DILocation(line: 439, column: 50, scope: !14338, inlinedAt: !15517)
!15529 = !DILocation(line: 210, column: 9, scope: !14340, inlinedAt: !15530)
!15530 = distinct !DILocation(line: 439, column: 21, scope: !14338, inlinedAt: !15517)
!15531 = !DILocation(line: 444, column: 9, scope: !14319, inlinedAt: !15517)
!15532 = !DILocation(line: 969, column: 9, scope: !15520, inlinedAt: !15521)
!15533 = !DILocation(line: 970, column: 18, scope: !15534, inlinedAt: !15535)
!15534 = distinct !DISubprogram(name: "add<proc_macro2::TokenTree>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtCse4VeaA6Ikg_11proc_macro29TokenTree3addCs7fhJ7v7hOxk_18foundations_macros", scope: !456, file: !455, line: 936, type: !12, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15535 = distinct !DILocation(line: 100, column: 78, scope: !15536, inlinedAt: !15539)
!15536 = distinct !DILexicalBlock(scope: !15537, file: !15308, line: 96, column: 9)
!15537 = distinct !DILexicalBlock(scope: !15538, file: !15308, line: 95, column: 9)
!15538 = distinct !DISubprogram(name: "new<proc_macro2::TokenTree>", linkageName: "_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtCse4VeaA6Ikg_11proc_macro29TokenTreeE3newCs7fhJ7v7hOxk_18foundations_macros", scope: !15311, file: !15308, line: 94, type: !12, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15539 = distinct !DILocation(line: 1040, column: 9, scope: !15540, inlinedAt: !15541)
!15540 = distinct !DISubprogram(name: "iter<proc_macro2::TokenTree>", linkageName: "_RNvMNtCs3oUPovFnLWP_4core5sliceSNtCse4VeaA6Ikg_11proc_macro29TokenTree4iterCs7fhJ7v7hOxk_18foundations_macros", scope: !15315, file: !15314, line: 1039, type: !12, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15541 = distinct !DILocation(line: 430, column: 33, scope: !15542, inlinedAt: !15513)
!15542 = distinct !DILexicalBlock(scope: !15543, file: !15276, line: 427, column: 17)
!15543 = distinct !DILexicalBlock(scope: !15544, file: !15276, line: 426, column: 17)
!15544 = distinct !DILexicalBlock(scope: !15512, file: !15276, line: 425, column: 17)
!15545 = !DILocation(line: 37, column: 12, scope: !15546, inlinedAt: !15547)
!15546 = distinct !DISubprogram(name: "next<core::iter::adapters::enumerate::Enumerate<core::slice::iter::Iter<proc_macro2::TokenTree>>>", linkageName: "_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterNtCse4VeaA6Ikg_11proc_macro29TokenTreeEEENtNtNtB8_6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros", scope: !15323, file: !15322, line: 36, type: !12, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15547 = distinct !DILocation(line: 430, column: 31, scope: !15548, inlinedAt: !15513)
!15548 = !DILexicalBlockFile(scope: !15549, file: !15276, discriminator: 2)
!15549 = distinct !DILexicalBlock(scope: !15542, file: !15276, line: 430, column: 17)
!15550 = !DILocation(line: 38, column: 13, scope: !15546, inlinedAt: !15547)
!15551 = !DILocation(line: 1663, column: 9, scope: !15552, inlinedAt: !15553)
!15552 = distinct !DISubprogram(name: "eq<proc_macro2::TokenTree>", linkageName: "_RNvXsd_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCse4VeaA6Ikg_11proc_macro29TokenTreeENtNtB9_3cmp9PartialEq2eqCs7fhJ7v7hOxk_18foundations_macros", scope: !15030, file: !3179, line: 1662, type: !12, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15553 = distinct !DILocation(line: 180, column: 28, scope: !15554, inlinedAt: !15557)
!15554 = distinct !DILexicalBlock(scope: !15555, file: !14483, line: 162, column: 17)
!15555 = distinct !DILexicalBlock(scope: !15556, file: !14483, line: 161, column: 17)
!15556 = distinct !DISubprogram(name: "next<proc_macro2::TokenTree>", linkageName: "_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtCse4VeaA6Ikg_11proc_macro29TokenTreeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros", scope: !14486, file: !14483, line: 157, type: !12, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15557 = distinct !DILocation(line: 80, column: 27, scope: !15558, inlinedAt: !15559)
!15558 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<proc_macro2::TokenTree>>", linkageName: "_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCse4VeaA6Ikg_11proc_macro29TokenTreeEENtNtNtB8_6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros", scope: !15338, file: !15337, line: 79, type: !12, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15559 = distinct !DILocation(line: 39, column: 23, scope: !15546, inlinedAt: !15547)
!15560 = !DILocation(line: 180, column: 28, scope: !15554, inlinedAt: !15557)
!15561 = !DILocation(line: 627, column: 28, scope: !15562, inlinedAt: !15563)
!15562 = distinct !DISubprogram(name: "add<proc_macro2::TokenTree>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCse4VeaA6Ikg_11proc_macro29TokenTreeE3addCs7fhJ7v7hOxk_18foundations_macros", scope: !3180, file: !3179, line: 619, type: !12, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15563 = distinct !DILocation(line: 185, column: 40, scope: !15554, inlinedAt: !15557)
!15564 = !DILocation(line: 82, column: 9, scope: !15565, inlinedAt: !15559)
!15565 = distinct !DILexicalBlock(scope: !15566, file: !15337, line: 81, column: 9)
!15566 = distinct !DILexicalBlock(scope: !15558, file: !15337, line: 80, column: 9)
!15567 = !DILocation(line: 432, column: 36, scope: !15568, inlinedAt: !15513)
!15568 = distinct !DILexicalBlock(scope: !15549, file: !15276, line: 430, column: 17)
!15569 = !{!15570}
!15570 = distinct !{!15570, !15571, !"_RNvXsO_Cse4VeaA6Ikg_11proc_macro2NtB5_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!15571 = distinct !{!15571, !"_RNvXsO_Cse4VeaA6Ikg_11proc_macro2NtB5_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!15572 = !DILocation(line: 432, column: 38, scope: !15568, inlinedAt: !15513)
!15573 = !DILocation(line: 577, column: 10, scope: !15574, inlinedAt: !15578)
!15574 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsO_Cse4VeaA6Ikg_11proc_macro2NtB5_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15576, file: !15575, line: 577, type: !12, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15575 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/proc-macro2-1.0.107", checksumkind: CSK_MD5, checksum: "7536706c66285a087443f2c5843cbd06")
!15576 = !DINamespace(name: "{impl#52}", scope: !15577)
!15577 = !DINamespace(name: "proc_macro2", scope: null)
!15578 = distinct !DILocation(line: 432, column: 38, scope: !15568, inlinedAt: !15513)
!15579 = !{!15570, !15506}
!15580 = !{!15581, !15515}
!15581 = distinct !{!15581, !15571, !"_RNvXsO_Cse4VeaA6Ikg_11proc_macro2NtB5_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!15582 = !DILocation(line: 580, column: 11, scope: !15574, inlinedAt: !15578)
!15583 = !DILocation(line: 561, column: 10, scope: !15584, inlinedAt: !15588)
!15584 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsF_NtCse4VeaA6Ikg_11proc_macro23impNtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15586, file: !15585, line: 561, type: !12, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15585 = !DIFile(filename: "src/wrapper.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/proc-macro2-1.0.107", checksumkind: CSK_MD5, checksum: "dbdb1ee6cd90cb804877c273a0e45c6d")
!15586 = !DINamespace(name: "{impl#43}", scope: !15587)
!15587 = !DINamespace(name: "imp", scope: !15577)
!15588 = distinct !DILocation(line: 680, column: 5, scope: !15589, inlinedAt: !15591)
!15589 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15590, file: !15575, line: 678, type: !12, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15590 = !DINamespace(name: "{impl#53}", scope: !15577)
!15591 = distinct !DILocation(line: 580, column: 11, scope: !15592, inlinedAt: !15578)
!15592 = distinct !DILexicalBlock(scope: !15574, file: !15575, line: 577, column: 10)
!15593 = !{!15594, !15596, !15570, !15506}
!15594 = distinct !{!15594, !15595, !"_RNvXsF_NtCse4VeaA6Ikg_11proc_macro23impNtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!15595 = distinct !{!15595, !"_RNvXsF_NtCse4VeaA6Ikg_11proc_macro23impNtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!15596 = distinct !{!15596, !15597, !"_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!15597 = distinct !{!15597, !"_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!15598 = !{!15599, !15600, !15581, !15515}
!15599 = distinct !{!15599, !15595, !"_RNvXsF_NtCse4VeaA6Ikg_11proc_macro23impNtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!15600 = distinct !{!15600, !15597, !"_RNvXsP_Cse4VeaA6Ikg_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!15601 = !DILocation(line: 564, column: 14, scope: !15584, inlinedAt: !15588)
!15602 = !DILocation(line: 720, column: 5, scope: !15603, inlinedAt: !15607)
!15603 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsA_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15605, file: !15604, line: 718, type: !12, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15604 = !DIFile(filename: "src/fallback.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/proc-macro2-1.0.107", checksumkind: CSK_MD5, checksum: "bf229a2750cb2f4fc3737ce47c17c568")
!15605 = !DINamespace(name: "{impl#38}", scope: !15606)
!15606 = !DINamespace(name: "fallback", scope: !15577)
!15607 = distinct !DILocation(line: 564, column: 14, scope: !15608, inlinedAt: !15588)
!15608 = distinct !DILexicalBlock(scope: !15584, file: !15585, line: 561, column: 10)
!15609 = !{i8 0, i8 4}
!15610 = !{!15611, !15594, !15596, !15570, !15506}
!15611 = distinct !{!15611, !15612, !"_RNvXsA_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!15612 = distinct !{!15612, !"_RNvXsA_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!15613 = !DILocation(line: 56, column: 5, scope: !15614, inlinedAt: !15616)
!15614 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXss_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15615, file: !15604, line: 54, type: !12, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15615 = !DINamespace(name: "{impl#30}", scope: !15606)
!15616 = distinct !DILocation(line: 721, column: 5, scope: !15603, inlinedAt: !15607)
!15617 = !{!15515}
!15618 = !DILocation(line: 563, column: 14, scope: !15584, inlinedAt: !15588)
!15619 = !DILocation(line: 912, column: 16, scope: !15620, inlinedAt: !15622)
!15620 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs1f_Csa5ERaWwhjCQ_10proc_macroNtB6_9DelimiterNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15621, file: !15350, line: 912, type: !12, scopeLine: 912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15621 = !DINamespace(name: "{impl#79}", scope: !15352)
!15622 = distinct !DILocation(line: 370, column: 5, scope: !15364, inlinedAt: !15623)
!15623 = distinct !DILocation(line: 904, column: 18, scope: !15624, inlinedAt: !15625)
!15624 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !15370, file: !15350, line: 902, type: !12, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !13)
!15625 = distinct !DILocation(line: 563, column: 14, scope: !15626, inlinedAt: !15588)
!15626 = distinct !DILexicalBlock(scope: !15584, file: !15585, line: 561, column: 10)
!15627 = !{!15628, !15630, !15594, !15596, !15570, !15506}
!15628 = distinct !{!15628, !15629, !"_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 1"}
!15629 = distinct !{!15629, !"_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros"}
!15630 = distinct !{!15630, !15631, !"_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!15631 = distinct !{!15631, !"_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!15632 = !{!15633, !15634, !15599, !15600, !15581, !15515}
!15633 = distinct !{!15633, !15629, !"_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7fhJ7v7hOxk_18foundations_macros: argument 0"}
!15634 = distinct !{!15634, !15631, !"_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!15635 = !DILocation(line: 2274, column: 15, scope: !15361, inlinedAt: !15636)
!15636 = distinct !DILocation(line: 371, column: 5, scope: !15364, inlinedAt: !15623)
!15637 = !DILocation(line: 2274, column: 9, scope: !15361, inlinedAt: !15636)
!15638 = !DILocation(line: 2275, column: 31, scope: !15380, inlinedAt: !15636)
end_hunk_1
