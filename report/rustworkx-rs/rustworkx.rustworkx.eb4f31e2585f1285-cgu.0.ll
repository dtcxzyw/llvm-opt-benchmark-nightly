Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 400
begin_hunk_0_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerjEINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerIB1H_INtNtB6_6reduce14ReduceConsumerNCINvNtNtNtCs3sCKvcUjPpt_9hashbrown20external_trait_impls5rayon7helpers7collectINtB1J_3MapINtB1g_8IntoIterjENCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7r_5types3any5PyAnyEB7m_NtB6m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB7r_3err5PyErrEs1_0EEs0_0NvMs5_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtBai_10LinkedListINtNtBam_3vec3VecTjTINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjIBbq_jENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEIBbK_jdBcw_EEEEE3newENCB38_s_0ENvMBbs_Bbp_3newNCB38_0EB4Q_EEB8Q_:bb.a
  %i.ra = lshr i64 %i.qx, 57
  %i.rb = trunc nuw nsw i64 %i.ra to i8
  %i.rc = load i64, ptr %i.bl, align 8, !alias.scope !39061, !noalias !38947, !noundef !56 ; 2 uses
  %i.rd = load ptr, ptr %i.bk, align 8, !alias.scope !39061, !noalias !38947, !nonnull !56, !noundef !56 ; 2 uses
  %i.re = insertelement <16 x i8> poison, i8 %i.rb, i64 0
  %i.rf = shufflevector <16 x i8> %i.re, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bo, %bb.bk
  %.sroa.011.0.i.i.i.i151.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bk ], [ %i.rz, %bb.bo ]
  %.pn.i.i.i152.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qx, %bb.bk ], [ %i.sa, %bb.bo ]
  %.sroa.01.0.i.i.i.i153.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i152.i.i.i.i.i.i.i.i.i.i.i, %i.rc ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 %.sroa.01.0.i.i.i.i153.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i154.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.rg, align 1, !noalias !39062 ; 2 uses
  %i.rh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i154.i.i.i.i.i.i.i.i.i.i.i, %i.rf
  %i.ri = bitcast <16 x i1> %i.rh to i16          ; 2 uses
  %.not.i.not36.i.i.i155.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ri, 0
  br i1 %.not.i.not36.i.i.i155.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i162.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i156.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i156.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.bl, %bb.bn
  %.sroa.05.0.i37.i.i.i157.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ry, %bb.bn ], [ %i.ri, %bb.bl ] ; 3 uses
  %i.rj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i157.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.rk = zext nneg i16 %i.rj to i64
  %i.rl = add i64 %.sroa.01.0.i.i.i.i153.i.i.i.i.i.i.i.i.i.i.i, %i.rk
  %i.rm = and i64 %i.rl, %i.rc
  %i.rn = sub nsw i64 0, %i.rm
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.rd, i64 %i.rn
  %i.rp = getelementptr inbounds i8, ptr %i.ro, i64 -8
  %.val.i.i.i.i158.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.rp, align 8, !noalias !39063, !noundef !56 ; 3 uses
  %i.rq = icmp ult i64 %.val.i.i.i.i158.i.i.i.i.i.i.i.i.i.i.i, %i.qz
  br i1 %i.rq, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1K_EB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i.i.i.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i156.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i158.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.qz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1218) #60
          to label %.noexc169.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp291.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !38956

.noexc169.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.bm
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1K_EB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i156.i.i.i.i.i.i.i.i.i.i.i
  %i.rr = getelementptr inbounds nuw [40 x i8], ptr %i.qy, i64 %.val.i.i.i.i158.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %.val2.i.i.i.i.i160.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.rs, align 4, !noalias !39064, !noundef !56
  %i.rt = icmp eq i32 %.val2.i.i.i.i.i160.i.i.i.i.i.i.i.i.i.i.i, %.sroa.5211.sroa.5.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.rt, label %bb.bq, label %bb.bn, !prof !66

._crit_edge.i.i.i162.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.bn, %bb.bl
  %i.ru = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i154.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.rv = bitcast <16 x i1> %i.ru to i16
  %i.rw = icmp eq i16 %i.rv, 0
  br i1 %i.rw, label %bb.bo, label %bb.bp, !prof !60

bb.bn:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1K_EB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i.i.i.i.i.i.i.i.i.i.i
  %i.rx = add i16 %.sroa.05.0.i37.i.i.i157.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ry = and i16 %i.rx, %.sroa.05.0.i37.i.i.i157.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i161.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ry, 0
  br i1 %.not.i.not.i.i.i161.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i162.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i156.i.i.i.i.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i.i162.i.i.i.i.i.i.i.i.i.i.i
  %i.rz = add i64 %.sroa.011.0.i.i.i.i151.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.sa = add i64 %.sroa.01.0.i.i.i.i153.i.i.i.i.i.i.i.i.i.i.i, %i.rz
  br label %bb.bl

bb.bp:                                            ; preds = %._crit_edge.i.i.i162.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0237.0.copyload272.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !38951 ; 2 uses
  %i.sb = icmp eq i64 %.sroa.0237.0.copyload272.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sb, label %_RINvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB3_5EntryNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBQ_EE10and_modifyNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path8dijkstra8dijkstraRINtNtBS_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtBU_10UndirectedENCINvNtB2A_12steiner_tree33all_pairs_dijkstra_shortest_pathsB3B_NCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB4g_3err5PyErrEs_0dzINtB5_8IndexMapBQ_dNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEE0EB6G_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bp
  %.sroa.5238.0.copyload273.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i144.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38951, !nonnull !56, !noundef !56
  %i.sc = shl nuw i64 %.sroa.0237.0.copyload272.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5238.0.copyload273.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.sc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39065
  br label %_RINvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB3_5EntryNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBQ_EE10and_modifyNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path8dijkstra8dijkstraRINtNtBS_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtBU_10UndirectedENCINvNtB2A_12steiner_tree33all_pairs_dijkstra_shortest_pathsB3B_NCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB4g_3err5PyErrEs_0dzINtB5_8IndexMapBQ_dNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEE0EB6G_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1K_EB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0237.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !38951
  %.sroa.5238.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i144.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38951
  call void @llvm.experimental.noalias.scope.decl(metadata !39066)
  call void @llvm.experimental.noalias.scope.decl(metadata !39067)
  %.val.i.i173.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.rr, align 8, !alias.scope !39067, !noalias !39065 ; 2 uses
  %i.sd = icmp eq i64 %.val.i.i173.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sd, label %bb.br, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i7.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i7.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bq
  %i.se = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %.val1.i.i174.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.se, align 8, !alias.scope !39067, !noalias !39065, !nonnull !56, !noundef !56
  %i.sf = shl nuw i64 %.val.i.i173.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i174.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.sf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39068
  br label %bb.br

bb.br:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i7.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bq
  store i64 %.sroa.0237.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.rr, align 8, !alias.scope !39069, !noalias !39065
  %.sroa.5.0..sroa_idx11.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  store ptr %.sroa.5238.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx11.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39069, !noalias !39065
  %.sroa.6.0..sroa_idx13.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  store i64 %i.qp, ptr %.sroa.6.0..sroa_idx13.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39069, !noalias !39065
  br label %_RINvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB3_5EntryNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBQ_EE10and_modifyNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path8dijkstra8dijkstraRINtNtBS_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtBU_10UndirectedENCINvNtB2A_12steiner_tree33all_pairs_dijkstra_shortest_pathsB3B_NCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB4g_3err5PyErrEs_0dzINtB5_8IndexMapBQ_dNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEE0EB6G_.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB3_5EntryNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBQ_EE10and_modifyNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path8dijkstra8dijkstraRINtNtBS_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtBU_10UndirectedENCINvNtB2A_12steiner_tree33all_pairs_dijkstra_shortest_pathsB3B_NCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB4g_3err5PyErrEs_0dzINtB5_8IndexMapBQ_dNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEE0EB6G_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.br, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !38951
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.backedge

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.backedge: ; preds = %_RINvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB3_5EntryNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBQ_EE10and_modifyNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path8dijkstra8dijkstraRINtNtBS_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4g_5types3any5PyAnyEB4b_NtBU_10UndirectedENCINvNtB2A_12steiner_tree33all_pairs_dijkstra_shortest_pathsB3B_NCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB4g_3err5PyErrEs_0dzINtB5_8IndexMapBQ_dNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEE0EB6G_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.az, %bb.ax, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit68.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp291.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit283.i.i.i.i.i.i.i.i.i.i.i, %bb.bm
  %lpad.loopexit.split-lp1270 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val27.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !38951 ; 2 uses
  %i.sg = icmp eq i64 %.val27.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i175.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i175.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp291.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val28.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i144.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38951, !nonnull !56, !noundef !56
  %i.sh = shl nuw i64 %.val27.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.sh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !38956
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit61.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i60.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !38951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !38951
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.bt unwind label %bb.h, !noalias !38947

bb.bs:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39070)
  call void @llvm.experimental.noalias.scope.decl(metadata !39071)
  %.val1.i.i177.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !39072, !noalias !38951, !noundef !56 ; 4 uses
  %i.si = icmp eq i64 %.val1.i.i177.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.si, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bs
  %.val.i.i178.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39072, !noalias !38951, !nonnull !56, !noundef !56
  %i.sj = shl i64 %.val1.i.i177.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.sk = icmp slt i64 %.val1.i.i177.i.i.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.sk)
  %i.sl = and i64 %i.sj, -16                      ; 2 uses
  %i.sm = add i64 %i.sl, 16                       ; 2 uses
  %i.sn = add nsw i64 %.val1.i.i177.i.i.i.i.i.i.i.i.i.i.i, 17
  %i.so = add i64 %i.sn, %i.sm                    ; 3 uses
  %i.sp = icmp uge i64 %i.so, %i.sm
  call void @llvm.assume(i1 %i.sp)
  %i.sq = icmp ult i64 %i.so, 9223372036854775793
  call void @llvm.assume(i1 %i.sq)
  %i.sr = sub nuw nsw i64 -16, %i.sl
  %i.ss = getelementptr inbounds i8, ptr %.val.i.i178.i.i.i.i.i.i.i.i.i.i.i, i64 %i.sr
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ss, i64 noundef %i.so, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !39073
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bs
  %.val2.i.i179.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !39072, !noalias !38951 ; 2 uses
  %i.st = icmp eq i64 %.val2.i.i179.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.st, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val3.i.i180.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39072, !noalias !38951, !nonnull !56, !noundef !56
  %i.su = mul nuw i64 %.val2.i.i179.i.i.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i180.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.su, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39073
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit61.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !38951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !38947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !38947
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !38947 ; 7 uses
  %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !38947 ; 10 uses
  %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !noalias !38947 ; 9 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !noalias !38947 ; 4 uses
  %i.sv = icmp eq i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sv, label %bb.bu, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bt
  %.sroa.68.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !noalias !38947, !nonnull !56, !noundef !56
  %i.sw = shl i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i, 3
  %i.sx = icmp slt i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.sx)
  %i.sy = and i64 %i.sw, -16                      ; 2 uses
  %i.sz = add i64 %i.sy, 16                       ; 2 uses
  %i.ta = add nsw i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i, 17
  %i.tb = add i64 %i.ta, %i.sz                    ; 3 uses
  %i.tc = icmp uge i64 %i.tb, %i.sz
  call void @llvm.assume(i1 %i.tc)
  %i.td = icmp ult i64 %i.tb, 9223372036854775793
  call void @llvm.assume(i1 %i.td)
  %i.te = sub nuw nsw i64 -16, %i.sy
  %i.tf = getelementptr inbounds i8, ptr %.sroa.68.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.te
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tf, i64 noundef %i.tb, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !39074
  br label %bb.bu

bb.bu:                                            ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  %i.tg = icmp ult i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, 230584300921369396
  call void @llvm.assume(i1 %i.tg)
  %.idx31.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, 40 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.idx31.i.i.i.i.i.i.i.i.i.i ; 6 uses
  store ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !noalias !38947
  store ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38947
  store i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38947
  store ptr %i.th, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38947
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.bn, align 8, !noalias !38947
  %i.ti = ptrtoint ptr %i.th to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !39075
  %i.tj = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i.i.i.i.i.i.i, !noalias !39075 ; 2 uses

.noexc3.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bu
  %i.tk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !39075
  %i.tl = icmp eq i8 %i.tk, 2
  br i1 %i.tl, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, !prof !66

bb.bv:                                            ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i.i.i.i.i.i.i, !noalias !39075

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39076)
  %i.tm = icmp eq i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.tm, label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.bw

_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.q, align 8, !alias.scope !39076, !noalias !39075
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i13.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !39075
  store i64 %i.tj, ptr %i.bp, align 8, !alias.scope !39076, !noalias !39075
  br label %bb.ca

bb.bw:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !39077
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.p, i64 noundef range(i64 1, 0) %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc6.i.i.i.i.i.i.i.i.i.i.i unwind label %.thread.i.thread228.i.i.i.i.i.i.i.i.i.i, !noalias !39075

.thread.i.thread228.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.bw
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i

.noexc6.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bw
  %.sroa.0.0.copyload.i.i.i10.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !39078 ; 3 uses
  %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39078 ; 5 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !39079
  %i.to = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %.idx31.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39079 ; 2 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %bb.by, label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.by
  %i.tq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tr = icmp eq i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tr, label %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bx
  %i.ts = shl i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, 3
  %i.tt = icmp slt i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.tt), !noalias !39080
  %i.tu = and i64 %i.ts, -16                      ; 2 uses
  %i.tv = add i64 %i.tu, 16                       ; 2 uses
  %i.tw = add nsw i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, 17
  %i.tx = add i64 %i.tw, %i.tv                    ; 3 uses
  %i.ty = icmp uge i64 %i.tx, %i.tv
  call void @llvm.assume(i1 %i.ty), !noalias !39080
  %i.tz = icmp ult i64 %i.tx, 9223372036854775793
  call void @llvm.assume(i1 %i.tz), !noalias !39080
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i10.i.i.i.i.i.i.i.i.i.i) ], !noalias !39080
  %i.ua = sub nuw nsw i64 -16, %i.tu
  %i.ub = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i10.i.i.i.i.i.i.i.i.i.i, i64 %i.ua
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ub, i64 noundef %i.tx, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !39078
  br label %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i

bb.by:                                            ; preds = %.noexc6.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx31.i.i.i.i.i.i.i.i.i.i) #61
          to label %bb.bz unwind label %bb.bx, !noalias !39078

bb.bz:                                            ; preds = %bb.by
  unreachable

_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc6.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !39075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !39077
  store i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.q, align 8, !alias.scope !39076, !noalias !39075
  store ptr %i.to, ptr %.sroa.4.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i13.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store ptr %.sroa.0.0.copyload.i.i.i10.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store i64 %.sroa.5.0.copyload.i.i.i11.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39076, !noalias !39075
  store i64 %i.tj, ptr %i.bp, align 8, !alias.scope !39076, !noalias !39075
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39081, !noalias !39075
  %.pre.fr.i.i.i.i.i.i.i.i.i.i.i = freeze i64 %.pre.i.i.i.i.i.i.i.i.i.i.i
  %i.uc = icmp eq i64 %.pre.fr.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !39081)
  %i.ud = lshr i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.uc, i64 0, i64 %i.ud
  %i.ue = sub nuw nsw i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.ca

bb.ca:                                            ; preds = %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ue, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecjEE7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.cb unwind label %bb.ck, !noalias !39082

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.tm, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.cj
  %i.uf = phi ptr [ %i.ug, %bb.cj ], [ %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.cb ] ; 5 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 40 ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.uf, align 8, !noalias !39083 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.cd

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.ug to i64
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.cc:                                            ; preds = %_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ci, %bb.cc
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.uh, %bb.cc ], [ %i.vz, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.vz, %bb.ci ] ; 2 uses
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = sub nuw i64 %i.ti, %i.ui
  %i.uk = udiv exact i64 %i.uj, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !39084)
  %i.ul = icmp eq ptr %i.th, %i.ug
  br i1 %i.ul, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.un, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.um = getelementptr inbounds nuw [40 x i8], ptr %i.ug, i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.un = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.um, align 8, !alias.scope !39084, !noalias !39085 ; 2 uses
  %i.uo = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.uo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.up = getelementptr i8, ptr %i.um, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.up, align 8, !alias.scope !39084, !noalias !39085, !nonnull !56, !noundef !56
  %i.uq = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.uq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39086
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ur = icmp eq i64 %i.un, %i.uk
  br i1 %i.ur, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.us = icmp eq i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.us, label %.body7.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ut = mul nuw i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ut, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39085
  br label %.body7.i.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %.sroa.63.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %.sroa.63.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.63.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39083
  %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39087, !nonnull !56, !noundef !56 ; 8 uses
  %.sroa.8.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39087 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !39088
  %i.uu = icmp ult i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.uu)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.uv = getelementptr i8, ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.uw = shl nuw i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cg, label %bb.ce, !prof !62

bb.ce:                                            ; preds = %bb.cd
  %i.ux = icmp eq i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ux, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !39089
  %i.uy = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.uw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39089 ; 7 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %bb.cg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.cf
  %i.va = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.vb = lshr exact i64 %i.va, 2
  %i.vc = add nuw nsw i64 %i.vb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.va, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.vd = shl i64 %i.va, 1
  %i.ve = getelementptr i8, ptr %i.uy, i64 %i.vd
  %i.vf = getelementptr i8, ptr %i.ve, i64 8
  %bound0 = icmp ult ptr %i.uy, %i.uv
  %bound1 = icmp ult ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.vf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.vc, 9223372036854775804     ; 5 uses
  %i.vg = shl i64 %n.vec, 2
  %i.vh = getelementptr i8, ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.vg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.vi = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.vi ; 2 uses
  %i.vj = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !39090, !noalias !39091
  %wide.load1224 = load <2 x i32>, ptr %i.vj, align 4, !alias.scope !39090, !noalias !39091
  %i.vk = zext <2 x i32> %wide.load to <2 x i64>
  %i.vl = zext <2 x i32> %wide.load1224 to <2 x i64>
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %index ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store <2 x i64> %i.vk, ptr %i.vm, align 8, !alias.scope !39092, !noalias !39093
  store <2 x i64> %i.vl, ptr %i.vn, align 8, !alias.scope !39092, !noalias !39093
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vo = icmp eq i64 %index.next, %n.vec
  br i1 %i.vo, label %middle.block, label %vector.body, !llvm.loop !38743

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vc, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261: ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph1262 = phi ptr [ %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.vh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.cf ], [ 0, %bb.cd ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.uw) #61
          to label %bb.ch unwind label %bb.ci, !noalias !39094

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vp = phi i64 [ %i.vv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261 ] ; 2 uses
  %i.vq = phi ptr [ %i.vs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph1262, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader1261 ] ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !noalias !39091, !noundef !56
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 4 ; 2 uses
  %i.vt = zext i32 %i.vr to i64
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %i.vp
  store i64 %i.vt, ptr %i.vu, align 8, !noalias !39095
  %i.vv = add nuw nsw i64 %i.vp, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vs, %i.uv
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !38744

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.ce
  %i.vw = phi ptr [ inttoptr (i64 8 to ptr), %bb.ce ], [ %i.uy, %middle.block ], [ %i.uy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ce ], [ %n.vec, %middle.block ], [ %i.vv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vx = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.vx, label %_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vy = shl nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.vy, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39091
  br label %_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.vz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wa = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wa, label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ci
  %i.wb = shl nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.wb, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39096
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wc = zext i32 %.sroa.63.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  store i64 %i.wc, ptr %i.o, align 8, !noalias !39088
  store i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39088
  store ptr %i.vw, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39088
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !39097
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, i64 noundef %i.wc, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !39098

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_RNCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB2C_3err5PyErrEs1_00B41_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !39097 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39097 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !39097
  %.0.val.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cj

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.wd = shl nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.wd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39099
  br label %bb.cj

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cj, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.ti, %bb.cj ]
  %.lcssa127.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ug, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i._RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.th, %bb.cj ]
  %.pre29.i.i.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %i.ti, %.pre.i.i.pre-phi.i.i.i.i.i.i.i.i.i.i
  %.pre31.i.i.i.i.i.i.i.i.i.i.i.i = udiv exact i64 %.pre29.i.i.i.i.i.i.i.i.i.i.i.i, 40
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cb
  %.pre-phi32.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre31.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cb ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa127.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.cb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39100)
  %i.we = icmp eq ptr %i.th, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.we, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wg, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.wf = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wg = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.wf, align 8, !alias.scope !39100, !noalias !39101 ; 2 uses
  %i.wh = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wi = getelementptr i8, ptr %i.wf, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.wi, align 8, !alias.scope !39100, !noalias !39101, !nonnull !56, !noundef !56
  %i.wj = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.wj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39102
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wk = icmp eq i64 %i.wg, %.pre-phi32.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.wk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wl = icmp eq i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wl, label %bb.cl, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wm = mul nuw i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.wm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39101
  br label %bb.cl

bb.cj:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !39088
  %i.wn = icmp eq ptr %i.ug, %i.th
  br i1 %i.wn, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge.i.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecB1t_EEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ca
  %i.wo = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1V_EENCNCINvNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree33all_pairs_dijkstra_shortest_pathsRINtNtB1X_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5r_5types3any5PyAnyEB5m_NtB1Z_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree14metric_closure0NtNtB5r_3err5PyErrEs1_00EEB6Q_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.ad) #63, !noalias !39103
  br label %.body7.i.i.i.i.i.i.i.i.i.i.i

.body7.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ck, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body8.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wo, %bb.ck ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39104)
  call void @llvm.experimental.noalias.scope.decl(metadata !39105), !noalias !39106
  %.val1.i.i57.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39107, !noalias !39075, !noundef !56 ; 4 uses
  %i.wp = icmp eq i64 %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i58.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i58.i.i.i.i.i.i.i.i.i.i: ; preds = %.body7.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i59.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39107, !noalias !39075, !nonnull !56, !noundef !56
  %i.wq = shl i64 %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, 3
  %i.wr = icmp slt i64 %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.wr), !noalias !39106
  %i.ws = and i64 %i.wq, -16                      ; 2 uses
  %i.wt = add i64 %i.ws, 16                       ; 2 uses
  %i.wu = add nsw i64 %.val1.i.i57.i.i.i.i.i.i.i.i.i.i, 17
  %i.wv = add i64 %i.wu, %i.wt                    ; 3 uses
  %i.ww = icmp uge i64 %i.wv, %i.wt
  call void @llvm.assume(i1 %i.ww), !noalias !39106
  %i.wx = icmp ult i64 %i.wv, 9223372036854775793
  call void @llvm.assume(i1 %i.wx), !noalias !39106
  %i.wy = sub nuw nsw i64 -16, %i.ws
  %i.wz = getelementptr inbounds i8, ptr %.val.i.i59.i.i.i.i.i.i.i.i.i.i, i64 %i.wy
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wz, i64 noundef %i.wv, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !39108
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i58.i.i.i.i.i.i.i.i.i.i, %.body7.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39109), !noalias !39106
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39110, !noalias !39075, !nonnull !56, !noundef !56 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i13.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !39110, !noalias !39075, !noundef !56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39111), !noalias !39106
  %i.xa = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xa, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i:           ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xb = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.012.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xc = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i62.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xb, align 8, !alias.scope !39112, !noalias !39113 ; 2 uses
  %i.xd = icmp eq i64 %.val8.i.i.i.i.i62.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i
  %i.xe = getelementptr i8, ptr %i.xb, i64 8
  %.val9.i.i.i.i.i64.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.xe, align 8, !alias.scope !39111, !noalias !39113, !nonnull !56, !noundef !56
  %i.xf = shl nuw i64 %.val8.i.i.i.i.i62.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i64.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.xf, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !39114
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i
  %i.xg = icmp eq i64 %i.xc, %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.xg, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.val2.i.i.i65.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !39110, !noalias !39075 ; 2 uses
  %i.xh = icmp eq i64 %.val2.i.i.i65.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xh, label %.thread27.i.i.i.i.i.i.i.i.i.i, label %.thread27.sink.split.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bv, %bb.bu
  %i.xi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39115), !noalias !39116
  %i.xj = icmp eq i64 %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i, %bb.bx, %.thread.i.thread228.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i226.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.tn, %.thread.i.thread228.i.i.i.i.i.i.i.i.i.i ], [ %i.xi, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.tq, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i ], [ %i.tq, %bb.bx ]
  br label %.lr.ph.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i:           ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xl, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xk = getelementptr inbounds nuw [40 x i8], ptr %.sroa.46.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xl = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.xk, align 8, !alias.scope !39115, !noalias !39117 ; 2 uses
  %i.xm = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i
  %i.xn = getelementptr i8, ptr %i.xk, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.xn, align 8, !alias.scope !39115, !noalias !39117, !nonnull !56, !noundef !56
  %i.xo = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.xo, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !39118
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i
  %i.xp = icmp eq i64 %i.xl, %.sroa.57.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.xp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i227.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.xi, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i226.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xq = icmp eq i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xq, label %.thread27.i.i.i.i.i.i.i.i.i.i, label %.thread27.sink.split.i.i.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB19_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false), !noalias !39119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !39075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !38947
  %i.xr = icmp eq i64 %.sroa.73.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xr, label %bb.cm, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i) ]
  %i.xs = shl i64 %.sroa.73.0.copyload.i.i.i.i.i.i.i.i.i, 3
  %i.xt = icmp slt i64 %.sroa.73.0.copyload.i.i.i.i.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.xt)
  %i.xu = and i64 %i.xs, -16                      ; 2 uses
  %i.xv = add i64 %i.xu, 16                       ; 2 uses
  %i.xw = add nsw i64 %.sroa.73.0.copyload.i.i.i.i.i.i.i.i.i, 17
  %i.xx = add i64 %i.xw, %i.xv                    ; 3 uses
  %i.xy = icmp uge i64 %i.xx, %i.xv
  call void @llvm.assume(i1 %i.xy)
  %i.xz = icmp ult i64 %i.xx, 9223372036854775793
  call void @llvm.assume(i1 %i.xz)
  %i.ya = sub nuw nsw i64 -16, %i.xu
  %i.yb = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.ya
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yb, i64 noundef %i.xx, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !39120
  br label %bb.cm

.body54.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i31.i.i.i.i.i.i.i.i.i.i, %.body9.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body55.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i32.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body10.i.i.i.i.i.i.i.i.i.i.i, %.body9.i.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i32.i.i.i.i.i.i.i.i.i.i, %.thread.i31.i.i.i.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ae) #63, !noalias !38947
  br label %bb.dc

bb.cm:                                            ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i, %bb.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i) ]
  %i.yc = icmp ult i64 %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.yc)
  %.idx33.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i, 24 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.idx33.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !39121
  %i.ye = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc3.i33.i.i.i.i.i.i.i.i.i.i unwind label %bb.cn, !noalias !39121 ; 2 uses

bb.cn:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i31.i.i.i.i.i.i.i.i.i.i

.noexc3.i33.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.cm
  %i.yg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !39121
  %i.yh = icmp eq i8 %i.yg, 2
  br i1 %i.yh, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i34.i.i.i.i.i.i.i.i.i.i, label %bb.co, !prof !66

bb.co:                                            ; preds = %.noexc3.i33.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i34.i.i.i.i.i.i.i.i.i.i unwind label %bb.cn, !noalias !39121

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i34.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.co, %.noexc3.i33.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39122)
  %i.yi = icmp eq i64 %.sroa.52.0.copyload.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.yi, label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp
end_hunk_0
