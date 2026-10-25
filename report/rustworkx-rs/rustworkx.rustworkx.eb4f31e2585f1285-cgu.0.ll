Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2r_5types3any5PyAnyEB2m_NtB1m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB2r_3err5PyErrEB3Q_:bb.a
bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !alias.scope !14173, !noalias !14174, !noundef !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.x

.loopexit509.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.ow, %select.unfold436.invoke, %bb.t, %bb.ab
  %lpad.loopexit.split-lp15694 = landingpad { ptr, i32 }
          cleanup
  br label %.body505

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !14173, !noalias !14174 ; 3 uses
  %.sroa.524.sroa.0.0.extract.trunc = trunc i64 %.sroa.02.0.copyload.i.i.i to i32
  %.sroa.524.sroa.6.0.extract.shift = lshr i64 %.sroa.02.0.copyload.i.i.i, 32 ; 2 uses
  %.sroa.524.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.524.sroa.6.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.sroa.524.sroa.0.0.insert.ext = and i64 %.sroa.02.0.copyload.i.i.i, 4294967295
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14175)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.dl = load i128, ptr %.16.val, align 16, !noalias !14175, !noundef !56
  %.val.i498 = load ptr, ptr %.8.val, align 8, !noalias !14175, !noundef !56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14176)
  %.not.i.i = icmp eq ptr %.val.i498, null
  br i1 %.not.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0B5_.exit.thread7862, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14177
  invoke fastcc void @_RNvXsj_NtNtCsi0YPOvDEjiZ_4pyo35types5tupleTRINtNtB9_8instance2PyNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.g, ptr nonnull %i.dj, ptr noundef nonnull %.val.i498)
          to label %.noexc499 unwind label %.loopexit509.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc499:                                        ; preds = %bb.y
  %i.dm = load i64, ptr %i.g, align 8, !range !57, !noalias !14177, !noundef !56
  %i.dn = trunc nuw i64 %i.dm to i1
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.cf, align 8, !noalias !14177 ; 4 uses
  br i1 %i.dn, label %.split4344.us.sink.split, label %bb.z

_RNCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0B5_.exit.thread7862: ; preds = %bb.x
  store i128 %i.dl, ptr %.sroa.49.0..sroa_idx.i.i, align 16, !alias.scope !14177
  br label %bb.oo

bb.z:                                             ; preds = %.noexc499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14177
  invoke void @_RNvXs0_NtNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3num26slow_128bit_int_conversionnNtNtBd_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.ag, ptr noundef nonnull %.sroa.06.0.copyload.i.i)
          to label %_RNCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0B5_.exit unwind label %.split4340

.split4340:                                       ; preds = %bb.z
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.split4340.us, %.split4340
  %.us-phi4341 = phi ptr [ %.sroa.06.0.copyload.i.i, %.split4340 ], [ %.sroa.06.0.copyload.i.i.us, %.split4340.us ]
  %.us-phi4342 = phi { ptr, i32 } [ %i.do, %.split4340 ], [ %i.dd, %.split4340.us ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.us-phi4341) #59, !noalias !14177
  br label %.body505

.split4337.us:                                    ; preds = %bb.v, %.split.us, %.split.us.preheader
  %i.dp = phi i64 [ 0, %.split.us.preheader ], [ 0, %.split.us ], [ %i.df, %bb.v ] ; 6 uses
  %.us-phi = phi i128 [ 0, %.split.us.preheader ], [ 0, %.split.us ], [ %.sroa.0.0, %bb.v ] ; 11 uses
  %i.dq = shl nuw nsw i64 %.val.i, 1              ; 12 uses
  %i.dr = shl nuw nsw i64 %.val.i, 4              ; 6 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14178
  %i.ds = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14178 ; 27 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ab, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.split4337.us
  %i.du = load ptr, ptr %i.ca, align 8, !nonnull !56 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %.split4337.us
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dr) #61
          to label %.noexc504 unwind label %.loopexit509.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc504:                                        ; preds = %bb.ab
  unreachable

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.val4.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ec, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1 ] ; 5 uses
  %i.dv = lshr exact i64 %.val4.i.i.i.i.i.i.i, 1  ; 3 uses
  %i.dw = icmp ult i64 %i.dv, %i.dp
  br i1 %i.dw, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa15686 = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dz, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.lcssa15686, i64 noundef %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1215) #60
          to label %.noexc.i.i.i.i.i.i.i unwind label %.body.i.i, !noalias !14179

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ac
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %i.dv
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !14180, !noundef !56
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.val4.i.i.i.i.i.i.i
  store i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i, ptr %i.dy, align 8, !noalias !14181
  %i.dz = lshr exact i64 %.val4.i.i.i.i.i.i.i, 1  ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dp
  br i1 %i.ea, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1, label %bb.ac

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i
  %i.eb = or disjoint i64 %.val4.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ec = add nuw nsw i64 %.val4.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %i.dz
  %spec.select.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.1 = load i64, ptr %spec.select.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !14180, !noundef !56
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.eb
  store i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.1, ptr %i.ee, align 8, !noalias !14181
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ec, %i.dq
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit, label %.lr.ph.i.i.i.i.i.i.i

.body.i.i:                                        ; preds = %bb.ac
  %i.ef = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14182
  br label %.body505

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14184)
  %i.eg = mul i64 %.val.i491, 24                  ; 3 uses
  %or.cond.i.i.i507 = icmp ugt i64 %.val.i491, 384307168202282325
  br i1 %or.cond.i.i.i507, label %bb.ag, label %bb.ad, !prof !62

bb.ad:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14185
  %i.ei = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14185 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = ptrtoint ptr %i.ei to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.ae ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.eg) #61
          to label %.noexc512 unwind label %bb.ah

.noexc512:                                        ; preds = %bb.ag
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.af, %bb.ad
  %.sroa.4.0.i.i = phi i64 [ %.val.i491, %bb.af ], [ 0, %bb.ad ] ; 5 uses
  %.sroa.10.0.i.i508 = phi i64 [ %i.ek, %bb.af ], [ 8, %bb.ad ]
  %i.el = inttoptr i64 %.sroa.10.0.i.i508 to ptr  ; 14 uses
  %i.em = icmp samesign ule i64 %.val.i491, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.em)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val.i491, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i509.preheader

.lr.ph.i.i.i.i.i.i.i509.preheader:                ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.en = add nsw i64 %.val.i491, -1
  %xtraiter = and i64 %.val.i491, 3               ; 3 uses
  %i.eo = icmp ult i64 %i.en, 3
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i.i.i509.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i509.preheader.new

.lr.ph.i.i.i.i.i.i.i509.preheader.new:            ; preds = %.lr.ph.i.i.i.i.i.i.i509.preheader
  %unroll_iter = and i64 %.val.i491, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.i509

.lr.ph.i.i.i.i.i.i.i509:                          ; preds = %.lr.ph.i.i.i.i.i.i.i509, %.lr.ph.i.i.i.i.i.i.i509.preheader.new
  %i.ep = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i509.preheader.new ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i509 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i509.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i509 ]
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ep ; 3 uses
  store i64 0, ptr %i.eq, align 8, !noalias !14186
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !14186
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !14186
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ep ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store i64 0, ptr %i.es, align 8, !noalias !14186
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !14186
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !14186
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ep ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store i64 0, ptr %i.eu, align 8, !noalias !14186
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !14186
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !14186
  %i.ev = add nuw nsw i64 %i.ep, 4                ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ep ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  store i64 0, ptr %i.ex, align 8, !noalias !14186
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !14186
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !14186
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i509

.lr.ph.loopexit.unr-lcssa:                        ; preds = %.lr.ph.i.i.i.i.i.i.i509
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i509.epil.preheader

.lr.ph.i.i.i.i.i.i.i509.epil.preheader:           ; preds = %.lr.ph.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i509.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i509.preheader ], [ %i.ev, %.lr.ph.loopexit.unr-lcssa ]
  %lcmp.mod15723 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15723)
  br label %.lr.ph.i.i.i.i.i.i.i509.epil

.lr.ph.i.i.i.i.i.i.i509.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i.i509.epil, %.lr.ph.i.i.i.i.i.i.i509.epil.preheader
  %i.ey = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.i.i509.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i509.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i509.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i509.epil.preheader ]
  %i.ez = add nuw nsw i64 %i.ey, 1
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ey ; 3 uses
  store i64 0, ptr %i.fa, align 8, !noalias !14186
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.epil, align 8, !noalias !14186
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.epil, align 8, !noalias !14186
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i509.epil, !llvm.loop !13497

.lr.ph:                                           ; preds = %.lr.ph.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i509.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  store i64 %.sroa.4.0.i.i, ptr %i.af, align 8, !alias.scope !14187
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.el, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !14187
  %.sroa.6.0..sroa_idx.i.i511 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.val.i491, ptr %.sroa.6.0..sroa_idx.i.i511, align 8, !alias.scope !14187
  br label %bb.aj

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i514: ; preds = %bb.ah, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i
  %.pn369.pn = phi { ptr, i32 } [ %i.fb, %bb.ah ], [ %.pn3697865, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i ], [ %.pn3697865, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14188
  br label %.body505

bb.ah:                                            ; preds = %bb.ag
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i514

._crit_edge:                                      ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit1004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14189)
  %i.fc = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc516 unwind label %.loopexit.split-lp505.loopexit.split-lp

.noexc516:                                        ; preds = %._crit_edge
  %i.fd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !14189
  %i.fe = icmp eq i8 %i.fd, 2
  br i1 %i.fe, label %.noexc517, label %bb.ai, !prof !66

bb.ai:                                            ; preds = %.noexc516
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc517 unwind label %.loopexit.split-lp505.loopexit.split-lp

.noexc517:                                        ; preds = %bb.ai, %.noexc516
  invoke fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.ae, i64 noundef 16, i64 noundef %.val.i491) #64
          to label %bb.ak unwind label %.loopexit.split-lp505.loopexit.split-lp

bb.aj:                                            ; preds = %.lr.ph, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit1004
  %.sroa.0156.04345 = phi i64 [ 0, %.lr.ph ], [ %i.ff, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit1004 ] ; 4 uses
  %i.ff = add nuw i64 %.sroa.0156.04345, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.0156.04345, %i.dp
  br i1 %exitcond.not, label %.invoke, label %bb.oi

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit.split-lp505.loopexit.split-lp, %bb.my, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i871, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit1000
  %.pn369 = phi { ptr, i32 } [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.my ], [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit1000 ], [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i871 ], [ %lpad.loopexit.split-lp4425, %.loopexit.split-lp505.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14190)
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit.thread, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit
  %.pn3697864 = phi { ptr, i32 } [ %lpad.loopexit4424, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit.thread ], [ %.pn369, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.fh, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.fh = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14191)
  %.val.i.i.i.i = load i64, ptr %i.fg, align 8, !alias.scope !14192, !noalias !14193 ; 2 uses
  %i.fi = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !14192, !noalias !14193, !nonnull !56, !noundef !56
  %i.fk = shl nuw i64 %.val.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14194
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %.lr.ph.i.i.i
  %i.fl = icmp eq i64 %i.fh, %.val.i491
  br i1 %i.fl, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit
  %.pn3697865 = phi { ptr, i32 } [ %.pn369, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit ], [ %.pn3697864, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.fm = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.fm, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i514, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.fn = mul nuw nsw i64 %.sroa.4.0.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14193
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i514

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.on, %bb.ok
  %lpad.loopexit4424 = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i.preheader

.loopexit.split-lp505.loopexit.split-lp:          ; preds = %.noexc517, %.invoke, %bb.ai, %._crit_edge
  %lpad.loopexit.split-lp4425 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit

bb.ak:                                            ; preds = %.noexc517
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 4 uses
  store i64 %i.fc, ptr %i.fo, align 8, !alias.scope !14195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14196)
  %i.fp = shl nuw nsw i64 %.val.i491, 3           ; 6 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !14197
  %i.fq = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !14197 ; 27 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.al, label %.lr.ph.i.i.i.i.i.preheader

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fp) #61
          to label %.noexc524 unwind label %.thread422

.noexc524:                                        ; preds = %bb.al
  unreachable

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ak
  %min.iters.check = icmp ult i64 %.val.i491, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15684, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %.val.i491, 576460752303423484 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <2 x i64> %vec.ind, ptr %i.fs, align 8, !noalias !14198
  store <2 x i64> %step.add, ptr %i.ft, align 8, !noalias !14198
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !13526

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val.i491, %n.vec
  br i1 %cmp.n, label %.loopexit503, label %.lr.ph.i.i.i.i.i.preheader15684

.lr.ph.i.i.i.i.i.preheader15684:                  ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.ph15685 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15684, %.lr.ph.i.i.i.i.i
  %i.fv = phi i64 [ %i.fw, %.lr.ph.i.i.i.i.i ], [ %.ph15685, %.lr.ph.i.i.i.i.i.preheader15684 ] ; 3 uses
  %i.fw = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fv
  store i64 %i.fv, ptr %i.fx, align 8, !noalias !14198
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fw, %.val.i491
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit503, label %.lr.ph.i.i.i.i.i, !llvm.loop !13527

bb.am:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i531, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit
  %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn7825 = phi { ptr, i32 } [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn7824, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i531 ], [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit ] ; 3 uses
  %.sroa.0130.27823 = phi i8 [ %.sroa.0130.27822, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i531 ], [ %.sroa.0130.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit ]
  %.sroa.0133.27821 = phi i8 [ %.sroa.0133.27820, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i531 ], [ %.sroa.0133.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit ]
  %i.fy = trunc nuw i8 %.sroa.0133.27821 to i1
  br i1 %i.fy, label %bb.oh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit998

.thread422:                                       ; preds = %bb.al
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit1000

.loopexit503:                                     ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  store i64 %.val.i491, ptr %i.ab, align 8, !alias.scope !14196
  %.sroa.4.0..sroa_idx.i522 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.fq, ptr %.sroa.4.0..sroa_idx.i522, align 8, !alias.scope !14196
  %.sroa.5.0..sroa_idx.i523 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.val.i491, ptr %.sroa.5.0..sroa_idx.i523, align 8, !alias.scope !14196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ga = shl nuw nsw i64 %.val.i491, 1           ; 40 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14199)
  %i.gb = shl nuw i64 %.val.i491, 5               ; 8 uses
  %.not.i7.i = icmp ugt i64 %.val.i491, 288230376151711743
end_hunk_0
begin_hunk_1_@_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx:bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #63
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

bb.g:                                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %bb.e
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.i
  %.pn8 = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.l, %bb.i ], [ %i.l, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %1, align 8               ; 2 uses
  %i.m = icmp eq i64 %.val, 0
  br i1 %i.m, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.n, align 8, !nonnull !56, !noundef !56
  %i.o = shl nuw i64 %.val, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtB5_3VecjENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = mul i64 %2, 24                           ; 3 uses
  %or.cond.i = icmp ugt i64 %2, 384307168202282325
  br i1 %or.cond.i, label %bb.e, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !41860
  %i.d = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41860 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.d to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.b) #61
          to label %bb.i unwind label %bb.j

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.10.0 = phi i64 [ %i.f, %bb.d ], [ 8, %bb.b ]
  %.sroa.4.0 = phi i64 [ %2, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.g = inttoptr i64 %.sroa.10.0 to ptr          ; 5 uses
  %i.h = icmp samesign ule i64 %2, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.h)
  store i64 %.sroa.4.0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41861)
  %i.k = icmp samesign ugt i64 %2, 1
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.l = shl nuw nsw i64 %.sroa.9.0.copyload, 3   ; 3 uses
  %i.m = icmp eq i64 %.sroa.9.0.copyload, 0
  br i1 %i.m, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader, label %.lr.ph.split.i

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader: ; preds = %.lr.ph.i
  %i.n = add nsw i64 %2, -1                       ; 2 uses
  %i.o = add nsw i64 %2, -2
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil.preheader, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader.new

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader.new: ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader
  %unroll_iter = and i64 %i.n, -4
  br label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i: ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader.new
  %.sroa.0.031.us.i = phi ptr [ %i.g, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader.new ], [ %i.t, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i ] ; 13 uses
  %niter = phi i64 [ 0, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader.new ], [ %niter.next.3, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i ]
  store i64 0, ptr %.sroa.0.031.us.i, align 8, !noalias !41862
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i, align 8, !noalias !41862
  %.sroa.726.0..sroa.0.0.sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 16
  store i64 0, ptr %.sroa.726.0..sroa.0.0.sroa_idx.us.i, align 8, !noalias !41862
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 24
  store i64 0, ptr %i.q, align 8, !noalias !41862
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.1, align 8, !noalias !41862
  %.sroa.726.0..sroa.0.0.sroa_idx.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 40
  store i64 0, ptr %.sroa.726.0..sroa.0.0.sroa_idx.us.i.1, align 8, !noalias !41862
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 48
  store i64 0, ptr %i.r, align 8, !noalias !41862
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.2, align 8, !noalias !41862
  %.sroa.726.0..sroa.0.0.sroa_idx.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 64
  store i64 0, ptr %.sroa.726.0..sroa.0.0.sroa_idx.us.i.2, align 8, !noalias !41862
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 72
  store i64 0, ptr %i.s, align 8, !noalias !41862
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.3, align 8, !noalias !41862
  %.sroa.726.0..sroa.0.0.sroa_idx.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 88
  store i64 0, ptr %.sroa.726.0..sroa.0.0.sroa_idx.us.i.3, align 8, !noalias !41862
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i, i64 96 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.i.loopexit.unr-lcssa, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i
  %.not.i4 = icmp eq i64 %2, 0
  br i1 %.not.i4, label %bb.f, label %._crit_edge.thread.i

bb.f:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.j, align 8, !alias.scope !41861
  %i.u = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.u, label %_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEE11extend_withCskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.v = shl nuw i64 %.sroa.0.0.copyload, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41863
  br label %_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEE11extend_withCskcxRuJ53GpR_9rustworkx.exit

._crit_edge.thread.i.loopexit.unr-lcssa:          ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil.preheader

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader
  %.sroa.0.031.us.i.epil.init = phi ptr [ %i.g, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.preheader ], [ %i.t, %._crit_edge.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil: ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil.preheader
  %.sroa.0.031.us.i.epil = phi ptr [ %i.w, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil ], [ %.sroa.0.031.us.i.epil.init, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil ], [ 0, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil.preheader ]
  store i64 0, ptr %.sroa.0.031.us.i.epil, align 8, !noalias !41862
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i.epil, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.epil, align 8, !noalias !41862
  %.sroa.726.0..sroa.0.0.sroa_idx.us.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i.epil, i64 16
  store i64 0, ptr %.sroa.726.0..sroa.0.0.sroa_idx.us.i.epil, align 8, !noalias !41862
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.031.us.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil, !llvm.loop !41848

._crit_edge.thread.i:                             ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i, %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil, %._crit_edge.i
  %.sroa.0.0.lcssa46.i = phi ptr [ %i.g, %._crit_edge.i ], [ %i.w, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.us.i.epil ], [ %i.t, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.aa, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i ] ; 3 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0.0.lcssa46.i, align 8, !noalias !41861
  %.sroa.6.0..sroa.0.0.lcssa46.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa46.i, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.0.0.lcssa46.i.sroa_idx, align 8, !noalias !41861
  %.sroa.9.0..sroa.0.0.lcssa46.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa46.i, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa.0.0.lcssa46.i.sroa_idx, align 8, !noalias !41861
  store i64 %2, ptr %i.j, align 8, !alias.scope !41861
  br label %_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEE11extend_withCskcxRuJ53GpR_9rustworkx.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.0.031.i = phi ptr [ %i.aa, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.g, %.lr.ph.i ] ; 4 uses
  %.sroa.05.030.i = phi i64 [ %i.z, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i ], [ 1, %.lr.ph.i ]
  %storemerge29.i = phi i64 [ %i.ab, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !41864
  %i.x = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41864 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i

bb.g:                                             ; preds = %.lr.ph.split.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #61
          to label %.noexc16.i unwind label %bb.h, !noalias !41862

.noexc16.i:                                       ; preds = %bb.g
  unreachable

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph.split.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull readonly align 8 %.sroa.6.0.copyload, i64 %i.l, i1 false), !noalias !41865
  %i.z = add nuw nsw i64 %.sroa.05.030.i, 1       ; 2 uses
  store i64 %.sroa.9.0.copyload, ptr %.sroa.0.031.i, align 8, !noalias !41862
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 8
  store ptr %i.x, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !41862
  %.sroa.726.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.726.0..sroa.0.0.sroa_idx.i, align 8, !noalias !41862
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 24 ; 2 uses
  %i.ab = add nuw i64 %storemerge29.i, 1
  %exitcond.not.i = icmp eq i64 %i.z, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.split.i

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge29.i, ptr %i.j, align 8, !alias.scope !41861
  %i.ad = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ad, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i18.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i18.i: ; preds = %bb.h
  %i.ae = shl nuw i64 %.sroa.0.0.copyload, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41866
  br label %.body

.body:                                            ; preds = %bb.h, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i18.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_jEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #63
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit

_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEE11extend_withCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.thread.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.e
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.body, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.j
  %.pn13 = phi { ptr, i32 } [ %i.ac, %.body ], [ %i.af, %bb.j ], [ %i.af, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i ]
  resume { ptr, i32 } %.pn13

bb.j:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41867)
  %.val.i5 = load i64, ptr %1, align 8, !alias.scope !41867 ; 2 uses
  %i.ag = icmp eq i64 %.val.i5, 0
  br i1 %i.ag, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.ah, align 8, !alias.scope !41867, !nonnull !56, !noundef !56
  %i.ai = shl nuw i64 %.val.i5, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41867
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, i64 noundef range(i64 0, 4294967297) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = mul nuw nsw i64 %2, 40                   ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !41873
  %i.e = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41873 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #61
          to label %bb.g unwind label %bb.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.b
  store i64 %2, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41875)
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %._crit_edge.thread.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.j, align 8, !alias.scope !41874
  %.val16.i = load ptr, ptr %1, align 8, !alias.scope !41875 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val17.i = load i64, ptr %i.k, align 8, !alias.scope !41875, !noundef !56 ; 3 uses
  %i.l = icmp eq i64 %.val17.i, 0
  br i1 %i.l, label %_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE11extend_withCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.d
  %i.m = shl i64 %.val17.i, 4                     ; 2 uses
  %i.n = add i64 %i.m, 16                         ; 2 uses
  %i.o = add i64 %.val17.i, 17
  %i.p = add i64 %i.o, %i.n                       ; 4 uses
  %i.q = icmp uge i64 %i.p, %i.n
  %i.r = icmp ult i64 %i.p, 9223372036854775793
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE11extend_withCskcxRuJ53GpR_9rustworkx.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.t = sub nuw nsw i64 -16, %i.m
  %i.u = getelementptr inbounds i8, ptr %.val16.i, i64 %i.t
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !41876
  br label %_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE11extend_withCskcxRuJ53GpR_9rustworkx.exit

._crit_edge.thread.i:                             ; preds = %bb.f, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.0.0.lcssa36.i = phi ptr [ %i.e, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.w, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.lcssa36.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !41874
  store i64 %2, ptr %i.h, align 8, !alias.scope !41874
  br label %_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE11extend_withCskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i:                                         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i, %bb.f
  %.sroa.0.026.i = phi ptr [ %i.w, %bb.f ], [ %i.e, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  %.sroa.05.025.i = phi i64 [ %i.v, %bb.f ], [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ]
  %storemerge24.i = phi i64 [ %i.x, %bb.f ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41876
  invoke fastcc void @_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapjdENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.f unwind label %.body, !noalias !41874

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.05.025.i, 1       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.026.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !41876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41876
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 40 ; 2 uses
  %i.x = add nuw nsw i64 %storemerge24.i, 1
  %exitcond.not.i = icmp eq i64 %i.v, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i

.body:                                            ; preds = %.lr.ph.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge24.i, ptr %i.h, align 8, !alias.scope !41874
  %.val14.i = load ptr, ptr %1, align 8, !alias.scope !41875
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i = load i64, ptr %i.z, align 8, !alias.scope !41875, !noundef !56
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx(ptr %.val14.i, i64 %.val15.i) #63, !noalias !41876
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #63
  br label %bb.h

_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEE11extend_withCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.thread.i, %bb.e, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.y, %.body ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.ab, align 8, !noundef !56
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEECskcxRuJ53GpR_9rustworkx(ptr %.val, i64 %.val4) #63
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 4294967297) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = mul nuw nsw i64 %2, 24                   ; 2 uses
  %i.c = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.c, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintE7reserveCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !41892
  %i.d = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !41892 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.d to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintE7reserveCskcxRuJ53GpR_9rustworkx.exit.i

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.b) #61
          to label %bb.h unwind label %bb.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCse4xgDkpji04_10num_bigint7biguint7BigUintE7reserveCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.c, %bb.a
  %.sroa.10.0 = phi i64 [ %i.f, %bb.c ], [ 8, %bb.a ]
  %i.g = inttoptr i64 %.sroa.10.0 to ptr          ; 5 uses
  store i64 %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41893)
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity31___pyfunction_digraph_find_cycle:bb.a
  %i.i = alloca [72 x i8], align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2643, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.m, i64 noundef 2)
  %i.n = load i64, ptr %i.l, align 8, !range !57, !noundef !56
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit51

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.r = load ptr, ptr %i.m, align 8, !nonnull !56, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !106051
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noundef nonnull %i.r), !inline_history !45
  %i.s = load ptr, ptr %i.e, align 8, !noalias !106051, !noundef !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !106051, !nonnull !56, !noundef !56 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !106051
  br i1 %.not.i.i.i, label %.noexc40, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u), !inline_history !45
  br label %.noexc39

.noexc40:                                         ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 152 ; 4 uses
  %i.x = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.w), !inline_history !45
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc40
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.y), !inline_history !45
  br label %.noexc39

.noexc39:                                         ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.g), !inline_history !45
  %.sroa.022.0.copyload = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.022.0.copyload, ptr %i.aa, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit51

.body:                                            ; preds = %.split5.i.invoke, %bb.f, %bb.g, %bb.m
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %bb.l, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body
  %eh.lpad-body74 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.bv, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.bv, %bb.l ]
  %i.ab = atomicrmw add ptr %i.w, i64 -1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body74

bb.e:                                             ; preds = %.noexc40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noundef !56 ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = icmp eq ptr %i.ae, @_Py_NoneStruct
  %or.cond = or i1 %.not.i, %i.af
  br i1 %or.cond, label %.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !106052
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.ae)
          to label %.noexc44 unwind label %.body

.noexc44:                                         ; preds = %bb.f
  %i.ag = load i64, ptr %i.c, align 8, !range !57, !noalias !106052, !noundef !56
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.8.copyload1.i.i = load i64, ptr %i.ai, align 8, !noalias !106053 ; 2 uses
  br i1 %i.ah, label %bb.g, label %.split5.i

bb.g:                                             ; preds = %.noexc44
  %.sroa.9.8..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.8.copyload3.i.i = load i64, ptr %.sroa.9.8..sroa_idx2.i.i, align 8, !noalias !106053
  %.sroa.11.8..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !106053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.57.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.8..sroa_idx4.i.i, i64 48, i1 false), !noalias !106053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !106052
  store i64 %.sroa.5.8.copyload1.i.i, ptr %i.d, align 8, !alias.scope !106054, !noalias !106053
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.9.8.copyload3.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !106054, !noalias !106053
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef range(i64 4, 19) 6, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.o unwind label %.body

.split5.i:                                        ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !106052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !106055
  %i.ak = trunc i64 %.sroa.5.8.copyload1.i.i to i32
  br label %.split5.i.invoke

.split5.i.invoke:                                 ; preds = %.split.i, %.split5.i
  %i.al = phi i32 [ 1, %.split5.i ], [ 0, %.split.i ]
  %i.am = phi i32 [ %i.ak, %.split5.i ], [ undef, %.split.i ]
  invoke fastcc void @_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity10find_cycle10find_cycleRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2p_5types3any5PyAnyEB2k_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ac, i32 noundef %i.al, i32 %i.am)
          to label %.noexc47 unwind label %.body

.split.i:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !106055
  br label %.split5.i.invoke

.noexc47:                                         ; preds = %.split5.i.invoke
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !106055, !nonnull !56, !noundef !56 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !106055, !noundef !56 ; 8 uses
  %i.ar = shl i64 %i.aq, 4                        ; 4 uses
  %.not.i.i.i46 = icmp ugt i64 %i.ar, 9223372036854775800
  br i1 %.not.i.i.i46, label %bb.k, label %bb.h, !prof !62

bb.h:                                             ; preds = %.noexc47
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !106056
  %i.at = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !106056 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = ptrtoint ptr %i.at to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i, %.noexc47
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.i ], [ 0, %.noexc47 ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ar) #61
          to label %.noexc.i unwind label %bb.l, !noalias !106055

.noexc.i:                                         ; preds = %bb.k
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.j, %bb.h
  %.sroa.4.0.i.i = phi i64 [ %i.aq, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.sroa.10.0.i.i = phi i64 [ %i.av, %bb.j ], [ 8, %bb.h ]
  %i.aw = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 6 uses
  %i.ax = icmp samesign ule i64 %i.aq, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.aq, 0
  br i1 %i.ay, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %xtraiter = and i64 %i.aq, 3                    ; 3 uses
  %i.az = icmp ult i64 %i.aq, 4
  br i1 %i.az, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.aq, -4
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.ba = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.bu, %.preheader.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ba
  %i.bd = load <2 x i32>, ptr %i.bb, align 4, !noalias !106057
  %i.be = zext <2 x i32> %i.bd to <2 x i64>
  store <2 x i64> %i.be, ptr %i.bc, align 8, !noalias !106058
  %i.bf = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bf
  %i.bi = load <2 x i32>, ptr %i.bg, align 4, !noalias !106057
  %i.bj = zext <2 x i32> %i.bi to <2 x i64>
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !noalias !106058
  %i.bk = or disjoint i64 %i.ba, 2                ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bk
  %i.bn = load <2 x i32>, ptr %i.bl, align 4, !noalias !106057
  %i.bo = zext <2 x i32> %i.bn to <2 x i64>
  store <2 x i64> %i.bo, ptr %i.bm, align 8, !noalias !106058
  %i.bp = or disjoint i64 %i.ba, 3                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bp
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load <2 x i32>, ptr %i.bq, align 4, !noalias !106057
  %i.bt = zext <2 x i32> %i.bs to <2 x i64>
  store <2 x i64> %i.bt, ptr %i.br, align 8, !noalias !106058
  %i.bu = add nuw i64 %i.ba, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i = load i64, ptr %i.b, align 8, !noalias !106055 ; 2 uses
  %i.bw = icmp eq i64 %.val7.i, 0
  br i1 %i.bw, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.l
  %i.bx = shl nuw i64 %.val7.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !106055
  br label %.body.thread

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.bu, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %.preheader.i.i.i.i.epil

.preheader.i.i.i.i.epil:                          ; preds = %.preheader.i.i.i.i.epil, %.preheader.i.i.i.i.epil.preheader
  %i.by = phi i64 [ %i.cd, %.preheader.i.i.i.i.epil ], [ %.epil.init, %.preheader.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.epil.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.by
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.by
  %i.cb = load <2 x i32>, ptr %i.bz, align 4, !noalias !106057
  %i.cc = zext <2 x i32> %i.cb to <2 x i64>
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !noalias !106058
  %i.cd = add nuw i64 %i.by, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i, label %.preheader.i.i.i.i.epil, !llvm.loop !106047

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val.i = load i64, ptr %i.b, align 8, !noalias !106055 ; 2 uses
  %i.ce = icmp eq i64 %.val.i, 0
  br i1 %i.ce, label %bb.m, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i9.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i9.i: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i
  %i.cf = shl nuw i64 %.val.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !106055
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i9.i, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !106055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.4.0.i.i, ptr %i.h, align 8
  %.sroa.419.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.aw, ptr %.sroa.419.sroa.4.0..sroa_idx, align 8
  %.sroa.419.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.aq, ptr %.sroa.419.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106059
  invoke fastcc void @_RNvXs3N_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_8EdgeListNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc49 unwind label %.body

.noexc49:                                         ; preds = %bb.m
  %i.cg = load i64, ptr %i.a, align 8, !range !57, !noalias !106059, !noundef !56
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.454.8.copyload55 = load ptr, ptr %i.ci, align 8, !noalias !106060
  br i1 %i.ch, label %bb.n, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit50

bb.n:                                             ; preds = %.noexc49
  %.sroa.8.8..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.458.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.8..sroa_idx56, i64 56, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit50

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit50: ; preds = %.noexc49, %bb.n
  %.sink = phi i64 [ 1, %bb.n ], [ 0, %.noexc49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.454.8.copyload55, ptr %i.cj, align 8
  store i64 %.sink, ptr %0, align 8
  %i.ck = atomicrmw add ptr %i.w, i64 -1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit51

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit51: ; preds = %bb.b, %.noexc39, %bb.o, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !106053
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.531.0..sroa_idx, i64 48, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load <2 x i64>, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store <2 x i64> %i.cm, ptr %i.cl, align 8
  store i64 1, ptr %0, align 8
  %i.cn = atomicrmw add ptr %i.w, i64 -1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit51
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity31___pyfunction_graph_condensation(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 15 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [64 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 14 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.6.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [16 x i8], align 8                ; 3 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [40 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [72 x i8], align 8               ; 25 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 3 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [40 x i8], align 8               ; 9 uses
  %i.aj = alloca [48 x i8], align 8               ; 14 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 5 uses
  %i.an = alloca [40 x i8], align 8               ; 4 uses
  %i.ao = alloca [72 x i8], align 8               ; 11 uses
  %i.ap = alloca [72 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 9 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %i.as = alloca [40 x i8], align 8               ; 8 uses
  %i.at = alloca [48 x i8], align 8               ; 17 uses
  %.sroa.697.i.sroa.6 = alloca [32 x i8], align 8 ; 4 uses
  %.sroa.6.sroa.0.i.sroa.7 = alloca [32 x i8], align 8 ; 6 uses
  %i.au = alloca [72 x i8], align 8               ; 15 uses
  %i.av = alloca [72 x i8], align 8               ; 15 uses
  %.sroa.10.sroa.0 = alloca [32 x i8], align 8    ; 3 uses
  %i.aw = alloca [88 x i8], align 8               ; 14 uses
  %i.ax = alloca [88 x i8], align 8               ; 13 uses
  %i.ay = alloca [88 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 6 uses
  %.sroa.11 = alloca [32 x i8], align 8           ; 8 uses
  %i.az = alloca [72 x i8], align 8               ; 6 uses
  %i.ba = alloca [8 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr null, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2645, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.ba, i64 noundef 1)
  %i.bb = load i64, ptr %i.az, align 8, !range !57, !noundef !56
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store i64 1, ptr %0, align 8
  br label %bb.jo

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.bf = load ptr, ptr %i.ba, align 8, !nonnull !56, !noundef !56
  call fastcc void @_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb1_EB19_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.ay, ptr noundef nonnull %i.bf)
  %i.bg = load i64, ptr %i.ay, align 8, !range !55, !noundef !56 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i64 64, i1 false)
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.jo
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx8dag_algo19___pyfunction_layers:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.em, align 8, !alias.scope !140386, !noalias !140375
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.518.0..sroa_idx.i.i, align 8, !alias.scope !140386, !noalias !140375
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !140386, !noalias !140375
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr @111, ptr %i.en, align 8, !alias.scope !140386, !noalias !140375
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 0, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !alias.scope !140386, !noalias !140375
  %.sroa.623.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.623.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @112, i64 16), i64 16, i1 false), !noalias !140390
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 %i.ed, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !alias.scope !140386, !noalias !140375
  %i.eo = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i8 1, ptr %i.eo, align 8, !alias.scope !140386, !noalias !140375
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !140390
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i64 %i.eg, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !alias.scope !140386, !noalias !140375
  br i1 %i.bu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !140375
  %i.eq = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2_6PyList5empty()
          to label %bb.aa unwind label %bb.cg, !noalias !140376 ; 4 uses

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !140375
  %i.er = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2_6PyList5empty()
          to label %bb.bo unwind label %bb.cg, !noalias !140376 ; 4 uses

bb.aa:                                            ; preds = %bb.y
  store ptr %i.eq, ptr %i.i, align 8, !noalias !140375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !140375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.o, i64 144, i1 false), !noalias !140375
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.55.sroa.7.0..sroa.55.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !140374 ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.et, align 8, !alias.scope !140374, !nonnull !56 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.10.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit174.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !140375
  invoke fastcc void @_RNvXs0_NtCsbNMRYq9Xj9a_14rustworkx_core8dag_algoINtB5_10LayersIterRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2f_5types3any5PyAnyEB2a_ENtB18_9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(144) %i.h)
          to label %bb.ad unwind label %bb.ac, !noalias !140376

.body119.i:                                       ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i166.i, %.body169.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i159.i, %bb.aj, %bb.ac
  %.pn.i = phi { ptr, i32 } [ %i.fc, %bb.aj ], [ %i.ew, %bb.ac ], [ %i.fc, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i159.i ], [ %eh.lpad-body170.i, %.body169.i ], [ %eh.lpad-body170.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i166.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsbNMRYq9Xj9a_14rustworkx_core8dag_algo10LayersIterRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEB2D_ENtB1B_9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(144) %i.h) #63, !noalias !140376
  call void @_Py_DecRef(ptr noundef nonnull %i.eq) #59, !noalias !140376
  br label %.body122.i

bb.ac:                                            ; preds = %bb.ab
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body119.i

bb.ad:                                            ; preds = %bb.ab
  %i.ex = load i64, ptr %i.g, align 8, !range !110, !noalias !140375, !noundef !56 ; 2 uses
  %.not107.i = icmp eq i64 %i.ex, 2
  br i1 %.not107.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.55.sroa.0.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !140375 ; 9 uses
  %.sroa.55.sroa.6.0.copyload.i = load ptr, ptr %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx.i, align 8, !noalias !140375 ; 10 uses
  %.sroa.55.sroa.7.0.copyload.i = load i64, ptr %.sroa.55.sroa.7.0..sroa.55.0..sroa_idx.sroa_idx.i, align 8, !noalias !140375 ; 16 uses
  %i.ey = trunc nuw i64 %i.ex to i1
  br i1 %i.ey, label %bb.ah, label %bb.ak

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !140375
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsbNMRYq9Xj9a_14rustworkx_core8dag_algo10LayersIterRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEB2D_ENtB1B_9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(144) %i.h), !noalias !140376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !140375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !140375
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bt, %bb.af
  %.sroa.11.4 = phi ptr [ %i.er, %bb.bt ], [ %i.eq, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !140375
  %i.ez = icmp eq i64 %.sroa.097.0.copyload, 0
  br i1 %i.ez, label %.thread172, label %bb.ch

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !140391
  %i.fa = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !140391 ; 5 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ai, label %bb.bm, !prof !88

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc156.i unwind label %bb.aj, !noalias !140376

.noexc156.i:                                      ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = icmp eq i64 %.sroa.55.sroa.0.0.copyload.i, 0
  br i1 %i.fd, label %.body119.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i159.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i159.i: ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.sroa.6.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.sroa.6.0.copyload.i, i64 noundef %.sroa.55.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !140392
  br label %.body119.i

bb.ak:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !140375
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.sroa.6.0.copyload.i) ]
  %i.fe = shl i64 %.sroa.55.sroa.7.0.copyload.i, 3 ; 4 uses
  %.not.i.i.i35 = icmp ugt i64 %i.fe, 9223372036854775800
  br i1 %.not.i.i.i35, label %bb.ao, label %bb.al, !prof !62

bb.al:                                            ; preds = %bb.ak
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !140393
  %i.fg = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !140393 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fi = ptrtoint ptr %i.fg to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %.sroa.49.0.ph.i.i = phi i64 [ 8, %bb.am ], [ 0, %bb.ak ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i, i64 %i.fe) #61
          to label %.noexc165.i unwind label %bb.as, !noalias !140376

.noexc165.i:                                      ; preds = %bb.ao
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.an, %bb.al
  %.sroa.10.0.i.i = phi i64 [ %i.fi, %bb.an ], [ 8, %bb.al ]
  %.sroa.49.0.i.i = phi i64 [ %.sroa.55.sroa.7.0.copyload.i, %bb.an ], [ 0, %bb.al ] ; 7 uses
  %i.fj = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 9 uses
  %i.fk = icmp samesign ule i64 %.sroa.55.sroa.7.0.copyload.i, %.sroa.49.0.i.i
  call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp eq i64 %.sroa.55.sroa.7.0.copyload.i, 0 ; 2 uses
  br i1 %i.fl, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %xtraiter682 = and i64 %.sroa.55.sroa.7.0.copyload.i, 1
  %i.fm = icmp eq i64 %.sroa.55.sroa.7.0.copyload.i, 1
  br i1 %i.fm, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %.sroa.55.sroa.7.0.copyload.i, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ar, %.preheader.i.preheader.new
  %i.fn = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.gb, %bb.ar ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %bb.ar ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.sroa.6.0.copyload.i, i64 %i.fn
  %.val15.i.i.i.i.i.i162.i = load i32, ptr %i.fo, align 4, !noalias !140394, !noundef !56
  %i.fp = zext i32 %.val15.i.i.i.i.i.i162.i to i64 ; 2 uses
  %i.fq = icmp ugt i64 %.val1.i.i.i.i.i.i.i.i.i, %i.fp
  br i1 %i.fq, label %bb.ap, label %.preheader.i.1

bb.ap:                                            ; preds = %.preheader.i
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.fp ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !140395, !noundef !56
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  %..i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.fr
  br label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.ap, %.preheader.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %..i.i.i.i.i.i.i.i.i.i, %bb.ap ], [ null, %.preheader.i ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fn
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %i.ft, align 8, !noalias !140396
  %i.fu = or disjoint i64 %i.fn, 1                ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.sroa.6.0.copyload.i, i64 %i.fu
  %.val15.i.i.i.i.i.i162.i.1 = load i32, ptr %i.fv, align 4, !noalias !140394, !noundef !56
  %i.fw = zext i32 %.val15.i.i.i.i.i.i162.i.1 to i64 ; 2 uses
  %i.fx = icmp ugt i64 %.val1.i.i.i.i.i.i.i.i.i, %i.fw
  br i1 %i.fx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.preheader.i.1
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.fw ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !140395, !noundef !56
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.fz, null
  %..i.i.i.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.1, ptr null, ptr %i.fy
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader.i.1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %..i.i.i.i.i.i.i.i.i.i.1, %bb.aq ], [ null, %.preheader.i.1 ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fu
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1, ptr %i.ga, align 8, !noalias !140396
  %i.gb = add nuw i64 %i.fn, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa, label %.preheader.i

bb.as:                                            ; preds = %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i

.body169.i:                                       ; preds = %bb.bj, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i, %bb.au, %bb.as
  %eh.lpad-body170.i = phi { ptr, i32 } [ %i.gc, %bb.as ], [ %i.hl, %bb.bj ], [ %.pn.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i, %bb.au ] ; 2 uses
  %i.gd = icmp eq i64 %.sroa.55.sroa.0.0.copyload.i, 0
  br i1 %i.gd, label %.body119.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i166.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i166.i: ; preds = %.body169.i
  %i.ge = shl nuw i64 %.sroa.55.sroa.0.0.copyload.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.sroa.6.0.copyload.i, i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !140376
  br label %.body119.i

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa: ; preds = %bb.ar
  %lcmp.mod684.not = icmp eq i64 %xtraiter682, 0
  br i1 %lcmp.mod684.not, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.gb, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod685 = trunc i64 %.sroa.55.sroa.7.0.copyload.i to i1
  call void @llvm.assume(i1 %lcmp.mod685)
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.sroa.6.0.copyload.i, i64 %.epil.init
  %.val15.i.i.i.i.i.i162.i.epil = load i32, ptr %i.gf, align 4, !noalias !140394, !noundef !56
  %i.gg = zext i32 %.val15.i.i.i.i.i.i162.i.epil to i64 ; 2 uses
  %i.gh = icmp ugt i64 %.val1.i.i.i.i.i.i.i.i.i, %i.gg
  br i1 %i.gh, label %bb.at, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.epilog-lcssa

bb.at:                                            ; preds = %.preheader.i.epil.preheader
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.gg ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !140395, !noundef !56
  %.not.i.i.i.i.i.i.i.i.i.i.epil = icmp eq ptr %i.gj, null
  %..i.i.i.i.i.i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.i.i.i.i.i.epil, ptr null, ptr %i.gi
  br label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.epilog-lcssa

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.epilog-lcssa: ; preds = %bb.at, %.preheader.i.epil.preheader
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %..i.i.i.i.i.i.i.i.i.i.epil, %bb.at ], [ null, %.preheader.i.epil.preheader ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.epil.init
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.epil, ptr %i.gk, align 8, !noalias !140396
  br label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.epilog-lcssa, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %i.gl = icmp ult i64 %.sroa.55.sroa.7.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.sroa.55.sroa.7.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !140397
  store i64 %.sroa.55.sroa.7.0.copyload.i, ptr %i.e, align 8, !noalias !140397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !140397
  %i.gn = call noundef ptr @PyList_New(i64 noundef %.sroa.55.sroa.7.0.copyload.i) #59, !noalias !140398 ; 8 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.az, label %bb.aw, !prof !60

bb.au:                                            ; preds = %.body.i.i.i.i.i, %bb.av
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.gr, %bb.av ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ] ; 2 uses
  %i.gp = icmp eq i64 %.sroa.49.0.i.i, 0
  br i1 %i.gp, label %.body169.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %bb.au
  %i.gq = shl nuw i64 %.sroa.49.0.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !140399
  br label %.body169.i

bb.av:                                            ; preds = %bb.az
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aw:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i
  store ptr %i.gn, ptr %i.d, align 8, !noalias !140397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !140397
  br i1 %i.fl, label %.loopexit41.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.aw, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.7.018.i.i.i.i.i = phi ptr [ %i.gu, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.fj, %bb.aw ] ; 3 uses
  %i.gs = phi i64 [ %i.gv, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.55.sroa.7.0.copyload.i, %bb.aw ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i = phi i64 [ %i.gy, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.aw ] ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i168.i = icmp eq ptr %.sroa.7.018.i.i.i.i.i, %i.gm
  br i1 %.not.i.i.i.i.i.i.i.i.i168.i, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvMNtB34_4listNtB3z_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3v_s_0INtNtBb_6result6ResultiNtNtB2v_3err5PyErrEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader.i.i.i.i.i
  %i.gt = load ptr, ptr %.sroa.7.018.i.i.i.i.i, align 8, !noalias !140400, !align !82, !noundef !56 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.7.018.i.i.i.i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140401)
  call void @llvm.experimental.noalias.scope.decl(metadata !140402)
  call void @llvm.experimental.noalias.scope.decl(metadata !140403)
  call void @llvm.experimental.noalias.scope.decl(metadata !140404)
  call void @llvm.experimental.noalias.scope.decl(metadata !140405)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gt, align 8, !alias.scope !140406, !noalias !140400, !nonnull !56, !noundef !56
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.val.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ @_Py_NoneStruct, %bb.ax ] ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !140407
  %i.gv = add nsw i64 %i.gs, -1                   ; 2 uses
  %i.gw = call noundef i32 @PyList_SetItem(ptr noundef nonnull %i.gn, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i, ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !140408 ; 0 uses
  %i.gx = icmp eq i64 %i.gv, 0
  %i.gy = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i, 1
  br i1 %i.gx, label %.loopexit41.i.i.i.i.i, label %.preheader.i.i.i.i.i

bb.az:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %bb.bg unwind label %bb.av, !noalias !140398

bb.ba:                                            ; preds = %bb.bb
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.be, %bb.ba
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.gz, %bb.ba ], [ %i.he, %bb.be ]
  call void @_Py_DecRef(ptr noundef nonnull %i.gn) #59, !noalias !140398
  br label %bb.au

_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvMNtB34_4listNtB3z_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3v_s_0INtNtBb_6result6ResultiNtNtB2v_3err5PyErrEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i, ptr %i.c, align 8, !noalias !140397
  %i.ha = icmp eq i64 %.sroa.55.sroa.7.0.copyload.i, %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i
  br i1 %i.ha, label %.loopexit.i.i.i.i.i, label %bb.bb, !prof !61

bb.bb:                                            ; preds = %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvMNtB34_4listNtB3z_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3v_s_0INtNtBb_6result6ResultiNtNtB2v_3err5PyErrEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  invoke void @_RINvNtCslwFuT2d6ECx_4core9panicking13assert_failediiECsi0YPOvDEjiZ_4pyo3(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull @17, ptr nonnull inttoptr (i64 205 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1148) #61
          to label %bb.bg unwind label %bb.ba, !noalias !140398

.loopexit41.i.i.i.i.i:                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %bb.aw
  %.sroa.7.1.ph.i.i.i.i.i = phi ptr [ %i.fj, %bb.aw ], [ %i.gu, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.sroa.55.sroa.7.0.copyload.i, ptr %i.c, align 8, !noalias !140397
  %.not4.i.i.i.i.i.i = icmp eq ptr %.sroa.7.1.ph.i.i.i.i.i, %i.gm
  br i1 %.not4.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.loopexit41.i.i.i.i.i, %bb.bf
  %i.hb = phi ptr [ %i.hd, %bb.bf ], [ %.sroa.7.1.ph.i.i.i.i.i, %.loopexit41.i.i.i.i.i ] ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !140409, !align !82, !noundef !56 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !140410
  call void @llvm.experimental.noalias.scope.decl(metadata !140411)
  call void @llvm.experimental.noalias.scope.decl(metadata !140412)
  call void @llvm.experimental.noalias.scope.decl(metadata !140413)
  call void @llvm.experimental.noalias.scope.decl(metadata !140414)
  call void @llvm.experimental.noalias.scope.decl(metadata !140415)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !140416, !noalias !140409, !nonnull !56, !noundef !56
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i.i.i.i.i.i
  %.val.sink.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.bc ], [ @_Py_NoneStruct, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  call void @_Py_IncRef(ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !140417
  invoke void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4listINtNtBa_8instance5BoundNtB6_6PyListENtB6_13PyListMethods6append5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEuIB2p_uB32_ENCINvMNtB20_4listNtB3D_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2o_B3m_NCB3z_s0_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i unwind label %bb.be, !noalias !140418

bb.be:                                            ; preds = %bb.bd
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !140419
  br label %.body.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEuIB2p_uB32_ENCINvMNtB20_4listNtB3D_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2o_B3m_NCB3z_s0_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.bd
  call void @_Py_DecRef(ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !140419
  %i.hf = load i64, ptr %i.b, align 8, !range !57, !alias.scope !140420, !noalias !140410, !noundef !56
  %i.hg = trunc nuw i64 %i.hf to i1
  br i1 %i.hg, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEuIB2p_uB32_ENCINvMNtB20_4listNtB3D_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2o_B3m_NCB3z_s0_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !140410
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hd, %i.gm
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bb, %bb.az
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %bb.bf, %.loopexit41.i.i.i.i.i, %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvMNtB34_4listNtB3z_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3v_s_0INtNtBb_6result6ResultiNtNtB2v_3err5PyErrEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !140397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !140397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !140397
  %i.hh = icmp eq i64 %.sroa.49.0.i.i, 0
  br i1 %i.hh, label %bb.bi, label %_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtB7_8instance2PyNtNtB5_3any5PyAnyEEINtNtCs87CvPiUlf0m_5alloc3vec3VecBR_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.bh:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEuIB2p_uB32_ENCINvMNtB20_4listNtB3D_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2o_B3m_NCB3z_s0_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.6.8.copyload.i.i.i.i = load ptr, ptr %i.eu, align 8, !noalias !140421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.8..sroa_idx.i.i.i.i, i64 56, i1 false), !noalias !140422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !140410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !140397
  call void @_Py_DecRef(ptr noundef nonnull %i.gn) #59, !noalias !140398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !140397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !140397
  %i.hi = icmp eq i64 %.sroa.49.0.i.i, 0
  br i1 %i.hi, label %.thread.i, label %_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtB7_8instance2PyNtNtB5_3any5PyAnyEEINtNtCs87CvPiUlf0m_5alloc3vec3VecBR_EECskcxRuJ53GpR_9rustworkx.exit.thread17.i.i.i.i

_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtB7_8instance2PyNtNtB5_3any5PyAnyEEINtNtCs87CvPiUlf0m_5alloc3vec3VecBR_EECskcxRuJ53GpR_9rustworkx.exit.thread17.i.i.i.i: ; preds = %bb.bh
  %i.hj = shl nuw i64 %.sroa.49.0.i.i, 3
end_hunk_3
