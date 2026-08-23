Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.12?download=true
inline.NumInlined: 9136
inline.NumDeleted: 3144
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB4_20TypeInferenceBuilder29validate_subscript_assignment:bb.a
  %i.em = load i64, ptr %i.el, align 8, !noalias !10694, !noundef !6
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %i.el, align 8, !noalias !10694
  %.not.i.i.i.i.i32.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i31.i, 0
  br i1 %.not.i.i.i.i.i32.i, label %bb.ad, label %bb.ag

bb.ag:                                            ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindinguINtNtNtBf_3ops12control_flow11ControlFlowNtNtB2c_8generics14SpecializationENCINvNtBb_6filter15filter_try_foldTjB25_EuB3a_NCNvMs7_B28_NtB28_15CallableBinding18matching_overloads0QNCINvNvB1e_8find_map5checkB4V_B3P_QNCNvMNtNtNtB2c_5infer7builder9subscriptNtB6I_20TypeInferenceBuilder29validate_subscript_assignments0_0E0E0E0B2e_.exit.i.i.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10689
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %.noexc38
  %.sroa.5.0.i.ph = phi i32 [ %i.dz, %.noexc38 ], [ %.sroa.3.0.i.i.i.i.i.i30.i, %bb.ag ], [ %.sroa.3.0.i.i.i.i.i.i.i, %bb.ab ]
  %.sroa.0.0.i.ph = phi i32 [ %i.dy, %.noexc38 ], [ %.sroa.0.0.i.i.i.i.i.i31.i, %bb.ag ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false)
  %.val.i41 = load ptr, ptr %i.al, align 8, !noalias !10710, !nonnull !6, !noundef !6 ; 2 uses
  %.val3.i42 = load ptr, ptr %i.am, align 8, !noalias !10710, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %.val4.i = load ptr, ptr %i.ak, align 8, !noalias !10710, !nonnull !6, !align !8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10710
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type20apply_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %.val.i41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val3.i42, i32 noundef range(i32 1, 0) %.sroa.0.0.i.ph, i32 noundef %.sroa.5.0.i.ph)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc44:                                         ; preds = %bb.ah
  br i1 %.not.i43, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.noexc44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10710
  store i32 %i.bo, ptr %i.d, align 4, !noalias !10710
  store i32 %i.bp, ptr %i.dd, align 4, !noalias !10710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !10710
  %i.eo = invoke noundef zeroext i1 @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor13any_over_typeNCNvMs_NtNtB4_5infer7builderNtB1d_20TypeInferenceBuilder45collection_use_constraint_from_specialization0EB6_(ptr noundef nonnull %.val.i41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val3.i42, ptr noundef nonnull align 4 %.val4.i, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull align 8 %0)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc45:                                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10710
  br i1 %i.eo, label %.thread25, label %bb.ak

bb.aj:                                            ; preds = %.noexc44
  %.sroa.05.0.copyload7 = load i32, ptr %i.e, align 4, !noalias !10714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx8, i64 12, i1 false), !noalias !10714
  br label %bb.al

bb.ak:                                            ; preds = %.noexc45
  %.sroa.05.0.copyload6 = load i32, ptr %i.e, align 4, !noalias !10714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx8, i64 12, i1 false), !noalias !10714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10710
  br label %bb.al

.thread25:                                        ; preds = %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.an

.loopexit40:                                      ; preds = %_RINvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementEIB10_IB1E_NtB25_12CallableItemENvMs0_B25_B3q_8callableENvMs1_B25_B23_9callablesENvMs7_B25_NtB25_15CallableBinding18matching_overloadsEEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_B1i_INtB1i_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_6filter6FilterINtNtB8_9enumerate9EnumerateIB1E_NtB25_7BindingEENCB4y_0EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtB29_8generics14SpecializationENCINvNvXsi_B1i_B69_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6V_uB8d_NCINvNvB9J_8find_map5checkTjRB7O_EB8S_QNCNvMNtNtNtB29_5infer7builder9subscriptNtBbr_20TypeInferenceBuilder29validate_subscript_assignments0_0E0E0E0B8d_EB2b_.exit.thread.i, %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_6filter6FilterINtNtBc_9enumerate9EnumerateINtNtNtBg_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind7BindingEENCNvMs7_B3o_NtB3o_15CallableBinding18matching_overloads0EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtB3s_8generics14SpecializationENCINvNvB1j_8find_map5checkTjRB3m_EB62_QNCNvMNtNtNtB3s_5infer7builder9subscriptNtB7k_20TypeInferenceBuilder29validate_subscript_assignments0_0E0E0B3u_.exit35.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.s

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.05.0 = phi i32 [ %.sroa.05.0.copyload7, %bb.aj ], [ %.sroa.05.0.copyload6, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not28 = icmp eq i32 %.sroa.05.0, -1
  br i1 %.not28, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i32 %.sroa.05.0, ptr %i.p, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB4b_13FxBuildHasherE11rustc_entryB2E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.de, i32 noundef %i.bi, i32 noundef %i.bj)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.an:                                            ; preds = %.thread25, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.backedge

.backedge:                                        ; preds = %bb.an, %bb.as
  %.pre = load ptr, ptr %.sroa.03.sroa.2.0..sroa_idx, align 8, !alias.scope !10638, !noalias !10673
  br label %bb.v

bb.ao:                                            ; preds = %bb.am
  %i.ep = load i32, ptr %i.o, align 8, !noundef !6 ; 2 uses
  %.not29 = icmp eq i32 %i.ep, 0
  br i1 %.not29, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.417.0.copyload = load i32, ptr %.sroa.417.0..sroa_idx, align 4
  %.sroa.518.0.copyload = load ptr, ptr %.sroa.518.0..sroa_idx, align 8 ; 2 uses
  %.sroa.619.0.copyload = load i64, ptr %.sroa.619.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10715
  invoke void @_RNvXsa_NtCs5e9M2GLoJMY_8indexmap3setINtB5_8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtB1E_7default7Default7defaultBR_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.df)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc48:                                         ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload) ]
  store i32 %i.ep, ptr %i.b, align 8, !noalias !10715
  store i32 %.sroa.417.0.copyload, ptr %i.dg, align 4, !noalias !10715
  %i.eq = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEE14insert_no_growB2u_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.518.0.copyload, i64 noundef %.sroa.619.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10715
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.er = load ptr, ptr %.sroa.518.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.noexc49
  %.pn.i = phi ptr [ %i.eq, %.noexc49 ], [ %i.er, %bb.aq ]
  %.sroa.0.0.i47 = getelementptr inbounds i8, ptr %.pn.i, i64 -56
  %i.es = invoke { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullBR_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i47, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.p)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.backedge

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i5.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.at

bb.at:                                            ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.aw unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.ab, align 8, !alias.scope !10718 ; 2 uses
  %i.eu = icmp eq i64 %.val2.i.i, 0
  br i1 %i.eu, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val3.i.i = load ptr, ptr %i.ev, align 8, !alias.scope !10725, !nonnull !6, !noundef !6
  %i.ew = mul nuw i64 %.val2.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.ew, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !10726
  br label %common.resume

bb.aw:                                            ; preds = %bb.at
  %.val.i.i = load i64, ptr %i.ab, align 8, !alias.scope !10718 ; 2 uses
  %i.ex = icmp eq i64 %.val.i.i, 0
  br i1 %i.ex, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i = load ptr, ptr %i.ey, align 8, !alias.scope !10725, !nonnull !6, !noundef !6
  %i.ez = mul nuw i64 %.val.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !10729
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_.exit

common.resume:                                    ; preds = %.body, %bb.au, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %i.et, %bb.au ], [ %i.et, %bb.av ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_.exit: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %.sink.split

bb.ay:                                            ; preds = %bb.n, %.loopexit.split-lp, %.body
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB4_20TypeInferenceBuilder32infer_subscript_expression_types(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 4 captures(address) dead_on_return dereferenceable(16) %3, ptr noalias noundef nonnull align 4 captures(address) dead_on_return dereferenceable(16) %4, i8 noundef range(i8 0, 4) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 4                ; 7 uses
  %i.e = alloca [16 x i8], align 4                ; 9 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 10 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 11 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 4                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 11 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 4                ; 5 uses
  %i.q = alloca [40 x i8], align 8                ; 11 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = getelementptr i8, ptr %1, i64 208
  %.val24 = load ptr, ptr %i.t, align 8, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.u = getelementptr i8, ptr %1, i64 192        ; 4 uses
  %.val = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6 ; 12 uses
  %i.v = getelementptr i8, ptr %1, i64 200
  %.val23 = load ptr, ptr %i.v, align 8, !nonnull !6, !align !7, !noundef !6 ; 11 uses
  %i.w = load i32, ptr %3, align 4, !range !569, !noundef !6 ; 2 uses
  %i.x = icmp ne i32 %i.w, 17
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i32 %i.w, 20
  %.sink109.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink109.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink109.sroa.gep129 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br i1 %i.y, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !range !7489, !noundef !6 ; 2 uses
  switch i8 %i.aa, label %.critedge [
    i8 34, label %bb.d
    i8 35, label %bb.c
    i8 28, label %bb.as
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 8, !range !663, !noundef !6
  %i.ae = icmp eq i32 %i.ad, 30
  br i1 %i.ae, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !6 ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %.not6.i = icmp eq i64 %i.aj, 0
  br i1 %.not6.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_B2m_INtNtBa_6option6OptionB2m_ENCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB4i_20TypeInferenceBuilder32infer_subscript_expression_typess0_0NCNvXs_NvB1y_10advance_byINtB2X_6FilterB3_B4b_ENtB6A_13SpecAdvanceBy15spec_advance_by0E0B3K_EB4o_.exit.thread, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_B2m_INtNtBa_6option6OptionB2m_ENCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB4i_20TypeInferenceBuilder32infer_subscript_expression_typess0_0NCNvXs_NvB1y_10advance_byINtB2X_6FilterB3_B4b_ENtB6A_13SpecAdvanceBy15spec_advance_by0E0B3K_EB4o_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %1, ptr %i.s, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.val, ptr %i.am, align 8
  br label %bb.ak

.lr.ph.i:                                         ; preds = %.thread, %bb.e
  %i.an = phi ptr [ %i.af, %.thread ], [ %i.al, %bb.e ] ; 3 uses
  %.sroa.01.088 = phi ptr [ %i.ac, %.thread ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 400
  br label %bb.f

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.as = phi ptr [ %.sroa.01.088, %.lr.ph.i ], [ %i.at, %.backedge.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10732
  %i.au = call noundef range(i32 1, 0) i32 @_RNvXs_NtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_keyNtB4_17ExpressionNodeKeyINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %i.as), !noalias !10732
  store i32 %i.au, ptr %i.g, align 4, !noalias !10732
  %i.av = load i64, ptr %i.ao, align 8, !alias.scope !10735, !noalias !10738, !noundef !6
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB6_20TypeInferenceBuilder32infer_subscript_expression_types0Bc_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !10732 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10740)
  call void @llvm.experimental.noalias.scope.decl(metadata !10743)
  %i.ay = lshr i64 %i.ax, 57
  %i.az = trunc nuw nsw i64 %i.ay to i8
  %i.ba = load i64, ptr %i.ar, align 8, !alias.scope !10746, !noalias !10747, !noundef !6 ; 2 uses
  %i.bb = load ptr, ptr %i.ap, align 8, !alias.scope !10746, !noalias !10747, !nonnull !6, !noundef !6 ; 2 uses
  %i.bc = insertelement <16 x i8> poison, i8 %i.az, i64 0
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bu, %bb.j ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ax, %bb.g ], [ %i.bv, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.ba ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.be, align 1, !noalias !10750 ; 2 uses
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.bd
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.bt, %bb.i ], [ %i.bg, %bb.h ] ; 3 uses
  %i.bh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.bi
  %i.bk = and i64 %i.bj, %i.ba
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyINtB2_10EquivalentBq_E10equivalentCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bn), !noalias !10753
  br i1 %i.bo, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB24_.exit.i.i.i, label %bb.i, !prof !304

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %i.bp = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %i.br = icmp eq i16 %i.bq, 0
  br i1 %i.br, label %bb.j, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB6_20TypeInferenceBuilder32infer_subscript_expression_types0Bc_.exit.i, !prof !282

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.bt = and i16 %i.bs, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bu = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.bv = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.bu
  br label %bb.h

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB24_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bw = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !10732, !noundef !6
  %i.by = and i8 %i.bx, 2
  %.not.i = icmp eq i8 %i.by, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10732
  br i1 %.not.i, label %.backedge.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2v_20TypeInferenceBuilder32infer_subscript_expression_types0EB2B_.exit

.backedge.i:                                      ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB6_20TypeInferenceBuilder32infer_subscript_expression_types0Bc_.exit.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB24_.exit.i.i.i
  %.not7.i = icmp eq ptr %i.at, %i.an
  br i1 %.not7.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2v_20TypeInferenceBuilder32infer_subscript_expression_types0EB2B_.exit, label %bb.f

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB6_20TypeInferenceBuilder32infer_subscript_expression_types0Bc_.exit.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10732
  br label %.backedge.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2v_20TypeInferenceBuilder32infer_subscript_expression_types0EB2B_.exit: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB24_.exit.i.i.i, %.backedge.i
  %.lcssa4.i = phi i1 [ false, %.backedge.i ], [ true, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EB24_.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %1, ptr %i.s, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.val, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.val23, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %.sroa.01.088, ptr %i.r, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.cc, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10756)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2v_20TypeInferenceBuilder32infer_subscript_expression_types0EB2B_.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1U_ENCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2Y_20TypeInferenceBuilder32infer_subscript_expression_typess0_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtBa_5slice4iter4IterB16_EB2R_ENtB5g_13SpecAdvanceBy15spec_advance_by0E0B34_.exit.i
  %i.ci = phi ptr [ %i.cj, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1U_ENCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2Y_20TypeInferenceBuilder32infer_subscript_expression_typess0_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtBa_5slice4iter4IterB16_EB2R_ENtB5g_13SpecAdvanceBy15spec_advance_by0E0B34_.exit.i ], [ %.sroa.01.088, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2v_20TypeInferenceBuilder32infer_subscript_expression_types0EB2B_.exit ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72 ; 7 uses
  %i.ck = load i32, ptr %i.ci, align 8, !range !663, !noalias !10759, !noundef !6
  switch i32 %i.ck, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1U_ENCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2Y_20TypeInferenceBuilder32infer_subscript_expression_typess0_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtBa_5slice4iter4IterB16_EB2R_ENtB5g_13SpecAdvanceBy15spec_advance_by0E0B34_.exit.i [
    i32 26, label %bb.k
    i32 27, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10759
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !10759, !nonnull !6, !noundef !6
  call void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.cm), !noalias !10759
  %i.cn = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @77), !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10759
  br i1 %i.cn, label %bb.l, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1U_ENCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2Y_20TypeInferenceBuilder32infer_subscript_expression_typess0_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtBa_5slice4iter4IterB16_EB2R_ENtB5g_13SpecAdvanceBy15spec_advance_by0E0B34_.exit.i

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %.sink = phi i64 [ 8, %.lr.ph ], [ 16, %bb.k ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink
  %.sroa.01.0.i.i.i.i = load ptr, ptr %i.co, align 8, !noalias !10759, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10759
  call void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.ci), !noalias !10759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10759
  call void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %.sroa.01.0.i.i.i.i), !noalias !10759
  %i.cp = load i32, ptr %i.e, align 4, !range !569, !noalias !10759, !noundef !6 ; 2 uses
  %i.cq = icmp ne i32 %i.cp, 17
  call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp eq i32 %i.cp, 29
  br i1 %i.cr, label %bb.m, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.cd, align 4, !range !9, !noalias !10759, !noundef !6
  %i.ct = load i32, ptr %i.ce, align 4, !noalias !10759, !noundef !6
  %i.cu = call noundef zeroext i1 @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance15is_typevartuple(i32 noundef %i.cs, i32 noundef %i.ct, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val23), !noalias !10759
  br i1 %i.cu, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB6_20TypeInferenceBuilder32infer_subscript_expression_typess0_0Bc_.exit.thread3.i.i.loopexit, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10759
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25exact_tuple_instance_spec(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val23), !noalias !10759
  %i.cv = load i32, ptr %i.c, align 8, !range !1276, !noalias !10759, !noundef !6 ; 6 uses
  switch i32 %i.cv, label %bb.t [
    i32 -4, label %bb.n
    i32 -3, label %bb.s
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10763)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit.i.i.i.i

bb.o:                                             ; preds = %bb.u, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !10766)
  %i.cw = icmp eq i32 %i.cv, -3
  br i1 %i.cw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !10769)
  %i.cx = icmp eq i32 %i.cv, -2
  br i1 %i.cx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !10772, !noalias !10759, !noundef !6 ; 2 uses
  %i.cy = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.cy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit.i.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !10772, !noalias !10759, !nonnull !6, !noundef !6
  %i.cz = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.cz, i64 noundef 4) #52, !noalias !10773
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej0_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg), !noalias !10759
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit.i.i.i.i: ; preds = %bb.r, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.q, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10759
  %i.da = load i32, ptr %i.d, align 4, !range !569, !noalias !10759, !noundef !6 ; 2 uses
  %i.db = icmp ne i32 %i.da, 17
  call void @llvm.assume(i1 %i.db)
  %i.dc = icmp eq i32 %i.da, 18
  br i1 %i.dc, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB6_20TypeInferenceBuilder32infer_subscript_expression_typess0_0Bc_.exit.i.i, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB6_20TypeInferenceBuilder32infer_subscript_expression_typess0_0Bc_.exit.thread5.i.i

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB6_20TypeInferenceBuilder32infer_subscript_expression_typess0_0Bc_.exit.thread5.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1B_4TypeNtB1z_15VariableSegmentEEEEB1D_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10759
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1U_ENCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscriptNtB2Y_20TypeInferenceBuilder32infer_subscript_expression_typess0_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_6FilterINtNtNtBa_5slice4iter4IterB16_EB2R_ENtB5g_13SpecAdvanceBy15spec_advance_by0E0B34_.exit.i

end_hunk_0
