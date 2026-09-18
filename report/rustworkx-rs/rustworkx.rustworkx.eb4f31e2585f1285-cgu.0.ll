Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br i1 %or.cond.i63, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread161, label %bb.s

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit.thread161: ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i8 0, i64 16, i1 false), !alias.scope !101315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !101315
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
  store i64 %.sroa.012.0.i.i66, ptr %i.f, align 8, !noalias !101315
  %.sroa.515.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.0.0.i.i67, ptr %.sroa.515.0..sroa_idx.i68, align 8, !noalias !101315
  %.sroa.616.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.015.0.i.i65, ptr %.sroa.616.0..sroa_idx.i69, align 8, !noalias !101315
  %.sroa.717.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.016.0.i.i64, ptr %.sroa.717.0..sroa_idx.i70, align 8, !noalias !101315
  %.sroa.818.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 0, ptr %.sroa.818.0..sroa_idx.i71, align 8, !noalias !101315
  %.sroa.919.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.bz, ptr %.sroa.919.0..sroa_idx.i72, align 1, !noalias !101315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !101316
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_NtB7_10UndirectedE13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.e, i64 noundef %.sroa.015.0.i.i65, i64 noundef %.sroa.016.0.i.i64), !noalias !101316
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false), !alias.scope !101317, !noalias !101316
  store i32 -1, ptr %i.cb, align 8, !alias.scope !101317, !noalias !101316
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 -1, ptr %i.cc, align 4, !alias.scope !101317, !noalias !101316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !101316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101319)
  %i.cd = shl i64 %.sroa.015.0.i.i65, 2           ; 4 uses
  %i.ce = icmp ugt i64 %.sroa.015.0.i.i65, 4611686018427387903
  %.not.i.i.i.i.i73 = icmp ugt i64 %i.cd, 9223372036854775804
  %or.cond.i.i.i.i.i74 = or i1 %i.ce, %.not.i.i.i.i.i73
  br i1 %or.cond.i.i.i.i.i74, label %bb.aa, label %bb.x, !prof !73

bb.x:                                             ; preds = %bb.w
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !101320
  %i.cg = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !101320 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = ptrtoint ptr %i.cg to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75

bb.aa:                                            ; preds = %bb.y, %bb.w
  %.sroa.49.0.ph.i.i.i.i = phi i64 [ 4, %bb.y ], [ 0, %bb.w ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i.i.i, i64 %i.cd) #61
          to label %.noexc.i.i86 unwind label %bb.ae, !noalias !101316

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
  %i.cq = udiv i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i66 ; 3 uses
  %i.cr = urem i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i66 ; 2 uses
  %i.cs = lshr i64 %i.cq, 1
  %i.ct = and i64 %i.cr, 1
  %i.cu = and i64 %i.cq, 1
  %i.cv = uitofp nneg i64 %i.cq to double
  %i.cw = uitofp nneg i64 %i.cs to double
  %i.cx = uitofp nneg i64 %i.ct to double
  %i.cy = uitofp nneg i64 %i.cu to double
  %i.cz = fadd double %i.cv, 5.000000e-01
  %i.da = fadd double %i.cz, %i.cw
  %i.db = fadd nnan double %i.cy, -5.000000e-01
  %i.dc = fmul double %i.db, %i.cx
  %i.dd = fadd double %i.da, %i.dc
  %i.de = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dd)
          to label %.noexc9.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i, !noalias !101321 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.us.i.i:                   ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %i.df = uitofp nneg i64 %i.cr to double
  %i.dg = fmul nnan double %i.df, f0x3FEBB67AE8584CAA
  %i.dh = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dg)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i unwind label %.split18.us.i.i, !noalias !101322 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.di = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !101323 ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, !prof !71

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %i.dk = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.di, i64 noundef 0, ptr noundef nonnull %i.de) #59, !noalias !101323 ; 0 uses
  %i.dl = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.di, i64 noundef 1, ptr noundef nonnull %i.dh) #59, !noalias !101323 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101324
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.di)
          to label %.noexc10.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i, !noalias !101321

.noexc10.i.i.i.i.i.i.i.i.us.i.i:                  ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101325)
  %i.dm = load i64, ptr %i.c, align 8, !range !123, !alias.scope !101325, !noalias !101326, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.dm, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i, label %.split26.us.i.i, !prof !77

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %i.dn = load i32, ptr %i.cl, align 8, !alias.scope !101325, !noalias !101326, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101324
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.val4.i.i.i.i.i.i.i.i.us.i.i
  store i32 %i.dn, ptr %i.do, align 4, !noalias !101327
  %exitcond.not.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.cp, %.sroa.015.0.i.i65
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.us.i.i, label %.loopexit.i.i84, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i

.loopexit.i.i.i.i.i.i.i.i.split.us.i.i:           ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78

.split18.us.i.i:                                  ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.dp = landingpad { ptr, i32 }
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
  %.val4.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dq, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dq = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dr = icmp ult i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cm
  br i1 %i.dr, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %i.ds = sub nuw i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cm ; 2 uses
  %i.dt = udiv i64 %i.ds, %.sroa.012.0.i.i66      ; 3 uses
  %i.du = add nuw i64 %i.dt, 1
  %i.dv = urem i64 %i.ds, %.sroa.012.0.i.i66
  %i.dw = icmp eq i64 %i.dt, %i.cn
  %i.dx = trunc i64 %i.dt to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.dw, %i.dx
  %i.dy = zext i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %i.dv, %i.dy
  br label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1166) #60
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !101321

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.split.us.i.i
  unreachable

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.val4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.du, %bb.ab ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 3 uses
  %i.dz = lshr i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.ea = and i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.eb = and i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.ec = uitofp i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i to double
  %i.ed = uitofp nneg i64 %i.dz to double
  %i.ee = uitofp nneg i64 %i.ea to double
  %i.ef = uitofp nneg i64 %i.eb to double
  %i.eg = fadd double %i.ec, 5.000000e-01
  %i.eh = fadd double %i.eg, %i.ed
  %i.ei = fadd nnan double %i.ef, -5.000000e-01
  %i.ej = fmul double %i.ei, %i.ee
  %i.ek = fadd double %i.eh, %i.ej
  %i.el = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.ek)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.i.i, !noalias !101321 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_NtB2w_10UndirectedEB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB50_0B3w_E0B54_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.em = uitofp i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i to double
  %i.en = fmul nnan double %i.em, f0x3FEBB67AE8584CAA
  %i.eo = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.en)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.split18.i.i, !noalias !101322 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.ep = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !101323 ; 4 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !71

.split22.us.i.i:                                  ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi23.i.i = phi ptr [ %i.dh, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.eo, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi24.i.i = phi ptr [ %i.de, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.el, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %bb.ac unwind label %bb.ad, !noalias !101323

bb.ac:                                            ; preds = %.split22.us.i.i
  unreachable

common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.split18.i.i, %bb.ad, %.split18.us.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.us-phi23.i.i, %bb.ad ], [ %i.el, %.split18.i.i ], [ %i.de, %.split18.us.i.i ]
  %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.er, %bb.ad ], [ %i.es, %.split18.i.i ], [ %i.dp, %.split18.us.i.i ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !101322
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78

bb.ad:                                            ; preds = %.split22.us.i.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %.us-phi24.i.i) #59, !noalias !101328
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split18.i.i:                                     ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.ep, i64 noundef 0, ptr noundef nonnull %i.el) #59, !noalias !101323 ; 0 uses
  %i.eu = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.ep, i64 noundef 1, ptr noundef nonnull %i.eo) #59, !noalias !101323 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !101324
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.ep)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.i.i, !noalias !101321

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101325)
  %i.ev = load i64, ptr %i.c, align 8, !range !123, !alias.scope !101325, !noalias !101326, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ev, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i, label %.split26.us.i.i, !prof !77

.split26.us.i.i:                                  ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi27.i.i = phi i64 [ %i.dm, %.noexc10.i.i.i.i.i.i.i.i.us.i.i ], [ %i.ev, %.noexc10.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101329
  %i.ew = load i64, ptr %i.cl, align 8, !alias.scope !101325, !noalias !101326
  store i64 %.us-phi27.i.i, ptr %i.b, align 8, !noalias !101329
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ew, ptr %i.ex, align 8, !noalias !101329
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !101321

.noexc11.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split26.us.i.i
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  %i.ey = load i32, ptr %i.cl, align 8, !alias.scope !101325, !noalias !101326, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101324
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.val4.i.i.i.i.i.i.i.i.i.i
  store i32 %i.ey, ptr %i.ez, align 4, !noalias !101327
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dq, %.sroa.015.0.i.i65
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i84, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78: ; preds = %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.us.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i ]
  %i.fa = shl nuw i64 %.sroa.49.0.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !101330
  br label %.body.i.i79

bb.ae:                                            ; preds = %.loopexit.i.i84, %bb.aa
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i79

.body.i.i79:                                      ; preds = %bb.ae, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78
  %eh.lpad-body.i.i80 = phi { ptr, i32 } [ %i.fb, %bb.ae ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i78 ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i82 unwind label %bb.af, !noalias !101331

bb.af:                                            ; preds = %.body.i.i79
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fd) #63
          to label %.body.i81 unwind label %bb.ag, !noalias !101331

bb.ag:                                            ; preds = %bb.af
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !101332
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i82: ; preds = %.body.i.i79
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ff)
          to label %common.resume unwind label %bb.ah, !noalias !101315

.loopexit.i.i84:                                  ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_NtB3y_10UndirectedEB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB62_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7u_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB90_3VecB7u_E14extend_trustedINtB4_3MapIB9X_INtNtNtBa_3ops5range5RangejEB10_EB7L_EE0E0E0E0B66_.exit.i.i.i.i.i.i.i.i.us.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i75
  store i64 %.sroa.49.0.i.i.i.i, ptr %i.d, align 8, !alias.scope !101333, !noalias !101334
  %.sroa.5.0..sroa_idx.i.i.i.i85 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cj, ptr %.sroa.5.0..sroa_idx.i.i.i.i85, align 8, !alias.scope !101333, !noalias !101334
  %.sroa.8.0..sroa_idx50.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.015.0.i.i65, ptr %.sroa.8.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !101333, !noalias !101334
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_NtB1X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B2X_EB4r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias nofree noundef align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_NtB1Q_10UndirectedEB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graphs_0NCB4k_0B2Q_EB4o_.exit unwind label %bb.ae, !noalias !101331

bb.ah:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i.i82
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i81

.body.i81:                                        ; preds = %bb.ah, %bb.af
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !101331
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
  %i.fh = load <2 x i32>, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !101316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fi = icmp eq i64 %.sroa.097.0.copyload98, -1
  br i1 %i.fi, label %bb.am, label %bb.ao

bb.ai:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit.thread, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_NtB1H_10UndirectedEB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators23hexagonal_lattice_graph0B49_B2H_EB4f_.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.fj = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.aj, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit, !prof !104

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ai
  store ptr @2466, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 17, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.041.sroa.5.0..sroa_idx, align 8
  %.sroa.041.sroa.5.sroa.4.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.041.sroa.5.sroa.4.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.5.sroa.5.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.fj, ptr %.sroa.041.sroa.5.sroa.5.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.041.sroa.5.sroa.6.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.041.sroa.5.sroa.6.0..sroa.041.sroa.5.0..sroa_idx.sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph:bb.a
_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit.thread171: ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i8 0, i64 16, i1 false), !alias.scope !103320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !103320
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
  store i64 %.sroa.012.0.i.i68, ptr %i.f, align 8, !noalias !103320
  %.sroa.515.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.0.0.i.i69, ptr %.sroa.515.0..sroa_idx.i70, align 8, !noalias !103320
  %.sroa.616.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.015.0.i.i67, ptr %.sroa.616.0..sroa_idx.i71, align 8, !noalias !103320
  %.sroa.717.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.016.0.i.i66, ptr %.sroa.717.0..sroa_idx.i72, align 8, !noalias !103320
  %.sroa.818.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.ce, ptr %.sroa.818.0..sroa_idx.i73, align 8, !noalias !103320
  %.sroa.919.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.cf, ptr %.sroa.919.0..sroa_idx.i74, align 1, !noalias !103320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103321
  call fastcc void @_RNvMsj_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1z_5types3any5PyAnyEEBS_E13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.e, i64 noundef %.sroa.015.0.i.i67, i64 noundef %.sroa.016.0.i.i66), !noalias !103321
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !alias.scope !103322, !noalias !103321
  store i32 -1, ptr %i.ch, align 8, !alias.scope !103322, !noalias !103321
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 -1, ptr %i.ci, align 4, !alias.scope !103322, !noalias !103321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !103321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103324)
  %i.cj = shl i64 %.sroa.015.0.i.i67, 2           ; 4 uses
  %i.ck = icmp ugt i64 %.sroa.015.0.i.i67, 4611686018427387903
  %.not.i.i.i.i.i75 = icmp ugt i64 %i.cj, 9223372036854775804
  %or.cond.i.i.i.i.i76 = or i1 %i.ck, %.not.i.i.i.i.i75
  br i1 %or.cond.i.i.i.i.i76, label %bb.aa, label %bb.x, !prof !73

bb.x:                                             ; preds = %bb.w
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !103325
  %i.cm = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103325 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = ptrtoint ptr %i.cm to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77

bb.aa:                                            ; preds = %bb.y, %bb.w
  %.sroa.49.0.ph.i.i.i.i = phi i64 [ 4, %bb.y ], [ 0, %bb.w ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i.i.i, i64 %i.cj) #61
          to label %.noexc.i.i88 unwind label %bb.ae, !noalias !103321

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
  %i.cw = udiv i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i68 ; 3 uses
  %i.cx = urem i64 %.val4.i.i.i.i.i.i.i.i.us.i.i, %.sroa.012.0.i.i68 ; 2 uses
  %i.cy = lshr i64 %i.cw, 1
  %i.cz = and i64 %i.cx, 1
  %i.da = and i64 %i.cw, 1
  %i.db = uitofp nneg i64 %i.cw to double
  %i.dc = uitofp nneg i64 %i.cy to double
  %i.dd = uitofp nneg i64 %i.cz to double
  %i.de = uitofp nneg i64 %i.da to double
  %i.df = fadd double %i.db, 5.000000e-01
  %i.dg = fadd double %i.df, %i.dc
  %i.dh = fadd nnan double %i.de, -5.000000e-01
  %i.di = fmul double %i.dh, %i.dd
  %i.dj = fadd double %i.dg, %i.di
  %i.dk = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dj)
          to label %.noexc9.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i, !noalias !103326 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.us.i.i:                   ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %i.dl = uitofp nneg i64 %i.cx to double
  %i.dm = fmul nnan double %i.dl, f0x3FEBB67AE8584CAA
  %i.dn = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.dm)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i unwind label %.split18.us.i.i, !noalias !103327 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.do = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !103328 ; 4 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, !prof !71

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %i.dq = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.do, i64 noundef 0, ptr noundef nonnull %i.dk) #59, !noalias !103328 ; 0 uses
  %i.dr = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.do, i64 noundef 1, ptr noundef nonnull %i.dn) #59, !noalias !103328 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103329
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.do)
          to label %.noexc10.i.i.i.i.i.i.i.i.us.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i, !noalias !103326

.noexc10.i.i.i.i.i.i.i.i.us.i.i:                  ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103330)
  %i.ds = load i64, ptr %i.c, align 8, !range !123, !alias.scope !103330, !noalias !103331, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.ds, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i, label %.split26.us.i.i, !prof !77

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %i.dt = load i32, ptr %i.cr, align 8, !alias.scope !103330, !noalias !103331, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103329
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.val4.i.i.i.i.i.i.i.i.us.i.i
  store i32 %i.dt, ptr %i.du, align 4, !noalias !103332
  %exitcond.not.i.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %i.cv, %.sroa.015.0.i.i67
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.us.i.i, label %.loopexit.i.i86, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i

.loopexit.i.i.i.i.i.i.i.i.split.us.i.i:           ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.us.i.i, %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.us.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80

.split18.us.i.i:                                  ; preds = %.noexc9.i.i.i.i.i.i.i.i.us.i.i
  %i.dv = landingpad { ptr, i32 }
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
  %.val4.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dw, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dw = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dx = icmp ult i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cs
  br i1 %i.dx, label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %i.dy = sub nuw i64 %.val4.i.i.i.i.i.i.i.i.i.i, %i.cs ; 2 uses
  %i.dz = udiv i64 %i.dy, %.sroa.012.0.i.i68      ; 3 uses
  %i.ea = add nuw i64 %i.dz, 1
  %i.eb = urem i64 %i.dy, %.sroa.012.0.i.i68
  %i.ec = icmp eq i64 %i.dz, %i.ct
  %i.ed = trunc i64 %i.dz to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.ec, %i.ed
  %i.ee = zext i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %i.eb, %i.ee
  br label %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.split.us.i.i
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1166) #60
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !103326

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.split.us.i.i
  unreachable

_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.val4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ea, %bb.ab ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.split.i.i ] ; 3 uses
  %i.ef = lshr i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.eg = and i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.eh = and i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i, 1
  %i.ei = uitofp i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.i.i.i to double
  %i.ej = uitofp nneg i64 %i.ef to double
  %i.ek = uitofp nneg i64 %i.eg to double
  %i.el = uitofp nneg i64 %i.eh to double
  %i.em = fadd double %i.ei, 5.000000e-01
  %i.en = fadd double %i.em, %i.ej
  %i.eo = fadd nnan double %i.el, -5.000000e-01
  %i.ep = fmul double %i.eo, %i.ek
  %i.eq = fadd double %i.en, %i.ep
  %i.er = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.eq)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.i.i, !noalias !103326 ; 3 uses

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB5_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEB3w_EB3w_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB4I_0B3w_E0B4M_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.es = uitofp i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i to double
  %i.et = fmul nnan double %i.es, f0x3FEBB67AE8584CAA
  %i.eu = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.et)
          to label %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.split18.i.i, !noalias !103327 ; 2 uses

_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.ev = tail call noundef ptr @PyTuple_New(i64 noundef 2) #59, !noalias !103328 ; 4 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.split22.us.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !71

.split22.us.i.i:                                  ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi23.i.i = phi ptr [ %i.dn, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.eu, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi24.i.i = phi ptr [ %i.dk, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i ], [ %i.er, %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %bb.ac unwind label %bb.ad, !noalias !103328

bb.ac:                                            ; preds = %.split22.us.i.i
  unreachable

common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.split18.i.i, %bb.ad, %.split18.us.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.us-phi23.i.i, %bb.ad ], [ %i.er, %.split18.i.i ], [ %i.dk, %.split18.us.i.i ]
  %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ex, %bb.ad ], [ %i.ey, %.split18.i.i ], [ %i.dv, %.split18.us.i.i ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !103327
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80

bb.ad:                                            ; preds = %.split22.us.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %.us-phi24.i.i) #59, !noalias !103333
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split18.i.i:                                     ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvYdNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.ev, i64 noundef 0, ptr noundef nonnull %i.er) #59, !noalias !103328 ; 0 uses
  %i.fa = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.ev, i64 noundef 1, ptr noundef nonnull %i.eu) #59, !noalias !103328 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103329
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %i.ev)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.split.i.i, !noalias !103326

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0B5_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103330)
  %i.fb = load i64, ptr %i.c, align 8, !range !123, !alias.scope !103330, !noalias !103331, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fb, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i, label %.split26.us.i.i, !prof !77

.split26.us.i.i:                                  ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i.i.us.i.i
  %.us-phi27.i.i = phi i64 [ %i.ds, %.noexc10.i.i.i.i.i.i.i.i.us.i.i ], [ %i.fb, %.noexc10.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103334
  %i.fc = load i64, ptr %i.cr, align 8, !alias.scope !103330, !noalias !103331
  store i64 %.us-phi27.i.i, ptr %i.b, align 8, !noalias !103334
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.fc, ptr %i.fd, align 8, !noalias !103334
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !103326

.noexc11.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split26.us.i.i
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  %i.fe = load i32, ptr %i.cr, align 8, !alias.scope !103330, !noalias !103331, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103329
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.val4.i.i.i.i.i.i.i.i.i.i
  store i32 %i.fe, ptr %i.ff, align 4, !noalias !103332
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dw, %.sroa.015.0.i.i67
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i86, label %.lr.ph.i.i.i.i.i.i.i.i.split.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80: ; preds = %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %common.resume.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.us.i.i, %.loopexit.i.i.i.i.i.i.i.i.split.us.i.i ]
  %i.fg = shl nuw i64 %.sroa.49.0.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !103335
  br label %.body.i.i81

bb.ae:                                            ; preds = %.loopexit.i.i86, %bb.aa
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i81

.body.i.i81:                                      ; preds = %bb.ae, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80
  %eh.lpad-body.i.i82 = phi { ptr, i32 } [ %i.fh, %bb.ae ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i80 ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i84 unwind label %bb.af, !noalias !103336

bb.af:                                            ; preds = %.body.i.i81
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fj) #63
          to label %.body.i83 unwind label %bb.ag, !noalias !103336

bb.ag:                                            ; preds = %bb.af
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !103337
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i84: ; preds = %.body.i.i81
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.fl)
          to label %common.resume unwind label %bb.ah, !noalias !103320

.loopexit.i.i86:                                  ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjTjjEuNCINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB16_23HexagonalLatticeBuilder41build_with_position_dependent_node_weightINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4D_5types3any5PyAnyEB4y_EB4y_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB5K_0B4y_E0NCIB2_BV_NtB3w_9NodeIndexuNCB12_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7l_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8R_3VecB7l_E14extend_trustedINtB4_3MapIB9O_INtNtNtBa_3ops5range5RangejEB10_EB7C_EE0E0E0E0B5O_.exit.i.i.i.i.i.i.i.i.us.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i77
  store i64 %.sroa.49.0.i.i.i.i, ptr %i.d, align 8, !alias.scope !103338, !noalias !103339
  %.sroa.5.0..sroa_idx.i.i.i.i87 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cp, ptr %.sroa.5.0..sroa_idx.i.i.i.i87, align 8, !alias.scope !103338, !noalias !103339
  %.sroa.8.0..sroa_idx50.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.015.0.i.i67, ptr %.sroa.8.0..sroa_idx50.i.i.i.i, align 8, !alias.scope !103338, !noalias !103339
  invoke fastcc void @_RINvMNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graphNtB3_23HexagonalLatticeBuilder9add_edgesINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB32_5types3any5PyAnyEB2X_ENCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B2X_EB49_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias nofree noundef align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.a)
          to label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph32hexagonal_lattice_graph_weightedINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2V_5types3any5PyAnyEB2Q_EB2Q_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graphs_0NCB42_0B2Q_EB46_.exit unwind label %bb.ae, !noalias !103336

bb.ah:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_EECskcxRuJ53GpR_9rustworkx.exit.i.i84
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i83

.body.i83:                                        ; preds = %bb.ah, %bb.af
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !103336
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
  %i.fn = load <2 x i32>, ptr %i.ch, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fo = icmp eq i64 %.sroa.0101.0.copyload102, -1
  br i1 %i.fo, label %bb.al, label %bb.an

bb.ai:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit.thread, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators23hexagonal_lattice_graph23hexagonal_lattice_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2M_5types3any5PyAnyEB2H_EB2H_NCNvNtCskcxRuJ53GpR_9rustworkx10generators32directed_hexagonal_lattice_graph0B3R_B2H_EB3X_.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.fp = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.aj, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit, !prof !104

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ai
  store ptr @2466, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 17, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.4.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.040.sroa.5.sroa.4.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.5.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.fp, ptr %.sroa.040.sroa.5.sroa.5.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.040.sroa.5.sroa.6.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.040.sroa.5.sroa.6.0..sroa.040.sroa.5.0..sroa_idx.sroa_idx, align 8
end_hunk_1
