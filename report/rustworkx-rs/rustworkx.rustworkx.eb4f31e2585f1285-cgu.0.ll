Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph:bb.a
  %lpad.phi.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i ]
  %i.ay = shl nuw i64 %.sroa.410.0.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !101334
  br label %.body.i.i

bb.n:                                             ; preds = %.loopexit.i.i, %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.n, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.az, %bb.n ], [ %lpad.phi.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.o, !noalias !101335

bb.o:                                             ; preds = %.body.i.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.bb) #63
          to label %.body.i unwind label %bb.p, !noalias !101335

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !101336
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.body.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.bd)
          to label %common.resume unwind label %bb.q, !noalias !101321

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB1P_23HexagonalLatticeBuilder30build_with_default_node_weightINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtBZ_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B5Z_B4y_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B65_.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  store i64 %.sroa.410.0.i.i.i.i, ptr %i.i, align 8, !alias.scope !101337, !noalias !101338
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !101337, !noalias !101338
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.015.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !101337, !noalias !101338
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_NtB1X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B2X_EB4r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias nofree noundef align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit unwind label %bb.n, !noalias !101335

bb.q:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.o
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !101335
  unreachable

common.resume:                                    ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i82, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %eh.lpad-body.i.i80, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i82 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit: ; preds = %.loopexit.i.i
  %.sroa.0111.0.copyload112 = load i64, ptr %i.j, align 8 ; 2 uses
  %.sroa.8113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8113.0.copyload115 = load ptr, ptr %.sroa.8113.0..sroa_idx114, align 8
  %.sroa.9116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9116, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9116.0..sroa_idx117, i64 16, i1 false)
  %.sroa.10118.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.10118.0.copyload120 = load ptr, ptr %.sroa.10118.0..sroa_idx119, align 8
  %.sroa.11121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.11121.0.copyload123 = load i64, ptr %.sroa.11121.0..sroa_idx122, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12124, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.bf = load <2 x i32>, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !101322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !101322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bg = icmp eq i64 %.sroa.0111.0.copyload112, -1
  br i1 %i.bg, label %bb.ai, label %bb.ak

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br i1 %or.cond.i63, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread161, label %bb.s

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread161: ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i8 0, i64 16, i1 false), !alias.scope !101339
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !101339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ao

bb.s:                                             ; preds = %bb.r
  br i1 %4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = shl i64 %1, 1
  %i.bi = add i64 %i.bh, 2                        ; 2 uses
  %i.bj = add i64 %2, 1                           ; 2 uses
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = add i64 %i.bk, -2
  %i.bm = mul i64 %1, 3
  %i.bn = mul i64 %i.bm, %2
  %i.bo = add i64 %2, %1
  %i.bp = shl i64 %i.bo, 1
  %i.bq = add i64 %i.bn, -1
  %i.br = add i64 %i.bq, %i.bp
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bs = trunc i64 %2 to i1
  %i.bt = icmp ult i64 %1, 2
  %or.cond.i.i87 = or i1 %i.bt, %i.bs
  %i.bu = icmp ult i64 %2, 2
  %or.cond2.i.i88 = or i1 %i.bu, %or.cond.i.i87
  br i1 %or.cond2.i.i88, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread, label %bb.v

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.am

bb.v:                                             ; preds = %bb.u
  %i.bv = shl i64 %1, 1                           ; 2 uses
  %i.bw = mul i64 %i.bv, %2
  %i.bx = mul i64 %1, 3
  %i.by = mul i64 %i.bx, %2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.sroa.016.0.i.i64 = phi i64 [ %i.by, %bb.v ], [ %i.br, %bb.t ] ; 2 uses
  %.sroa.015.0.i.i65 = phi i64 [ %i.bw, %bb.v ], [ %i.bl, %bb.t ] ; 10 uses
  %.sroa.012.0.i.i66 = phi i64 [ %i.bv, %bb.v ], [ %i.bi, %bb.t ] ; 7 uses
  %.sroa.0.0.i.i67 = phi i64 [ %2, %bb.v ], [ %i.bj, %bb.t ] ; 2 uses
  %i.bz = zext i1 %4 to i8
  store i64 %.sroa.012.0.i.i66, ptr %i.f, align 8, !noalias !101339
  %.sroa.515.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.0.0.i.i67, ptr %.sroa.515.0..sroa_idx.i68, align 8, !noalias !101339
  %.sroa.616.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.015.0.i.i65, ptr %.sroa.616.0..sroa_idx.i69, align 8, !noalias !101339
  %.sroa.717.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.016.0.i.i64, ptr %.sroa.717.0..sroa_idx.i70, align 8, !noalias !101339
  %.sroa.818.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 0, ptr %.sroa.818.0..sroa_idx.i71, align 8, !noalias !101339
  %.sroa.919.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.bz, ptr %.sroa.919.0..sroa_idx.i72, align 1, !noalias !101339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !101340
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_NtB7_10UndirectedE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.e, i64 noundef %.sroa.015.0.i.i65, i64 noundef %.sroa.016.0.i.i64), !noalias !101340
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false), !alias.scope !101341, !noalias !101340
  store i32 -1, ptr %i.cb, align 8, !alias.scope !101341, !noalias !101340
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 -1, ptr %i.cc, align 4, !alias.scope !101341, !noalias !101340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !101340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101343)
  %i.cd = shl i64 %.sroa.015.0.i.i65, 2           ; 4 uses
  %i.ce = icmp ugt i64 %.sroa.015.0.i.i65, 4611686018427387903
  %.not.i.i.i.i.i73 = icmp ugt i64 %i.cd, 9223372036854775804
  %or.cond.i.i.i.i.i74 = or i1 %i.ce, %.not.i.i.i.i.i73
  br i1 %or.cond.i.i.i.i.i74, label %bb.aa, label %bb.x, !prof !73

bb.x:                                             ; preds = %bb.w
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !101344
  %i.cg = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !101344 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = ptrtoint ptr %i.cg to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75

bb.aa:                                            ; preds = %bb.y, %bb.w
  %.sroa.49.0.ph.i.i.i.i = phi i64 [ 4, %bb.y ], [ 0, %bb.w ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i.i.i, i64 %i.cd) #61
          to label %.noexc.i.i86 unwind label %bb.ae, !noalias !101340

.noexc.i.i86:                                     ; preds = %bb.aa
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75: ; preds = %bb.z, %bb.x
  %.sroa.10.0.i.i.i.i76 = phi i64 [ %i.ci, %bb.z ], [ 4, %bb.x ]
  %.sroa.49.0.i.i.i.i = phi i64 [ %.sroa.015.0.i.i65, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.cj = inttoptr i64 %.sroa.10.0.i.i.i.i76 to ptr ; 4 uses
  %i.ck = icmp samesign ule i64 %.sroa.015.0.i.i65, %.sroa.49.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.ck)
  %.not.i.i77 = icmp eq i64 %.sroa.015.0.i.i65, 0
  br i1 %.not.i.i77, label %.loopexit.i.i84, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.cm = add i64 %.sroa.012.0.i.i66, -1          ; 2 uses
  %i.cn = add i64 %.sroa.0.0.i.i67, -2
  br i1 %4, label %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.co = icmp eq i64 %.sroa.012.0.i.i66, 0
  br i1 %i.co, label %.split.us.i.i, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i
  %.val4.i.i.i.i.i.i.i.i.us.i.i = phi i64 [ %i.cp, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i ] ; 4 uses
  %i.cp = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, 1 ; 2 uses
  %6 = udiv i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i66 ; 3 uses
  %7 = urem i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i66 ; 2 uses
  %i.cq = lshr i64 %6, 1
  %8 = and i64 %7, 1
  %9 = and i64 %6, 1
  %10 = uitofp nneg i64 %6 to double
  %i.cr = uitofp nneg i64 %i.cq to double
  %11 = uitofp nneg i64 %8 to double
  %12 = uitofp nneg i64 %9 to double
  %13 = fadd double %10, 5.000000e-01
  %i.cs = fadd double %13, %i.cr
  %14 = fadd nnan double %12, -5.000000e-01
  %i.ct = fmul double %14, %11
  %i.cu = fadd double %i.cs, %i.ct
  %i.cv = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.cu)
          to label %.noexc9.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i, !noalias !101345 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.us.i.i:                   ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %i.cw = uitofp nneg i64 %7 to double
  %i.cx = fmul nnan double %i.cw, f0x3FEBB67AE8584CAA
  %i.cy = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.cx)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i unwind label %.split18.us.i.i, !noalias !101346 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.cz = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !101347 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, !prof !71

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %i.db = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.cz, i64 noundef 0, ptr noundef nonnull %i.cv) #59, !noalias !101347 ; 0 uses
  %i.dc = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.cz, i64 noundef 1, ptr noundef nonnull %i.cy) #59, !noalias !101347 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101348
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.cz)
          to label %.noexc10.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i, !noalias !101345

.noexc10.i.i.i.i.i.i.i.i.us.i.i:                  ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101349)
  %i.dd = load i64, ptr %i.c, align 8, !range !123, !alias.scope !101349, !noalias !101350, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.dd, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i, label %.split26.us.i.i, !prof !77

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %i.de = load i32, ptr %i.cl, align 8, !alias.scope !101349, !noalias !101350, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101348
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.val4.i.i.i.i.i.i.i.i.us.i.i
  store i32 %i.de, ptr %i.df, align 4, !noalias !101351
  %exitcond.not.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.cp, %.sroa.015.0.i.i65
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.us.i.i, label %.loopexit.i.i84, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i

.loopexit.i.i.i.i.i.i.i.i.split.us.i.i:           ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78

.split18.us.i.i:                                  ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.split.i.i:              ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i:           ; preds = %.split26.us.i.i, %.split.us.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78

.lr.ph.i.i.i.i.i.i.i.i.split.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dh, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dh = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.di = icmp ult i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cm
  br i1 %i.di, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %i.dj = sub nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cm ; 2 uses
  %i.dk = udiv i64 %i.dj, %.sroa.012.0.i.i66      ; 3 uses
  %i.dl = add nuw i64 %i.dk, 1
  %i.dm = urem i64 %i.dj, %.sroa.012.0.i.i66
  %i.dn = icmp eq i64 %i.dk, %i.cn
  %i.do = trunc i64 %i.dk to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.dn, %i.do
  %i.dp = zext i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %i.dm, %i.dp
  br label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1166) #60
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !101345

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.split.us.i.i
  unreachable

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.val4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dl, %bb.ab ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 3 uses
  %i.dq = lshr i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.dr = and i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %15 = and i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.ds = uitofp i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i to double
  %16 = uitofp nneg i64 %i.dq to double
  %17 = uitofp nneg i64 %i.dr to double
  %18 = uitofp nneg i64 %15 to double
  %19 = fadd double %i.ds, 5.000000e-01
  %i.dt = fadd double %19, %16
  %20 = fadd nnan double %18, -5.000000e-01
  %i.du = fmul double %20, %17
  %i.dv = fadd double %i.dt, %i.du
  %i.dw = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dv)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.i.i, !noalias !101345 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.dx = uitofp i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i to double
  %i.dy = fmul nnan double %i.dx, f0x3FEBB67AE8584CAA
  %i.dz = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dy)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.split18.i.i, !noalias !101346 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.ea = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !101347 ; 4 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !71

.split22.us.i.i:                                  ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi23.i.i = phi ptr [ %i.cy, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.dz, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi24.i.i = phi ptr [ %i.cv, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.dw, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %bb.ac unwind label %bb.ad, !noalias !101347

bb.ac:                                            ; preds = %.split22.us.i.i
  unreachable

common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.split18.i.i, %bb.ad, %.split18.us.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.us-phi23.i.i, %bb.ad ], [ %i.dw, %.split18.i.i ], [ %i.cv, %.split18.us.i.i ]
  %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ec, %bb.ad ], [ %i.ed, %.split18.i.i ], [ %i.dg, %.split18.us.i.i ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !101346
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78

bb.ad:                                            ; preds = %.split22.us.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %.us-phi24.i.i) #59, !noalias !101352
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split18.i.i:                                     ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ee = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.ea, i64 noundef 0, ptr noundef nonnull %i.dw) #59, !noalias !101347 ; 0 uses
  %i.ef = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.ea, i64 noundef 1, ptr noundef nonnull %i.dz) #59, !noalias !101347 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101348
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.ea)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.i.i, !noalias !101345

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101349)
  %i.eg = load i64, ptr %i.c, align 8, !range !123, !alias.scope !101349, !noalias !101350, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eg, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i, label %.split26.us.i.i, !prof !77

.split26.us.i.i:                                  ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi27.i.i = phi i64 [ %i.dd, %.noexc10.i.i.i.i.i.i.i.i.us.i.i ], [ %i.eg, %.noexc10.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101353
  %i.eh = load i64, ptr %i.cl, align 8, !alias.scope !101349, !noalias !101350
  store i64 %.us-phi27.i.i, ptr %i.b, align 8, !noalias !101353
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !noalias !101353
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !101345

.noexc11.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split26.us.i.i
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  %i.ej = load i32, ptr %i.cl, align 8, !alias.scope !101349, !noalias !101350, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101348
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.val4.i.i.i.i.i.i.i.i.i.i
  store i32 %i.ej, ptr %i.ek, align 4, !noalias !101351
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dh, %.sroa.015.0.i.i65
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i84, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78: ; preds = %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.us.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i ]
  %i.el = shl nuw i64 %.sroa.49.0.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !101354
  br label %.body.i.i79

bb.ae:                                            ; preds = %.loopexit.i.i84, %bb.aa
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i79

.body.i.i79:                                      ; preds = %bb.ae, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78
  %eh.lpad-body.i.i80 = phi { ptr, i32 } [ %i.em, %bb.ae ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78 ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i82 unwind label %bb.af, !noalias !101355

bb.af:                                            ; preds = %.body.i.i79
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.eo) #63
          to label %.body.i81 unwind label %bb.ag, !noalias !101355

bb.ag:                                            ; preds = %bb.af
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !101356
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i82: ; preds = %.body.i.i79
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.eq)
          to label %common.resume unwind label %bb.ah, !noalias !101339

.loopexit.i.i84:                                  ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75
  store i64 %.sroa.49.0.i.i.i.i, ptr %i.d, align 8, !alias.scope !101357, !noalias !101358
  %.sroa.5.0..sroa_idx.i.i.i.i85 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cj, ptr %.sroa.5.0..sroa_idx.i.i.i.i85, align 8, !alias.scope !101357, !noalias !101358
  %.sroa.8.0..sroa_idx50.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.015.0.i.i65, ptr %.sroa.8.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !101357, !noalias !101358
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_NtB1X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B2X_EB4r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias nofree noundef align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit unwind label %bb.ae, !noalias !101355

bb.ah:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i82
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i81

.body.i81:                                        ; preds = %bb.ah, %bb.af
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !101355
  unreachable

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit: ; preds = %.loopexit.i.i84
  %.sroa.097.0.copyload98 = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0.copyload100 = load ptr, ptr %.sroa.8.0..sroa_idx99, align 8
  %.sroa.9.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx101, i64 16, i1 false)
  %.sroa.10.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.10.0.copyload103 = load ptr, ptr %.sroa.10.0..sroa_idx102, align 8
  %.sroa.11.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.11.0.copyload105 = load i64, ptr %.sroa.11.0..sroa_idx104, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false)
  %i.es = load <2 x i32>, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !101340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.et = icmp eq i64 %.sroa.097.0.copyload98, -1
  br i1 %i.et, label %bb.am, label %bb.ao

bb.ai:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.eu = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.aj, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit, !prof !104

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ai
  store ptr @2466, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 17, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.041.sroa.5.0..sroa_idx, align 8
  %.sroa.041.sroa.5.sroa.4.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.041.sroa.5.sroa.4.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.5.sroa.5.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.eu, ptr %.sroa.041.sroa.5.sroa.5.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.5.sroa.6.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.041.sroa.5.sroa.6.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.442.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9116)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12124)
  br label %bb.ap

bb.ak:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread142, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit
  %.sroa.0111.0154 = phi i64 [ 0, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread142 ], [ %.sroa.0111.0.copyload112, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  %.sroa.8113.0153 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread142 ], [ %.sroa.8113.0.copyload115, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  %.sroa.10118.0152 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread142 ], [ %.sroa.10118.0.copyload120, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  %.sroa.11121.0151 = phi i64 [ 0, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread142 ], [ %.sroa.11121.0.copyload123, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  %i.ey = phi <2 x i32> [ splat (i32 -1), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread142 ], [ %i.bf, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9116, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11134, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12124, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9116)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12124)
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %bb.ak
  %.sroa.9133.0 = phi i64 [ %.sroa.11.0170, %bb.ao ], [ %.sroa.11121.0151, %bb.ak ]
  %.sroa.7.0 = phi ptr [ %.sroa.10.0171, %bb.ao ], [ %.sroa.10118.0152, %bb.ak ]
  %.sroa.3.0 = phi ptr [ %.sroa.8.0172, %bb.ao ], [ %.sroa.8113.0153, %bb.ak ]
  %.sroa.0132.0 = phi i64 [ %.sroa.097.0173, %bb.ao ], [ %.sroa.0111.0154, %bb.ak ]
  %i.ez = phi <2 x i32> [ %i.ff, %bb.ao ], [ %i.ey, %bb.ak ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59
  %i.fa = zext i1 %3 to i8
  store i64 %.sroa.0132.0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph:bb.a

bb.n:                                             ; preds = %.loopexit.i.i, %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.n, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %lpad.phi.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.o, !noalias !103340

bb.o:                                             ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.be) #63
          to label %.body.i unwind label %bb.p, !noalias !103340

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !103341
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.body.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.bg)
          to label %common.resume unwind label %bb.q, !noalias !103326

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB1P_23HexagonalLatticeBuilder30build_with_default_node_weightINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B5I_B4y_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8c_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  store i64 %.sroa.410.0.i.i.i.i, ptr %i.i, align 8, !alias.scope !103342, !noalias !103343
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !103342, !noalias !103343
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.015.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !103342, !noalias !103343
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_ENCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B2X_EB49_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias nofree noundef align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit unwind label %bb.n, !noalias !103340

bb.q:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.o
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !103340
  unreachable

common.resume:                                    ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i84, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %eh.lpad-body.i.i82, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i84 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit: ; preds = %.loopexit.i.i
  %.sroa.0116.0.copyload117 = load i64, ptr %i.j, align 8 ; 2 uses
  %.sroa.8118.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8118.0.copyload120 = load ptr, ptr %.sroa.8118.0..sroa_idx119, align 8
  %.sroa.9121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9121, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9121.0..sroa_idx122, i64 16, i1 false)
  %.sroa.10123.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.10123.0.copyload125 = load ptr, ptr %.sroa.10123.0..sroa_idx124, align 8
  %.sroa.11126.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.11126.0.copyload128 = load i64, ptr %.sroa.11126.0..sroa_idx127, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12129, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.bi = load <2 x i32>, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !103327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !103327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bj = icmp eq i64 %.sroa.0116.0.copyload117, -1
  br i1 %i.bj, label %bb.ai, label %bb.ak

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103344)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br i1 %or.cond.i65, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread171, label %bb.s

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread171: ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i8 0, i64 16, i1 false), !alias.scope !103344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !103344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.an

bb.s:                                             ; preds = %bb.r
  br i1 %5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = shl i64 %1, 1
  %i.bl = add i64 %i.bk, 2                        ; 2 uses
  %i.bm = add i64 %2, 1                           ; 2 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = add i64 %i.bn, -2
  %i.bp = mul i64 %2, %1
  %i.bq = mul i64 %i.bp, 3
  %i.br = add i64 %2, %1
  %i.bs = shl i64 %i.br, 1
  %i.bt = add i64 %i.bq, -1
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = zext i1 %3 to i64
  %i.bw = shl i64 %i.bu, %i.bv
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bx = trunc i64 %2 to i1
  %i.by = icmp ult i64 %1, 2
  %or.cond.i.i89 = or i1 %i.by, %i.bx
  %i.bz = icmp ult i64 %2, 2
  %or.cond2.i.i90 = or i1 %i.bz, %or.cond.i.i89
  br i1 %or.cond2.i.i90, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread, label %bb.v

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al

bb.v:                                             ; preds = %bb.u
  %.19.i.i91 = select i1 %3, i64 6, i64 3
  %i.ca = shl i64 %1, 1                           ; 2 uses
  %i.cb = mul i64 %i.ca, %2
  %i.cc = mul i64 %2, %1
  %i.cd = mul i64 %i.cc, %.19.i.i91
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.sroa.016.0.i.i66 = phi i64 [ %i.cd, %bb.v ], [ %i.bw, %bb.t ] ; 2 uses
  %.sroa.015.0.i.i67 = phi i64 [ %i.cb, %bb.v ], [ %i.bo, %bb.t ] ; 10 uses
  %.sroa.012.0.i.i68 = phi i64 [ %i.ca, %bb.v ], [ %i.bl, %bb.t ] ; 7 uses
  %.sroa.0.0.i.i69 = phi i64 [ %2, %bb.v ], [ %i.bm, %bb.t ] ; 2 uses
  %i.ce = zext i1 %3 to i8
  %i.cf = zext i1 %5 to i8
  store i64 %.sroa.012.0.i.i68, ptr %i.f, align 8, !noalias !103344
  %.sroa.515.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.0.0.i.i69, ptr %.sroa.515.0..sroa_idx.i70, align 8, !noalias !103344
  %.sroa.616.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.015.0.i.i67, ptr %.sroa.616.0..sroa_idx.i71, align 8, !noalias !103344
  %.sroa.717.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.016.0.i.i66, ptr %.sroa.717.0..sroa_idx.i72, align 8, !noalias !103344
  %.sroa.818.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.ce, ptr %.sroa.818.0..sroa_idx.i73, align 8, !noalias !103344
  %.sroa.919.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.cf, ptr %.sroa.919.0..sroa_idx.i74, align 1, !noalias !103344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103345
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_E13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.e, i64 noundef %.sroa.015.0.i.i67, i64 noundef %.sroa.016.0.i.i66), !noalias !103345
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !alias.scope !103346, !noalias !103345
  store i32 -1, ptr %i.ch, align 8, !alias.scope !103346, !noalias !103345
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 -1, ptr %i.ci, align 4, !alias.scope !103346, !noalias !103345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !103345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103348)
  %i.cj = shl i64 %.sroa.015.0.i.i67, 2           ; 4 uses
  %i.ck = icmp ugt i64 %.sroa.015.0.i.i67, 4611686018427387903
  %.not.i.i.i.i.i75 = icmp ugt i64 %i.cj, 9223372036854775804
  %or.cond.i.i.i.i.i76 = or i1 %i.ck, %.not.i.i.i.i.i75
  br i1 %or.cond.i.i.i.i.i76, label %bb.aa, label %bb.x, !prof !73

bb.x:                                             ; preds = %bb.w
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103349
  %i.cm = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103349 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = ptrtoint ptr %i.cm to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77

bb.aa:                                            ; preds = %bb.y, %bb.w
  %.sroa.49.0.ph.i.i.i.i = phi i64 [ 4, %bb.y ], [ 0, %bb.w ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i.i.i, i64 %i.cj) #61
          to label %.noexc.i.i88 unwind label %bb.ae, !noalias !103345

.noexc.i.i88:                                     ; preds = %bb.aa
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77: ; preds = %bb.z, %bb.x
  %.sroa.10.0.i.i.i.i78 = phi i64 [ %i.co, %bb.z ], [ 4, %bb.x ]
  %.sroa.49.0.i.i.i.i = phi i64 [ %.sroa.015.0.i.i67, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.cp = inttoptr i64 %.sroa.10.0.i.i.i.i78 to ptr ; 4 uses
  %i.cq = icmp samesign ule i64 %.sroa.015.0.i.i67, %.sroa.49.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.cq)
  %.not.i.i79 = icmp eq i64 %.sroa.015.0.i.i67, 0
  br i1 %.not.i.i79, label %.loopexit.i.i86, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.cs = add i64 %.sroa.012.0.i.i68, -1          ; 2 uses
  %i.ct = add i64 %.sroa.0.0.i.i69, -2
  br i1 %5, label %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cu = icmp eq i64 %.sroa.012.0.i.i68, 0
  br i1 %i.cu, label %.split.us.i.i, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i
  %.val4.i.i.i.i.i.i.i.i.us.i.i = phi i64 [ %i.cv, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i ] ; 4 uses
  %i.cv = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, 1 ; 2 uses
  %7 = udiv i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i68 ; 3 uses
  %8 = urem i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i68 ; 2 uses
  %i.cw = lshr i64 %7, 1
  %9 = and i64 %8, 1
  %10 = and i64 %7, 1
  %11 = uitofp nneg i64 %7 to double
  %i.cx = uitofp nneg i64 %i.cw to double
  %12 = uitofp nneg i64 %9 to double
  %13 = uitofp nneg i64 %10 to double
  %14 = fadd double %11, 5.000000e-01
  %i.cy = fadd double %14, %i.cx
  %15 = fadd nnan double %13, -5.000000e-01
  %i.cz = fmul double %15, %12
  %i.da = fadd double %i.cy, %i.cz
  %i.db = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.da)
          to label %.noexc9.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i, !noalias !103350 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.us.i.i:                   ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %i.dc = uitofp nneg i64 %8 to double
  %i.dd = fmul nnan double %i.dc, f0x3FEBB67AE8584CAA
  %i.de = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dd)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i unwind label %.split18.us.i.i, !noalias !103351 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.df = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !103352 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, !prof !71

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %i.dh = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.df, i64 noundef 0, ptr noundef nonnull %i.db) #59, !noalias !103352 ; 0 uses
  %i.di = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.df, i64 noundef 1, ptr noundef nonnull %i.de) #59, !noalias !103352 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103353
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.df)
          to label %.noexc10.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i, !noalias !103350

.noexc10.i.i.i.i.i.i.i.i.us.i.i:                  ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103354)
  %i.dj = load i64, ptr %i.c, align 8, !range !123, !alias.scope !103354, !noalias !103355, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.dj, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i, label %.split26.us.i.i, !prof !77

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %i.dk = load i32, ptr %i.cr, align 8, !alias.scope !103354, !noalias !103355, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103353
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.val4.i.i.i.i.i.i.i.i.us.i.i
  store i32 %i.dk, ptr %i.dl, align 4, !noalias !103356
  %exitcond.not.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.cv, %.sroa.015.0.i.i67
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.us.i.i, label %.loopexit.i.i86, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i

.loopexit.i.i.i.i.i.i.i.i.split.us.i.i:           ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80

.split18.us.i.i:                                  ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.split.i.i:              ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i:           ; preds = %.split26.us.i.i, %.split.us.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80

.lr.ph.i.i.i.i.i.i.i.i.split.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dn, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dn = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.do = icmp ult i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cs
  br i1 %i.do, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %i.dp = sub nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cs ; 2 uses
  %i.dq = udiv i64 %i.dp, %.sroa.012.0.i.i68      ; 3 uses
  %i.dr = add nuw i64 %i.dq, 1
  %i.ds = urem i64 %i.dp, %.sroa.012.0.i.i68
  %i.dt = icmp eq i64 %i.dq, %i.ct
  %i.du = trunc i64 %i.dq to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.dt, %i.du
  %i.dv = zext i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %i.ds, %i.dv
  br label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1166) #60
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !103350

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.split.us.i.i
  unreachable

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.val4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dr, %bb.ab ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 3 uses
  %i.dw = lshr i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.dx = and i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %16 = and i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.dy = uitofp i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i to double
  %17 = uitofp nneg i64 %i.dw to double
  %18 = uitofp nneg i64 %i.dx to double
  %19 = uitofp nneg i64 %16 to double
  %20 = fadd double %i.dy, 5.000000e-01
  %i.dz = fadd double %20, %17
  %21 = fadd nnan double %19, -5.000000e-01
  %i.ea = fmul double %21, %18
  %i.eb = fadd double %i.dz, %i.ea
  %i.ec = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.eb)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.i.i, !noalias !103350 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = uitofp i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i to double
  %i.ee = fmul nnan double %i.ed, f0x3FEBB67AE8584CAA
  %i.ef = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.ee)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.split18.i.i, !noalias !103351 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.eg = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !103352 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !71

.split22.us.i.i:                                  ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi23.i.i = phi ptr [ %i.de, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.ef, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi24.i.i = phi ptr [ %i.db, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.ec, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %bb.ac unwind label %bb.ad, !noalias !103352

bb.ac:                                            ; preds = %.split22.us.i.i
  unreachable

common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.split18.i.i, %bb.ad, %.split18.us.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.us-phi23.i.i, %bb.ad ], [ %i.ec, %.split18.i.i ], [ %i.db, %.split18.us.i.i ]
  %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ei, %bb.ad ], [ %i.ej, %.split18.i.i ], [ %i.dm, %.split18.us.i.i ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !103351
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80

bb.ad:                                            ; preds = %.split22.us.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %.us-phi24.i.i) #59, !noalias !103357
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split18.i.i:                                     ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ek = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.eg, i64 noundef 0, ptr noundef nonnull %i.ec) #59, !noalias !103352 ; 0 uses
  %i.el = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.eg, i64 noundef 1, ptr noundef nonnull %i.ef) #59, !noalias !103352 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103353
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.eg)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.i.i, !noalias !103350

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103354)
  %i.em = load i64, ptr %i.c, align 8, !range !123, !alias.scope !103354, !noalias !103355, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.em, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i, label %.split26.us.i.i, !prof !77

.split26.us.i.i:                                  ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi27.i.i = phi i64 [ %i.dj, %.noexc10.i.i.i.i.i.i.i.i.us.i.i ], [ %i.em, %.noexc10.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103358
  %i.en = load i64, ptr %i.cr, align 8, !alias.scope !103354, !noalias !103355
  store i64 %.us-phi27.i.i, ptr %i.b, align 8, !noalias !103358
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !noalias !103358
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !103350

.noexc11.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split26.us.i.i
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  %i.ep = load i32, ptr %i.cr, align 8, !alias.scope !103354, !noalias !103355, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103353
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.val4.i.i.i.i.i.i.i.i.i.i
  store i32 %i.ep, ptr %i.eq, align 4, !noalias !103356
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dn, %.sroa.015.0.i.i67
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i86, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80: ; preds = %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.us.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i ]
  %i.er = shl nuw i64 %.sroa.49.0.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103359
  br label %.body.i.i81

bb.ae:                                            ; preds = %.loopexit.i.i86, %bb.aa
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i81

.body.i.i81:                                      ; preds = %bb.ae, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80
  %eh.lpad-body.i.i82 = phi { ptr, i32 } [ %i.es, %bb.ae ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80 ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i84 unwind label %bb.af, !noalias !103360

bb.af:                                            ; preds = %.body.i.i81
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.eu) #63
          to label %.body.i83 unwind label %bb.ag, !noalias !103360

bb.ag:                                            ; preds = %bb.af
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !103361
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i84: ; preds = %.body.i.i81
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ew)
          to label %common.resume unwind label %bb.ah, !noalias !103344

.loopexit.i.i86:                                  ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77
  store i64 %.sroa.49.0.i.i.i.i, ptr %i.d, align 8, !alias.scope !103362, !noalias !103363
  %.sroa.5.0..sroa_idx.i.i.i.i87 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cp, ptr %.sroa.5.0..sroa_idx.i.i.i.i87, align 8, !alias.scope !103362, !noalias !103363
  %.sroa.8.0..sroa_idx50.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.015.0.i.i67, ptr %.sroa.8.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !103362, !noalias !103363
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_ENCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B2X_EB49_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias nofree noundef align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit unwind label %bb.ae, !noalias !103360

bb.ah:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i84
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i83

.body.i83:                                        ; preds = %bb.ah, %bb.af
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !103360
  unreachable

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit: ; preds = %.loopexit.i.i86
  %.sroa.0101.0.copyload102 = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0.copyload105 = load ptr, ptr %.sroa.8.0..sroa_idx104, align 8
  %.sroa.9.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx106, i64 16, i1 false)
  %.sroa.10.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.10.0.copyload108 = load ptr, ptr %.sroa.10.0..sroa_idx107, align 8
  %.sroa.11.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.11.0.copyload110 = load i64, ptr %.sroa.11.0..sroa_idx109, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ey = load <2 x i32>, ptr %i.ch, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ez = icmp eq i64 %.sroa.0101.0.copyload102, -1
  br i1 %i.ez, label %bb.al, label %bb.an

bb.ai:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.fa = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.aj, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit, !prof !104

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ai
  store ptr @2466, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 17, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.4.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.040.sroa.5.sroa.4.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.5.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.fa, ptr %.sroa.040.sroa.5.sroa.5.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.6.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.040.sroa.5.sroa.6.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.441.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9121)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12129)
  br label %bb.ap

bb.ak:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread152, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit
  %.sroa.0116.0164 = phi i64 [ 0, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread152 ], [ %.sroa.0116.0.copyload117, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  %.sroa.8118.0163 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread152 ], [ %.sroa.8118.0.copyload120, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  %.sroa.10123.0162 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread152 ], [ %.sroa.10123.0.copyload125, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  %.sroa.11126.0161 = phi i64 [ 0, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread152 ], [ %.sroa.11126.0.copyload128, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  %i.fe = phi <2 x i32> [ splat (i32 -1), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread152 ], [ %i.bi, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9121, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11141, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12129, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9121)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12129)
  br label %bb.ao

bb.al:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.ff = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.am, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit100, !prof !104

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit100: ; preds = %bb.al
  store ptr @2466, ptr %i.ff, align 8
end_hunk_1
