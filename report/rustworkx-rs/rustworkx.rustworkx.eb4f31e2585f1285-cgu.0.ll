Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph33___pyfunction_random_regular_graph:bb.a
  br i1 %.not.i.not.i.i.i214.i.i.i, label %._crit_edge.i.i.i215.i.i.i, label %.lr.ph.i.i.i207.i.i.i

bb.aw:                                            ; preds = %._crit_edge.i.i.i215.i.i.i
  %i.sw = add i64 %.sroa.011.0.i.i.i.i202.i.i.i, 16 ; 2 uses
  %i.sx = add i64 %.sroa.01.0.i.i.i.i204.i.i.i, %i.sw
  br label %bb.au

.noexc74.thread544.loopexit.i.i.i:                ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i210.i.i.i
  %i.sy = icmp eq ptr %i.ou, %i.nm
  br i1 %i.sy, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i, label %.lr.ph.i73.split.i.i.i

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i: ; preds = %bb.at, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit82.us.i.i, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !111367)
  call void @llvm.experimental.noalias.scope.decl(metadata !111368)
  %.val1.i.i.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !111369, !noalias !111341, !noundef !56 ; 4 uses
  %i.sz = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.sz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i
  %.val.i.i75.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i66.i.i.i, align 8, !alias.scope !111369, !noalias !111341, !nonnull !56, !noundef !56
  %i.ta = shl i64 %.val1.i.i.i.i.i, 3
  %i.tb = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.tb)
  %i.tc = and i64 %i.ta, -16                      ; 2 uses
  %i.td = add i64 %i.tc, 16                       ; 2 uses
  %i.te = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.tf = add i64 %i.te, %i.td                    ; 3 uses
  %i.tg = icmp uge i64 %i.tf, %i.td
  call void @llvm.assume(i1 %i.tg)
  %i.th = icmp ult i64 %i.tf, 9223372036854775793
  call void @llvm.assume(i1 %i.th)
  %i.ti = sub nuw nsw i64 -16, %i.tc
  %i.tj = getelementptr inbounds i8, ptr %.val.i.i75.i.i.i, i64 %i.ti
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tj, i64 noundef %i.tf, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !111370
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !111369, !noalias !111341 ; 2 uses
  %i.tk = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.tk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.tl = mul nuw i64 %.val2.i.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nk, i64 noundef %i.tl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !111370
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

.noexc74.thread.i.i.i:                            ; preds = %.lr.ph.i73.i.us.i.i, %.noexc74.us.i.us.i.i, %._crit_edge.i.i.i215.i.i.i, %._crit_edge.i.i.i
  %.val52.i.i.i = load i64, ptr %i.q, align 8, !noalias !111341 ; 2 uses
  %i.tm = icmp eq i64 %.val52.i.i.i, 0
  br i1 %i.tm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i76.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i76.i.i.i: ; preds = %.noexc74.thread.i.i.i
  %.val53.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !111341, !nonnull !56, !noundef !56
  %i.tn = shl nuw i64 %.val52.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53.i.i.i, i64 noundef %i.tn, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !111341
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !111341
  %.val50.i.i.i = load i64, ptr %i.q, align 8, !noalias !111341 ; 2 uses
  %i.to = icmp eq i64 %.val50.i.i.i, 0
  br i1 %i.to, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.val51.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !111341, !nonnull !56, !noundef !56
  %i.tp = shl nuw i64 %.val50.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51.i.i.i, i64 noundef %i.tp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !111341
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !111341
  call void @llvm.experimental.noalias.scope.decl(metadata !111371)
  call void @llvm.experimental.noalias.scope.decl(metadata !111372)
  call void @llvm.experimental.noalias.scope.decl(metadata !111373)
  %.val1.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !alias.scope !111374, !noalias !111341, !noundef !56 ; 4 uses
  %i.tq = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.tq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.9426.0..sroa_idx.i.i.i, align 8, !alias.scope !111374, !noalias !111341, !nonnull !56, !noundef !56
  %i.tr = shl i64 %.val1.i.i.i.i.i.i, 3
  %i.ts = icmp slt i64 %.val1.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ts)
  %i.tt = and i64 %i.tr, -16                      ; 2 uses
  %i.tu = add i64 %i.tt, 16                       ; 2 uses
  %i.tv = add nsw i64 %.val1.i.i.i.i.i.i, 17
  %i.tw = add i64 %i.tv, %i.tu                    ; 3 uses
  %i.tx = icmp uge i64 %i.tw, %i.tu
  call void @llvm.assume(i1 %i.tx)
  %i.ty = icmp ult i64 %i.tw, 9223372036854775793
  call void @llvm.assume(i1 %i.ty)
  %i.tz = sub nuw nsw i64 -16, %i.tt
  %i.ua = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 %i.tz
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ua, i64 noundef %i.tw, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !111375
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit79.i.i.i
  %.val2.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !111374, !noalias !111341 ; 2 uses
  %i.ub = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.ub, label %.thread.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val3.i.i.i.i.i.i = load ptr, ptr %.sroa.5424.0..sroa_idx.i.i.i, align 8, !alias.scope !111374, !noalias !111341, !nonnull !56, !noundef !56
  %i.uc = shl nuw i64 %.val2.i.i.i.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %i.uc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !111375
  br label %.thread.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i76.i.i.i, %.noexc74.thread.i.i.i
  store i64 0, ptr %i.q, align 8, !noalias !111341
  store ptr inttoptr (i64 4 to ptr), ptr %i.fr, align 8, !noalias !111341
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !111341
  %i.ud = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !noalias !111341, !nonnull !56, !noundef !56 ; 2 uses
  %i.ue = load i64, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !noalias !111341, !noundef !56 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ue, 24
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.idx.i.i.i
  %i.ug = icmp eq i64 %i.ue, 0
  br i1 %i.ug, label %._crit_edge726.i.i.i, label %.lr.ph725.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.lr.ph725.i.i.i
  %i.uh = phi i64 [ %i.uj, %.lr.ph725.i.i.i ], [ %i.vl, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.ui = icmp eq ptr %i.uk, %i.uf
  br i1 %i.ui, label %._crit_edge726.i.i.i, label %.lr.ph725.i.i.i

.lr.ph725.i.i.i:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i, %.loopexit.i.i.i
  %i.uj = phi i64 [ %i.uh, %.loopexit.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i ] ; 2 uses
  %.sroa.0421.0724.i.i.i = phi ptr [ %i.uk, %.loopexit.i.i.i ], [ %i.ud, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i ] ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.0421.0724.i.i.i, i64 24 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.0421.0724.i.i.i, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0421.0724.i.i.i, i64 8
  %i.un = load i64, ptr %i.um, align 8, !noalias !111341, !noundef !56 ; 2 uses
  %.not730.i.i.i = icmp eq i64 %i.un, 0
  br i1 %.not730.i.i.i, label %.loopexit.i.i.i, label %.lr.ph723.i.i.i

._crit_edge726.i.i.i:                             ; preds = %.loopexit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit77.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !111376)
  call void @llvm.experimental.noalias.scope.decl(metadata !111377)
  %.val1.i.i81.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !111378, !noalias !111341, !noundef !56 ; 4 uses
  %i.uo = icmp eq i64 %.val1.i.i81.i.i.i, 0
  br i1 %i.uo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i82.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i82.i.i.i: ; preds = %._crit_edge726.i.i.i
  %.val.i.i83.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i66.i.i.i, align 8, !alias.scope !111378, !noalias !111341, !nonnull !56, !noundef !56
  %i.up = shl i64 %.val1.i.i81.i.i.i, 3
  %i.uq = icmp slt i64 %.val1.i.i81.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.uq)
  %i.ur = and i64 %i.up, -16                      ; 2 uses
  %i.us = add i64 %i.ur, 16                       ; 2 uses
  %i.ut = add nsw i64 %.val1.i.i81.i.i.i, 17
  %i.uu = add i64 %i.ut, %i.us                    ; 3 uses
  %i.uv = icmp uge i64 %i.uu, %i.us
  call void @llvm.assume(i1 %i.uv)
  %i.uw = icmp ult i64 %i.uu, 9223372036854775793
  call void @llvm.assume(i1 %i.uw)
  %i.ux = sub nuw nsw i64 -16, %i.ur
  %i.uy = getelementptr inbounds i8, ptr %.val.i.i83.i.i.i, i64 %i.ux
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uy, i64 noundef %i.uu, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !111379
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i82.i.i.i, %._crit_edge726.i.i.i
  %.val2.i.i85.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !111378, !noalias !111341 ; 2 uses
  %i.uz = icmp eq i64 %.val2.i.i85.i.i.i, 0
  br i1 %i.uz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i86.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i86.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i
  %.val3.i.i87.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !111378, !noalias !111341, !nonnull !56, !noundef !56
  %i.va = mul nuw i64 %.val2.i.i85.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i87.i.i.i, i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !111379
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i86.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i84.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !111341
  %i.vb = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !111341, !noundef !56 ; 2 uses
  %i.vc = icmp ult i64 %i.vb, 2305843009213693952
  call void @llvm.assume(i1 %i.vc)
  %i.vd = icmp eq i64 %i.vb, 0
  br i1 %i.vd, label %._crit_edge729.i.i.i, label %.lr.ph728.i.i.i

.lr.ph723.i.i.i:                                  ; preds = %.lr.ph725.i.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.ve = phi i64 [ %i.vl, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.uj, %.lr.ph725.i.i.i ] ; 3 uses
  %.sroa.039.0721.i.i.i = phi i64 [ %i.vf, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %.lr.ph725.i.i.i ]
  %i.vf = add nuw i64 %.sroa.039.0721.i.i.i, 1    ; 2 uses
  %i.vg = load i32, ptr %i.ul, align 8, !noalias !111341, !noundef !56
  %i.vh = load i64, ptr %i.q, align 8, !range !59, !alias.scope !111380, !noalias !111341, !noundef !56
  %i.vi = icmp eq i64 %i.ve, %i.vh
  br i1 %i.vi, label %bb.ax, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.ax:                                            ; preds = %.lr.ph723.i.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !111341

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.ax, %.lr.ph723.i.i.i
  %i.vj = load ptr, ptr %i.fr, align 8, !alias.scope !111380, !noalias !111341, !nonnull !56, !noundef !56
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.ve
  store i32 %i.vg, ptr %i.vk, align 4, !noalias !111341
  %i.vl = add i64 %i.ve, 1                        ; 3 uses
  store i64 %i.vl, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !111380, !noalias !111341
  %exitcond.not.i.i.i = icmp eq i64 %i.vf, %i.un
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph723.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.0712.i.i.i = phi i64 [ %i.aie, %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.vm = load ptr, ptr %i.fr, align 8, !noalias !111341, !nonnull !56, !noundef !56
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %.sroa.0.0712.i.i.i ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !noalias !111341, !noundef !56 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %i.vq = load i32, ptr %i.vp, align 4, !noalias !111341, !noundef !56 ; 3 uses
  %..i.i.i = call i32 @llvm.umin.i32(i32 %i.vo, i32 %i.vq) ; 9 uses
  %.48.i.i.i = call i32 @llvm.umax.i32(i32 %i.vo, i32 %i.vq) ; 9 uses
  %.not.i.i.i = icmp eq i32 %i.vo, %i.vq
  br i1 %.not.i.i.i, label %.thread559.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !111381)
  %i.vr = load i64, ptr %.sroa.7425.0..sroa_idx.i.i.i, align 8, !alias.scope !111381, !noalias !111341, !noundef !56 ; 6 uses
  switch i64 %i.vr, label %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i [
    i64 0, label %._RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i292_crit_edge.i.i.i
    i64 1, label %bb.bf
  ]

._RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i292_crit_edge.i.i.i: ; preds = %bb.ay
  %.pre793.i.i.i = load ptr, ptr %.sroa.5424.0..sroa_idx.i.i.i, align 8, !alias.scope !111382, !noalias !111341
  br label %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i292.i.i.i

_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i: ; preds = %bb.ay
  %.val5.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !alias.scope !111381, !noalias !111341, !noundef !56 ; 2 uses
  %.val6.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !111381, !noalias !111341, !noundef !56 ; 2 uses
  %i.vs = xor i64 %.val5.i.i.i.i, 8317987319222330741
  %i.vt = xor i64 %.val6.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.vu = xor i64 %.val5.i.i.i.i, 7816392313619706465
  %i.vv = zext i32 %..i.i.i to i64
  %i.vw = zext i32 %.48.i.i.i to i64
  %i.vx = shl nuw i64 %i.vw, 32
  %i.vy = or disjoint i64 %i.vx, %i.vv            ; 2 uses
  %i.vz = xor i64 %i.vy, %.val6.i.i.i.i
  %i.wa = xor i64 %i.vz, 8387220255154660723      ; 3 uses
  %i.wb = add i64 %i.vt, %i.vs                    ; 3 uses
  %i.wc = add i64 %i.wa, %i.vu                    ; 2 uses
  %i.wd = call noundef i64 @llvm.fshl.i64(i64 %i.vt, i64 %i.vt, i64 13)
  %i.we = xor i64 %i.wd, %i.wb                    ; 3 uses
  %i.wf = call noundef i64 @llvm.fshl.i64(i64 %i.wa, i64 %i.wa, i64 16)
  %i.wg = xor i64 %i.wc, %i.wf                    ; 3 uses
  %i.wh = call noundef i64 @llvm.fshl.i64(i64 %i.wb, i64 %i.wb, i64 32)
  %i.wi = add i64 %i.we, %i.wc                    ; 3 uses
  %i.wj = add i64 %i.wg, %i.wh                    ; 2 uses
  %i.wk = call noundef i64 @llvm.fshl.i64(i64 %i.we, i64 %i.we, i64 17)
  %i.wl = xor i64 %i.wi, %i.wk                    ; 3 uses
  %i.wm = call noundef i64 @llvm.fshl.i64(i64 %i.wg, i64 %i.wg, i64 21)
  %i.wn = call noundef i64 @llvm.fshl.i64(i64 %i.wi, i64 %i.wi, i64 32)
  %i.wo = xor i64 %i.wj, %i.vy
  %i.wp = xor i64 %i.wm, %i.wj
  %i.wq = xor i64 %i.wp, 576460752303423488       ; 3 uses
  %i.wr = add i64 %i.wl, %i.wo                    ; 3 uses
  %i.ws = add i64 %i.wq, %i.wn                    ; 2 uses
  %i.wt = call noundef i64 @llvm.fshl.i64(i64 %i.wl, i64 %i.wl, i64 13)
  %i.wu = xor i64 %i.wt, %i.wr                    ; 3 uses
  %i.wv = call noundef i64 @llvm.fshl.i64(i64 %i.wq, i64 %i.wq, i64 16)
  %i.ww = xor i64 %i.wv, %i.ws                    ; 3 uses
  %i.wx = call noundef i64 @llvm.fshl.i64(i64 %i.wr, i64 %i.wr, i64 32)
  %i.wy = add i64 %i.ws, %i.wu                    ; 3 uses
  %i.wz = add i64 %i.ww, %i.wx                    ; 2 uses
  %i.xa = call noundef i64 @llvm.fshl.i64(i64 %i.wu, i64 %i.wu, i64 17)
  %i.xb = xor i64 %i.wy, %i.xa                    ; 3 uses
  %i.xc = call noundef i64 @llvm.fshl.i64(i64 %i.ww, i64 %i.ww, i64 21)
  %i.xd = xor i64 %i.xc, %i.wz                    ; 3 uses
  %i.xe = call noundef i64 @llvm.fshl.i64(i64 %i.wy, i64 %i.wy, i64 32)
  %i.xf = xor i64 %i.wz, 576460752303423488
  %i.xg = xor i64 %i.xe, 255
  %i.xh = add i64 %i.xf, %i.xb                    ; 3 uses
  %i.xi = add i64 %i.xd, %i.xg                    ; 2 uses
  %i.xj = call noundef i64 @llvm.fshl.i64(i64 %i.xb, i64 %i.xb, i64 13)
  %i.xk = xor i64 %i.xh, %i.xj                    ; 3 uses
  %i.xl = call noundef i64 @llvm.fshl.i64(i64 %i.xd, i64 %i.xd, i64 16)
  %i.xm = xor i64 %i.xl, %i.xi                    ; 3 uses
  %i.xn = call noundef i64 @llvm.fshl.i64(i64 %i.xh, i64 %i.xh, i64 32)
  %i.xo = add i64 %i.xk, %i.xi                    ; 3 uses
  %i.xp = add i64 %i.xm, %i.xn                    ; 2 uses
  %i.xq = call noundef i64 @llvm.fshl.i64(i64 %i.xk, i64 %i.xk, i64 17)
  %i.xr = xor i64 %i.xo, %i.xq                    ; 3 uses
  %i.xs = call noundef i64 @llvm.fshl.i64(i64 %i.xm, i64 %i.xm, i64 21)
  %i.xt = xor i64 %i.xs, %i.xp                    ; 3 uses
  %i.xu = call noundef i64 @llvm.fshl.i64(i64 %i.xo, i64 %i.xo, i64 32)
  %i.xv = add i64 %i.xr, %i.xp                    ; 3 uses
  %i.xw = add i64 %i.xt, %i.xu                    ; 2 uses
  %i.xx = call noundef i64 @llvm.fshl.i64(i64 %i.xr, i64 %i.xr, i64 13)
  %i.xy = xor i64 %i.xx, %i.xv                    ; 3 uses
  %i.xz = call noundef i64 @llvm.fshl.i64(i64 %i.xt, i64 %i.xt, i64 16)
  %i.ya = xor i64 %i.xz, %i.xw                    ; 3 uses
  %i.yb = call noundef i64 @llvm.fshl.i64(i64 %i.xv, i64 %i.xv, i64 32)
  %i.yc = add i64 %i.xy, %i.xw                    ; 3 uses
  %i.yd = add i64 %i.ya, %i.yb                    ; 2 uses
  %i.ye = call noundef i64 @llvm.fshl.i64(i64 %i.xy, i64 %i.xy, i64 17)
  %i.yf = xor i64 %i.ye, %i.yc                    ; 3 uses
  %i.yg = call noundef i64 @llvm.fshl.i64(i64 %i.ya, i64 %i.ya, i64 21)
  %i.yh = xor i64 %i.yg, %i.yd                    ; 3 uses
  %i.yi = call noundef i64 @llvm.fshl.i64(i64 %i.yc, i64 %i.yc, i64 32)
  %i.yj = add i64 %i.yf, %i.yd
  %i.yk = add i64 %i.yh, %i.yi                    ; 2 uses
  %i.yl = call noundef i64 @llvm.fshl.i64(i64 %i.yf, i64 %i.yf, i64 13)
  %i.ym = xor i64 %i.yl, %i.yj                    ; 3 uses
  %i.yn = call noundef i64 @llvm.fshl.i64(i64 %i.yh, i64 %i.yh, i64 16)
  %i.yo = xor i64 %i.yn, %i.yk                    ; 2 uses
  %i.yp = add i64 %i.ym, %i.yk                    ; 3 uses
  %i.yq = call noundef i64 @llvm.fshl.i64(i64 %i.ym, i64 %i.ym, i64 17)
  %i.yr = call noundef i64 @llvm.fshl.i64(i64 %i.yo, i64 %i.yo, i64 21)
  %i.ys = call noundef i64 @llvm.fshl.i64(i64 %i.yp, i64 %i.yp, i64 32)
  %i.yt = xor i64 %i.yr, %i.yq
  %i.yu = xor i64 %i.yt, %i.ys
  %i.yv = xor i64 %i.yu, %i.yp                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111383)
  %i.yw = load ptr, ptr %.sroa.5424.0..sroa_idx.i.i.i, align 8, !alias.scope !111384, !noalias !111341, !nonnull !56, !noundef !56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111385)
  call void @llvm.experimental.noalias.scope.decl(metadata !111386)
  %i.yx = lshr i64 %i.yv, 57
  %i.yy = trunc nuw nsw i64 %i.yx to i8
  %i.yz = load i64, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !alias.scope !111387, !noalias !111341, !noundef !56 ; 2 uses
  %i.za = load ptr, ptr %.sroa.9426.0..sroa_idx.i.i.i, align 8, !alias.scope !111387, !noalias !111341, !nonnull !56, !noundef !56 ; 2 uses
  %i.zb = insertelement <16 x i8> poison, i8 %i.yy, i64 0
  %i.zc = shufflevector <16 x i8> %i.zb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i ], [ %i.zy, %bb.bb ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.yv, %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i.i.i.i ], [ %i.zz, %bb.bb ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.yz ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.zd, align 1, !noalias !111388 ; 2 uses
  %i.ze = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, %i.zc
  %i.zf = bitcast <16 x i1> %i.ze to i16          ; 2 uses
  %.not.i.not36.i.i.i.i.i.i = icmp eq i16 %i.zf, 0
  br i1 %.not.i.not36.i.i.i.i.i.i, label %._crit_edge.i.i.i93.i.i.i, label %.lr.ph.i.i.i92.i.i.i

.lr.ph.i.i.i92.i.i.i:                             ; preds = %bb.az, %bb.ba
  %.sroa.05.0.i37.i.i.i.i.i.i = phi i16 [ %i.zx, %bb.ba ], [ %i.zf, %bb.az ] ; 3 uses
  %i.zg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i.i, i1 true)
  %i.zh = zext nneg i16 %i.zg to i64
  %i.zi = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.zh
  %i.zj = and i64 %i.zi, %i.yz
  %i.zk = sub nsw i64 0, %i.zj
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.za, i64 %i.zk
  %i.zm = getelementptr inbounds i8, ptr %i.zl, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.zm, align 8, !noalias !111389, !noundef !56 ; 3 uses
  %i.zn = icmp ult i64 %.val.i.i.i.i.i.i.i, %i.vr
  br i1 %i.zn, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.invoke920.i.i.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i92.i.i.i
  %i.zo = getelementptr inbounds nuw [16 x i8], ptr %i.yw, i64 %.val.i.i.i.i.i.i.i ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %.val3.i.i.i.i.i.i.i.i = load i32, ptr %i.zp, align 4, !noalias !111390, !noundef !56
  %i.zq = getelementptr i8, ptr %i.zo, i64 12
  %.val4.i.i.i.i.i.i.i.i = load i32, ptr %i.zq, align 4, !noalias !111390
  %i.zr = icmp eq i32 %..i.i.i, %.val3.i.i.i.i.i.i.i.i
  %i.zs = icmp eq i32 %.48.i.i.i, %.val4.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.zr, i1 %i.zs, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %.thread559.i.i.i, label %bb.ba, !prof !66

._crit_edge.i.i.i93.i.i.i:                        ; preds = %bb.ba, %bb.az
  %i.zt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.zu = bitcast <16 x i1> %i.zt to i16
  %i.zv = icmp eq i16 %i.zu, 0
  br i1 %i.zv, label %bb.bb, label %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i292.i.i.i, !prof !60

bb.ba:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.zw = add i16 %.sroa.05.0.i37.i.i.i.i.i.i, -1
  %i.zx = and i16 %i.zw, %.sroa.05.0.i37.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.zx, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i93.i.i.i, label %.lr.ph.i.i.i92.i.i.i

bb.bb:                                            ; preds = %._crit_edge.i.i.i93.i.i.i
  %i.zy = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16  ; 2 uses
  %i.zz = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.zy
  br label %bb.az

.thread559.i.i.i:                                 ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1L_EuB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %bb.bf, %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !111391)
  %.val.i95.i.i.i = load i64, ptr %i.fq, align 8, !alias.scope !111392, !noalias !111341, !noundef !56
  %i.aaa = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !111393, !noundef !56
  %i.aab = zext i32 %..i.i.i to i64
  %i.aac = xor i64 %.val.i95.i.i.i, %i.aab
  %i.aad = zext i64 %i.aac to i128
  %i.aae = zext i64 %i.aaa to i128                ; 2 uses
  %i.aaf = mul nuw i128 %i.aad, %i.aae            ; 2 uses
  %i.aag = lshr i128 %i.aaf, 64
  %i.aah = xor i128 %i.aag, %i.aaf
  %i.aai = trunc i128 %i.aah to i64               ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111394)
  %i.aaj = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !111395, !noalias !111341, !nonnull !56, !noundef !56 ; 2 uses
  %i.aak = load i64, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !111395, !noalias !111341, !noundef !56 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111396)
  call void @llvm.experimental.noalias.scope.decl(metadata !111397)
  %i.aal = lshr i64 %i.aai, 57
  %i.aam = trunc nuw nsw i64 %i.aal to i8         ; 3 uses
  %i.aan = load i64, ptr %i.fw, align 8, !alias.scope !111398, !noalias !111341, !noundef !56 ; 6 uses
  %i.aao = load ptr, ptr %.sroa.6.0..sroa_idx.i66.i.i.i, align 8, !alias.scope !111398, !noalias !111341, !nonnull !56, !noundef !56 ; 8 uses
  %i.aap = insertelement <16 x i8> poison, i8 %i.aam, i64 0
  %i.aaq = shufflevector <16 x i8> %i.aap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %.thread559.i.i.i
  %.sroa.011.0.i.i.i.i96.i.i.i = phi i64 [ 0, %.thread559.i.i.i ], [ %i.abk, %bb.be ]
  %.pn.i.i.i97.i.i.i = phi i64 [ %i.aai, %.thread559.i.i.i ], [ %i.abl, %bb.be ]
  %.sroa.01.0.i.i.i.i98.i.i.i = and i64 %.pn.i.i.i97.i.i.i, %i.aan ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph33___pyfunction_random_regular_graph:bb.a
  br i1 %.not28.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bh, %bb.bi
  %.sroa.05.029.i.i.i.i.i.i.i.i = phi i16 [ %i.afv, %bb.bi ], [ %i.afg, %bb.bh ] ; 3 uses
  %i.afh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i.i.i.i.i.i.i, i1 true)
  %i.afi = zext nneg i16 %i.afh to i64
  %i.afj = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i, %i.afi
  %i.afk = and i64 %i.afj, %.val5.i.i.i.i.i.i.i
  %i.afl = sub nsw i64 0, %i.afk
  %i.afm = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i111.i.i.i, i64 %i.afl
  %i.afn = getelementptr inbounds i8, ptr %i.afm, i64 -8
  %.val.i.i.i.i.i112.i.i.i = load i64, ptr %i.afn, align 8, !noalias !111408, !noundef !56 ; 5 uses
  %i.afo = icmp ult i64 %.val.i.i.i.i.i112.i.i.i, %i.vr
  br i1 %i.afo, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB27_EuB26_E0NCINvB1p_8get_hashB26_uE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.invoke920.i.i.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB27_EuB26_E0NCINvB1p_8get_hashB26_uE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.afp = getelementptr inbounds nuw [16 x i8], ptr %i.abr, i64 %.val.i.i.i.i.i112.i.i.i ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  %.val3.i.i.i.i.i.i.i.i.i = load i32, ptr %i.afq, align 4, !noalias !111409, !noundef !56
  %i.afr = getelementptr i8, ptr %i.afp, i64 12
  %.val4.i.i.i.i.i.i.i.i.i = load i32, ptr %i.afr, align 4, !noalias !111409
  %i.afs = icmp eq i32 %..i.i.i, %.val3.i.i.i.i.i.i.i.i.i
  %i.aft = icmp eq i32 %.48.i.i.i, %.val4.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.afs, i1 %i.aft, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %bb.bu, label %bb.bi, !prof !66

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.bi, %bb.bh
  %.not11.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i, 1
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.bj, !prof !60

bb.bi:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB27_EuB26_E0NCINvB1p_8get_hashB26_uE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.afu = add i16 %.sroa.05.029.i.i.i.i.i.i.i.i, -1
  %i.afv = and i16 %i.afu, %.sroa.05.029.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.afv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.afw = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i, zeroinitializer
  %i.afx = bitcast <16 x i1> %i.afw to i16        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.afx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bk, label %.thread24.i.i.i.i.i.i.i.i, !prof !60

.thread24.i.i.i.i.i.i.i.i:                        ; preds = %bb.bj
  %i.afy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.afx, i1 true)
  %i.afz = zext nneg i16 %i.afy to i64
  %i.aga = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i, %i.afz
  %i.agb = and i64 %i.aga, %.val5.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %.thread24.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i = phi i64 [ %i.agb, %.thread24.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.agc = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.agd = bitcast <16 x i1> %i.agc to i16
  %i.age = icmp eq i16 %i.agd, 0
  br i1 %i.age, label %bb.bk, label %bb.bl, !prof !60

bb.bk:                                            ; preds = %.thread.i.i.i.i.i.i.i.i, %bb.bj
  %.sroa.01.122.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i ], [ 0, %bb.bj ]
  %.sroa.4.120.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ undef, %bb.bj ]
  %i.agf = add i64 %i.afd, 16                     ; 2 uses
  %i.agg = add i64 %i.agf, %.sroa.0.017.i.i.i.i.i.i.i.i
  br label %bb.bh

bb.bl:                                            ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.agh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i111.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i
  %i.agi = load i8, ptr %i.agh, align 1, !noalias !111410, !noundef !56 ; 2 uses
  %i.agj = icmp sgt i8 %i.agi, -1
  br i1 %i.agj, label %bb.bm, label %bb.bn, !prof !60

bb.bm:                                            ; preds = %bb.bl
  %.val62.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i111.i.i.i, align 16, !noalias !111410
  %i.agk = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.agl = bitcast <16 x i1> %i.agk to i16        ; 2 uses
  %.not.i22.i.i.i.i.i.i.i.i = icmp ne i16 %i.agl, 0
  %i.agm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.agl, i1 true)
  %i.agn = zext nneg i16 %i.agm to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i115.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i111.i.i.i, i64 %i.agn
  %.pre.i.i116.i.i.i = load i8, ptr %.phi.trans.insert.i.i115.i.i.i, align 1, !noalias !111411
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ago = phi i8 [ %.pre.i.i116.i.i.i, %bb.bm ], [ %i.agi, %bb.bl ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %i.agn, %bb.bm ], [ %.sroa.4.121.i.i.i.i.i.i.i.i, %bb.bl ] ; 3 uses
  %i.agp = load i64, ptr %.sroa.7425.0..sroa_idx.i.i.i, align 8, !alias.scope !111382, !noalias !111341, !noundef !56 ; 2 uses
  %i.agq = icmp ult i64 %i.agp, 576460752303423488
  call void @llvm.assume(i1 %i.agq)
  call void @llvm.experimental.noalias.scope.decl(metadata !111412)
  %i.agr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i111.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i
  %i.ags = and i8 %i.ago, 1
  %i.agt = zext nneg i8 %i.ags to i64
  %i.agu = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i, -16
  %i.agv = and i64 %i.agu, %.val5.i.i.i.i.i.i.i
  store i8 %i.afa, ptr %i.agr, align 1, !noalias !111411
  %i.agw = getelementptr i8, ptr %.val.i.i.i.i111.i.i.i, i64 %i.agv
  %i.agx = getelementptr i8, ptr %i.agw, i64 16
  store i8 %i.afa, ptr %i.agx, align 1, !noalias !111411
  %i.agy = load <2 x i64>, ptr %.sroa.12427.0..sroa_idx.i.i.i, align 8, !alias.scope !111413, !noalias !111341
  %i.agz = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.agt, i64 0
  %i.aha = sub <2 x i64> %i.agy, %i.agz
  store <2 x i64> %i.aha, ptr %.sroa.12427.0..sroa_idx.i.i.i, align 8, !alias.scope !111413, !noalias !111341
  %i.ahb = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i
  %i.ahc = getelementptr inbounds [8 x i8], ptr %.val.i.i.i.i111.i.i.i, i64 %i.ahb
  %i.ahd = getelementptr inbounds i8, ptr %i.ahc, i64 -8
  store i64 %i.agp, ptr %i.ahd, align 8, !noalias !111411
  call void @llvm.experimental.noalias.scope.decl(metadata !111414)
  %i.ahe = load i64, ptr %.sroa.7425.0..sroa_idx.i.i.i, align 8, !alias.scope !111415, !noalias !111341, !noundef !56 ; 9 uses
  %i.ahf = icmp ult i64 %i.ahe, 576460752303423488
  call void @llvm.assume(i1 %i.ahf)
  %i.ahg = load i64, ptr %i.r, align 8, !range !59, !alias.scope !111415, !noalias !111341, !noundef !56
  %i.ahh = icmp eq i64 %i.ahe, %i.ahg
  br i1 %i.ahh, label %bb.bo, label %._RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i

._RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i: ; preds = %bb.bn
  %.pre23.i.i.i.i.i = load ptr, ptr %.sroa.5424.0..sroa_idx.i.i.i, align 8, !alias.scope !111416, !noalias !111341
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !111417)
  %i.ahi = load i64, ptr %i.ft, align 8, !alias.scope !111418, !noalias !111341, !noundef !56
  %i.ahj = load i64, ptr %.sroa.12427.0..sroa_idx.i.i.i, align 8, !alias.scope !111418, !noalias !111341, !noundef !56
  %i.ahk = add i64 %i.ahj, %i.ahi                 ; 2 uses
  %i.ahl = call i64 @llvm.umin.i64(i64 %i.ahk, i64 576460752303423487) ; 3 uses
  %i.ahm = sub nsw i64 %i.ahl, %i.ahe
  %i.ahn = icmp ugt i64 %i.ahm, 1
  br i1 %i.ahn, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %bb.br, %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !111419)
  call void @llvm.experimental.noalias.scope.decl(metadata !111420)
  call void @llvm.experimental.noalias.scope.decl(metadata !111421)
  %i.aho = add nuw nsw i64 %i.ahe, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !111422
  %.val11.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5424.0..sroa_idx.i.i.i, align 8, !alias.scope !111423, !noalias !111341
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, i64 %i.ahe, ptr %.val11.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aho, i64 noundef 8, i64 noundef range(i64 16, 89) 16), !noalias !111424
  %i.ahp = load i64, ptr %i.m, align 8, !range !57, !noalias !111422, !noundef !56
  %i.ahq = trunc nuw i64 %i.ahp to i1
  br i1 %i.ahq, label %bb.bq, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.ahr = load i64, ptr %i.fv, align 8, !range !112, !noalias !111422, !noundef !56
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aht = load i64, ptr %i.ahs, align 8, !noalias !111422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !111422
  br label %.invoke.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bp
  %i.ahu = load ptr, ptr %i.fv, align 8, !noalias !111422, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !111422
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !111425)
  call void @llvm.experimental.noalias.scope.decl(metadata !111426)
  %i.ahv = icmp ult i64 %i.ahk, %i.ahe
  br i1 %i.ahv, label %bb.bp, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !111427
  %.val11.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5424.0..sroa_idx.i.i.i, align 8, !alias.scope !111428, !noalias !111341
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, i64 %i.ahe, ptr %.val11.i.i.i.i.i.i.i.i.i, i64 noundef %i.ahl, i64 noundef 8, i64 noundef range(i64 16, 89) 16), !noalias !111429
  %i.ahw = load i64, ptr %i.l, align 8, !range !57, !noalias !111427, !noundef !56
  %i.ahx = trunc nuw i64 %i.ahw to i1
  br i1 %i.ahx, label %bb.bt, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !111427
  br label %bb.bp

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bs
  %i.ahy = load ptr, ptr %i.fu, align 8, !noalias !111427, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !111427
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %storemerge.i.i114.i.i.i = phi ptr [ %i.ahy, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.ahu, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.ahl, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.aho, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i114.i.i.i, ptr %.sroa.5424.0..sroa_idx.i.i.i, align 8, !alias.scope !111418, !noalias !111341
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !111418, !noalias !111341
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i, %._RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i
  %i.ahz = phi ptr [ %.pre23.i.i.i.i.i, %._RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i ], [ %storemerge.i.i114.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !111430)
  %i.aia = getelementptr inbounds nuw [16 x i8], ptr %i.ahz, i64 %i.ahe ; 3 uses
  store i64 %i.aev, ptr %i.aia, align 8, !noalias !111431
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  store i32 %..i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !111431
  %.sroa.5.0..sroa_idx.i4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aia, i64 12
  store i32 %.48.i.i.i, ptr %.sroa.5.0..sroa_idx.i4.i.i.i.i.i, align 4, !noalias !111431
  %i.aib = add nuw nsw i64 %i.ahe, 1
  store i64 %i.aib, ptr %.sroa.7425.0..sroa_idx.i.i.i, align 8, !alias.scope !111416, !noalias !111341
  br label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.bu:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB27_EuB26_E0NCINvB1p_8get_hashB26_uE0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.aic = load i64, ptr %.sroa.7425.0..sroa_idx.i.i.i, align 8, !alias.scope !111382, !noalias !111341, !noundef !56 ; 2 uses
  %i.aid = icmp ult i64 %.val.i.i.i.i.i112.i.i.i, %i.aic
  br i1 %i.aid, label %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.invoke920.i.i.i

_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.loopexit854.i.i.i, %bb.bu, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBL_EuE10push_entryCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.aie = add nuw nsw i64 %.sroa.0.0712.i.i.i, 2 ; 2 uses
  %5 = or disjoint i64 %i.aie, 1
  %i.aif = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !111341, !noundef !56 ; 2 uses
  %i.aig = icmp ult i64 %i.aif, 2305843009213693952
  call void @llvm.assume(i1 %i.aig)
  %i.aih = icmp samesign ult i64 %5, %i.aif
  br i1 %i.aih, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.bv:                                            ; preds = %._crit_edge.i.i.i106.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !111432)
  %i.aii = load i64, ptr %i.fx, align 8, !alias.scope !111432, !noalias !111433, !noundef !56 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111434)
  %.sroa.0.07.i.i.i.i.i.i.i = and i64 %i.aan, %i.aai ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aao, i64 %.sroa.0.07.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aij, align 1, !noalias !111435
  %i.aik = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i.i.i, zeroinitializer
  %i.ail = bitcast <16 x i1> %i.aik to i16        ; 2 uses
  %.not.i9.i.i.i.i.i.i.i = icmp eq i16 %i.ail, 0
  br i1 %.not.i9.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !prof !69

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.bv
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i.i.i, %bb.bv ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ail, %bb.bv ], [ %i.ajc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aim = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ain = zext nneg i16 %i.aim to i64
  %i.aio = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, %i.ain
  %i.aip = and i64 %i.aio, %i.aan                 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !noalias !111436, !noundef !56 ; 2 uses
  %i.ais = icmp sgt i8 %i.air, -1
  br i1 %i.ais, label %bb.bw, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i, !prof !60

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.val62.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aao, align 16, !noalias !111436
  %i.ait = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i, zeroinitializer
  %i.aiu = bitcast <16 x i1> %i.ait to i16        ; 2 uses
  %.not.i6.i.i.i.i.i.i.i = icmp ne i16 %i.aiu, 0
  %i.aiv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aiu, i1 true)
  %i.aiw = zext nneg i16 %i.aiv to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aiw
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 1, !noalias !111436
  br label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bv, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.i, %bb.bv ]
  %i.aix = phi i64 [ %i.aiy, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.bv ]
  %i.aiy = add i64 %i.aix, 16                     ; 2 uses
  %i.aiz = add i64 %i.aiy, %.sroa.0.010.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = and i64 %i.aiz, %i.aan ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aao, i64 %.sroa.0.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aja, align 1, !noalias !111435
  %i.ajb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i.i.i, zeroinitializer
  %i.ajc = bitcast <16 x i1> %i.ajb to i16        ; 2 uses
  %.not.i.i.i.i.i127.i.i.i = icmp eq i16 %i.ajc, 0
  br i1 %.not.i.i.i.i.i127.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !prof !70

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i: ; preds = %bb.bw, %._crit_edge.i.i.i.i.i.i.i
  %i.ajd = phi i8 [ %.pre.i.i.i.i.i.i, %bb.bw ], [ %i.air, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i.i.i.i.i = phi i64 [ %i.aiw, %bb.bw ], [ %i.aip, %._crit_edge.i.i.i.i.i.i.i ]
  %i.aje = load i64, ptr %i.fy, align 8, !alias.scope !111437, !noalias !111433, !noundef !56 ; 2 uses
  %i.ajf = icmp eq i64 %i.aje, 0
  %i.ajg = trunc i8 %i.ajd to i1
  %or.cond.i.i.i122.i.i.i = and i1 %i.ajf, %i.ajg
  br i1 %or.cond.i.i.i122.i.i.i, label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, !prof !68

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i
  %i.ajh = invoke fastcc i64 @_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i66.i.i.i, ptr noundef nonnull align 8 %i.aaj, i64 noundef %i.aak) #62
          to label %.noexc128.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc128.i.i.i:                                  ; preds = %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val.i.i.i124.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i66.i.i.i, align 8, !alias.scope !111437, !noalias !111433 ; 3 uses
  %.val5.i.i.i.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !111437, !noalias !111433, !noundef !56 ; 2 uses
  %i.aji = call fastcc noundef i64 @_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val.i.i.i124.i.i.i, i64 %.val5.i.i.i.i.i.i, i64 noundef %i.aai) #64, !noalias !111433 ; 2 uses
  %.phi.trans.insert8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i124.i.i.i, i64 %i.aji
  %.pre9.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert8.i.i.i.i.i.i, align 1, !noalias !111438
  %.pre10.i.i.i125.i.i.i = load i64, ptr %i.fy, align 8, !alias.scope !111439, !noalias !111433
  %.pre.i.i126.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !111439, !noalias !111433
  br label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.noexc128.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i
  %i.ajj = phi i64 [ %.pre.i.i126.i.i.i, %.noexc128.i.i.i ], [ %i.aii, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ]
  %i.ajk = phi i64 [ %.val5.i.i.i.i.i.i, %.noexc128.i.i.i ], [ %i.aan, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ]
  %i.ajl = phi i64 [ %.pre10.i.i.i125.i.i.i, %.noexc128.i.i.i ], [ %i.aje, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ]
  %i.ajm = phi i8 [ %.pre9.i.i.i.i.i.i, %.noexc128.i.i.i ], [ %i.ajd, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ]
  %i.ajn = phi ptr [ %.val.i.i.i124.i.i.i, %.noexc128.i.i.i ], [ %i.aao, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i123.i.i.i = phi i64 [ %i.aji, %.noexc128.i.i.i ], [ %.sroa.0.0.i5.i.i.i.i.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111440)
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %.sroa.0.0.i.i.i123.i.i.i
  %i.ajp = and i8 %i.ajm, 1
  %i.ajq = zext nneg i8 %i.ajp to i64
  %i.ajr = sub i64 %i.ajl, %i.ajq
  store i64 %i.ajr, ptr %i.fy, align 8, !alias.scope !111439, !noalias !111433
  %i.ajs = add i64 %.sroa.0.0.i.i.i123.i.i.i, -16
  %i.ajt = and i64 %i.ajs, %i.ajk
  store i8 %i.aam, ptr %i.ajo, align 1, !noalias !111438
  %i.aju = getelementptr i8, ptr %i.ajn, i64 %i.ajt
  %i.ajv = getelementptr i8, ptr %i.aju, i64 16
  store i8 %i.aam, ptr %i.ajv, align 1, !noalias !111438
  %i.ajw = add i64 %i.ajj, 1
  store i64 %i.ajw, ptr %i.fx, align 8, !alias.scope !111439, !noalias !111433
  %i.ajx = sub nsw i64 0, %.sroa.0.0.i.i.i123.i.i.i
  %i.ajy = getelementptr inbounds [8 x i8], ptr %i.ajn, i64 %i.ajx
  %i.ajz = getelementptr inbounds i8, ptr %i.ajy, i64 -8
  store i64 %i.aii, ptr %i.ajz, align 8, !noalias !111438
  call void @llvm.experimental.noalias.scope.decl(metadata !111441)
  %i.aka = load i64, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !111441, !noalias !111341, !noundef !56 ; 10 uses
  %i.akb = icmp ult i64 %i.aka, 384307168202282326
  call void @llvm.assume(i1 %i.akb)
  %i.akc = load i64, ptr %i.p, align 8, !range !59, !alias.scope !111441, !noalias !111341, !noundef !56
  %i.akd = icmp eq i64 %i.aka, %i.akc
  br i1 %i.akd, label %bb.bx, label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i..noexc129_crit_edge.i.i.i

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i..noexc129_crit_edge.i.i.i: ; preds = %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.pre794.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !111442, !noalias !111341
  br label %.noexc129.i.i.i

bb.bx:                                            ; preds = %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !111443)
  %i.ake = load i64, ptr %i.fx, align 8, !alias.scope !111444, !noalias !111341, !noundef !56
  %i.akf = load i64, ptr %i.fy, align 8, !alias.scope !111444, !noalias !111341, !noundef !56
  %i.akg = add i64 %i.akf, %i.ake                 ; 2 uses
  %i.akh = call i64 @llvm.umin.i64(i64 %i.akg, i64 384307168202282325) ; 3 uses
  %i.aki = sub nsw i64 %i.akh, %i.aka
  %i.akj = icmp ugt i64 %i.aki, 1
  br i1 %i.akj, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.cc, %bb.ca, %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !111445)
  call void @llvm.experimental.noalias.scope.decl(metadata !111446)
  call void @llvm.experimental.noalias.scope.decl(metadata !111447)
  %i.akk = add nuw nsw i64 %i.aka, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !111448
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !111449, !noalias !111341
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, i64 %i.aka, ptr %.val11.i.i.i.i.i.i.i.i, i64 noundef %i.akk, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !111448
  %i.akl = load i64, ptr %i.k, align 8, !range !57, !noalias !111448, !noundef !56
  %i.akm = trunc nuw i64 %i.akl to i1
  br i1 %i.akm, label %bb.bz, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.akn = load i64, ptr %i.ga, align 8, !range !112, !noalias !111448, !noundef !56
  %i.ako = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.akp = load i64, ptr %i.ako, align 8, !noalias !111448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !111448
  br label %.invoke.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.akq = load ptr, ptr %i.ga, align 8, !noalias !111448, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !111448
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !111450)
  call void @llvm.experimental.noalias.scope.decl(metadata !111451)
  %i.akr = icmp ult i64 %i.akg, %i.aka
  br i1 %i.akr, label %bb.by, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !111452
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !111453, !noalias !111341
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, i64 %i.aka, ptr %.val11.i.i.i.i.i.i.i, i64 noundef %i.akh, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !111452
  %i.aks = load i64, ptr %i.j, align 8, !range !57, !noalias !111452, !noundef !56
  %i.akt = trunc nuw i64 %i.aks to i1
  br i1 %i.akt, label %bb.cc, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !111452
  br label %bb.by

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.cb
  %i.aku = load ptr, ptr %i.fz, align 8, !noalias !111452, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !111452
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.aku, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.akq, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sink.i.i.i.i.i = phi i64 [ %i.akh, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.akk, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i.i, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !111444, !noalias !111341
  store i64 %.sink.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !111444, !noalias !111341
  br label %.noexc129.i.i.i

.noexc129.i.i.i:                                  ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i..noexc129_crit_edge.i.i.i
  %i.akv = phi ptr [ %.pre794.i.i.i, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i..noexc129_crit_edge.i.i.i ], [ %storemerge.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !111454)
  %i.akw = getelementptr inbounds nuw [24 x i8], ptr %i.akv, i64 %i.aka ; 3 uses
  store i64 %i.aai, ptr %i.akw, align 8, !noalias !111455
  %.sroa.4.0..sroa_idx.i232.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i232.i.i.i, align 8, !noalias !111455
  %.sroa.5.0..sroa_idx.i233.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  store i32 %..i.i.i, ptr %.sroa.5.0..sroa_idx.i233.i.i.i, align 8, !noalias !111455
  %i.akx = add nuw nsw i64 %i.aka, 1              ; 2 uses
  store i64 %i.akx, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !111442, !noalias !111341
  %.not575.i.i.i = icmp ugt i64 %i.aii, %i.aka
  br i1 %.not575.i.i.i, label %.invoke920.i.i.i, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE13insert_uniqueCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE13insert_uniqueCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.noexc129.i.i.i
  %i.aky = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !111432, !noalias !111433, !nonnull !56, !noundef !56
  %i.akz = getelementptr inbounds nuw [24 x i8], ptr %i.aky, i64 %i.aii
  %.pre795.i.i.i = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !111456
  %.pre800.i.i.i = zext i64 %.pre795.i.i.i to i128
  br label %.loopexit855.i.i.i

end_hunk_1
