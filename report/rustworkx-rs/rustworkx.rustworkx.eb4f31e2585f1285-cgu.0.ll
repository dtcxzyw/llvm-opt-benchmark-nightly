Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph33___pyfunction_random_regular_graph:bb.a
  br i1 %.not.i.not.i.i.i214.i.i.i, label %._crit_edge.i.i.i215.i.i.i, label %.lr.ph.i.i.i207.i.i.i

bb.aw:                                            ; preds = %._crit_edge.i.i.i215.i.i.i
  %i.tc = add i64 %.sroa.011.0.i.i.i.i202.i.i.i, 16 ; 2 uses
  %i.td = add i64 %.sroa.01.0.i.i.i.i204.i.i.i, %i.tc
  br label %bb.au

.noexc74.thread545.loopexit.i.i.i:                ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i210.i.i.i
  %i.te = icmp eq ptr %i.pa, %i.ns
  br i1 %i.te, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i, label %.lr.ph.i73.split.i.i.i

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i: ; preds = %bb.at, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !116227)
  call void @llvm.experimental.noalias.scope.decl(metadata !116228)
  %.val1.i.i.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !116229, !noalias !116198, !noundef !67 ; 4 uses
  %i.tf = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.tf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i
  %.val.i.i75.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i66.i.i.i, align 8, !alias.scope !116229, !noalias !116198, !nonnull !67, !noundef !67
  %i.tg = shl i64 %.val1.i.i.i.i.i, 3
  %i.th = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.th)
  %i.ti = and i64 %i.tg, -16                      ; 2 uses
  %i.tj = add i64 %i.ti, 16                       ; 2 uses
  %i.tk = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.tl = add i64 %i.tk, %i.tj                    ; 3 uses
  %i.tm = icmp uge i64 %i.tl, %i.tj
  call void @llvm.assume(i1 %i.tm)
  %i.tn = icmp ult i64 %i.tl, 9223372036854775793
  call void @llvm.assume(i1 %i.tn)
  %i.to = sub nuw nsw i64 -16, %i.ti
  %i.tp = getelementptr inbounds i8, ptr %.val.i.i75.i.i.i, i64 %i.to
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tp, i64 noundef %i.tl, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !116230
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !116229, !noalias !116198 ; 2 uses
  %i.tq = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.tq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.tr = mul nuw i64 %.val2.i.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nq, i64 noundef %i.tr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !116230
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

.noexc74.thread.i.i.i:                            ; preds = %.lr.ph.i73.i.us.i.i, %.noexc74.us.i.us.i.i, %._crit_edge.i.i.i215.i.i.i, %._crit_edge.i.i.i
  %.val52.i.i.i = load i64, ptr %i.q, align 8, !noalias !116198 ; 2 uses
  %i.ts = icmp eq i64 %.val52.i.i.i, 0
  br i1 %i.ts, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i76.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i76.i.i.i: ; preds = %.noexc74.thread.i.i.i
  %.val53.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !116198, !nonnull !67, !noundef !67
  %i.tt = shl nuw i64 %.val52.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53.i.i.i, i64 noundef %i.tt, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116198
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !116198
  %.val50.i.i.i = load i64, ptr %i.q, align 8, !noalias !116198 ; 2 uses
  %i.tu = icmp eq i64 %.val50.i.i.i, 0
  br i1 %i.tu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.val51.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !116198, !nonnull !67, !noundef !67
  %i.tv = shl nuw i64 %.val50.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51.i.i.i, i64 noundef %i.tv, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116198
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !116198
  call void @llvm.experimental.noalias.scope.decl(metadata !116231)
  call void @llvm.experimental.noalias.scope.decl(metadata !116232)
  call void @llvm.experimental.noalias.scope.decl(metadata !116233)
  %.val1.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !alias.scope !116234, !noalias !116198, !noundef !67 ; 4 uses
  %i.tw = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.tw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.9427.0..sroa_idx.i.i.i, align 8, !alias.scope !116234, !noalias !116198, !nonnull !67, !noundef !67
  %i.tx = shl i64 %.val1.i.i.i.i.i.i, 3
  %i.ty = icmp slt i64 %.val1.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ty)
  %i.tz = and i64 %i.tx, -16                      ; 2 uses
  %i.ua = add i64 %i.tz, 16                       ; 2 uses
  %i.ub = add nsw i64 %.val1.i.i.i.i.i.i, 17
  %i.uc = add i64 %i.ub, %i.ua                    ; 3 uses
  %i.ud = icmp uge i64 %i.uc, %i.ua
  call void @llvm.assume(i1 %i.ud)
  %i.ue = icmp ult i64 %i.uc, 9223372036854775793
  call void @llvm.assume(i1 %i.ue)
  %i.uf = sub nuw nsw i64 -16, %i.tz
  %i.ug = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 %i.uf
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ug, i64 noundef %i.uc, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !116235
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i
  %.val2.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !116234, !noalias !116198 ; 2 uses
  %i.uh = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.uh, label %.thread.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val3.i.i.i.i.i.i = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !alias.scope !116234, !noalias !116198, !nonnull !67, !noundef !67
  %i.ui = shl nuw i64 %.val2.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %i.ui, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !116235
  br label %.thread.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i76.i.i.i, %.noexc74.thread.i.i.i
  store i64 0, ptr %i.q, align 8, !noalias !116198
  store ptr inttoptr (i64 4 to ptr), ptr %i.fr, align 8, !noalias !116198
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !116198
  %i.uj = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !noalias !116198, !nonnull !67, !noundef !67 ; 2 uses
  %i.uk = load i64, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !noalias !116198, !noundef !67 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.uk, 24
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 %.idx.i.i.i
  %i.um = icmp eq i64 %i.uk, 0
  br i1 %i.um, label %._crit_edge727.i.i.i, label %.lr.ph726.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.lr.ph726.i.i.i
  %i.un = phi i64 [ %i.up, %.lr.ph726.i.i.i ], [ %i.vr, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.uo = icmp eq ptr %i.uq, %i.ul
  br i1 %i.uo, label %._crit_edge727.i.i.i, label %.lr.ph726.i.i.i

.lr.ph726.i.i.i:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i, %.loopexit.i.i.i
  %i.up = phi i64 [ %i.un, %.loopexit.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i ] ; 2 uses
  %.sroa.0422.0725.i.i.i = phi ptr [ %i.uq, %.loopexit.i.i.i ], [ %i.uj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i ] ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0422.0725.i.i.i, i64 24 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.0422.0725.i.i.i, i64 16
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0422.0725.i.i.i, i64 8
  %i.ut = load i64, ptr %i.us, align 8, !noalias !116198, !noundef !67 ; 2 uses
  %.not731.i.i.i = icmp eq i64 %i.ut, 0
  br i1 %.not731.i.i.i, label %.loopexit.i.i.i, label %.lr.ph724.i.i.i

._crit_edge727.i.i.i:                             ; preds = %.loopexit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !116236)
  call void @llvm.experimental.noalias.scope.decl(metadata !116237)
  %.val1.i.i81.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !116238, !noalias !116198, !noundef !67 ; 4 uses
  %i.uu = icmp eq i64 %.val1.i.i81.i.i.i, 0
  br i1 %i.uu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i82.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i82.i.i.i: ; preds = %._crit_edge727.i.i.i
  %.val.i.i83.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i66.i.i.i, align 8, !alias.scope !116238, !noalias !116198, !nonnull !67, !noundef !67
  %i.uv = shl i64 %.val1.i.i81.i.i.i, 3
  %i.uw = icmp slt i64 %.val1.i.i81.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.uw)
  %i.ux = and i64 %i.uv, -16                      ; 2 uses
  %i.uy = add i64 %i.ux, 16                       ; 2 uses
  %i.uz = add nsw i64 %.val1.i.i81.i.i.i, 17
  %i.va = add i64 %i.uz, %i.uy                    ; 3 uses
  %i.vb = icmp uge i64 %i.va, %i.uy
  call void @llvm.assume(i1 %i.vb)
  %i.vc = icmp ult i64 %i.va, 9223372036854775793
  call void @llvm.assume(i1 %i.vc)
  %i.vd = sub nuw nsw i64 -16, %i.ux
  %i.ve = getelementptr inbounds i8, ptr %.val.i.i83.i.i.i, i64 %i.vd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ve, i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !116239
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i82.i.i.i, %._crit_edge727.i.i.i
  %.val2.i.i85.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !116238, !noalias !116198 ; 2 uses
  %i.vf = icmp eq i64 %.val2.i.i85.i.i.i, 0
  br i1 %i.vf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i86.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i86.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i
  %.val3.i.i87.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116238, !noalias !116198, !nonnull !67, !noundef !67
  %i.vg = mul nuw i64 %.val2.i.i85.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i87.i.i.i, i64 noundef %i.vg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !116239
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i86.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !116198
  %i.vh = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !116198, !noundef !67 ; 2 uses
  %i.vi = icmp ult i64 %i.vh, 2305843009213693952
  call void @llvm.assume(i1 %i.vi)
  %i.vj = icmp eq i64 %i.vh, 0
  br i1 %i.vj, label %._crit_edge730.i.i.i, label %.lr.ph729.i.i.i

.lr.ph724.i.i.i:                                  ; preds = %.lr.ph726.i.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.vk = phi i64 [ %i.vr, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.up, %.lr.ph726.i.i.i ] ; 3 uses
  %.sroa.039.0722.i.i.i = phi i64 [ %i.vl, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %.lr.ph726.i.i.i ]
  %i.vl = add nuw i64 %.sroa.039.0722.i.i.i, 1    ; 2 uses
  %i.vm = load i32, ptr %i.ur, align 8, !noalias !116198, !noundef !67
  %i.vn = load i64, ptr %i.q, align 8, !range !70, !alias.scope !116240, !noalias !116198, !noundef !67
  %i.vo = icmp eq i64 %i.vk, %i.vn
  br i1 %i.vo, label %bb.ax, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.ax:                                            ; preds = %.lr.ph724.i.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %.loopexit579.i.i.i, !noalias !116198

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.ax, %.lr.ph724.i.i.i
  %i.vp = load ptr, ptr %i.fr, align 8, !alias.scope !116240, !noalias !116198, !nonnull !67, !noundef !67
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.vk
  store i32 %i.vm, ptr %i.vq, align 4, !noalias !116198
  %i.vr = add i64 %i.vk, 1                        ; 3 uses
  store i64 %i.vr, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !116240, !noalias !116198
  %exitcond.not.i.i.i = icmp eq i64 %i.vl, %i.ut
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph724.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.0713.i.i.i = phi i64 [ %i.ail, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.vs = load ptr, ptr %i.fr, align 8, !noalias !116198, !nonnull !67, !noundef !67
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %.sroa.0.0713.i.i.i ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !noalias !116198, !noundef !67 ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  %i.vw = load i32, ptr %i.vv, align 4, !noalias !116198, !noundef !67 ; 3 uses
  %..i.i.i = call i32 @llvm.umin.i32(i32 %i.vu, i32 %i.vw) ; 9 uses
  %.48.i.i.i = call i32 @llvm.umax.i32(i32 %i.vu, i32 %i.vw) ; 9 uses
  %.not.i.i.i = icmp eq i32 %i.vu, %i.vw
  br i1 %.not.i.i.i, label %.thread560.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !116241)
  %i.vx = load i64, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !alias.scope !116241, !noalias !116242, !noundef !67 ; 6 uses
  switch i64 %i.vx, label %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i [
    i64 0, label %._RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i293_crit_edge.i.i.i
    i64 1, label %bb.bf
  ]

._RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i293_crit_edge.i.i.i: ; preds = %bb.ay
  %.pre791.i.i.i = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !alias.scope !116243, !noalias !116198
  br label %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i293.i.i.i

_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i: ; preds = %bb.ay
  %.val5.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !alias.scope !116241, !noalias !116242, !noundef !67 ; 2 uses
  %.val6.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !116241, !noalias !116242, !noundef !67 ; 2 uses
  %i.vy = xor i64 %.val5.i.i.i.i, 8317987319222330741
  %i.vz = xor i64 %.val6.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.wa = xor i64 %.val5.i.i.i.i, 7816392313619706465
  %i.wb = zext i32 %..i.i.i to i64
  %i.wc = zext i32 %.48.i.i.i to i64
  %i.wd = shl nuw i64 %i.wc, 32
  %i.we = or disjoint i64 %i.wd, %i.wb            ; 2 uses
  %i.wf = xor i64 %i.we, %.val6.i.i.i.i
  %i.wg = xor i64 %i.wf, 8387220255154660723      ; 3 uses
  %i.wh = add i64 %i.vz, %i.vy                    ; 3 uses
  %i.wi = add i64 %i.wg, %i.wa                    ; 2 uses
  %i.wj = call noundef i64 @llvm.fshl.i64(i64 %i.vz, i64 %i.vz, i64 13)
  %i.wk = xor i64 %i.wj, %i.wh                    ; 3 uses
  %i.wl = call noundef i64 @llvm.fshl.i64(i64 %i.wg, i64 %i.wg, i64 16)
  %i.wm = xor i64 %i.wi, %i.wl                    ; 3 uses
  %i.wn = call noundef i64 @llvm.fshl.i64(i64 %i.wh, i64 %i.wh, i64 32)
  %i.wo = add i64 %i.wk, %i.wi                    ; 3 uses
  %i.wp = add i64 %i.wm, %i.wn                    ; 2 uses
  %i.wq = call noundef i64 @llvm.fshl.i64(i64 %i.wk, i64 %i.wk, i64 17)
  %i.wr = xor i64 %i.wo, %i.wq                    ; 3 uses
  %i.ws = call noundef i64 @llvm.fshl.i64(i64 %i.wm, i64 %i.wm, i64 21)
  %i.wt = call noundef i64 @llvm.fshl.i64(i64 %i.wo, i64 %i.wo, i64 32)
  %i.wu = xor i64 %i.wp, %i.we
  %i.wv = xor i64 %i.ws, %i.wp
  %i.ww = xor i64 %i.wv, 576460752303423488       ; 3 uses
  %i.wx = add i64 %i.wr, %i.wu                    ; 3 uses
  %i.wy = add i64 %i.ww, %i.wt                    ; 2 uses
  %i.wz = call noundef i64 @llvm.fshl.i64(i64 %i.wr, i64 %i.wr, i64 13)
  %i.xa = xor i64 %i.wz, %i.wx                    ; 3 uses
  %i.xb = call noundef i64 @llvm.fshl.i64(i64 %i.ww, i64 %i.ww, i64 16)
  %i.xc = xor i64 %i.xb, %i.wy                    ; 3 uses
  %i.xd = call noundef i64 @llvm.fshl.i64(i64 %i.wx, i64 %i.wx, i64 32)
  %i.xe = add i64 %i.wy, %i.xa                    ; 3 uses
  %i.xf = add i64 %i.xc, %i.xd                    ; 2 uses
  %i.xg = call noundef i64 @llvm.fshl.i64(i64 %i.xa, i64 %i.xa, i64 17)
  %i.xh = xor i64 %i.xe, %i.xg                    ; 3 uses
  %i.xi = call noundef i64 @llvm.fshl.i64(i64 %i.xc, i64 %i.xc, i64 21)
  %i.xj = xor i64 %i.xi, %i.xf                    ; 3 uses
  %i.xk = call noundef i64 @llvm.fshl.i64(i64 %i.xe, i64 %i.xe, i64 32)
  %i.xl = xor i64 %i.xf, 576460752303423488
  %i.xm = xor i64 %i.xk, 255
  %i.xn = add i64 %i.xl, %i.xh                    ; 3 uses
  %i.xo = add i64 %i.xj, %i.xm                    ; 2 uses
  %i.xp = call noundef i64 @llvm.fshl.i64(i64 %i.xh, i64 %i.xh, i64 13)
  %i.xq = xor i64 %i.xn, %i.xp                    ; 3 uses
  %i.xr = call noundef i64 @llvm.fshl.i64(i64 %i.xj, i64 %i.xj, i64 16)
  %i.xs = xor i64 %i.xr, %i.xo                    ; 3 uses
  %i.xt = call noundef i64 @llvm.fshl.i64(i64 %i.xn, i64 %i.xn, i64 32)
  %i.xu = add i64 %i.xq, %i.xo                    ; 3 uses
  %i.xv = add i64 %i.xs, %i.xt                    ; 2 uses
  %i.xw = call noundef i64 @llvm.fshl.i64(i64 %i.xq, i64 %i.xq, i64 17)
  %i.xx = xor i64 %i.xu, %i.xw                    ; 3 uses
  %i.xy = call noundef i64 @llvm.fshl.i64(i64 %i.xs, i64 %i.xs, i64 21)
  %i.xz = xor i64 %i.xy, %i.xv                    ; 3 uses
  %i.ya = call noundef i64 @llvm.fshl.i64(i64 %i.xu, i64 %i.xu, i64 32)
  %i.yb = add i64 %i.xx, %i.xv                    ; 3 uses
  %i.yc = add i64 %i.xz, %i.ya                    ; 2 uses
  %i.yd = call noundef i64 @llvm.fshl.i64(i64 %i.xx, i64 %i.xx, i64 13)
  %i.ye = xor i64 %i.yd, %i.yb                    ; 3 uses
  %i.yf = call noundef i64 @llvm.fshl.i64(i64 %i.xz, i64 %i.xz, i64 16)
  %i.yg = xor i64 %i.yf, %i.yc                    ; 3 uses
  %i.yh = call noundef i64 @llvm.fshl.i64(i64 %i.yb, i64 %i.yb, i64 32)
  %i.yi = add i64 %i.ye, %i.yc                    ; 3 uses
  %i.yj = add i64 %i.yg, %i.yh                    ; 2 uses
  %i.yk = call noundef i64 @llvm.fshl.i64(i64 %i.ye, i64 %i.ye, i64 17)
  %i.yl = xor i64 %i.yk, %i.yi                    ; 3 uses
  %i.ym = call noundef i64 @llvm.fshl.i64(i64 %i.yg, i64 %i.yg, i64 21)
  %i.yn = xor i64 %i.ym, %i.yj                    ; 3 uses
  %i.yo = call noundef i64 @llvm.fshl.i64(i64 %i.yi, i64 %i.yi, i64 32)
  %i.yp = add i64 %i.yl, %i.yj
  %i.yq = add i64 %i.yn, %i.yo                    ; 2 uses
  %i.yr = call noundef i64 @llvm.fshl.i64(i64 %i.yl, i64 %i.yl, i64 13)
  %i.ys = xor i64 %i.yr, %i.yp                    ; 3 uses
  %i.yt = call noundef i64 @llvm.fshl.i64(i64 %i.yn, i64 %i.yn, i64 16)
  %i.yu = xor i64 %i.yt, %i.yq                    ; 2 uses
  %i.yv = add i64 %i.ys, %i.yq                    ; 3 uses
  %i.yw = call noundef i64 @llvm.fshl.i64(i64 %i.ys, i64 %i.ys, i64 17)
  %i.yx = call noundef i64 @llvm.fshl.i64(i64 %i.yu, i64 %i.yu, i64 21)
  %i.yy = call noundef i64 @llvm.fshl.i64(i64 %i.yv, i64 %i.yv, i64 32)
  %i.yz = xor i64 %i.yx, %i.yw
  %i.za = xor i64 %i.yz, %i.yy
  %i.zb = xor i64 %i.za, %i.yv                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116244)
  %i.zc = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !alias.scope !116245, !noalias !116246, !nonnull !67, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116247)
  call void @llvm.experimental.noalias.scope.decl(metadata !116248)
  %i.zd = lshr i64 %i.zb, 57
  %i.ze = trunc nuw nsw i64 %i.zd to i8
  %i.zf = load i64, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !alias.scope !116249, !noalias !116250, !noundef !67 ; 2 uses
  %i.zg = load ptr, ptr %.sroa.9427.0..sroa_idx.i.i.i, align 8, !alias.scope !116249, !noalias !116250, !nonnull !67, !noundef !67 ; 2 uses
  %i.zh = insertelement <16 x i8> poison, i8 %i.ze, i64 0
  %i.zi = shufflevector <16 x i8> %i.zh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i ], [ %i.aae, %bb.bb ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.zb, %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i ], [ %i.aaf, %bb.bb ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.zf ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.zj, align 1, !noalias !116251 ; 2 uses
  %i.zk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.zi
  %i.zl = bitcast <16 x i1> %i.zk to i16          ; 2 uses
  %.not.i.not36.i.i.i.i.i.i = icmp eq i16 %i.zl, 0
  br i1 %.not.i.not36.i.i.i.i.i.i, label %._crit_edge.i.i.i93.i.i.i, label %.lr.ph.i.i.i92.i.i.i

.lr.ph.i.i.i92.i.i.i:                             ; preds = %bb.az, %bb.ba
  %.sroa.05.0.i37.i.i.i.i.i.i = phi i16 [ %i.aad, %bb.ba ], [ %i.zl, %bb.az ] ; 3 uses
  %i.zm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i.i, i1 true)
  %i.zn = zext nneg i16 %i.zm to i64
  %i.zo = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.zn
  %i.zp = and i64 %i.zo, %i.zf
  %i.zq = sub nsw i64 0, %i.zp
  %i.zr = getelementptr inbounds [8 x i8], ptr %i.zg, i64 %i.zq
  %i.zs = getelementptr inbounds i8, ptr %i.zr, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.zs, align 8, !noalias !116252, !noundef !67 ; 3 uses
  %i.zt = icmp ult i64 %.val.i.i.i.i.i.i.i, %i.vx
  br i1 %i.zt, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.invoke916.i.i.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i92.i.i.i
  %i.zu = getelementptr inbounds nuw [16 x i8], ptr %i.zc, i64 %.val.i.i.i.i.i.i.i ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %.val3.i.i.i.i.i.i.i.i = load i32, ptr %i.zv, align 4, !noalias !116253, !noundef !67
  %i.zw = getelementptr i8, ptr %i.zu, i64 12
  %.val4.i.i.i.i.i.i.i.i = load i32, ptr %i.zw, align 4, !noalias !116253
  %i.zx = icmp eq i32 %..i.i.i, %.val3.i.i.i.i.i.i.i.i
  %i.zy = icmp eq i32 %.48.i.i.i, %.val4.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.zx, i1 %i.zy, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %.thread560.i.i.i, label %bb.ba, !prof !77

._crit_edge.i.i.i93.i.i.i:                        ; preds = %bb.ba, %bb.az
  %i.zz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.aaa = bitcast <16 x i1> %i.zz to i16
  %i.aab = icmp eq i16 %i.aaa, 0
  br i1 %i.aab, label %bb.bb, label %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i293.i.i.i, !prof !71

bb.ba:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.aac = add i16 %.sroa.05.0.i37.i.i.i.i.i.i, -1
  %i.aad = and i16 %i.aac, %.sroa.05.0.i37.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.aad, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i93.i.i.i, label %.lr.ph.i.i.i92.i.i.i

bb.bb:                                            ; preds = %._crit_edge.i.i.i93.i.i.i
  %i.aae = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.aaf = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.aae
  br label %bb.az

.thread560.i.i.i:                                 ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %bb.bf, %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !116254)
  %.val.i95.i.i.i = load i64, ptr %i.fq, align 8, !alias.scope !116255, !noalias !116256, !noundef !67
  %i.aag = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !116257, !noundef !67
  %i.aah = zext i32 %..i.i.i to i64
  %i.aai = xor i64 %.val.i95.i.i.i, %i.aah
  %i.aaj = zext i64 %i.aai to i128
  %i.aak = zext i64 %i.aag to i128                ; 2 uses
  %i.aal = mul nuw i128 %i.aaj, %i.aak            ; 2 uses
  %i.aam = lshr i128 %i.aal, 64
  %i.aan = xor i128 %i.aam, %i.aal
  %i.aao = trunc i128 %i.aan to i64               ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116258)
  %i.aap = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116259, !noalias !116260, !nonnull !67, !noundef !67 ; 2 uses
  %i.aaq = load i64, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !116259, !noalias !116260, !noundef !67 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116261)
  call void @llvm.experimental.noalias.scope.decl(metadata !116262)
  %i.aar = lshr i64 %i.aao, 57
  %i.aas = trunc nuw nsw i64 %i.aar to i8         ; 3 uses
  %i.aat = load i64, ptr %i.fw, align 8, !alias.scope !116263, !noalias !116264, !noundef !67 ; 6 uses
  %i.aau = load ptr, ptr %.sroa.6.0..sroa_idx.i66.i.i.i, align 8, !alias.scope !116263, !noalias !116264, !nonnull !67, !noundef !67 ; 8 uses
  %i.aav = insertelement <16 x i8> poison, i8 %i.aas, i64 0
  %i.aaw = shufflevector <16 x i8> %i.aav, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %.thread560.i.i.i
  %.sroa.011.0.i.i.i.i96.i.i.i = phi i64 [ 0, %.thread560.i.i.i ], [ %i.abq, %bb.be ]
  %.pn.i.i.i97.i.i.i = phi i64 [ %i.aao, %.thread560.i.i.i ], [ %i.abr, %bb.be ]
  %.sroa.01.0.i.i.i.i98.i.i.i = and i64 %.pn.i.i.i97.i.i.i, %i.aat ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph33___pyfunction_random_regular_graph:bb.a
  %i.afm = bitcast <16 x i1> %i.afl to i16        ; 2 uses
  %.not28.i.i.i.i.i.i.i.i = icmp eq i16 %i.afm, 0
  br i1 %.not28.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bh, %bb.bi
  %.sroa.05.029.i.i.i.i.i.i.i.i = phi i16 [ %i.agb, %bb.bi ], [ %i.afm, %bb.bh ] ; 3 uses
  %i.afn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i.i.i.i.i.i.i, i1 true)
  %i.afo = zext nneg i16 %i.afn to i64
  %i.afp = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i, %i.afo
  %i.afq = and i64 %i.afp, %.val5.i.i.i.i.i.i.i
  %i.afr = sub nsw i64 0, %i.afq
  %i.afs = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i111.i.i.i, i64 %i.afr
  %i.aft = getelementptr inbounds i8, ptr %i.afs, i64 -8
  %.val.i.i.i.i.i112.i.i.i = load i64, ptr %i.aft, align 8, !noalias !116275, !noundef !67 ; 5 uses
  %i.afu = icmp ult i64 %.val.i.i.i.i.i112.i.i.i, %i.vx
  br i1 %i.afu, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB27_EuB26_E0NCINvB1p_8get_hashB26_uE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.invoke916.i.i.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB27_EuB26_E0NCINvB1p_8get_hashB26_uE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.afv = getelementptr inbounds nuw [16 x i8], ptr %i.abx, i64 %.val.i.i.i.i.i112.i.i.i ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %.val3.i.i.i.i.i.i.i.i.i = load i32, ptr %i.afw, align 4, !noalias !116276, !noundef !67
  %i.afx = getelementptr i8, ptr %i.afv, i64 12
  %.val4.i.i.i.i.i.i.i.i.i = load i32, ptr %i.afx, align 4, !noalias !116276
  %i.afy = icmp eq i32 %..i.i.i, %.val3.i.i.i.i.i.i.i.i.i
  %i.afz = icmp eq i32 %.48.i.i.i, %.val4.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.afy, i1 %i.afz, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %bb.bi, !prof !77

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.bi, %bb.bh
  %.not11.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i, 1
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.bj, !prof !71

bb.bi:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB27_EuB26_E0NCINvB1p_8get_hashB26_uE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.aga = add i16 %.sroa.05.029.i.i.i.i.i.i.i.i, -1
  %i.agb = and i16 %i.aga, %.sroa.05.029.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.agb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.agc = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i, zeroinitializer
  %i.agd = bitcast <16 x i1> %i.agc to i16        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.agd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bk, label %.thread24.i.i.i.i.i.i.i.i, !prof !71

.thread24.i.i.i.i.i.i.i.i:                        ; preds = %bb.bj
  %i.age = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.agd, i1 true)
  %i.agf = zext nneg i16 %i.age to i64
  %i.agg = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i, %i.agf
  %i.agh = and i64 %i.agg, %.val5.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %.thread24.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i = phi i64 [ %i.agh, %.thread24.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.agi = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.agj = bitcast <16 x i1> %i.agi to i16
  %i.agk = icmp eq i16 %i.agj, 0
  br i1 %i.agk, label %bb.bk, label %bb.bl, !prof !71

bb.bk:                                            ; preds = %.thread.i.i.i.i.i.i.i.i, %bb.bj
  %.sroa.01.122.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i ], [ 0, %bb.bj ]
  %.sroa.4.120.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ undef, %bb.bj ]
  %i.agl = add i64 %i.afj, 16                     ; 2 uses
  %i.agm = add i64 %i.agl, %.sroa.0.017.i.i.i.i.i.i.i.i
  br label %bb.bh

bb.bl:                                            ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.agn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i111.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i
  %i.ago = load i8, ptr %i.agn, align 1, !noalias !116272, !noundef !67 ; 2 uses
  %i.agp = icmp sgt i8 %i.ago, -1
  br i1 %i.agp, label %bb.bm, label %bb.bn, !prof !71

bb.bm:                                            ; preds = %bb.bl
  %.val62.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i111.i.i.i, align 16, !noalias !116272
  %i.agq = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.agr = bitcast <16 x i1> %i.agq to i16        ; 2 uses
  %.not.i22.i.i.i.i.i.i.i.i = icmp ne i16 %i.agr, 0
  %i.ags = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.agr, i1 true)
  %i.agt = zext nneg i16 %i.ags to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i114.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i111.i.i.i, i64 %i.agt
  %.pre.i.i115.i.i.i = load i8, ptr %.phi.trans.insert.i.i114.i.i.i, align 1, !noalias !116277
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.agu = phi i8 [ %.pre.i.i115.i.i.i, %bb.bm ], [ %i.ago, %bb.bl ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %i.agt, %bb.bm ], [ %.sroa.4.121.i.i.i.i.i.i.i.i, %bb.bl ] ; 3 uses
  %i.agv = load i64, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !alias.scope !116243, !noalias !116198, !noundef !67 ; 2 uses
  %i.agw = icmp ult i64 %i.agv, 576460752303423488
  call void @llvm.assume(i1 %i.agw)
  call void @llvm.experimental.noalias.scope.decl(metadata !116278)
  %i.agx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i111.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i
  %i.agy = and i8 %i.agu, 1
  %i.agz = zext nneg i8 %i.agy to i64
  %i.aha = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i, -16
  %i.ahb = and i64 %i.aha, %.val5.i.i.i.i.i.i.i
  store i8 %i.afg, ptr %i.agx, align 1, !noalias !116277
  %i.ahc = getelementptr i8, ptr %.val.i.i.i.i111.i.i.i, i64 %i.ahb
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 16
  store i8 %i.afg, ptr %i.ahd, align 1, !noalias !116277
  %i.ahe = load <2 x i64>, ptr %.sroa.12428.0..sroa_idx.i.i.i, align 8, !alias.scope !116279, !noalias !116198
  %i.ahf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.agz, i64 0
  %i.ahg = sub <2 x i64> %i.ahe, %i.ahf
  store <2 x i64> %i.ahg, ptr %.sroa.12428.0..sroa_idx.i.i.i, align 8, !alias.scope !116279, !noalias !116198
  %i.ahh = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i
  %i.ahi = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i111.i.i.i, i64 %i.ahh
  %i.ahj = getelementptr inbounds i8, ptr %i.ahi, i64 -8
  store i64 %i.agv, ptr %i.ahj, align 8, !noalias !116277
  call void @llvm.experimental.noalias.scope.decl(metadata !116280)
  %i.ahk = load i64, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !alias.scope !116281, !noalias !116198, !noundef !67 ; 10 uses
  %i.ahl = icmp ult i64 %i.ahk, 576460752303423488
  call void @llvm.assume(i1 %i.ahl)
  %i.ahm = load i64, ptr %i.r, align 8, !range !70, !alias.scope !116281, !noalias !116198, !noundef !67
  %i.ahn = icmp eq i64 %i.ahk, %i.ahm
  br i1 %i.ahn, label %bb.bo, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !116282)
  %i.aho = load i64, ptr %i.ft, align 8, !alias.scope !116283, !noalias !116198, !noundef !67
  %i.ahp = load i64, ptr %.sroa.12428.0..sroa_idx.i.i.i, align 8, !alias.scope !116283, !noalias !116198, !noundef !67
  %i.ahq = add i64 %i.ahp, %i.aho                 ; 2 uses
  %i.ahr = call i64 @llvm.umin.i64(i64 %i.ahq, i64 576460752303423487) ; 4 uses
  %i.ahs = sub nsw i64 %i.ahr, %i.ahk
  %i.aht = icmp ugt i64 %i.ahs, 1
  br i1 %i.aht, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %bb.br, %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !116284)
  call void @llvm.experimental.noalias.scope.decl(metadata !116285)
  call void @llvm.experimental.noalias.scope.decl(metadata !116286)
  %i.ahu = add nuw nsw i64 %i.ahk, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !116287
  %.val11.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !alias.scope !116288, !noalias !116198
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, i64 %i.ahk, ptr %.val11.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ahu, i64 noundef 8, i64 noundef range(i64 16, 89) 16), !noalias !116289
  %i.ahv = load i64, ptr %i.m, align 8, !range !68, !noalias !116287, !noundef !67
  %i.ahw = trunc nuw i64 %i.ahv to i1
  br i1 %i.ahw, label %bb.bq, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.thread4.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.ahx = load i64, ptr %i.fv, align 8, !range !128, !noalias !116287, !noundef !67
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ahz = load i64, ptr %i.ahy, align 8, !noalias !116287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !116287
  br label %.invoke.i.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.thread4.i.i.i.i.i.i: ; preds = %bb.bp
  %i.aia = load ptr, ptr %i.fv, align 8, !noalias !116287, !nonnull !67, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !116287
  store ptr %i.aia, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !alias.scope !116288, !noalias !116198
  store i64 %i.ahu, ptr %i.r, align 8, !alias.scope !116283, !noalias !116198
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.br:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !116290)
  call void @llvm.experimental.noalias.scope.decl(metadata !116291)
  %i.aib = icmp ult i64 %i.ahq, %i.ahk
  br i1 %i.aib, label %bb.bp, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !116292
  %.val11.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !alias.scope !116293, !noalias !116198
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, i64 %i.ahk, ptr %.val11.i.i.i.i.i.i.i.i.i, i64 noundef %i.ahr, i64 noundef 8, i64 noundef range(i64 16, 89) 16), !noalias !116294
  %i.aic = load i64, ptr %i.l, align 8, !range !68, !noalias !116292, !noundef !67
  %i.aid = trunc nuw i64 %i.aic to i1
  br i1 %i.aid, label %bb.bt, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !116292
  br label %bb.bp

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.bs
  %i.aie = load ptr, ptr %i.fu, align 8, !noalias !116292, !nonnull !67, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !116292
  store ptr %i.aie, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !alias.scope !116293, !noalias !116198
  store i64 %i.ahr, ptr %i.r, align 8, !alias.scope !116283, !noalias !116198
  %i.aif = icmp eq i64 %i.ahk, %i.ahr
  call void @llvm.experimental.noalias.scope.decl(metadata !116295)
  br i1 %i.aif, label %bb.bu, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.bu:                                            ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtCsfztDQZkQYYe_8indexmap6BucketTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1k_EuEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.r) #62
          to label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !116198

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.bu, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.thread4.i.i.i.i.i.i, %bb.bn
  %i.aig = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !alias.scope !116296, !noalias !116297, !nonnull !67, !noundef !67
  %i.aih = getelementptr inbounds nuw [16 x i8], ptr %i.aig, i64 %i.ahk ; 3 uses
  store i64 %i.afb, ptr %i.aih, align 8, !noalias !116298
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  store i32 %..i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !116298
  %.sroa.5.0..sroa_idx.i4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aih, i64 12
  store i32 %.48.i.i.i, ptr %.sroa.5.0..sroa_idx.i4.i.i.i.i.i, align 4, !noalias !116298
  %i.aii = add nuw nsw i64 %i.ahk, 1
  store i64 %i.aii, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !alias.scope !116296, !noalias !116297
  br label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.bv:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB27_EuB26_E0NCINvB1p_8get_hashB26_uE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.aij = load i64, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !alias.scope !116243, !noalias !116198, !noundef !67 ; 2 uses
  %i.aik = icmp ult i64 %.val.i.i.i.i.i112.i.i.i, %i.aij
  br i1 %i.aik, label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.invoke916.i.i.i

_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.loopexit850.i.i.i, %bb.bv, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.ail = add nuw nsw i64 %.sroa.0.0713.i.i.i, 2 ; 2 uses
  %5 = or disjoint i64 %i.ail, 1
  %i.aim = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !116198, !noundef !67 ; 2 uses
  %i.ain = icmp ult i64 %i.aim, 2305843009213693952
  call void @llvm.assume(i1 %i.ain)
  %i.aio = icmp samesign ult i64 %5, %i.aim
  br i1 %i.aio, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.bw:                                            ; preds = %._crit_edge.i.i.i106.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !116299)
  %i.aip = load i64, ptr %i.fx, align 8, !alias.scope !116299, !noalias !116300, !noundef !67 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116301)
  %.sroa.0.07.i.i.i.i.i.i.i = and i64 %i.aat, %i.aao ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aau, i64 %.sroa.0.07.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aiq, align 1, !noalias !116302
  %i.air = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i, zeroinitializer
  %i.ais = bitcast <16 x i1> %i.air to i16        ; 2 uses
  %.not.i9.i.i.i.i.i.i.i = icmp eq i16 %i.ais, 0
  br i1 %.not.i9.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !prof !80

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.bw
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i.i.i, %bb.bw ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ais, %bb.bw ], [ %i.ajj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ait = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.aiu = zext nneg i16 %i.ait to i64
  %i.aiv = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, %i.aiu
  %i.aiw = and i64 %i.aiv, %i.aat                 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aiw
  %i.aiy = load i8, ptr %i.aix, align 1, !noalias !116303, !noundef !67 ; 2 uses
  %i.aiz = icmp sgt i8 %i.aiy, -1
  br i1 %i.aiz, label %bb.bx, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i, !prof !71

bb.bx:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.val62.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aau, align 16, !noalias !116303
  %i.aja = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ajb = bitcast <16 x i1> %i.aja to i16        ; 2 uses
  %.not.i6.i.i.i.i.i.i.i = icmp ne i16 %i.ajb, 0
  %i.ajc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ajb, i1 true)
  %i.ajd = zext nneg i16 %i.ajc to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.ajd
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 1, !noalias !116303
  br label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bw, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.i, %bb.bw ]
  %i.aje = phi i64 [ %i.ajf, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.bw ]
  %i.ajf = add i64 %i.aje, 16                     ; 2 uses
  %i.ajg = add i64 %i.ajf, %.sroa.0.010.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = and i64 %i.ajg, %i.aat ; 3 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aau, i64 %.sroa.0.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ajh, align 1, !noalias !116302
  %i.aji = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i, zeroinitializer
  %i.ajj = bitcast <16 x i1> %i.aji to i16        ; 2 uses
  %.not.i.i.i.i.i127.i.i.i = icmp eq i16 %i.ajj, 0
  br i1 %.not.i.i.i.i.i127.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !prof !81

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i: ; preds = %bb.bx, %._crit_edge.i.i.i.i.i.i.i
  %i.ajk = phi i8 [ %.pre.i.i.i.i.i.i, %bb.bx ], [ %i.aiy, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i.i.i.i.i = phi i64 [ %i.ajd, %bb.bx ], [ %i.aiw, %._crit_edge.i.i.i.i.i.i.i ]
  %i.ajl = load i64, ptr %i.fy, align 8, !alias.scope !116304, !noalias !116300, !noundef !67 ; 2 uses
  %i.ajm = icmp eq i64 %i.ajl, 0
  %i.ajn = trunc i8 %i.ajk to i1
  %or.cond.i.i.i122.i.i.i = and i1 %i.ajm, %i.ajn
  br i1 %or.cond.i.i.i122.i.i.i, label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, !prof !79

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i
  %i.ajo = invoke fastcc i64 @_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i66.i.i.i, ptr noundef nonnull align 8 %i.aap, i64 noundef %i.aaq) #62
          to label %.noexc128.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i ; 0 uses

.noexc128.i.i.i:                                  ; preds = %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val.i.i.i124.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i66.i.i.i, align 8, !alias.scope !116304, !noalias !116300 ; 3 uses
  %.val5.i.i.i.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !116304, !noalias !116300, !noundef !67 ; 2 uses
  %i.ajp = call fastcc noundef i64 @_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val.i.i.i124.i.i.i, i64 %.val5.i.i.i.i.i.i, i64 noundef %i.aao) #64, !noalias !116300 ; 2 uses
  %.phi.trans.insert8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i124.i.i.i, i64 %i.ajp
  %.pre9.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert8.i.i.i.i.i.i, align 1, !noalias !116305
  %.pre10.i.i.i125.i.i.i = load i64, ptr %i.fy, align 8, !alias.scope !116306, !noalias !116300
  %.pre.i.i126.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !116306, !noalias !116300
  br label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.noexc128.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i
  %i.ajq = phi i64 [ %.pre.i.i126.i.i.i, %.noexc128.i.i.i ], [ %i.aip, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ]
  %i.ajr = phi i64 [ %.val5.i.i.i.i.i.i, %.noexc128.i.i.i ], [ %i.aat, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ]
  %i.ajs = phi i64 [ %.pre10.i.i.i125.i.i.i, %.noexc128.i.i.i ], [ %i.ajl, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ]
  %i.ajt = phi i8 [ %.pre9.i.i.i.i.i.i, %.noexc128.i.i.i ], [ %i.ajk, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ]
  %i.aju = phi ptr [ %.val.i.i.i124.i.i.i, %.noexc128.i.i.i ], [ %i.aau, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i123.i.i.i = phi i64 [ %i.ajp, %.noexc128.i.i.i ], [ %.sroa.0.0.i5.i.i.i.i.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116307)
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 %.sroa.0.0.i.i.i123.i.i.i
  %i.ajw = and i8 %i.ajt, 1
  %i.ajx = zext nneg i8 %i.ajw to i64
  %i.ajy = sub i64 %i.ajs, %i.ajx
  store i64 %i.ajy, ptr %i.fy, align 8, !alias.scope !116306, !noalias !116300
  %i.ajz = add i64 %.sroa.0.0.i.i.i123.i.i.i, -16
  %i.aka = and i64 %i.ajz, %i.ajr
  store i8 %i.aas, ptr %i.ajv, align 1, !noalias !116305
  %i.akb = getelementptr i8, ptr %i.aju, i64 %i.aka
  %i.akc = getelementptr i8, ptr %i.akb, i64 16
  store i8 %i.aas, ptr %i.akc, align 1, !noalias !116305
  %i.akd = add i64 %i.ajq, 1
  store i64 %i.akd, ptr %i.fx, align 8, !alias.scope !116306, !noalias !116300
  %i.ake = sub nsw i64 0, %.sroa.0.0.i.i.i123.i.i.i
  %i.akf = getelementptr inbounds [8 x i8], ptr %i.aju, i64 %i.ake
  %i.akg = getelementptr inbounds i8, ptr %i.akf, i64 -8
  store i64 %i.aip, ptr %i.akg, align 8, !noalias !116305
  call void @llvm.experimental.noalias.scope.decl(metadata !116308)
  %i.akh = load i64, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !116308, !noalias !116198, !noundef !67 ; 11 uses
  %i.aki = icmp ult i64 %i.akh, 384307168202282326
  call void @llvm.assume(i1 %i.aki)
  %i.akj = load i64, ptr %i.p, align 8, !range !70, !alias.scope !116308, !noalias !116198, !noundef !67
  %i.akk = icmp eq i64 %i.akh, %i.akj
  br i1 %i.akk, label %bb.by, label %.noexc129.i.i.i

bb.by:                                            ; preds = %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !116309)
  %i.akl = load i64, ptr %i.fx, align 8, !alias.scope !116310, !noalias !116198, !noundef !67
  %i.akm = load i64, ptr %i.fy, align 8, !alias.scope !116310, !noalias !116198, !noundef !67
  %i.akn = add i64 %i.akm, %i.akl                 ; 2 uses
  %i.ako = call i64 @llvm.umin.i64(i64 %i.akn, i64 384307168202282325) ; 4 uses
  %i.akp = sub nsw i64 %i.ako, %i.akh
  %i.akq = icmp ugt i64 %i.akp, 1
  br i1 %i.akq, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.cd, %bb.cb, %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !116311)
  call void @llvm.experimental.noalias.scope.decl(metadata !116312)
  call void @llvm.experimental.noalias.scope.decl(metadata !116313)
  %i.akr = add nuw nsw i64 %i.akh, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !116314
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116315, !noalias !116198
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, i64 %i.akh, ptr %.val11.i.i.i.i.i.i.i.i, i64 noundef %i.akr, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !116314
  %i.aks = load i64, ptr %i.k, align 8, !range !68, !noalias !116314, !noundef !67
  %i.akt = trunc nuw i64 %i.aks to i1
  br i1 %i.akt, label %bb.ca, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.thread4.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.aku = load i64, ptr %i.ga, align 8, !range !128, !noalias !116314, !noundef !67
  %i.akv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.akw = load i64, ptr %i.akv, align 8, !noalias !116314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !116314
  br label %.invoke.i.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.thread4.i.i.i.i: ; preds = %bb.bz
  %i.akx = load ptr, ptr %i.ga, align 8, !noalias !116314, !nonnull !67, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !116314
  store ptr %i.akx, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116315, !noalias !116198
  store i64 %i.akr, ptr %i.p, align 8, !alias.scope !116310, !noalias !116198
  br label %.noexc129.i.i.i

bb.cb:                                            ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !116316)
  call void @llvm.experimental.noalias.scope.decl(metadata !116317)
  %i.aky = icmp ult i64 %i.akn, %i.akh
  br i1 %i.aky, label %bb.bz, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !116318
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116319, !noalias !116198
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, i64 %i.akh, ptr %.val11.i.i.i.i.i.i.i, i64 noundef %i.ako, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !116318
  %i.akz = load i64, ptr %i.j, align 8, !range !68, !noalias !116318, !noundef !67
  %i.ala = trunc nuw i64 %i.akz to i1
  br i1 %i.ala, label %bb.cd, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !116318
  br label %bb.bz

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.cc
  %i.alb = load ptr, ptr %i.fz, align 8, !noalias !116318, !nonnull !67, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !116318
  store ptr %i.alb, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116319, !noalias !116198
  store i64 %i.ako, ptr %i.p, align 8, !alias.scope !116310, !noalias !116198
  %i.alc = icmp eq i64 %i.akh, %i.ako
  call void @llvm.experimental.noalias.scope.decl(metadata !116320)
  br i1 %i.alc, label %bb.ce, label %.noexc129.i.i.i

bb.ce:                                            ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.p) #62
          to label %.noexc129.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !116198

.noexc129.i.i.i:                                  ; preds = %bb.ce, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.thread4.i.i.i.i, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.ald = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116321, !noalias !116322, !nonnull !67, !noundef !67
  %i.ale = getelementptr inbounds nuw [24 x i8], ptr %i.ald, i64 %i.akh ; 3 uses
  store i64 %i.aao, ptr %i.ale, align 8, !noalias !116323
  %.sroa.4.0..sroa_idx.i232.i.i.i = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i232.i.i.i, align 8, !noalias !116323
  %.sroa.5.0..sroa_idx.i233.i.i.i = getelementptr inbounds nuw i8, ptr %i.ale, i64 16
  store i32 %..i.i.i, ptr %.sroa.5.0..sroa_idx.i233.i.i.i, align 8, !noalias !116323
  %i.alf = add nuw nsw i64 %i.akh, 1              ; 2 uses
  store i64 %i.alf, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !116321, !noalias !116322
  %.not577.i.i.i = icmp ugt i64 %i.aip, %i.akh
  br i1 %.not577.i.i.i, label %.invoke916.i.i.i, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE13insert_uniqueCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE13insert_uniqueCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.noexc129.i.i.i
  %i.alg = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116299, !noalias !116300, !nonnull !67, !noundef !67
  %i.alh = getelementptr inbounds nuw [24 x i8], ptr %i.alg, i64 %i.aip
  %.pre792.i.i.i = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !116324
  %.pre796.i.i.i = zext i64 %.pre792.i.i.i to i128
  br label %.loopexit851.i.i.i

.loopexit851.i.i.i:                               ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE13insert_uniqueCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.pre-phi797.i.i.i = phi i128 [ %.pre796.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE13insert_uniqueCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.aak, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ]
end_hunk_1
