Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 400
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph:bb.a

bb.o:                                             ; preds = %.body.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ba) #63
          to label %.body.i unwind label %bb.p, !noalias !96962

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !96963
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.body.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.bc)
          to label %common.resume unwind label %bb.q, !noalias !96949

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB1P_23HexagonalLatticeBuilder30build_with_default_node_weightINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtBZ_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B5Z_B4y_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B65_.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  store i64 %.sroa.410.0.i.i.i.i, ptr %i.i, align 8, !alias.scope !96964, !noalias !96950
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !96964, !noalias !96950
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.015.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !96964, !noalias !96950
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_NtB1X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B2X_EB4r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias nofree noundef align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit unwind label %bb.n, !noalias !96962

bb.q:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.o
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !96962
  unreachable

common.resume:                                    ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i81, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %eh.lpad-body.i.i79, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i81 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit: ; preds = %.loopexit.i.i
  %.sroa.0110.0.copyload111 = load i64, ptr %i.j, align 8 ; 2 uses
  %.sroa.8112.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8112.0.copyload114 = load ptr, ptr %.sroa.8112.0..sroa_idx113, align 8
  %.sroa.9115.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9115, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9115.0..sroa_idx116, i64 16, i1 false)
  %.sroa.10117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.10117.0.copyload119 = load ptr, ptr %.sroa.10117.0..sroa_idx118, align 8
  %.sroa.11120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.11120.0.copyload122 = load i64, ptr %.sroa.11120.0..sroa_idx121, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12123, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.be = load <2 x i32>, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !96950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !96950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bf = icmp eq i64 %.sroa.0110.0.copyload111, -1
  br i1 %i.bf, label %bb.ai, label %bb.ak

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br i1 %or.cond.i63, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread160, label %bb.s

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread160: ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i8 0, i64 16, i1 false), !alias.scope !96965
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !96965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ao

bb.s:                                             ; preds = %bb.r
  br i1 %4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = shl i64 %1, 1
  %i.bh = add i64 %i.bg, 2                        ; 2 uses
  %i.bi = add i64 %2, 1                           ; 2 uses
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = add i64 %i.bj, -2
  %i.bl = mul i64 %1, 3
  %i.bm = mul i64 %i.bl, %2
  %i.bn = add i64 %2, %1
  %i.bo = shl i64 %i.bn, 1
  %i.bp = add i64 %i.bm, -1
  %i.bq = add i64 %i.bp, %i.bo
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.br = trunc i64 %2 to i1
  %i.bs = icmp ult i64 %1, 2
  %or.cond.i.i86 = or i1 %i.bs, %i.br
  %i.bt = icmp ult i64 %2, 2
  %or.cond2.i.i87 = or i1 %i.bt, %or.cond.i.i86
  br i1 %or.cond2.i.i87, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread, label %bb.v

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.am

bb.v:                                             ; preds = %bb.u
  %i.bu = shl i64 %1, 1                           ; 2 uses
  %i.bv = mul i64 %i.bu, %2
  %i.bw = mul i64 %1, 3
  %i.bx = mul i64 %i.bw, %2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.sroa.016.0.i.i64 = phi i64 [ %i.bx, %bb.v ], [ %i.bq, %bb.t ] ; 2 uses
  %.sroa.015.0.i.i65 = phi i64 [ %i.bv, %bb.v ], [ %i.bk, %bb.t ] ; 10 uses
  %.sroa.012.0.i.i66 = phi i64 [ %i.bu, %bb.v ], [ %i.bh, %bb.t ] ; 7 uses
  %.sroa.0.0.i.i67 = phi i64 [ %2, %bb.v ], [ %i.bi, %bb.t ] ; 2 uses
  %i.by = zext i1 %4 to i8
  store i64 %.sroa.012.0.i.i66, ptr %i.f, align 8, !noalias !96965
  %.sroa.515.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.0.0.i.i67, ptr %.sroa.515.0..sroa_idx.i68, align 8, !noalias !96965
  %.sroa.616.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.015.0.i.i65, ptr %.sroa.616.0..sroa_idx.i69, align 8, !noalias !96965
  %.sroa.717.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.016.0.i.i64, ptr %.sroa.717.0..sroa_idx.i70, align 8, !noalias !96965
  %.sroa.818.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 0, ptr %.sroa.818.0..sroa_idx.i71, align 8, !noalias !96965
  %.sroa.919.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.by, ptr %.sroa.919.0..sroa_idx.i72, align 1, !noalias !96965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !96966
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_NtB7_10UndirectedE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.e, i64 noundef %.sroa.015.0.i.i65, i64 noundef %.sroa.016.0.i.i64), !noalias !96966
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false), !alias.scope !96967, !noalias !96966
  store i32 -1, ptr %i.ca, align 8, !alias.scope !96967, !noalias !96966
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 -1, ptr %i.cb, align 4, !alias.scope !96967, !noalias !96966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !96966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96969)
  %i.cc = shl i64 %.sroa.015.0.i.i65, 2           ; 4 uses
  %i.cd = icmp ugt i64 %.sroa.015.0.i.i65, 4611686018427387903
  %.not.i.i.i.i.i73 = icmp ugt i64 %i.cc, 9223372036854775804
  %or.cond.i.i.i.i.i74 = or i1 %i.cd, %.not.i.i.i.i.i73
  br i1 %or.cond.i.i.i.i.i74, label %bb.aa, label %bb.x, !prof !62

bb.x:                                             ; preds = %bb.w
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !96970
  %i.cf = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !96970 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = ptrtoint ptr %i.cf to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75

bb.aa:                                            ; preds = %bb.y, %bb.w
  %.sroa.49.0.ph.i.i.i.i = phi i64 [ 4, %bb.y ], [ 0, %bb.w ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i.i.i, i64 %i.cc) #61
          to label %.noexc.i.i85 unwind label %bb.ae, !noalias !96966

.noexc.i.i85:                                     ; preds = %bb.aa
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75: ; preds = %bb.z, %bb.x
  %.sroa.10.0.i.i.i.i76 = phi i64 [ %i.ch, %bb.z ], [ 4, %bb.x ]
  %.sroa.49.0.i.i.i.i = phi i64 [ %.sroa.015.0.i.i65, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.ci = inttoptr i64 %.sroa.10.0.i.i.i.i76 to ptr ; 4 uses
  %i.cj = icmp samesign ule i64 %.sroa.015.0.i.i65, %.sroa.49.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.cj)
  %.not.i.i77 = icmp eq i64 %.sroa.015.0.i.i65, 0
  br i1 %.not.i.i77, label %.loopexit.i.i83, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.cl = add i64 %.sroa.012.0.i.i66, -1          ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i.i67, -2
  br i1 %4, label %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cn = icmp eq i64 %.sroa.012.0.i.i66, 0
  br i1 %i.cn, label %.split.us.i.i, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i
  %.val4.i.i.i.i.i.i.i.i.us.i.i = phi i64 [ %i.co, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i ] ; 4 uses
  %i.co = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, 1 ; 2 uses
  %i.cp = urem i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i66 ; 2 uses
  %i.cq = and i64 %i.cp, 1
  %i.cr = uitofp nneg i64 %i.cq to double
  %i.cs = udiv i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i66 ; 2 uses
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %i.cv = shufflevector <2 x i64> %i.cu, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cw = and <2 x i64> %i.cv, <i64 -1, i64 1>
  %i.cx = uitofp nneg i64 %i.ct to double
  %i.cy = uitofp nneg <2 x i64> %i.cw to <2 x double>
  %i.cz = fadd <2 x double> %i.cy, <double 5.000000e-01, double -5.000000e-01> ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fadd double %i.da, %i.cx
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  %i.dd = fmul double %i.dc, %i.cr
  %i.de = fadd double %i.db, %i.dd
  %i.df = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.de)
          to label %.noexc9.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96971 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.us.i.i:                   ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %i.dg = uitofp nneg i64 %i.cp to double
  %i.dh = fmul nnan double %i.dg, f0x3FEBB67AE8584CAA
  %i.di = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dh)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i unwind label %.split18.us.i.i, !noalias !96972 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.dj = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !96973 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, !prof !60

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %i.dl = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.dj, i64 noundef 0, ptr noundef nonnull %i.df) #59, !noalias !96973 ; 0 uses
  %i.dm = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.dj, i64 noundef 1, ptr noundef nonnull %i.di) #59, !noalias !96973 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96974
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.dj)
          to label %.noexc10.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96971

.noexc10.i.i.i.i.i.i.i.i.us.i.i:                  ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96975)
  %i.dn = load i64, ptr %i.c, align 8, !range !107, !alias.scope !96975, !noalias !96974, !noundef !56 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.dn, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i, label %.split26.us.i.i, !prof !66

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %i.do = load i32, ptr %i.ck, align 8, !alias.scope !96975, !noalias !96974, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96974
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.val4.i.i.i.i.i.i.i.i.us.i.i
  store i32 %i.do, ptr %i.dp, align 4, !noalias !96976
  %exitcond.not.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.co, %.sroa.015.0.i.i65
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.us.i.i, label %.loopexit.i.i83, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i

.split18.us.i.i:                                  ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i, %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i, %.split26.us.i.i, %.split.us.i.i
  %lpad.loopexit.split-lp306 = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.split.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dr, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dr = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ds = icmp ult i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cl
  br i1 %i.ds, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %i.dt = sub nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cl ; 2 uses
  %i.du = udiv i64 %i.dt, %.sroa.012.0.i.i66      ; 3 uses
  %i.dv = add nuw i64 %i.du, 1
  %i.dw = urem i64 %i.dt, %.sroa.012.0.i.i66
  %i.dx = icmp eq i64 %i.du, %i.cm
  %i.dy = trunc i64 %i.du to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.dx, %i.dy
  %i.dz = zext i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %i.dw, %i.dz
  br label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1162) #60
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96971

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.split.us.i.i
  unreachable

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.val4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dv, %bb.ab ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 2 uses
  %i.ea = lshr i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.eb = and i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ec = uitofp nneg i64 %i.ea to double
  %i.ed = uitofp nneg i64 %i.eb to double
  %i.ee = insertelement <2 x i64> poison, i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, i64 0
  %i.ef = shufflevector <2 x i64> %i.ee, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.eg = and <2 x i64> %i.ef, <i64 -1, i64 1>
  %i.eh = uitofp <2 x i64> %i.eg to <2 x double>
  %i.ei = fadd <2 x double> %i.eh, <double 5.000000e-01, double -5.000000e-01> ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %i.ek = fadd double %i.ej, %i.ec
  %i.el = extractelement <2 x double> %i.ei, i64 1
  %i.em = fmul double %i.el, %i.ed
  %i.en = fadd double %i.ek, %i.em
  %i.eo = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.en)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96971 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ep = uitofp i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i to double
  %i.eq = fmul nnan double %i.ep, f0x3FEBB67AE8584CAA
  %i.er = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.eq)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.split18.i.i, !noalias !96972 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.es = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !96973 ; 4 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !60

.split22.us.i.i:                                  ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi23.i.i = phi ptr [ %i.di, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.er, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi24.i.i = phi ptr [ %i.df, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.eo, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %bb.ac unwind label %bb.ad, !noalias !96973

bb.ac:                                            ; preds = %.split22.us.i.i
  unreachable

common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.split18.i.i, %bb.ad, %.split18.us.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.us-phi23.i.i, %bb.ad ], [ %i.eo, %.split18.i.i ], [ %i.df, %.split18.us.i.i ]
  %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.eu, %bb.ad ], [ %i.ev, %.split18.i.i ], [ %i.dq, %.split18.us.i.i ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !96972
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

bb.ad:                                            ; preds = %.split22.us.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %.us-phi24.i.i) #59, !noalias !96977
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split18.i.i:                                     ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ew = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.es, i64 noundef 0, ptr noundef nonnull %i.eo) #59, !noalias !96973 ; 0 uses
  %i.ex = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.es, i64 noundef 1, ptr noundef nonnull %i.er) #59, !noalias !96973 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96974
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.es)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96971

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96975)
  %i.ey = load i64, ptr %i.c, align 8, !range !107, !alias.scope !96975, !noalias !96974, !noundef !56 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ey, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i, label %.split26.us.i.i, !prof !66

.split26.us.i.i:                                  ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi27.i.i = phi i64 [ %i.dn, %.noexc10.i.i.i.i.i.i.i.i.us.i.i ], [ %i.ey, %.noexc10.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96978
  %i.ez = load i64, ptr %i.ck, align 8, !alias.scope !96975, !noalias !96974
  store i64 %.us-phi27.i.i, ptr %i.b, align 8, !noalias !96978
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ez, ptr %i.fa, align 8, !noalias !96978
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96971

.noexc11.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split26.us.i.i
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  %i.fb = load i32, ptr %i.ck, align 8, !alias.scope !96975, !noalias !96974, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96974
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.val4.i.i.i.i.i.i.i.i.i.i
  store i32 %i.fb, ptr %i.fc, align 4, !noalias !96976
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dr, %.sroa.015.0.i.i65
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i83, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp306, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fd = shl nuw i64 %.sroa.49.0.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !96979
  br label %.body.i.i78

bb.ae:                                            ; preds = %.loopexit.i.i83, %bb.aa
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i78

.body.i.i78:                                      ; preds = %bb.ae, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i
  %eh.lpad-body.i.i79 = phi { ptr, i32 } [ %i.fe, %bb.ae ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i81 unwind label %bb.af, !noalias !96980

bb.af:                                            ; preds = %.body.i.i78
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fg) #63
          to label %.body.i80 unwind label %bb.ag, !noalias !96980

bb.ag:                                            ; preds = %bb.af
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !96981
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i81: ; preds = %.body.i.i78
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fi)
          to label %common.resume unwind label %bb.ah, !noalias !96965

.loopexit.i.i83:                                  ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75
  store i64 %.sroa.49.0.i.i.i.i, ptr %i.d, align 8, !alias.scope !96982, !noalias !96966
  %.sroa.5.0..sroa_idx.i.i.i.i84 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ci, ptr %.sroa.5.0..sroa_idx.i.i.i.i84, align 8, !alias.scope !96982, !noalias !96966
  %.sroa.8.0..sroa_idx51.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.015.0.i.i65, ptr %.sroa.8.0..sroa_idx51.i.i.i.i, align 8, !alias.scope !96982, !noalias !96966
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_NtB1X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B2X_EB4r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias nofree noundef align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit unwind label %bb.ae, !noalias !96980

bb.ah:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i81
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i80

.body.i80:                                        ; preds = %bb.ah, %bb.af
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !96980
  unreachable

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit: ; preds = %.loopexit.i.i83
  %.sroa.096.0.copyload97 = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0.copyload99 = load ptr, ptr %.sroa.8.0..sroa_idx98, align 8
  %.sroa.9.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx100, i64 16, i1 false)
  %.sroa.10.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.10.0.copyload102 = load ptr, ptr %.sroa.10.0..sroa_idx101, align 8
  %.sroa.11.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.11.0.copyload104 = load i64, ptr %.sroa.11.0..sroa_idx103, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false)
  %i.fk = load <2 x i32>, ptr %i.ca, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !96966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !96966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fl = icmp eq i64 %.sroa.096.0.copyload97, -1
  br i1 %i.fl, label %bb.am, label %bb.ao

bb.ai:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.fm = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.aj, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit, !prof !88

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ai
  store ptr @2462, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 17, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.041.sroa.5.0..sroa_idx, align 8
  %.sroa.041.sroa.5.sroa.4.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.041.sroa.5.sroa.4.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.5.sroa.5.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.fm, ptr %.sroa.041.sroa.5.sroa.5.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.5.sroa.6.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.041.sroa.5.sroa.6.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.442.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9115)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12123)
  br label %bb.ap

bb.ak:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread141, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit
  %.sroa.0110.0153 = phi i64 [ 0, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread141 ], [ %.sroa.0110.0.copyload111, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  %.sroa.8112.0152 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread141 ], [ %.sroa.8112.0.copyload114, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  %.sroa.10117.0151 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread141 ], [ %.sroa.10117.0.copyload119, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  %.sroa.11120.0150 = phi i64 [ 0, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread141 ], [ %.sroa.11120.0.copyload122, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  %i.fq = phi <2 x i32> [ splat (i32 -1), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread141 ], [ %i.be, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9115, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11133, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12123, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9115)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12123)
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %bb.ak
  %.sroa.9132.0 = phi i64 [ %.sroa.11.0169, %bb.ao ], [ %.sroa.11120.0150, %bb.ak ]
  %.sroa.7.0 = phi ptr [ %.sroa.10.0170, %bb.ao ], [ %.sroa.10117.0151, %bb.ak ]
  %.sroa.3.0 = phi ptr [ %.sroa.8.0171, %bb.ao ], [ %.sroa.8112.0152, %bb.ak ]
  %.sroa.0131.0 = phi i64 [ %.sroa.096.0172, %bb.ao ], [ %.sroa.0110.0153, %bb.ak ]
  %i.fr = phi <2 x i32> [ %i.fx, %bb.ao ], [ %i.fq, %bb.ak ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59
  %i.fs = zext i1 %3 to i8
  store i64 %.sroa.0131.0, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.bd) #63
          to label %.body.i unwind label %bb.p, !noalias !98912

bb.p:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !98913
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.body.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.bf)
          to label %common.resume unwind label %bb.q, !noalias !98899

.loopexit.i.i:                                    ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB1P_23HexagonalLatticeBuilder30build_with_default_node_weightINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B5I_B4y_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8c_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  store i64 %.sroa.410.0.i.i.i.i, ptr %i.i, align 8, !alias.scope !98914, !noalias !98900
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !98914, !noalias !98900
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.015.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !98914, !noalias !98900
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_ENCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B2X_EB49_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, ptr noalias nofree noundef align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit unwind label %bb.n, !noalias !98912

bb.q:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.o
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !98912
  unreachable

common.resume:                                    ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i83, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %eh.lpad-body.i.i81, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i83 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit: ; preds = %.loopexit.i.i
  %.sroa.0115.0.copyload116 = load i64, ptr %i.j, align 8 ; 2 uses
  %.sroa.8117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8117.0.copyload119 = load ptr, ptr %.sroa.8117.0..sroa_idx118, align 8
  %.sroa.9120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9120, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9120.0..sroa_idx121, i64 16, i1 false)
  %.sroa.10122.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.10122.0.copyload124 = load ptr, ptr %.sroa.10122.0..sroa_idx123, align 8
  %.sroa.11125.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.11125.0.copyload127 = load i64, ptr %.sroa.11125.0..sroa_idx126, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12128, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.bh = load <2 x i32>, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !98900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !98900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bi = icmp eq i64 %.sroa.0115.0.copyload116, -1
  br i1 %i.bi, label %bb.ai, label %bb.ak

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98915)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br i1 %or.cond.i65, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread170, label %bb.s

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread170: ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i8 0, i64 16, i1 false), !alias.scope !98915
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !98915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.an

bb.s:                                             ; preds = %bb.r
  br i1 %5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = shl i64 %1, 1
  %i.bk = add i64 %i.bj, 2                        ; 2 uses
  %i.bl = add i64 %2, 1                           ; 2 uses
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = add i64 %i.bm, -2
  %i.bo = mul i64 %2, %1
  %i.bp = mul i64 %i.bo, 3
  %i.bq = add i64 %2, %1
  %i.br = shl i64 %i.bq, 1
  %i.bs = add i64 %i.bp, -1
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = zext i1 %3 to i64
  %i.bv = shl i64 %i.bt, %i.bu
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = trunc i64 %2 to i1
  %i.bx = icmp ult i64 %1, 2
  %or.cond.i.i88 = or i1 %i.bx, %i.bw
  %i.by = icmp ult i64 %2, 2
  %or.cond2.i.i89 = or i1 %i.by, %or.cond.i.i88
  br i1 %or.cond2.i.i89, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread, label %bb.v

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al

bb.v:                                             ; preds = %bb.u
  %.19.i.i90 = select i1 %3, i64 6, i64 3
  %i.bz = shl i64 %1, 1                           ; 2 uses
  %i.ca = mul i64 %i.bz, %2
  %i.cb = mul i64 %2, %1
  %i.cc = mul i64 %i.cb, %.19.i.i90
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.sroa.016.0.i.i66 = phi i64 [ %i.cc, %bb.v ], [ %i.bv, %bb.t ] ; 2 uses
  %.sroa.015.0.i.i67 = phi i64 [ %i.ca, %bb.v ], [ %i.bn, %bb.t ] ; 10 uses
  %.sroa.012.0.i.i68 = phi i64 [ %i.bz, %bb.v ], [ %i.bk, %bb.t ] ; 7 uses
  %.sroa.0.0.i.i69 = phi i64 [ %2, %bb.v ], [ %i.bl, %bb.t ] ; 2 uses
  %i.cd = zext i1 %3 to i8
  %i.ce = zext i1 %5 to i8
  store i64 %.sroa.012.0.i.i68, ptr %i.f, align 8, !noalias !98915
  %.sroa.515.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.0.0.i.i69, ptr %.sroa.515.0..sroa_idx.i70, align 8, !noalias !98915
  %.sroa.616.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.015.0.i.i67, ptr %.sroa.616.0..sroa_idx.i71, align 8, !noalias !98915
  %.sroa.717.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.016.0.i.i66, ptr %.sroa.717.0..sroa_idx.i72, align 8, !noalias !98915
  %.sroa.818.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.cd, ptr %.sroa.818.0..sroa_idx.i73, align 8, !noalias !98915
  %.sroa.919.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.ce, ptr %.sroa.919.0..sroa_idx.i74, align 1, !noalias !98915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !98916
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_E13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.e, i64 noundef %.sroa.015.0.i.i67, i64 noundef %.sroa.016.0.i.i66), !noalias !98916
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false), !alias.scope !98917, !noalias !98916
  store i32 -1, ptr %i.cg, align 8, !alias.scope !98917, !noalias !98916
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 -1, ptr %i.ch, align 4, !alias.scope !98917, !noalias !98916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !98916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98919)
  %i.ci = shl i64 %.sroa.015.0.i.i67, 2           ; 4 uses
  %i.cj = icmp ugt i64 %.sroa.015.0.i.i67, 4611686018427387903
  %.not.i.i.i.i.i75 = icmp ugt i64 %i.ci, 9223372036854775804
  %or.cond.i.i.i.i.i76 = or i1 %i.cj, %.not.i.i.i.i.i75
  br i1 %or.cond.i.i.i.i.i76, label %bb.aa, label %bb.x, !prof !62

bb.x:                                             ; preds = %bb.w
  %i.ck = icmp eq i64 %i.ci, 0
  br i1 %i.ck, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !98920
  %i.cl = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !98920 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = ptrtoint ptr %i.cl to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77

bb.aa:                                            ; preds = %bb.y, %bb.w
  %.sroa.49.0.ph.i.i.i.i = phi i64 [ 4, %bb.y ], [ 0, %bb.w ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i.i.i, i64 %i.ci) #61
          to label %.noexc.i.i87 unwind label %bb.ae, !noalias !98916

.noexc.i.i87:                                     ; preds = %bb.aa
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77: ; preds = %bb.z, %bb.x
  %.sroa.10.0.i.i.i.i78 = phi i64 [ %i.cn, %bb.z ], [ 4, %bb.x ]
  %.sroa.49.0.i.i.i.i = phi i64 [ %.sroa.015.0.i.i67, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.co = inttoptr i64 %.sroa.10.0.i.i.i.i78 to ptr ; 4 uses
  %i.cp = icmp samesign ule i64 %.sroa.015.0.i.i67, %.sroa.49.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.cp)
  %.not.i.i79 = icmp eq i64 %.sroa.015.0.i.i67, 0
  br i1 %.not.i.i79, label %.loopexit.i.i85, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.cr = add i64 %.sroa.012.0.i.i68, -1          ; 2 uses
  %i.cs = add i64 %.sroa.0.0.i.i69, -2
  br i1 %5, label %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ct = icmp eq i64 %.sroa.012.0.i.i68, 0
  br i1 %i.ct, label %.split.us.i.i, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i
  %.val4.i.i.i.i.i.i.i.i.us.i.i = phi i64 [ %i.cu, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i ] ; 4 uses
  %i.cu = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, 1 ; 2 uses
  %i.cv = urem i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i68 ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %i.cx = uitofp nneg i64 %i.cw to double
  %i.cy = udiv i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i68 ; 2 uses
  %i.cz = lshr i64 %i.cy, 1
  %i.da = insertelement <2 x i64> poison, i64 %i.cy, i64 0
  %i.db = shufflevector <2 x i64> %i.da, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dc = and <2 x i64> %i.db, <i64 -1, i64 1>
  %i.dd = uitofp nneg i64 %i.cz to double
  %i.de = uitofp nneg <2 x i64> %i.dc to <2 x double>
  %i.df = fadd <2 x double> %i.de, <double 5.000000e-01, double -5.000000e-01> ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = fadd double %i.dg, %i.dd
  %i.di = extractelement <2 x double> %i.df, i64 1
  %i.dj = fmul double %i.di, %i.cx
  %i.dk = fadd double %i.dh, %i.dj
  %i.dl = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dk)
          to label %.noexc9.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98921 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.us.i.i:                   ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %i.dm = uitofp nneg i64 %i.cv to double
  %i.dn = fmul nnan double %i.dm, f0x3FEBB67AE8584CAA
  %i.do = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dn)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i unwind label %.split18.us.i.i, !noalias !98922 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.dp = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !98923 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, !prof !60

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %i.dr = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.dp, i64 noundef 0, ptr noundef nonnull %i.dl) #59, !noalias !98923 ; 0 uses
  %i.ds = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.dp, i64 noundef 1, ptr noundef nonnull %i.do) #59, !noalias !98923 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98924
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.dp)
          to label %.noexc10.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98921

.noexc10.i.i.i.i.i.i.i.i.us.i.i:                  ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98925)
  %i.dt = load i64, ptr %i.c, align 8, !range !107, !alias.scope !98925, !noalias !98924, !noundef !56 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.dt, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i, label %.split26.us.i.i, !prof !66

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %i.du = load i32, ptr %i.cq, align 8, !alias.scope !98925, !noalias !98924, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98924
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.val4.i.i.i.i.i.i.i.i.us.i.i
  store i32 %i.du, ptr %i.dv, align 4, !noalias !98926
  %exitcond.not.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.cu, %.sroa.015.0.i.i67
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.us.i.i, label %.loopexit.i.i85, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i

.split18.us.i.i:                                  ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i, %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i, %.split26.us.i.i, %.split.us.i.i
  %lpad.loopexit.split-lp318 = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.split.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dx, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dx = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dy = icmp ult i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cr
  br i1 %i.dy, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %i.dz = sub nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cr ; 2 uses
  %i.ea = udiv i64 %i.dz, %.sroa.012.0.i.i68      ; 3 uses
  %i.eb = add nuw i64 %i.ea, 1
  %i.ec = urem i64 %i.dz, %.sroa.012.0.i.i68
  %i.ed = icmp eq i64 %i.ea, %i.cs
  %i.ee = trunc i64 %i.ea to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.ed, %i.ee
  %i.ef = zext i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %i.ec, %i.ef
  br label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1162) #60
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98921

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.split.us.i.i
  unreachable

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.val4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eb, %bb.ab ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 2 uses
  %i.eg = lshr i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.eh = and i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ei = uitofp nneg i64 %i.eg to double
  %i.ej = uitofp nneg i64 %i.eh to double
  %i.ek = insertelement <2 x i64> poison, i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, i64 0
  %i.el = shufflevector <2 x i64> %i.ek, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.em = and <2 x i64> %i.el, <i64 -1, i64 1>
  %i.en = uitofp <2 x i64> %i.em to <2 x double>
  %i.eo = fadd <2 x double> %i.en, <double 5.000000e-01, double -5.000000e-01> ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = fadd double %i.ep, %i.ei
  %i.er = extractelement <2 x double> %i.eo, i64 1
  %i.es = fmul double %i.er, %i.ej
  %i.et = fadd double %i.eq, %i.es
  %i.eu = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.et)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98921 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ev = uitofp i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i to double
  %i.ew = fmul nnan double %i.ev, f0x3FEBB67AE8584CAA
  %i.ex = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.ew)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.split18.i.i, !noalias !98922 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.ey = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !98923 ; 4 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !60

.split22.us.i.i:                                  ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi23.i.i = phi ptr [ %i.do, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.ex, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi24.i.i = phi ptr [ %i.dl, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.eu, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %bb.ac unwind label %bb.ad, !noalias !98923

bb.ac:                                            ; preds = %.split22.us.i.i
  unreachable

common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.split18.i.i, %bb.ad, %.split18.us.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.us-phi23.i.i, %bb.ad ], [ %i.eu, %.split18.i.i ], [ %i.dl, %.split18.us.i.i ]
  %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fa, %bb.ad ], [ %i.fb, %.split18.i.i ], [ %i.dw, %.split18.us.i.i ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !98922
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

bb.ad:                                            ; preds = %.split22.us.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %.us-phi24.i.i) #59, !noalias !98927
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split18.i.i:                                     ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fc = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.ey, i64 noundef 0, ptr noundef nonnull %i.eu) #59, !noalias !98923 ; 0 uses
  %i.fd = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.ey, i64 noundef 1, ptr noundef nonnull %i.ex) #59, !noalias !98923 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98924
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.ey)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98921

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98925)
  %i.fe = load i64, ptr %i.c, align 8, !range !107, !alias.scope !98925, !noalias !98924, !noundef !56 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fe, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i, label %.split26.us.i.i, !prof !66

.split26.us.i.i:                                  ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi27.i.i = phi i64 [ %i.dt, %.noexc10.i.i.i.i.i.i.i.i.us.i.i ], [ %i.fe, %.noexc10.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98928
  %i.ff = load i64, ptr %i.cq, align 8, !alias.scope !98925, !noalias !98924
  store i64 %.us-phi27.i.i, ptr %i.b, align 8, !noalias !98928
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ff, ptr %i.fg, align 8, !noalias !98928
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !98921

.noexc11.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split26.us.i.i
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  %i.fh = load i32, ptr %i.cq, align 8, !alias.scope !98925, !noalias !98924, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98924
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.val4.i.i.i.i.i.i.i.i.i.i
  store i32 %i.fh, ptr %i.fi, align 4, !noalias !98926
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dx, %.sroa.015.0.i.i67
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i85, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp318, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fj = shl nuw i64 %.sroa.49.0.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !98929
  br label %.body.i.i80

bb.ae:                                            ; preds = %.loopexit.i.i85, %bb.aa
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i80

.body.i.i80:                                      ; preds = %bb.ae, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i
  %eh.lpad-body.i.i81 = phi { ptr, i32 } [ %i.fk, %bb.ae ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i83 unwind label %bb.af, !noalias !98930

bb.af:                                            ; preds = %.body.i.i80
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fm) #63
          to label %.body.i82 unwind label %bb.ag, !noalias !98930

bb.ag:                                            ; preds = %bb.af
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !98931
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i83: ; preds = %.body.i.i80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fo)
          to label %common.resume unwind label %bb.ah, !noalias !98915

.loopexit.i.i85:                                  ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77
  store i64 %.sroa.49.0.i.i.i.i, ptr %i.d, align 8, !alias.scope !98932, !noalias !98916
  %.sroa.5.0..sroa_idx.i.i.i.i86 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.co, ptr %.sroa.5.0..sroa_idx.i.i.i.i86, align 8, !alias.scope !98932, !noalias !98916
  %.sroa.8.0..sroa_idx51.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.015.0.i.i67, ptr %.sroa.8.0..sroa_idx51.i.i.i.i, align 8, !alias.scope !98932, !noalias !98916
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_ENCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B2X_EB49_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias nofree noundef align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit unwind label %bb.ae, !noalias !98930

bb.ah:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i83
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i82

.body.i82:                                        ; preds = %bb.ah, %bb.af
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !98930
  unreachable

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit: ; preds = %.loopexit.i.i85
  %.sroa.0100.0.copyload101 = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0.copyload104 = load ptr, ptr %.sroa.8.0..sroa_idx103, align 8
  %.sroa.9.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx105, i64 16, i1 false)
  %.sroa.10.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.10.0.copyload107 = load ptr, ptr %.sroa.10.0..sroa_idx106, align 8
  %.sroa.11.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.11.0.copyload109 = load i64, ptr %.sroa.11.0..sroa_idx108, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  %i.fq = load <2 x i32>, ptr %i.cg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !98916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !98916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fr = icmp eq i64 %.sroa.0100.0.copyload101, -1
  br i1 %i.fr, label %bb.al, label %bb.an

bb.ai:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.fs = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.aj, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit, !prof !88

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ai
  store ptr @2462, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 17, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.4.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.040.sroa.5.sroa.4.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.5.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.fs, ptr %.sroa.040.sroa.5.sroa.5.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.6.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.040.sroa.5.sroa.6.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.441.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9120)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12128)
  br label %bb.ap

bb.ak:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread151, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit
  %.sroa.0115.0163 = phi i64 [ 0, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread151 ], [ %.sroa.0115.0.copyload116, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  %.sroa.8117.0162 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread151 ], [ %.sroa.8117.0.copyload119, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  %.sroa.10122.0161 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread151 ], [ %.sroa.10122.0.copyload124, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  %.sroa.11125.0160 = phi i64 [ 0, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread151 ], [ %.sroa.11125.0.copyload127, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  %i.fw = phi <2 x i32> [ splat (i32 -1), %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread151 ], [ %i.bh, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9120, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11140, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12128, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9120)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12128)
  br label %bb.ao

bb.al:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.fx = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.am, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit99, !prof !88

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit99: ; preds = %bb.al
  store ptr @2462, ptr %i.fx, align 8
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graph:bb.a
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  %i.br = lshr i64 %i.bm, 59
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = tail call noundef i32 @llvm.fshr.i32(i32 %i.bq, i32 %i.bq, i32 range(i32 0, 32) %i.bs)
  %i.bu = mul i64 %i.bm, 6364136223846793005
  %i.bv = add i64 %i.bu, -6812164046247290893     ; 4 uses
  %i.bw = lshr i64 %i.bv, 45
  %i.bx = lshr i64 %i.bv, 27
  %i.by = xor i64 %i.bw, %i.bx
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %i.ca = lshr i64 %i.bv, 59
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = tail call noundef i32 @llvm.fshr.i32(i32 %i.bz, i32 %i.bz, i32 range(i32 0, 32) %i.cb)
  %i.cd = mul i64 %i.bv, 6364136223846793005
  %i.ce = add i64 %i.cd, -6812164046247290893     ; 4 uses
  %i.cf = lshr i64 %i.ce, 45
  %i.cg = lshr i64 %i.ce, 27
  %i.ch = xor i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %i.cj = lshr i64 %i.ce, 59
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = tail call noundef i32 @llvm.fshr.i32(i32 %i.ci, i32 %i.ci, i32 range(i32 0, 32) %i.ck)
  %i.cm = mul i64 %i.ce, 6364136223846793005
  %i.cn = add i64 %i.cm, -6812164046247290893     ; 4 uses
  %i.co = lshr i64 %i.cn, 45
  %i.cp = lshr i64 %i.cn, 27
  %i.cq = xor i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cs = lshr i64 %i.cn, 59
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = tail call noundef i32 @llvm.fshr.i32(i32 %i.cr, i32 %i.cr, i32 range(i32 0, 32) %i.ct)
  %i.cv = mul i64 %i.cn, 6364136223846793005
  %i.cw = add i64 %i.cv, -6812164046247290893     ; 4 uses
  %i.cx = lshr i64 %i.cw, 45
  %i.cy = lshr i64 %i.cw, 27
  %i.cz = xor i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  %i.db = lshr i64 %i.cw, 59
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = tail call noundef i32 @llvm.fshr.i32(i32 %i.da, i32 %i.da, i32 range(i32 0, 32) %i.dc)
  %i.de = mul i64 %i.cw, 6364136223846793005
  %i.df = add i64 %i.de, -6812164046247290893     ; 3 uses
  %i.dg = lshr i64 %i.df, 45
  %i.dh = lshr i64 %i.df, 27
  %i.di = xor i64 %i.dg, %i.dh
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = lshr i64 %i.df, 59
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = tail call noundef i32 @llvm.fshr.i32(i32 %i.dj, i32 %i.dj, i32 range(i32 0, 32) %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !110966
  store i32 %i.bb, ptr %i.g, align 4, !noalias !110966
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.bk, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !110966
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.bt, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !110966
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %i.cc, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !110966
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %i.cl, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !110966
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %i.cu, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !110966
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.dd, ptr %.sroa.10.0..sroa_idx.i, align 4, !noalias !110966
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %i.dm, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !110966
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.g)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit unwind label %bb.o

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !110966
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.n)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.m, %bb.n, %bb.q
  %.sroa.044.3 = phi i1 [ true, %bb.n ], [ true, %bb.q ], [ true, %bb.m ], [ false, %bb.v ]
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110968)
  %i.do = load i32, ptr %i.n, align 16, !range !65, !alias.scope !110968, !noundef !56
  %i.dp = trunc nuw i32 %i.do to i1
  br i1 %i.dp, label %bb.q, label %bb.r, !prof !60

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !110969
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !range !159, !alias.scope !110968, !noundef !56
  store i32 %i.dr, ptr %i.h, align 4, !noalias !110969
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1549, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2717) #60
          to label %.noexc187 unwind label %bb.o

.noexc187:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dt = load i128, ptr %i.ds, align 16, !alias.scope !110968, !noundef !56
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.dv = load i128, ptr %i.du, align 16, !alias.scope !110968, !noundef !56
  store i128 %i.dt, ptr %i.o, align 16, !alias.scope !110967
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i128 %i.dv, ptr %i.dw, align 16, !alias.scope !110967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.s

bb.s:                                             ; preds = %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.021.0.copyload = load i64, ptr %4, align 8 ; 4 uses
  %.not = icmp eq i64 %.sroa.021.0.copyload, -1
  br i1 %.not, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.dx = mul i64 %1, 24                          ; 3 uses
  %or.cond.i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.i.i, label %bb.v, label %bb.u, !prof !62

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !110970
  %i.dy = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110970 ; 5 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.v, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.u
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.eb = shl i64 %3, 3                           ; 4 uses
  %i.ec = icmp ugt i64 %3, 2305843009213693951
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.eb, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.ec, %.not.i.i.i.i.i.i.i.i.i.i
  %i.ed = icmp eq i64 %i.eb, 0
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %3, 0
  %i.ee = load i128, ptr %i.ea, align 16
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %.split, label %.lr.ph.i.i.i.i.i.i.split.preheader, !prof !62

.lr.ph.i.i.i.i.i.i.split.preheader:               ; preds = %.lr.ph.i.i.i.i.i.i
  %.promoted327 = load i128, ptr %i.o, align 16
  br label %.lr.ph.i.i.i.i.i.i.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.47.0.ph.i = phi i64 [ 8, %bb.u ], [ 0, %bb.t ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.47.0.ph.i, i64 %i.dx) #61
          to label %.noexc195 unwind label %bb.o

.noexc195:                                        ; preds = %bb.v
  unreachable

.lr.ph.i.i.i.i.i.i.split:                         ; preds = %.lr.ph.i.i.i.i.i.i.split.preheader, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i
  %.lcssa326329 = phi i128 [ %.lcssa326328, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i ], [ %.promoted327, %.lr.ph.i.i.i.i.i.i.split.preheader ] ; 2 uses
  %.val4.i.i.i.i.i.i = phi i64 [ %i.ef, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.split.preheader ] ; 3 uses
  %i.ef = add nuw nsw i64 %.val4.i.i.i.i.i.i, 1   ; 2 uses
  br i1 %i.ed, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.split
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !110971
  %i.eg = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110971 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = ptrtoint ptr %i.eg to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

.split:                                           ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.lcssa.split = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.val4.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %.sroa.49.0.ph.i.i.i.i.i.i.i.i.i.split = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ 8, %bb.w ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i.i.i.i.i.i.i.i.split, i64 %i.eb) #61
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i, !noalias !110972

.noexc.i.i.i.i.i.i:                               ; preds = %.split
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.split
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %bb.x ], [ 8, %.lr.ph.i.i.i.i.i.i.split ]
  %.sroa.49.0.i.i.i.i.i.i.i.i.i = phi i64 [ %3, %bb.x ], [ 0, %.lr.ph.i.i.i.i.i.i.split ] ; 2 uses
  %i.ej = inttoptr i64 %.sroa.10.0.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  %i.ek = icmp samesign ule i64 %3, %.sroa.49.0.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ek)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = phi i128 [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa326329, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.em = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %i.eo = mul i128 %i.el, 47026247687942121848144207491837523525
  %i.ep = add i128 %i.eo, %i.ee                   ; 5 uses
  %i.eq = lshr i128 %i.ep, 122
  %i.er = trunc nuw nsw i128 %i.eq to i64
  %i.es = lshr i128 %i.ep, 64
  %i.et = xor i128 %i.es, %i.ep
  %i.eu = trunc i128 %i.et to i64                 ; 2 uses
  %i.ev = call noundef i64 @llvm.fshr.i64(i64 %i.eu, i64 %i.eu, i64 %i.er)
  %i.ew = lshr i64 %i.ev, 12
  %i.ex = or disjoint i64 %i.ew, 4607182418800017408
  %i.ey = bitcast i64 %i.ex to double
  %i.ez = fadd nnan double %i.ey, -1.000000e+00
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.em
  store double %i.ez, ptr %i.fa, align 8, !noalias !110973
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.en, %3
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa326328 = phi i128 [ %.lcssa326329, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecdE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %.val4.i.i.i.i.i.i ; 3 uses
  store i64 %.sroa.49.0.i.i.i.i.i.i.i.i.i, ptr %i.fb, align 8, !noalias !110974
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.ej, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !110974
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %3, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !110974
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ef, %1
  br i1 %exitcond.not.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i.split

.body.i:                                          ; preds = %.split
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !110975), !noalias !110976
  %i.fd = icmp eq i64 %.val4.i.i.i.i.i.i.lcssa.split, 0
  br i1 %i.fd, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i239, label %.lr.ph.i.i.i231

.lr.ph.i.i.i231:                                  ; preds = %.body.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236
  %.sroa.0.012.i.i.i232 = phi i64 [ %i.ff, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236 ], [ 0, %.body.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %.sroa.0.012.i.i.i232 ; 2 uses
  %i.ff = add nuw nsw i64 %.sroa.0.012.i.i.i232, 1 ; 2 uses
  %.val8.i.i.i233 = load i64, ptr %i.fe, align 8, !alias.scope !110975, !noalias !110977 ; 2 uses
  %i.fg = icmp eq i64 %.val8.i.i.i233, 0
  br i1 %i.fg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i234

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i234: ; preds = %.lr.ph.i.i.i231
  %i.fh = getelementptr i8, ptr %i.fe, i64 8
  %.val9.i.i.i235 = load ptr, ptr %i.fh, align 8, !alias.scope !110975, !noalias !110977, !nonnull !56, !noundef !56
  %i.fi = shl nuw i64 %.val8.i.i.i233, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i235, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110978
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i234, %.lr.ph.i.i.i231
  %i.fj = icmp eq i64 %i.ff, %.val4.i.i.i.i.i.i.lcssa.split
  br i1 %i.fj, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i239, label %.lr.ph.i.i.i231

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i239: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i236, %.body.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dy, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110977
  br label %.body

.thread:                                          ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjINtNtCs87CvPiUlf0m_5alloc3vec3VecdEuNCNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph22random_geometric_graphs_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1D_.exit.i.i.i.i.i.i
  store i128 %.lcssa326328, ptr %i.o, align 16
  store i64 %1, ptr %i.m, align 8, !noalias !110979
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.dy, ptr %.sroa.5246.0..sroa_idx, align 8, !noalias !110979
  %.sroa.7247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %1, ptr %.sroa.7247.0..sroa_idx, align 8, !noalias !110979
  br label %.lr.ph.preheader

bb.y:                                             ; preds = %bb.s
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.021.0.copyload, ptr %i.m, align 8
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx, i64 16, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 4 uses
  %i.fk = icmp ult i64 %.pre, 384307168202282326
  call void @llvm.assume(i1 %i.fk)
  %.not180 = icmp eq i64 %1, %.pre
  br i1 %.not180, label %.lr.ph.preheader, label %bb.z

.lr.ph.preheader:                                 ; preds = %bb.y, %.thread
  %.sroa.021.0.copyload248430 = phi i64 [ %1, %.thread ], [ %.sroa.021.0.copyload, %bb.y ] ; 3 uses
  %i.fl = phi i64 [ %1, %.thread ], [ %.pre, %bb.y ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !nonnull !56, !noundef !56 ; 9 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx
  br label %.lr.ph

bb.z:                                             ; preds = %bb.y
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.fp = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.aa, label %bb.az, !prof !88

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc196 unwind label %.body199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc196:                                        ; preds = %bb.aa
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ar
  %.sroa.025.0330 = phi ptr [ %i.fr, %bb.ar ], [ %i.fn, %.lr.ph.preheader ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.025.0330, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.fs = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types4dictNtB2_6PyDict3new()
          to label %bb.af unwind label %.body199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

._crit_edge:                                      ; preds = %bb.ar
  %i.ft = add nsw i64 %1, -1                      ; 3 uses
  %.not344 = icmp eq i64 %i.ft, 0
  br i1 %.not344, label %._crit_edge341, label %.split331.lr.ph

.split331.lr.ph:                                  ; preds = %._crit_edge
  %i.fu = fcmp oeq double %5, 2.000000e+00
  br i1 %i.am, label %.split331.us, label %.split331

.split331.us:                                     ; preds = %.split331.lr.ph, %.loopexit.us
  %.sroa.0171.0340.us = phi i64 [ %i.fv, %.loopexit.us ], [ 0, %.split331.lr.ph ] ; 3 uses
  %i.fv = add nuw nsw i64 %.sroa.0171.0340.us, 1  ; 4 uses
  %i.fw = icmp ult i64 %i.fv, %1
  br i1 %i.fw, label %.lr.ph333.us, label %.loopexit.us

.lr.ph333.us:                                     ; preds = %.split331.us
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %.sroa.0171.0340.us ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = trunc i64 %.sroa.0171.0340.us to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph333.us
  %.sroa.0173.0332.us.us = phi i64 [ %i.fv, %.lr.ph333.us ], [ %i.gb, %bb.ae ] ; 3 uses
  %i.gb = add nuw i64 %.sroa.0173.0332.us.us, 1   ; 2 uses
  %i.gc = load i64, ptr %i.fy, align 8, !noundef !56
  %i.gd = load ptr, ptr %i.fz, align 8, !nonnull !56, !noundef !56 ; 3 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %.sroa.0173.0332.us.us ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !nonnull !56, !noundef !56 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !noundef !56
  call void @llvm.experimental.noalias.scope.decl(metadata !110980)
  call void @llvm.experimental.noalias.scope.decl(metadata !110981)
  %i.gj = call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.gc, i64 range(i64 0, 1152921504606846976) %i.gi) ; 5 uses
  %.not.i3.i.us.us = icmp eq i64 %i.gj, 0
  br i1 %.not.i3.i.us.us, label %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader: ; preds = %bb.ab
  %xtraiter579 = and i64 %i.gj, 1
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.epil.preheader, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader
  %unroll_iter584 = and i64 %i.gj, -2
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new
  %.sroa.0.015.us.i19.i.us.us = phi double [ -1.000000e+00, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new ], [ %..i.i.us.i.i.us.us.1, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us ] ; 2 uses
  %.sroa.07.014.us.i20.i.us.us = phi i64 [ 0, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new ], [ %i.gr, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us ] ; 4 uses
  %niter585 = phi i64 [ 0, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader.new ], [ %niter585.next.1, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us ]
  %i.gl = or disjoint i64 %.sroa.07.014.us.i20.i.us.us, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.sroa.07.014.us.i20.i.us.us
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.sroa.07.014.us.i20.i.us.us
  %.val11.us.i21.i.us.us = load double, ptr %i.gm, align 8, !alias.scope !110980, !noalias !110982, !noundef !56
  %.val12.us.i22.i.us.us = load double, ptr %i.gn, align 8, !alias.scope !110981, !noalias !110982, !noundef !56
  %i.go = fsub double %.val11.us.i21.i.us.us, %.val12.us.i22.i.us.us
  %i.gp = call double @llvm.fabs.f64(double %i.go) ; 2 uses
  %i.gq = fcmp ogt double %i.gp, %.sroa.0.015.us.i19.i.us.us
  %..i.i.us.i.i.us.us = select i1 %i.gq, double %i.gp, double %.sroa.0.015.us.i19.i.us.us ; 2 uses
  %i.gr = add nuw nsw i64 %.sroa.07.014.us.i20.i.us.us, 2 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gl
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gl
  %.val11.us.i21.i.us.us.1 = load double, ptr %i.gs, align 8, !alias.scope !110980, !noalias !110982, !noundef !56
  %.val12.us.i22.i.us.us.1 = load double, ptr %i.gt, align 8, !alias.scope !110981, !noalias !110982, !noundef !56
  %i.gu = fsub double %.val11.us.i21.i.us.us.1, %.val12.us.i22.i.us.us.1
  %i.gv = call double @llvm.fabs.f64(double %i.gu) ; 2 uses
  %i.gw = fcmp ogt double %i.gv, %..i.i.us.i.i.us.us
  %..i.i.us.i.i.us.us.1 = select i1 %i.gw, double %i.gv, double %..i.i.us.i.i.us.us ; 3 uses
  %niter585.next.1 = add i64 %niter585, 2         ; 2 uses
  %niter585.ncmp.1 = icmp eq i64 %niter585.next.1, %unroll_iter584
  br i1 %niter585.ncmp.1, label %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us.loopexit.unr-lcssa, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us

_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us.loopexit.unr-lcssa: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us
  %lcmp.mod581.not = icmp eq i64 %xtraiter579, 0
  br i1 %lcmp.mod581.not, label %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.epil.preheader

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.epil.preheader: ; preds = %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us.loopexit.unr-lcssa, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader
  %.sroa.0.015.us.i19.i.us.us.epil.init = phi double [ -1.000000e+00, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader ], [ %..i.i.us.i.i.us.us.1, %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.07.014.us.i20.i.us.us.epil.init = phi i64 [ 0, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.preheader ], [ %i.gr, %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod583 = trunc i64 %i.gj to i1
  call void @llvm.assume(i1 %lcmp.mod583)
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.sroa.07.014.us.i20.i.us.us.epil.init
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.sroa.07.014.us.i20.i.us.us.epil.init
  %.val11.us.i21.i.us.us.epil = load double, ptr %i.gx, align 8, !alias.scope !110980, !noalias !110982, !noundef !56
  %.val12.us.i22.i.us.us.epil = load double, ptr %i.gy, align 8, !alias.scope !110981, !noalias !110982, !noundef !56
  %i.gz = fsub double %.val11.us.i21.i.us.us.epil, %.val12.us.i22.i.us.us.epil
  %i.ha = call double @llvm.fabs.f64(double %i.gz) ; 2 uses
  %i.hb = fcmp ogt double %i.ha, %.sroa.0.015.us.i19.i.us.us.epil.init
  %..i.i.us.i.i.us.us.epil = select i1 %i.hb, double %i.ha, double %.sroa.0.015.us.i19.i.us.us.epil.init
  br label %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us

_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.epil.preheader, %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us.loopexit.unr-lcssa, %bb.ab
  %.sroa.0.0.i.us.us = phi double [ -1.000000e+00, %bb.ab ], [ %..i.i.us.i.i.us.us.1, %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us.loopexit.unr-lcssa ], [ %..i.i.us.i.i.us.us.epil, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldTRdBV_EddNCNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance0NCB15_s_0E0B19_.exit.us.i.i.us.us.epil.preheader ]
  %i.hc = fcmp olt double %.sroa.0.0.i.us.us, %.sroa.02.0
  br i1 %i.hc, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph8distance.exit.us.us
  %i.hd = trunc i64 %.sroa.0173.0332.us.us to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !110983
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ga, i32 noundef %i.hd, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc214.us.us unwind label %.body199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph36___pyfunction_hyperbolic_random_graph:bb.a
  %i.da = icmp eq i64 %.sroa.10.0105.i.i, 0
  br i1 %i.da, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedEB2w_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B3Y_B2w_EB44_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted96.i.i = load i128, ptr %i.l, align 16, !noalias !111945
  %i.db = ptrtoint ptr %i.bx to i64
  %i.dc = fmul double %i.bg, 5.000000e-01
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.de = load i128, ptr %i.dd, align 16, !noalias !111945
  br label %bb.aa

.loopexit.i.i:                                    ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator3nthCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ac
  %.sroa.10.0.i.i = add nsw i64 %.sroa.10.0110.i.i, -1 ; 2 uses
  %i.df = icmp eq i64 %.sroa.10.0.i.i, 0
  %i.dg = icmp eq ptr %i.dh, %i.bx
  %or.cond83.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond83.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedEB2w_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B3Y_B2w_EB44_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.sroa.10.0110.i.i = phi i64 [ %.sroa.10.0105.i.i, %.lr.ph.i.i ], [ %.sroa.10.0.i.i, %.loopexit.i.i ]
  %.sroa.059.0109.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %i.dh, %.loopexit.i.i ] ; 3 uses
  %.sroa.7.071108.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.di, %.loopexit.i.i ] ; 2 uses
  %.promoted100107.i.i = phi i128 [ %.promoted96.i.i, %.lr.ph.i.i ], [ %.promoted99.i.i.ph, %.loopexit.i.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.059.0109.i.i, i64 24 ; 2 uses
  %i.di = add nuw nsw i64 %.sroa.7.071108.i.i, 1  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.059.0109.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.059.0109.i.i, i64 16
  %i.dl = trunc i64 %.sroa.7.071108.i.i to i32
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.aa
  %.promoted99.i.i.ph = phi i128 [ %.promoted100107.i.i, %bb.aa ], [ %.promoted99.i.i.ph.be, %.outer.backedge ] ; 2 uses
  %.ph = phi i128 [ %.promoted100107.i.i, %bb.aa ], [ %.ph.be, %.outer.backedge ] ; 2 uses
  %.sroa.15.0.i.i.ph = phi i64 [ %i.di, %bb.aa ], [ 0, %.outer.backedge ]
  %.sroa.1064.0.i.i.ph = phi i64 [ 0, %bb.aa ], [ %.sroa.1064.1147.i.i, %.outer.backedge ]
  %.sroa.060.0.i.i.ph = phi ptr [ %i.bt, %bb.aa ], [ %.sroa.060.1148.i.i, %.outer.backedge ]
  br label %bb.ab

bb.ab:                                            ; preds = %.outer, %bb.ae
  %.sroa.15.0.i.i = phi i64 [ 0, %bb.ae ], [ %.sroa.15.0.i.i.ph, %.outer ] ; 4 uses
  %.sroa.1064.0.i.i = phi i64 [ %.sroa.1064.1147.i.i, %bb.ae ], [ %.sroa.1064.0.i.i.ph, %.outer ] ; 2 uses
  %.sroa.060.0.i.i = phi ptr [ %.sroa.060.1148.i.i, %bb.ae ], [ %.sroa.060.0.i.i.ph, %.outer ] ; 4 uses
  %.not30.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not30.i.i, label %bb.ac, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator3nthCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !66

bb.ac:                                            ; preds = %bb.ab
  %i.dm = icmp eq ptr %.sroa.060.0.i.i, %i.bx
  br i1 %i.dm, label %.loopexit.i.i, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit40.thread141.i.i

_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator3nthCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ab
  %i.dn = ptrtoint ptr %.sroa.060.0.i.i to i64
  %i.do = sub nuw i64 %i.db, %i.dn
  %i.dp = udiv exact i64 %i.do, 24
  %.not.i.not.i.not.i.i = icmp samesign ult i64 %.sroa.15.0.i.i, %i.dp
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.060.0.i.i, i64 %.sroa.15.0.i.i
  %i.dr = add i64 %.sroa.1064.0.i.i, %.sroa.15.0.i.i
  br i1 %.not.i.not.i.not.i.i, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit40.thread141.i.i, label %.loopexit.i.i

_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit40.thread141.i.i: ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator3nthCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ac
  %.sroa.2.0.i38.pn150.i.i = phi ptr [ %i.dq, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator3nthCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sroa.060.0.i.i, %bb.ac ] ; 3 uses
  %.sroa.0.0.i39.pn149.i.i = phi i64 [ %i.dr, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator3nthCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sroa.1064.0.i.i, %bb.ac ] ; 2 uses
  %.sroa.1064.1147.i.i = add i64 %.sroa.0.0.i39.pn149.i.i, 1 ; 2 uses
  %.sroa.060.1148.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i38.pn150.i.i, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dj, align 8, !alias.scope !111940, !noalias !111943, !nonnull !56, !noundef !56 ; 5 uses
  %i.dt = load i64, ptr %i.dk, align 8, !alias.scope !111940, !noalias !111943, !noundef !56 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i38.pn150.i.i, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !111940, !noalias !111943, !nonnull !56, !noundef !56 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i38.pn150.i.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !111940, !noalias !111943, !noundef !56
  call void @llvm.experimental.noalias.scope.decl(metadata !111951)
  call void @llvm.experimental.noalias.scope.decl(metadata !111952)
  %.not.i43.i.i = icmp eq i64 %i.dt, %i.dx
  br i1 %.not.i43.i.i, label %.preheader.i.i.i, label %.invoke.i.i

.preheader.i.i.i:                                 ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit40.thread141.i.i
  %.not30.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not30.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %xtraiter = and i64 %i.dt, 3                    ; 3 uses
  %i.dy = icmp ult i64 %i.dt, 4
  br i1 %i.dy, label %.lr.ph.i45.i.i.epil.preheader, label %.lr.ph.i45.i.i.preheader.new

.lr.ph.i45.i.i.preheader.new:                     ; preds = %.lr.ph.i45.i.i.preheader
  %unroll_iter = and i64 %i.dt, -4
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i, %.lr.ph.i45.i.i.preheader.new
  %.sroa.01.027.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i45.i.i.preheader.new ], [ %i.fb, %.lr.ph.i45.i.i ]
  %.sroa.03.026.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i45.i.i.preheader.new ], [ %i.fd, %.lr.ph.i45.i.i ]
  %.sroa.05.025.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i45.i.i.preheader.new ], [ %i.fe, %.lr.ph.i45.i.i ]
  %.sroa.8.024.i.i.i = phi i64 [ 0, %.lr.ph.i45.i.i.preheader.new ], [ %i.ex, %.lr.ph.i45.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i45.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i45.i.i ]
  %i.dz = or disjoint i64 %.sroa.8.024.i.i.i, 1   ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.8.024.i.i.i
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.sroa.8.024.i.i.i
  %i.ec = load double, ptr %i.ea, align 8, !alias.scope !111951, !noalias !111950, !noundef !56 ; 3 uses
  %i.ed = call noundef double @llvm.fma.f64(double %i.ec, double %i.ec, double %.sroa.01.027.i.i.i)
  %i.ee = load double, ptr %i.eb, align 8, !alias.scope !111952, !noalias !111950, !noundef !56 ; 3 uses
  %i.ef = call noundef double @llvm.fma.f64(double %i.ee, double %i.ee, double %.sroa.03.026.i.i.i)
  %i.eg = call noundef double @llvm.fma.f64(double %i.ec, double %i.ee, double %.sroa.05.025.i.i.i)
  %i.eh = or disjoint i64 %.sroa.8.024.i.i.i, 2   ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dz
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dz
  %i.ek = load double, ptr %i.ei, align 8, !alias.scope !111951, !noalias !111950, !noundef !56 ; 3 uses
  %i.el = call noundef double @llvm.fma.f64(double %i.ek, double %i.ek, double %i.ed)
  %i.em = load double, ptr %i.ej, align 8, !alias.scope !111952, !noalias !111950, !noundef !56 ; 3 uses
  %i.en = call noundef double @llvm.fma.f64(double %i.em, double %i.em, double %i.ef)
  %i.eo = call noundef double @llvm.fma.f64(double %i.ek, double %i.em, double %i.eg)
  %i.ep = or disjoint i64 %.sroa.8.024.i.i.i, 3   ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.eh
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.eh
  %i.es = load double, ptr %i.eq, align 8, !alias.scope !111951, !noalias !111950, !noundef !56 ; 3 uses
  %i.et = call noundef double @llvm.fma.f64(double %i.es, double %i.es, double %i.el)
  %i.eu = load double, ptr %i.er, align 8, !alias.scope !111952, !noalias !111950, !noundef !56 ; 3 uses
  %i.ev = call noundef double @llvm.fma.f64(double %i.eu, double %i.eu, double %i.en)
  %i.ew = call noundef double @llvm.fma.f64(double %i.es, double %i.eu, double %i.eo)
  %i.ex = add nuw nsw i64 %.sroa.8.024.i.i.i, 4   ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ep
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ep
  %i.fa = load double, ptr %i.ey, align 8, !alias.scope !111951, !noalias !111950, !noundef !56 ; 3 uses
  %i.fb = call noundef double @llvm.fma.f64(double %i.fa, double %i.fa, double %i.et) ; 3 uses
  %i.fc = load double, ptr %i.ez, align 8, !alias.scope !111952, !noalias !111950, !noundef !56 ; 3 uses
  %i.fd = call noundef double @llvm.fma.f64(double %i.fc, double %i.fc, double %i.ev) ; 3 uses
  %i.fe = call noundef double @llvm.fma.f64(double %i.fa, double %i.fc, double %i.ew) ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.unr-lcssa, label %.lr.ph.i45.i.i

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.lr.ph.i45.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i45.i.i.epil.preheader

.lr.ph.i45.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.unr-lcssa, %.lr.ph.i45.i.i.preheader
  %.sroa.01.027.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i45.i.i.preheader ], [ %i.fb, %._crit_edge.i.i.i.unr-lcssa ]
  %.sroa.03.026.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i45.i.i.preheader ], [ %i.fd, %._crit_edge.i.i.i.unr-lcssa ]
  %.sroa.05.025.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i45.i.i.preheader ], [ %i.fe, %._crit_edge.i.i.i.unr-lcssa ]
  %.sroa.8.024.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %i.ex, %._crit_edge.i.i.i.unr-lcssa ]
  %lcmp.mod267 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod267)
  br label %.lr.ph.i45.i.i.epil

.lr.ph.i45.i.i.epil:                              ; preds = %.lr.ph.i45.i.i.epil, %.lr.ph.i45.i.i.epil.preheader
  %.sroa.01.027.i.i.i.epil = phi double [ %i.fj, %.lr.ph.i45.i.i.epil ], [ %.sroa.01.027.i.i.i.epil.init, %.lr.ph.i45.i.i.epil.preheader ]
  %.sroa.03.026.i.i.i.epil = phi double [ %i.fl, %.lr.ph.i45.i.i.epil ], [ %.sroa.03.026.i.i.i.epil.init, %.lr.ph.i45.i.i.epil.preheader ]
  %.sroa.05.025.i.i.i.epil = phi double [ %i.fm, %.lr.ph.i45.i.i.epil ], [ %.sroa.05.025.i.i.i.epil.init, %.lr.ph.i45.i.i.epil.preheader ]
  %.sroa.8.024.i.i.i.epil = phi i64 [ %i.ff, %.lr.ph.i45.i.i.epil ], [ %.sroa.8.024.i.i.i.epil.init, %.lr.ph.i45.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i45.i.i.epil ], [ 0, %.lr.ph.i45.i.i.epil.preheader ]
  %i.ff = add nuw nsw i64 %.sroa.8.024.i.i.i.epil, 1
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.8.024.i.i.i.epil
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.sroa.8.024.i.i.i.epil
  %i.fi = load double, ptr %i.fg, align 8, !alias.scope !111951, !noalias !111950, !noundef !56 ; 3 uses
  %i.fj = call noundef double @llvm.fma.f64(double %i.fi, double %i.fi, double %.sroa.01.027.i.i.i.epil) ; 2 uses
  %i.fk = load double, ptr %i.fh, align 8, !alias.scope !111952, !noalias !111950, !noundef !56 ; 3 uses
  %i.fl = call noundef double @llvm.fma.f64(double %i.fk, double %i.fk, double %.sroa.03.026.i.i.i.epil) ; 2 uses
  %i.fm = call noundef double @llvm.fma.f64(double %i.fi, double %i.fk, double %.sroa.05.025.i.i.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph.i45.i.i.epil, !llvm.loop !111898

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i45.i.i.epil, %._crit_edge.i.i.i.unr-lcssa
  %.lcssa239 = phi double [ %i.fb, %._crit_edge.i.i.i.unr-lcssa ], [ %i.fj, %.lr.ph.i45.i.i.epil ]
  %.lcssa238 = phi double [ %i.fd, %._crit_edge.i.i.i.unr-lcssa ], [ %i.fl, %.lr.ph.i45.i.i.epil ]
  %.lcssa = phi double [ %i.fe, %._crit_edge.i.i.i.unr-lcssa ], [ %i.fm, %.lr.ph.i45.i.i.epil ]
  %i.fn = insertelement <2 x double> poison, double %.lcssa239, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %.lcssa238, i64 1
  %i.fp = fadd <2 x double> %i.fo, splat (double 1.000000e+00)
  %i.fq = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fp) ; 2 uses
  %shift = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.fq, %shift
  %i.fr = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fs = fsub double %i.fr, %.lcssa              ; 2 uses
  %i.ft = fcmp olt double %i.fs, 1.000000e+00
  br i1 %i.ft, label %bb.ad, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.preheader.i.i.i
  %i.fu = phi double [ %i.fs, %._crit_edge.i.i.i ], [ 1.000000e+00, %.preheader.i.i.i ]
  %i.fv = call noundef double @acosh(double noundef %i.fu) #59, !noalias !111953
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  %.sroa.3.0.i.ph.i.i = phi double [ 0.000000e+00, %._crit_edge.i.i.i ], [ %i.fv, %._crit_edge.thread.i.i.i ] ; 2 uses
  br i1 %i.bh, label %.split.i.i, label %bb.ae

.split.i.i:                                       ; preds = %bb.ad
  %i.fw = fsub double %.sroa.3.0.i.ph.i.i, %i.au
  %i.fx = fmul double %i.dc, %i.fw
  %i.fy = call double @llvm.exp.f64(double %i.fx)
  %i.fz = fadd double %i.fy, 1.000000e+00
  %i.ga = mul i128 %.ph, 47026247687942121848144207491837523525
  %i.gb = add i128 %i.ga, %i.de                   ; 7 uses
  %i.gc = lshr i128 %i.gb, 122
  %i.gd = trunc nuw nsw i128 %i.gc to i64
  %i.ge = lshr i128 %i.gb, 64
  %i.gf = xor i128 %i.ge, %i.gb
  %i.gg = trunc i128 %i.gf to i64                 ; 2 uses
  %i.gh = call noundef i64 @llvm.fshr.i64(i64 %i.gg, i64 %i.gg, i64 %i.gd)
  %i.gi = lshr i64 %i.gh, 12
  %i.gj = or disjoint i64 %i.gi, 4607182418800017408
  %i.gk = bitcast i64 %i.gj to double
  %i.gl = fadd nnan double %i.gk, -1.000000e+00
  %i.gm = fmul double %i.gl, %i.fz
  %i.gn = fcmp olt double %i.gm, 1.000000e+00
  br i1 %i.gn, label %.loopexit, label %.outer.backedge

.outer.backedge:                                  ; preds = %.split.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.promoted99.i.i.ph.be = phi i128 [ %.promoted98.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.gb, %.split.i.i ]
  %.ph.be = phi i128 [ %i.gp, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.gb, %.split.i.i ]
  br label %.outer

bb.ae:                                            ; preds = %bb.ad
  %i.go = fcmp olt double %.sroa.3.0.i.ph.i.i, %i.au
  br i1 %i.go, label %.loopexit, label %bb.ab

.loopexit:                                        ; preds = %bb.ae, %.split.i.i
  %.promoted98.i.i = phi i128 [ %i.gb, %.split.i.i ], [ %.promoted99.i.i.ph, %bb.ae ]
  %i.gp = phi i128 [ %i.gb, %.split.i.i ], [ %.ph, %bb.ae ]
  %i.gq = trunc i64 %.sroa.0.0.i39.pn149.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !111950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !111954
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.dl, i32 noundef %i.gq, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc46.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !111950

.noexc46.i.i:                                     ; preds = %.loopexit
  %i.gr = load i64, ptr %i.h, align 8, !range !107, !noalias !111954, !noundef !56 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.gr, 2
  br i1 %cond.i.i.i.i, label %bb.ah, label %bb.af, !prof !68

bb.af:                                            ; preds = %.noexc46.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !111955)
  %.not.i.i.i.i.i = icmp eq i64 %i.gr, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ag, !prof !66

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !111956
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !111955, !noalias !111954
  store i64 %i.gr, ptr %i.e, align 8, !noalias !111956
  br label %.invoke.sink.split.i.i

bb.ah:                                            ; preds = %.noexc46.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !111954
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !111954, !noundef !56
  store i64 %i.gv, ptr %i.g, align 8, !noalias !111954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !111954
  store ptr %i.g, ptr %i.f, align 8, !noalias !111954
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !111954
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1721, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @653) #60
          to label %.noexc48.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !111950

.noexc48.i.i:                                     ; preds = %bb.ah
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !111954
  br label %.outer.backedge

bb.ai:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, %.noexc37.i
  %.sroa.022.095.i.i = phi i64 [ 0, %.noexc37.i ], [ %i.gw, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !111945
  %i.gw = add nuw nsw i64 %.sroa.022.095.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !111957
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc49.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !111945

.noexc49.i.i:                                     ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !111958)
  %i.gx = load i64, ptr %i.d, align 8, !range !107, !alias.scope !111958, !noalias !111957, !noundef !56 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.gx, -1
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.aj, !prof !66

bb.aj:                                            ; preds = %.noexc49.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !111959
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !111958, !noalias !111957
  store i64 %i.gx, ptr %i.c, align 8, !noalias !111959
  br label %.invoke.sink.split.i.i

.invoke.sink.split.i.i:                           ; preds = %bb.aj, %bb.ag
  %.sink164.i.sroa.phi.i = phi ptr [ %.sink164.i.sroa.gep.i, %bb.ag ], [ %.sink164.i.sroa.gep55.i, %bb.aj ]
  %.sink164.i.i = phi ptr [ %i.e, %bb.ag ], [ %i.c, %bb.aj ]
  %.sink.i.i = phi i64 [ %i.gt, %bb.ag ], [ %i.gz, %bb.aj ]
  %.ph162.i.i = phi ptr [ @653, %bb.ag ], [ @4180, %bb.aj ]
  store i64 %.sink.i.i, ptr %.sink164.i.sroa.phi.i, align 8, !noalias !111945
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit40.thread141.i.i, %.invoke.sink.split.i.i
  %i.ha = phi ptr [ %.sink164.i.i, %.invoke.sink.split.i.i ], [ %i.a, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit40.thread141.i.i ]
  %i.hb = phi ptr [ @1548, %.invoke.sink.split.i.i ], [ @1556, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit40.thread141.i.i ]
  %i.hc = phi ptr [ %.ph162.i.i, %.invoke.sink.split.i.i ], [ @652, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit40.thread141.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.ha, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hc) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !111950

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc49.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !111957
  %exitcond.not.i.i = icmp eq i64 %i.gw, %i.bv
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.ai

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !111950
  unreachable

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedEB2w_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B3Y_B2w_EB44_.exit.i: ; preds = %.loopexit.i.i, %.preheader.i.i
  %.sroa.051.0.copyload52.i = load i64, ptr %i.j, align 8, !noalias !111960 ; 3 uses
  %.sroa.11.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.11.i.sroa.0.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx53.i, align 8, !noalias !111960 ; 2 uses
  %.sroa.11.i.sroa.5.0..sroa.11.0..sroa_idx53.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.11.i.sroa.5.0.copyload = load i64, ptr %.sroa.11.i.sroa.5.0..sroa.11.0..sroa_idx53.i.sroa_idx, align 8, !noalias !111960 ; 2 uses
  %.sroa.11.i.sroa.6.0..sroa.11.0..sroa_idx53.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.11.i.sroa.6.0.copyload = load i64, ptr %.sroa.11.i.sroa.6.0..sroa.11.0..sroa_idx53.i.sroa_idx, align 8, !noalias !111960 ; 2 uses
  %.sroa.11.i.sroa.7.0..sroa.11.0..sroa_idx53.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.11.i.sroa.7.0.copyload = load ptr, ptr %.sroa.11.i.sroa.7.0..sroa.11.0..sroa_idx53.i.sroa_idx, align 8, !noalias !111960 ; 2 uses
  %.sroa.11.i.sroa.8.0..sroa.11.0..sroa_idx53.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.11.i.sroa.8.0.copyload = load ptr, ptr %.sroa.11.i.sroa.8.0..sroa.11.0..sroa_idx53.i.sroa_idx, align 8, !noalias !111960 ; 2 uses
  %.sroa.11.i.sroa.9.0.copyload = load ptr, ptr %i.cx, align 8, !noalias !111960 ; 2 uses
  %.sroa.11.i.sroa.10.0..sroa.11.0..sroa_idx53.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.11.i.sroa.10.0.copyload = load i64, ptr %.sroa.11.i.sroa.10.0..sroa.11.0..sroa_idx53.i.sroa_idx, align 8, !noalias !111960 ; 2 uses
  %.sroa.11.i.sroa.11.0.copyload = load i32, ptr %i.cy, align 8, !noalias !111960 ; 2 uses
  %.sroa.11.i.sroa.12.0.copyload = load i32, ptr %i.cz, align 4, !noalias !111960 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !111945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !111945
  %i.he = icmp eq i64 %.sroa.051.0.copyload52.i, -1
  br i1 %i.he, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedEB2w_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B3Y_B2w_EB44_.exit.thread.i, label %bb.am

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedEB2w_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B3Y_B2w_EB44_.exit.thread.i: ; preds = %.lr.ph, %.lr.ph236, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedEB2w_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B3Y_B2w_EB44_.exit.i, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterINtNtCs87CvPiUlf0m_5alloc3vec3VecdEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB3I_10UndirectedEB4I_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B6a_B4I_Es_0EB6g_.exit.i.i, %bb.v, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !111943
  %i.hf = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !111943 ; 5 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.al, label %bb.an, !prof !88

bb.al:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedEB2w_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B3Y_B2w_EB44_.exit.thread.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc38.i unwind label %bb.au, !noalias !111943

.noexc38.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedEB2w_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B3Y_B2w_EB44_.exit.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !111943
  call void @llvm.experimental.noalias.scope.decl(metadata !111961)
  call void @llvm.experimental.noalias.scope.decl(metadata !111962)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.am
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.hi, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %bb.am ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.hi = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.hh, align 8, !alias.scope !111962, !noalias !111963 ; 2 uses
  %i.hj = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.hj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.hk = getelementptr i8, ptr %i.hh, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.hk, align 8, !alias.scope !111962, !noalias !111963, !nonnull !56, !noundef !56
  %i.hl = shl nuw i64 %.val8.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.hl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !111964
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.hm = icmp eq i64 %i.hi, %i.bv
  br i1 %i.hm, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val2.i.i = load i64, ptr %i.z, align 8, !alias.scope !111965 ; 2 uses
  %i.hn = icmp eq i64 %.val2.i.i, 0
  br i1 %i.hn, label %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_dEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_dEEECskcxRuJ53GpR_9rustworkx.exit.sink.split.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.7.sroa.0.0 = phi ptr [ null, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.11.i.sroa.0.0.copyload, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.7.sroa.7.0 = phi i64 [ 0, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.11.i.sroa.5.0.copyload, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.15.0 = phi i32 [ undef, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.11.i.sroa.12.0.copyload, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.1484.0 = phi i32 [ 3, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.11.i.sroa.11.0.copyload, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.14.0 = phi i64 [ undef, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.11.i.sroa.10.0.copyload, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.13.0 = phi ptr [ @518, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.11.i.sroa.9.0.copyload, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.12.0 = phi ptr [ %i.hf, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.11.i.sroa.8.0.copyload, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.1179.0 = phi ptr [ null, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.11.i.sroa.7.0.copyload, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.10.0 = phi i64 [ 1, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.11.i.sroa.6.0.copyload, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.0.0 = phi i64 [ -1, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.sroa.051.0.copyload52.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.val2.i48.sink.i = phi i64 [ %.val2.i48.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i ], [ %.val2.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.ho = mul nuw i64 %.val2.i48.sink.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.ho, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !111943
  br label %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph.exit

bb.an:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph23hyperbolic_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedEB2w_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph23hyperbolic_random_graph0B3Y_B2w_EB44_.exit.thread.i
  store ptr @2722, ptr %i.hf, align 8, !noalias !111943
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 31, ptr %i.hp, align 8, !noalias !111943
  call void @llvm.experimental.noalias.scope.decl(metadata !111966)
  call void @llvm.experimental.noalias.scope.decl(metadata !111967)
  br i1 %i.bw, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_dEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i47.i, label %.lr.ph.i.i.i41.i

.lr.ph.i.i.i41.i:                                 ; preds = %bb.an, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i46.i
  %.sroa.0.012.i.i.i42.i = phi i64 [ %i.hr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i46.i ], [ 0, %bb.an ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.sroa.0.012.i.i.i42.i ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph38___pyfunction_directed_gnp_random_graph:bb.a
  %i.dn = call noundef i32 @llvm.fshr.i32(i32 %i.dk, i32 %i.dk, i32 range(i32 0, 32) %i.dm)
  %i.do = mul i64 %i.dg, 6364136223846793005
  %i.dp = add i64 %i.do, -6812164046247290893     ; 4 uses
  %i.dq = lshr i64 %i.dp, 45
  %i.dr = lshr i64 %i.dp, 27
  %i.ds = xor i64 %i.dq, %i.dr
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = lshr i64 %i.dp, 59
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = call noundef i32 @llvm.fshr.i32(i32 %i.dt, i32 %i.dt, i32 range(i32 0, 32) %i.dv)
  %i.dx = mul i64 %i.dp, 6364136223846793005
  %i.dy = add i64 %i.dx, -6812164046247290893     ; 4 uses
  %i.dz = lshr i64 %i.dy, 45
  %i.ea = lshr i64 %i.dy, 27
  %i.eb = xor i64 %i.dz, %i.ea
  %i.ec = trunc i64 %i.eb to i32                  ; 2 uses
  %i.ed = lshr i64 %i.dy, 59
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = call noundef i32 @llvm.fshr.i32(i32 %i.ec, i32 %i.ec, i32 range(i32 0, 32) %i.ee)
  %i.eg = mul i64 %i.dy, 6364136223846793005
  %i.eh = add i64 %i.eg, -6812164046247290893     ; 3 uses
  %i.ei = lshr i64 %i.eh, 45
  %i.ej = lshr i64 %i.eh, 27
  %i.ek = xor i64 %i.ei, %i.ej
  %i.el = trunc i64 %i.ek to i32                  ; 2 uses
  %i.em = lshr i64 %i.eh, 59
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = call noundef i32 @llvm.fshr.i32(i32 %i.el, i32 %i.el, i32 range(i32 0, 32) %i.en)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !112169
  store i32 %i.cd, ptr %i.p, align 4, !noalias !112169
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.cm, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !112169
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.cv, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !112169
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.de, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !112169
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %i.dn, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !112169
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  store i32 %i.dw, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !112169
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.ef, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !112169
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 %i.eo, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !112169
  call void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.p), !noalias !112168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !112169
  br label %bb.p

bb.n:                                             ; preds = %.thread227, %bb.l
  %.sink.i.sroa.gep.i220248 = phi ptr [ %.sink.i.sroa.gep.i213, %.thread227 ], [ %.sink.i.sroa.gep.i, %bb.l ]
  %.sink.i.sroa.gep85.i221246 = phi ptr [ %.sink.i.sroa.gep85.i214, %.thread227 ], [ %.sink.i.sroa.gep85.i, %bb.l ]
  %.sink.i.sroa.gep86.i222244 = phi ptr [ %.sink.i.sroa.gep86.i215, %.thread227 ], [ %.sink.i.sroa.gep86.i, %bb.l ]
  %.sink191.i.sroa.gep.i223242 = phi ptr [ %.sink191.i.sroa.gep.i216, %.thread227 ], [ %.sink191.i.sroa.gep.i, %bb.l ]
  %.sink191.i.sroa.gep87.i224240 = phi ptr [ %.sink191.i.sroa.gep87.i217, %.thread227 ], [ %.sink191.i.sroa.gep87.i, %bb.l ]
  %.sink191.i.sroa.gep88.i225238 = phi ptr [ %.sink191.i.sroa.gep88.i218, %.thread227 ], [ %.sink191.i.sroa.gep88.i, %bb.l ]
  %.sink191.i.sroa.gep89.i226236 = phi ptr [ %.sink191.i.sroa.gep89.i219, %.thread227 ], [ %.sink191.i.sroa.gep89.i, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !112168
  call fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.s), !noalias !112168
  call void @llvm.experimental.noalias.scope.decl(metadata !112170)
  call void @llvm.experimental.noalias.scope.decl(metadata !112171)
  %i.ep = load i32, ptr %i.s, align 16, !range !65, !alias.scope !112171, !noalias !112168, !noundef !56
  %i.eq = trunc nuw i32 %i.ep to i1
  br i1 %i.eq, label %bb.o, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !60

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !112172
  %i.er = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.es = load i32, ptr %i.er, align 4, !range !159, !alias.scope !112171, !noalias !112168, !noundef !56
  store i32 %i.es, ptr %i.q, align 4, !noalias !112172
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1549, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @634) #60, !noalias !112173
  unreachable

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.n
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.eu = load i128, ptr %i.et, align 16, !alias.scope !112171, !noalias !112168, !noundef !56
  %i.ev = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ew = load i128, ptr %i.ev, align 16, !alias.scope !112171, !noalias !112168, !noundef !56
  store i128 %i.eu, ptr %i.t, align 16, !alias.scope !112170, !noalias !112168
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i128 %i.ew, ptr %i.ex, align 16, !alias.scope !112170, !noalias !112168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !112168
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.m
  %.sink.i.sroa.gep.i220247 = phi ptr [ %.sink.i.sroa.gep.i220248, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink.i.sroa.gep.i, %bb.m ]
  %.sink.i.sroa.gep85.i221245 = phi ptr [ %.sink.i.sroa.gep85.i221246, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink.i.sroa.gep85.i, %bb.m ]
  %.sink.i.sroa.gep86.i222243 = phi ptr [ %.sink.i.sroa.gep86.i222244, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink.i.sroa.gep86.i, %bb.m ]
  %.sink191.i.sroa.gep.i223241 = phi ptr [ %.sink191.i.sroa.gep.i223242, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink191.i.sroa.gep.i, %bb.m ]
  %.sink191.i.sroa.gep87.i224239 = phi ptr [ %.sink191.i.sroa.gep87.i224240, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink191.i.sroa.gep87.i, %bb.m ]
  %.sink191.i.sroa.gep88.i225237 = phi ptr [ %.sink191.i.sroa.gep88.i225238, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink191.i.sroa.gep88.i, %bb.m ]
  %.sink191.i.sroa.gep89.i226235 = phi ptr [ %.sink191.i.sroa.gep89.i226236, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink191.i.sroa.gep89.i, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !112168
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_E13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.r, i64 noundef %i.aw, i64 noundef %i.aw), !noalias !112168
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false), !alias.scope !112174, !noalias !112168
  store i32 -1, ptr %i.ez, align 8, !alias.scope !112174, !noalias !112168
  %i.fa = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  store i32 -1, ptr %i.fa, align 4, !alias.scope !112174, !noalias !112168
  br label %bb.ap

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %._crit_edge110.thread.i.i, %bb.al, %bb.ap, %.invoke.i.i, %.invoke187.i.i
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.r)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.q, !noalias !112168

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fc) #63
          to label %.body.i unwind label %bb.r, !noalias !112168

bb.r:                                             ; preds = %bb.q
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !112175
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fe = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fe)
          to label %common.resume.i unwind label %bb.ar, !noalias !112166

bb.s:                                             ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ff = fcmp oge double %i.bf, 0.000000e+00
  %i.fg = fcmp ole double %i.bf, 1.000000e+00
  %spec.select.i.i.i = and i1 %i.ff, %i.fg
  br i1 %spec.select.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fh = fcmp ogt double %i.bf, 0.000000e+00
  br i1 %i.fh, label %bb.x, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_gnp_random_graph0B3z_B2p_EB3F_.exit.i

bb.u:                                             ; preds = %bb.y, %bb.s
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.r)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_EECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.v, !noalias !112168

bb.v:                                             ; preds = %bb.u
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fj) #63
          to label %common.resume.i unwind label %bb.w, !noalias !112168

bb.w:                                             ; preds = %bb.v
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !112176
  unreachable

common.resume.i:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, %bb.v, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp327, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.fi, %bb.v ], [ %.pn55.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.u
  %i.fl = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fl), !noalias !112168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !112168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !112168
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_gnp_random_graph0B3z_B2p_EB3F_.exit.thread.i

bb.x:                                             ; preds = %bb.t
  %i.fm = fadd double %i.bf, -1.000000e+00
  %i.fn = call double @llvm.fabs.f64(double %i.fm)
  %i.fo = fcmp olt double %i.fn, f0x3CB0000000000000
  br i1 %i.fo, label %.preheader.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = icmp slt i64 %i.aw, 0
  br i1 %i.fp, label %bb.u, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %bb.y
  %i.fq = fsub double 1.000000e+00, %i.bf
  %i.fr = call double @llvm.log.f64(double %i.fq) ; 2 uses
  %.promoted.i.i = load i128, ptr %i.t, align 16, !noalias !112168
  %i.fs = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ft = load i128, ptr %i.fs, align 16, !noalias !112168, !noundef !56 ; 2 uses
  br label %bb.z

.preheader77.i.i:                                 ; preds = %._crit_edge.i.i
  %i.fu = icmp sgt i64 %i.aw, 1
  br i1 %i.fu, label %.lr.ph121.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_gnp_random_graph0B3z_B2p_EB3F_.exit.i

bb.z:                                             ; preds = %bb.ae, %.lr.ph104.i.i
  %.sroa.012.0102.i.i = phi i64 [ 0, %.lr.ph104.i.i ], [ %spec.select48.i.i, %bb.ae ] ; 3 uses
  %.sroa.022.0101.i.i = phi i64 [ -1, %.lr.ph104.i.i ], [ %spec.select.i.i, %bb.ae ]
  %i.fv = phi i128 [ %.promoted.i.i, %.lr.ph104.i.i ], [ %i.fx, %bb.ae ]
  %i.fw = mul i128 %i.fv, 47026247687942121848144207491837523525
  %i.fx = add i128 %i.fw, %i.ft                   ; 5 uses
  %i.fy = lshr i128 %i.fx, 122
  %i.fz = trunc nuw nsw i128 %i.fy to i64
  %i.ga = lshr i128 %i.fx, 64
  %i.gb = xor i128 %i.ga, %i.fx
  %i.gc = trunc i128 %i.gb to i64                 ; 2 uses
  %i.gd = call noundef i64 @llvm.fshr.i64(i64 %i.gc, i64 %i.gc, i64 %i.fz)
  %i.ge = lshr i64 %i.gd, 12
  %i.gf = or disjoint i64 %i.ge, 4607182418800017408
  %i.gg = bitcast i64 %i.gf to double
  %i.gh = fadd nnan double %i.gg, -1.000000e+00
  %i.gi = fsub double 1.000000e+00, %i.gh
  %i.gj = call double @llvm.log.f64(double %i.gi)
  %i.gk = add i64 %.sroa.022.0101.i.i, 1
  %i.gl = fdiv double %i.gj, %i.fr
  %i.gm = call i64 @llvm.fptosi.sat.i64.f64(double %i.gl)
  %i.gn = add i64 %i.gk, %i.gm                    ; 3 uses
  %.not125.i.i = icmp slt i64 %i.gn, %.sroa.012.0102.i.i
  br i1 %.not125.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph121.i.i:                                    ; preds = %.preheader77.i.i, %bb.aa
  %.sroa.028.0120.i.i = phi i64 [ %.sroa.028.1.lcssa171.i.i, %bb.aa ], [ 1, %.preheader77.i.i ] ; 3 uses
  %.sroa.035.0119.i.i = phi i64 [ %.sroa.035.1.lcssa169.i.i, %bb.aa ], [ -1, %.preheader77.i.i ]
  %i.go = phi i128 [ %i.gq, %bb.aa ], [ %i.fx, %.preheader77.i.i ]
  %i.gp = mul i128 %i.go, 47026247687942121848144207491837523525
  %i.gq = add i128 %i.gp, %i.ft                   ; 4 uses
  %i.gr = lshr i128 %i.gq, 122
  %i.gs = trunc nuw nsw i128 %i.gr to i64
  %i.gt = lshr i128 %i.gq, 64
  %i.gu = xor i128 %i.gt, %i.gq
  %i.gv = trunc i128 %i.gu to i64                 ; 2 uses
  %i.gw = call noundef i64 @llvm.fshr.i64(i64 %i.gv, i64 %i.gv, i64 %i.gs)
  %i.gx = lshr i64 %i.gw, 12
  %i.gy = or disjoint i64 %i.gx, 4607182418800017408
  %i.gz = bitcast i64 %i.gy to double
  %i.ha = fadd nnan double %i.gz, -1.000000e+00
  %i.hb = fsub double 1.000000e+00, %i.ha
  %i.hc = call double @llvm.log.f64(double %i.hb)
  %i.hd = add i64 %.sroa.035.0119.i.i, 1
  %i.he = fdiv double %i.hc, %i.fr
  %i.hf = call i64 @llvm.fptosi.sat.i64.f64(double %i.he)
  %i.hg = add i64 %i.hd, %i.hf                    ; 3 uses
  %.not126.i.i = icmp slt i64 %i.hg, %.sroa.028.0120.i.i
  br i1 %.not126.i.i, label %._crit_edge110.thread.i.i, label %.lr.ph109.i.i

._crit_edge110.i.i:                               ; preds = %.lr.ph109.i.i
  br i1 %i.hk, label %._crit_edge110.thread.i.i, label %bb.aa

.lr.ph109.i.i:                                    ; preds = %.lr.ph121.i.i, %.lr.ph109.i.i
  %.sroa.028.1107.i.i = phi i64 [ %i.hi, %.lr.ph109.i.i ], [ %.sroa.028.0120.i.i, %.lr.ph121.i.i ] ; 3 uses
  %.sroa.035.1106.i.i = phi i64 [ %i.hh, %.lr.ph109.i.i ], [ %i.hg, %.lr.ph121.i.i ]
  %i.hh = sub i64 %.sroa.035.1106.i.i, %.sroa.028.1107.i.i ; 4 uses
  %i.hi = add nsw i64 %.sroa.028.1107.i.i, 1      ; 4 uses
  %i.hj = icmp sgt i64 %i.hh, %.sroa.028.1107.i.i
  %i.hk = icmp slt i64 %i.hi, %i.aw               ; 2 uses
  %or.cond2.i.i = and i1 %i.hk, %i.hj
  br i1 %or.cond2.i.i, label %.lr.ph109.i.i, label %._crit_edge110.i.i

bb.aa:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, %._crit_edge110.i.i
  %.sroa.028.1.lcssa171.i.i = phi i64 [ %.sroa.028.1.lcssa170.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.hi, %._crit_edge110.i.i ] ; 2 uses
  %.sroa.035.1.lcssa169.i.i = phi i64 [ %.sroa.035.1.lcssa168.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.hh, %._crit_edge110.i.i ]
  %i.hl = icmp slt i64 %.sroa.028.1.lcssa171.i.i, %i.aw
  br i1 %i.hl, label %.lr.ph121.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_gnp_random_graph0B3z_B2p_EB3F_.exit.i

._crit_edge110.thread.i.i:                        ; preds = %._crit_edge110.i.i, %.lr.ph121.i.i
  %.sroa.028.1.lcssa170.i.i = phi i64 [ %i.hi, %._crit_edge110.i.i ], [ %.sroa.028.0120.i.i, %.lr.ph121.i.i ] ; 2 uses
  %.sroa.035.1.lcssa168.i.i = phi i64 [ %i.hh, %._crit_edge110.i.i ], [ %i.hg, %.lr.ph121.i.i ] ; 2 uses
  %i.hm = trunc i64 %.sroa.028.1.lcssa170.i.i to i32
  %i.hn = trunc i64 %.sroa.035.1.lcssa168.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !112177
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.r, i32 noundef %i.hm, i32 noundef %i.hn, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc49.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112168

.noexc49.i.i:                                     ; preds = %._crit_edge110.thread.i.i
  %i.ho = load i64, ptr %i.o, align 8, !range !107, !noalias !112177, !noundef !56 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.ho, 2
  br i1 %cond.i.i.i.i, label %bb.ad, label %bb.ab, !prof !68

bb.ab:                                            ; preds = %.noexc49.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !112178)
  %.not.i.i.i.i.i = icmp eq i64 %i.ho, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ac, !prof !66

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !112179
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !112178, !noalias !112177
  store i64 %i.ho, ptr %i.l, align 8, !noalias !112179
  br label %.invoke.i.i

bb.ad:                                            ; preds = %.noexc49.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !112177
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !112177, !noundef !56
  store i64 %i.hs, ptr %i.n, align 8, !noalias !112177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !112177
  store ptr %i.n, ptr %i.m, align 8, !noalias !112177
  br label %.invoke187.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !112177
  br label %bb.aa

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.z
  %.sroa.022.1.lcssa.i.i = phi i64 [ %i.gn, %bb.z ], [ %i.hw, %.lr.ph.i.i ] ; 2 uses
  %.sroa.012.1.lcssa.i.i = phi i64 [ %.sroa.012.0102.i.i, %bb.z ], [ %i.hx, %.lr.ph.i.i ] ; 2 uses
  %i.ht = icmp eq i64 %.sroa.012.1.lcssa.i.i, %.sroa.022.1.lcssa.i.i ; 2 uses
  %spec.select.i.i = select i1 %i.ht, i64 0, i64 %.sroa.022.1.lcssa.i.i ; 2 uses
  %i.hu = zext i1 %i.ht to i64
  %spec.select48.i.i = add i64 %.sroa.012.1.lcssa.i.i, %i.hu ; 3 uses
  %i.hv = icmp slt i64 %spec.select48.i.i, %i.aw
  br i1 %i.hv, label %bb.af, label %.preheader77.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %.sroa.012.195.i.i = phi i64 [ %i.hx, %.lr.ph.i.i ], [ %.sroa.012.0102.i.i, %bb.z ] ; 3 uses
  %.sroa.022.194.i.i = phi i64 [ %i.hw, %.lr.ph.i.i ], [ %i.gn, %bb.z ]
  %i.hw = sub i64 %.sroa.022.194.i.i, %.sroa.012.195.i.i ; 3 uses
  %i.hx = add nsw i64 %.sroa.012.195.i.i, 1       ; 3 uses
  %i.hy = icmp sgt i64 %i.hw, %.sroa.012.195.i.i
  %i.hz = icmp slt i64 %i.hx, %i.aw
  %or.cond4.i.i = and i1 %i.hz, %i.hy
  br i1 %or.cond4.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.ae:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !112180
  br label %bb.z

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.ia = trunc i64 %spec.select48.i.i to i32
  %i.ib = trunc i64 %spec.select.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !112180
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.r, i32 noundef %i.ib, i32 noundef %i.ia, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc55.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112168

.noexc55.i.i:                                     ; preds = %bb.af
  %i.ic = load i64, ptr %i.k, align 8, !range !107, !noalias !112180, !noundef !56 ; 3 uses
  %cond.i.i52.i.i = icmp eq i64 %i.ic, 2
  br i1 %cond.i.i52.i.i, label %bb.ai, label %bb.ag, !prof !68

bb.ag:                                            ; preds = %.noexc55.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !112181)
  %.not.i.i.i53.i.i = icmp eq i64 %i.ic, -1
  br i1 %.not.i.i.i53.i.i, label %bb.ae, label %bb.ah, !prof !66

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !112182
  %i.id = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !112181, !noalias !112180
  store i64 %i.ic, ptr %i.h, align 8, !noalias !112182
  br label %.invoke.i.i

bb.ai:                                            ; preds = %.noexc55.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !112180
  %i.ig = load i64, ptr %i.if, align 8, !noalias !112180, !noundef !56
  store i64 %i.ig, ptr %i.j, align 8, !noalias !112180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !112180
  store ptr %i.j, ptr %i.i, align 8, !noalias !112180
  br label %.invoke187.i.i

.loopexit.i.i:                                    ; preds = %bb.ak
  %exitcond153.not.i.i = icmp eq i64 %i.ih, %i.aw
  br i1 %exitcond153.not.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_gnp_random_graph0B3z_B2p_EB3F_.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.x, %.loopexit.i.i
  %.sroa.039.0124.i.i = phi i64 [ %i.ih, %.loopexit.i.i ], [ 0, %bb.x ] ; 3 uses
  %i.ih = add nuw i64 %.sroa.039.0124.i.i, 1      ; 2 uses
  %i.ii = trunc i64 %.sroa.039.0124.i.i to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.preheader.i.i
  %.sroa.041.1123.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ij, %bb.ak ] ; 3 uses
  %i.ij = add nuw i64 %.sroa.041.1123.i.i, 1      ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.039.0124.i.i, %.sroa.041.1123.i.i
  br i1 %.not.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit65.i.i, %bb.aj
  %exitcond152.not.i.i = icmp eq i64 %i.ij, %i.aw
  br i1 %exitcond152.not.i.i, label %.loopexit.i.i, label %bb.aj

bb.al:                                            ; preds = %bb.aj
  %i.ik = trunc i64 %.sroa.041.1123.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !112183
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.r, i32 noundef %i.ii, i32 noundef %i.ik, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc62.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112168

.noexc62.i.i:                                     ; preds = %bb.al
  %i.il = load i64, ptr %i.g, align 8, !range !107, !noalias !112183, !noundef !56 ; 3 uses
  %cond.i.i59.i.i = icmp eq i64 %i.il, 2
  br i1 %cond.i.i59.i.i, label %bb.ao, label %bb.am, !prof !68

bb.am:                                            ; preds = %.noexc62.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !112184)
  %.not.i.i.i60.i.i = icmp eq i64 %i.il, -1
  br i1 %.not.i.i.i60.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit65.i.i, label %bb.an, !prof !66

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !112185
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !112184, !noalias !112183
  store i64 %i.il, ptr %i.d, align 8, !noalias !112185
  br label %.invoke.i.i

bb.ao:                                            ; preds = %.noexc62.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !112183
  %i.ip = load i64, ptr %i.io, align 8, !noalias !112183, !noundef !56
  store i64 %i.ip, ptr %i.f, align 8, !noalias !112183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !112183
  store ptr %i.f, ptr %i.e, align 8, !noalias !112183
  br label %.invoke187.i.i

.invoke187.i.i:                                   ; preds = %bb.ao, %bb.ai, %bb.ad
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i220247, %bb.ad ], [ %.sink.i.sroa.gep85.i221245, %bb.ai ], [ %.sink.i.sroa.gep86.i222243, %bb.ao ]
  %.sink.i.i = phi ptr [ %i.m, %bb.ad ], [ %i.i, %bb.ai ], [ %i.e, %bb.ao ]
  %i.iq = phi ptr [ @635, %bb.ad ], [ @636, %bb.ai ], [ @637, %bb.ao ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink.i.sroa.phi.i, align 8, !noalias !112168
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1721, ptr noundef nonnull %.sink.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iq) #60
          to label %.cont188.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112168

.cont188.i.i:                                     ; preds = %.invoke187.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit65.i.i: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !112183
  br label %bb.ak

bb.ap:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.p
  %.sroa.043.093.i.i = phi i64 [ 0, %bb.p ], [ %i.ir, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112168
  %i.ir = add nuw i64 %.sroa.043.093.i.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112186
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull @_Py_NoneStruct)
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph38___pyfunction_directed_sbm_random_graph:bb.a
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  %i.ew = call noundef i32 @llvm.fshr.i32(i32 %i.et, i32 %i.et, i32 range(i32 0, 32) %i.ev)
  %i.ex = mul i64 %i.ep, 6364136223846793005
  %i.ey = add i64 %i.ex, -6812164046247290893     ; 4 uses
  %i.ez = lshr i64 %i.ey, 45
  %i.fa = lshr i64 %i.ey, 27
  %i.fb = xor i64 %i.ez, %i.fa
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  %i.fd = lshr i64 %i.ey, 59
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = call noundef i32 @llvm.fshr.i32(i32 %i.fc, i32 %i.fc, i32 range(i32 0, 32) %i.fe)
  %i.fg = mul i64 %i.ey, 6364136223846793005
  %i.fh = add i64 %i.fg, -6812164046247290893     ; 4 uses
  %i.fi = lshr i64 %i.fh, 45
  %i.fj = lshr i64 %i.fh, 27
  %i.fk = xor i64 %i.fi, %i.fj
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = lshr i64 %i.fh, 59
  %i.fn = trunc nuw nsw i64 %i.fm to i32
  %i.fo = call noundef i32 @llvm.fshr.i32(i32 %i.fl, i32 %i.fl, i32 range(i32 0, 32) %i.fn)
  %i.fp = mul i64 %i.fh, 6364136223846793005
  %i.fq = add i64 %i.fp, -6812164046247290893     ; 3 uses
  %i.fr = lshr i64 %i.fq, 45
  %i.fs = lshr i64 %i.fq, 27
  %i.ft = xor i64 %i.fr, %i.fs
  %i.fu = trunc i64 %i.ft to i32                  ; 2 uses
  %i.fv = lshr i64 %i.fq, 59
  %i.fw = trunc nuw nsw i64 %i.fv to i32
  %i.fx = call noundef i32 @llvm.fshr.i32(i32 %i.fu, i32 %i.fu, i32 range(i32 0, 32) %i.fw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !112283
  store i32 %i.dm, ptr %i.h, align 4, !noalias !112283
  %.sroa.5.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.dv, ptr %.sroa.5.0..sroa_idx.i42.i.i, align 4, !noalias !112283
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.ee, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !112283
  %.sroa.7.0..sroa_idx.i43.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.en, ptr %.sroa.7.0..sroa_idx.i43.i.i, align 4, !noalias !112283
  %.sroa.8.0..sroa_idx.i44.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.ew, ptr %.sroa.8.0..sroa_idx.i44.i.i, align 4, !noalias !112283
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %i.ff, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !112283
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %i.fo, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !112283
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.fx, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !112283
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.split-lp105.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112281

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !112283
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !112281
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.k)
          to label %bb.af unwind label %.loopexit.split-lp105.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112281

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !112284)
  call void @llvm.experimental.noalias.scope.decl(metadata !112285)
  %i.fy = load i32, ptr %i.k, align 16, !range !65, !alias.scope !112285, !noalias !112281, !noundef !56
  %i.fz = trunc nuw i32 %i.fy to i1
  br i1 %i.fz, label %bb.ag, label %bb.ah, !prof !60

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !112286
  %i.ga = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !range !159, !alias.scope !112285, !noalias !112281, !noundef !56
  store i32 %i.gb, ptr %i.i, align 4, !noalias !112286
  br label %.invoke.i.i

bb.ah:                                            ; preds = %bb.af
  %i.gc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.gd = load i128, ptr %i.gc, align 16, !alias.scope !112285, !noalias !112281, !noundef !56
  %i.ge = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.gf = load i128, ptr %i.ge, align 16, !alias.scope !112285, !noalias !112281, !noundef !56
  store i128 %i.gd, ptr %i.l, align 16, !alias.scope !112284, !noalias !112281
  %i.gg = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i128 %i.gf, ptr %i.gg, align 16, !alias.scope !112284, !noalias !112281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !112281
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !112281
  store i64 0, ptr %i.j, align 8, !noalias !112281
  %i.gh = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gh, align 8, !noalias !112281
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %i.gi, align 8, !noalias !112281
  %i.gj = load i64, ptr %.sroa.491.0.copyload, align 8, !alias.scope !112274, !noalias !112273, !noundef !56
  br label %bb.aj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.av, %bb.au, %bb.at, %.invoke261.i.i
  %lpad.loopexit.split-lp376 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112287)
  %.val.i46.i.i = load i64, ptr %i.j, align 8, !alias.scope !112287, !noalias !112281 ; 2 uses
  %i.gk = icmp eq i64 %.val.i46.i.i, 0
  br i1 %i.gk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i.i = load ptr, ptr %i.gh, align 8, !alias.scope !112287, !noalias !112281, !nonnull !56, !noundef !56
  %i.gl = shl nuw i64 %.val.i46.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112288
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i

.preheader.i.i:                                   ; preds = %bb.aw
  %i.gm = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.gn = load i128, ptr %i.gm, align 16, !noalias !112281
  %.promoted150.i.i = load i128, ptr %i.l, align 16, !noalias !112281
  br label %bb.al

bb.aj:                                            ; preds = %bb.aw, %bb.ai
  %i.go = phi i64 [ 0, %bb.ai ], [ %i.gp, %bb.aw ] ; 3 uses
  %.sroa.05.0139.i.i = phi i64 [ 0, %bb.ai ], [ %.sroa.05.1.lcssa.i.i, %bb.aw ] ; 3 uses
  %.sroa.08.0138.i.i = phi i64 [ %i.gj, %bb.ai ], [ %i.jb, %bb.aw ] ; 2 uses
  %i.gp = add nuw i64 %i.go, 1                    ; 3 uses
  %i.gq = icmp eq i64 %.sroa.08.0138.i.i, 0
  br i1 %i.gq, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.aj
  %i.gr = add i64 %.sroa.05.0139.i.i, 1           ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %.sroa.592.0.copyload
  br i1 %i.gs, label %.lr.ph348, label %.lr.ph.i.i.preheader._crit_edge

.loopexit.i.i:                                    ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i.preheader, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i
  %exitcond206.not.i.i = icmp eq i64 %i.gy, %.lcssa346
  br i1 %exitcond206.not.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit.i.i
  %.sroa.054.0.copyload55.i = load i64, ptr %i.m, align 8, !noalias !112289 ; 2 uses
  %.sroa.8.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx57.i, align 8, !noalias !112289
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx57.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.gt = load <2 x i64>, ptr %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx57.i.sroa_idx, align 8, !noalias !112289
  %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx57.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.gu = load <2 x ptr>, ptr %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx57.i.sroa_idx, align 8, !noalias !112289
  %.sroa.8.i.sroa.9.0.copyload = load ptr, ptr %i.db, align 8, !noalias !112289
  %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx57.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.8.i.sroa.10.0.copyload = load i64, ptr %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx57.i.sroa_idx, align 8, !noalias !112289
  %i.gv = load <2 x i32>, ptr %i.dc, align 8, !noalias !112289
  call void @llvm.experimental.noalias.scope.decl(metadata !112290)
  %.val.i47.i.i = load i64, ptr %i.j, align 8, !alias.scope !112290, !noalias !112281 ; 2 uses
  %i.gw = icmp eq i64 %.val.i47.i.i, 0
  br i1 %i.gw, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B3z_B2p_EB3F_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i48.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i48.i.i: ; preds = %bb.ak
  %.val1.i49.i.i = load ptr, ptr %i.gh, align 8, !alias.scope !112290, !noalias !112281, !nonnull !56, !noundef !56
  %i.gx = shl nuw i64 %.val.i47.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i49.i.i, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112291
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B3z_B2p_EB3F_.exit.i

bb.al:                                            ; preds = %.loopexit.i.i, %.preheader.i.i
  %.sroa.021.0159.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.gy, %.loopexit.i.i ] ; 6 uses
  %.lcssa144151158.i.i = phi i128 [ %.promoted150.i.i, %.preheader.i.i ], [ %i.ha, %.loopexit.i.i ]
  %i.gy = add nuw i64 %.sroa.021.0159.i.i, 1      ; 2 uses
  %i.gz = trunc i64 %.sroa.021.0159.i.i to i32
  br label %bb.am

bb.am:                                            ; preds = %.backedge, %bb.al
  %i.ha = phi i128 [ %.lcssa144151158.i.i, %bb.al ], [ %i.hf, %.backedge ] ; 2 uses
  %.sroa.666.0.i.i = phi i64 [ 0, %bb.al ], [ %.us-phi.i.i, %.backedge ] ; 5 uses
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.lcssa346, i64 %.sroa.666.0.i.i)
  %exitcond.not.i.us.not.i.i = icmp ult i64 %.sroa.666.0.i.i, %.lcssa346 ; 2 uses
  br i1 %i.be, label %.split.us.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i.preheader

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i.preheader: ; preds = %bb.am
  br i1 %exitcond.not.i.us.not.i.i, label %.lr.ph351, label %.loopexit.i.i

.split.us.i.i:                                    ; preds = %bb.am
  br i1 %exitcond.not.i.us.not.i.i, label %.split141.us.i.i, label %.loopexit.i.i

.split141.us.i.i:                                 ; preds = %.split.us.i.i
  %i.hb = add nuw i64 %.sroa.666.0.i.i, 1
  br label %.split141.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i: ; preds = %.lr.ph351
  %exitcond.not.i.i.i = icmp eq i64 %i.hd, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph351

.lr.ph351:                                        ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i.preheader, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i
  %i.hc = phi i64 [ %i.hd, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i ], [ %.sroa.666.0.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i.preheader ] ; 3 uses
  %i.hd = add nuw i64 %i.hc, 1                    ; 3 uses
  %.not.i.i.i.i.not.i.i = icmp eq i64 %i.hc, %.sroa.021.0159.i.i
  br i1 %.not.i.i.i.i.not.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_EB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B4Q_B3G_Es_0E0B4W_.exit.i.i.i, label %.split141.i.i

.split141.i.i:                                    ; preds = %.lr.ph351, %.split141.us.i.i
  %.us-phi.i.i = phi i64 [ %i.hb, %.split141.us.i.i ], [ %i.hd, %.lr.ph351 ]
  %.us-phi142.i.i = phi i64 [ %.sroa.666.0.i.i, %.split141.us.i.i ], [ %i.hc, %.lr.ph351 ] ; 4 uses
  %i.he = mul i128 %i.ha, 47026247687942121848144207491837523525
  %i.hf = add i128 %i.he, %i.gn                   ; 4 uses
  %i.hg = lshr i128 %i.hf, 122
  %i.hh = trunc nuw nsw i128 %i.hg to i64
  %i.hi = lshr i128 %i.hf, 64
  %i.hj = xor i128 %i.hi, %i.hf
  %i.hk = trunc i128 %i.hj to i64                 ; 2 uses
  %i.hl = call noundef i64 @llvm.fshr.i64(i64 %i.hk, i64 %i.hk, i64 %i.hh)
  %i.hm = lshr i64 %i.hl, 12
  %i.hn = or disjoint i64 %i.hm, 4607182418800017408
  %i.ho = bitcast i64 %i.hn to double
  %i.hp = fadd nnan double %i.ho, -1.000000e+00
  %i.hq = load ptr, ptr %i.gh, align 8, !noalias !112281, !nonnull !56, !noundef !56 ; 2 uses
  %i.hr = load i64, ptr %i.gi, align 8, !noalias !112281, !noundef !56 ; 4 uses
  %i.hs = icmp ult i64 %.sroa.021.0159.i.i, %i.hr
  br i1 %i.hs, label %bb.an, label %.invoke261.i.i

bb.an:                                            ; preds = %.split141.i.i
  %i.ht = icmp ult i64 %.us-phi142.i.i, %i.hr
  br i1 %i.ht, label %bb.ao, label %.invoke261.i.i

.invoke261.i.i:                                   ; preds = %bb.an, %.split141.i.i, %.lr.ph.i.i.preheader._crit_edge
  %i.hu = phi i64 [ %umax.le.i.i, %.lr.ph.i.i.preheader._crit_edge ], [ %.sroa.021.0159.i.i, %.split141.i.i ], [ %.us-phi142.i.i, %bb.an ]
  %i.hv = phi i64 [ %.sroa.592.0.copyload, %.lr.ph.i.i.preheader._crit_edge ], [ %i.hr, %.split141.i.i ], [ %i.hr, %bb.an ]
  %i.hw = phi ptr [ @643, %.lr.ph.i.i.preheader._crit_edge ], [ @639, %.split141.i.i ], [ @640, %bb.an ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.hu, i64 noundef %i.hv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hw) #61
          to label %.cont262.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112281

.cont262.i.i:                                     ; preds = %.invoke261.i.i
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.sroa.021.0159.i.i
  %i.hy = load i64, ptr %i.hx, align 8, !noalias !112281, !noundef !56 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.us-phi142.i.i
  %i.ia = load i64, ptr %i.hz, align 8, !noalias !112281, !noundef !56 ; 2 uses
  %i.ib = icmp ult i64 %i.hy, %.sroa.592.0.copyload
  %i.ic = icmp ult i64 %i.ia, %.sroa.592.0.copyload
  %or.cond.i.i.i.i = and i1 %i.ib, %i.ic          ; 2 uses
  br i1 %or.cond.i.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.id = mul i64 %i.hy, %.sroa.870.24.copyload.i.i
  %i.ie = mul i64 %i.ia, %.sroa.11.24.copyload.i.i
  %i.if = add i64 %i.ie, %i.id
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.if, %bb.ap ], [ undef, %bb.ao ]
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %.sroa.3.0.i.i.i.i
  %spec.select.i.i = select i1 %or.cond.i.i.i.i, ptr %i.ig, ptr @641
  %i.ih = load double, ptr %spec.select.i.i, align 8, !noalias !112281, !noundef !56
  %i.ii = fcmp olt double %i.hp, %i.ih
  br i1 %i.ii, label %bb.ar, label %.backedge

bb.ar:                                            ; preds = %bb.aq
  %i.ij = trunc i64 %.us-phi142.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !112292
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.m, i32 noundef %i.gz, i32 noundef %i.ij, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc53.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112281

.noexc53.i.i:                                     ; preds = %bb.ar
  %i.ik = load i64, ptr %i.g, align 8, !range !107, !noalias !112292, !noundef !56 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.ik, 2
  br i1 %cond.i.i.i.i, label %bb.au, label %bb.as, !prof !68

bb.as:                                            ; preds = %.noexc53.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !112293)
  %.not.i.i.i.i.i = icmp eq i64 %i.ik, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.at, !prof !66

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !112294
  %i.il = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !112293, !noalias !112292
  store i64 %i.ik, ptr %i.d, align 8, !noalias !112294
  %i.in = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.im, ptr %i.in, align 8, !noalias !112294
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @642) #60
          to label %.noexc54.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112281

.noexc54.i.i:                                     ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %.noexc53.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !112292
  %i.ip = load i64, ptr %i.io, align 8, !noalias !112292, !noundef !56
  store i64 %i.ip, ptr %i.f, align 8, !noalias !112292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !112292
  store ptr %i.f, ptr %i.e, align 8, !noalias !112292
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !112292
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1721, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @642) #60
          to label %.noexc55.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112281

.noexc55.i.i:                                     ; preds = %bb.au
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !112292
  br label %.backedge

.backedge:                                        ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.aq
  br label %bb.am

.lr.ph.i.i:                                       ; preds = %.lr.ph348
  %i.iq = add i64 %i.iu, 1                        ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %.sroa.592.0.copyload
  br i1 %i.ir, label %.lr.ph348, label %.lr.ph.i.i.preheader._crit_edge

._crit_edge.i.i:                                  ; preds = %.lr.ph348, %bb.aj
  %.sroa.08.1.lcssa.i.i = phi i64 [ %.sroa.08.0138.i.i, %bb.aj ], [ %i.iw, %.lr.ph348 ]
  %.sroa.05.1.lcssa.i.i = phi i64 [ %.sroa.05.0139.i.i, %bb.aj ], [ %i.iu, %.lr.ph348 ] ; 2 uses
  %i.is = load i64, ptr %i.j, align 8, !range !59, !alias.scope !112295, !noalias !112281, !noundef !56
  %i.it = icmp eq i64 %i.go, %i.is
  br i1 %i.it, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsLUcHuY3yQf_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #62
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112281

.lr.ph348:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.iu = phi i64 [ %i.iq, %.lr.ph.i.i ], [ %i.gr, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.491.0.copyload, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !112274, !noalias !112273, !noundef !56 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i.preheader._crit_edge:                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.iy = add i64 %.sroa.05.0139.i.i, 1
  %umax.le.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, 1152921504606846976) %.sroa.592.0.copyload, i64 %i.iy)
  br label %.invoke261.i.i

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i.i
  %i.iz = load ptr, ptr %i.gh, align 8, !alias.scope !112295, !noalias !112281, !nonnull !56, !noundef !56
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.go
  store i64 %.sroa.05.1.lcssa.i.i, ptr %i.ja, align 8, !noalias !112281
  store i64 %i.gp, ptr %i.gi, align 8, !alias.scope !112295, !noalias !112281
  %i.jb = add i64 %.sroa.08.1.lcssa.i.i, -1
  %exitcond205.not.i.i = icmp eq i64 %i.gp, %.lcssa346
  br i1 %exitcond205.not.i.i, label %.preheader.i.i, label %bb.aj

bb.ax:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !112281
  unreachable

bb.ay:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, %.noexc.i
  %.sroa.028.0134.i.i = phi i64 [ 0, %.noexc.i ], [ %i.jd, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112281
  %i.jd = add nuw i64 %.sroa.028.0134.i.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112296
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc57.i.i unwind label %.loopexit.split-lp105.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112281

.noexc57.i.i:                                     ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !112297)
  %i.je = load i64, ptr %i.c, align 16, !range !107, !alias.scope !112297, !noalias !112296, !noundef !56
  %.not.i.i.i.i = icmp eq i64 %i.je, -1
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.az, !prof !66

bb.az:                                            ; preds = %.noexc57.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112298
  %i.jf = load <2 x i64>, ptr %i.c, align 16, !alias.scope !112297, !noalias !112296
  store <2 x i64> %i.jf, ptr %i.b, align 16, !noalias !112298
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.az, %bb.ag
  %i.jg = phi ptr [ %i.b, %bb.az ], [ %i.i, %bb.ag ]
  %i.jh = phi ptr [ @1548, %bb.az ], [ @1549, %bb.ag ]
  %i.ji = phi ptr [ @4180, %bb.az ], [ @638, %bb.ag ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.jg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ji) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp105.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112281

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc57.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !112296
  %exitcond.not.i.i = icmp eq i64 %i.jd, %.lcssa346
  br i1 %exitcond.not.i.i, label %bb.ac, label %bb.ay

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.loopexit.split-lp105.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp376, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %lpad.loopexit.split-lp376, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp387, %.loopexit.split-lp105.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(72) %i.m) #63
          to label %.body.i unwind label %bb.ax, !noalias !112281

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B3z_B2p_EB3F_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i48.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !112281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !112281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !112281
  %i.jj = icmp eq i64 %.sroa.054.0.copyload55.i, -1
  br i1 %i.jj, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B3z_B2p_EB3F_.exit.thread.i, label %bb.bb

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B3z_B2p_EB3F_.exit.thread.i: ; preds = %bb.aa, %.lr.ph, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B3z_B2p_EB3F_.exit.i, %bb.u, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.t
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !112273
  %i.jk = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112273 ; 5 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.ba, label %bb.be, !prof !88

bb.ba:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B3z_B2p_EB3F_.exit.thread.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc39.i unwind label %bb.s, !noalias !112273

.noexc39.i:                                       ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_EB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph25directed_sbm_random_graph0B3z_B2p_EB3F_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !112273
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph40___pyfunction_undirected_gnp_random_graph:bb.a
  %i.df = xor i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  %i.dh = lshr i64 %i.dc, 59
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = call noundef i32 @llvm.fshr.i32(i32 %i.dg, i32 %i.dg, i32 range(i32 0, 32) %i.di)
  %i.dk = mul i64 %i.dc, 6364136223846793005
  %i.dl = add i64 %i.dk, -6812164046247290893     ; 4 uses
  %i.dm = lshr i64 %i.dl, 45
  %i.dn = lshr i64 %i.dl, 27
  %i.do = xor i64 %i.dm, %i.dn
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = lshr i64 %i.dl, 59
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = call noundef i32 @llvm.fshr.i32(i32 %i.dp, i32 %i.dp, i32 range(i32 0, 32) %i.dr)
  %i.dt = mul i64 %i.dl, 6364136223846793005
  %i.du = add i64 %i.dt, -6812164046247290893     ; 4 uses
  %i.dv = lshr i64 %i.du, 45
  %i.dw = lshr i64 %i.du, 27
  %i.dx = xor i64 %i.dv, %i.dw
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  %i.dz = lshr i64 %i.du, 59
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = call noundef i32 @llvm.fshr.i32(i32 %i.dy, i32 %i.dy, i32 range(i32 0, 32) %i.ea)
  %i.ec = mul i64 %i.du, 6364136223846793005
  %i.ed = add i64 %i.ec, -6812164046247290893     ; 3 uses
  %i.ee = lshr i64 %i.ed, 45
  %i.ef = lshr i64 %i.ed, 27
  %i.eg = xor i64 %i.ee, %i.ef
  %i.eh = trunc i64 %i.eg to i32                  ; 2 uses
  %i.ei = lshr i64 %i.ed, 59
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = call noundef i32 @llvm.fshr.i32(i32 %i.eh, i32 %i.eh, i32 range(i32 0, 32) %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !112480
  store i32 %i.bz, ptr %i.l, align 4, !noalias !112480
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.ci, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !112480
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.cr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !112480
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %i.da, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !112480
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %i.dj, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !112480
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 %i.ds, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !112480
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %i.eb, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !112480
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %i.ek, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !112480
  call void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.l), !noalias !112479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !112480
  br label %bb.p

bb.n:                                             ; preds = %.thread201, %bb.l
  %.sink145.i.sroa.gep.i196216 = phi ptr [ %.sink145.i.sroa.gep.i191, %.thread201 ], [ %.sink145.i.sroa.gep.i, %bb.l ]
  %.sink145.i.sroa.gep80.i197214 = phi ptr [ %.sink145.i.sroa.gep80.i192, %.thread201 ], [ %.sink145.i.sroa.gep80.i, %bb.l ]
  %.sink144.i.sroa.gep.i198212 = phi ptr [ %.sink144.i.sroa.gep.i193, %.thread201 ], [ %.sink144.i.sroa.gep.i, %bb.l ]
  %.sink144.i.sroa.gep81.i199210 = phi ptr [ %.sink144.i.sroa.gep81.i194, %.thread201 ], [ %.sink144.i.sroa.gep81.i, %bb.l ]
  %.sink144.i.sroa.gep82.i200208 = phi ptr [ %.sink144.i.sroa.gep82.i195, %.thread201 ], [ %.sink144.i.sroa.gep82.i, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !112479
  call fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.o), !noalias !112479
  call void @llvm.experimental.noalias.scope.decl(metadata !112481)
  call void @llvm.experimental.noalias.scope.decl(metadata !112482)
  %i.el = load i32, ptr %i.o, align 16, !range !65, !alias.scope !112482, !noalias !112479, !noundef !56
  %i.em = trunc nuw i32 %i.el to i1
  br i1 %i.em, label %bb.o, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !60

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !112483
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !range !159, !alias.scope !112482, !noalias !112479, !noundef !56
  store i32 %i.eo, ptr %i.m, align 4, !noalias !112483
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1549, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @634) #60, !noalias !112484
  unreachable

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.n
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.eq = load i128, ptr %i.ep, align 16, !alias.scope !112482, !noalias !112479, !noundef !56
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.es = load i128, ptr %i.er, align 16, !alias.scope !112482, !noalias !112479, !noundef !56
  store i128 %i.eq, ptr %i.p, align 16, !alias.scope !112481, !noalias !112479
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i128 %i.es, ptr %i.et, align 16, !alias.scope !112481, !noalias !112479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !112479
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.m
  %.sink145.i.sroa.gep.i196215 = phi ptr [ %.sink145.i.sroa.gep.i196216, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink145.i.sroa.gep.i, %bb.m ]
  %.sink145.i.sroa.gep80.i197213 = phi ptr [ %.sink145.i.sroa.gep80.i197214, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink145.i.sroa.gep80.i, %bb.m ]
  %.sink144.i.sroa.gep.i198211 = phi ptr [ %.sink144.i.sroa.gep.i198212, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink144.i.sroa.gep.i, %bb.m ]
  %.sink144.i.sroa.gep81.i199209 = phi ptr [ %.sink144.i.sroa.gep81.i199210, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink144.i.sroa.gep81.i, %bb.m ]
  %.sink144.i.sroa.gep82.i200207 = phi ptr [ %.sink144.i.sroa.gep82.i200208, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.sink144.i.sroa.gep82.i, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !112479
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_NtB7_10UndirectedE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.n, i64 noundef %i.as, i64 noundef %i.as), !noalias !112479
  %i.eu = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i8 0, i64 16, i1 false), !alias.scope !112485, !noalias !112479
  store i32 -1, ptr %i.ev, align 8, !alias.scope !112485, !noalias !112479
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  store i32 -1, ptr %i.ew, align 4, !alias.scope !112485, !noalias !112479
  br label %bb.aj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.thread.i.i, %bb.af, %bb.aj, %.invoke141.i.i, %.invoke.i.i
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.n)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.q, !noalias !112479

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ey) #63
          to label %.body.i unwind label %bb.r, !noalias !112479

bb.r:                                             ; preds = %bb.q
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !112486
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fa)
          to label %common.resume.i unwind label %bb.al, !noalias !112478

bb.s:                                             ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fb = fcmp oge double %i.bb, 0.000000e+00
  %i.fc = fcmp ole double %i.bb, 1.000000e+00
  %spec.select.i.i.i = and i1 %i.fb, %i.fc
  br i1 %spec.select.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fd = fcmp ogt double %i.bb, 0.000000e+00
  br i1 %i.fd, label %bb.x, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.i

bb.u:                                             ; preds = %bb.y, %bb.s
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.n)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.v, !noalias !112479

bb.v:                                             ; preds = %bb.u
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ff) #63
          to label %common.resume.i unwind label %bb.w, !noalias !112479

bb.w:                                             ; preds = %bb.v
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !112487
  unreachable

common.resume.i:                                  ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit66.i, %bb.v, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp269, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.fe, %bb.v ], [ %.pn54.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit66.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fh), !noalias !112479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !112479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !112479
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.thread.i

bb.x:                                             ; preds = %bb.t
  %i.fi = fadd double %i.bb, -1.000000e+00
  %i.fj = call double @llvm.fabs.f64(double %i.fi)
  %i.fk = fcmp olt double %i.fj, f0x3CB0000000000000
  br i1 %i.fk, label %.preheader.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fl = icmp slt i64 %i.as, 0
  br i1 %i.fl, label %bb.u, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fm = fsub double 1.000000e+00, %i.bb
  %i.fn = call double @llvm.log.f64(double %i.fm)
  %.not146.i.i = icmp eq i64 %i.as, 1
  br i1 %.not146.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.i, label %.lr.ph91.i.i

.lr.ph91.i.i:                                     ; preds = %bb.z
  %.promoted.i.i = load i128, ptr %i.p, align 16, !noalias !112479
  %i.fo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.fp = load i128, ptr %i.fo, align 16, !noalias !112479, !noundef !56
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph91.i.i
  %.sroa.028.089.i.i = phi i64 [ 1, %.lr.ph91.i.i ], [ %.sroa.028.1.lcssa132.i.i, %bb.ab ] ; 3 uses
  %.sroa.035.088.i.i = phi i64 [ -1, %.lr.ph91.i.i ], [ %.sroa.035.1.lcssa130.i.i, %bb.ab ]
  %i.fq = phi i128 [ %.promoted.i.i, %.lr.ph91.i.i ], [ %i.fs, %bb.ab ]
  %i.fr = mul i128 %i.fq, 47026247687942121848144207491837523525
  %i.fs = add i128 %i.fr, %i.fp                   ; 4 uses
  %i.ft = lshr i128 %i.fs, 122
  %i.fu = trunc nuw nsw i128 %i.ft to i64
  %i.fv = lshr i128 %i.fs, 64
  %i.fw = xor i128 %i.fv, %i.fs
  %i.fx = trunc i128 %i.fw to i64                 ; 2 uses
  %i.fy = call noundef i64 @llvm.fshr.i64(i64 %i.fx, i64 %i.fx, i64 %i.fu)
  %i.fz = lshr i64 %i.fy, 12
  %i.ga = or disjoint i64 %i.fz, 4607182418800017408
  %i.gb = bitcast i64 %i.ga to double
  %i.gc = fadd nnan double %i.gb, -1.000000e+00
  %i.gd = fsub double 1.000000e+00, %i.gc
  %i.ge = call double @llvm.log.f64(double %i.gd)
  %i.gf = add i64 %.sroa.035.088.i.i, 1
  %i.gg = fdiv double %i.ge, %i.fn
  %i.gh = call i64 @llvm.fptosi.sat.i64.f64(double %i.gg)
  %i.gi = add i64 %i.gf, %i.gh                    ; 3 uses
  %.not.i.i = icmp slt i64 %i.gi, %.sroa.028.089.i.i
  br i1 %.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.gm, label %._crit_edge.thread.i.i, label %bb.ab

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.028.181.i.i = phi i64 [ %i.gk, %.lr.ph.i.i ], [ %.sroa.028.089.i.i, %bb.aa ] ; 3 uses
  %.sroa.035.180.i.i = phi i64 [ %i.gj, %.lr.ph.i.i ], [ %i.gi, %bb.aa ]
  %i.gj = sub i64 %.sroa.035.180.i.i, %.sroa.028.181.i.i ; 4 uses
  %i.gk = add nsw i64 %.sroa.028.181.i.i, 1       ; 4 uses
  %i.gl = icmp sgt i64 %i.gj, %.sroa.028.181.i.i
  %i.gm = icmp slt i64 %i.gk, %i.as               ; 2 uses
  %or.cond2.i.i = and i1 %i.gm, %i.gl
  br i1 %or.cond2.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.ab:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, %._crit_edge.i.i
  %.sroa.028.1.lcssa132.i.i = phi i64 [ %.sroa.028.1.lcssa131.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.gk, %._crit_edge.i.i ] ; 2 uses
  %.sroa.035.1.lcssa130.i.i = phi i64 [ %.sroa.035.1.lcssa129.i.i, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.gj, %._crit_edge.i.i ]
  %i.gn = icmp slt i64 %.sroa.028.1.lcssa132.i.i, %i.as
  br i1 %i.gn, label %bb.aa, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.aa
  %.sroa.028.1.lcssa131.i.i = phi i64 [ %i.gk, %._crit_edge.i.i ], [ %.sroa.028.089.i.i, %bb.aa ] ; 2 uses
  %.sroa.035.1.lcssa129.i.i = phi i64 [ %i.gj, %._crit_edge.i.i ], [ %i.gi, %bb.aa ] ; 2 uses
  %i.go = trunc i64 %.sroa.028.1.lcssa131.i.i to i32
  %i.gp = trunc i64 %.sroa.035.1.lcssa129.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !112488
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n, i32 noundef %i.go, i32 noundef %i.gp, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc48.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112479

.noexc48.i.i:                                     ; preds = %._crit_edge.thread.i.i
  %i.gq = load i64, ptr %i.k, align 8, !range !107, !noalias !112488, !noundef !56 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.gq, 2
  br i1 %cond.i.i.i.i, label %bb.ae, label %bb.ac, !prof !68

bb.ac:                                            ; preds = %.noexc48.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !112489)
  %.not.i.i.i.i.i = icmp eq i64 %i.gq, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ad, !prof !66

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !112490
  %i.gr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !112489, !noalias !112488
  store i64 %i.gq, ptr %i.h, align 8, !noalias !112490
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.ak, %bb.ah, %bb.ad
  %.sink144.i.sroa.phi.i = phi ptr [ %.sink144.i.sroa.gep.i198211, %bb.ak ], [ %.sink144.i.sroa.gep81.i199209, %bb.ah ], [ %.sink144.i.sroa.gep82.i200207, %bb.ad ]
  %.sink144.i.i = phi ptr [ %i.b, %bb.ak ], [ %i.d, %bb.ah ], [ %i.h, %bb.ad ]
  %.sink.i.i = phi i64 [ %i.hk, %bb.ak ], [ %i.he, %bb.ah ], [ %i.gs, %bb.ad ]
  %i.gt = phi ptr [ @4180, %bb.ak ], [ @637, %bb.ah ], [ @635, %bb.ad ]
  store i64 %.sink.i.i, ptr %.sink144.i.sroa.phi.i, align 8, !noalias !112479
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %.sink144.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gt) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112479

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ae:                                            ; preds = %.noexc48.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !112488
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !112488, !noundef !56
  store i64 %i.gv, ptr %i.j, align 8, !noalias !112488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !112488
  store ptr %i.j, ptr %i.i, align 8, !noalias !112488
  br label %.invoke141.i.i

.invoke141.i.i:                                   ; preds = %bb.ai, %bb.ae
  %.sink145.i.sroa.phi.i = phi ptr [ %.sink145.i.sroa.gep.i196215, %bb.ai ], [ %.sink145.i.sroa.gep80.i197213, %bb.ae ]
  %.sink145.i.i = phi ptr [ %i.e, %bb.ai ], [ %i.i, %bb.ae ]
  %i.gw = phi ptr [ @637, %bb.ai ], [ @635, %bb.ae ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink145.i.sroa.phi.i, align 8, !noalias !112479
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1721, ptr noundef nonnull %.sink145.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gw) #60
          to label %.cont142.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112479

.cont142.i.i:                                     ; preds = %.invoke141.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !112488
  br label %bb.ab

.loopexit.i.i:                                    ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit57.i.i, %.preheader.i.i
  %exitcond116.not.i.i = icmp eq i64 %i.gx, %i.as
  br i1 %exitcond116.not.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.x, %.loopexit.i.i
  %.sroa.039.096.i.i = phi i64 [ %i.gx, %.loopexit.i.i ], [ 0, %bb.x ] ; 2 uses
  %i.gx = add nuw i64 %.sroa.039.096.i.i, 1       ; 4 uses
  %i.gy = icmp ult i64 %i.gx, %i.as
  br i1 %i.gy, label %.lr.ph95.i.i, label %.loopexit.i.i

.lr.ph95.i.i:                                     ; preds = %.preheader.i.i
  %i.gz = trunc i64 %.sroa.039.096.i.i to i32
  br label %bb.af

bb.af:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit57.i.i, %.lr.ph95.i.i
  %.sroa.041.193.i.i = phi i64 [ %i.gx, %.lr.ph95.i.i ], [ %i.ha, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit57.i.i ] ; 2 uses
  %i.ha = add nuw i64 %.sroa.041.193.i.i, 1       ; 2 uses
  %i.hb = trunc i64 %.sroa.041.193.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !112491
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n, i32 noundef %i.gz, i32 noundef %i.hb, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc54.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112479

.noexc54.i.i:                                     ; preds = %bb.af
  %i.hc = load i64, ptr %i.g, align 8, !range !107, !noalias !112491, !noundef !56 ; 3 uses
  %cond.i.i51.i.i = icmp eq i64 %i.hc, 2
  br i1 %cond.i.i51.i.i, label %bb.ai, label %bb.ag, !prof !68

bb.ag:                                            ; preds = %.noexc54.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !112492)
  %.not.i.i.i52.i.i = icmp eq i64 %i.hc, -1
  br i1 %.not.i.i.i52.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit57.i.i, label %bb.ah, !prof !66

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !112493
  %i.hd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !112492, !noalias !112491
  store i64 %i.hc, ptr %i.d, align 8, !noalias !112493
  br label %.invoke.i.i

bb.ai:                                            ; preds = %.noexc54.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !112491
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !112491, !noundef !56
  store i64 %i.hg, ptr %i.f, align 8, !noalias !112491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !112491
  store ptr %i.f, ptr %i.e, align 8, !noalias !112491
  br label %.invoke141.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit57.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !112491
  %exitcond115.not.i.i = icmp eq i64 %i.ha, %i.as
  br i1 %exitcond115.not.i.i, label %.loopexit.i.i, label %bb.af

bb.aj:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.p
  %.sroa.043.079.i.i = phi i64 [ 0, %bb.p ], [ %i.hh, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112479
  %i.hh = add nuw i64 %.sroa.043.079.i.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112494
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc58.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112479

.noexc58.i.i:                                     ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !112495)
  %i.hi = load i64, ptr %i.c, align 8, !range !107, !alias.scope !112495, !noalias !112494, !noundef !56 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.hi, -1
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.ak, !prof !66

bb.ak:                                            ; preds = %.noexc58.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112496
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !112495, !noalias !112494
  store i64 %i.hi, ptr %i.b, align 8, !noalias !112496
  br label %.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc58.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !112494
  %exitcond.not.i.i = icmp eq i64 %i.hh, %i.as
  br i1 %exitcond.not.i.i, label %bb.s, label %bb.aj

bb.al:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.al, %bb.q
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !112479
  unreachable

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.i: ; preds = %bb.ab, %.loopexit.i.i, %bb.z, %bb.t
  %.sroa.0.0.copyload72.i = load i64, ptr %i.n, align 8, !noalias !112478 ; 3 uses
  %.sroa.8.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.0..sroa_idx73.i, i64 64, i1 false), !noalias !112478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !112479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !112479
  %i.hm = icmp eq i64 %.sroa.0.0.copyload72.i, -1
  br i1 %i.hm, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.thread.i, label %bb.an

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.thread.i: ; preds = %.thread, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !112478
  %i.hn = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112478 ; 4 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.am, label %_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph.exit.thread, !prof !88

bb.am:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.thread.i
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !112478
  unreachable

bb.an:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16gnp_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_gnp_random_graph0B3R_B2p_EB3X_.exit.i
end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph40___pyfunction_undirected_sbm_random_graph:bb.a
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gi = lshr i64 %i.gd, 59
  %i.gj = trunc nuw nsw i64 %i.gi to i32
  %i.gk = call noundef i32 @llvm.fshr.i32(i32 %i.gh, i32 %i.gh, i32 range(i32 0, 32) %i.gj)
  %i.gl = mul i64 %i.gd, 6364136223846793005
  %i.gm = add i64 %i.gl, -6812164046247290893     ; 4 uses
  %i.gn = lshr i64 %i.gm, 45
  %i.go = lshr i64 %i.gm, 27
  %i.gp = xor i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32                  ; 2 uses
  %i.gr = lshr i64 %i.gm, 59
  %i.gs = trunc nuw nsw i64 %i.gr to i32
  %i.gt = call noundef i32 @llvm.fshr.i32(i32 %i.gq, i32 %i.gq, i32 range(i32 0, 32) %i.gs)
  %i.gu = mul i64 %i.gm, 6364136223846793005
  %i.gv = add i64 %i.gu, -6812164046247290893     ; 3 uses
  %i.gw = lshr i64 %i.gv, 45
  %i.gx = lshr i64 %i.gv, 27
  %i.gy = xor i64 %i.gw, %i.gx
  %i.gz = trunc i64 %i.gy to i32                  ; 2 uses
  %i.ha = lshr i64 %i.gv, 59
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %i.hc = call noundef i32 @llvm.fshr.i32(i32 %i.gz, i32 %i.gz, i32 range(i32 0, 32) %i.hb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !112611
  store i32 %i.er, ptr %i.h, align 4, !noalias !112611
  %.sroa.5.0..sroa_idx.i45.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.fa, ptr %.sroa.5.0..sroa_idx.i45.i.i, align 4, !noalias !112611
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.fj, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !112611
  %.sroa.7.0..sroa_idx.i46.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.fs, ptr %.sroa.7.0..sroa_idx.i46.i.i, align 4, !noalias !112611
  %.sroa.8.0..sroa_idx.i47.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.gb, ptr %.sroa.8.0..sroa_idx.i47.i.i, align 4, !noalias !112611
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %i.gk, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !112611
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %i.gt, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !112611
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.hc, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !112611
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.split-lp122.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112603

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !112611
  br label %bb.as

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !112603
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.l)
          to label %bb.ap unwind label %.loopexit.split-lp122.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112603

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !112612)
  call void @llvm.experimental.noalias.scope.decl(metadata !112613)
  %i.hd = load i32, ptr %i.l, align 16, !range !65, !alias.scope !112613, !noalias !112603, !noundef !56
  %i.he = trunc nuw i32 %i.hd to i1
  br i1 %i.he, label %bb.aq, label %bb.ar, !prof !60

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !112614
  %i.hf = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !range !159, !alias.scope !112613, !noalias !112603, !noundef !56
  store i32 %i.hg, ptr %i.j, align 4, !noalias !112614
  br label %.invoke.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.hh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.hi = load i128, ptr %i.hh, align 16, !alias.scope !112613, !noalias !112603, !noundef !56
  %i.hj = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.hk = load i128, ptr %i.hj, align 16, !alias.scope !112613, !noalias !112603, !noundef !56
  store i128 %i.hi, ptr %i.m, align 16, !alias.scope !112612, !noalias !112603
  %i.hl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i128 %i.hk, ptr %i.hl, align 16, !alias.scope !112612, !noalias !112603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !112603
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !112603
  store i64 0, ptr %i.k, align 8, !noalias !112603
  %i.hm = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.hm, align 8, !noalias !112603
  %i.hn = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.hn, align 8, !noalias !112603
  %i.ho = load i64, ptr %.sroa.491.0.copyload, align 8, !alias.scope !112596, !noalias !112595, !noundef !56
  br label %bb.at

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb, %bb.bf, %bb.be, %bb.bd, %.invoke299.i.i
  %lpad.loopexit.split-lp378 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112615)
  %.val.i49.i.i = load i64, ptr %i.k, align 8, !alias.scope !112615, !noalias !112603 ; 2 uses
  %i.hp = icmp eq i64 %.val.i49.i.i, 0
  br i1 %i.hp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i.i = load ptr, ptr %i.hm, align 8, !alias.scope !112615, !noalias !112603, !nonnull !56, !noundef !56
  %i.hq = shl nuw i64 %.val.i49.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.hq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112616
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.at:                                            ; preds = %bb.bg, %bb.as
  %i.hr = phi i64 [ 0, %bb.as ], [ %i.hs, %bb.bg ] ; 3 uses
  %.sroa.05.0171.i.i = phi i64 [ 0, %bb.as ], [ %.sroa.05.1.lcssa.i.i, %bb.bg ] ; 3 uses
  %.sroa.08.0170.i.i = phi i64 [ %i.ho, %bb.as ], [ %i.kh, %bb.bg ] ; 2 uses
  %i.hs = add nuw i64 %i.hr, 1                    ; 3 uses
  %i.ht = icmp eq i64 %.sroa.08.0170.i.i, 0
  br i1 %i.ht, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.at
  %i.hu = add i64 %.sroa.05.0171.i.i, 1           ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %.sroa.592.0.copyload
  br i1 %i.hv, label %.lr.ph350, label %.lr.ph.i.i.preheader._crit_edge

bb.au:                                            ; preds = %bb.bg
  %not..i.i = xor i1 %i.bf, true
  %i.hw = sext i1 %not..i.i to i64
  %.sroa.010.0.i.i = add i64 %.lcssa348, %i.hw    ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.010.0.i.i, 0
  br i1 %.not.i.i, label %._crit_edge194.i.i, label %.lr.ph193.i.i

.lr.ph193.i.i:                                    ; preds = %bb.au
  %.promoted182.i.i = load i128, ptr %i.m, align 16, !noalias !112603
  %i.hx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.hy = load i128, ptr %i.hx, align 16, !noalias !112603
  br label %bb.av

.loopexit.i.i:                                    ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i.preheader, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i
  %exitcond242.not.i.i = icmp eq i64 %i.ie, %.sroa.010.0.i.i
  br i1 %exitcond242.not.i.i, label %._crit_edge194.i.i, label %bb.av

._crit_edge194.i.i:                               ; preds = %.loopexit.i.i, %bb.au
  %.sroa.054.0.copyload55.i = load i64, ptr %i.n, align 8, !noalias !112617 ; 2 uses
  %.sroa.9.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.9.i.sroa.0.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx56.i, align 8, !noalias !112617
  %.sroa.9.i.sroa.5.0..sroa.9.0..sroa_idx56.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.hz = load <2 x i64>, ptr %.sroa.9.i.sroa.5.0..sroa.9.0..sroa_idx56.i.sroa_idx, align 8, !noalias !112617
  %.sroa.9.i.sroa.7.0..sroa.9.0..sroa_idx56.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ia = load <2 x ptr>, ptr %.sroa.9.i.sroa.7.0..sroa.9.0..sroa_idx56.i.sroa_idx, align 8, !noalias !112617
  %.sroa.9.i.sroa.9.0.copyload = load ptr, ptr %i.dc, align 8, !noalias !112617
  %.sroa.9.i.sroa.10.0..sroa.9.0..sroa_idx56.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.9.i.sroa.10.0.copyload = load i64, ptr %.sroa.9.i.sroa.10.0..sroa.9.0..sroa_idx56.i.sroa_idx, align 8, !noalias !112617
  %i.ib = load <2 x i32>, ptr %i.dd, align 8, !noalias !112617
  call void @llvm.experimental.noalias.scope.decl(metadata !112618)
  %.val.i50.i.i = load i64, ptr %i.k, align 8, !alias.scope !112618, !noalias !112603 ; 2 uses
  %i.ic = icmp eq i64 %.val.i50.i.i, 0
  br i1 %i.ic, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B3R_B2p_EB3X_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i51.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i51.i.i: ; preds = %._crit_edge194.i.i
  %.val1.i52.i.i = load ptr, ptr %i.hm, align 8, !alias.scope !112618, !noalias !112603, !nonnull !56, !noundef !56
  %i.id = shl nuw i64 %.val.i50.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i52.i.i, i64 noundef %i.id, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112619
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B3R_B2p_EB3X_.exit.i

bb.av:                                            ; preds = %.loopexit.i.i, %.lr.ph193.i.i
  %.sroa.021.0191.i.i = phi i64 [ 0, %.lr.ph193.i.i ], [ %i.ie, %.loopexit.i.i ] ; 7 uses
  %.lcssa176183190.i.i = phi i128 [ %.promoted182.i.i, %.lr.ph193.i.i ], [ %i.ig, %.loopexit.i.i ]
  %i.ie = add nuw i64 %.sroa.021.0191.i.i, 1      ; 2 uses
  %i.if = trunc i64 %.sroa.021.0191.i.i to i32
  br label %bb.aw

bb.aw:                                            ; preds = %.backedge, %bb.av
  %i.ig = phi i128 [ %.lcssa176183190.i.i, %bb.av ], [ %i.il, %.backedge ] ; 2 uses
  %.sroa.673.0.i.i = phi i64 [ %.sroa.021.0191.i.i, %bb.av ], [ %.us-phi.i.i, %.backedge ] ; 5 uses
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.lcssa348, i64 %.sroa.673.0.i.i)
  %exitcond.not.i.us.not.i.i = icmp ult i64 %.sroa.673.0.i.i, %.lcssa348 ; 2 uses
  br i1 %i.bf, label %.split.us.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i.preheader

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i.preheader: ; preds = %bb.aw
  br i1 %exitcond.not.i.us.not.i.i, label %.lr.ph353, label %.loopexit.i.i

.split.us.i.i:                                    ; preds = %bb.aw
  br i1 %exitcond.not.i.us.not.i.i, label %.split173.us.i.i, label %.loopexit.i.i

.split173.us.i.i:                                 ; preds = %.split.us.i.i
  %i.ih = add nuw i64 %.sroa.673.0.i.i, 1
  br label %.split173.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i: ; preds = %.lr.ph353
  %exitcond.not.i.i.i = icmp eq i64 %i.ij, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph353

.lr.ph353:                                        ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i.preheader, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i
  %i.ii = phi i64 [ %i.ij, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i ], [ %.sroa.673.0.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i.preheader ] ; 3 uses
  %i.ij = add nuw i64 %i.ii, 1                    ; 3 uses
  %.not.i.i.i.i.not.i.i = icmp eq i64 %i.ii, %.sroa.021.0191.i.i
  br i1 %.not.i.i.i.i.not.i.i, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4find5checkjQNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3L_5types3any5PyAnyEB3G_NtB2G_10UndirectedEB3G_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B58_B3G_Es_0E0B5e_.exit.i.i.i, label %.split173.i.i

.split173.i.i:                                    ; preds = %.lr.ph353, %.split173.us.i.i
  %.us-phi.i.i = phi i64 [ %i.ih, %.split173.us.i.i ], [ %i.ij, %.lr.ph353 ]
  %.us-phi174.i.i = phi i64 [ %.sroa.673.0.i.i, %.split173.us.i.i ], [ %i.ii, %.lr.ph353 ] ; 4 uses
  %i.ik = mul i128 %i.ig, 47026247687942121848144207491837523525
  %i.il = add i128 %i.ik, %i.hy                   ; 4 uses
  %i.im = lshr i128 %i.il, 122
  %i.in = trunc nuw nsw i128 %i.im to i64
  %i.io = lshr i128 %i.il, 64
  %i.ip = xor i128 %i.io, %i.il
  %i.iq = trunc i128 %i.ip to i64                 ; 2 uses
  %i.ir = call noundef i64 @llvm.fshr.i64(i64 %i.iq, i64 %i.iq, i64 %i.in)
  %i.is = lshr i64 %i.ir, 12
  %i.it = or disjoint i64 %i.is, 4607182418800017408
  %i.iu = bitcast i64 %i.it to double
  %i.iv = fadd nnan double %i.iu, -1.000000e+00
  %i.iw = load ptr, ptr %i.hm, align 8, !noalias !112603, !nonnull !56, !noundef !56 ; 2 uses
  %i.ix = load i64, ptr %i.hn, align 8, !noalias !112603, !noundef !56 ; 4 uses
  %i.iy = icmp ult i64 %.sroa.021.0191.i.i, %i.ix
  br i1 %i.iy, label %bb.ax, label %.invoke299.i.i

bb.ax:                                            ; preds = %.split173.i.i
  %i.iz = icmp ult i64 %.us-phi174.i.i, %i.ix
  br i1 %i.iz, label %bb.ay, label %.invoke299.i.i

.invoke299.i.i:                                   ; preds = %bb.ax, %.split173.i.i, %.lr.ph.i.i.preheader._crit_edge
  %i.ja = phi i64 [ %umax.le.i.i, %.lr.ph.i.i.preheader._crit_edge ], [ %.sroa.021.0191.i.i, %.split173.i.i ], [ %.us-phi174.i.i, %bb.ax ]
  %i.jb = phi i64 [ %.sroa.592.0.copyload, %.lr.ph.i.i.preheader._crit_edge ], [ %i.ix, %.split173.i.i ], [ %i.ix, %bb.ax ]
  %i.jc = phi ptr [ @643, %.lr.ph.i.i.preheader._crit_edge ], [ @639, %.split173.i.i ], [ @640, %bb.ax ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ja, i64 noundef %i.jb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jc) #61
          to label %.cont300.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112603

.cont300.i.i:                                     ; preds = %.invoke299.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.021.0191.i.i
  %i.je = load i64, ptr %i.jd, align 8, !noalias !112603, !noundef !56 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.us-phi174.i.i
  %i.jg = load i64, ptr %i.jf, align 8, !noalias !112603, !noundef !56 ; 2 uses
  %i.jh = icmp ult i64 %i.je, %.sroa.592.0.copyload
  %i.ji = icmp ult i64 %i.jg, %.sroa.592.0.copyload
  %or.cond.i.i.i.i = and i1 %i.jh, %i.ji          ; 2 uses
  br i1 %or.cond.i.i.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jj = mul i64 %i.je, %.sroa.877.24.copyload.i.i
  %i.jk = mul i64 %i.jg, %.sroa.11.24.copyload.i.i
  %i.jl = add i64 %i.jk, %i.jj
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.jl, %bb.az ], [ undef, %bb.ay ]
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.sroa.3.0.i.i.i.i
  %spec.select.i.i = select i1 %or.cond.i.i.i.i, ptr %i.jm, ptr @641
  %i.jn = load double, ptr %spec.select.i.i, align 8, !noalias !112603, !noundef !56
  %i.jo = fcmp olt double %i.iv, %i.jn
  br i1 %i.jo, label %bb.bb, label %.backedge

bb.bb:                                            ; preds = %bb.ba
  %i.jp = trunc i64 %.us-phi174.i.i to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !112620
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n, i32 noundef %i.if, i32 noundef %i.jp, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc56.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112603

.noexc56.i.i:                                     ; preds = %bb.bb
  %i.jq = load i64, ptr %i.g, align 8, !range !107, !noalias !112620, !noundef !56 ; 3 uses
  %cond.i.i.i.i = icmp eq i64 %i.jq, 2
  br i1 %cond.i.i.i.i, label %bb.be, label %bb.bc, !prof !68

bb.bc:                                            ; preds = %.noexc56.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !112621)
  %.not.i.i.i.i.i = icmp eq i64 %i.jq, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.bd, !prof !66

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !112622
  %i.jr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !112621, !noalias !112620
  store i64 %i.jq, ptr %i.d, align 8, !noalias !112622
  %i.jt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.js, ptr %i.jt, align 8, !noalias !112622
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @642) #60
          to label %.noexc57.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112603

.noexc57.i.i:                                     ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %.noexc56.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !112620
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !112620, !noundef !56
  store i64 %i.jv, ptr %i.f, align 8, !noalias !112620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !112620
  store ptr %i.f, ptr %i.e, align 8, !noalias !112620
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !112620
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1721, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @642) #60
          to label %.noexc58.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112603

.noexc58.i.i:                                     ; preds = %bb.be
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !112620
  br label %.backedge

.backedge:                                        ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ba
  br label %bb.aw

.lr.ph.i.i:                                       ; preds = %.lr.ph350
  %i.jw = add i64 %i.ka, 1                        ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %.sroa.592.0.copyload
  br i1 %i.jx, label %.lr.ph350, label %.lr.ph.i.i.preheader._crit_edge

._crit_edge.i.i:                                  ; preds = %.lr.ph350, %bb.at
  %.sroa.08.1.lcssa.i.i = phi i64 [ %.sroa.08.0170.i.i, %bb.at ], [ %i.kc, %.lr.ph350 ]
  %.sroa.05.1.lcssa.i.i = phi i64 [ %.sroa.05.0171.i.i, %bb.at ], [ %i.ka, %.lr.ph350 ] ; 2 uses
  %i.jy = load i64, ptr %i.k, align 8, !range !59, !alias.scope !112623, !noalias !112603, !noundef !56
  %i.jz = icmp eq i64 %i.hr, %i.jy
  br i1 %i.jz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsLUcHuY3yQf_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #62
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112603

.lr.ph350:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.ka = phi i64 [ %i.jw, %.lr.ph.i.i ], [ %i.hu, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.491.0.copyload, i64 %i.ka
  %i.kc = load i64, ptr %i.kb, align 8, !alias.scope !112596, !noalias !112595, !noundef !56 ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i.preheader._crit_edge:                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.ke = add i64 %.sroa.05.0171.i.i, 1
  %umax.le.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, 1152921504606846976) %.sroa.592.0.copyload, i64 %i.ke)
  br label %.invoke299.i.i

bb.bg:                                            ; preds = %bb.bf, %._crit_edge.i.i
  %i.kf = load ptr, ptr %i.hm, align 8, !alias.scope !112623, !noalias !112603, !nonnull !56, !noundef !56
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.hr
  store i64 %.sroa.05.1.lcssa.i.i, ptr %i.kg, align 8, !noalias !112603
  store i64 %i.hs, ptr %i.hn, align 8, !alias.scope !112623, !noalias !112603
  %i.kh = add i64 %.sroa.08.1.lcssa.i.i, -1
  %exitcond241.not.i.i = icmp eq i64 %i.hs, %.lcssa348
  br i1 %exitcond241.not.i.i, label %bb.au, label %bb.at

bb.bh:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !112603
  unreachable

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph15symmetric_arraydECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph15symmetric_arraydECskcxRuJ53GpR_9rustworkx.exit.i.i.preheader, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.028.0166.i.i = phi i64 [ %i.kj, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph15symmetric_arraydECskcxRuJ53GpR_9rustworkx.exit.i.i.preheader ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !112603
  %i.kj = add nuw i64 %.sroa.028.0166.i.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112624
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc60.i.i unwind label %.loopexit.split-lp122.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112603

.noexc60.i.i:                                     ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph15symmetric_arraydECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !112625)
  %i.kk = load i64, ptr %i.c, align 16, !range !107, !alias.scope !112625, !noalias !112624, !noundef !56
  %.not.i.i.i.i = icmp eq i64 %i.kk, -1
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.bi, !prof !66

bb.bi:                                            ; preds = %.noexc60.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112626
  %i.kl = load <2 x i64>, ptr %i.c, align 16, !alias.scope !112625, !noalias !112624
  store <2 x i64> %i.kl, ptr %i.b, align 16, !noalias !112626
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.bi, %bb.aq
  %i.km = phi ptr [ %i.b, %bb.bi ], [ %i.j, %bb.aq ]
  %i.kn = phi ptr [ @1548, %bb.bi ], [ @1549, %bb.aq ]
  %i.ko = phi ptr [ @4180, %bb.bi ], [ @638, %bb.aq ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.km, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ko) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp122.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !112603

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc60.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !112624
  %exitcond.not.i.i = icmp eq i64 %i.kj, %.lcssa348
  br i1 %exitcond.not.i.i, label %bb.am, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph15symmetric_arraydECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.loopexit.split-lp122.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp378, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %lpad.loopexit.split-lp378, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp389, %.loopexit.split-lp122.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n) #63
          to label %.body.i unwind label %bb.bh, !noalias !112603

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B3R_B2p_EB3X_.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i51.i.i, %._crit_edge194.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !112603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !112603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !112603
  %i.kp = icmp eq i64 %.sroa.054.0.copyload55.i, -1
  br i1 %i.kp, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B3R_B2p_EB3X_.exit.thread.i, label %bb.bk

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B3R_B2p_EB3X_.exit.thread.i: ; preds = %bb.aa, %.lr.ph, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B3R_B2p_EB3X_.exit.i, %.noexc38.i, %bb.u, %_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsM_NtBW_5accumjINtB1M_3SumRjE3sumBF_E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.t
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !112595
  %i.kq = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !112595 ; 5 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %bb.bj, label %bb.bm, !prof !88

bb.bj:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B3R_B2p_EB3X_.exit.thread.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc39.i unwind label %bb.s, !noalias !112595

.noexc39.i:                                       ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph16sbm_random_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_NtB1p_10UndirectedEB2p_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph27undirected_sbm_random_graph0B3R_B2p_EB3X_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !112595
end_hunk_7
begin_hunk_8_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph44___pyfunction_directed_random_bipartite_graph:bb.a
  store i64 %.sroa.9.8.copyload3.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !113108, !noalias !113107
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2732, i64 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !113107
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load <2 x i64>, ptr %i.bo, align 8
  store <2 x i64> %i.bq, ptr %i.bp, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  br label %bb.ag

_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %bb.j, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.l
  %i.br = phi i64 [ %.pre, %bb.l ], [ %.sroa.5.8.copyload1.i.i, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ undef, %bb.j ]
  %i.bs = phi i1 [ false, %bb.l ], [ true, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ false, %bb.j ]
  %i.bt = or i64 %i.ay, %i.ap
  %or.cond.i.i = icmp eq i64 %i.bt, 0
  %.sink83.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink83.i.sroa.gep40.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br i1 %or.cond.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.bu = fcmp oge double %i.bh, 0.000000e+00
  %i.bv = fcmp ole double %i.bh, 1.000000e+00
  %spec.select.i.i.i = and i1 %i.bu, %i.bv
  br i1 %spec.select.i.i.i, label %bb.o, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.thread.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !113109
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = mul i64 %i.br, 6364136223846793005
  %i.bx = add i64 %i.bw, -6812164046247290893     ; 4 uses
  %i.by = lshr i64 %i.bx, 45
  %i.bz = lshr i64 %i.bx, 27
  %i.ca = xor i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = lshr i64 %i.bx, 59
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = call noundef i32 @llvm.fshr.i32(i32 %i.cb, i32 %i.cb, i32 range(i32 0, 32) %i.cd)
  %i.cf = mul i64 %i.bx, 6364136223846793005
  %i.cg = add i64 %i.cf, -6812164046247290893     ; 4 uses
  %i.ch = lshr i64 %i.cg, 45
  %i.ci = lshr i64 %i.cg, 27
  %i.cj = xor i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = lshr i64 %i.cg, 59
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = call noundef i32 @llvm.fshr.i32(i32 %i.ck, i32 %i.ck, i32 range(i32 0, 32) %i.cm)
  %i.co = mul i64 %i.cg, 6364136223846793005
  %i.cp = add i64 %i.co, -6812164046247290893     ; 4 uses
  %i.cq = lshr i64 %i.cp, 45
  %i.cr = lshr i64 %i.cp, 27
  %i.cs = xor i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  %i.cu = lshr i64 %i.cp, 59
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = call noundef i32 @llvm.fshr.i32(i32 %i.ct, i32 %i.ct, i32 range(i32 0, 32) %i.cv)
  %i.cx = mul i64 %i.cp, 6364136223846793005
  %i.cy = add i64 %i.cx, -6812164046247290893     ; 4 uses
  %i.cz = lshr i64 %i.cy, 45
  %i.da = lshr i64 %i.cy, 27
  %i.db = xor i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %i.dd = lshr i64 %i.cy, 59
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = call noundef i32 @llvm.fshr.i32(i32 %i.dc, i32 %i.dc, i32 range(i32 0, 32) %i.de)
  %i.dg = mul i64 %i.cy, 6364136223846793005
  %i.dh = add i64 %i.dg, -6812164046247290893     ; 4 uses
  %i.di = lshr i64 %i.dh, 45
  %i.dj = lshr i64 %i.dh, 27
  %i.dk = xor i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = lshr i64 %i.dh, 59
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = call noundef i32 @llvm.fshr.i32(i32 %i.dl, i32 %i.dl, i32 range(i32 0, 32) %i.dn)
  %i.dp = mul i64 %i.dh, 6364136223846793005
  %i.dq = add i64 %i.dp, -6812164046247290893     ; 4 uses
  %i.dr = lshr i64 %i.dq, 45
  %i.ds = lshr i64 %i.dq, 27
  %i.dt = xor i64 %i.dr, %i.ds
  %i.du = trunc i64 %i.dt to i32                  ; 2 uses
  %i.dv = lshr i64 %i.dq, 59
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = call noundef i32 @llvm.fshr.i32(i32 %i.du, i32 %i.du, i32 range(i32 0, 32) %i.dw)
  %i.dy = mul i64 %i.dq, 6364136223846793005
  %i.dz = add i64 %i.dy, -6812164046247290893     ; 4 uses
  %i.ea = lshr i64 %i.dz, 45
  %i.eb = lshr i64 %i.dz, 27
  %i.ec = xor i64 %i.ea, %i.eb
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = lshr i64 %i.dz, 59
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = call noundef i32 @llvm.fshr.i32(i32 %i.ed, i32 %i.ed, i32 range(i32 0, 32) %i.ef)
  %i.eh = mul i64 %i.dz, 6364136223846793005
  %i.ei = add i64 %i.eh, -6812164046247290893     ; 3 uses
  %i.ej = lshr i64 %i.ei, 45
  %i.ek = lshr i64 %i.ei, 27
  %i.el = xor i64 %i.ej, %i.ek
  %i.em = trunc i64 %i.el to i32                  ; 2 uses
  %i.en = lshr i64 %i.ei, 59
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = call noundef i32 @llvm.fshr.i32(i32 %i.em, i32 %i.em, i32 range(i32 0, 32) %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !113110
  store i32 %i.ce, ptr %i.h, align 4, !noalias !113110
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.cn, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !113110
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.cw, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !113110
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.df, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !113110
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.do, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !113110
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %i.dx, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !113110
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %i.eg, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !113110
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.ep, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !113110
  call void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h), !noalias !113109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !113110
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !113109
  call fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.k), !noalias !113109
  call void @llvm.experimental.noalias.scope.decl(metadata !113111)
  call void @llvm.experimental.noalias.scope.decl(metadata !113112)
  %i.eq = load i32, ptr %i.k, align 16, !range !65, !alias.scope !113112, !noalias !113109, !noundef !56
  %i.er = trunc nuw i32 %i.eq to i1
  br i1 %i.er, label %bb.r, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !60

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !113113
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.et = load i32, ptr %i.es, align 4, !range !159, !alias.scope !113112, !noalias !113109, !noundef !56
  store i32 %i.et, ptr %i.i, align 4, !noalias !113113
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1549, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @649) #60, !noalias !113114
  unreachable

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ev = load i128, ptr %i.eu, align 16, !alias.scope !113112, !noalias !113109, !noundef !56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ex = load i128, ptr %i.ew, align 16, !alias.scope !113112, !noalias !113109, !noundef !56
  store i128 %i.ev, ptr %i.l, align 16, !alias.scope !113111, !noalias !113109
  %i.ey = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i128 %i.ex, ptr %i.ey, align 16, !alias.scope !113111, !noalias !113109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !113109
  br label %bb.s

bb.s:                                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !113109
  %i.ez = add i64 %i.ay, %i.ap                    ; 4 uses
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_E13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.j, i64 noundef %i.ez, i64 noundef %i.ez), !noalias !113109
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false), !alias.scope !113115, !noalias !113109
  store i32 -1, ptr %i.fb, align 8, !alias.scope !113115, !noalias !113109
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  store i32 -1, ptr %i.fc, align 4, !alias.scope !113115, !noalias !113109
  %.not.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.s
  %.not56.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not56.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.i, label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %.preheader.i.i
  %.not57.i.i = icmp eq i64 %i.ay, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fe = load i128, ptr %i.fd, align 16, !noalias !113109
  br i1 %.not57.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.i, label %.lr.ph36.us.i.preheader.i

.lr.ph36.us.i.preheader.i:                        ; preds = %.lr.ph44.i.i
  %.promoted37.i.i = load i128, ptr %i.l, align 16, !noalias !113109
  br label %.lr.ph36.us.i.i

.lr.ph36.us.i.i:                                  ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph36.us.i.preheader.i
  %.sroa.05.043.us.i.i = phi i64 [ %i.ff, %..loopexit_crit_edge.us.i.i ], [ 0, %.lr.ph36.us.i.preheader.i ] ; 2 uses
  %.lcssa313842.us.i.i = phi i128 [ %i.fk, %..loopexit_crit_edge.us.i.i ], [ %.promoted37.i.i, %.lr.ph36.us.i.preheader.i ]
  %i.ff = add nuw i64 %.sroa.05.043.us.i.i, 1     ; 2 uses
  %i.fg = trunc i64 %.sroa.05.043.us.i.i to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph36.us.i.i
  %.sroa.07.035.us.i.i = phi i64 [ 0, %.lr.ph36.us.i.i ], [ %i.fi, %bb.w ] ; 2 uses
  %i.fh = phi i128 [ %.lcssa313842.us.i.i, %.lr.ph36.us.i.i ], [ %i.fk, %bb.w ]
  %i.fi = add nuw i64 %.sroa.07.035.us.i.i, 1     ; 2 uses
  %i.fj = mul i128 %i.fh, 47026247687942121848144207491837523525
  %i.fk = add i128 %i.fj, %i.fe                   ; 5 uses
  %i.fl = lshr i128 %i.fk, 122
  %i.fm = trunc nuw nsw i128 %i.fl to i64
  %i.fn = lshr i128 %i.fk, 64
  %i.fo = xor i128 %i.fn, %i.fk
  %i.fp = trunc i128 %i.fo to i64                 ; 2 uses
  %i.fq = call noundef i64 @llvm.fshr.i64(i64 %i.fp, i64 %i.fp, i64 %i.fm)
  %i.fr = lshr i64 %i.fq, 12
  %i.fs = or disjoint i64 %i.fr, 4607182418800017408
  %i.ft = bitcast i64 %i.fs to double
  %i.fu = fadd nnan double %i.ft, -1.000000e+00
  %i.fv = fcmp olt double %i.fu, %i.bh
  br i1 %i.fv, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fw = add i64 %.sroa.07.035.us.i.i, %i.ap
  %i.fx = trunc i64 %i.fw to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !113109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !113116
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.fg, i32 noundef %i.fx, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc13.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113109

.noexc13.us.i.i:                                  ; preds = %bb.u
  %i.fy = load i64, ptr %i.g, align 8, !range !107, !noalias !113116, !noundef !56 ; 3 uses
  %cond.i.i.us.i.i = icmp eq i64 %i.fy, 2
  br i1 %cond.i.i.us.i.i, label %.split.us.i.i, label %bb.v, !prof !68

bb.v:                                             ; preds = %.noexc13.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !113117)
  %.not.i.i.i.us.i.i = icmp eq i64 %i.fy, -1
  br i1 %.not.i.i.i.us.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.us.i.i, label %.split51.us.i.i, !prof !66

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.us.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !113116
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.us.i.i, %bb.t
  %exitcond66.not.i.i = icmp eq i64 %i.fi, %i.ay
  br i1 %exitcond66.not.i.i, label %..loopexit_crit_edge.us.i.i, label %bb.t

..loopexit_crit_edge.us.i.i:                      ; preds = %bb.w
  %exitcond67.not.i.i = icmp eq i64 %i.ff, %i.ap
  br i1 %exitcond67.not.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.i, label %.lr.ph36.us.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %.lr.ph.i.i, %.split.us.i.i, %.split51.us.invoke.i.i
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.x, !noalias !113109

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ga) #63
          to label %.body.i unwind label %bb.y, !noalias !113109

bb.y:                                             ; preds = %bb.x
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !113118
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gc = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.gc)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_EECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.aa, !noalias !113119

.split51.us.i.i:                                  ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113120
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !113117, !noalias !113116
  store i64 %i.fy, ptr %i.d, align 8, !noalias !113120
  br label %.split51.us.invoke.i.i

.split51.us.invoke.i.i:                           ; preds = %bb.z, %.split51.us.i.i
  %.sink83.i.sroa.phi.i = phi ptr [ %.sink83.i.sroa.gep.i, %bb.z ], [ %.sink83.i.sroa.gep40.i, %.split51.us.i.i ]
  %.sink83.i.i = phi ptr [ %i.b, %bb.z ], [ %i.d, %.split51.us.i.i ]
  %.sink.i.i = phi i64 [ %i.gl, %bb.z ], [ %i.ge, %.split51.us.i.i ]
  %i.gf = phi ptr [ @4180, %bb.z ], [ @650, %.split51.us.i.i ]
  store i64 %.sink.i.i, ptr %.sink83.i.sroa.phi.i, align 8, !noalias !113109
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %.sink83.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gf) #60
          to label %.split51.us.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113109

.split51.us.cont.i.i:                             ; preds = %.split51.us.invoke.i.i
  unreachable

.split.us.i.i:                                    ; preds = %.noexc13.us.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !113116
  %i.gh = load i64, ptr %i.gg, align 8, !noalias !113116, !noundef !56
  store i64 %i.gh, ptr %i.f, align 8, !noalias !113116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !113116
  store ptr %i.f, ptr %i.e, align 8, !noalias !113116
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !113116
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1721, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @650) #60
          to label %.noexc15.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113109

.noexc15.i.i:                                     ; preds = %.split.us.i.i
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.s, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.09.030.i.i = phi i64 [ %i.gi, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %bb.s ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !113109
  %i.gi = add nuw i64 %.sroa.09.030.i.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113121
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113109

.noexc16.i.i:                                     ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !113122)
  %i.gj = load i64, ptr %i.c, align 8, !range !107, !alias.scope !113122, !noalias !113121, !noundef !56 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.gj, -1
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.z, !prof !66

bb.z:                                             ; preds = %.noexc16.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113123
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !113122, !noalias !113121
  store i64 %i.gj, ptr %i.b, align 8, !noalias !113123
  br label %.split51.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_ENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113121
  %exitcond.not.i.i = icmp eq i64 %i.gi, %i.ez
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.x
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !113109
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp191

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.i: ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph44.i.i, %.preheader.i.i
  %.sroa.034.0.copyload35.i = load i64, ptr %i.j, align 8, !noalias !113119 ; 2 uses
  %.sroa.8.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx37.i, align 8, !noalias !113119
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gn = load <2 x i64>, ptr %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx37.i.sroa_idx, align 8, !noalias !113119
  %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.go = load <2 x ptr>, ptr %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx37.i.sroa_idx, align 8, !noalias !113119
  %.sroa.8.i.sroa.9.0.copyload = load ptr, ptr %i.fa, align 8, !noalias !113119
  %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.8.i.sroa.10.0.copyload = load i64, ptr %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx37.i.sroa_idx, align 8, !noalias !113119
  %i.gp = load <2 x i32>, ptr %i.fb, align 8, !noalias !113119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !113109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !113109
  %i.gq = icmp eq i64 %.sroa.034.0.copyload35.i, -1
  br i1 %i.gq, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.thread.i, label %bb.ad

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.thread.i: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.i, %bb.n, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !113119
  %i.gr = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !113119 ; 4 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ab, label %bb.ac, !prof !88

bb.ab:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.thread.i
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !113119
  unreachable

bb.ac:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.thread.i
  store ptr @2730, ptr %i.gr, align 8, !noalias !113119
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 72, ptr %i.gt, align 8, !noalias !113119
  %i.gu = insertelement <2 x ptr> <ptr poison, ptr @518>, ptr %i.gr, i64 0
  br label %bb.ae

bb.ad:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph31directed_random_bipartite_graph0B3F_B2v_EB3L_.exit.i
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !113119
  store i64 %.sroa.034.0.copyload35.i, ptr %i.u, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.8.i.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> %i.gn, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.1168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store <2 x ptr> %i.go, ptr %.sroa.1168.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %.sroa.8.i.sroa.9.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %.sroa.8.i.sroa.10.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.1473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store <2 x i32> %i.gp, ptr %.sroa.1473.0..sroa_idx, align 8
  %.sroa.1576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store i64 0, ptr %.sroa.1576.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store i64 0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store ptr @_Py_NoneStruct, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store i8 0, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 129
  store i8 0, ptr %.sroa.22.0..sroa_idx, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 130
  store i8 0, ptr %.sroa.23.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113124
  call fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphE19create_class_objectB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.u), !noalias !113125, !inline_history !46
  %i.gv = load i64, ptr %i.a, align 8, !range !57, !noalias !113124, !noundef !56
end_hunk_8
begin_hunk_9_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph46___pyfunction_undirected_random_bipartite_graph:bb.a
  store i64 %.sroa.9.8.copyload3.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !113190, !noalias !113189
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2732, i64 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !113189
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load <2 x i64>, ptr %i.bo, align 8
  store <2 x i64> %i.bq, ptr %i.bp, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  br label %bb.ag

_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %bb.j, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.l
  %i.br = phi i64 [ %.pre, %bb.l ], [ %.sroa.5.8.copyload1.i.i, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ undef, %bb.j ]
  %i.bs = phi i1 [ false, %bb.l ], [ true, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ false, %bb.j ]
  %i.bt = or i64 %i.ay, %i.ap
  %or.cond.i.i = icmp eq i64 %i.bt, 0
  %.sink83.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink83.i.sroa.gep36.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br i1 %or.cond.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.bu = fcmp oge double %i.bh, 0.000000e+00
  %i.bv = fcmp ole double %i.bh, 1.000000e+00
  %spec.select.i.i.i = and i1 %i.bu, %i.bv
  br i1 %spec.select.i.i.i, label %bb.o, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.thread.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !113191
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = mul i64 %i.br, 6364136223846793005
  %i.bx = add i64 %i.bw, -6812164046247290893     ; 4 uses
  %i.by = lshr i64 %i.bx, 45
  %i.bz = lshr i64 %i.bx, 27
  %i.ca = xor i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = lshr i64 %i.bx, 59
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = call noundef i32 @llvm.fshr.i32(i32 %i.cb, i32 %i.cb, i32 range(i32 0, 32) %i.cd)
  %i.cf = mul i64 %i.bx, 6364136223846793005
  %i.cg = add i64 %i.cf, -6812164046247290893     ; 4 uses
  %i.ch = lshr i64 %i.cg, 45
  %i.ci = lshr i64 %i.cg, 27
  %i.cj = xor i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = lshr i64 %i.cg, 59
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = call noundef i32 @llvm.fshr.i32(i32 %i.ck, i32 %i.ck, i32 range(i32 0, 32) %i.cm)
  %i.co = mul i64 %i.cg, 6364136223846793005
  %i.cp = add i64 %i.co, -6812164046247290893     ; 4 uses
  %i.cq = lshr i64 %i.cp, 45
  %i.cr = lshr i64 %i.cp, 27
  %i.cs = xor i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  %i.cu = lshr i64 %i.cp, 59
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = call noundef i32 @llvm.fshr.i32(i32 %i.ct, i32 %i.ct, i32 range(i32 0, 32) %i.cv)
  %i.cx = mul i64 %i.cp, 6364136223846793005
  %i.cy = add i64 %i.cx, -6812164046247290893     ; 4 uses
  %i.cz = lshr i64 %i.cy, 45
  %i.da = lshr i64 %i.cy, 27
  %i.db = xor i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %i.dd = lshr i64 %i.cy, 59
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = call noundef i32 @llvm.fshr.i32(i32 %i.dc, i32 %i.dc, i32 range(i32 0, 32) %i.de)
  %i.dg = mul i64 %i.cy, 6364136223846793005
  %i.dh = add i64 %i.dg, -6812164046247290893     ; 4 uses
  %i.di = lshr i64 %i.dh, 45
  %i.dj = lshr i64 %i.dh, 27
  %i.dk = xor i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = lshr i64 %i.dh, 59
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = call noundef i32 @llvm.fshr.i32(i32 %i.dl, i32 %i.dl, i32 range(i32 0, 32) %i.dn)
  %i.dp = mul i64 %i.dh, 6364136223846793005
  %i.dq = add i64 %i.dp, -6812164046247290893     ; 4 uses
  %i.dr = lshr i64 %i.dq, 45
  %i.ds = lshr i64 %i.dq, 27
  %i.dt = xor i64 %i.dr, %i.ds
  %i.du = trunc i64 %i.dt to i32                  ; 2 uses
  %i.dv = lshr i64 %i.dq, 59
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = call noundef i32 @llvm.fshr.i32(i32 %i.du, i32 %i.du, i32 range(i32 0, 32) %i.dw)
  %i.dy = mul i64 %i.dq, 6364136223846793005
  %i.dz = add i64 %i.dy, -6812164046247290893     ; 4 uses
  %i.ea = lshr i64 %i.dz, 45
  %i.eb = lshr i64 %i.dz, 27
  %i.ec = xor i64 %i.ea, %i.eb
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = lshr i64 %i.dz, 59
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = call noundef i32 @llvm.fshr.i32(i32 %i.ed, i32 %i.ed, i32 range(i32 0, 32) %i.ef)
  %i.eh = mul i64 %i.dz, 6364136223846793005
  %i.ei = add i64 %i.eh, -6812164046247290893     ; 3 uses
  %i.ej = lshr i64 %i.ei, 45
  %i.ek = lshr i64 %i.ei, 27
  %i.el = xor i64 %i.ej, %i.ek
  %i.em = trunc i64 %i.el to i32                  ; 2 uses
  %i.en = lshr i64 %i.ei, 59
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = call noundef i32 @llvm.fshr.i32(i32 %i.em, i32 %i.em, i32 range(i32 0, 32) %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !113192
  store i32 %i.ce, ptr %i.h, align 4, !noalias !113192
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.cn, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !113192
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.cw, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !113192
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.df, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !113192
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.do, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !113192
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %i.dx, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !113192
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %i.eg, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !113192
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.ep, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !113192
  call void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.h), !noalias !113191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !113192
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !113191
  call fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.k), !noalias !113191
  call void @llvm.experimental.noalias.scope.decl(metadata !113193)
  call void @llvm.experimental.noalias.scope.decl(metadata !113194)
  %i.eq = load i32, ptr %i.k, align 16, !range !65, !alias.scope !113194, !noalias !113191, !noundef !56
  %i.er = trunc nuw i32 %i.eq to i1
  br i1 %i.er, label %bb.r, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !60

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !113195
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.et = load i32, ptr %i.es, align 4, !range !159, !alias.scope !113194, !noalias !113191, !noundef !56
  store i32 %i.et, ptr %i.i, align 4, !noalias !113195
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1549, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @649) #60, !noalias !113196
  unreachable

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ev = load i128, ptr %i.eu, align 16, !alias.scope !113194, !noalias !113191, !noundef !56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ex = load i128, ptr %i.ew, align 16, !alias.scope !113194, !noalias !113191, !noundef !56
  store i128 %i.ev, ptr %i.l, align 16, !alias.scope !113193, !noalias !113191
  %i.ey = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i128 %i.ex, ptr %i.ey, align 16, !alias.scope !113193, !noalias !113191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !113191
  br label %bb.s

bb.s:                                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !113191
  %i.ez = add i64 %i.ay, %i.ap                    ; 4 uses
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_NtB7_10UndirectedE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.j, i64 noundef %i.ez, i64 noundef %i.ez), !noalias !113191
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false), !alias.scope !113197, !noalias !113191
  store i32 -1, ptr %i.fb, align 8, !alias.scope !113197, !noalias !113191
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  store i32 -1, ptr %i.fc, align 4, !alias.scope !113197, !noalias !113191
  %.not.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.s
  %.not56.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not56.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.i, label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %.preheader.i.i
  %.not57.i.i = icmp eq i64 %i.ay, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fe = load i128, ptr %i.fd, align 16, !noalias !113191
  br i1 %.not57.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.i, label %.lr.ph36.us.i.preheader.i

.lr.ph36.us.i.preheader.i:                        ; preds = %.lr.ph44.i.i
  %.promoted37.i.i = load i128, ptr %i.l, align 16, !noalias !113191
  br label %.lr.ph36.us.i.i

.lr.ph36.us.i.i:                                  ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph36.us.i.preheader.i
  %.sroa.05.043.us.i.i = phi i64 [ %i.ff, %..loopexit_crit_edge.us.i.i ], [ 0, %.lr.ph36.us.i.preheader.i ] ; 2 uses
  %.lcssa313842.us.i.i = phi i128 [ %i.fk, %..loopexit_crit_edge.us.i.i ], [ %.promoted37.i.i, %.lr.ph36.us.i.preheader.i ]
  %i.ff = add nuw i64 %.sroa.05.043.us.i.i, 1     ; 2 uses
  %i.fg = trunc i64 %.sroa.05.043.us.i.i to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph36.us.i.i
  %.sroa.07.035.us.i.i = phi i64 [ 0, %.lr.ph36.us.i.i ], [ %i.fi, %bb.w ] ; 2 uses
  %i.fh = phi i128 [ %.lcssa313842.us.i.i, %.lr.ph36.us.i.i ], [ %i.fk, %bb.w ]
  %i.fi = add nuw i64 %.sroa.07.035.us.i.i, 1     ; 2 uses
  %i.fj = mul i128 %i.fh, 47026247687942121848144207491837523525
  %i.fk = add i128 %i.fj, %i.fe                   ; 5 uses
  %i.fl = lshr i128 %i.fk, 122
  %i.fm = trunc nuw nsw i128 %i.fl to i64
  %i.fn = lshr i128 %i.fk, 64
  %i.fo = xor i128 %i.fn, %i.fk
  %i.fp = trunc i128 %i.fo to i64                 ; 2 uses
  %i.fq = call noundef i64 @llvm.fshr.i64(i64 %i.fp, i64 %i.fp, i64 %i.fm)
  %i.fr = lshr i64 %i.fq, 12
  %i.fs = or disjoint i64 %i.fr, 4607182418800017408
  %i.ft = bitcast i64 %i.fs to double
  %i.fu = fadd nnan double %i.ft, -1.000000e+00
  %i.fv = fcmp olt double %i.fu, %i.bh
  br i1 %i.fv, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fw = add i64 %.sroa.07.035.us.i.i, %i.ap
  %i.fx = trunc i64 %i.fw to i32
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !113191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !113198
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.fg, i32 noundef %i.fx, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc13.us.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113191

.noexc13.us.i.i:                                  ; preds = %bb.u
  %i.fy = load i64, ptr %i.g, align 8, !range !107, !noalias !113198, !noundef !56 ; 3 uses
  %cond.i.i.us.i.i = icmp eq i64 %i.fy, 2
  br i1 %cond.i.i.us.i.i, label %.split.us.i.i, label %bb.v, !prof !68

bb.v:                                             ; preds = %.noexc13.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !113199)
  %.not.i.i.i.us.i.i = icmp eq i64 %i.fy, -1
  br i1 %.not.i.i.i.us.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.us.i.i, label %.split51.us.i.i, !prof !66

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.us.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !113198
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit.us.i.i, %bb.t
  %exitcond66.not.i.i = icmp eq i64 %i.fi, %i.ay
  br i1 %exitcond66.not.i.i, label %..loopexit_crit_edge.us.i.i, label %bb.t

..loopexit_crit_edge.us.i.i:                      ; preds = %bb.w
  %exitcond67.not.i.i = icmp eq i64 %i.ff, %i.ap
  br i1 %exitcond67.not.i.i, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.i, label %.lr.ph36.us.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %.lr.ph.i.i, %.split.us.i.i, %.split51.us.invoke.i.i
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.x, !noalias !113191

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ga) #63
          to label %.body.i unwind label %bb.y, !noalias !113191

bb.y:                                             ; preds = %bb.x
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !113200
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gc = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.gc)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.aa, !noalias !113201

.split51.us.i.i:                                  ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113202
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !113199, !noalias !113198
  store i64 %i.fy, ptr %i.d, align 8, !noalias !113202
  br label %.split51.us.invoke.i.i

.split51.us.invoke.i.i:                           ; preds = %bb.z, %.split51.us.i.i
  %.sink83.i.sroa.phi.i = phi ptr [ %.sink83.i.sroa.gep.i, %bb.z ], [ %.sink83.i.sroa.gep36.i, %.split51.us.i.i ]
  %.sink83.i.i = phi ptr [ %i.b, %bb.z ], [ %i.d, %.split51.us.i.i ]
  %.sink.i.i = phi i64 [ %i.gl, %bb.z ], [ %i.ge, %.split51.us.i.i ]
  %i.gf = phi ptr [ @4180, %bb.z ], [ @650, %.split51.us.i.i ]
  store i64 %.sink.i.i, ptr %.sink83.i.sroa.phi.i, align 8, !noalias !113191
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %.sink83.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gf) #60
          to label %.split51.us.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113191

.split51.us.cont.i.i:                             ; preds = %.split51.us.invoke.i.i
  unreachable

.split.us.i.i:                                    ; preds = %.noexc13.us.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !113198
  %i.gh = load i64, ptr %i.gg, align 8, !noalias !113198, !noundef !56
  store i64 %i.gh, ptr %i.f, align 8, !noalias !113198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !113198
  store ptr %i.f, ptr %i.e, align 8, !noalias !113198
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !113198
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1721, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @650) #60
          to label %.noexc15.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113191

.noexc15.i.i:                                     ; preds = %.split.us.i.i
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.s, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.09.030.i.i = phi i64 [ %i.gi, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %bb.s ]
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !113191
  %i.gi = add nuw i64 %.sroa.09.030.i.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113203
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113191

.noexc16.i.i:                                     ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !113204)
  %i.gj = load i64, ptr %i.c, align 8, !range !107, !alias.scope !113204, !noalias !113203, !noundef !56 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.gj, -1
  br i1 %.not.i.i.i.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.z, !prof !66

bb.z:                                             ; preds = %.noexc16.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113205
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !113204, !noalias !113203
  store i64 %i.gj, ptr %i.b, align 8, !noalias !113205
  br label %.split51.us.invoke.i.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113203
  %exitcond.not.i.i = icmp eq i64 %i.gi, %i.ez
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.x
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !113191
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp191

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.i: ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph44.i.i, %.preheader.i.i
  %.sroa.032.0.copyload33.i = load i64, ptr %i.j, align 8, !noalias !113201 ; 2 uses
  %.sroa.8.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8.i.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx34.i, align 8, !noalias !113201
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx34.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gn = load <2 x i64>, ptr %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx34.i.sroa_idx, align 8, !noalias !113201
  %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx34.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.go = load <2 x ptr>, ptr %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx34.i.sroa_idx, align 8, !noalias !113201
  %.sroa.8.i.sroa.9.0.copyload = load ptr, ptr %i.fa, align 8, !noalias !113201
  %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx34.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.8.i.sroa.10.0.copyload = load i64, ptr %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx34.i.sroa_idx, align 8, !noalias !113201
  %i.gp = load <2 x i32>, ptr %i.fb, align 8, !noalias !113201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !113191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !113191
  %i.gq = icmp eq i64 %.sroa.032.0.copyload33.i, -1
  br i1 %i.gq, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.thread.i, label %bb.ad

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.thread.i: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.i, %bb.n, %_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !113201
  %i.gr = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !113201 ; 4 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ab, label %bb.ac, !prof !88

bb.ab:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.thread.i
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !113201
  unreachable

bb.ac:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.thread.i
  store ptr @2730, ptr %i.gr, align 8, !noalias !113201
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 72, ptr %i.gt, align 8, !noalias !113201
  %i.gu = insertelement <2 x ptr> <ptr poison, ptr @518>, ptr %i.gr, i64 0
  br label %bb.ae

bb.ad:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph22random_bipartite_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph33undirected_random_bipartite_graph0B3X_B2v_EB43_.exit.i
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !113201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %.sroa.032.0.copyload33.i, ptr %i.u, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.8.i.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> %i.gn, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.1168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store <2 x ptr> %i.go, ptr %.sroa.1168.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %.sroa.8.i.sroa.9.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %.sroa.8.i.sroa.10.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.1473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store <2 x i32> %i.gp, ptr %.sroa.1473.0..sroa_idx, align 8
  %.sroa.1576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr @_Py_NoneStruct, ptr %.sroa.1576.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i8 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 81
  store i8 1, ptr %.sroa.17.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113206
  call fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphE19create_class_objectB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.u), !noalias !113207, !inline_history !44
  %i.gv = load i64, ptr %i.a, align 8, !range !57, !noalias !113206, !noundef !56
  %i.gw = trunc nuw i64 %i.gv to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.8.copyload79 = load ptr, ptr %i.gx, align 8, !noalias !113208 ; 2 uses
  br i1 %i.gw, label %_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.af

_RNvYNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.ad
  %.sroa.1080.8..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gy = load <2 x i64>, ptr %.sroa.1080.8..sroa_idx82, align 8, !noalias !113208
  %.sroa.1080.sroa.6.0..sroa.1080.8..sroa_idx82.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1080.sroa.6.0.copyload92 = load ptr, ptr %.sroa.1080.sroa.6.0..sroa.1080.8..sroa_idx82.sroa_idx, align 8, !noalias !113208
  %.sroa.1080.sroa.7.0..sroa.1080.8..sroa_idx82.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gz = load <2 x ptr>, ptr %.sroa.1080.sroa.7.0..sroa.1080.8..sroa_idx82.sroa_idx, align 8, !noalias !113208
end_hunk_9
begin_hunk_10_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout19graph_spring_layout:bb.a
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call noundef i32 @llvm.fshr.i32(i32 %i.br, i32 %i.br, i32 range(i32 0, 32) %i.bt)
  %i.bv = mul i64 %i.bn, 6364136223846793005
  %i.bw = add i64 %i.bv, -6812164046247290893     ; 4 uses
  %i.bx = lshr i64 %i.bw, 45
  %i.by = lshr i64 %i.bw, 27
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i64 %i.bw, 59
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = tail call noundef i32 @llvm.fshr.i32(i32 %i.ca, i32 %i.ca, i32 range(i32 0, 32) %i.cc)
  %i.ce = mul i64 %i.bw, 6364136223846793005
  %i.cf = add i64 %i.ce, -6812164046247290893     ; 3 uses
  %i.cg = lshr i64 %i.cf, 45
  %i.ch = lshr i64 %i.cf, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %i.cf, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = tail call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 range(i32 0, 32) %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !131338
  store i32 %i.ab, ptr %i.i, align 4, !noalias !131338
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !131338
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.at, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !131338
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.bc, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !noalias !131338
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.bl, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !131338
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.bu, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !131338
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.cd, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !noalias !131338
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.cm, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !131338
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.i)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !131337

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !131338
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !131337
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.m)
          to label %bb.k unwind label %bb.j, !noalias !131337

.thread.i:                                        ; preds = %bb.ev, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i, %bb.eu, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body389.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i, %bb.j
  %.sroa.063.0.i = phi i8 [ %.sroa.063.1.i, %bb.j ], [ 0, %bb.ev ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body389.i ], [ 0, %bb.eu ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %.sroa.061.0.i = phi i8 [ 1, %bb.j ], [ 1, %bb.ev ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body389.i ], [ %.sroa.061.3.ph.i, %bb.eu ], [ %.sroa.061.3.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %.pn186.i = phi { ptr, i32 } [ %i.cq, %bb.j ], [ %i.ago, %bb.ev ], [ %eh.lpad-body.i291.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ %eh.lpad-body.i291.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ %eh.lpad-body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %eh.lpad-body390.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %eh.lpad-body390.i, %.body389.i ], [ %.pn182.ph.i, %bb.eu ], [ %.pn182.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %i.cn = icmp eq ptr %10, null
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.co = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i1 = load i64, ptr %i.co, align 8, !noalias !131337, !noundef !56
  %i.cp = icmp sgt i64 %.val.i.i.i.i.i1, 0
  br i1 %i.cp, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %10)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.ei

bb.i:                                             ; preds = %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %10) #59, !noalias !131337
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.p, %bb.o, %bb.l, %bb.f, %bb.e, %bb.d
  %.sroa.063.1.i = phi i8 [ 1, %bb.d ], [ 0, %bb.o ], [ 0, %bb.p ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.l ]
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131340)
  %i.cr = load i32, ptr %i.m, align 16, !range !65, !alias.scope !131340, !noalias !131337, !noundef !56
  %i.cs = trunc nuw i32 %i.cr to i1
  br i1 %i.cs, label %bb.l, label %bb.m, !prof !60

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !131341
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !range !159, !alias.scope !131340, !noalias !131337, !noundef !56
  store i32 %i.cu, ptr %i.j, align 4, !noalias !131341
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1549, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1084) #60
          to label %.noexc.i unwind label %bb.j, !noalias !131337

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cw = load i128, ptr %i.cv, align 16, !alias.scope !131340, !noalias !131337, !noundef !56
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cy = load i128, ptr %i.cx, align 16, !alias.scope !131340, !noalias !131337, !noundef !56
  store i128 %i.cw, ptr %i.n, align 16, !alias.scope !131339, !noalias !131337
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i128 %i.cy, ptr %i.cz, align 16, !alias.scope !131339, !noalias !131337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !131337
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.537.sroa.0.0.copyload.i = load i64, ptr %.sroa.537.0..sroa_idx.i, align 8, !alias.scope !131334
  %.sroa.537.sroa.4.sroa.4.0..sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.537.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.537.sroa.4.sroa.4.0..sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !131334
  br i1 %.not175.i, label %bb.o, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i

bb.o:                                             ; preds = %bb.n
  %i.da = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc229.i unwind label %bb.j, !noalias !131337 ; 0 uses

.noexc229.i:                                      ; preds = %bb.o
  %i.db = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !131342
  %i.dc = icmp eq i8 %i.db, 2
  br i1 %i.dc, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.p, !prof !66

bb.p:                                             ; preds = %.noexc229.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !131337

_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.p, %.noexc229.i, %bb.n
  %.sroa.9.sroa.6.0.i = phi i64 [ %.sroa.537.sroa.4.sroa.4.0.copyload.i, %bb.n ], [ 0, %bb.p ], [ 0, %.noexc229.i ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ %.sroa.537.sroa.0.0.copyload.i, %bb.n ], [ 0, %bb.p ], [ 0, %.noexc229.i ] ; 4 uses
  %.sroa.0417.0.i = phi ptr [ %i.p, %bb.n ], [ @111, %bb.p ], [ @111, %.noexc229.i ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val199.i = load ptr, ptr %i.dd, align 8, !alias.scope !131333, !nonnull !56, !noundef !56 ; 12 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val200.i = load i64, ptr %i.de, align 8, !alias.scope !131333, !noundef !56 ; 6 uses
  %.idx = shl nuw nsw i64 %.val200.i, 4
  %i.df = getelementptr inbounds nuw i8, ptr %.val199.i, i64 %.idx ; 12 uses
  %.not.i.i606 = icmp eq i64 %.val200.i, 0
  br i1 %.not.i.i606, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %.val199.i, %i.dh
  br i1 %.not.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, %bb.q
  %i.dg = phi ptr [ %i.dh, %bb.q ], [ %i.df, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -16 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !131343, !noundef !56
  %.not.i.not.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.not.i.i.i, label %bb.q, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %.val199.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  %i.dl = lshr exact i64 %i.dk, 4
  %i.dm = and i64 %i.dl, 4294967295               ; 2 uses
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 4                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131344
  %i.dp = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131344 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.r, label %.lr.ph.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.do) #61
          to label %.noexc231.i unwind label %bb.ev, !noalias !131337

.noexc231.i:                                      ; preds = %bb.r
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ds = load i128, ptr %i.dr, align 16, !noalias !131345, !noundef !56 ; 2 uses
  %.promoted.i = load i128, ptr %i.n, align 16, !noalias !131345
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dt = phi i128 [ %.promoted.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.eg, %bb.s ]
  %i.du = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dv, %bb.s ] ; 3 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = mul i128 %i.dt, 47026247687942121848144207491837523525
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.du
  %i.dy = add i128 %i.dw, %i.ds                   ; 4 uses
  %i.dz = lshr i128 %i.dy, 122
  %i.ea = trunc nuw nsw i128 %i.dz to i64
  %i.eb = lshr i128 %i.dy, 64
  %i.ec = xor i128 %i.eb, %i.dy
  %i.ed = trunc i128 %i.ec to i64                 ; 2 uses
  %i.ee = call noundef i64 @llvm.fshr.i64(i64 %i.ed, i64 %i.ed, i64 %i.ea)
  %i.ef = mul i128 %i.dy, 47026247687942121848144207491837523525
  %i.eg = add i128 %i.ef, %i.ds                   ; 5 uses
  %i.eh = lshr i128 %i.eg, 122
  %i.ei = trunc nuw nsw i128 %i.eh to i64
  %i.ej = lshr i128 %i.eg, 64
  %i.ek = xor i128 %i.ej, %i.eg
  %i.el = trunc i128 %i.ek to i64                 ; 2 uses
  %i.em = call noundef i64 @llvm.fshr.i64(i64 %i.el, i64 %i.el, i64 %i.ei)
  %i.en = insertelement <2 x i64> poison, i64 %i.ee, i64 0
  %i.eo = insertelement <2 x i64> %i.en, i64 %i.em, i64 1
  %i.ep = lshr <2 x i64> %i.eo, splat (i64 12)
  %i.eq = or disjoint <2 x i64> %i.ep, splat (i64 4607182418800017408)
  %i.er = bitcast <2 x i64> %i.eq to <2 x double>
  %i.es = fadd nnan <2 x double> %i.er, splat (double -1.000000e+00)
  store <2 x double> %i.es, ptr %i.dx, align 8, !noalias !131346
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.du, %i.dm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i, label %bb.s

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i: ; preds = %bb.s
  store i128 %i.eg, ptr %i.n, align 16, !noalias !131345
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i: ; preds = %bb.q, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i
  %i.et = phi ptr [ %i.dp, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ], [ inttoptr (i64 8 to ptr), %bb.q ] ; 26 uses
  %.sroa.49.0.i.i939.i = phi i64 [ %i.dn, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i ], [ 0, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %bb.q ] ; 34 uses
  %.val24.i.i.i.i = load <16 x i8>, ptr %.sroa.0417.0.i, align 16, !noalias !131347
  %i.eu = icmp eq i64 %.sroa.7.0.i, 0             ; 3 uses
  br i1 %i.eu, label %bb.u, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i
  %i.ev = mul i64 %.sroa.7.0.i, 24                ; 2 uses
  %i.ew = add i64 %i.ev, 24
  %i.ex = icmp ult i64 %i.ew, -15
  call void @llvm.assume(i1 %i.ex)
  %i.ey = and i64 %i.ev, -16                      ; 2 uses
  %i.ez = add i64 %i.ey, 32                       ; 2 uses
  %i.fa = add i64 %.sroa.7.0.i, 17
  %i.fb = add i64 %i.fa, %i.ez                    ; 3 uses
  %i.fc = icmp uge i64 %i.fb, %i.ez
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp ult i64 %i.fb, 9223372036854775793
  call void @llvm.assume(i1 %i.fd)
  %i.fe = sub i64 -32, %i.ey
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0417.0.i, i64 %i.fe
  br label %bb.u

bb.t:                                             ; preds = %bb.z, %bb.y
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.u:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i
  %.sroa.513.0.i.i.i = phi ptr [ undef, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i ], [ %i.ff, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  %.sroa.412.0.i.i.i = phi i64 [ undef, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i ], [ %i.fb, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i = phi i64 [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i ], [ 16, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 2 uses
  %i.fh = icmp eq i64 %.sroa.9.sroa.6.0.i, 0
  br i1 %i.fh, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.fi = icmp sgt <16 x i8> %.val24.i.i.i.i, splat (i8 -1)
  %i.fj = bitcast <16 x i1> %i.fi to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0417.0.i, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.er, %.lr.ph.preheader.i
  %.sroa.11.0719.i = phi ptr [ %.sroa.11.1.i, %bb.er ], [ %.sroa.0417.0.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.15.0718.i = phi ptr [ %.sroa.15.1.i, %bb.er ], [ %i.fk, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.19.0717.i = phi i16 [ %i.agj, %bb.er ], [ %i.fj, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.23.0716.i = phi i64 [ %i.agh, %bb.er ], [ %.sroa.9.sroa.6.0.i, %.lr.ph.preheader.i ]
  %.not10.i.i = icmp eq i16 %.sroa.19.0717.i, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %i.fl = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %.sroa.15.0718.i, %.lr.ph.i ] ; 2 uses
  %i.fm = phi ptr [ %i.fo, %.lr.ph.i.i ], [ %.sroa.11.0719.i, %.lr.ph.i ]
  %.val68.i.i = load <16 x i8>, ptr %i.fl, align 16, !noalias !131348
  %i.fn = icmp sgt <16 x i8> %.val68.i.i, splat (i8 -1)
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 -384 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.fn to i16     ; 2 uses
  %.not.i237.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i237.i, label %.lr.ph.i.i, label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.er, %bb.u
  %i.fq = icmp eq i64 %.sroa.412.0.i.i.i, 0
  %or.cond581.i = or i1 %i.eu, %i.fq
  br i1 %or.cond581.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i, i64 noundef %.sroa.412.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #59, !noalias !131349
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i

bb.w:                                             ; preds = %bb.es
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = icmp eq i64 %.sroa.412.0.i.i.i, 0
  %or.cond582.i = or i1 %i.eu, %i.fs
  br i1 %or.cond582.i, label %bb.eu, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i, i64 noundef %.sroa.412.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #59, !noalias !131350
  br label %bb.eu

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.15.1.i = phi ptr [ %.sroa.15.0718.i, %.lr.ph.i ], [ %i.fp, %.lr.ph.i.i ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0719.i, %.lr.ph.i ], [ %i.fo, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.19.0717.i, %.lr.ph.i ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ft = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr inbounds [24 x i8], ptr %.sroa.11.1.i, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -24
  %.sroa.0151.0.copyload.i = load i64, ptr %i.fx, align 8, !noalias !131337 ; 3 uses
  %.sroa.5152.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fw, i64 -16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5152.0..sroa_idx.i, i64 16, i1 false), !noalias !131337
  %i.fy = icmp ult i64 %.sroa.0151.0.copyload.i, %.sroa.49.0.i.i939.i
  br i1 %i.fy, label %bb.er, label %bb.es

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.v, %._crit_edge.i
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.544.sroa.0.0.copyload.i = load i64, ptr %.sroa.544.0..sroa_idx.i, align 8, !alias.scope !131335
  %.sroa.544.sroa.4.sroa.4.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.544.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.544.sroa.4.sroa.4.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !131335
  %.sroa.544.sroa.4.sroa.5.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.544.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.544.sroa.4.sroa.5.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !131335
  br i1 %.not.i, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %i.fz = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc241.i unwind label %bb.t, !noalias !131337 ; 2 uses

.noexc241.i:                                      ; preds = %bb.y
  %i.ga = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !131351
  %i.gb = icmp eq i8 %i.ga, 2
  br i1 %i.gb, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.z, !prof !66

bb.z:                                             ; preds = %.noexc241.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.t, !noalias !131337

_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.z, %.noexc241.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.12457.sroa.8.0.i = phi i64 [ %.sroa.544.sroa.4.sroa.5.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.fz, %.noexc241.i ], [ %i.fz, %bb.z ] ; 2 uses
  %.sroa.12457.sroa.7.0.i = phi i64 [ %.sroa.544.sroa.4.sroa.4.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %.noexc241.i ], [ 0, %bb.z ]
  %.sroa.9.0.i = phi i64 [ %.sroa.544.sroa.0.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %.noexc241.i ], [ 0, %bb.z ] ; 25 uses
  %.sroa.0450.0.i = phi ptr [ %i.o, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ @111, %.noexc241.i ], [ @111, %bb.z ] ; 9 uses
  %.fr219.i.i = freeze i64 %.sroa.12457.sroa.7.0.i ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !131333, !noundef !56
  %i.ge = uitofp i64 %i.gd to double
  %i.gf = call double @llvm.sqrt.f64(double %i.ge)
  %i.gg = fdiv double 1.000000e+00, %i.gf
  %i.gh = trunc nuw i64 %4 to i1
  %.sroa.046.0.i = select i1 %i.gh, double %5, double %i.gg ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !131337
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !131333, !noundef !56
  %i.gk = shl i64 %i.gj, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !131352)
  %i.gl = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc243.i unwind label %bb.ab, !noalias !131337

.noexc243.i:                                      ; preds = %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !131353
  %i.gn = icmp eq i8 %i.gm, 2
  br i1 %i.gn, label %.noexc244.i, label %bb.aa, !prof !66

bb.aa:                                            ; preds = %.noexc243.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc244.i unwind label %bb.ab, !noalias !131337

.noexc244.i:                                      ; preds = %bb.aa, %.noexc243.i
  invoke fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.l, i64 noundef 24, i64 noundef %i.gk) #64
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc244.i, %bb.aa, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ac:                                            ; preds = %.noexc244.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  store i64 %i.gl, ptr %i.gp, align 8, !alias.scope !131354, !noalias !131337
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !131333, !nonnull !56, !noundef !56 ; 10 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !131333, !noundef !56 ; 9 uses
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.gt
  %.not.i249.i = icmp eq ptr %10, null            ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %.backedge744, %bb.ac
  %i.gx = phi ptr [ %i.gr, %bb.ac ], [ %i.gz, %.backedge744 ] ; 4 uses
  %i.gy = icmp eq ptr %i.gx, %i.gu
  br i1 %i.gy, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.ha = load ptr, ptr %i.gx, align 8, !alias.scope !131355, !noalias !131356, !noundef !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i, label %.backedge744, label %bb.af

.backedge744:                                     ; preds = %bb.ae, %bb.ek
  br label %bb.ad

.thread568.i:                                     ; preds = %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread945.i, %bb.ek, %bb.ag
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep
end_hunk_10
begin_hunk_11_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout21digraph_spring_layout:bb.a
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call noundef i32 @llvm.fshr.i32(i32 %i.br, i32 %i.br, i32 range(i32 0, 32) %i.bt)
  %i.bv = mul i64 %i.bn, 6364136223846793005
  %i.bw = add i64 %i.bv, -6812164046247290893     ; 4 uses
  %i.bx = lshr i64 %i.bw, 45
  %i.by = lshr i64 %i.bw, 27
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i64 %i.bw, 59
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = tail call noundef i32 @llvm.fshr.i32(i32 %i.ca, i32 %i.ca, i32 range(i32 0, 32) %i.cc)
  %i.ce = mul i64 %i.bw, 6364136223846793005
  %i.cf = add i64 %i.ce, -6812164046247290893     ; 3 uses
  %i.cg = lshr i64 %i.cf, 45
  %i.ch = lshr i64 %i.cf, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %i.cf, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = tail call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 range(i32 0, 32) %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !131923
  store i32 %i.ab, ptr %i.i, align 4, !noalias !131923
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !131923
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.at, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !131923
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.bc, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !noalias !131923
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.bl, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !131923
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.bu, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !131923
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.cd, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !noalias !131923
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.cm, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !131923
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.i)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !131922

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !131923
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !131922
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.m)
          to label %bb.k unwind label %bb.j, !noalias !131922

.thread.i:                                        ; preds = %bb.ev, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i, %bb.eu, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body389.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i, %bb.j
  %.sroa.063.0.i = phi i8 [ %.sroa.063.1.i, %bb.j ], [ 0, %bb.ev ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body389.i ], [ 0, %bb.eu ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %.sroa.061.0.i = phi i8 [ 1, %bb.j ], [ 1, %bb.ev ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body389.i ], [ %.sroa.061.3.ph.i, %bb.eu ], [ %.sroa.061.3.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %.pn186.i = phi { ptr, i32 } [ %i.cq, %bb.j ], [ %i.agp, %bb.ev ], [ %eh.lpad-body.i291.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit414.i ], [ %eh.lpad-body.i291.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit410.i ], [ %eh.lpad-body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %eh.lpad-body390.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %eh.lpad-body390.i, %.body389.i ], [ %.pn182.ph.i, %bb.eu ], [ %.pn182.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i402.i ] ; 3 uses
  %i.cn = icmp eq ptr %11, null
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.co = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i1 = load i64, ptr %i.co, align 8, !noalias !131922, !noundef !56
  %i.cp = icmp sgt i64 %.val.i.i.i.i.i1, 0
  br i1 %i.cp, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %11)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.ei

bb.i:                                             ; preds = %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %11) #59, !noalias !131922
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.p, %bb.o, %bb.l, %bb.f, %bb.e, %bb.d
  %.sroa.063.1.i = phi i8 [ 1, %bb.d ], [ 0, %bb.o ], [ 0, %bb.p ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.l ]
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131925)
  %i.cr = load i32, ptr %i.m, align 16, !range !65, !alias.scope !131925, !noalias !131922, !noundef !56
  %i.cs = trunc nuw i32 %i.cr to i1
  br i1 %i.cs, label %bb.l, label %bb.m, !prof !60

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !131926
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !range !159, !alias.scope !131925, !noalias !131922, !noundef !56
  store i32 %i.cu, ptr %i.j, align 4, !noalias !131926
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1549, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1084) #60
          to label %.noexc.i unwind label %bb.j, !noalias !131922

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cw = load i128, ptr %i.cv, align 16, !alias.scope !131925, !noalias !131922, !noundef !56
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cy = load i128, ptr %i.cx, align 16, !alias.scope !131925, !noalias !131922, !noundef !56
  store i128 %i.cw, ptr %i.n, align 16, !alias.scope !131924, !noalias !131922
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i128 %i.cy, ptr %i.cz, align 16, !alias.scope !131924, !noalias !131922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !131922
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.537.sroa.0.0.copyload.i = load i64, ptr %.sroa.537.0..sroa_idx.i, align 8, !alias.scope !131919
  %.sroa.537.sroa.4.sroa.4.0..sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.537.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.537.sroa.4.sroa.4.0..sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !131919
  br i1 %.not175.i, label %bb.o, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i

bb.o:                                             ; preds = %bb.n
  %i.da = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc229.i unwind label %bb.j, !noalias !131922 ; 0 uses

.noexc229.i:                                      ; preds = %bb.o
  %i.db = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !131927
  %i.dc = icmp eq i8 %i.db, 2
  br i1 %i.dc, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.p, !prof !66

bb.p:                                             ; preds = %.noexc229.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !131922

_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.p, %.noexc229.i, %bb.n
  %.sroa.9.sroa.6.0.i = phi i64 [ %.sroa.537.sroa.4.sroa.4.0.copyload.i, %bb.n ], [ 0, %bb.p ], [ 0, %.noexc229.i ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ %.sroa.537.sroa.0.0.copyload.i, %bb.n ], [ 0, %bb.p ], [ 0, %.noexc229.i ] ; 4 uses
  %.sroa.0417.0.i = phi ptr [ %i.p, %bb.n ], [ @111, %bb.p ], [ @111, %.noexc229.i ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val199.i = load ptr, ptr %i.dd, align 8, !alias.scope !131918, !nonnull !56, !noundef !56 ; 12 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val200.i = load i64, ptr %i.de, align 8, !alias.scope !131918, !noundef !56 ; 6 uses
  %.idx = shl nuw nsw i64 %.val200.i, 4
  %i.df = getelementptr inbounds nuw i8, ptr %.val199.i, i64 %.idx ; 12 uses
  %.not.i.i606 = icmp eq i64 %.val200.i, 0
  br i1 %.not.i.i606, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %.val199.i, %i.dh
  br i1 %.not.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, %bb.q
  %i.dg = phi ptr [ %i.dh, %bb.q ], [ %i.df, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -16 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !131928, !noundef !56
  %.not.i.not.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.not.i.i.i, label %bb.q, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %.val199.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  %i.dl = lshr exact i64 %i.dk, 4
  %i.dm = and i64 %i.dl, 4294967295               ; 2 uses
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 4                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131929
  %i.dp = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131929 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.r, label %.lr.ph.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.do) #61
          to label %.noexc231.i unwind label %bb.ev, !noalias !131922

.noexc231.i:                                      ; preds = %bb.r
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ds = load i128, ptr %i.dr, align 16, !noalias !131930, !noundef !56 ; 2 uses
  %.promoted.i = load i128, ptr %i.n, align 16, !noalias !131930
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dt = phi i128 [ %.promoted.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.eg, %bb.s ]
  %i.du = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dv, %bb.s ] ; 3 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = mul i128 %i.dt, 47026247687942121848144207491837523525
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.du
  %i.dy = add i128 %i.dw, %i.ds                   ; 4 uses
  %i.dz = lshr i128 %i.dy, 122
  %i.ea = trunc nuw nsw i128 %i.dz to i64
  %i.eb = lshr i128 %i.dy, 64
  %i.ec = xor i128 %i.eb, %i.dy
  %i.ed = trunc i128 %i.ec to i64                 ; 2 uses
  %i.ee = call noundef i64 @llvm.fshr.i64(i64 %i.ed, i64 %i.ed, i64 %i.ea)
  %i.ef = mul i128 %i.dy, 47026247687942121848144207491837523525
  %i.eg = add i128 %i.ef, %i.ds                   ; 5 uses
  %i.eh = lshr i128 %i.eg, 122
  %i.ei = trunc nuw nsw i128 %i.eh to i64
  %i.ej = lshr i128 %i.eg, 64
  %i.ek = xor i128 %i.ej, %i.eg
  %i.el = trunc i128 %i.ek to i64                 ; 2 uses
  %i.em = call noundef i64 @llvm.fshr.i64(i64 %i.el, i64 %i.el, i64 %i.ei)
  %i.en = insertelement <2 x i64> poison, i64 %i.ee, i64 0
  %i.eo = insertelement <2 x i64> %i.en, i64 %i.em, i64 1
  %i.ep = lshr <2 x i64> %i.eo, splat (i64 12)
  %i.eq = or disjoint <2 x i64> %i.ep, splat (i64 4607182418800017408)
  %i.er = bitcast <2 x i64> %i.eq to <2 x double>
  %i.es = fadd nnan <2 x double> %i.er, splat (double -1.000000e+00)
  store <2 x double> %i.es, ptr %i.dx, align 8, !noalias !131931
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.du, %i.dm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i, label %bb.s

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i: ; preds = %bb.s
  store i128 %i.eg, ptr %i.n, align 16, !noalias !131930
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i: ; preds = %bb.q, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i
  %i.et = phi ptr [ %i.dp, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ], [ inttoptr (i64 8 to ptr), %bb.q ] ; 26 uses
  %.sroa.49.0.i.i939.i = phi i64 [ %i.dn, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i ], [ 0, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %bb.q ] ; 34 uses
  %.val24.i.i.i.i = load <16 x i8>, ptr %.sroa.0417.0.i, align 16, !noalias !131932
  %i.eu = icmp eq i64 %.sroa.7.0.i, 0             ; 3 uses
  br i1 %i.eu, label %bb.u, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i
  %i.ev = mul i64 %.sroa.7.0.i, 24                ; 2 uses
  %i.ew = add i64 %i.ev, 24
  %i.ex = icmp ult i64 %i.ew, -15
  call void @llvm.assume(i1 %i.ex)
  %i.ey = and i64 %i.ev, -16                      ; 2 uses
  %i.ez = add i64 %i.ey, 32                       ; 2 uses
  %i.fa = add i64 %.sroa.7.0.i, 17
  %i.fb = add i64 %i.fa, %i.ez                    ; 3 uses
  %i.fc = icmp uge i64 %i.fb, %i.ez
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp ult i64 %i.fb, 9223372036854775793
  call void @llvm.assume(i1 %i.fd)
  %i.fe = sub i64 -32, %i.ey
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0417.0.i, i64 %i.fe
  br label %bb.u

bb.t:                                             ; preds = %bb.z, %bb.y
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.u:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i
  %.sroa.513.0.i.i.i = phi ptr [ undef, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i ], [ %i.ff, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  %.sroa.412.0.i.i.i = phi i64 [ undef, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i ], [ %i.fb, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i = phi i64 [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i ], [ 16, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 2 uses
  %i.fh = icmp eq i64 %.sroa.9.sroa.6.0.i, 0
  br i1 %i.fh, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.fi = icmp sgt <16 x i8> %.val24.i.i.i.i, splat (i8 -1)
  %i.fj = bitcast <16 x i1> %i.fi to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0417.0.i, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.er, %.lr.ph.preheader.i
  %.sroa.11.0719.i = phi ptr [ %.sroa.11.1.i, %bb.er ], [ %.sroa.0417.0.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.15.0718.i = phi ptr [ %.sroa.15.1.i, %bb.er ], [ %i.fk, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.19.0717.i = phi i16 [ %i.agk, %bb.er ], [ %i.fj, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.23.0716.i = phi i64 [ %i.agi, %bb.er ], [ %.sroa.9.sroa.6.0.i, %.lr.ph.preheader.i ]
  %.not10.i.i = icmp eq i16 %.sroa.19.0717.i, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %i.fl = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %.sroa.15.0718.i, %.lr.ph.i ] ; 2 uses
  %i.fm = phi ptr [ %i.fo, %.lr.ph.i.i ], [ %.sroa.11.0719.i, %.lr.ph.i ]
  %.val68.i.i = load <16 x i8>, ptr %i.fl, align 16, !noalias !131933
  %i.fn = icmp sgt <16 x i8> %.val68.i.i, splat (i8 -1)
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 -384 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.fn to i16     ; 2 uses
  %.not.i237.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i237.i, label %.lr.ph.i.i, label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.er, %bb.u
  %i.fq = icmp eq i64 %.sroa.412.0.i.i.i, 0
  %or.cond581.i = or i1 %i.eu, %i.fq
  br i1 %or.cond581.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i, i64 noundef %.sroa.412.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #59, !noalias !131934
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i

bb.w:                                             ; preds = %bb.es
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = icmp eq i64 %.sroa.412.0.i.i.i, 0
  %or.cond582.i = or i1 %i.eu, %i.fs
  br i1 %or.cond582.i, label %bb.eu, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i, i64 noundef %.sroa.412.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #59, !noalias !131935
  br label %bb.eu

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.15.1.i = phi ptr [ %.sroa.15.0718.i, %.lr.ph.i ], [ %i.fp, %.lr.ph.i.i ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0719.i, %.lr.ph.i ], [ %i.fo, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.19.0717.i, %.lr.ph.i ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ft = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr inbounds [24 x i8], ptr %.sroa.11.1.i, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -24
  %.sroa.0151.0.copyload.i = load i64, ptr %i.fx, align 8, !noalias !131922 ; 3 uses
  %.sroa.5152.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fw, i64 -16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5152.0..sroa_idx.i, i64 16, i1 false), !noalias !131922
  %i.fy = icmp ult i64 %.sroa.0151.0.copyload.i, %.sroa.49.0.i.i939.i
  br i1 %i.fy, label %bb.er, label %bb.es

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.v, %._crit_edge.i
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.544.sroa.0.0.copyload.i = load i64, ptr %.sroa.544.0..sroa_idx.i, align 8, !alias.scope !131920
  %.sroa.544.sroa.4.sroa.4.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.544.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.544.sroa.4.sroa.4.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !131920
  %.sroa.544.sroa.4.sroa.5.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.544.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.544.sroa.4.sroa.5.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !131920
  br i1 %.not.i, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %i.fz = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc241.i unwind label %bb.t, !noalias !131922 ; 2 uses

.noexc241.i:                                      ; preds = %bb.y
  %i.ga = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !131936
  %i.gb = icmp eq i8 %i.ga, 2
  br i1 %i.gb, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.z, !prof !66

bb.z:                                             ; preds = %.noexc241.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.t, !noalias !131922

_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.z, %.noexc241.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.12457.sroa.8.0.i = phi i64 [ %.sroa.544.sroa.4.sroa.5.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.fz, %.noexc241.i ], [ %i.fz, %bb.z ] ; 2 uses
  %.sroa.12457.sroa.7.0.i = phi i64 [ %.sroa.544.sroa.4.sroa.4.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %.noexc241.i ], [ 0, %bb.z ]
  %.sroa.9.0.i = phi i64 [ %.sroa.544.sroa.0.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %.noexc241.i ], [ 0, %bb.z ] ; 25 uses
  %.sroa.0450.0.i = phi ptr [ %i.o, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ @111, %.noexc241.i ], [ @111, %bb.z ] ; 9 uses
  %.fr219.i.i = freeze i64 %.sroa.12457.sroa.7.0.i ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !131918, !noundef !56
  %i.ge = uitofp i64 %i.gd to double
  %i.gf = call double @llvm.sqrt.f64(double %i.ge)
  %i.gg = fdiv double 1.000000e+00, %i.gf
  %i.gh = trunc nuw i64 %4 to i1
  %.sroa.046.0.i = select i1 %i.gh, double %5, double %i.gg ; 4 uses
  %i.gi = trunc nuw i64 %9 to i1
  %.sroa.052.0.i = select i1 %i.gi, double %10, double f0x3EB0C6F7A0B5ED8D ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !131922
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !131918, !noundef !56
  %i.gl = shl i64 %i.gk, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !131937)
  %i.gm = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc243.i unwind label %bb.ab, !noalias !131922

.noexc243.i:                                      ; preds = %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gn = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !131938
  %i.go = icmp eq i8 %i.gn, 2
  br i1 %i.go, label %.noexc244.i, label %bb.aa, !prof !66

bb.aa:                                            ; preds = %.noexc243.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc244.i unwind label %bb.ab, !noalias !131922

.noexc244.i:                                      ; preds = %bb.aa, %.noexc243.i
  invoke fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.l, i64 noundef 24, i64 noundef %i.gl) #64
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc244.i, %bb.aa, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ac:                                            ; preds = %.noexc244.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  store i64 %i.gm, ptr %i.gq, align 8, !alias.scope !131939, !noalias !131922
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !131918, !nonnull !56, !noundef !56 ; 10 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !131918, !noundef !56 ; 9 uses
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gu
  %.not.i249.i = icmp eq ptr %11, null            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %.backedge744, %bb.ac
  %i.gy = phi ptr [ %i.gs, %bb.ac ], [ %i.ha, %.backedge744 ] ; 4 uses
  %i.gz = icmp eq ptr %i.gy, %i.gv
  br i1 %i.gz, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hb = load ptr, ptr %i.gy, align 8, !alias.scope !131940, !noalias !131941, !noundef !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i, label %.backedge744, label %bb.af

.backedge744:                                     ; preds = %bb.ae, %bb.ek
  br label %bb.ad

.thread568.i:                                     ; preds = %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread945.i, %bb.ek, %bb.ag
  %i.hc = landingpad { ptr, i32 }
end_hunk_11
