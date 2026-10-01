Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.11?download=true
inline.NumInlined: 1313
inline.NumDeleted: 728
begin_hunk_0_@_RINvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_16UseDefMapBuilder16record_multi_useINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlattenINtNtB1y_6option8IntoIterINtNtB1u_3map3MapINtNtB1u_6filter6FilterINtNtNtB1y_5slice4iter4IterNtNtB8_6member14ScopedMemberIdENCNCNvXs3_NtB8_7builderNtB4u_20SemanticIndexBuilderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor13visit_keywords_00ENCB4m_s_0EEEEB8_:bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.k, !noalias !125

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !125
  unreachable

_RNvXsx_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBO_.exit: ; preds = %_RNvNtCs2O29vuvTAEJ_14ty_python_core7use_def23pending_place_state_mut.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  store <2 x i32> %i.ba, ptr %i.j, align 8
  %i.bl = invoke { ptr, ptr } @_RNvMs4_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_8Bindings4iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit ; 2 uses

.loopexit36:                                      ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdENCNCNvXs3_NtB2s_7builderNtB3u_20SemanticIndexBuilderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor13visit_keywords_00ENCB3m_s_0EEEINtB5_8FuseImplBY_E4nextB2s_.exit.thread.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdENCNCNvXs3_NtB1w_7builderNtB2y_20SemanticIndexBuilderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor13visit_keywords_00ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i9.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdENCNCNvXs3_NtB1w_7builderNtB2y_20SemanticIndexBuilderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor13visit_keywords_00ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread.i.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 0, ptr %i.h, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.bm, align 8
  call fastcc void @_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder19record_use_bindings(ptr noalias noundef align 8 dereferenceable(688) %0, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.l:                                             ; preds = %_RNvXsx_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBO_.exit
  %i.bn = extractvalue { ptr, ptr } %i.bl, 0      ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bl, 1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_RINvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_16UseDefMapBuilder24mark_definition_ids_usedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterNtNtB6_11place_state11LiveBindingENvMs3_B2O_B2M_7bindingEEB8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bq = load i64, ptr %i.z, align 8, !alias.scope !126 ; 2 uses
  %i.br = load ptr, ptr %i.aa, align 8, !alias.scope !126, !nonnull !5
  %i.bs = load i64, ptr %i.ab, align 8, !alias.scope !126 ; 2 uses
  %i.bt = load ptr, ptr %i.ac, align 8, !alias.scope !126, !nonnull !5
  br label %bb.m

bb.m:                                             ; preds = %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit.i, %.lr.ph.i
  %.sroa.0.010.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.bu, %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 12 ; 2 uses
  %i.bv = invoke noundef range(i32 1, 0) i32 @_RNvMs3_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_11LiveBinding7binding(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %.sroa.0.010.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.m
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  %i.bx = add i32 %i.bv, -1
  %i.by = zext i32 %i.bx to i64                   ; 5 uses
  %i.bz = icmp ugt i64 %i.bq, %i.by
  br i1 %i.bz, label %bb.o, label %.invoke

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !range !6, !noalias !127, !noundef !5
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.p, label %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit.i

.invoke:                                          ; preds = %bb.p, %bb.n
  %i.cd = phi i64 [ %i.bq, %bb.n ], [ %i.bs, %bb.p ]
  %i.ce = phi ptr [ @117, %bb.n ], [ @118, %bb.p ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.by, i64 noundef %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce) #34
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp ugt i64 %i.bs, %i.by
  br i1 %i.cf, label %bb.q, label %.invoke

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by
  store i8 1, ptr %i.cg, align 1, !noalias !127
  br label %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit.i

_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit.i: ; preds = %bb.q, %bb.o, %.noexc
  %i.ch = icmp eq ptr %i.bu, %i.bo
  br i1 %i.ch, label %_RINvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_16UseDefMapBuilder24mark_definition_ids_usedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterNtNtB6_11place_state11LiveBindingENvMs3_B2O_B2M_7bindingEEB8_.exit, label %bb.m

_RINvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_16UseDefMapBuilder24mark_definition_ids_usedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterNtNtB6_11place_state11LiveBindingENvMs3_B2O_B2M_7bindingEEB8_.exit: ; preds = %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids11ScopedUseIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtB13_7use_def11place_state8BindingsENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %2)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit

bb.r:                                             ; preds = %_RINvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_16UseDefMapBuilder24mark_definition_ids_usedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterNtNtB6_11place_state11LiveBindingENvMs3_B2O_B2M_7bindingEEB8_.exit
  %i.ci = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not6 = icmp eq ptr %i.ci, null
  br i1 %.not6, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.420.0.copyload = load i64, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0.copyload = load ptr, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cj = ptrtoint ptr %.sroa.521.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.cj to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  store i32 %.sroa.8.16.extract.trunc, ptr %i.a, align 8, !noalias !128
  store i64 0, ptr %i.ae, align 8, !noalias !128
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !128
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !128
  %i.ck = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids11ScopedUseIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtBT_7use_def11place_state8BindingsEEE14insert_no_growBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ci, i64 noundef %.sroa.420.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cl = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.noexc15
  %.pn.i = phi ptr [ %i.ck, %.noexc15 ], [ %i.cl, %bb.t ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  %i.cm = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !129, !noalias !130, !noundef !5 ; 3 uses
  %i.co = load i64, ptr %.sroa.0.0.i, align 8, !range !7, !alias.scope !129, !noalias !130, !noundef !5
  %i.cp = icmp eq i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state8BindingsE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i)
          to label %bb.y unwind label %bb.w, !noalias !130

bb.w:                                             ; preds = %bb.v
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cr)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.ct = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !129, !noalias !130, !nonnull !5, !noundef !5
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %i.cu, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cv, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.cw = add i64 %i.cn, 1
  store i64 %i.cw, ptr %i.cm, align 8, !alias.scope !129, !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.b

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXsx_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBO_.exit, %_RINvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_16UseDefMapBuilder24mark_definition_ids_usedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterNtNtB6_11place_state11LiveBindingENvMs3_B2O_B2M_7bindingEEB8_.exit, %bb.s
  %lpad.loopexit39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit39, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp40, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_16UseDefMapBuilder24mark_definition_ids_usedINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtB6_11place_state18ScopedDefinitionIdj2_EEB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(688) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsM_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBO_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !138, !noundef !5 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !138, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5
  %.pre11.a = load ptr, ptr %i.a, align 8, !alias.scope !139, !noalias !140
  br label %bb.c

bb.b:                                             ; preds = %.invoke
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_EEB1h_(ptr noalias noundef align 8 dereferenceable(40) %i.a) #36
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit
  %i.q = phi i64 [ %i.e, %.lr.ph ], [ %i.ah, %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit ] ; 2 uses
  %i.r = phi ptr [ %.pre11.a, %.lr.ph ], [ %i.aj, %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit ] ; 3 uses
  %i.s = phi i64 [ %i.d, %.lr.ph ], [ %i.ai, %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit ] ; 2 uses
  %2 = add i64 %i.s, 1                            ; 3 uses
  store i64 %2, ptr %i.b, align 8, !alias.scope !138
  %3 = load i64, ptr %i.g, align 8, !alias.scope !139, !noalias !140, !noundef !5
  %i.t = icmp ugt i64 %3, 2
  %.sink10.i.i = select i1 %i.t, ptr %i.r, ptr %i.a
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sink10.i.i, i64 %i.s
  %i.v = load i32, ptr %i.u, align 4, !range !4, !noundef !5 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add i32 %i.v, -1
  %i.y = zext i32 %i.x to i64                     ; 5 uses
  %i.z = icmp ugt i64 %i.i, %i.y
  br i1 %i.z, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4, !range !6, !noalias !141, !noundef !5
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp ugt i64 %i.m, %i.y
  br i1 %i.ad, label %bb.g, label %.invoke

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y
  store i8 1, ptr %i.ae, align 1, !noalias !141
  %.pre.a = load ptr, ptr %i.a, align 8, !alias.scope !139, !noalias !140
  %.pre12 = load i64, ptr %i.b, align 8, !alias.scope !138
  %.pre13 = load i64, ptr %i.c, align 8, !alias.scope !138
  br label %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit

.invoke:                                          ; preds = %bb.f, %bb.d
  %i.af = phi i64 [ %i.i, %bb.d ], [ %i.m, %bb.f ]
  %i.ag = phi ptr [ @117, %bb.d ], [ @118, %bb.f ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #34
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit: ; preds = %bb.c, %bb.e, %bb.g
  %i.ah = phi i64 [ %i.q, %bb.c ], [ %i.q, %bb.e ], [ %.pre13, %bb.g ] ; 2 uses
  %i.ai = phi i64 [ %2, %bb.c ], [ %2, %bb.e ], [ %.pre12, %bb.g ] ; 2 uses
  %i.aj = phi ptr [ %i.r, %bb.c ], [ %i.r, %bb.e ], [ %.pre.a, %bb.g ]
  %i.ak = icmp eq i64 %i.ai, %i.ah
  br i1 %i.ak, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_RNvMsl_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_16UseDefMapBuilder20mark_definition_used.exit, %bb.a
  invoke void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_EEB1h_.exit unwind label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.p, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_EEB1h_.exit: ; preds = %._crit_edge
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_EEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_EEB1h_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdj2_EEB1h_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core6member18MemberReverseTableEEEB1z_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core6member18MemberReverseTableEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs2O29vuvTAEJ_14ty_python_core6member14ScopedMemberIdNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalEB1g_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core6member18MemberReverseTableEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #37
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core6member18MemberReverseTableEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #37
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core6symbol18SymbolReverseTableEEEB1z_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core6symbol18SymbolReverseTableEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs2O29vuvTAEJ_14ty_python_core6symbol14ScopedSymbolIdNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalEB1g_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core6symbol18SymbolReverseTableEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #37
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core6symbol18SymbolReverseTableEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #37
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core7use_def14UseDefMapExtraEEEB1z_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core7use_def14UseDefMapExtraEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core7use_def14UseDefMapExtraEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %.0.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core7use_def14UseDefMapExtraEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #37
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core7use_def14UseDefMapExtraEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #37
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core7use_def16ConstraintTablesEEEB1z_(ptr captures(address) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core7use_def16ConstraintTablesEBF_(ptr noalias noundef nonnull align 8 dereferenceable(112) %.0.val)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 112, i64 noundef 8) #37
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2O29vuvTAEJ_14ty_python_core7use_def23DefinitionsAtDefinitionNtNtBE_11place_state8BindingsNtB1J_12DeclarationsEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state8BindingsEBH_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load i64, ptr %0, align 8, !range !8, !alias.scope !146, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEEB13_.exit unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state8BindingsEBH_.exit: ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !range !8, !alias.scope !147, !noundef !5
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEEB13_.exit1, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state8BindingsEBH_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state15LiveDeclarationj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEEB13_.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEEB13_.exit1: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state8BindingsEBH_.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state12DeclarationsEEB13_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb80QtQtK5z0_6bitvec3vec6BitVecyNtNtBG_5order4Msb0EECs2O29vuvTAEJ_14ty_python_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !152, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !152, !noundef !5 ; 3 uses
end_hunk_0
