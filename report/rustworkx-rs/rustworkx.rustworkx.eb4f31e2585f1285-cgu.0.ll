Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2r_5types3any5PyAnyEB2m_NtB1m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB2r_3err5PyErrEB3Q_:bb.a

.loopexit503.split:                               ; preds = %bb.z, %bb.pa
  %lpad.loopexit505 = landingpad { ptr, i32 }
          cleanup
  br label %.body505

.loopexit.split-lp504:                            ; preds = %select.unfold436.invoke
  %lpad.loopexit.split-lp506 = landingpad { ptr, i32 }
          cleanup
  br label %.body505

bb.y:                                             ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !15379, !noalias !15380 ; 3 uses
  %.sroa.524.sroa.0.0.extract.trunc = trunc i64 %.sroa.02.0.copyload.i.i.i to i32
  %.sroa.524.sroa.6.0.extract.shift = lshr i64 %.sroa.02.0.copyload.i.i.i, 32 ; 2 uses
  %.sroa.524.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.524.sroa.6.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.sroa.524.sroa.0.0.insert.ext = and i64 %.sroa.02.0.copyload.i.i.i, 4294967295
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15381)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.dm = load i128, ptr %.16.val, align 16, !noalias !15381, !noundef !67
  %.val.i498 = load ptr, ptr %.8.val, align 8, !noalias !15381, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15382)
  %.not.i.i = icmp eq ptr %.val.i498, null
  br i1 %.not.i.i, label %_RNCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0B5_.exit.thread7854, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15383
  invoke fastcc void @_RNvXsj_NtNtCsi0YPOvDEjiZ_4pyo35types5tupleTRINtNtB9_8instance2PyNtNtB7_3any5PyAnyEENtNtB9_4call10PyCallArgs15call_positionalCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.g, ptr nonnull %i.dk, ptr noundef nonnull %.val.i498)
          to label %.noexc499 unwind label %.loopexit503.split

.noexc499:                                        ; preds = %bb.z
  %i.dn = load i64, ptr %i.g, align 8, !range !68, !noalias !15383, !noundef !67
  %i.do = trunc nuw i64 %i.dn to i1
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.cf, align 8, !noalias !15383 ; 4 uses
  br i1 %i.do, label %.split4338.us.sink.split, label %bb.aa

_RNCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0B5_.exit.thread7854: ; preds = %bb.y
  store i128 %i.dm, ptr %.sroa.49.0..sroa_idx.i.i, align 16, !alias.scope !15383
  br label %bb.os

bb.aa:                                            ; preds = %.noexc499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15383
  invoke void @_RNvXs0_NtNtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3num26slow_128bit_int_conversionnNtNtBd_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.ag, ptr noundef nonnull %.sroa.06.0.copyload.i.i)
          to label %_RNCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0B5_.exit unwind label %.split4334

.split4334:                                       ; preds = %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.split4334.us, %.split4334
  %.us-phi4335 = phi ptr [ %.sroa.06.0.copyload.i.i, %.split4334 ], [ %.sroa.06.0.copyload.i.i.us, %.split4334.us ]
  %.us-phi4336 = phi { ptr, i32 } [ %i.dp, %.split4334 ], [ %i.de, %.split4334.us ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.us-phi4335) #59, !noalias !15383
  br label %.body505

.split4331.us:                                    ; preds = %bb.w, %.split.us, %.split.us.preheader
  %i.dq = phi i64 [ 0, %.split.us.preheader ], [ 0, %.split.us ], [ %i.dg, %bb.w ] ; 6 uses
  %.us-phi = phi i128 [ 0, %.split.us.preheader ], [ 0, %.split.us ], [ %.sroa.0.0, %bb.w ] ; 11 uses
  %i.dr = shl nuw nsw i64 %.val.i, 1              ; 12 uses
  %i.ds = shl nuw nsw i64 %.val.i, 4              ; 6 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15384
  %i.dt = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15384 ; 27 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ac, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.split4331.us
  %i.dv = load ptr, ptr %i.ca, align 8, !nonnull !67 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %.split4331.us
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ds) #61
          to label %.noexc504 unwind label %bb.s

.noexc504:                                        ; preds = %bb.ac
  unreachable

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.val4.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ed, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1 ] ; 5 uses
  %i.dw = lshr exact i64 %.val4.i.i.i.i.i.i.i, 1  ; 3 uses
  %i.dx = icmp ult i64 %i.dw, %i.dq
  br i1 %i.dx, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa15648 = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ea, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.lcssa15648, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1215) #60
          to label %.noexc.i.i.i.i.i.i.i unwind label %.body.i.i, !noalias !15385

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ad
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %i.dw
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !noalias !15386, !noundef !67
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.val4.i.i.i.i.i.i.i
  store i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i, ptr %i.dz, align 8, !noalias !15387
  %i.ea = lshr exact i64 %.val4.i.i.i.i.i.i.i, 1  ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.dq
  br i1 %i.eb, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1, label %bb.ad

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i
  %i.ec = or disjoint i64 %.val4.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ed = add nuw i64 %.val4.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %i.ea
  %spec.select.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.0.0.i.i7.i.i.i.i.i.i.i.1 = load i64, ptr %spec.select.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !15386, !noundef !67
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ec
  store i64 %.sroa.0.0.i.i7.i.i.i.i.i.i.i.1, ptr %i.ef, align 8, !noalias !15387
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ed, %i.dr
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit, label %.lr.ph.i.i.i.i.i.i.i

.body.i.i:                                        ; preds = %bb.ad
  %i.eg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15388
  br label %.body505

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit: ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjjuNCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEB3m_NtB2m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB3r_3err5PyErrEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB78_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEBX_EE0E0E0B4Q_.exit.i.i.i.i.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15390)
  %i.eh = mul i64 %.val.i491, 24                  ; 3 uses
  %or.cond.i.i.i507 = icmp ugt i64 %.val.i491, 384307168202282325
  br i1 %or.cond.i.i.i507, label %bb.ah, label %bb.ae, !prof !73

bb.ae:                                            ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15391
  %i.ej = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15391 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = ptrtoint ptr %i.ej to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.af, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.af ], [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB52_5types3any5PyAnyEB4X_NtB3X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB52_3err5PyErrEs_0EE9from_iterB6r_.exit ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.eh) #61
          to label %.noexc512 unwind label %bb.ai

.noexc512:                                        ; preds = %bb.ah
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.ag, %bb.ae
  %.sroa.4.0.i.i = phi i64 [ %.val.i491, %bb.ag ], [ 0, %bb.ae ] ; 5 uses
  %.sroa.10.0.i.i508 = phi i64 [ %i.el, %bb.ag ], [ 8, %bb.ae ]
  %i.em = inttoptr i64 %.sroa.10.0.i.i508 to ptr  ; 14 uses
  %i.en = icmp samesign ule i64 %.val.i491, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.en)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val.i491, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i509.preheader

.lr.ph.i.i.i.i.i.i.i509.preheader:                ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.eo = add nsw i64 %.val.i491, -1
  %xtraiter = and i64 %.val.i491, 3               ; 3 uses
  %i.ep = icmp ult i64 %i.eo, 3
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i.i.i509.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i509.preheader.new

.lr.ph.i.i.i.i.i.i.i509.preheader.new:            ; preds = %.lr.ph.i.i.i.i.i.i.i509.preheader
  %unroll_iter = and i64 %.val.i491, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.i509

.lr.ph.i.i.i.i.i.i.i509:                          ; preds = %.lr.ph.i.i.i.i.i.i.i509, %.lr.ph.i.i.i.i.i.i.i509.preheader.new
  %i.eq = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i509.preheader.new ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i509 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i509.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i509 ]
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.eq ; 3 uses
  store i64 0, ptr %i.er, align 8, !noalias !15392
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !15392
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !15392
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.eq ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i64 0, ptr %i.et, align 8, !noalias !15392
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !15392
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !15392
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.eq ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store i64 0, ptr %i.ev, align 8, !noalias !15392
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !15392
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !15392
  %i.ew = add nuw nsw i64 %i.eq, 4                ; 2 uses
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.eq ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  store i64 0, ptr %i.ey, align 8, !noalias !15392
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ex, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !15392
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ex, i64 88
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !15392
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i509

.lr.ph.loopexit.unr-lcssa:                        ; preds = %.lr.ph.i.i.i.i.i.i.i509
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i509.epil.preheader

.lr.ph.i.i.i.i.i.i.i509.epil.preheader:           ; preds = %.lr.ph.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i509.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i509.preheader ], [ %i.ew, %.lr.ph.loopexit.unr-lcssa ]
  %lcmp.mod15682 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15682)
  br label %.lr.ph.i.i.i.i.i.i.i509.epil

.lr.ph.i.i.i.i.i.i.i509.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i.i509.epil, %.lr.ph.i.i.i.i.i.i.i509.epil.preheader
  %i.ez = phi i64 [ %i.fa, %.lr.ph.i.i.i.i.i.i.i509.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i509.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i509.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i509.epil.preheader ]
  %i.fa = add nuw nsw i64 %i.ez, 1
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.ez ; 3 uses
  store i64 0, ptr %i.fb, align 8, !noalias !15392
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.epil, align 8, !noalias !15392
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.epil, align 8, !noalias !15392
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i509.epil, !llvm.loop !14696

.lr.ph:                                           ; preds = %.lr.ph.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i509.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecIBv_jEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  store i64 %.sroa.4.0.i.i, ptr %i.af, align 8, !alias.scope !15393
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !15393
  %.sroa.6.0..sroa_idx.i.i511 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.val.i491, ptr %.sroa.6.0..sroa_idx.i.i511, align 8, !alias.scope !15393
  %umax = tail call i64 @llvm.umax.i64(i64 %.val.i, i64 1)
  br label %bb.ak

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i514: ; preds = %bb.ai, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i
  %.pn369.pn = phi { ptr, i32 } [ %i.fc, %bb.ai ], [ %.pn3697808, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i ], [ %.pn3697808, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15394
  br label %.body505

bb.ai:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i514

._crit_edge:                                      ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit1004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15395)
  %i.fd = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc516 unwind label %.loopexit.split-lp499

.noexc516:                                        ; preds = %._crit_edge
  %i.fe = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !15395
  %i.ff = icmp eq i8 %i.fe, 2
  br i1 %i.ff, label %.noexc517, label %bb.aj, !prof !77

bb.aj:                                            ; preds = %.noexc516
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc517 unwind label %.loopexit.split-lp499

.noexc517:                                        ; preds = %bb.aj, %.noexc516
  invoke fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.ae, i64 noundef 16, i64 noundef %.val.i491) #64
          to label %bb.al unwind label %.loopexit.split-lp499

bb.ak:                                            ; preds = %.lr.ph, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit1004
  %.sroa.0156.04339 = phi i64 [ 0, %.lr.ph ], [ %i.fg, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit1004 ] ; 4 uses
  %i.fg = add nuw i64 %.sroa.0156.04339, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.0156.04339, %i.dq
  br i1 %exitcond.not, label %.invoke, label %bb.om

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit.split-lp499, %bb.nc, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i871, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit1000
  %.pn369 = phi { ptr, i32 } [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.nc ], [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit1000 ], [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i871 ], [ %lpad.loopexit.split-lp501, %.loopexit.split-lp499 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15396)
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit.thread, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit
  %.pn3697807 = phi { ptr, i32 } [ %lpad.loopexit500, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit.thread ], [ %.pn369, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.fi, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.fi = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15397)
  %.val.i.i.i.i = load i64, ptr %i.fh, align 8, !alias.scope !15398, !noalias !15399 ; 2 uses
  %i.fj = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.fk, align 8, !alias.scope !15398, !noalias !15399, !nonnull !67, !noundef !67
  %i.fl = shl nuw i64 %.val.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15400
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %.lr.ph.i.i.i
  %i.fm = icmp eq i64 %i.fi, %.val.i491
  br i1 %i.fm, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit
  %.pn3697808 = phi { ptr, i32 } [ %.pn369, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit ], [ %.pn3697807, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.fn = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.fn, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i514, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i
  %i.fo = mul nuw nsw i64 %.sroa.4.0.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15399
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i514

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.or, %bb.oo
  %lpad.loopexit500 = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i.preheader

.loopexit.split-lp499:                            ; preds = %.noexc517, %.invoke, %._crit_edge, %bb.aj
  %lpad.loopexit.split-lp501 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjjEECskcxRuJ53GpR_9rustworkx.exit

bb.al:                                            ; preds = %.noexc517
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 4 uses
  store i64 %i.fd, ptr %i.fp, align 8, !alias.scope !15401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15402)
  %i.fq = shl nuw nsw i64 %.val.i491, 3           ; 6 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !15403
  %i.fr = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !15403 ; 27 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.am, label %.lr.ph.i.i.i.i.i.preheader

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fq) #61
          to label %.noexc524 unwind label %.thread422

.noexc524:                                        ; preds = %bb.am
  unreachable

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.al
  %min.iters.check = icmp ult i64 %.val.i491, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15646, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %.val.i491, 576460752303423484 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <2 x i64> %vec.ind, ptr %i.ft, align 8, !noalias !15404
  store <2 x i64> %step.add, ptr %i.fu, align 8, !noalias !15404
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !14725

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val.i491, %n.vec
  br i1 %cmp.n, label %.loopexit497, label %.lr.ph.i.i.i.i.i.preheader15646

.lr.ph.i.i.i.i.i.preheader15646:                  ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.ph15647 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15646, %.lr.ph.i.i.i.i.i
  %i.fw = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.i ], [ %.ph15647, %.lr.ph.i.i.i.i.i.preheader15646 ] ; 3 uses
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fw
  store i64 %i.fw, ptr %i.fy, align 8, !noalias !15404
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fx, %.val.i491
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit497, label %.lr.ph.i.i.i.i.i, !llvm.loop !14726

bb.an:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i531, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit
  %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn7817 = phi { ptr, i32 } [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn7816, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i531 ], [ %.pn355.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit ] ; 3 uses
  %.sroa.0130.27815 = phi i8 [ %.sroa.0130.27814, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i531 ], [ %.sroa.0130.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit ]
  %.sroa.0133.27813 = phi i8 [ %.sroa.0133.27812, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i531 ], [ %.sroa.0133.2, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit ]
  %i.fz = trunc nuw i8 %.sroa.0133.27813 to i1
  br i1 %i.fz, label %bb.ol, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit998

.thread422:                                       ; preds = %bb.am
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptionjEEECskcxRuJ53GpR_9rustworkx.exit1000

.loopexit497:                                     ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  store i64 %.val.i491, ptr %i.ab, align 8, !alias.scope !15402
  %.sroa.4.0..sroa_idx.i522 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.fr, ptr %.sroa.4.0..sroa_idx.i522, align 8, !alias.scope !15402
  %.sroa.5.0..sroa_idx.i523 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.val.i491, ptr %.sroa.5.0..sroa_idx.i523, align 8, !alias.scope !15402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.gb = shl nuw nsw i64 %.val.i491, 1           ; 40 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15405)
  %i.gc = shl nuw i64 %.val.i491, 5               ; 8 uses
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity31___pyfunction_digraph_find_cycle:bb.a
  %i.i = alloca [72 x i8], align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2643, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.m, i64 noundef 2)
  %i.n = load i64, ptr %i.l, align 8, !range !68, !noundef !67
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
  %i.r = load ptr, ptr %i.m, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !110719
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noundef nonnull %i.r), !inline_history !56
  %i.s = load ptr, ptr %i.e, align 8, !noalias !110719, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !110719, !nonnull !67, !noundef !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !110719
  br i1 %.not.i.i.i, label %.noexc40, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u), !inline_history !56
  br label %.noexc39

.noexc40:                                         ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 152 ; 4 uses
  %i.x = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.w), !inline_history !56
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc40
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.y), !inline_history !56
  br label %.noexc39

.noexc39:                                         ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.g), !inline_history !56
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
  %i.ab = atomicrmw sub ptr %i.w, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body74

bb.e:                                             ; preds = %.noexc40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noundef !67 ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = icmp eq ptr %i.ae, @_Py_NoneStruct
  %or.cond = or i1 %.not.i, %i.af
  br i1 %or.cond, label %.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !110720
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.ae)
          to label %.noexc44 unwind label %.body

.noexc44:                                         ; preds = %bb.f
  %i.ag = load i64, ptr %i.c, align 8, !range !68, !noalias !110720, !noundef !67
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.8.copyload1.i.i = load i64, ptr %i.ai, align 8, !noalias !110721 ; 2 uses
  br i1 %i.ah, label %bb.g, label %.split5.i

bb.g:                                             ; preds = %.noexc44
  %.sroa.9.8..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.8.copyload3.i.i = load i64, ptr %.sroa.9.8..sroa_idx2.i.i, align 8, !noalias !110721
  %.sroa.11.8..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !110721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.57.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.8..sroa_idx4.i.i, i64 48, i1 false), !noalias !110721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110720
  store i64 %.sroa.5.8.copyload1.i.i, ptr %i.d, align 8, !alias.scope !110722, !noalias !110721
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.9.8.copyload3.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !110722, !noalias !110721
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef range(i64 4, 19) 6, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.o unwind label %.body

.split5.i:                                        ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110723
  %i.ak = trunc i64 %.sroa.5.8.copyload1.i.i to i32
  br label %.split5.i.invoke

.split5.i.invoke:                                 ; preds = %.split.i, %.split5.i
  %i.al = phi i32 [ 1, %.split5.i ], [ 0, %.split.i ]
  %i.am = phi i32 [ %i.ak, %.split5.i ], [ undef, %.split.i ]
  invoke fastcc void @_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity10find_cycle10find_cycleRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2p_5types3any5PyAnyEB2k_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ac, i32 noundef %i.al, i32 %i.am)
          to label %.noexc47 unwind label %.body

.split.i:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110723
  br label %.split5.i.invoke

.noexc47:                                         ; preds = %.split5.i.invoke
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !110723, !nonnull !67, !noundef !67 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !110723, !noundef !67 ; 8 uses
  %i.ar = shl i64 %i.aq, 4                        ; 4 uses
  %.not.i.i.i46 = icmp ugt i64 %i.ar, 9223372036854775800
  br i1 %.not.i.i.i46, label %bb.k, label %bb.h, !prof !73

bb.h:                                             ; preds = %.noexc47
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !110724
  %i.at = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110724 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = ptrtoint ptr %i.at to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i, %.noexc47
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.i ], [ 0, %.noexc47 ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ar) #61
          to label %.noexc.i unwind label %bb.l, !noalias !110723

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
  %i.bd = load <2 x i32>, ptr %i.bb, align 4, !noalias !110725
  %i.be = zext <2 x i32> %i.bd to <2 x i64>
  store <2 x i64> %i.be, ptr %i.bc, align 8, !noalias !110726
  %i.bf = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bf
  %i.bi = load <2 x i32>, ptr %i.bg, align 4, !noalias !110725
  %i.bj = zext <2 x i32> %i.bi to <2 x i64>
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !noalias !110726
  %i.bk = or disjoint i64 %i.ba, 2                ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bk
  %i.bn = load <2 x i32>, ptr %i.bl, align 4, !noalias !110725
  %i.bo = zext <2 x i32> %i.bn to <2 x i64>
  store <2 x i64> %i.bo, ptr %i.bm, align 8, !noalias !110726
  %i.bp = or disjoint i64 %i.ba, 3                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bp
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load <2 x i32>, ptr %i.bq, align 4, !noalias !110725
  %i.bt = zext <2 x i32> %i.bs to <2 x i64>
  store <2 x i64> %i.bt, ptr %i.br, align 8, !noalias !110726
  %i.bu = add nuw i64 %i.ba, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i = load i64, ptr %i.b, align 8, !noalias !110723 ; 2 uses
  %i.bw = icmp eq i64 %.val7.i, 0
  br i1 %i.bw, label %.body.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.l
  %i.bx = shl nuw i64 %.val7.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110723
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
  %i.cb = load <2 x i32>, ptr %i.bz, align 4, !noalias !110725
  %i.cc = zext <2 x i32> %i.cb to <2 x i64>
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !noalias !110726
  %i.cd = add nuw i64 %i.by, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i, label %.preheader.i.i.i.i.epil, !llvm.loop !110715

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val.i = load i64, ptr %i.b, align 8, !noalias !110723 ; 2 uses
  %i.ce = icmp eq i64 %.val.i, 0
  br i1 %i.ce, label %bb.m, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i9.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i9.i: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i
  %i.cf = shl nuw i64 %.val.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110723
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i9.i, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecTjjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB2S_EENCNvNtCskcxRuJ53GpR_9rustworkx12connectivity18digraph_find_cycle0EE9from_iterB3R_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.4.0.i.i, ptr %i.h, align 8
  %.sroa.419.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.aw, ptr %.sroa.419.sroa.4.0..sroa_idx, align 8
  %.sroa.419.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.aq, ptr %.sroa.419.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110727
  invoke fastcc void @_RNvXs3N_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_8EdgeListNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc49 unwind label %.body

.noexc49:                                         ; preds = %bb.m
  %i.cg = load i64, ptr %i.a, align 8, !range !68, !noalias !110727, !noundef !67
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.454.8.copyload55 = load ptr, ptr %i.ci, align 8, !noalias !110728
  br i1 %i.ch, label %bb.n, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit50

bb.n:                                             ; preds = %.noexc49
  %.sroa.8.8..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.458.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.8..sroa_idx56, i64 56, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit50

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit50: ; preds = %.noexc49, %bb.n
  %.sink = phi i64 [ 1, %bb.n ], [ 0, %.noexc49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.454.8.copyload55, ptr %i.cj, align 8
  store i64 %.sink, ptr %0, align 8
  %i.ck = atomicrmw sub ptr %i.w, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit51

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit51: ; preds = %bb.b, %.noexc39, %bb.o, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !110721
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.531.0..sroa_idx, i64 48, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load <2 x i64>, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store <2 x i64> %i.cm, ptr %i.cl, align 8
  store i64 1, ptr %0, align 8
  %i.cn = atomicrmw sub ptr %i.w, i64 1 release, align 8 ; 0 uses
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
  %.sroa.698.i.sroa.6 = alloca [32 x i8], align 8 ; 4 uses
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
  %i.bb = load i64, ptr %i.az, align 8, !range !68, !noundef !67
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store i64 1, ptr %0, align 8
  br label %bb.js

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.bf = load ptr, ptr %i.ba, align 8, !nonnull !67, !noundef !67
  call fastcc void @_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb1_EB19_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.ay, ptr noundef nonnull %i.bf)
  %i.bg = load i64, ptr %i.ay, align 8, !range !66, !noundef !67 ; 2 uses
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
  br label %bb.js
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx8dag_algo19___pyfunction_layers:bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.en, align 8, !alias.scope !146232, !noalias !146236
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.518.0..sroa_idx.i.i, align 8, !alias.scope !146232, !noalias !146236
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !146232, !noalias !146236
  %i.eo = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr @111, ptr %i.eo, align 8, !alias.scope !146232, !noalias !146236
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 0, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !alias.scope !146232, !noalias !146236
  %.sroa.623.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.623.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @112, i64 16), i64 16, i1 false), !noalias !146236
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 %i.ed, ptr %.sroa.624.0..sroa_idx.i.i, align 8, !alias.scope !146232, !noalias !146236
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i8 1, ptr %i.ep, align 8, !alias.scope !146232, !noalias !146236
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !146236
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i64 %i.eh, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !alias.scope !146232, !noalias !146236
  br i1 %i.bu, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !146221
  %i.er = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2_6PyList5empty()
          to label %bb.ac unwind label %bb.ci, !noalias !146222 ; 4 uses

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !146221
  %i.es = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB2_6PyList5empty()
          to label %bb.bq unwind label %bb.ci, !noalias !146222 ; 4 uses

bb.ac:                                            ; preds = %bb.aa
  store ptr %i.er, ptr %i.i, align 8, !noalias !146221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !146221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.o, i64 144, i1 false), !noalias !146221
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.55.sroa.7.0..sroa.55.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.et, align 8, !alias.scope !146220, !noalias !146222 ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !146220, !noalias !146222, !nonnull !67 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.10.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit174.i, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !146221
  invoke fastcc void @_RNvXs0_NtCsbNMRYq9Xj9a_14rustworkx_core8dag_algoINtB5_10LayersIterRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2f_5types3any5PyAnyEB2a_ENtB18_9NodeIndexENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(144) %i.h)
          to label %bb.af unwind label %bb.ae, !noalias !146222

.body119.i:                                       ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i166.i, %.body169.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i159.i, %bb.al, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.fd, %bb.al ], [ %i.ex, %bb.ae ], [ %i.fd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i159.i ], [ %eh.lpad-body170.i, %.body169.i ], [ %eh.lpad-body170.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i166.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsbNMRYq9Xj9a_14rustworkx_core8dag_algo10LayersIterRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEB2D_ENtB1B_9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(144) %i.h) #63, !noalias !146222
  call void @_Py_DecRef(ptr noundef nonnull %i.er) #59, !noalias !146222
  br label %.body122.i

bb.ae:                                            ; preds = %bb.ad
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body119.i

bb.af:                                            ; preds = %bb.ad
  %i.ey = load i64, ptr %i.g, align 8, !range !126, !noalias !146221, !noundef !67 ; 2 uses
  %.not107.i = icmp eq i64 %i.ey, 2
  br i1 %.not107.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.55.sroa.0.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !146221 ; 9 uses
  %.sroa.55.sroa.6.0.copyload.i = load ptr, ptr %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx.i, align 8, !noalias !146221 ; 10 uses
  %.sroa.55.sroa.7.0.copyload.i = load i64, ptr %.sroa.55.sroa.7.0..sroa.55.0..sroa_idx.sroa_idx.i, align 8, !noalias !146221 ; 16 uses
  %i.ez = trunc nuw i64 %i.ey to i1
  br i1 %i.ez, label %bb.aj, label %bb.am

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !146221
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsbNMRYq9Xj9a_14rustworkx_core8dag_algo10LayersIterRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEB2D_ENtB1B_9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(144) %i.h), !noalias !146222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !146221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !146221
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bv, %bb.ah
  %.sroa.11.4 = phi ptr [ %i.es, %bb.bv ], [ %i.er, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !146221
  %i.fa = icmp eq i64 %.sroa.097.0.copyload, 0
  br i1 %i.fa, label %.thread173, label %bb.cj

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !146237
  %i.fb = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !146237 ; 5 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.ak, label %bb.bo, !prof !104

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc156.i unwind label %bb.al, !noalias !146222

.noexc156.i:                                      ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = icmp eq i64 %.sroa.55.sroa.0.0.copyload.i, 0
  br i1 %i.fe, label %.body119.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i159.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i159.i: ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.sroa.6.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.sroa.6.0.copyload.i, i64 noundef %.sroa.55.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !146238
  br label %.body119.i

bb.am:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !146221
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.sroa.6.0.copyload.i) ]
  %i.ff = shl i64 %.sroa.55.sroa.7.0.copyload.i, 3 ; 4 uses
  %.not.i.i.i35 = icmp ugt i64 %i.ff, 9223372036854775800
  br i1 %.not.i.i.i35, label %bb.aq, label %bb.an, !prof !73

bb.an:                                            ; preds = %bb.am
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !146239
  %i.fh = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !146239 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = ptrtoint ptr %i.fh to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ao, %bb.am
  %.sroa.49.0.ph.i.i = phi i64 [ 8, %bb.ao ], [ 0, %bb.am ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i.i, i64 %i.ff) #61
          to label %.noexc165.i unwind label %bb.au, !noalias !146222

.noexc165.i:                                      ; preds = %bb.aq
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.ap, %bb.an
  %.sroa.10.0.i.i = phi i64 [ %i.fj, %bb.ap ], [ 8, %bb.an ]
  %.sroa.49.0.i.i = phi i64 [ %.sroa.55.sroa.7.0.copyload.i, %bb.ap ], [ 0, %bb.an ] ; 7 uses
  %i.fk = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 9 uses
  %i.fl = icmp samesign ule i64 %.sroa.55.sroa.7.0.copyload.i, %.sroa.49.0.i.i
  call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp eq i64 %.sroa.55.sroa.7.0.copyload.i, 0 ; 2 uses
  br i1 %i.fm, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %xtraiter678 = and i64 %.sroa.55.sroa.7.0.copyload.i, 1
  %i.fn = icmp eq i64 %.sroa.55.sroa.7.0.copyload.i, 1
  br i1 %i.fn, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %.sroa.55.sroa.7.0.copyload.i, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.at, %.preheader.i.preheader.new
  %i.fo = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.gc, %bb.at ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %bb.at ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.sroa.6.0.copyload.i, i64 %i.fo
  %.val15.i.i.i.i.i.i162.i = load i32, ptr %i.fp, align 4, !noalias !146240, !noundef !67
  %i.fq = zext i32 %.val15.i.i.i.i.i.i162.i to i64 ; 2 uses
  %i.fr = icmp ugt i64 %.val1.i.i.i.i.i.i.i.i.i, %i.fq
  br i1 %i.fr, label %bb.ar, label %.preheader.i.1

bb.ar:                                            ; preds = %.preheader.i
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.fq ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !146241, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ft, null
  %..i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.fs
  br label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.ar, %.preheader.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %..i.i.i.i.i.i.i.i.i.i, %bb.ar ], [ null, %.preheader.i ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fo
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %i.fu, align 8, !noalias !146242
  %i.fv = or disjoint i64 %i.fo, 1                ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.sroa.6.0.copyload.i, i64 %i.fv
  %.val15.i.i.i.i.i.i162.i.1 = load i32, ptr %i.fw, align 4, !noalias !146240, !noundef !67
  %i.fx = zext i32 %.val15.i.i.i.i.i.i162.i.1 to i64 ; 2 uses
  %i.fy = icmp ugt i64 %.val1.i.i.i.i.i.i.i.i.i, %i.fx
  br i1 %i.fy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader.i.1
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.fx ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !146241, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.ga, null
  %..i.i.i.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.1, ptr null, ptr %i.fz
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader.i.1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %..i.i.i.i.i.i.i.i.i.i.1, %bb.as ], [ null, %.preheader.i.1 ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fv
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.1, ptr %i.gb, align 8, !noalias !146242
  %i.gc = add nuw i64 %i.fo, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa, label %.preheader.i

bb.au:                                            ; preds = %bb.aq
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i

.body169.i:                                       ; preds = %bb.bl, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i, %bb.aw, %bb.au
  %eh.lpad-body170.i = phi { ptr, i32 } [ %i.gd, %bb.au ], [ %i.hm, %bb.bl ], [ %.pn.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i, %bb.aw ] ; 2 uses
  %i.ge = icmp eq i64 %.sroa.55.sroa.0.0.copyload.i, 0
  br i1 %i.ge, label %.body119.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i166.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i166.i: ; preds = %.body169.i
  %i.gf = shl nuw i64 %.sroa.55.sroa.0.0.copyload.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.55.sroa.6.0.copyload.i, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !146222
  br label %.body119.i

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa: ; preds = %bb.at
  %lcmp.mod680.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod680.not, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.gc, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod681 = trunc i64 %.sroa.55.sroa.7.0.copyload.i to i1
  call void @llvm.assume(i1 %lcmp.mod681)
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.sroa.6.0.copyload.i, i64 %.epil.init
  %.val15.i.i.i.i.i.i162.i.epil = load i32, ptr %i.gg, align 4, !noalias !146240, !noundef !67
  %i.gh = zext i32 %.val15.i.i.i.i.i.i162.i.epil to i64 ; 2 uses
  %i.gi = icmp ugt i64 %.val1.i.i.i.i.i.i.i.i.i, %i.gh
  br i1 %i.gi, label %bb.av, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.epilog-lcssa

bb.av:                                            ; preds = %.preheader.i.epil.preheader
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.gh ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !146241, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i.epil = icmp eq ptr %i.gk, null
  %..i.i.i.i.i.i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.i.i.i.i.i.epil, ptr null, ptr %i.gj
  br label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.epilog-lcssa

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.epilog-lcssa: ; preds = %bb.av, %.preheader.i.epil.preheader
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %..i.i.i.i.i.i.i.i.i.i.epil, %bb.av ], [ null, %.preheader.i.epil.preheader ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.epil.init
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.epil, ptr %i.gl, align 8, !noalias !146242
  br label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.epilog-lcssa, %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i.loopexit.unr-lcssa, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1m_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %i.gm = icmp ult i64 %.sroa.55.sroa.7.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.sroa.55.sroa.7.0.copyload.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !146243
  store i64 %.sroa.55.sroa.7.0.copyload.i, ptr %i.e, align 8, !noalias !146243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !146243
  %i.go = call noundef ptr @PyList_New(i64 noundef %.sroa.55.sroa.7.0.copyload.i) #59, !noalias !146244 ; 8 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.bb, label %bb.ay, !prof !71

bb.aw:                                            ; preds = %.body.i.i.i.i.i, %bb.ax
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.gs, %bb.ax ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ] ; 2 uses
  %i.gq = icmp eq i64 %.sroa.49.0.i.i, 0
  br i1 %i.gq, label %.body169.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.gr = shl nuw i64 %.sroa.49.0.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fk, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !146245
  br label %.body169.i

bb.ax:                                            ; preds = %bb.bb
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ay:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i
  store ptr %i.go, ptr %i.d, align 8, !noalias !146243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146243
  br i1 %i.fm, label %.loopexit41.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ay, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.7.018.i.i.i.i.i = phi ptr [ %i.gv, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.fk, %bb.ay ] ; 3 uses
  %i.gt = phi i64 [ %i.gw, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.55.sroa.7.0.copyload.i, %bb.ay ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i = phi i64 [ %i.gz, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ay ] ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i168.i = icmp eq ptr %.sroa.7.018.i.i.i.i.i, %i.gn
  br i1 %.not.i.i.i.i.i.i.i.i.i168.i, label %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvMNtB34_4listNtB3z_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3v_s_0INtNtBb_6result6ResultiNtNtB2v_3err5PyErrEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.preheader.i.i.i.i.i
  %i.gu = load ptr, ptr %.sroa.7.018.i.i.i.i.i, align 8, !noalias !146246, !align !98, !noundef !67 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.7.018.i.i.i.i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146247)
  call void @llvm.experimental.noalias.scope.decl(metadata !146248)
  call void @llvm.experimental.noalias.scope.decl(metadata !146249)
  call void @llvm.experimental.noalias.scope.decl(metadata !146250)
  call void @llvm.experimental.noalias.scope.decl(metadata !146251)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gu, align 8, !alias.scope !146252, !noalias !146253, !nonnull !67, !noundef !67
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  %.val.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ba ], [ @_Py_NoneStruct, %bb.az ] ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !146254
  %i.gw = add nsw i64 %i.gt, -1                   ; 2 uses
  %i.gx = call noundef i32 @PyList_SetItem(ptr noundef nonnull %i.go, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i, ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !146255 ; 0 uses
  %i.gy = icmp eq i64 %i.gw, 0
  %i.gz = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i, 1
  br i1 %i.gy, label %.loopexit41.i.i.i.i.i, label %.preheader.i.i.i.i.i

bb.bb:                                            ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1L_5types3any5PyAnyEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx8dag_algo6layerss0_0EE9from_iterB57_.exit.i
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %bb.bi unwind label %bb.ax, !noalias !146244

bb.bc:                                            ; preds = %bb.bd
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bg, %bb.bc
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ha, %bb.bc ], [ %i.hf, %bb.bg ]
  call void @_Py_DecRef(ptr noundef nonnull %i.go) #59, !noalias !146244
  br label %bb.aw

_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvMNtB34_4listNtB3z_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3v_s_0INtNtBb_6result6ResultiNtNtB2v_3err5PyErrEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i, ptr %i.c, align 8, !noalias !146243
  %i.hb = icmp eq i64 %.sroa.55.sroa.7.0.copyload.i, %.sroa.0.0.i.i.i.i.i.i.i.i.i167.i
  br i1 %i.hb, label %.loopexit.i.i.i.i.i, label %bb.bd, !prof !72

bb.bd:                                            ; preds = %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvMNtB34_4listNtB3z_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3v_s_0INtNtBb_6result6ResultiNtNtB2v_3err5PyErrEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  invoke void @_RINvNtCslwFuT2d6ECx_4core9panicking13assert_failediiECsi0YPOvDEjiZ_4pyo3(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull @17, ptr nonnull inttoptr (i64 205 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1148) #61
          to label %bb.bi unwind label %bb.bc, !noalias !146244

.loopexit41.i.i.i.i.i:                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %bb.ay
  %.sroa.7.1.ph.i.i.i.i.i = phi ptr [ %i.fk, %bb.ay ], [ %i.gv, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEiINtNtNtBa_3ops12control_flow11ControlFlowIB2p_iB32_EiENCINvMNtB20_4listNtB4k_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvXs_NtB6_4takeINtB5C_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB2o_iB41_NCB4g_s_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.sroa.55.sroa.7.0.copyload.i, ptr %i.c, align 8, !noalias !146243
  %.not4.i.i.i.i.i.i = icmp eq ptr %.sroa.7.1.ph.i.i.i.i.i, %i.gn
  br i1 %.not4.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.loopexit41.i.i.i.i.i, %bb.bh
  %i.hc = phi ptr [ %i.he, %bb.bh ], [ %.sroa.7.1.ph.i.i.i.i.i, %.loopexit41.i.i.i.i.i ] ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !146256, !align !98, !noundef !67 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146257
  call void @llvm.experimental.noalias.scope.decl(metadata !146258)
  call void @llvm.experimental.noalias.scope.decl(metadata !146259)
  call void @llvm.experimental.noalias.scope.decl(metadata !146260)
  call void @llvm.experimental.noalias.scope.decl(metadata !146261)
  call void @llvm.experimental.noalias.scope.decl(metadata !146262)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hd, align 8, !alias.scope !146263, !noalias !146264, !nonnull !67, !noundef !67
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i.i.i.i.i.i
  %.val.sink.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i, %bb.be ], [ @_Py_NoneStruct, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  call void @_Py_IncRef(ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !146265
  invoke void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4listINtNtBa_8instance5BoundNtB6_6PyListENtB6_13PyListMethods6append5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEuIB2p_uB32_ENCINvMNtB20_4listNtB3D_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2o_B3m_NCB3z_s0_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i unwind label %bb.bg, !noalias !146266

bb.bg:                                            ; preds = %bb.bf
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !146267
  br label %.body.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEuIB2p_uB32_ENCINvMNtB20_4listNtB3D_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2o_B3m_NCB3z_s0_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.bf
  call void @_Py_DecRef(ptr noundef nonnull %.val.sink.i.i.i.i.i.i.i.i.i.i.i) #59, !noalias !146267
  %i.hg = load i64, ptr %i.b, align 8, !range !68, !alias.scope !146268, !noalias !146269, !noundef !67
  %i.hh = trunc nuw i64 %i.hg to i1
  br i1 %i.hh, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEuIB2p_uB32_ENCINvMNtB20_4listNtB3D_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2o_B3m_NCB3z_s0_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146257
  %.not.i.i.i.i.i.i = icmp eq ptr %i.he, %i.gn
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bd, %bb.bb
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %bb.bh, %.loopexit41.i.i.i.i.i, %_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvMNtB34_4listNtB3z_6PyList3newB23_INtB1k_3VecB23_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB3v_s_0INtNtBb_6result6ResultiNtNtB2v_3err5PyErrEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !146243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !146243
  %i.hi = icmp eq i64 %.sroa.49.0.i.i, 0
  br i1 %i.hi, label %bb.bk, label %_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtB7_8instance2PyNtNtB5_3any5PyAnyEEINtNtCs87CvPiUlf0m_5alloc3vec3VecBR_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.bj:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtBa_6option6OptionRINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEEINtNtBa_6result6ResultINtB1p_5BoundB1W_ENtNtB1r_3err5PyErrEuIB2p_uB32_ENCINvMNtB20_4listNtB3D_6PyList3newBZ_INtNtCs87CvPiUlf0m_5alloc3vec3VecBZ_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2o_B3m_NCB3z_s0_0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.6.8.copyload.i.i.i.i = load ptr, ptr %i.ev, align 8, !noalias !146270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.8..sroa_idx.i.i.i.i, i64 56, i1 false), !noalias !146271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146243
  call void @_Py_DecRef(ptr noundef nonnull %i.go) #59, !noalias !146244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !146243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !146243
  %i.hj = icmp eq i64 %.sroa.49.0.i.i, 0
  br i1 %i.hj, label %.thread.i, label %_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtB7_8instance2PyNtNtB5_3any5PyAnyEEINtNtCs87CvPiUlf0m_5alloc3vec3VecBR_EECskcxRuJ53GpR_9rustworkx.exit.thread17.i.i.i.i

_RINvMNtNtCsi0YPOvDEjiZ_4pyo35types4listNtB3_6PyList3newINtNtCslwFuT2d6ECx_4core6option6OptionRINtNtB7_8instance2PyNtNtB5_3any5PyAnyEEINtNtCs87CvPiUlf0m_5alloc3vec3VecBR_EECskcxRuJ53GpR_9rustworkx.exit.thread17.i.i.i.i: ; preds = %bb.bj
  %i.hk = shl nuw i64 %.sroa.49.0.i.i, 3
end_hunk_2
