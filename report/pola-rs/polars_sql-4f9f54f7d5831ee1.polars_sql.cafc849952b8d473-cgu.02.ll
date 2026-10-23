Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.02?download=true
inline.NumInlined: 8278
inline.NumDeleted: 3136
begin_hunk_0_@_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext25try_parse_inner_only_expr:bb.a
  store i64 2, ptr %i.b, align 8, !dbg !19321, !alias.scope !19296
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapIB4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterINtNtBc_6option6OptionRNtNtNtB19_3dsl4expr4ExprENCNvNtB19_5utils30expr_to_leaf_column_exprs_iter0EIB1Z_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvB2O_30expr_to_leaf_column_names_iter0ENtNtNtBa_6traits8iterator8Iterator3allNCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB5S_7context10SQLContext25try_parse_inner_only_exprs_0EB5S_.exit, !dbg !19323

bb.j:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !19324

.body:                                            ; preds = %bb.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.o, %bb.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapIBH_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterINtNtB4_6option6OptionRNtNtNtB1w_3dsl4expr4ExprENCNvNtB1w_5utils30expr_to_leaf_column_exprs_iter0EIB2m_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvB3b_30expr_to_leaf_column_names_iter0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(96) %i.b) #41
          to label %.thread unwind label %bb.o, !dbg !19324

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapIB4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterINtNtBc_6option6OptionRNtNtNtB19_3dsl4expr4ExprENCNvNtB19_5utils30expr_to_leaf_column_exprs_iter0EIB1Z_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvB2O_30expr_to_leaf_column_names_iter0ENtNtNtBa_6traits8iterator8Iterator3allNCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB5S_7context10SQLContext25try_parse_inner_only_exprs_0EB5S_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterIBH_RNtNtNtB25_3dsl4expr4ExprENCNvNtB25_5utils30expr_to_leaf_column_exprs_iter0ENCNvB3s_30expr_to_leaf_column_names_iter0EEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i, %.noexc
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapIBH_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterINtNtB4_6option6OptionRNtNtNtB1w_3dsl4expr4ExprENCNvNtB1w_5utils30expr_to_leaf_column_exprs_iter0EIB2m_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvB3b_30expr_to_leaf_column_names_iter0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(96) %i.b)
          to label %bb.k unwind label %.thread20, !dbg !19324

bb.k:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapIB4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterINtNtBc_6option6OptionRNtNtNtB19_3dsl4expr4ExprENCNvNtB19_5utils30expr_to_leaf_column_exprs_iter0EIB1Z_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvB2O_30expr_to_leaf_column_names_iter0ENtNtNtBa_6traits8iterator8Iterator3allNCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB5S_7context10SQLContext25try_parse_inner_only_exprs_0EB5S_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19324
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09), !dbg !19325
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513), !dbg !19325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.d, i64 144, i1 false), !dbg !19326
  br i1 %i.j, label %bb.l, label %bb.m, !dbg !19327

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a), !dbg !19328
  br label %_RINvMNtCscgRAwXFJnXP_4core4boolb9then_someNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql.exit, !dbg !19328

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.09, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !19329
  %.sroa.410.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !19329
  %.sroa.410.0.copyload12 = load i64, ptr %.sroa.410.0..sroa_idx11, align 16, !dbg !19329, !alias.scope !19300
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !19329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !19329
  br label %_RINvMNtCscgRAwXFJnXP_4core4boolb9then_someNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql.exit, !dbg !19330

_RINvMNtCscgRAwXFJnXP_4core4boolb9then_someNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.l, %bb.m
  %.sroa.410.0 = phi i64 [ %.sroa.410.0.copyload12, %bb.m ], [ -9223372036854775780, %bb.l ], !dbg !19331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.09, i64 112, i1 false), !dbg !19333
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !19333
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 16, !dbg !19333
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !19333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513, i64 24, i1 false), !dbg !19333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09), !dbg !19334
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513), !dbg !19334
  br label %bb.n, !dbg !19335

bb.n:                                             ; preds = %bb.b, %bb.e, %_RINvMNtCscgRAwXFJnXP_4core4boolb9then_someNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19313
  ret void, !dbg !19335

bb.o:                                             ; preds = %.thread, %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !19336
  unreachable, !dbg !19336

bb.p:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn19, !dbg !19336

.thread:                                          ; preds = %.body, %.thread20
  %.pn19 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread20 ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.d) #41
          to label %bb.p unwind label %bb.o, !dbg !19313
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext29try_rewrite_subquery_conjunct(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(384) %0, ptr noalias noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 16 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(328) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %5) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !19337 {
bb.a:
  %i.a = alloca [384 x i8], align 16              ; 4 uses
  %i.b = alloca [384 x i8], align 16              ; 4 uses
  %i.c = alloca [384 x i8], align 16              ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [384 x i8], align 16              ; 4 uses
  %i.g = alloca [384 x i8], align 16              ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [384 x i8], align 16              ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [384 x i8], align 16              ; 9 uses
  %i.m = alloca [144 x i8], align 16              ; 4 uses
  %i.n = alloca [144 x i8], align 16              ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [80 x i8], align 8                ; 13 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [144 x i8], align 16              ; 6 uses
  %i.v = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.0112 = alloca [112 x i8], align 16       ; 4 uses
  %.sroa.321.i = alloca [24 x i8], align 8        ; 4 uses
  %i.w = alloca [144 x i8], align 16              ; 8 uses
  %.sroa.7107 = alloca [416 x i8], align 8        ; 5 uses
  %i.x = alloca [432 x i8], align 16              ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 14 uses
  %i.z = alloca [384 x i8], align 16              ; 8 uses
  %i.aa = alloca [40 x i8], align 8               ; 11 uses
  %i.ab = alloca [248 x i8], align 8              ; 63 uses
  %i.ac = alloca [96 x i8], align 8               ; 13 uses
  %i.ad = alloca [144 x i8], align 16             ; 8 uses
  %.sroa.098 = alloca [112 x i8], align 16        ; 7 uses
  %i.ae = alloca [144 x i8], align 16             ; 7 uses
  %i.af = alloca [144 x i8], align 16             ; 11 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [384 x i8], align 16             ; 4 uses
  %i.aj = alloca [248 x i8], align 8              ; 4 uses
  %i.ak = alloca [384 x i8], align 16             ; 4 uses
  %.sroa.1091 = alloca [40 x i8], align 8         ; 4 uses
  %i.al = alloca [80 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.7 = alloca [416 x i8], align 8           ; 5 uses
  %i.ap = alloca [432 x i8], align 16             ; 7 uses
  %i.aq = alloca [8 x i8], align 8                ; 10 uses
  %i.ar = alloca [384 x i8], align 16             ; 8 uses
  %i.as = alloca [40 x i8], align 8               ; 11 uses
  %i.at = alloca [248 x i8], align 8              ; 9 uses
  %i.au = load i64, ptr %3, align 8, !dbg !19824, !range !1708, !noundef !1416 ; 3 uses
  %i.av = icmp ne i64 %i.au, 48, !dbg !19824
  tail call void @llvm.assume(i1 %i.av), !dbg !19824
  %i.aw = add nsw i64 %i.au, -6, !dbg !19824
  %i.ax = icmp samesign ugt i64 %i.au, 5, !dbg !19824
  %i.ay = select i1 %i.ax, i64 %i.aw, i64 42, !dbg !19824
  switch i64 %i.ay, label %bb.b [
    i64 16, label %bb.c
    i64 44, label %bb.d
  ], !dbg !19825

bb.b:                                             ; preds = %bb.c, %bb.a
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19826
  br label %_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext26try_rewrite_exists_as_join.exit, !dbg !19827

bb.c:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !19828
  %i.ba = load i8, ptr %i.az, align 8, !dbg !19828, !range !1459, !noundef !1416
  %i.bb = trunc nuw i8 %i.ba to i1, !dbg !19828   ; 3 uses
  %brmerge.demorgan = and i1 %4, %i.bb, !dbg !19828
  br i1 %brmerge.demorgan, label %bb.b, label %bb.aq, !dbg !19828

bb.d:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !19829
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !19829, !nonnull !1416, !noundef !1416
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !19830
  %i.bf = load i8, ptr %i.be, align 8, !dbg !19830, !range !1459, !noundef !1416
  %i.bg = trunc nuw i8 %i.bf to i1, !dbg !19830
  %i.bh = xor i1 %4, %i.bg, !dbg !19830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19716), !dbg !19831
  %i.bi = tail call noundef align 8 ptr @_RNvNtCshquuC4dCYVj_10polars_sql8subquery24eligible_subquery_select(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.bd), !dbg !19832, !noalias !19717, !inline_history !19344 ; 4 uses
  %.not.i = icmp eq ptr %i.bi, null, !dbg !19832
  br i1 %.not.i, label %bb.f, label %bb.e, !dbg !19833

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 360, !dbg !19834 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !19834, !range !1593, !noalias !19716, !noundef !1416
  %.not26.i = icmp eq i64 %i.bk, 69, !dbg !19834
  br i1 %.not26.i, label %bb.i, label %bb.g, !dbg !19835

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19836, !alias.scope !19716
  br label %_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext26try_rewrite_exists_as_join.exit, !dbg !19837

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !19838, !noalias !19718
  call fastcc void @_RNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5_10SQLContext8isolated(ptr noalias noundef align 8 captures(none) dereferenceable(248) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1), !dbg !19839, !noalias !19716, !inline_history !19344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !19840, !noalias !19718
  %i.bl = getelementptr i8, ptr %i.bi, i64 1744, !dbg !19841
  %.val42.i = load i64, ptr %i.bl, align 8, !dbg !19841, !noalias !19716, !noundef !1416
  %.not.i.i = icmp eq i64 %.val42.i, 0, !dbg !19842
  br i1 %.not.i.i, label %bb.h, label %_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit, !dbg !19842

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #47
          to label %.noexc16 unwind label %.split.thread, !dbg !19842

.noexc16:                                         ; preds = %bb.h
  unreachable, !dbg !19842

bb.i:                                             ; preds = %bb.e
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19843, !alias.scope !19716
  br label %_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext26try_rewrite_exists_as_join.exit, !dbg !19844

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit9: ; preds = %bb.aj
  br i1 %.sroa.024.8.i, label %bb.ap, label %common.resume, !dbg !19845

.split.thread:                                    ; preds = %bb.h, %bb.al, %_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap, !dbg !19845

_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g
  %i.bm = getelementptr i8, ptr %i.bi, i64 1736, !dbg !19841
  %.val41.i = load ptr, ptr %i.bm, align 8, !dbg !19841, !noalias !19716, !nonnull !1416, !noundef !1416
  invoke fastcc void @_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext21resolve_subquery_from(ptr noalias noundef align 16 captures(address) dereferenceable(432) %i.ap, ptr noalias noundef align 8 dereferenceable(248) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1360) %.val41.i)
          to label %bb.j unwind label %.split.thread, !dbg !19846, !noalias !19716, !inline_history !19344

bb.j:                                             ; preds = %_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !19719), !dbg !19840
  %i.bn = load i64, ptr %i.ap, align 16, !dbg !19847, !range !1829, !alias.scope !19720, !noalias !19718, !noundef !1416 ; 3 uses
  %i.bo = icmp eq i64 %i.bn, -9223372036854775777, !dbg !19847
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !19848 ; 2 uses
  br i1 %i.bo, label %bb.ao, label %bb.k, !dbg !19849

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(416) %i.bp, i64 416, i1 false), !dbg !19850
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 424, !dbg !19850
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !19850, !alias.scope !19721, !noalias !19718 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !19851, !noalias !19718
  %.not27.i = icmp eq i64 %i.bn, -9223372036854775778, !dbg !19840
  br i1 %.not27.i, label %bb.l, label %bb.p, !dbg !19852

bb.l:                                             ; preds = %bb.k
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19853, !alias.scope !19716
  br label %bb.am, !dbg !19854

bb.m:                                             ; preds = %bb.t, %bb.ah, %bb.o
  %.sroa.024.2.i = phi i1 [ true, %bb.o ], [ true, %bb.ah ], [ false, %bb.t ], !dbg !19855
  %.pn32.i = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %.pn30.i.ph, %bb.ah ], [ %i.bz, %bb.t ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19722), !dbg !19856
  call void @llvm.experimental.noalias.scope.decl(metadata !19723), !dbg !19857, !noalias !19716
  %i.bq = load ptr, ptr %i.aq, align 8, !dbg !19858, !alias.scope !19724, !noalias !19716, !nonnull !1416, !noundef !1416
  %i.br = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !dbg !19859, !noalias !19725
  %i.bs = icmp eq i64 %i.br, 1, !dbg !19860
  br i1 %i.bs, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit15, !dbg !19860

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !19861, !noalias !19716
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit15 unwind label %bb.af, !dbg !19862

bb.o:                                             ; preds = %bb.ab, %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !19863, !noalias !19718
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 376, !dbg !19863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 40, i1 false), !dbg !19863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !19864, !noalias !19718
  store i64 %i.bn, ptr %i.ar, align 16, !dbg !19864, !noalias !19718
  %.sroa.3.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !19864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.3.0..sroa_idx9.i, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.7, i64 376, i1 false), !dbg !19864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !19865, !noalias !19718
  store ptr %.sroa.10.0.copyload, ptr %i.aq, align 8, !dbg !19865, !noalias !19718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !19866, !noalias !19718
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.10.0.copyload, i64 16, !dbg !19867
  invoke fastcc void @_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext24split_subquery_conjuncts(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.al, ptr noalias noundef align 8 dereferenceable(248) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %5)
          to label %bb.q unwind label %bb.o, !dbg !19868, !inline_history !19344

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !19726), !dbg !19866
  %i.bw = load i64, ptr %i.al, align 8, !dbg !19869, !range !1568, !alias.scope !19727, !noalias !19718, !noundef !1416
  %i.bx = trunc nuw i64 %i.bw to i1, !dbg !19870
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !19871
  %.sroa.6.8.copyload90 = load i64, ptr %i.by, align 8, !dbg !19871, !alias.scope !19728, !noalias !19718 ; 3 uses
  %.sroa.1091.8..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !19871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1091, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1091.8..sroa_idx93, i64 40, i1 false), !dbg !19871
  %.sroa.11.8..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.al, i64 56, !dbg !19871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.8..sroa_idx95, i64 24, i1 false), !dbg !19871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !19872, !noalias !19718
  br i1 %i.bx, label %bb.ai, label %bb.r, !dbg !19870

bb.r:                                             ; preds = %bb.q
  %.not28.i = icmp eq i64 %.sroa.6.8.copyload90, -9223372036854775808, !dbg !19866
  br i1 %.not28.i, label %bb.s, label %bb.u, !dbg !19873

bb.s:                                             ; preds = %bb.r
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19874, !alias.scope !19716
  br label %bb.ad, !dbg !19875

bb.t:                                             ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !19876

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !19877, !noalias !19718
  store i64 %.sroa.6.8.copyload90, ptr %i.ao, align 8, !dbg !19877, !noalias !19718
  %.sroa.315.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !19877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.315.0..sroa_idx16.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1091, i64 16, i1 false), !dbg !19877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !19878, !noalias !19718
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.1091, i64 16, !dbg !19878 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !dbg !19878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !19879, !noalias !19718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false), !dbg !19879
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !19880
  %.val40.i = load i64, ptr %i.cb, align 8, !dbg !19880, !noalias !19718, !noundef !1416 ; 2 uses
  %i.cc = icmp ult i64 %.val40.i, 64051194700380388, !dbg !19881
  call void @llvm.assume(i1 %i.cc), !dbg !19882
  %i.cd = icmp eq i64 %.val40.i, 0, !dbg !19883
  br i1 %i.cd, label %bb.w, label %bb.v, !dbg !19884

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !19885, !noalias !19718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !19885, !noalias !19718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.aj, ptr noundef nonnull align 8 dereferenceable(248) %i.at, i64 248, i1 false), !dbg !19885, !noalias !19718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !19886, !noalias !19718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %i.ai, ptr noundef nonnull align 16 dereferenceable(384) %i.ar, i64 384, i1 false), !dbg !19886, !noalias !19718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !19887, !noalias !19718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !dbg !19887, !noalias !19718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !19888, !noalias !19718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !dbg !19888
  invoke fastcc void @_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext24finish_decorrelated_join(ptr noalias noundef align 16 captures(address) dereferenceable(384) %i.ak, ptr noalias noundef align 8 captures(address) dereferenceable(248) %i.aj, ptr noundef nonnull align 16 %2, ptr noalias noundef align 16 captures(address) dereferenceable(384) %i.ai, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef align 8 captures(address) dereferenceable(24) %.sroa.11, i1 noundef zeroext %i.bh)
          to label %bb.x unwind label %bb.t, !dbg !19889

bb.w:                                             ; preds = %bb.u
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19890, !alias.scope !19716
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.am)
          to label %bb.z unwind label %bb.ag, !dbg !19876, !noalias !19716, !inline_history !19344

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !19891, !noalias !19718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !19891, !noalias !19718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !19891, !noalias !19718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !19891, !noalias !19718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %0, ptr noundef nonnull align 16 dereferenceable(384) %i.ak, i64 384, i1 false), !dbg !19892, !noalias !19729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !19893, !noalias !19718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !19876, !noalias !19718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !19876, !noalias !19718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !19876, !noalias !19718
  call void @llvm.experimental.noalias.scope.decl(metadata !19730), !dbg !19856
  call void @llvm.experimental.noalias.scope.decl(metadata !19731), !dbg !19894, !noalias !19716
  %i.ce = load ptr, ptr %i.aq, align 8, !dbg !19895, !alias.scope !19732, !noalias !19716, !nonnull !1416, !noundef !1416
  %i.cf = atomicrmw add ptr %i.ce, i64 -1 release, align 8, !dbg !19896, !noalias !19733
  %i.cg = icmp eq i64 %i.cf, 1, !dbg !19897
  br i1 %i.cg, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit13, !dbg !19897

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !19898, !noalias !19716
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit13 unwind label %.split197, !dbg !19899

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit15: ; preds = %bb.m, %bb.n
  br i1 %.sroa.024.2.i, label %bb.an, label %bb.aj, !dbg !19856

.split197:                                        ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj, !dbg !19856

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit13: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !19856, !noalias !19718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !19856, !noalias !19718
  %i.ci = getelementptr inbounds nuw i8, ptr %i.as, i64 32, !dbg !19900
  call void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.as, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef 24, i64 noundef 16), !dbg !19901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !19856, !noalias !19718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !19845, !noalias !19718
  br label %_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext26try_rewrite_exists_as_join.exit, !dbg !19902

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !19876, !noalias !19718
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.an)
          to label %bb.ab unwind label %bb.aa, !dbg !19876, !noalias !19716, !inline_history !19344

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !19876, !noalias !19718
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.ao)
          to label %bb.ac unwind label %bb.o, !dbg !19876, !noalias !19716, !inline_history !19344

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !19876, !noalias !19718
  br label %bb.ad, !dbg !19903

bb.ad:                                            ; preds = %bb.ai, %bb.ac, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !19735), !dbg !19856
  call void @llvm.experimental.noalias.scope.decl(metadata !19736), !dbg !19904, !noalias !19716
  %i.ck = load ptr, ptr %i.aq, align 8, !dbg !19905, !alias.scope !19737, !noalias !19716, !nonnull !1416, !noundef !1416
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !dbg !19906, !noalias !19738
  %i.cm = icmp eq i64 %i.cl, 1, !dbg !19907
  br i1 %i.cm, label %bb.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit, !dbg !19907

bb.ae:                                            ; preds = %bb.ad
  fence acquire, !dbg !19908, !noalias !19716
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit unwind label %.split197.thread, !dbg !19909

.split197.thread:                                 ; preds = %bb.ae
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.an, !dbg !19856

bb.af:                                            ; preds = %bb.n, %bb.aj, %bb.ap, %bb.an, %bb.ah, %bb.ag
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !19910, !noalias !19716, !inline_history !19344
  unreachable, !dbg !19910

bb.ag:                                            ; preds = %bb.w
end_hunk_0
begin_hunk_1_@_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext29try_rewrite_subquery_conjunct:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %i.bp, i64 72, i1 false), !dbg !19919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !19851, !noalias !19718
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false), !dbg !19851
  store i64 -9223372036854775777, ptr %0, align 16, !dbg !19920, !alias.scope !19744, !noalias !19729
  br label %bb.am, !dbg !19917

common.resume:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit54, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit9, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %.pn36.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit9 ], [ %.pn38.i194, %bb.ap ], [ %.pn87.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit54 ]
  resume { ptr, i32 } %common.resume.op, !dbg !19921

bb.ap:                                            ; preds = %.split.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit9
  %.pn38.i194 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn36.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit9 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshquuC4dCYVj_10polars_sql7context10SQLContextEBK_(ptr noalias noundef align 8 dereferenceable(248) %i.at) #41
          to label %common.resume unwind label %bb.af, !dbg !19845, !noalias !19716, !inline_history !19344

bb.aq:                                            ; preds = %bb.c
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !19922
  %i.cw = load ptr, ptr %i.cv, align 8, !dbg !19922, !nonnull !1416, !noundef !1416
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !19923
  %i.cy = load ptr, ptr %i.cx, align 8, !dbg !19923, !nonnull !1416, !noundef !1416
  %i.cz = xor i1 %4, %i.bb, !dbg !19924
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19745), !dbg !19925
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.321.i)
  %i.da = tail call noundef align 8 ptr @_RNvNtCshquuC4dCYVj_10polars_sql8subquery24eligible_subquery_select(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.cy), !dbg !19926, !noalias !19746, !inline_history !19437 ; 7 uses
  %.not.i4 = icmp eq ptr %i.da, null, !dbg !19926
  br i1 %.not.i4, label %bb.as, label %bb.ar, !dbg !19927

bb.ar:                                            ; preds = %bb.aq
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1976, !dbg !19928
  %i.dc = load i64, ptr %i.db, align 8, !dbg !19928, !range !1706, !noalias !19745, !noundef !1416
  %i.dd = icmp sgt i64 %i.dc, -1
  br i1 %i.dd, label %bb.au, label %bb.at, !dbg !19929

bb.as:                                            ; preds = %bb.aq
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19930, !alias.scope !19745
  br label %_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext31try_rewrite_in_subquery_as_join.exit, !dbg !19931

bb.at:                                            ; preds = %bb.ar
  %i.de = getelementptr i8, ptr %i.da, i64 1712, !dbg !19932
  %.val97.i = load ptr, ptr %i.de, align 8, !dbg !19932, !noalias !19745, !nonnull !1416, !noundef !1416 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 1720, !dbg !19932
  %.val98.i = load i64, ptr %i.df, align 8, !dbg !19932, !noalias !19745, !noundef !1416
  %i.dg = icmp eq i64 %.val98.i, 1, !dbg !19933
  br i1 %i.dg, label %bb.av, label %bb.aw, !dbg !19933

bb.au:                                            ; preds = %bb.ar
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19934, !alias.scope !19745
  br label %_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext31try_rewrite_in_subquery_as_join.exit, !dbg !19935

bb.av:                                            ; preds = %bb.at
  %i.dh = load i64, ptr %.val97.i, align 8, !dbg !19936, !range !1704, !noalias !19745, !noundef !1416 ; 2 uses
  %i.di = icmp ne i64 %i.dh, 6, !dbg !19936
  tail call void @llvm.assume(i1 %i.di), !dbg !19936
  %i.dj = add nsw i64 %i.dh, -3, !dbg !19936
  %switch.i = icmp ult i64 %i.dj, 2, !dbg !19936
  br i1 %switch.i, label %bb.ax, label %bb.aw, !dbg !19933

bb.aw:                                            ; preds = %bb.av, %bb.at
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19937, !alias.scope !19745
  br label %_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext31try_rewrite_in_subquery_as_join.exit, !dbg !19938

bb.ax:                                            ; preds = %bb.av
  %.sroa.07.0.i = getelementptr inbounds nuw i8, ptr %.val97.i, i64 8, !dbg !19939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !19940, !noalias !19749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !19941, !noalias !19749
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.098), !dbg !19941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !19941, !noalias !19749
  call void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.cw, ptr noalias noundef nonnull align 8 dereferenceable(248) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) dereferenceable_or_null(64) %5), !dbg !19941, !noalias !19745, !inline_history !19437
  call void @llvm.experimental.noalias.scope.decl(metadata !19750), !dbg !19941
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ad, i64 112, !dbg !19942
  %i.dl = load i64, ptr %i.dk, align 16, !dbg !19942, !range !1820, !alias.scope !19751, !noalias !19749, !noundef !1416 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, -9223372036854775780, !dbg !19942
  br i1 %i.dm, label %bb.ay, label %bb.az, !dbg !19943

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.098, ptr noundef nonnull align 16 dereferenceable(72) %i.ad, i64 72, i1 false), !dbg !19944, !alias.scope !19752, !noalias !19749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !19945, !noalias !19749
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dn, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.098, i64 72, i1 false), !dbg !19945, !noalias !19753
  store i64 -9223372036854775777, ptr %0, align 16, !dbg !19946, !alias.scope !19754, !noalias !19753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !19947, !noalias !19749
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.098), !dbg !19948
  br label %bb.fd, !dbg !19949

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.098, ptr noundef nonnull align 16 dereferenceable(112) %i.ad, i64 112, i1 false), !dbg !19950, !alias.scope !19752, !noalias !19749
  %.sroa.9.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.ad, i64 120, !dbg !19950
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 120, !dbg !19951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx102, i64 24, i1 false), !dbg !19950, !noalias !19749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !19945, !noalias !19749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ae, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.098, i64 112, i1 false), !dbg !19941, !noalias !19749
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 112, !dbg !19951
  store i64 %i.dl, ptr %.sroa.4104.0..sroa_idx, align 16, !dbg !19951, !alias.scope !19756, !noalias !19749
  call void @_RNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl4metaNtB2_13MetaNameSpace12undo_aliases(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.af, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.ae), !dbg !19952, !noalias !19745, !inline_history !19437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !19947, !noalias !19749
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.098), !dbg !19948
  %i.do = invoke noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtBR_7context10SQLContext31try_rewrite_in_subquery_as_join0EBR_(ptr noundef nonnull align 16 %i.af)
          to label %bb.bb unwind label %bb.ba, !dbg !19953, !noalias !19745, !inline_history !19437

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit54: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringIBH_B1l_B1l_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEB29_EECshquuC4dCYVj_10polars_sql.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringIBH_B1l_B1l_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEB29_EECshquuC4dCYVj_10polars_sql.exit29, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringIBH_B1l_B1l_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEB29_EECshquuC4dCYVj_10polars_sql.exit58, %bb.be, %bb.ba
  %.pn87.i = phi { ptr, i32 } [ %i.dp, %bb.ba ], [ %.pn63.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringIBH_B1l_B1l_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEB29_EECshquuC4dCYVj_10polars_sql.exit58 ], [ %.pn85.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringIBH_B1l_B1l_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEB29_EECshquuC4dCYVj_10polars_sql.exit29 ], [ %i.dr, %bb.be ], [ %.pn73.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringIBH_B1l_B1l_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEB29_EECshquuC4dCYVj_10polars_sql.exit ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.af) #41
          to label %common.resume unwind label %bb.dr, !dbg !19954, !noalias !19745, !inline_history !19437

bb.ba:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringIBH_B1l_B1l_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEB29_EECshquuC4dCYVj_10polars_sql.exit56, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringIBH_B1l_B1l_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEB29_EECshquuC4dCYVj_10polars_sql.exit27, %bb.bj, %bb.bh, %bb.bg, %bb.az
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit54

bb.bb:                                            ; preds = %bb.az
  br i1 %i.do, label %bb.bc, label %bb.bd, !dbg !19953

bb.bc:                                            ; preds = %bb.bi, %bb.bb
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19955, !alias.scope !19745
  br label %bb.ew, !dbg !19956

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !19957, !noalias !19749
  store i64 0, ptr %i.ac, align 8, !dbg !19958, !alias.scope !19758, !noalias !19749
  %.sroa.016.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !19958
  store i64 0, ptr %.sroa.016.sroa.5.0..sroa_idx.i, align 8, !dbg !19958, !alias.scope !19758, !noalias !19749
  %.sroa.016.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !19958
  store ptr %i.af, ptr %.sroa.016.sroa.7.0..sroa_idx.i, align 8, !dbg !19958, !alias.scope !19758, !noalias !19749
  %.sroa.016.sroa.7.sroa.4.0..sroa.016.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40, !dbg !19958
  store <2 x i32> splat (i32 1), ptr %.sroa.016.sroa.7.sroa.4.0..sroa.016.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !dbg !19958, !alias.scope !19758, !noalias !19749
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 71, !dbg !19958
  store i8 -37, ptr %.sroa.517.0..sroa_idx.i, align 1, !dbg !19958, !alias.scope !19758, !noalias !19749
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 95, !dbg !19958
  store i8 -37, ptr %.sroa.719.0..sroa_idx.i, align 1, !dbg !19958, !alias.scope !19758, !noalias !19749
  %i.dq = invoke fastcc noundef zeroext i1 @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapIB4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterINtNtBc_6option6OptionRNtNtNtB19_3dsl4expr4ExprENCNvNtB19_5utils30expr_to_leaf_column_exprs_iter0EIB1Z_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvB2O_30expr_to_leaf_column_names_iter0ENtNtNtBa_6traits8iterator8Iterator3allNCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB5S_7context10SQLContext31try_rewrite_in_subquery_as_joins_0EB5S_(ptr noalias noundef align 8 dereferenceable(96) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %5)
          to label %bb.bf unwind label %bb.be, !dbg !19959, !noalias !19745, !inline_history !19437

bb.be:                                            ; preds = %bb.bd
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapIBH_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterINtNtB4_6option6OptionRNtNtNtB1w_3dsl4expr4ExprENCNvNtB1w_5utils30expr_to_leaf_column_exprs_iter0EIB2m_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvB3b_30expr_to_leaf_column_names_iter0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(96) %i.ac) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit54 unwind label %bb.dr, !dbg !19960, !noalias !19745, !inline_history !19437

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.dq, label %bb.bh, label %bb.bg, !dbg !19957

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapIBH_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterINtNtB4_6option6OptionRNtNtNtB1w_3dsl4expr4ExprENCNvNtB1w_5utils30expr_to_leaf_column_exprs_iter0EIB2m_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvB3b_30expr_to_leaf_column_names_iter0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(96) %i.ac)
          to label %bb.bi unwind label %bb.ba, !dbg !19960, !noalias !19745, !inline_history !19437

bb.bh:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapIBH_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterINtNtB4_6option6OptionRNtNtNtB1w_3dsl4expr4ExprENCNvNtB1w_5utils30expr_to_leaf_column_exprs_iter0EIB2m_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvB3b_30expr_to_leaf_column_names_iter0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(96) %i.ac)
          to label %bb.bj unwind label %bb.ba, !dbg !19960, !noalias !19745, !inline_history !19437

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !19960, !noalias !19749
  br label %bb.bc, !dbg !19961

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !19960, !noalias !19749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !19962, !noalias !19749
  invoke fastcc void @_RNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5_10SQLContext8isolated(ptr noalias noundef align 8 captures(none) dereferenceable(248) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1)
          to label %bb.bk unwind label %bb.ba, !dbg !19963, !noalias !19745, !inline_history !19437

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !19964, !noalias !19749
  %i.ds = getelementptr i8, ptr %i.da, i64 1744, !dbg !19965
  %.val96.i = load i64, ptr %i.ds, align 8, !dbg !19965, !noalias !19745, !noundef !1416
  %.not.i.i84 = icmp eq i64 %.val96.i, 0, !dbg !19966
  br i1 %.not.i.i84, label %bb.bl, label %_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit86, !dbg !19966

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #47
          to label %.noexc85 unwind label %bb.bn, !dbg !19966

.noexc85:                                         ; preds = %bb.bl
  unreachable, !dbg !19966

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit44: ; preds = %bb.ee, %bb.bn
  %.sroa.034.0.i = phi i8 [ %.sroa.034.1.i, %bb.bn ], [ %.sroa.034.16.i, %bb.ee ], !dbg !19967
  %.pn73.i = phi { ptr, i32 } [ %i.dx, %bb.bn ], [ %.pn71.i, %bb.ee ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ab, i64 64, !dbg !19968 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19759), !dbg !19968
  call void @llvm.experimental.noalias.scope.decl(metadata !19760), !dbg !19969, !noalias !19745
  %i.du = load ptr, ptr %i.dt, align 8, !dbg !19970, !alias.scope !19761, !noalias !19745, !nonnull !1416, !noundef !1416
  %i.dv = atomicrmw add ptr %i.du, i64 -1 release, align 8, !dbg !19971, !noalias !19762
  %i.dw = icmp eq i64 %i.dv, 1, !dbg !19972
  br i1 %i.dw, label %bb.bm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtBL_6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECshquuC4dCYVj_10polars_sql.exit83, !dbg !19972

bb.bm:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit44
  fence acquire, !dbg !19973, !noalias !19745
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtB7_6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE9drop_slowCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dt) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtBL_6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEEECshquuC4dCYVj_10polars_sql.exit83 unwind label %bb.dr, !dbg !19974

bb.bn:                                            ; preds = %bb.bl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit76, %bb.dz, %_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit86
  %.sroa.034.1.i = phi i8 [ 1, %bb.bl ], [ %.sroa.034.14.i, %bb.dz ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit76 ], [ 1, %_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit86 ], !dbg !19975
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit44

_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit86: ; preds = %bb.bk
  %i.dy = getelementptr i8, ptr %i.da, i64 1736, !dbg !19965
  %.val95.i = load ptr, ptr %i.dy, align 8, !dbg !19965, !noalias !19745, !nonnull !1416, !noundef !1416
  invoke fastcc void @_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext21resolve_subquery_from(ptr noalias noundef align 16 captures(address) dereferenceable(432) %i.x, ptr noalias noundef align 8 dereferenceable(248) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1360) %.val95.i)
          to label %bb.bo unwind label %bb.bn, !dbg !19976, !noalias !19745, !inline_history !19437

bb.bo:                                            ; preds = %_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCshquuC4dCYVj_10polars_sql.exit86
  call void @llvm.experimental.noalias.scope.decl(metadata !19763), !dbg !19964
  %i.dz = load i64, ptr %i.x, align 16, !dbg !19977, !range !1829, !alias.scope !19764, !noalias !19749, !noundef !1416 ; 3 uses
  %i.ea = icmp eq i64 %i.dz, -9223372036854775777, !dbg !19977
  %i.eb = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !19978 ; 2 uses
  br i1 %i.ea, label %bb.ej, label %bb.bp, !dbg !19979

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %.sroa.7107, ptr noundef nonnull align 8 dereferenceable(416) %i.eb, i64 416, i1 false), !dbg !19980
  %.sroa.10108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 424, !dbg !19980
  %.sroa.10108.0.copyload = load ptr, ptr %.sroa.10108.0..sroa_idx, align 8, !dbg !19980, !alias.scope !19765, !noalias !19749 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !19981, !noalias !19749
  %.not46.i = icmp eq i64 %i.dz, -9223372036854775778, !dbg !19964
  br i1 %.not46.i, label %bb.bq, label %bb.bu, !dbg !19982

bb.bq:                                            ; preds = %bb.bp
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !19983, !alias.scope !19745
  br label %bb.eg, !dbg !19984

bb.br:                                            ; preds = %bb.bz, %bb.bt
  %.sroa.029.0.i = phi i8 [ %.sroa.034.3.i, %bb.bt ], [ %.sroa.029.2.i, %bb.bz ], !dbg !19985 ; 2 uses
  %.sroa.034.2.i = phi i8 [ %.sroa.034.3.i, %bb.bt ], [ %.sroa.034.4.i, %bb.bz ], !dbg !19967 ; 2 uses
  %.pn67.i = phi { ptr, i32 } [ %i.ef, %bb.bt ], [ %.pn65.i, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19766), !dbg !19986
  call void @llvm.experimental.noalias.scope.decl(metadata !19767), !dbg !19987, !noalias !19745
  %i.ec = load ptr, ptr %i.y, align 8, !dbg !19988, !alias.scope !19768, !noalias !19745, !nonnull !1416, !noundef !1416
  %i.ed = atomicrmw add ptr %i.ec, i64 -1 release, align 8, !dbg !19989, !noalias !19769
  %i.ee = icmp eq i64 %i.ed, 1, !dbg !19990
  br i1 %i.ee, label %bb.bs, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit80, !dbg !19990

bb.bs:                                            ; preds = %bb.br
  fence acquire, !dbg !19991, !noalias !19745
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit80 unwind label %bb.dr, !dbg !19992

bb.bt:                                            ; preds = %bb.df, %bb.db, %bb.bx, %bb.bu
  %.sroa.034.3.i = phi i8 [ 1, %bb.bu ], [ %.sroa.034.11.i, %bb.db ], [ 0, %bb.df ], [ 1, %bb.bx ], !dbg !19975 ; 2 uses
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bu:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !19993, !noalias !19749
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.7107, i64 376, !dbg !19993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %i.eg, i64 40, i1 false), !dbg !19993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !19985, !noalias !19749
  store i64 %i.dz, ptr %i.z, align 16, !dbg !19985, !noalias !19749
  %.sroa.3.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !19985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.3.0..sroa_idx14.i, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.7107, i64 376, i1 false), !dbg !19985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !19994, !noalias !19749
  store ptr %.sroa.10108.0.copyload, ptr %i.y, align 8, !dbg !19994, !noalias !19749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !19995, !noalias !19749
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10108.0.copyload) ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.10108.0.copyload, i64 16, !dbg !19996
  invoke fastcc void @_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext25try_parse_inner_only_expr(ptr noalias noundef align 16 captures(address) dereferenceable(144) %i.w, ptr noalias noundef align 8 dereferenceable(248) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.07.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %5)
          to label %bb.bv unwind label %bb.bt, !dbg !19997, !inline_history !19437

bb.bv:                                            ; preds = %bb.bu
  %i.ei = getelementptr inbounds nuw i8, ptr %i.w, i64 112, !dbg !19998
  %i.ej = load i64, ptr %i.ei, align 16, !dbg !19998, !range !1698, !alias.scope !19770, !noalias !19749, !noundef !1416 ; 3 uses
  %i.ek = icmp eq i64 %i.ej, -9223372036854775779, !dbg !19998
  br i1 %i.ek, label %bb.ed, label %bb.bw, !dbg !19999

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0112, ptr noundef nonnull align 16 dereferenceable(112) %i.w, i64 112, i1 false), !dbg !20000
  %.sroa.11113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 120, !dbg !20000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.321.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11113.0..sroa_idx, i64 24, i1 false), !dbg !20000, !noalias !19749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !20001, !noalias !19749
  %.not47.i = icmp eq i64 %i.ej, -9223372036854775780, !dbg !19995
  br i1 %.not47.i, label %bb.eb, label %bb.bx, !dbg !20002

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !20003, !noalias !19749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.u, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0112, i64 112, i1 false), !dbg !20004
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 120, !dbg !20005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5111.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.321.i, i64 24, i1 false), !dbg !20004, !noalias !19749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !20006, !noalias !19749
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 112, !dbg !20005
  store i64 %i.ej, ptr %.sroa.4110.0..sroa_idx, align 16, !dbg !20005, !alias.scope !19771, !noalias !19749
  invoke void @_RNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl4metaNtB2_13MetaNameSpace12undo_aliases(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.v, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.u)
          to label %bb.by unwind label %bb.bt, !dbg !20007, !noalias !19745, !inline_history !19437

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !20008, !noalias !19749
  %i.el = getelementptr inbounds nuw i8, ptr %i.da, i64 360, !dbg !20009 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !dbg !20009, !range !1593, !noalias !19745, !noundef !1416
  %.not48.i = icmp eq i64 %i.em, 69, !dbg !20009
  br i1 %.not48.i, label %bb.cb, label %bb.cc, !dbg !20010

bb.bz:                                            ; preds = %bb.dv, %bb.ds, %bb.ca
  %.sroa.029.2.i = phi i8 [ 1, %bb.ca ], [ %.sroa.029.3.i, %bb.dv ], [ %.sroa.029.3.i, %bb.ds ], !dbg !20011
  %.sroa.034.4.i = phi i8 [ 1, %bb.ca ], [ %.sroa.034.5.i, %bb.dv ], [ %.sroa.034.5.i, %bb.ds ], !dbg !19975
  %.pn65.i = phi { ptr, i32 } [ %i.en, %bb.ca ], [ %.pn55.i, %bb.dv ], [ %.pn55.i, %bb.ds ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.v) #41
          to label %bb.br unwind label %bb.dr, !dbg !20012, !noalias !19745, !inline_history !19437

bb.ca:                                            ; preds = %bb.cc
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.cb:                                            ; preds = %bb.ce, %bb.by
  %.sroa.7116.sroa.0.0 = phi i64 [ 0, %bb.by ], [ %.sroa.10123.sroa.8.sroa.0.0.copyload185, %bb.ce ], !dbg !20013
  %.sroa.7116.sroa.5.0 = phi i64 [ 0, %bb.by ], [ %.sroa.10123.sroa.8.sroa.8.0.copyload187, %bb.ce ], !dbg !20013
  %.sroa.10118.sroa.0.0 = phi i64 [ 0, %bb.by ], [ %.sroa.10123.sroa.10.sroa.0.0.copyload181, %bb.ce ], !dbg !20013
  %.sroa.0136.0.copyload = phi i64 [ 0, %bb.by ], [ %.sroa.10123.sroa.10.sroa.8.0.copyload183, %bb.ce ], !dbg !20013 ; 2 uses
  %.sroa.5138.0.copyload = phi i64 [ 0, %bb.by ], [ %.sroa.10123.sroa.12.0.copyload134, %bb.ce ], !dbg !20013 ; 3 uses
  %.sroa.4137.0.copyload = phi ptr [ inttoptr (i64 16 to ptr), %bb.by ], [ %.sroa.10123.sroa.11.0.copyload132, %bb.ce ], !dbg !20013 ; 4 uses
  %.sroa.9117.0 = phi ptr [ inttoptr (i64 16 to ptr), %bb.by ], [ %.sroa.10123.sroa.9.0.copyload130, %bb.ce ], !dbg !20013
  %.sroa.5115.0 = phi ptr [ inttoptr (i64 16 to ptr), %bb.by ], [ %.sroa.10123.sroa.0.0.copyload128, %bb.ce ], !dbg !20013
  %.sroa.0114.0 = phi i64 [ 0, %bb.by ], [ %.sroa.6120.8.copyload122, %bb.ce ], !dbg !20013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !20014, !noalias !19749
  store i64 %.sroa.0114.0, ptr %i.t, align 8, !dbg !20014, !noalias !19749
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !20014
  store ptr %.sroa.5115.0, ptr %.sroa.5115.0..sroa_idx, align 8, !dbg !20014, !noalias !19749
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !20014
  store i64 %.sroa.7116.sroa.0.0, ptr %.sroa.7116.0..sroa_idx, align 8, !dbg !20014, !noalias !19749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !20015, !noalias !19749
  store i64 %.sroa.7116.sroa.5.0, ptr %i.s, align 8, !dbg !20015, !noalias !19749
  %.sroa.9117.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !20015
  store ptr %.sroa.9117.0, ptr %.sroa.9117.24..sroa_idx, align 8, !dbg !20015, !noalias !19749
  %.sroa.10118.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !20015
  store i64 %.sroa.10118.sroa.0.0, ptr %.sroa.10118.24..sroa_idx, align 8, !dbg !20015, !noalias !19749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !20016, !noalias !19749
  store i64 %.sroa.0136.0.copyload, ptr %i.r, align 8, !dbg !20016, !noalias !19749
  %.sroa.12.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !20016
  store ptr %.sroa.4137.0.copyload, ptr %.sroa.12.48..sroa_idx, align 8, !dbg !20016, !noalias !19749
  %.sroa.13.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !20016
  store i64 %.sroa.5138.0.copyload, ptr %.sroa.13.48..sroa_idx, align 8, !dbg !20016, !noalias !19749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !20017, !noalias !19749
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.ci unwind label %bb.ch, !dbg !20018, !noalias !19745, !inline_history !19437

bb.cc:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !20019, !noalias !19749
  %.val.i7 = load ptr, ptr %i.y, align 8, !dbg !20020, !noalias !19749, !nonnull !1416, !noundef !1416
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i7, i64 16, !dbg !20021
  invoke fastcc void @_RNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB4_7context10SQLContext24split_subquery_conjuncts(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.q, ptr noalias noundef align 8 dereferenceable(248) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %5)
          to label %bb.cd unwind label %bb.ca, !dbg !20022, !inline_history !19437

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !19772), !dbg !20019
  %i.ep = load i64, ptr %i.q, align 8, !dbg !20023, !range !1568, !alias.scope !19773, !noalias !19749, !noundef !1416
  %i.eq = trunc nuw i64 %i.ep to i1, !dbg !20024
  %i.er = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !20025
  %.sroa.6120.8.copyload122 = load i64, ptr %i.er, align 8, !dbg !20025, !alias.scope !19774, !noalias !19749 ; 3 uses
  %.sroa.10123.8..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !20025
  %.sroa.10123.sroa.0.0.copyload128 = load ptr, ptr %.sroa.10123.8..sroa_idx125, align 8, !dbg !20025, !alias.scope !19774, !noalias !19749 ; 2 uses
  %.sroa.10123.sroa.8.0..sroa.10123.8..sroa_idx125.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !20025
  %.sroa.10123.sroa.8.sroa.0.0.copyload185 = load i64, ptr %.sroa.10123.sroa.8.0..sroa.10123.8..sroa_idx125.sroa_idx, align 8, !dbg !20025, !alias.scope !19774, !noalias !19749 ; 2 uses
  %.sroa.10123.sroa.8.sroa.8.0..sroa.10123.sroa.8.0..sroa.10123.8..sroa_idx125.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !20025
  %.sroa.10123.sroa.8.sroa.8.0.copyload187 = load i64, ptr %.sroa.10123.sroa.8.sroa.8.0..sroa.10123.sroa.8.0..sroa.10123.8..sroa_idx125.sroa_idx.sroa_idx, align 8, !dbg !20025, !alias.scope !19774, !noalias !19749 ; 2 uses
  %.sroa.10123.sroa.9.0..sroa.10123.8..sroa_idx125.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40, !dbg !20025
  %.sroa.10123.sroa.9.0.copyload130 = load ptr, ptr %.sroa.10123.sroa.9.0..sroa.10123.8..sroa_idx125.sroa_idx, align 8, !dbg !20025, !alias.scope !19774, !noalias !19749 ; 2 uses
  %.sroa.10123.sroa.10.0..sroa.10123.8..sroa_idx125.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48, !dbg !20025
  %.sroa.10123.sroa.10.sroa.0.0.copyload181 = load i64, ptr %.sroa.10123.sroa.10.0..sroa.10123.8..sroa_idx125.sroa_idx, align 8, !dbg !20025, !alias.scope !19774, !noalias !19749 ; 2 uses
  %.sroa.10123.sroa.10.sroa.8.0..sroa.10123.sroa.10.0..sroa.10123.8..sroa_idx125.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56, !dbg !20025
  %.sroa.10123.sroa.10.sroa.8.0.copyload183 = load i64, ptr %.sroa.10123.sroa.10.sroa.8.0..sroa.10123.sroa.10.0..sroa.10123.8..sroa_idx125.sroa_idx.sroa_idx, align 8, !dbg !20025, !alias.scope !19774, !noalias !19749 ; 2 uses
  %.sroa.10123.sroa.11.0..sroa.10123.8..sroa_idx125.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64, !dbg !20025
  %.sroa.10123.sroa.11.0.copyload132 = load ptr, ptr %.sroa.10123.sroa.11.0..sroa.10123.8..sroa_idx125.sroa_idx, align 8, !dbg !20025, !alias.scope !19774, !noalias !19749 ; 2 uses
  %.sroa.10123.sroa.12.0..sroa.10123.8..sroa_idx125.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 72, !dbg !20025
  %.sroa.10123.sroa.12.0.copyload134 = load i64, ptr %.sroa.10123.sroa.12.0..sroa.10123.8..sroa_idx125.sroa_idx, align 8, !dbg !20025, !alias.scope !19774, !noalias !19749 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !20026, !noalias !19749
  br i1 %i.eq, label %bb.dw, label %bb.ce, !dbg !20024

bb.ce:                                            ; preds = %bb.cd
  %.not49.i = icmp eq i64 %.sroa.6120.8.copyload122, -9223372036854775808, !dbg !20019
  br i1 %.not49.i, label %bb.cf, label %bb.cb, !dbg !20027

bb.cf:                                            ; preds = %bb.ce
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !20028, !alias.scope !19745
  br label %bb.db, !dbg !20029

bb.cg:                                            ; preds = %bb.cj, %bb.ch
  %.sroa.029.3.i = phi i8 [ %.sroa.043.1.i, %bb.ch ], [ %.sroa.029.5.i, %bb.cj ], !dbg !20030 ; 3 uses
  %.sroa.034.5.i = phi i8 [ %.sroa.043.1.i, %bb.ch ], [ %.sroa.034.7.i, %bb.cj ], !dbg !20031 ; 2 uses
  %.sroa.043.0.i = phi i8 [ %.sroa.043.1.i, %bb.ch ], [ %.sroa.043.2.i, %bb.cj ], !dbg !20032
  %.pn55.i = phi { ptr, i32 } [ %i.et, %bb.ch ], [ %.pn53.i, %bb.cj ] ; 2 uses
  %i.es = trunc nuw i8 %.sroa.029.3.i to i1, !dbg !20033
  br i1 %i.es, label %bb.dt, label %bb.ds, !dbg !20033

bb.ch:                                            ; preds = %bb.de, %bb.cz, %bb.cb
  %.sroa.043.1.i = phi i8 [ 0, %bb.de ], [ 0, %bb.cz ], [ 1, %bb.cb ], !dbg !20013 ; 3 uses
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ci:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !20034, !noalias !19749
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.cl unwind label %bb.ck, !dbg !20035, !noalias !19745, !inline_history !19437

bb.cj:                                            ; preds = %bb.cm, %bb.ck
  %.sroa.029.5.i = phi i8 [ %.sroa.043.3.i, %bb.ck ], [ %.sroa.029.7.i, %bb.cm ], !dbg !20030
  %.sroa.034.7.i = phi i8 [ %.sroa.043.3.i, %bb.ck ], [ %.sroa.034.9.i, %bb.cm ], !dbg !20031
  %.sroa.043.2.i = phi i8 [ %.sroa.043.3.i, %bb.ck ], [ %.sroa.043.4.i, %bb.cm ], !dbg !20032
  %.pn53.i = phi { ptr, i32 } [ %i.eu, %bb.ck ], [ %.pn.pn.pn.i, %bb.cm ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.p) #41
          to label %bb.cg unwind label %bb.dr, !dbg !20036, !noalias !19745, !inline_history !19437
end_hunk_1
begin_hunk_2_@_RNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5_10SQLContext13process_query:bb.a
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECshquuC4dCYVj_10polars_sql.exit164 unwind label %bb.bq, !dbg !25044

bb.bw:                                            ; preds = %bb.cc, %bb.cf, %bb.cm, %bb.ht, %bb.mj, %bb.by
  %.sroa.029.1.i = phi i8 [ 1, %bb.cf ], [ %.sroa.029.42.i, %bb.mj ], [ 0, %bb.ht ], [ 1, %bb.by ], [ 1, %bb.cm ], [ 1, %bb.cc ], !dbg !25042
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit156

bb.bx:                                            ; preds = %bb.bm
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !25045 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !25046
  %.val143.i = load i64, ptr %i.nz, align 8, !dbg !25046, !alias.scope !24312, !noundef !1416
  %i.oa = icmp eq i64 %.val143.i, 0, !dbg !25047
  br i1 %i.oa, label %bb.cm, label %bb.by, !dbg !25045

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs), !dbg !25048, !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr), !dbg !25049, !noalias !24366
  %.val120.i = load ptr, ptr %i.mx, align 8, !dbg !25049, !alias.scope !24313, !nonnull !1416, !noundef !1416
  %.val121.i = load i64, ptr %i.mu, align 8, !dbg !25049, !alias.scope !24313, !noundef !1416
  %.not.i161 = icmp eq i64 %.val121.i, 0, !dbg !25050
  %..i162 = select i1 %.not.i161, ptr null, ptr %.val120.i, !dbg !25051
  call void @llvm.experimental.noalias.scope.decl(metadata !24381), !dbg !25052
  store i64 1, ptr %i.gr, align 8, !dbg !25053, !alias.scope !24382, !noalias !24366
  %.sroa.4331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 8, !dbg !25053
  store ptr %..i162, ptr %.sroa.4331.0..sroa_idx, align 8, !dbg !25053, !alias.scope !24382, !noalias !24366
  %.sroa.5332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 16, !dbg !25053
  store ptr null, ptr %.sroa.5332.0..sroa_idx, align 8, !dbg !25053, !alias.scope !24382, !noalias !24366
  %.sroa.7334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 32, !dbg !25053
  store ptr null, ptr %.sroa.7334.0..sroa_idx, align 8, !dbg !25053, !alias.scope !24382, !noalias !24366
  %.sroa.4.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.gr, i64 48, !dbg !25053
  store ptr null, ptr %.sroa.4.0..sroa_idx.i157, align 8, !dbg !25053, !alias.scope !24384, !noalias !24366
  %.sroa.6.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.gr, i64 64, !dbg !25053
  store ptr null, ptr %.sroa.6.0..sroa_idx.i158, align 8, !dbg !25053, !alias.scope !24384, !noalias !24366
  invoke fastcc void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlattenINtNtB8_10filter_map9FilterMapINtB6_7FlatMapINtNtBc_6option8IntoIterRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsEINtNtNtBc_5slice4iter4IterNtB28_4JoinENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3L_10SQLContext14execute_select0ENCB3F_s_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEB3N_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.gs, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.gr)
          to label %bb.bz unwind label %bb.bw, !dbg !25054, !noalias !24311, !inline_history !22739

.loopexit.split-lp897.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ch, %bb.cb
  %lpad.loopexit.split-lp1076 = landingpad { ptr, i32 }
          cleanup
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gs, i64 32, !dbg !25055
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ob, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit156 unwind label %bb.bq, !dbg !25056

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !dbg !25057, !noalias !24366
  %i.oc = getelementptr i8, ptr %i.hm, i64 1712, !dbg !25058
  %.val147.i = load ptr, ptr %i.oc, align 8, !dbg !25058, !alias.scope !24313, !nonnull !1416, !noundef !1416 ; 2 uses
  %i.od = getelementptr i8, ptr %i.hm, i64 1720, !dbg !25058
  %.val148.i = load i64, ptr %i.od, align 8, !dbg !25058, !alias.scope !24313, !noundef !1416 ; 2 uses
  %.idx = mul nuw nsw i64 %.val148.i, 776, !dbg !25059
  %i.oe = getelementptr inbounds nuw i8, ptr %.val147.i, i64 %.idx, !dbg !25059
  %i.of = icmp eq i64 %.val148.i, 0, !dbg !25060
  br i1 %i.of, label %._crit_edge, label %.lr.ph, !dbg !25061

.lr.ph:                                           ; preds = %bb.bz
  %i.og = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  br label %bb.ca, !dbg !25061

bb.ca:                                            ; preds = %.lr.ph, %bb.cg
  %.sroa.0342.0923 = phi ptr [ %.val147.i, %.lr.ph ], [ %i.oh, %bb.cg ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0342.0923, i64 776, !dbg !25062 ; 2 uses
  %i.oi = load i64, ptr %.sroa.0342.0923, align 8, !dbg !25063, !range !1704, !noalias !24311, !noundef !1416 ; 2 uses
  %i.oj = icmp ne i64 %i.oi, 6, !dbg !25063
  call void @llvm.assume(i1 %i.oj), !dbg !25063
  %i.ok = add nsw i64 %i.oi, -3, !dbg !25063
  %switch.i = icmp ult i64 %i.ok, 2, !dbg !25063
  br i1 %switch.i, label %bb.ch, label %bb.cg, !dbg !25064

._crit_edge:                                      ; preds = %bb.cg, %bb.bz
  %i.ol = getelementptr inbounds nuw i8, ptr %i.hm, i64 360, !dbg !25065 ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !dbg !25065, !range !1593, !alias.scope !24313, !noundef !1416
  %.not55.i = icmp eq i64 %i.om, 69, !dbg !25065
  br i1 %.not55.i, label %bb.cc, label %bb.cb, !dbg !25066

bb.cb:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp), !dbg !25067, !noalias !24366
  %.val.i150 = load ptr, ptr %.sroa.3.0..sroa_idx2.i, align 8, !dbg !25068, !noalias !24385, !nonnull !1416, !noundef !1416
  %i.on = getelementptr inbounds nuw i8, ptr %i.gz, i64 16, !dbg !25068
  %.val1.i151 = load i64, ptr %i.on, align 8, !dbg !25068, !noalias !24385, !noundef !1416
  invoke void @_RNvNtCshquuC4dCYVj_10polars_sql12sql_visitors31check_for_ambiguous_column_refs(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.gp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ol, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ny, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i150, i64 noundef %.val1.i151, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gs)
          to label %_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects0_0B9_.exit153 unwind label %.loopexit.split-lp897.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !25069

bb.cc:                                            ; preds = %bb.cd, %._crit_edge
  %i.oo = getelementptr inbounds nuw i8, ptr %i.gs, i64 32, !dbg !25070
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.oo, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit149 unwind label %bb.bw, !dbg !25071

_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects0_0B9_.exit153: ; preds = %bb.cb
  %i.op = load i64, ptr %i.gp, align 8, !dbg !25072, !range !1812, !alias.scope !24386, !noalias !24366, !noundef !1416 ; 2 uses
  %.not.i146 = icmp eq i64 %i.op, 18, !dbg !25072
  br i1 %.not.i146, label %bb.cd, label %bb.ce, !dbg !25073

bb.cd:                                            ; preds = %_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects0_0B9_.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !dbg !25074, !noalias !24366
  br label %bb.cc, !dbg !25075

bb.ce:                                            ; preds = %_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects0_0B9_.exit153
  %.sroa.7352.0..sroa_idx353 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8, !dbg !25076
  %.sroa.4355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4355.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7352.0..sroa_idx353, i64 64, i1 false), !dbg !25076, !noalias !24324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !dbg !25074, !noalias !24366
  br label %bb.cf, !dbg !25078

bb.cf:                                            ; preds = %bb.cj, %bb.ce
  %.sink = phi i64 [ %i.ot, %bb.cj ], [ %i.op, %bb.ce ]
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25079
  store i64 %.sink, ptr %i.oq, align 8, !dbg !25079, !noalias !24324
  store i64 -9223372036854775778, ptr %0, align 16, !dbg !25079, !noalias !24324
  %i.or = getelementptr inbounds nuw i8, ptr %i.gs, i64 32, !dbg !25080
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.or, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit145 unwind label %bb.bw, !dbg !25081

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit149: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !dbg !25082, !noalias !24366
  br label %bb.cm, !dbg !25083

bb.cg:                                            ; preds = %bb.ci, %bb.ca
  %i.os = icmp eq ptr %i.oh, %i.oe, !dbg !25060
  br i1 %i.os, label %._crit_edge, label %bb.ca, !dbg !25061

bb.ch:                                            ; preds = %bb.ca
  %.sroa.05.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0342.0923, i64 8, !dbg !25084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !dbg !25085, !noalias !24366
  %.val.i142 = load ptr, ptr %.sroa.3.0..sroa_idx2.i, align 8, !dbg !25086, !noalias !24389, !nonnull !1416, !noundef !1416
  %.val1.i = load i64, ptr %i.og, align 8, !dbg !25086, !noalias !24389, !noundef !1416
  invoke void @_RNvNtCshquuC4dCYVj_10polars_sql12sql_visitors31check_for_ambiguous_column_refs(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.05.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ny, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i142, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gs)
          to label %_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects0_0B9_.exit unwind label %.loopexit.split-lp897.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !25087

_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects0_0B9_.exit: ; preds = %bb.ch
  %i.ot = load i64, ptr %i.gq, align 8, !dbg !25088, !range !1812, !alias.scope !24390, !noalias !24366, !noundef !1416 ; 2 uses
  %.not.i141 = icmp eq i64 %i.ot, 18, !dbg !25088
  br i1 %.not.i141, label %bb.ci, label %bb.cj, !dbg !25089

bb.ci:                                            ; preds = %_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects0_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !dbg !25090, !noalias !24366
  br label %bb.cg, !dbg !25091

bb.cj:                                            ; preds = %_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects0_0B9_.exit
  %.sroa.7346.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.gq, i64 8, !dbg !25092
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4349.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7346.0..sroa_idx347, i64 64, i1 false), !dbg !25092, !noalias !24324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !dbg !25090, !noalias !24366
  br label %bb.cf, !dbg !25078

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit145: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !dbg !25082, !noalias !24366
  br label %bb.ck, !dbg !25094

bb.ck:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit145
  %.sroa.029.2.i = phi i8 [ %.sroa.029.43.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECshquuC4dCYVj_10polars_sql.exit ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit145 ], !dbg !25026 ; 2 uses
  %i.ou = load i64, ptr %i.gz, align 8, !dbg !25095, !range !1569, !alias.scope !24392, !noalias !24311, !noundef !1416
  %i.ov = icmp eq i64 %i.ou, -9223372036854775808, !dbg !25095
  br i1 %i.ov, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECshquuC4dCYVj_10polars_sql.exit140, label %bb.cl, !dbg !25095

bb.cl:                                            ; preds = %bb.ck
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECshquuC4dCYVj_10polars_sql.exit140 unwind label %bb.hv, !dbg !25096

bb.cm:                                            ; preds = %bb.bm, %bb.bx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit149, %.thread
  %.val146.i = load i64, ptr %i.hb, align 8, !dbg !25097, !range !1593, !noalias !24366, !noundef !1416
  %.not = icmp eq i64 %.val146.i, 69, !dbg !25098
  %i.ow = getelementptr inbounds nuw i8, ptr %i.hm, i64 360, !dbg !25099
  %.sroa.06.0.i = select i1 %.not, ptr %i.ow, ptr %i.hb, !dbg !25099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go), !dbg !25100, !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn), !dbg !25101, !noalias !24366
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25102 ; 3 uses
  invoke void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenasNtB4_9LazyFrame18schema_with_arenas(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.gn, ptr noalias noundef nonnull align 16 dereferenceable(384) %i.ha, ptr noalias noundef nonnull align 8 dereferenceable(248) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ox)
          to label %_RNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5_10SQLContext16get_frame_schema.exit138 unwind label %bb.bw, !dbg !25103

_RNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5_10SQLContext16get_frame_schema.exit138: ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !24393), !dbg !25101
  %i.oy = load i64, ptr %i.gn, align 8, !dbg !25104, !range !1812, !alias.scope !24394, !noalias !24366, !noundef !1416 ; 2 uses
  %.not.i135 = icmp eq i64 %i.oy, 18, !dbg !25104
  %i.oz = getelementptr inbounds nuw i8, ptr %i.gn, i64 8, !dbg !25105
  %i.pa = load ptr, ptr %i.oz, align 8, !dbg !25105, !alias.scope !24395, !noalias !24366 ; 4 uses
  br i1 %.not.i135, label %bb.cn, label %bb.ml, !dbg !25106

bb.cn:                                            ; preds = %_RNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5_10SQLContext16get_frame_schema.exit138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn), !dbg !25107, !noalias !24366
  store ptr %i.pa, ptr %i.go, align 8, !dbg !25108, !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7368), !dbg !25109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !dbg !25109, !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !dbg !25110, !noalias !24366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %i.gl, ptr noundef nonnull align 16 dereferenceable(384) %i.ha, i64 384, i1 false), !dbg !25110, !noalias !24366
  %i.pb = atomicrmw add ptr %i.pa, i64 1 monotonic, align 8, !dbg !25111, !noalias !24311
  %i.pc = icmp slt i64 %i.pb, 0, !dbg !25112
  br i1 %i.pc, label %bb.co, label %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !25112

bb.co:                                            ; preds = %bb.cn
  call void @llvm.trap(), !dbg !25113, !noalias !24311
  unreachable, !dbg !25113

bb.cp:                                            ; preds = %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEECshquuC4dCYVj_10polars_sql.exit, !dbg !25114

_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.cn
  invoke fastcc void @_RNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5_10SQLContext13process_where(ptr noalias noundef align 16 captures(address) dereferenceable(384) %i.gm, ptr noalias noundef nonnull align 8 dereferenceable(248) %1, ptr noalias noundef align 16 captures(address) dereferenceable(384) %i.gl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %.sroa.06.0.i, i1 noundef zeroext false, ptr noundef nonnull %i.pa)
          to label %bb.cq unwind label %bb.cp, !dbg !25115, !noalias !24311, !inline_history !22739

bb.cq:                                            ; preds = %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl), !dbg !25114, !noalias !24366
  call void @llvm.experimental.noalias.scope.decl(metadata !24396), !dbg !25109
  %i.pe = load i64, ptr %i.gm, align 16, !dbg !25116, !range !1444, !alias.scope !24397, !noalias !24366, !noundef !1416 ; 2 uses
  %i.pf = icmp eq i64 %i.pe, -9223372036854775778, !dbg !25116
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gm, i64 8, !dbg !25117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7368, ptr noundef nonnull align 8 dereferenceable(72) %i.pg, i64 72, i1 false), !dbg !25117, !alias.scope !24398, !noalias !24366
  br i1 %i.pf, label %bb.mk, label %bb.ct, !dbg !25118

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.cu, %bb.cw, %bb.cp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit127, %bb.cs
  %.pn104.i = phi { ptr, i32 } [ %i.pk, %bb.cs ], [ %.pn102.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit127 ], [ %i.pd, %bb.cp ], [ %i.pl, %bb.cu ], [ %i.pm, %bb.cw ] ; 2 uses
  %.sroa.029.3.i = phi i8 [ %.sroa.029.4.i, %bb.cs ], [ %.sroa.029.5.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit127 ], [ 0, %bb.cp ], [ 1, %bb.cu ], [ 1, %bb.cw ], !dbg !25119 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24399), !dbg !25120
  call void @llvm.experimental.noalias.scope.decl(metadata !24400), !dbg !25121, !noalias !24311
  %i.ph = load ptr, ptr %i.go, align 8, !dbg !25122, !alias.scope !24401, !noalias !24311, !nonnull !1416, !noundef !1416
  %i.pi = atomicrmw add ptr %i.ph, i64 -1 release, align 8, !dbg !25123, !noalias !24402
  %i.pj = icmp eq i64 %i.pi, 1, !dbg !25124
  br i1 %i.pj, label %bb.cr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit156, !dbg !25124

bb.cr:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEECshquuC4dCYVj_10polars_sql.exit
  fence acquire, !dbg !25125, !noalias !24311
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.go) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit156 unwind label %bb.bq, !dbg !25126

bb.cs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit68
  %.sroa.029.4.i = phi i8 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit68 ], [ %.sroa.029.41.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit ], !dbg !25119
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEECshquuC4dCYVj_10polars_sql.exit

bb.ct:                                            ; preds = %bb.cq
  %.sroa.9370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.gm, i64 80, !dbg !25127
  %.sroa.5374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 80, !dbg !25128 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.5374.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.9370.0..sroa_idx371, i64 304, i1 false), !dbg !25127, !noalias !24366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm), !dbg !25129, !noalias !24366
  %.sroa.4373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 8, !dbg !25128 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4373.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7368, i64 72, i1 false), !dbg !25109, !noalias !24366
  store i64 %i.pe, ptr %i.ha, align 16, !dbg !25128, !noalias !24366
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7368), !dbg !25130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !dbg !25131, !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj), !dbg !25132, !noalias !24366
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.gj)
          to label %bb.cv unwind label %bb.cu, !dbg !25132, !noalias !24311, !inline_history !22739

bb.cu:                                            ; preds = %bb.ct
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEECshquuC4dCYVj_10polars_sql.exit

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi), !dbg !25133, !noalias !24366
  invoke void @_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtB7_6pl_str10PlSmallStrB1m_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.gi)
          to label %bb.cy unwind label %bb.cw, !dbg !25133, !noalias !24311, !inline_history !22739

bb.cw:                                            ; preds = %bb.cv
  %i.pm = landingpad { ptr, i32 }
          cleanup
  %i.pn = getelementptr inbounds nuw i8, ptr %i.gj, i64 32, !dbg !25134
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pn, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.bq, !dbg !25135

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit127: ; preds = %bb.dc, %bb.cx
  %.pn102.i = phi { ptr, i32 } [ %i.po, %bb.cx ], [ %.pn100.i, %bb.dc ]
  %.sroa.029.5.i = phi i8 [ %.sroa.029.6.i, %bb.cx ], [ %.sroa.029.7.i, %bb.dc ], !dbg !25128
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshquuC4dCYVj_10polars_sql7context15SelectModifiersEBK_(ptr noalias noundef align 8 dereferenceable(136) %i.gk) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.bq, !dbg !25136, !noalias !24311, !inline_history !22739

bb.cx:                                            ; preds = %bb.hq, %bb.kb, %bb.db, %bb.cz
  %.sroa.029.6.i = phi i8 [ %.sroa.029.41.i, %bb.kb ], [ 0, %bb.hq ], [ 1, %bb.db ], [ 1, %bb.cz ], !dbg !25119
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit127

bb.cy:                                            ; preds = %bb.cv
  %i.pp = getelementptr inbounds nuw i8, ptr %i.gk, i64 24, !dbg !25137 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pp, ptr noundef nonnull align 8 dereferenceable(40) %i.gj, i64 40, i1 false), !dbg !25137, !noalias !24366
  %i.pq = getelementptr inbounds nuw i8, ptr %i.gk, i64 104, !dbg !25137 ; 2 uses
  store ptr null, ptr %i.pq, align 8, !dbg !25137, !noalias !24366
  %i.pr = getelementptr inbounds nuw i8, ptr %i.gk, i64 64, !dbg !25137 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pr, ptr noundef nonnull align 8 dereferenceable(40) %i.gi, i64 40, i1 false), !dbg !25137, !noalias !24366
  store i64 0, ptr %i.gk, align 8, !dbg !25137, !noalias !24366
  %.sroa.4376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 8, !dbg !25137
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.4376.0..sroa_idx, align 8, !dbg !25137, !noalias !24366
  %.sroa.5377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 16, !dbg !25137 ; 2 uses
  store i64 0, ptr %.sroa.5377.0..sroa_idx, align 8, !dbg !25137, !noalias !24366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi), !dbg !25138, !noalias !24366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !dbg !25138, !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !dbg !25139, !noalias !24366
  %i.ps = getelementptr inbounds nuw i8, ptr %i.hm, i64 1016, !dbg !25140 ; 2 uses
  %.val145.i = load i64, ptr %i.ps, align 8, !dbg !25141, !range !1593, !alias.scope !24313, !noundef !1416
  %.not876 = icmp eq i64 %.val145.i, 69, !dbg !25142
  br i1 %.not876, label %bb.cz, label %bb.db, !dbg !25140

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.gh)
          to label %bb.da unwind label %bb.cx, !dbg !25143, !noalias !24311, !inline_history !22739

bb.da:                                            ; preds = %bb.db, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg), !dbg !25144, !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7380), !dbg !25145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf), !dbg !25145, !noalias !24366
  invoke fastcc void @_RNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5_10SQLContext18column_projections(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.gf, ptr noalias noundef nonnull align 8 dereferenceable(248) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2104) %i.hm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.go, ptr noalias noundef align 8 dereferenceable(136) %i.gk)
          to label %bb.de unwind label %bb.dd, !dbg !25146, !noalias !24311, !inline_history !22739

bb.db:                                            ; preds = %bb.cy
  %i.pt = getelementptr i8, ptr %i.hm, i64 1712, !dbg !25147
  %.val161.i = load ptr, ptr %i.pt, align 8, !dbg !25147, !alias.scope !24313, !nonnull !1416, !noundef !1416 ; 2 uses
  %i.pu = getelementptr i8, ptr %i.hm, i64 1720, !dbg !25147
  %.val162.i = load i64, ptr %i.pu, align 8, !dbg !25147, !alias.scope !24313, !noundef !1416
  %i.pv = getelementptr inbounds nuw [776 x i8], ptr %.val161.i, i64 %.val162.i, !dbg !25148
  invoke fastcc void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query10SelectItemENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2u_10SQLContext14execute_selects1_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEB2w_(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.gh, ptr noundef nonnull %.val161.i, ptr noundef %i.pv)
          to label %bb.da unwind label %bb.cx, !dbg !25149, !noalias !24311, !inline_history !22739

bb.dc:                                            ; preds = %bb.mf, %bb.df, %bb.dd
  %.pn100.i = phi { ptr, i32 } [ %i.px, %bb.dd ], [ %.pn94.pn.pn.pn.pn.i, %bb.mf ], [ %.pn94.pn.pn.pn.pn.i, %bb.df ]
  %.sroa.029.7.i = phi i8 [ %.sroa.029.8.i, %bb.dd ], [ %.sroa.029.9.i, %bb.mf ], [ %.sroa.029.9.i, %bb.df ], !dbg !25128
  %i.pw = getelementptr inbounds nuw i8, ptr %i.gh, i64 32, !dbg !25150
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pw, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit127 unwind label %bb.bq, !dbg !25151

bb.dd:                                            ; preds = %bb.kc, %bb.hr, %bb.da
  %.sroa.029.8.i = phi i8 [ 1, %bb.da ], [ %.sroa.029.18.i, %bb.kc ], [ 0, %bb.hr ], !dbg !25119
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.de:                                            ; preds = %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !24403), !dbg !25145
  %i.py = load i64, ptr %i.gf, align 8, !dbg !25152, !range !1812, !alias.scope !24404, !noalias !24366, !noundef !1416 ; 2 uses
  %.not.i124 = icmp eq i64 %i.py, 18, !dbg !25152
  %i.pz = getelementptr inbounds nuw i8, ptr %i.gf, i64 8, !dbg !25153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7380, ptr noundef nonnull align 8 dereferenceable(24) %i.pz, i64 24, i1 false), !dbg !25153, !alias.scope !24405, !noalias !24366
  br i1 %.not.i124, label %bb.dj, label %bb.mg, !dbg !25154

bb.df:                                            ; preds = %bb.me, %bb.dh, %bb.dg
  %.pn94.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn94.pn.pn.pn.i, %bb.me ], [ %.pn94.pn.pn.pn.i, %bb.dh ], [ %i.qb, %bb.dg ] ; 2 uses
  %.sroa.029.9.i = phi i8 [ %.sroa.029.11.i, %bb.me ], [ %.sroa.029.11.i, %bb.dh ], [ %.sroa.029.10.i, %bb.dg ], !dbg !25128 ; 2 uses
  %.sroa.025.0.i = phi i8 [ %.sroa.025.2.i, %bb.me ], [ %.sroa.025.2.i, %bb.dh ], [ %.sroa.025.1.i, %bb.dg ], !dbg !25155
  %i.qa = trunc nuw i8 %.sroa.025.0.i to i1, !dbg !25156
  br i1 %i.qa, label %bb.mf, label %bb.dc, !dbg !25156

bb.dg:                                            ; preds = %bb.ka, %bb.hp
  %.sroa.029.10.i = phi i8 [ %.sroa.029.18.i, %bb.ka ], [ 0, %bb.hp ], !dbg !25119
  %.sroa.025.1.i = phi i8 [ %.sroa.025.9.i, %bb.ka ], [ %.sroa.025.13.i, %bb.hp ], !dbg !25157
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dh:                                            ; preds = %bb.md, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit123, %bb.di
  %.pn94.pn.pn.pn.i = phi { ptr, i32 } [ %.pn94.pn.pn.i, %bb.md ], [ %.pn94.pn.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit123 ], [ %i.qd, %bb.di ] ; 2 uses
  %.sroa.029.11.i = phi i8 [ %.sroa.029.13.i, %bb.md ], [ %.sroa.029.13.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit123 ], [ %.sroa.029.12.i, %bb.di ], !dbg !25128 ; 2 uses
  %.sroa.025.2.i = phi i8 [ %.sroa.025.4.i, %bb.md ], [ %.sroa.025.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit123 ], [ %.sroa.025.3.i, %bb.di ], !dbg !25155 ; 2 uses
  %.sroa.022.0.i = phi i8 [ %.sroa.022.2.i, %bb.md ], [ %.sroa.022.2.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit123 ], [ %.sroa.022.1.i, %bb.di ], !dbg !25158
  %i.qc = trunc nuw i8 %.sroa.022.0.i to i1, !dbg !25159
  br i1 %i.qc, label %bb.me, label %bb.df, !dbg !25159

bb.di:                                            ; preds = %bb.jy, %bb.hn
  %.sroa.029.12.i = phi i8 [ %.sroa.029.18.i, %bb.jy ], [ 0, %bb.hn ], !dbg !25119
  %.sroa.025.3.i = phi i8 [ %.sroa.025.9.i, %bb.jy ], [ %.sroa.025.13.i, %bb.hn ], !dbg !25157
  %.sroa.022.1.i = phi i8 [ %.sroa.022.7.i, %bb.jy ], [ %.sroa.022.6.i, %bb.hn ], !dbg !25158
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dj:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf), !dbg !25160, !noalias !24366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7380, i64 24, i1 false), !dbg !25145, !noalias !24366
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7380), !dbg !25161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge), !dbg !25162, !noalias !24366
  store i64 0, ptr %i.ge, align 8, !dbg !25163, !alias.scope !24406, !noalias !24366
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ge, i64 8, !dbg !25163 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.qe, align 8, !dbg !25163, !alias.scope !24406, !noalias !24366
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16, !dbg !25163 ; 6 uses
  store i64 0, ptr %i.qf, align 8, !dbg !25163, !alias.scope !24406, !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !dbg !25158, !noalias !24366
  store i64 0, ptr %i.gd, align 8, !dbg !25164, !alias.scope !24407, !noalias !24366
  %i.qg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8, !dbg !25164 ; 2 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.qg, align 8, !dbg !25164, !alias.scope !24407, !noalias !24366
  %i.qh = getelementptr inbounds nuw i8, ptr %i.gd, i64 16, !dbg !25164 ; 5 uses
  store i64 0, ptr %i.qh, align 8, !dbg !25164, !alias.scope !24407, !noalias !24366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !dbg !25165, !noalias !24366
  invoke void @_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtB7_6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.gc)
          to label %bb.dl unwind label %bb.dk, !dbg !25166, !noalias !24311, !inline_history !22739

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECshquuC4dCYVj_10polars_sql.exit123: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit44, %bb.dk
  %.pn94.pn.pn.i = phi { ptr, i32 } [ %i.qj, %bb.dk ], [ %.pn94.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit44 ] ; 2 uses
  %.sroa.029.13.i = phi i8 [ %.sroa.029.14.i, %bb.dk ], [ %.sroa.029.15.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit44 ], !dbg !25128 ; 2 uses
  %.sroa.025.4.i = phi i8 [ %.sroa.025.5.i, %bb.dk ], [ %.sroa.025.6.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit44 ], !dbg !25155 ; 2 uses
  %.sroa.022.2.i = phi i8 [ %.sroa.022.3.i, %bb.dk ], [ %.sroa.022.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit44 ], !dbg !25158 ; 2 uses
  %.sroa.019.0.i = phi i8 [ %.sroa.019.1.i, %bb.dk ], [ %.sroa.019.2.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit44 ], !dbg !25165
  %i.qi = trunc nuw i8 %.sroa.019.0.i to i1, !dbg !25167
  br i1 %i.qi, label %bb.md, label %bb.dh, !dbg !25167

bb.dk:                                            ; preds = %bb.dy, %bb.hl, %bb.dj
  %.sroa.029.14.i = phi i8 [ %.sroa.029.18.i, %bb.dy ], [ 0, %bb.hl ], [ 1, %bb.dj ], !dbg !25119
  %.sroa.025.5.i = phi i8 [ %.sroa.025.9.i, %bb.dy ], [ %.sroa.025.13.i, %bb.hl ], [ 1, %bb.dj ], !dbg !25157
  %.sroa.022.3.i = phi i8 [ %.sroa.022.7.i, %bb.dy ], [ %.sroa.022.6.i, %bb.hl ], [ 1, %bb.dj ], !dbg !25158
  %.sroa.019.1.i = phi i8 [ %.sroa.019.6.i, %bb.dy ], [ %.sroa.019.5.i, %bb.hl ], [ 1, %bb.dj ], !dbg !25165
  %i.qj = landingpad { ptr, i32 }
end_hunk_2
