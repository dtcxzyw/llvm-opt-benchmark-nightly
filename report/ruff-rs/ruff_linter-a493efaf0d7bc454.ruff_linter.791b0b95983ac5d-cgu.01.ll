inline.NumInlined: 8875
inline.NumDeleted: 4281
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2H_7flatten7FlatMapINtNtNtB2L_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtB8_5boxed3BoxDNtNtNtB2J_6traits8iterator8Iteratorp4ItemRB4g_EL_ENCNvBH_38assignment_targets_from_assign_targets0ENCNvXs2_BH_NtBH_32InnerForWithAssignTargetsVisitorNtNtB4k_17statement_visitor16StatementVisitor10visit_stmts1_0EEBP_:bb.a
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.aw:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2H_7flatten7FlattenINtNtB2H_10filter_map9FilterMapINtNtNtB2L_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENCNvBH_34assignment_targets_from_with_items0EENCNvXs2_BH_NtBH_32InnerForWithAssignTargetsVisitorNtNtB4P_17statement_visitor16StatementVisitor10visit_stmts_0EEBP_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert75.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert80.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit, %bb.a
  %i.h = invoke fastcc noundef align 8 ptr @_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name34assignment_targets_from_with_items0EENtNtNtB9_6traits8iterator8Iterator4nextB2Z_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.i, %bb.d ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name34assignment_targets_from_with_items0EEEB3c_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlattenINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name34assignment_targets_from_with_items0EENCNvXs2_B3k_NtB3k_32InnerForWithAssignTargetsVisitorNtNtB2v_17statement_visitor16StatementVisitor10visit_stmts_0EEB3s_.exit unwind label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.k = icmp ult i64 %i.j, 576460752303423488
  call void @llvm.assume(i1 %i.k)
  %i.l = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.h, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name34assignment_targets_from_with_items0EEEB3c_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %1)
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !568
  %i.n = load ptr, ptr %1, align 8, !alias.scope !569, !noalias !570, !noundef !8
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EBL_9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(16) %1)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !noalias !568
  %.pre74.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !352, !noalias !568
  %.pre76.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i, align 8, !noalias !568
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %.noexc, %bb.h
  %i.o = phi i64 [ %.pre76.i.i.i, %.noexc ], [ 0, %bb.h ]
  %i.p = phi i64 [ %.pre74.i.i.i, %.noexc ], [ 1, %bb.h ] ; 2 uses
  %i.q = phi i64 [ %.pre.i.i.i, %.noexc ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !568
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !569, !noalias !570, !noundef !8
  %.not55.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not55.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EBL_9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.d)
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %bb.j
  %.pre77.i.i.i = load i64, ptr %i.a, align 8, !noalias !568
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !range !352, !noalias !568
  %.pre81.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i, align 8, !noalias !568
  %i.s = call i64 @llvm.uadd.sat.i64(i64 %i.q, i64 %.pre77.i.i.i)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i: ; preds = %.noexc9, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %i.t = phi i64 [ %.pre81.i.i.i, %.noexc9 ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i ]
  %i.u = phi i64 [ %.pre79.i.i.i, %.noexc9 ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i ] ; 2 uses
  %i.v = phi i64 [ %i.s, %.noexc9 ], [ %i.q, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !568
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !569, !noalias !570, !noundef !8 ; 2 uses
  %.not56.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not56.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i
  %.val63.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !569, !noalias !570, !nonnull !8, !noundef !8
  %i.x = trunc nuw i64 %i.p to i1
  %i.y = trunc nuw i64 %i.u to i1
  %i.z = icmp eq ptr %.val63.i.i.i, %i.w
  %or.cond.i.i.i = and i1 %i.z, %i.y
  %or.cond62.i.i.i = select i1 %i.x, i1 %or.cond.i.i.i, i1 false
  br i1 %or.cond62.i.i.i, label %bb.m, label %bb.o

bb.l:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EE6map_orTjIBw_jEENvYBJ_B1i_9size_hintECsEhZmuQNqkz_11ruff_linter.exit64.i.i.i
  %i.aa = and i64 %i.u, %i.p
  %or.cond57.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %or.cond57.not.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = add i64 %i.t, %i.o
  br label %bb.o

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit: ; preds = %bb.o, %bb.p, %bb.f
  %i.ac = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.j ; 2 uses
  store ptr %i.h, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i8 1, ptr %i.ae, align 8
  %i.af = add nuw nsw i64 %i.j, 1
  store i64 %i.af, ptr %i.c, align 8
  br label %bb.b

bb.n:                                             ; preds = %bb.p, %bb.j, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sink83.i.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.m ], [ %.sroa.5, %bb.l ], [ %.sroa.5, %bb.k ]
  %.sink.i.i.i = phi i64 [ %i.ab, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i.i, ptr %.sink83.i.i.i.sroa.phi, align 8, !alias.scope !570, !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %i.v, i64 1) ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !alias.scope !571, !noundef !8 ; 2 uses
  %i.aj = load i64, ptr %0, align 8, !range !403, !alias.scope !571, !noundef !8
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = icmp ugt i64 %i.ah, %i.ak
  br i1 %i.al, label %bb.p, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit, !prof !39

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ai, i64 noundef range(i64 1, 0) %i.ah, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit unwind label %bb.n

bb.q:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_7flatten7FlattenINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name34assignment_targets_from_with_items0EENCNvXs2_B3k_NtB3k_32InnerForWithAssignTargetsVisitorNtNtB2v_17statement_visitor16StatementVisitor10visit_stmts_0EEB3s_.exit: ; preds = %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_5boxed3BoxDNtNtNtB2J_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_BH_NtBH_32InnerForWithAssignTargetsVisitorNtNtB4t_17statement_visitor16StatementVisitor10visit_stmt0EEBP_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit, %bb.a
  %i.f = invoke noundef align 8 ptr @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EBL_4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.g, %bb.d ]
  %.val10 = load ptr, ptr %i.b, align 8
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !8, !align !96, !noundef !8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3n_32InnerForWithAssignTargetsVisitorNtNtB2r_17statement_visitor16StatementVisitor10visit_stmt0EEB3v_(ptr %.val10, ptr nonnull %.val11) #30
          to label %common.resume unwind label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488
  call void @llvm.assume(i1 %i.i)
  %i.j = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.m, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit

bb.g:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %.val9 = load ptr, ptr %i.c, align 8, !nonnull !8, !align !96, !noundef !8 ; 5 uses
  %i.l = load ptr, ptr %.val9, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.l(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !403, !invariant.load !8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3n_32InnerForWithAssignTargetsVisitorNtNtB2r_17statement_visitor16StatementVisitor10visit_stmt0EEB3v_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !511, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #28
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3n_32InnerForWithAssignTargetsVisitorNtNtB2r_17statement_visitor16StatementVisitor10visit_stmt0EEB3v_.exit

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !403, !invariant.load !8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !511, !invariant.load !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.r, %bb.l ], [ %.pn, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3n_32InnerForWithAssignTargetsVisitorNtNtB2r_17statement_visitor16StatementVisitor10visit_stmt0EEB3v_.exit: ; preds = %bb.i, %bb.j
  ret void

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EBL_9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3a_32InnerForWithAssignTargetsVisitorNtNtB2e_17statement_visitor16StatementVisitor10visit_stmt0EB1v_9size_hintB3i_.exit unwind label %bb.n

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3a_32InnerForWithAssignTargetsVisitorNtNtB2e_17statement_visitor16StatementVisitor10visit_stmt0EB1v_9size_hintB3i_.exit, %bb.o, %bb.f
  %i.x = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.h ; 2 uses
  store ptr %i.f, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i8 0, ptr %i.z, align 8
  %i.aa = add nuw nsw i64 %i.h, 1
  store i64 %i.aa, ptr %i.d, align 8
  br label %bb.b

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3a_32InnerForWithAssignTargetsVisitorNtNtB2e_17statement_visitor16StatementVisitor10visit_stmt0EB1v_9size_hintB3i_.exit: ; preds = %bb.m
  %i.ac = load i64, ptr %i.a, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %i.ac, i64 1) ; 2 uses
  %i.ae = load i64, ptr %i.d, align 8, !alias.scope !574, !noundef !8 ; 2 uses
  %i.af = load i64, ptr %0, align 8, !range !403, !alias.scope !574, !noundef !8
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = icmp ugt i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.o, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit, !prof !39

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3a_32InnerForWithAssignTargetsVisitorNtNtB2e_17statement_visitor16StatementVisitor10visit_stmt0EB1v_9size_hintB3i_.exit
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ae, i64 noundef range(i64 1, 0) %i.ad, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit unwind label %bb.n

bb.p:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_5boxed3BoxDNtNtNtB2J_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_BH_NtBH_32InnerForWithAssignTargetsVisitorNtNtB4t_17statement_visitor16StatementVisitor10visit_stmts2_0EEBP_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit, %bb.a
  %i.f = invoke noundef align 8 ptr @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EBL_4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.g, %bb.d ]
  %.val10 = load ptr, ptr %i.b, align 8
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !8, !align !96, !noundef !8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3n_32InnerForWithAssignTargetsVisitorNtNtB2r_17statement_visitor16StatementVisitor10visit_stmts2_0EEB3v_(ptr %.val10, ptr nonnull %.val11) #30
          to label %common.resume unwind label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488
  call void @llvm.assume(i1 %i.i)
  %i.j = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.m, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit

bb.g:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %.val9 = load ptr, ptr %i.c, align 8, !nonnull !8, !align !96, !noundef !8 ; 5 uses
  %i.l = load ptr, ptr %.val9, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.l(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !403, !invariant.load !8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3n_32InnerForWithAssignTargetsVisitorNtNtB2r_17statement_visitor16StatementVisitor10visit_stmts2_0EEB3v_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !511, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #28
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3n_32InnerForWithAssignTargetsVisitorNtNtB2r_17statement_visitor16StatementVisitor10visit_stmts2_0EEB3v_.exit

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !403, !invariant.load !8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !511, !invariant.load !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.r, %bb.l ], [ %.pn, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3n_32InnerForWithAssignTargetsVisitorNtNtB2r_17statement_visitor16StatementVisitor10visit_stmts2_0EEB3v_.exit: ; preds = %bb.i, %bb.j
  ret void

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EBL_9size_hintCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3a_32InnerForWithAssignTargetsVisitorNtNtB2e_17statement_visitor16StatementVisitor10visit_stmts2_0EB1v_9size_hintB3i_.exit unwind label %bb.n

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3a_32InnerForWithAssignTargetsVisitorNtNtB2e_17statement_visitor16StatementVisitor10visit_stmts2_0EB1v_9size_hintB3i_.exit, %bb.o, %bb.f
  %i.x = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.h ; 2 uses
  store ptr %i.f, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i8 2, ptr %i.z, align 8
  %i.aa = add nuw nsw i64 %i.h, 1
  store i64 %i.aa, ptr %i.d, align 8
  br label %bb.b

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3a_32InnerForWithAssignTargetsVisitorNtNtB2e_17statement_visitor16StatementVisitor10visit_stmts2_0EB1v_9size_hintB3i_.exit: ; preds = %bb.m
  %i.ac = load i64, ptr %i.a, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %i.ac, i64 1) ; 2 uses
  %i.ae = load i64, ptr %i.d, align 8, !alias.scope !577, !noundef !8 ; 2 uses
  %i.af = load i64, ptr %0, align 8, !range !403, !alias.scope !577, !noundef !8
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = icmp ugt i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.o, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit, !prof !39

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3a_32InnerForWithAssignTargetsVisitorNtNtB2e_17statement_visitor16StatementVisitor10visit_stmts2_0EB1v_9size_hintB3i_.exit
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ae, i64 noundef range(i64 1, 0) %i.ad, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit unwind label %bb.n

bb.p:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_5boxed3BoxDNtNtNtB2J_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_BH_NtBH_32InnerForWithAssignTargetsVisitorNtNtB4t_17statement_visitor16StatementVisitor10visit_stmts3_0EEBP_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit, %bb.a
  %i.f = invoke noundef align 8 ptr @_RNvXNtNtCscdodAO9FK5_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_EBL_4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.g, %bb.d ]
  %.val10 = load ptr, ptr %i.b, align 8
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !8, !align !96, !noundef !8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEL_ENCNvXs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB3n_32InnerForWithAssignTargetsVisitorNtNtB2r_17statement_visitor16StatementVisitor10visit_stmts3_0EEB3v_(ptr %.val10, ptr nonnull %.val11) #30
          to label %common.resume unwind label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488
  call void @llvm.assume(i1 %i.i)
  %i.j = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.m, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_name24ExprWithInnerBindingKindE7reserveBN_.exit

bb.g:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %.val9 = load ptr, ptr %i.c, align 8, !nonnull !8, !align !96, !noundef !8 ; 5 uses
end_hunk_0
