inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtB1N_5slice4iter4IterBV_ENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0EE9from_iterB3d_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22254
  store ptr %i.h, ptr %i.e, align 8, !noalias !22255
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !22257, !noalias !22258, !nonnull !8, !noundef !8
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !22257, !noalias !22258
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.m, %bb.c ], [ %.promoted.i.i.i, %bb.a ] ; 5 uses
  %i.l = icmp eq ptr %i.k, %i.j
  br i1 %i.l, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread.i, label %bb.c

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22254
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !22257, !noalias !22258
  store ptr %i.k, ptr %i.d, align 8, !noalias !22255
  %i.n = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0INtB7_5FnMutTRRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !22259
  br i1 %i.n, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i, label %bb.b

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22254
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22247
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !22242
  %i.o = load i64, ptr %i.c, align 8, !range !79, !noalias !22247, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !107, !noalias !22247, !noundef !8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8, !noalias !22247
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #27, !noalias !22242
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !noalias !22247, !nonnull !8, !noundef !8 ; 2 uses
  %i.v = icmp ugt i64 %i.r, 3
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22247
  store ptr %i.k, ptr %i.u, align 8, !noalias !22242
  store i64 %i.r, ptr %i.g, align 8, !noalias !22247
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !22247
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !22247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !22242
  call void @llvm.experimental.noalias.scope.decl(metadata !22260)
  call void @llvm.experimental.noalias.scope.decl(metadata !22263)
  call void @llvm.experimental.noalias.scope.decl(metadata !22265)
  call void @llvm.experimental.noalias.scope.decl(metadata !22268)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc9.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22270)
  call void @llvm.experimental.noalias.scope.decl(metadata !22273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22276
  store ptr %i.w, ptr %i.b, align 8, !noalias !22277
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !22279, !noalias !22280, !nonnull !8, !noundef !8
  %.promoted.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !22279, !noalias !22280
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i, %bb.f
  %i.z = phi ptr [ %i.ab, %.noexc.i ], [ %.promoted.i.i.i.i.i, %bb.f ] ; 5 uses
  %i.aa = icmp eq ptr %i.z, %i.y
  br i1 %i.aa, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread.i.i.i, label %bb.h

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22276
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtB1I_5slice4iter4IterBS_ENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0EE11spec_extendB38_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !alias.scope !22279, !noalias !22280
  store ptr %i.z, ptr %i.a, align 8, !noalias !22277
  %i.ac = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0INtB7_5FnMutTRRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !22242

.noexc.i:                                         ; preds = %bb.h
  br i1 %i.ac, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i.i.i, label %bb.g

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i.i.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22276
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtB1I_5slice4iter4IterBS_ENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0EE11spec_extendB38_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i.i.i
  %i.ad = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !22281, !noalias !22282, !noundef !8 ; 5 uses
  %i.ae = icmp ult i64 %i.ad, 1152921504606846976
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %i.g, align 8, !range !83, !alias.scope !22281, !noalias !22282, !noundef !8
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %.noexc9.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ad, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !22242

.noexc9.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !22281, !noalias !22282, !nonnull !8, !noundef !8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  store ptr %i.z, ptr %i.ai, align 8, !noalias !22242
  %i.aj = add nuw nsw i64 %i.ad, 1
  store i64 %i.aj, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !22281, !noalias !22282
  br label %bb.f

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread.i
  store i64 0, ptr %0, align 8, !alias.scope !22242, !noalias !22245
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8, !alias.scope !22242, !noalias !22245
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8, !alias.scope !22242, !noalias !22245
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtB21_5slice4iter4IterB12_ENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0EE9from_iterB3s_.exit

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.l, !noalias !22242

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtB1I_5slice4iter4IterBS_ENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0EE11spec_extendB38_.exit.i: ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i.i.i, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !22245
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtB21_5slice4iter4IterB12_ENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0EE9from_iterB3s_.exit

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !22242
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtB21_5slice4iter4IterB12_ENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0EE9from_iterB3s_.exit: ; preds = %bb.j, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtB1I_5slice4iter4IterBS_ENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0EE11spec_extendB38_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22247
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBV_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22283)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22283
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !22283
  %i.f = load i64, ptr %i.a, align 8, !range !79, !noalias !22283, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noalias !22283, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !22283
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !22283
  unreachable

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !22283, !nonnull !8, !noundef !8 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22283
  %i.n = icmp eq ptr %1, %2
  br i1 %i.n, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %3 = add i64 %i.b, -40
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.o = udiv i64 %4, 40
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.p, 1152921504606846972      ; 5 uses
  %i.q = mul i64 %n.vec, 40
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 40> ; 2 uses
  %step.add3 = getelementptr i8, <2 x ptr> %vector.gep, i64 80
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x ptr> %vector.gep, ptr %i.s, align 8, !noalias !22286
  store <2 x ptr> %step.add3, ptr %i.t, align 8, !noalias !22286
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 160
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !22292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i.i.preheader4

.lr.ph.i.i.i.i.preheader4:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.06.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader4, %.lr.ph.i.i.i.i
  %i.v = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader4 ] ; 2 uses
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader4 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.v
  store ptr %.sroa.0.06.i.i.i.i, ptr %i.w, align 8, !noalias !22286
  %i.x = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 40 ; 2 uses
  %i.z = icmp eq ptr %i.y, %2
  br i1 %i.z, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i.i, !llvm.loop !22293

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.val3.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %n.vec, %middle.block ], [ %i.x, %.lr.ph.i.i.i.i ]
  store i64 %i.i, ptr %0, align 8, !alias.scope !22283
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !22283
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !22283
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_12SpecFromIterBU_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringBV_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22299
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1), !noalias !22294 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  %.not11.i = icmp eq ptr %i.f, null
  %.not.i = select i1 %.not.i.i, i1 true, i1 %.not11.i
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.g, align 8, !alias.scope !22297, !noalias !22294, !noundef !8
  %i.h = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22299
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !22294
  %i.i = load i64, ptr %i.a, align 8, !range !79, !noalias !22299, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !107, !noalias !22299, !noundef !8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !84

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8, !noalias !22299
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #27, !noalias !22294
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  %i.o = load ptr, ptr %i.m, align 8, !noalias !22299, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22299
  store ptr %i.f, ptr %i.o, align 8, !noalias !22294
  store i64 %i.l, ptr %i.c, align 8, !noalias !22299
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !22299
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !22299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !22294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22308)
  %i.q = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !22294 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.r = extractvalue { ptr, ptr } %i.q, 0
  %.not.i7.i.i.i = icmp eq ptr %i.r, null
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  %.not68.i.i.i = icmp eq ptr %i.s, null
  %.not9.i.i.i = select i1 %.not.i7.i.i.i, i1 true, i1 %.not68.i.i.i
  br i1 %.not9.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_10SpecExtendBR_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringBS_EE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc9.i, %.lr.ph.i.i.i
  %i.u = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.af, %.noexc9.i ]
  %i.v = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !22310, !noalias !22311, !noundef !8 ; 5 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  call void @llvm.assume(i1 %i.w)
  %i.x = load i64, ptr %i.c, align 8, !range !83, !alias.scope !22310, !noalias !22311, !noundef !8
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %.noexc8.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !22312, !noalias !22313, !noundef !8
  %i.z = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.v, i64 noundef %i.z, i64 noundef 8, i64 noundef 8)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !22294

.noexc8.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.d
  %i.aa = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !22310, !noalias !22311, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.v
  store ptr %i.u, ptr %i.ab, align 8, !noalias !22294
  %i.ac = add nuw nsw i64 %i.v, 1
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !22310, !noalias !22311
  %i.ad = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !22294 ; 2 uses

.noexc9.i:                                        ; preds = %.noexc8.i
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  %i.af = extractvalue { ptr, ptr } %i.ad, 1      ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.af, null
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not6.i.i.i
  br i1 %.not.i.i.i, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_10SpecExtendBR_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringBS_EE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !22294, !noalias !22297
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !alias.scope !22294, !noalias !22297
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ah, align 8, !alias.scope !22294, !noalias !22297
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringB12_EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit

.loopexit.i:                                      ; preds = %.noexc8.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !22294

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_10SpecExtendBR_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringBS_EE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc9.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !22297
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringB12_EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !22294
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringB12_EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_10SpecExtendBR_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringBS_EE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22299
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2i_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB6_6string6StringBV_EENvMs0_B3r_B3o_9value_refEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterB13_EEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !39213
  store ptr %i.u, ptr %i.a, align 8, !noalias !39213
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !39213
  invoke void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copiedINtB5_6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callB1R_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3S_3VecB1R_E14extend_trustedBP_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
  unreachable

bb.h:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBG_EEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.f, %bb.e, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.i:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBG_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  resume { ptr, i32 } %i.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterINtNtB8_4sync3ArcB14_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB43_14LogDataHandler10pick_statss_0EE9from_iterB49_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.h = load i64, ptr %i.b, align 8, !range !79, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !107, !noundef !8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3r_14LogDataHandler10pick_statss_0EEB3x_.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3r_14LogDataHandler10pick_statss_0EEB3x_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39218
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !39218
  store ptr %i.q, ptr %i.a, align 8, !noalias !39218
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !39218
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB2P_14LogDataHandler10pick_statss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4C_8for_each4callRB1V_NCINvMsj_NtB1s_3vecINtB5T_3VecB5F_E14extend_trustedBN_E0E0EB2V_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3r_14LogDataHandler10pick_statss_0EEB3x_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3r_14LogDataHandler10pick_statss_0EEB3x_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterINtNtB8_4sync3ArcB14_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB45_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EE9from_iterB4b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.h = load i64, ptr %i.b, align 8, !range !79, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !107, !noundef !8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3t_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EEB3z_.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3t_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EEB3z_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39223
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !39223
  store ptr %i.q, ptr %i.a, align 8, !noalias !39223
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !39223
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB2R_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5G_8for_each4callRB1V_NCINvMsj_NtB1s_3vecINtB6X_3VecB6J_E14extend_trustedBN_E0E0EB2X_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3t_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EEB3z_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3t_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EEB3z_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 112                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.f = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = icmp eq ptr %1, %2
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %3 = add i64 %i.b, -112
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.o = udiv i64 %4, 112
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 336
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.p, 576460752303423484       ; 5 uses
  %i.q = mul i64 %n.vec, 112
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 112> ; 2 uses
  %step.add8 = getelementptr i8, <2 x ptr> %vector.gep, i64 224
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x ptr> %vector.gep, ptr %i.s, align 8, !noalias !39228
  store <2 x ptr> %step.add8, ptr %i.t, align 8, !noalias !39228
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 448
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !39234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.preheader9

.lr.ph.i.i.i.preheader9:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.06.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader9, %.lr.ph.i.i.i
  %i.v = phi i64 [ %i.x, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader9 ] ; 2 uses
  %.sroa.0.06.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.0.06.i.i.i.ph, %.lr.ph.i.i.i.preheader9 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.v
  store ptr %.sroa.0.06.i.i.i, ptr %i.w, align 8, !noalias !39228
  %i.x = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 112 ; 2 uses
  %i.z = icmp eq ptr %i.y, %2
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !39235

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val3.i.i.i = phi i64 [ 0, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %n.vec, %middle.block ], [ %i.x, %.lr.ph.i.i.i ]
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 7                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.f = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = icmp eq ptr %1, %2
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %3 = add i64 %i.b, -128
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.o = lshr i64 %4, 7
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 384
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.p, 288230376151711740       ; 5 uses
  %i.q = shl i64 %n.vec, 7
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 128> ; 2 uses
  %step.add8 = getelementptr i8, <2 x ptr> %vector.gep, i64 256
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x ptr> %vector.gep, ptr %i.s, align 8, !noalias !39236
  store <2 x ptr> %step.add8, ptr %i.t, align 8, !noalias !39236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !39242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.preheader9

.lr.ph.i.i.i.preheader9:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.06.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader9, %.lr.ph.i.i.i
  %i.v = phi i64 [ %i.x, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader9 ] ; 2 uses
  %.sroa.0.06.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.0.06.i.i.i.ph, %.lr.ph.i.i.i.preheader9 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.v
  store ptr %.sroa.0.06.i.i.i, ptr %i.w, align 8, !noalias !39236
  %i.x = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 128 ; 2 uses
  %i.z = icmp eq ptr %i.y, %2
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !39243

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val3.i.i.i = phi i64 [ 0, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %n.vec, %middle.block ], [ %i.x, %.lr.ph.i.i.i ]
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecbEINtB4_18SpecFromIterNestedbINtNtB6_5drain5DrainbEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !79, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.e, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.l = load i64, ptr %i.c, align 8, !range !79, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !107, !noundef !8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f, !prof !84

bb.d:                                             ; preds = %.noexc
  %i.q = load i64, ptr %i.p, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #27
          to label %.noexc3 unwind label %bb.r

.noexc3:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
          to label %bb.q unwind label %bb.r

bb.f:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.o, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !39244)
  call void @llvm.experimental.noalias.scope.decl(metadata !39247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39250
  invoke void @_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.g unwind label %bb.l, !noalias !39253

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !79, !noalias !39250, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !39250 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39250
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %bb.h, label %bb.j, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ugt i64 %i.y, %i.o
  br i1 %i.aa, label %bb.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.y, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i unwind label %bb.l

._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i: ; preds = %bb.i
  %.pre.i.i = load i64, ptr %i.u, align 8, !alias.scope !39253, !noalias !39254
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !39253, !noalias !39254
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %bb.k unwind label %bb.l, !noalias !39253

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i, %bb.h
  %i.ab = phi ptr [ %.pre, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i ], [ %i.r, %bb.h ] ; 8 uses
  %i.ac = phi i64 [ %.pre.i.i, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i ], [ 0, %bb.h ] ; 8 uses
  %i.ad = ptrtoaddr ptr %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !39253
  call void @llvm.experimental.noalias.scope.decl(metadata !39255)
  call void @llvm.experimental.noalias.scope.decl(metadata !39258)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load ptr, ptr %i.a, align 8, !alias.scope !39261, !noalias !39264, !nonnull !8, !noundef !8 ; 9 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = load ptr, ptr %i.ae, align 8, !alias.scope !39261, !noalias !39264, !nonnull !8, !noundef !8 ; 3 uses
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.am = add i64 %i.ac, %i.ad
  %i.an = sub i64 %i.am, %i.ag
  %diff.check = icmp ult i64 %i.an, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 24
  %n.vec = and i64 %i.al, -32                     ; 5 uses
  %i.ao = add i64 %i.ac, %n.vec                   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.af, i64 %n.vec ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ab, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39267)
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !39269
  %wide.load19 = load <16 x i8>, ptr %i.ar, align 1, !noalias !39269
  %i.as = getelementptr i8, ptr %i.aq, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load, ptr %i.as, align 1, !noalias !39270
  store <16 x i8> %wide.load19, ptr %i.at, align 1, !noalias !39270
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !39275
end_hunk_1
