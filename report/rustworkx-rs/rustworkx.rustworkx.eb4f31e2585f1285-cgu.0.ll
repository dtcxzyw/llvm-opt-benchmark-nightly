Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 400
begin_hunk_0_@_RINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEB6_:bb.a
  %.sroa.25.0 = phi i64 [ undef, %bb.f ], [ 0, %_RINvMs0_NtCshByAT0BfsDP_7ndarray17impl_constructorsINtB8_9ArrayBaseINtNtB8_9data_repr9OwnedReprjEINtNtNtB8_9dimension3dim3DimAjj2_EjE9from_elemTjjEECskcxRuJ53GpR_9rustworkx.exit ], [ %spec.select1.i.i.i.i, %.loopexit489 ] ; 4 uses
  %.sroa.14.0 = phi ptr [ undef, %bb.f ], [ %i.ak, %_RINvMs0_NtCshByAT0BfsDP_7ndarray17impl_constructorsINtB8_9ArrayBaseINtNtB8_9data_repr9OwnedReprjEINtNtNtB8_9dimension3dim3DimAjj2_EjE9from_elemTjjEECskcxRuJ53GpR_9rustworkx.exit ], [ %i.ak, %.loopexit489 ] ; 6 uses
  %.sroa.0258.0 = phi ptr [ null, %bb.f ], [ %i.ah, %_RINvMs0_NtCshByAT0BfsDP_7ndarray17impl_constructorsINtB8_9ArrayBaseINtNtB8_9data_repr9OwnedReprjEINtNtNtB8_9dimension3dim3DimAjj2_EjE9from_elemTjjEECskcxRuJ53GpR_9rustworkx.exit ], [ %i.ah, %.loopexit489 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34129)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.al, align 8, !alias.scope !34129, !nonnull !56, !noundef !56 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.am, align 8, !alias.scope !34129, !noundef !56 ; 2 uses
  %.idx = shl nuw nsw i64 %.val1.i.i, 4
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx ; 2 uses
  %.not.i.i.i41 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i41, label %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i, label %.lr.ph42

bb.n:                                             ; preds = %.lr.ph42
  %.not.i.i.i = icmp eq ptr %.val.i.i, %i.ap
  br i1 %.not.i.i.i, label %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i, label %.lr.ph42

.lr.ph42:                                         ; preds = %.loopexit490, %bb.n
  %i.ao = phi ptr [ %i.ap, %bb.n ], [ %i.an, %.loopexit490 ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !34130, !noundef !56
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %bb.n, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i: ; preds = %.lr.ph42
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.val.i.i to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 4
  %i.au = and i64 %i.at, 4294967295
  %i.av = add nuw nsw i64 %i.au, 1
  br label %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i

_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i: ; preds = %bb.n, %.loopexit490, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.av, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i ], [ 0, %.loopexit490 ], [ 0, %bb.n ]
  %.not.i = icmp eq i64 %.sroa.02.0.i.i.i.i, %i.r
  br i1 %.not.i, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34132)
  %i.aw = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %bb.o
  %i.ax = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !34133
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %.noexc102, label %bb.p, !prof !66

bb.p:                                             ; preds = %.noexc101
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.p, %.noexc101
  invoke fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.f, i64 noundef 16, i64 noundef %i.r) #64
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %.noexc102
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store i64 %i.aw, ptr %i.az, align 8, !alias.scope !34134, !noalias !34131
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.noexc103
  %.sroa.10.0.i = phi i64 [ 0, %.noexc103 ], [ %i.bi, %bb.u ] ; 2 uses
  %.sroa.727.0.i = phi i32 [ 0, %.noexc103 ], [ %i.be, %bb.u ]
  %.sroa.025.0.i = phi ptr [ %.val.i.i, %.noexc103 ], [ %i.bd, %bb.u ]
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.ba = phi i32 [ %i.be, %bb.s ], [ %.sroa.727.0.i, %bb.q ] ; 2 uses
  %i.bb = phi ptr [ %i.bd, %bb.s ], [ %.sroa.025.0.i, %bb.q ] ; 3 uses
  %i.bc = icmp eq ptr %i.bb, %i.an
  br i1 %i.bc, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = add i32 %i.ba, 1                        ; 2 uses
  %.val.i.i.i16.i = load ptr, ptr %i.bb, align 8, !noalias !34135, !noundef !56
  %.not.i.not.i.i.i17.i = icmp eq ptr %.val.i.i.i16.i, null
  br i1 %.not.i.not.i.i.i17.i, label %bb.r, label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %.val5.i = load ptr, ptr %i.f, align 8, !noalias !34131
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val6.i = load i64, ptr %i.bg, align 8, !noalias !34131, !noundef !56
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx(ptr %.val5.i, i64 %.val6.i) #63, !noalias !34131
  br label %.body

_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.r
  %.sroa.031.0.copyload.i = load ptr, ptr %i.f, align 8, !noalias !34131
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.432.0.copyload.i = load i64, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !34131
  %.sroa.7.i.sroa.4.0..sroa.533.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.i.sroa.4.0.copyload = load i64, ptr %.sroa.7.i.sroa.4.0..sroa.533.0..sroa_idx.i.sroa_idx, align 8, !noalias !34131
  %.sroa.7.i.sroa.5.0.copyload = load i64, ptr %i.az, align 8, !noalias !34131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34131
  %i.bh = icmp eq i64 %.sroa.7.i.sroa.4.0.copyload, 0
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bi = add i64 %.sroa.10.0.i, 1
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f, i32 noundef %i.ba, i64 noundef %.sroa.10.0.i)
          to label %bb.q unwind label %bb.t

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %.body, %bb.v
  %.pn71 = phi { ptr, i32 } [ %.pn69, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.bn, %bb.v ], [ %.pn69, %.body ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34136)
  call void @llvm.experimental.noalias.scope.decl(metadata !34137)
  call void @llvm.experimental.noalias.scope.decl(metadata !34138)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !34139, !noundef !56 ; 2 uses
  %.not.i.i.i104 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i104, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit
  %i.bl = load ptr, ptr %i.p, align 8, !alias.scope !34139, !nonnull !56, !noundef !56
  %i.bm = shl nuw i64 %i.bk, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34139
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit

bb.v:                                             ; preds = %bb.m, %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit

.loopexit489:                                     ; preds = %scalar.ph, %middle.block
  %i.bo = add nuw i64 %.sroa.043.0539, 1          ; 2 uses
  %exitcond651.not = icmp eq i64 %i.bo, %i.r
  br i1 %exitcond651.not, label %.loopexit490, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit489
  %.sroa.043.0539 = phi i64 [ %i.bo, %.loopexit489 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bp = mul i64 %.sroa.043.0539, %i.r
  %invariant.gep = getelementptr [8 x i8], ptr %i.ak, i64 %i.bp ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1>, %.lr.ph ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  store <2 x i64> %vec.ind, ptr %i.bq, align 8
  store <2 x i64> %step.add, ptr %i.br, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !33999

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit489, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.sroa.045.0538.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp485, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136, %bb.bb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126, %bb.av, %bb.t
  %.pn69 = phi { ptr, i32 } [ %i.bf, %bb.t ], [ %.pn, %.loopexit.split-lp485 ], [ %i.hk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126 ], [ %i.hu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136 ], [ %i.hk, %bb.av ], [ %i.hu, %bb.bb ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bt = icmp eq ptr %.sroa.0258.0, null
  %.not.i.i.i.i = icmp eq i64 %.sroa.12.0, 0
  %or.cond = or i1 %.not.i.i.i.i, %i.bt
  br i1 %or.cond, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.body
  %i.bu = shl nuw i64 %.sroa.12.0, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0258.0, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34140
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.aq, %bb.ba, %bb.az, %.noexc102, %.split553.us.invoke, %bb.p, %bb.o
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i
  %.sroa.7.i.sroa.4.0 = phi i1 [ undef, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i ], [ %i.bh, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.7.i.sroa.5.0 = phi i64 [ undef, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i ], [ %.sroa.7.i.sroa.5.0.copyload, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ undef, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i ], [ %.sroa.432.0.copyload.i, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 11 uses
  %.sroa.018.0.i = phi ptr [ null, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_NtBB_10UndirectedENtB5_12NodesRemoved13nodes_removedB5_.exit.i ], [ %.sroa.031.0.copyload.i, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.bv, align 8, !alias.scope !34129, !nonnull !56, !noundef !56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4.i = load i64, ptr %i.bw, align 8, !alias.scope !34129, !noundef !56
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.val4.i
  %.not.i105 = icmp eq ptr %.sroa.018.0.i, null   ; 3 uses
  %i.by = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %.not.i192 = icmp eq ptr %2, null               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.49.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val3.i199 = load i64, ptr %i.cb, align 8      ; 13 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.val4.i200 = load i64, ptr %i.cc, align 8      ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.val6.i202 = load i64, ptr %i.ce, align 8      ; 11 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.val5.i203 = load i64, ptr %i.cf, align 8      ; 11 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !nonnull !56 ; 21 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235.backedge, %bb.w
  %i.ch = phi ptr [ %.val.i, %bb.w ], [ %i.cj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235.backedge ] ; 5 uses
  %i.ci = icmp eq ptr %i.ch, %i.bx
  br i1 %i.ci, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ck = load ptr, ptr %i.ch, align 8, !alias.scope !34141, !noalias !34142, !noundef !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235.backedge, label %bb.y

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235.backedge: ; preds = %bb.x, %bb.cb, %bb.ca
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235

.loopexit.split-lp485:                            ; preds = %.loopexit.split-lp485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body195
  %.pn = phi { ptr, i32 } [ %eh.lpad-body196, %.body195 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2o_5types3any5PyAnyEENCINvCskcxRuJ53GpR_9rustworkx26get_edge_iter_with_weightsRINtB1c_11StableGraphB2j_B2j_NtB1g_10UndirectedEE0EEB3q_(ptr %.sroa.018.0.i, i64 %.sroa.6.0.i) #63
  br label %.body

.loopexit.split-lp485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ca, %select.unfold38.i.invoke, %bb.bv, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp485

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.cl, align 8, !alias.scope !34141, !noalias !34142 ; 5 uses
  %.sroa.4405.8.extract.trunc = trunc i64 %.sroa.02.0.copyload.i.i to i32
  br i1 %.not.i105, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.4405.12.extract.shift = lshr i64 %.sroa.02.0.copyload.i.i, 32 ; 2 uses
  %.sroa.4405.12.extract.trunc = trunc nuw i64 %.sroa.4405.12.extract.shift to i32
  br i1 %.sroa.7.i.sroa.4.0, label %select.unfold38.i.invoke, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = and i64 %.sroa.02.0.copyload.i.i, 4294967295
  %i.cn = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !34143, !noundef !56
  %i.co = xor i64 %i.cm, %.sroa.7.i.sroa.5.0
  %i.cp = zext i64 %i.co to i128
  %i.cq = zext i64 %i.cn to i128                  ; 2 uses
  %i.cr = mul nuw i128 %i.cq, %i.cp               ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = xor i128 %i.cs, %i.cr
  %i.cu = trunc i128 %i.ct to i64                 ; 2 uses
  %i.cv = lshr i64 %i.cu, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i8
  %i.cx = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.dp, %bb.ad ]
  %.pn.i.i.i = phi i64 [ %i.cu, %bb.aa ], [ %i.dq, %bb.ad ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %.sroa.6.0.i ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !34144 ; 2 uses
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.cy
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %bb.ac
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.do, %bb.ac ], [ %i.db, %bb.ab ] ; 3 uses
  %i.dc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add i64 %.sroa.01.0.i.i.i.i, %i.dd
  %i.df = and i64 %i.de, %.sroa.6.0.i
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -16
  %.val2.i.i.i.i = load i32, ptr %i.di, align 4, !noalias !34145, !noundef !56
  %i.dj = icmp eq i32 %.val2.i.i.i.i, %.sroa.4405.8.extract.trunc
  br i1 %i.dj, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.ac, !prof !66

._crit_edge.i.i.i:                                ; preds = %bb.ac, %bb.ab
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %select.unfold38.i.invoke, !prof !60

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.dn = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.do = and i16 %i.dn, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.dp = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dq = add i64 %.sroa.01.0.i.i.i.i, %i.dp
  br label %bb.ab

bb.ae:                                            ; preds = %bb.y
  %i.dr = and i64 %.sroa.02.0.copyload.i.i, 4294967295
  %.sroa.4405.12.extract.shift407 = lshr i64 %.sroa.02.0.copyload.i.i, 32
  br label %bb.af

bb.af:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, %bb.ae
  %.sroa.02.0.i = phi i64 [ %i.ey, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %.sroa.4405.12.extract.shift407, %bb.ae ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %i.du, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %i.dr, %bb.ae ] ; 4 uses
  %.val.i18.i = load i64, ptr %i.by, align 8, !noalias !34146, !noundef !56
  %i.ds = icmp sgt i64 %.val.i18.i, 0
  br i1 %i.ds, label %bb.br, label %bb.aj, !prof !109

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !noalias !34146, !noundef !56
  %i.dv = xor i64 %.sroa.4405.12.extract.shift, %.sroa.7.i.sroa.5.0
  %i.dw = zext i64 %i.dv to i128
  %i.dx = mul nuw i128 %i.cq, %i.dw               ; 2 uses
  %i.dy = lshr i128 %i.dx, 64
  %i.dz = xor i128 %i.dy, %i.dx
  %i.ea = trunc i128 %i.dz to i64                 ; 2 uses
  %i.eb = lshr i64 %i.ea, 57
  %i.ec = trunc nuw nsw i64 %i.eb to i8
  %i.ed = insertelement <16 x i8> poison, i8 %i.ec, i64 0
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i20.i = phi i64 [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ev, %bb.ai ]
  %.pn.i.i21.i = phi i64 [ %i.ea, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ew, %bb.ai ]
  %.sroa.01.0.i.i.i22.i = and i64 %.pn.i.i21.i, %.sroa.6.0.i ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.01.0.i.i.i22.i
  %.sroa.0.0.copyload.i24.i.i23.i = load <16 x i8>, ptr %i.ef, align 1, !noalias !34147 ; 2 uses
  %i.eg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, %i.ee
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not.i.not30.i.i24.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.not30.i.i24.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %bb.ag, %bb.ah
  %.sroa.05.0.i31.i.i26.i = phi i16 [ %i.eu, %bb.ah ], [ %i.eh, %bb.ag ] ; 3 uses
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i26.i, i1 true)
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = add i64 %.sroa.01.0.i.i.i22.i, %i.ej
  %i.el = and i64 %i.ek, %.sroa.6.0.i
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  %.val2.i.i.i27.i = load i32, ptr %i.eo, align 4, !noalias !34148, !noundef !56
  %i.ep = icmp eq i32 %.val2.i.i.i27.i, %.sroa.4405.12.extract.trunc
  br i1 %i.ep, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, label %bb.ah, !prof !66

._crit_edge.i.i29.i:                              ; preds = %bb.ah, %bb.ag
  %i.eq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, splat (i8 -1)
  %i.er = bitcast <16 x i1> %i.eq to i16
  %i.es = icmp eq i16 %i.er, 0
  br i1 %i.es, label %bb.ai, label %select.unfold38.i.invoke, !prof !60

bb.ah:                                            ; preds = %.lr.ph.i.i25.i
  %i.et = add i16 %.sroa.05.0.i31.i.i26.i, -1
  %i.eu = and i16 %i.et, %.sroa.05.0.i31.i.i26.i  ; 2 uses
  %.not.i.not.i.i28.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.not.i.i28.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

bb.ai:                                            ; preds = %._crit_edge.i.i29.i
  %i.ev = add i64 %.sroa.011.0.i.i.i20.i, 16      ; 2 uses
  %i.ew = add i64 %.sroa.01.0.i.i.i22.i, %i.ev
  br label %bb.ag

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i: ; preds = %.lr.ph.i.i25.i
  %i.ex = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !34146, !noundef !56
  br label %bb.af

select.unfold38.i.invoke:                         ; preds = %bb.z, %._crit_edge.i.i.i, %._crit_edge.i.i29.i
  %i.ez = phi ptr [ @1159, %._crit_edge.i.i.i ], [ @1160, %._crit_edge.i.i29.i ], [ @1159, %bb.z ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez) #60
          to label %select.unfold38.i.cont unwind label %.loopexit.split-lp485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold38.i.cont:                           ; preds = %select.unfold38.i.invoke
  unreachable

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvNvXsA_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtCslwFuT2d6ECx_4core5clone5Clone5clone13incref_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1161) #61
          to label %.noexc110 unwind label %.loopexit.split-lp485.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit235
  %i.fa = icmp eq i64 %.sroa.6.0.i, 0
  %or.cond.i.i.i = select i1 %.not.i105, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  %i.fb = shl i64 %.sroa.6.0.i, 4                 ; 2 uses
  %i.fc = add i64 %i.fb, 16                       ; 2 uses
  %i.fd = add i64 %.sroa.6.0.i, 17
  %i.fe = add i64 %i.fd, %i.fc                    ; 4 uses
  %i.ff = icmp uge i64 %i.fe, %i.fc
  %i.fg = icmp ult i64 %i.fe, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ff)
  tail call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.i) ]
  %i.fh = icmp eq i64 %i.fe, 0
  br i1 %i.fh, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.fi = sub nuw nsw i64 -16, %i.fb
  %i.fj = getelementptr inbounds i8, ptr %.sroa.018.0.i, i64 %i.fi
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit

_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.al, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ak
  %i.fk = add i64 %.val6.i202, %.val5.i203        ; 2 uses
  %i.fl = tail call noundef i64 @llvm.umin.i64(i64 %.val3.i199, i64 %.val4.i200) ; 3 uses
  %i.fm = icmp eq i64 %i.fk, 1
  %i.fn = icmp ult i64 %i.fl, 2
  %spec.select.i.i.i = or i1 %i.fn, %i.fm         ; 3 uses
  %.sroa.6.0.i116.idx = select i1 %spec.select.i.i.i, i64 %i.fl, i64 0
  %.sroa.6.0.i116 = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.sroa.6.0.i116.idx ; 2 uses
  %i.fo = ptrtoint ptr %i.cg to i64
  %spec.select = select i1 %spec.select.i.i.i, i64 %i.fo, i64 0
  %spec.select745 = select i1 %spec.select.i.i.i, i64 2, i64 1
  br label %bb.am

bb.am:                                            ; preds = %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, %bb.ao
  %.sroa.5325.0 = phi i64 [ %.sroa.5325.1708, %bb.ao ], [ %spec.select, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.0324.0 = phi i64 [ %.sroa.0324.1709, %bb.ao ], [ %spec.select745, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ]
  switch i64 %.sroa.0324.0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 [
    i64 2, label %bb.an
    i64 0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  ]

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703: ; preds = %bb.am
  %i.fp = mul i64 %.sroa.5325.0, %i.fk
  %i.fq = add i64 %.sroa.5325.0, 1                ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fl
  %spec.select.i.i120 = zext i1 %i.fr to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i116, i64 %i.fp
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ft = inttoptr i64 %.sroa.5325.0 to ptr       ; 3 uses
  %i.fu = icmp eq ptr %.sroa.6.0.i116, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %.not65 = icmp eq i64 %.sroa.5325.0, 0
  %or.cond747 = or i1 %i.fu, %.not65
  br i1 %or.cond747, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703
  %.sroa.0.0.i118710 = phi ptr [ %i.fs, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 ], [ %i.ft, %bb.an ]
  %.sroa.0324.1709 = phi i64 [ %spec.select.i.i120, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 ], [ 2, %bb.an ]
  %.sroa.5325.1708 = phi i64 [ %i.fq, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread703 ], [ %i.fw, %bb.an ]
  store double 0.000000e+00, ptr %.sroa.0.0.i118710, align 8
  br label %bb.am

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.am, %bb.an
  %i.fx = icmp ult i64 %i.r, %5
  br i1 %i.fx, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not608 = icmp eq i64 %i.r, 0
  br i1 %.not608, label %.loopexit470, label %.lr.ph605

.lr.ph605:                                        ; preds = %.preheader
  %.not67 = icmp eq ptr %.sroa.0258.0, null
  %i.fy = add i64 %i.r, -1                        ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.val4.i200, i64 %i.fy)
  %i.fz = shl i64 %umin, 3                        ; 2 uses
  %i.ga = shl i64 %.val5.i203, 3
  %i.gb = mul i64 %.val5.i203, %i.fy
  %i.gc = shl i64 %i.gb, 3                        ; 2 uses
  %i.gd = getelementptr i8, ptr %i.cg, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 %i.fz
  %scevgep56 = getelementptr i8, ptr %i.ge, i64 8 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.cg, i64 %i.fz
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = getelementptr i8, ptr %i.cg, i64 %i.gc
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = add i64 %i.r, -1
  %i.gk = tail call i64 @llvm.umin.i64(i64 %.val4.i200, i64 %i.gj)
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  %min.iters.check58 = icmp ugt i64 %i.gl, 8
  %ident.check.not = icmp eq i64 %.val6.i202, 1
  %or.cond81 = select i1 %min.iters.check58, i1 %ident.check.not, i1 false
  %i.gm = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.gn = shufflevector <2 x ptr> %i.gm, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.go = insertelement <2 x ptr> poison, ptr %scevgep56, i64 0
  %i.gp = shufflevector <2 x ptr> %i.go, <2 x ptr> poison, <2 x i32> zeroinitializer
  %.mask = and i64 %.val5.i203, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %bound062 = icmp ult ptr %i.cg, %scevgep56
  %invariant.op = or i1 %bound062, %stride.check
  %i.gq = and i64 %i.gl, 3                        ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  %i.gs = select i1 %i.gr, i64 4, i64 %i.gq
  %n.vec66 = sub i64 %i.gl, %i.gs                 ; 2 uses
  br label %bb.be

bb.ap:                                            ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not66 = icmp eq ptr %.sroa.0258.0, null
  %.not607 = icmp eq i64 %i.r, 0                  ; 2 uses
  br i1 %.not66, label %.preheader471, label %.preheader474

.preheader474:                                    ; preds = %bb.ap
  br i1 %.not607, label %.loopexit470, label %.lr.ph541

.lr.ph541:                                        ; preds = %.preheader474
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.10349.56..sroa_idx350 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.11352.sroa.4.0..sroa.11352.56..sroa_idx353.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.11352.sroa.5.0..sroa.11352.56..sroa_idx353.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.11352.sroa.6.0..sroa.11352.56..sroa_idx353.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.5341.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6344.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6344.sroa.4.0..sroa.6344.0..sroa_idx345.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6344.sroa.5.0..sroa.6344.0..sroa_idx345.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6344.sroa.6.0..sroa.6344.0..sroa_idx345.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.gv = tail call i64 @llvm.umin.i64(i64 %.val3.i199, i64 %i.r) ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -1
  %i.gx = zext i1 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ha = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.hb = shufflevector <2 x i64> %i.ha, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.az

.preheader471:                                    ; preds = %bb.ap
  br i1 %.not607, label %.loopexit470, label %.lr.ph543

.lr.ph543:                                        ; preds = %.preheader471
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5367.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6370.sroa.4.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6370.sroa.5.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6370.sroa.6.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.he = icmp eq i64 %.val3.i199, -1
  %i.hf = zext i1 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph543, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132
  %.sroa.061.0542 = phi i64 [ 0, %.lr.ph543 ], [ %i.hi, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132 ] ; 3 uses
  %i.hi = add nuw i64 %.sroa.061.0542, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.061.0542, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 2, ptr %i.g, align 8
  store i64 %.sroa.061.0542, ptr %.sroa.236.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.g)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit470:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, %.loopexit469.split.us, %.preheader474, %.preheader471, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  %.sroa.4385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0258.0, ptr %.sroa.4385.0..sroa_idx, align 8
  %.sroa.5386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10.0, ptr %.sroa.5386.0..sroa_idx, align 8
  %.sroa.6387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.12.0, ptr %.sroa.6387.0..sroa_idx, align 8
  %.sroa.7388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.14.0, ptr %.sroa.7388.0..sroa_idx, align 8
  %.sroa.8389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.r, ptr %.sroa.8389.0..sroa_idx, align 8
  %.sroa.9390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.r, ptr %.sroa.9390.0..sroa_idx, align 8
  %.sroa.10391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.r, ptr %.sroa.10391.0..sroa_idx, align 8
  %.sroa.11392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.25.0, ptr %.sroa.11392.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %.not.i192, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122, label %bb.ar

bb.ar:                                            ; preds = %.loopexit470
  %.val.i.i.i.i.i121 = load i64, ptr %i.by, align 8, !noundef !56
  %i.hj = icmp sgt i64 %.val.i.i.i.i.i121, 0
  br i1 %i.hj, label %bb.at, label %bb.as, !prof !109

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %2)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.at:                                            ; preds = %bb.ar
  call void @_Py_DecRef(ptr noundef nonnull %2) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.au:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %.noexc128, %bb.aw
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34149)
  call void @llvm.experimental.noalias.scope.decl(metadata !34150)
  call void @llvm.experimental.noalias.scope.decl(metadata !34151)
  %i.hl = load i64, ptr %i.hg, align 8, !alias.scope !34152, !noundef !56 ; 2 uses
  %.not.i.i.i125 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i125, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126: ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34152
  %i.hm = load ptr, ptr %i.i, align 8, !alias.scope !34152, !nonnull !56, !noundef !56
  %i.hn = shl nuw i64 %i.hl, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hm, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34152
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34153
  store ptr %i.i, ptr %i.hc, align 8, !noalias !34153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34154
  store i64 0, ptr %i.d, align 8, !noalias !34155
  store i64 %.val3.i199, ptr %.sroa.5367.0..sroa_idx368, align 8, !noalias !34155
  store i64 %.val5.i203, ptr %.sroa.6370.0..sroa_idx371, align 8, !noalias !34155
  store i64 %.val4.i200, ptr %.sroa.6370.sroa.4.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34155
  store i64 %.val6.i202, ptr %.sroa.6370.sroa.5.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34155
  store ptr %i.cg, ptr %.sroa.6370.sroa.6.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34155
  store i64 1, ptr %i.hd, align 8, !noalias !34154
  %i.ho = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 %i.hf)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB40_(i64 noundef %.val3.i199, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34156)
  call void @llvm.experimental.noalias.scope.decl(metadata !34157)
  call void @llvm.experimental.noalias.scope.decl(metadata !34158)
  %i.hp = load i64, ptr %i.hg, align 8, !alias.scope !34159, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34159
  %i.hq = load ptr, ptr %i.i, align 8, !alias.scope !34159, !nonnull !56, !noundef !56
  %i.hr = shl nuw i64 %i.hp, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hq, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34159
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond653.not = icmp eq i64 %i.hi, %i.r
  br i1 %exitcond653.not, label %.loopexit470, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body195
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph541, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0540 = phi i64 [ 0, %.lr.ph541 ], [ %i.ht, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.ht = add nuw i64 %.sroa.059.0540, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.059.0540, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 2, ptr %i.k, align 8
  store i64 %.sroa.059.0540, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.k)
end_hunk_0
begin_hunk_1_@_RINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEB6_:bb.a
  %.sroa.25.0 = phi i64 [ undef, %bb.f ], [ 0, %_RINvMs0_NtCshByAT0BfsDP_7ndarray17impl_constructorsINtB8_9ArrayBaseINtNtB8_9data_repr9OwnedReprjEINtNtNtB8_9dimension3dim3DimAjj2_EjE9from_elemTjjEECskcxRuJ53GpR_9rustworkx.exit ], [ %spec.select1.i.i.i.i, %.loopexit487 ] ; 4 uses
  %.sroa.14.0 = phi ptr [ undef, %bb.f ], [ %i.ak, %_RINvMs0_NtCshByAT0BfsDP_7ndarray17impl_constructorsINtB8_9ArrayBaseINtNtB8_9data_repr9OwnedReprjEINtNtNtB8_9dimension3dim3DimAjj2_EjE9from_elemTjjEECskcxRuJ53GpR_9rustworkx.exit ], [ %i.ak, %.loopexit487 ] ; 6 uses
  %.sroa.0256.0 = phi ptr [ null, %bb.f ], [ %i.ah, %_RINvMs0_NtCshByAT0BfsDP_7ndarray17impl_constructorsINtB8_9ArrayBaseINtNtB8_9data_repr9OwnedReprjEINtNtNtB8_9dimension3dim3DimAjj2_EjE9from_elemTjjEECskcxRuJ53GpR_9rustworkx.exit ], [ %i.ah, %.loopexit487 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34343)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.al, align 8, !alias.scope !34343, !nonnull !56, !noundef !56 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.am, align 8, !alias.scope !34343, !noundef !56 ; 2 uses
  %.idx = shl nuw nsw i64 %.val1.i.i, 4
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx ; 2 uses
  %.not.i.i.i786 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i786, label %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i, label %.lr.ph787

bb.n:                                             ; preds = %.lr.ph787
  %.not.i.i.i = icmp eq ptr %.val.i.i, %i.ap
  br i1 %.not.i.i.i, label %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i, label %.lr.ph787

.lr.ph787:                                        ; preds = %.loopexit488, %bb.n
  %i.ao = phi ptr [ %i.ap, %bb.n ], [ %i.an, %.loopexit488 ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -16 ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !34344, !noundef !56
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %bb.n, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i: ; preds = %.lr.ph787
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.val.i.i to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 4
  %i.au = and i64 %i.at, 4294967295
  %i.av = add nuw nsw i64 %i.au, 1
  br label %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i

_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i: ; preds = %bb.n, %.loopexit488, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.av, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i ], [ 0, %.loopexit488 ], [ 0, %bb.n ]
  %.not.i = icmp eq i64 %.sroa.02.0.i.i.i.i, %i.r
  br i1 %.not.i, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34346)
  %i.aw = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %bb.o
  %i.ax = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !34347
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %.noexc102, label %bb.p, !prof !66

bb.p:                                             ; preds = %.noexc101
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.p, %.noexc101
  invoke fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.f, i64 noundef 16, i64 noundef %i.r) #64
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %.noexc102
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store i64 %i.aw, ptr %i.az, align 8, !alias.scope !34348, !noalias !34345
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.noexc103
  %.sroa.10.0.i = phi i64 [ 0, %.noexc103 ], [ %i.bi, %bb.u ] ; 2 uses
  %.sroa.727.0.i = phi i32 [ 0, %.noexc103 ], [ %i.be, %bb.u ]
  %.sroa.025.0.i = phi ptr [ %.val.i.i, %.noexc103 ], [ %i.bd, %bb.u ]
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.ba = phi i32 [ %i.be, %bb.s ], [ %.sroa.727.0.i, %bb.q ] ; 2 uses
  %i.bb = phi ptr [ %i.bd, %bb.s ], [ %.sroa.025.0.i, %bb.q ] ; 3 uses
  %i.bc = icmp eq ptr %i.bb, %i.an
  br i1 %i.bc, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = add i32 %i.ba, 1                        ; 2 uses
  %.val.i.i.i16.i = load ptr, ptr %i.bb, align 8, !noalias !34349, !noundef !56
  %.not.i.not.i.i.i17.i = icmp eq ptr %.val.i.i.i16.i, null
  br i1 %.not.i.not.i.i.i17.i, label %bb.r, label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %.val7.i = load ptr, ptr %i.f, align 8, !noalias !34345
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val8.i = load i64, ptr %i.bg, align 8, !noalias !34345, !noundef !56
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEECskcxRuJ53GpR_9rustworkx(ptr %.val7.i, i64 %.val8.i) #63, !noalias !34345
  br label %.body

_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.r
  %.sroa.031.0.copyload.i = load ptr, ptr %i.f, align 8, !noalias !34345
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.432.0.copyload.i = load i64, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !34345
  %.sroa.7.i.sroa.4.0..sroa.533.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.i.sroa.4.0.copyload = load i64, ptr %.sroa.7.i.sroa.4.0..sroa.533.0..sroa_idx.i.sroa_idx, align 8, !noalias !34345
  %.sroa.7.i.sroa.5.0.copyload = load i64, ptr %i.az, align 8, !noalias !34345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34345
  %i.bh = icmp eq i64 %.sroa.7.i.sroa.4.0.copyload, 0
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bi = add i64 %.sroa.10.0.i, 1
  invoke fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f, i32 noundef %i.ba, i64 noundef %.sroa.10.0.i)
          to label %bb.q unwind label %bb.t

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %.body, %bb.v
  %.pn71 = phi { ptr, i32 } [ %.pn69, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.bn, %bb.v ], [ %.pn69, %.body ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34350)
  call void @llvm.experimental.noalias.scope.decl(metadata !34351)
  call void @llvm.experimental.noalias.scope.decl(metadata !34352)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !34353, !noundef !56 ; 2 uses
  %.not.i.i.i104 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i104, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit
  %i.bl = load ptr, ptr %i.p, align 8, !alias.scope !34353, !nonnull !56, !noundef !56
  %i.bm = shl nuw i64 %i.bk, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34353
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit

bb.v:                                             ; preds = %bb.m, %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit

.loopexit487:                                     ; preds = %scalar.ph, %middle.block
  %i.bo = add nuw i64 %.sroa.043.0537, 1          ; 2 uses
  %exitcond649.not = icmp eq i64 %i.bo, %i.r
  br i1 %exitcond649.not, label %.loopexit488, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit487
  %.sroa.043.0537 = phi i64 [ %i.bo, %.loopexit487 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bp = mul i64 %.sroa.043.0537, %i.r
  %invariant.gep = getelementptr [8 x i8], ptr %i.ak, i64 %i.bp ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1>, %.lr.ph ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  store <2 x i64> %vec.ind, ptr %i.bq, align 8
  store <2 x i64> %step.add, ptr %i.br, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !34213

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit487, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.sroa.045.0536.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp483, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136, %bb.bb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126, %bb.av, %bb.t
  %.pn69 = phi { ptr, i32 } [ %i.bf, %bb.t ], [ %.pn, %.loopexit.split-lp483 ], [ %i.hk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126 ], [ %i.hu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136 ], [ %i.hk, %bb.av ], [ %i.hu, %bb.bb ], [ %lpad.loopexit.split-lp841, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bt = icmp eq ptr %.sroa.0256.0, null
  %.not.i.i.i.i = icmp eq i64 %.sroa.12.0, 0
  %or.cond = or i1 %.not.i.i.i.i, %i.bt
  br i1 %or.cond, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.body
  %i.bu = shl nuw i64 %.sroa.12.0, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0256.0, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34354
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtB10_9data_repr9OwnedReprjEINtNtNtB10_9dimension3dim3DimAjj2_EjEEECskcxRuJ53GpR_9rustworkx.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.aq, %bb.ba, %bb.az, %.noexc102, %.split551.us.invoke, %bb.p, %bb.o
  %lpad.loopexit.split-lp841 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i
  %.sroa.7.i.sroa.4.0 = phi i1 [ undef, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i ], [ %i.bh, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.7.i.sroa.5.0 = phi i64 [ undef, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i ], [ %.sroa.7.i.sroa.5.0.copyload, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ undef, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i ], [ %.sroa.432.0.copyload.i, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 11 uses
  %.sroa.018.0.i = phi ptr [ null, %_RNvXs5_CskcxRuJ53GpR_9rustworkxRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1G_5types3any5PyAnyEB1B_ENtB5_12NodesRemoved13nodes_removedB5_.exit.i ], [ %.sroa.031.0.copyload.i, %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENtNtNtB8_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load ptr, ptr %i.bv, align 8, !alias.scope !34343, !nonnull !56, !noundef !56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4.i = load i64, ptr %i.bw, align 8, !alias.scope !34343, !noundef !56
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.val4.i
  %.not.i105 = icmp eq ptr %.sroa.018.0.i, null   ; 3 uses
  %i.by = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %.not.i190 = icmp eq ptr %2, null               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.49.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val3.i197 = load i64, ptr %i.cb, align 8      ; 13 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.val4.i198 = load i64, ptr %i.cc, align 8      ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.val6.i200 = load i64, ptr %i.ce, align 8      ; 11 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.val5.i201 = load i64, ptr %i.cf, align 8      ; 11 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !nonnull !56 ; 21 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216.backedge, %bb.w
  %i.ch = phi ptr [ %.val.i, %bb.w ], [ %i.cj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216.backedge ] ; 5 uses
  %i.ci = icmp eq ptr %i.ch, %i.bx
  br i1 %i.ci, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ck = load ptr, ptr %i.ch, align 8, !alias.scope !34355, !noalias !34356, !noundef !56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216.backedge, label %bb.y

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216.backedge: ; preds = %bb.x, %bb.cb, %bb.ca
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216

.loopexit.split-lp483:                            ; preds = %.loopexit.split-lp483.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body193
  %.pn = phi { ptr, i32 } [ %eh.lpad-body194, %.body193 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp483.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2o_5types3any5PyAnyEENCINvCskcxRuJ53GpR_9rustworkx26get_edge_iter_with_weightsRINtB1c_11StableGraphB2j_B2j_EE0EEB3q_(ptr %.sroa.018.0.i, i64 %.sroa.6.0.i) #63
  br label %.body

.loopexit.split-lp483.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ca, %select.unfold38.i.invoke, %bb.bv, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp483

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.cl, align 8, !alias.scope !34355, !noalias !34356 ; 5 uses
  %.sroa.4403.8.extract.trunc = trunc i64 %.sroa.02.0.copyload.i.i to i32
  br i1 %.not.i105, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.4403.12.extract.shift = lshr i64 %.sroa.02.0.copyload.i.i, 32 ; 2 uses
  %.sroa.4403.12.extract.trunc = trunc nuw i64 %.sroa.4403.12.extract.shift to i32
  br i1 %.sroa.7.i.sroa.4.0, label %select.unfold38.i.invoke, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = and i64 %.sroa.02.0.copyload.i.i, 4294967295
  %i.cn = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !34357, !noundef !56
  %i.co = xor i64 %i.cm, %.sroa.7.i.sroa.5.0
  %i.cp = zext i64 %i.co to i128
  %i.cq = zext i64 %i.cn to i128                  ; 2 uses
  %i.cr = mul nuw i128 %i.cq, %i.cp               ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = xor i128 %i.cs, %i.cr
  %i.cu = trunc i128 %i.ct to i64                 ; 2 uses
  %i.cv = lshr i64 %i.cu, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i8
  %i.cx = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.dp, %bb.ad ]
  %.pn.i.i.i = phi i64 [ %i.cu, %bb.aa ], [ %i.dq, %bb.ad ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %.sroa.6.0.i ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !34358 ; 2 uses
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.cy
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %bb.ac
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.do, %bb.ac ], [ %i.db, %bb.ab ] ; 3 uses
  %i.dc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add i64 %.sroa.01.0.i.i.i.i, %i.dd
  %i.df = and i64 %i.de, %.sroa.6.0.i
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -16
  %.val2.i.i.i.i = load i32, ptr %i.di, align 4, !noalias !34359, !noundef !56
  %i.dj = icmp eq i32 %.val2.i.i.i.i, %.sroa.4403.8.extract.trunc
  br i1 %i.dj, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.ac, !prof !66

._crit_edge.i.i.i:                                ; preds = %bb.ac, %bb.ab
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %select.unfold38.i.invoke, !prof !60

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.dn = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.do = and i16 %i.dn, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.dp = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dq = add i64 %.sroa.01.0.i.i.i.i, %i.dp
  br label %bb.ab

bb.ae:                                            ; preds = %bb.y
  %i.dr = and i64 %.sroa.02.0.copyload.i.i, 4294967295
  %.sroa.4403.12.extract.shift405 = lshr i64 %.sroa.02.0.copyload.i.i, 32
  br label %bb.af

bb.af:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, %bb.ae
  %.sroa.02.0.i = phi i64 [ %i.ey, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %.sroa.4403.12.extract.shift405, %bb.ae ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %i.du, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i ], [ %i.dr, %bb.ae ] ; 4 uses
  %.val.i18.i = load i64, ptr %i.by, align 8, !noalias !34360, !noundef !56
  %i.ds = icmp sgt i64 %.val.i18.i, 0
  br i1 %i.ds, label %bb.br, label %bb.aj, !prof !109

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !noalias !34360, !noundef !56
  %i.dv = xor i64 %.sroa.4403.12.extract.shift, %.sroa.7.i.sroa.5.0
  %i.dw = zext i64 %i.dv to i128
  %i.dx = mul nuw i128 %i.cq, %i.dw               ; 2 uses
  %i.dy = lshr i128 %i.dx, 64
  %i.dz = xor i128 %i.dy, %i.dx
  %i.ea = trunc i128 %i.dz to i64                 ; 2 uses
  %i.eb = lshr i64 %i.ea, 57
  %i.ec = trunc nuw nsw i64 %i.eb to i8
  %i.ed = insertelement <16 x i8> poison, i8 %i.ec, i64 0
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i20.i = phi i64 [ 0, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ev, %bb.ai ]
  %.pn.i.i21.i = phi i64 [ %i.ea, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.ew, %bb.ai ]
  %.sroa.01.0.i.i.i22.i = and i64 %.pn.i.i21.i, %.sroa.6.0.i ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.01.0.i.i.i22.i
  %.sroa.0.0.copyload.i24.i.i23.i = load <16 x i8>, ptr %i.ef, align 1, !noalias !34361 ; 2 uses
  %i.eg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, %i.ee
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not.i.not30.i.i24.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.not30.i.i24.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %bb.ag, %bb.ah
  %.sroa.05.0.i31.i.i26.i = phi i16 [ %i.eu, %bb.ah ], [ %i.eh, %bb.ag ] ; 3 uses
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i26.i, i1 true)
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = add i64 %.sroa.01.0.i.i.i22.i, %i.ej
  %i.el = and i64 %i.ek, %.sroa.6.0.i
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [16 x i8], ptr %.sroa.018.0.i, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -16
  %.val2.i.i.i27.i = load i32, ptr %i.eo, align 4, !noalias !34362, !noundef !56
  %i.ep = icmp eq i32 %.val2.i.i.i27.i, %.sroa.4403.12.extract.trunc
  br i1 %i.ep, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i, label %bb.ah, !prof !66

._crit_edge.i.i29.i:                              ; preds = %bb.ah, %bb.ag
  %i.eq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i23.i, splat (i8 -1)
  %i.er = bitcast <16 x i1> %i.eq to i16
  %i.es = icmp eq i16 %i.er, 0
  br i1 %i.es, label %bb.ai, label %select.unfold38.i.invoke, !prof !60

bb.ah:                                            ; preds = %.lr.ph.i.i25.i
  %i.et = add i16 %.sroa.05.0.i31.i.i26.i, -1
  %i.eu = and i16 %i.et, %.sroa.05.0.i31.i.i26.i  ; 2 uses
  %.not.i.not.i.i28.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.not.i.i28.i, label %._crit_edge.i.i29.i, label %.lr.ph.i.i25.i

bb.ai:                                            ; preds = %._crit_edge.i.i29.i
  %i.ev = add i64 %.sroa.011.0.i.i.i20.i, 16      ; 2 uses
  %i.ew = add i64 %.sroa.01.0.i.i.i22.i, %i.ev
  br label %bb.ag

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit34.i: ; preds = %.lr.ph.i.i25.i
  %i.ex = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !34360, !noundef !56
  br label %bb.af

select.unfold38.i.invoke:                         ; preds = %bb.z, %._crit_edge.i.i.i, %._crit_edge.i.i29.i
  %i.ez = phi ptr [ @1159, %._crit_edge.i.i.i ], [ @1160, %._crit_edge.i.i29.i ], [ @1159, %bb.z ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez) #60
          to label %select.unfold38.i.cont unwind label %.loopexit.split-lp483.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

select.unfold38.i.cont:                           ; preds = %select.unfold38.i.invoke
  unreachable

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvNvXsA_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtCslwFuT2d6ECx_4core5clone5Clone5clone13incref_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1161) #61
          to label %.noexc110 unwind label %.loopexit.split-lp483.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit216
  %i.fa = icmp eq i64 %.sroa.6.0.i, 0
  %or.cond.i.i.i = select i1 %.not.i105, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ak
  %i.fb = shl i64 %.sroa.6.0.i, 4                 ; 2 uses
  %i.fc = add i64 %i.fb, 16                       ; 2 uses
  %i.fd = add i64 %.sroa.6.0.i, 17
  %i.fe = add i64 %i.fd, %i.fc                    ; 4 uses
  %i.ff = icmp uge i64 %i.fe, %i.fc
  %i.fg = icmp ult i64 %i.fe, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ff)
  tail call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.i) ]
  %i.fh = icmp eq i64 %i.fe, 0
  br i1 %i.fh, label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.fi = sub nuw nsw i64 -16, %i.fb
  %i.fj = getelementptr inbounds i8, ptr %.sroa.018.0.i, i64 %i.fi
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 16) #59
  br label %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit

_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.al, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ak
  %i.fk = add i64 %.val6.i200, %.val5.i201        ; 2 uses
  %i.fl = tail call noundef i64 @llvm.umin.i64(i64 %.val3.i197, i64 %.val4.i198) ; 3 uses
  %i.fm = icmp eq i64 %i.fk, 1
  %i.fn = icmp ult i64 %i.fl, 2
  %spec.select.i.i.i = or i1 %i.fn, %i.fm         ; 3 uses
  %.sroa.6.0.i116.idx = select i1 %spec.select.i.i.i, i64 %i.fl, i64 0
  %.sroa.6.0.i116 = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.sroa.6.0.i116.idx ; 2 uses
  %i.fo = ptrtoint ptr %i.cg to i64
  %spec.select = select i1 %spec.select.i.i.i, i64 %i.fo, i64 0
  %spec.select743 = select i1 %spec.select.i.i.i, i64 2, i64 1
  br label %bb.am

bb.am:                                            ; preds = %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit, %bb.ao
  %.sroa.5323.0 = phi i64 [ %.sroa.5323.1706, %bb.ao ], [ %spec.select, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ] ; 4 uses
  %.sroa.0322.0 = phi i64 [ %.sroa.0322.1707, %bb.ao ], [ %spec.select743, %_RNvMs7_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit ]
  switch i64 %.sroa.0322.0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 [
    i64 2, label %bb.an
    i64 0, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  ]

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701: ; preds = %bb.am
  %i.fp = mul i64 %.sroa.5323.0, %i.fk
  %i.fq = add i64 %.sroa.5323.0, 1                ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fl
  %spec.select.i.i120 = zext i1 %i.fr to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i116, i64 %i.fp
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ft = inttoptr i64 %.sroa.5323.0 to ptr       ; 3 uses
  %i.fu = icmp eq ptr %.sroa.6.0.i116, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = ptrtoint ptr %i.fv to i64
  %.not65 = icmp eq i64 %.sroa.5323.0, 0
  %or.cond745 = or i1 %i.fu, %.not65
  br i1 %or.cond745, label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701
  %.sroa.0.0.i118708 = phi ptr [ %i.fs, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 ], [ %i.ft, %bb.an ]
  %.sroa.0322.1707 = phi i64 [ %spec.select.i.i120, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 ], [ 2, %bb.an ]
  %.sroa.5323.1706 = phi i64 [ %i.fq, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread701 ], [ %i.fw, %bb.an ]
  store double 0.000000e+00, ptr %.sroa.0.0.i118708, align 8
  br label %bb.am

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.am, %bb.an
  %i.fx = icmp ult i64 %i.r, %6
  br i1 %i.fx, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not606 = icmp eq i64 %i.r, 0
  br i1 %.not606, label %.loopexit468, label %.lr.ph603

.lr.ph603:                                        ; preds = %.preheader
  %.not67 = icmp eq ptr %.sroa.0256.0, null
  %i.fy = add i64 %i.r, -1                        ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.val4.i198, i64 %i.fy)
  %i.fz = shl i64 %umin, 3                        ; 2 uses
  %i.ga = shl i64 %.val5.i201, 3
  %i.gb = mul i64 %.val5.i201, %i.fy
  %i.gc = shl i64 %i.gb, 3                        ; 2 uses
  %i.gd = getelementptr i8, ptr %i.cg, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 %i.fz
  %scevgep801 = getelementptr i8, ptr %i.ge, i64 8 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.cg, i64 %i.fz
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %i.gh = getelementptr i8, ptr %i.cg, i64 %i.gc
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = add i64 %i.r, -1
  %i.gk = tail call i64 @llvm.umin.i64(i64 %.val4.i198, i64 %i.gj)
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  %min.iters.check803 = icmp ugt i64 %i.gl, 8
  %ident.check.not = icmp eq i64 %.val6.i200, 1
  %or.cond826 = select i1 %min.iters.check803, i1 %ident.check.not, i1 false
  %i.gm = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.gn = shufflevector <2 x ptr> %i.gm, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.go = insertelement <2 x ptr> poison, ptr %scevgep801, i64 0
  %i.gp = shufflevector <2 x ptr> %i.go, <2 x ptr> poison, <2 x i32> zeroinitializer
  %.mask = and i64 %.val5.i201, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %bound0807 = icmp ult ptr %i.cg, %scevgep801
  %invariant.op = or i1 %bound0807, %stride.check
  %i.gq = and i64 %i.gl, 3                        ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  %i.gs = select i1 %i.gr, i64 4, i64 %i.gq
  %n.vec811 = sub i64 %i.gl, %i.gs                ; 2 uses
  br label %bb.be

bb.ap:                                            ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %.not66 = icmp eq ptr %.sroa.0256.0, null
  %.not605 = icmp eq i64 %i.r, 0                  ; 2 uses
  br i1 %.not66, label %.preheader469, label %.preheader472

.preheader472:                                    ; preds = %bb.ap
  br i1 %.not605, label %.loopexit468, label %.lr.ph539

.lr.ph539:                                        ; preds = %.preheader472
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.10347.56..sroa_idx348 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.11350.sroa.4.0..sroa.11350.56..sroa_idx351.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.11350.sroa.5.0..sroa.11350.56..sroa_idx351.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.11350.sroa.6.0..sroa.11350.56..sroa_idx351.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.5339.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6342.0..sroa_idx343 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6342.sroa.4.0..sroa.6342.0..sroa_idx343.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6342.sroa.5.0..sroa.6342.0..sroa_idx343.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6342.sroa.6.0..sroa.6342.0..sroa_idx343.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.gv = tail call i64 @llvm.umin.i64(i64 %.val3.i197, i64 %i.r) ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -1
  %i.gx = zext i1 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ha = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.hb = shufflevector <2 x i64> %i.ha, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.az

.preheader469:                                    ; preds = %bb.ap
  br i1 %.not605, label %.loopexit468, label %.lr.ph541

.lr.ph541:                                        ; preds = %.preheader469
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5365.0..sroa_idx366 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6368.0..sroa_idx369 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6368.sroa.4.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6368.sroa.5.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6368.sroa.6.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.he = icmp eq i64 %.val3.i197, -1
  %i.hf = zext i1 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph541, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132
  %.sroa.061.0540 = phi i64 [ 0, %.lr.ph541 ], [ %i.hi, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132 ] ; 3 uses
  %i.hi = add nuw i64 %.sroa.061.0540, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.061.0540, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 2, ptr %i.g, align 8
  store i64 %.sroa.061.0540, ptr %.sroa.236.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.g)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit468:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, %.loopexit467.split.us, %.preheader472, %.preheader469, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0256.0, ptr %.sroa.4383.0..sroa_idx, align 8
  %.sroa.5384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.10.0, ptr %.sroa.5384.0..sroa_idx, align 8
  %.sroa.6385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.12.0, ptr %.sroa.6385.0..sroa_idx, align 8
  %.sroa.7386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.14.0, ptr %.sroa.7386.0..sroa_idx, align 8
  %.sroa.8387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.r, ptr %.sroa.8387.0..sroa_idx, align 8
  %.sroa.9388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.r, ptr %.sroa.9388.0..sroa_idx, align 8
  %.sroa.10389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.r, ptr %.sroa.10389.0..sroa_idx, align 8
  %.sroa.11390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.25.0, ptr %.sroa.11390.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %.not.i190, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122, label %bb.ar

bb.ar:                                            ; preds = %.loopexit468
  %.val.i.i.i.i.i121 = load i64, ptr %i.by, align 8, !noundef !56
  %i.hj = icmp sgt i64 %.val.i.i.i.i.i121, 0
  br i1 %i.hj, label %bb.at, label %bb.as, !prof !109

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %2)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.at:                                            ; preds = %bb.ar
  call void @_Py_DecRef(ptr noundef nonnull %2) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit122

bb.au:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %.noexc128, %bb.aw
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34363)
  call void @llvm.experimental.noalias.scope.decl(metadata !34364)
  call void @llvm.experimental.noalias.scope.decl(metadata !34365)
  %i.hl = load i64, ptr %i.hg, align 8, !alias.scope !34366, !noundef !56 ; 2 uses
  %.not.i.i.i125 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i.i125, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126: ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34366
  %i.hm = load ptr, ptr %i.i, align 8, !alias.scope !34366, !nonnull !56, !noundef !56
  %i.hn = shl nuw i64 %i.hl, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hm, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34366
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34367
  store ptr %i.i, ptr %i.hc, align 8, !noalias !34367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34368
  store i64 0, ptr %i.d, align 8, !noalias !34369
  store i64 %.val3.i197, ptr %.sroa.5365.0..sroa_idx366, align 8, !noalias !34369
  store i64 %.val5.i201, ptr %.sroa.6368.0..sroa_idx369, align 8, !noalias !34369
  store i64 %.val4.i198, ptr %.sroa.6368.sroa.4.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34369
  store i64 %.val6.i200, ptr %.sroa.6368.sroa.5.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34369
  store ptr %i.cg, ptr %.sroa.6368.sroa.6.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34369
  store i64 1, ptr %i.hd, align 8, !noalias !34368
  %i.ho = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 %i.hf)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB40_(i64 noundef %.val3.i197, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34370)
  call void @llvm.experimental.noalias.scope.decl(metadata !34371)
  call void @llvm.experimental.noalias.scope.decl(metadata !34372)
  %i.hp = load i64, ptr %i.hg, align 8, !alias.scope !34373, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34373
  %i.hq = load ptr, ptr %i.i, align 8, !alias.scope !34373, !nonnull !56, !noundef !56
  %i.hr = shl nuw i64 %i.hp, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hq, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34373
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond651.not = icmp eq i64 %i.hi, %i.r
  br i1 %exitcond651.not, label %.loopexit468, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body193
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph539, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0538 = phi i64 [ 0, %.lr.ph539 ], [ %i.ht, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.ht = add nuw i64 %.sroa.059.0538, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.059.0538, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 2, ptr %i.k, align 8
  store i64 %.sroa.059.0538, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.k)
end_hunk_1
begin_hunk_2_@_RNvXs6_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtCslwFuT2d6ECx_4core3fmt7Display3fmtCskcxRuJ53GpR_9rustworkx:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !160531)
  call void @llvm.experimental.noalias.scope.decl(metadata !160532)
  %.val.i.i189.i = load i64, ptr %i.i, align 8, !alias.scope !160533, !noalias !160463 ; 2 uses
  %i.ec = icmp eq i64 %.val.i.i189.i, 0
  br i1 %i.ec, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit192.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i190.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i190.i: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit184.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i191.i = load ptr, ptr %i.ed, align 8, !alias.scope !160533, !noalias !160463, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i191.i, i64 noundef %.val.i.i189.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !160534
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit192.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit192.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i190.i, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !160463
  call void @llvm.experimental.noalias.scope.decl(metadata !160535)
  call void @llvm.experimental.noalias.scope.decl(metadata !160536)
  %.val.i.i193.i = load i64, ptr %i.j, align 8, !alias.scope !160537, !noalias !160463 ; 2 uses
  %i.ee = icmp eq i64 %.val.i.i193.i, 0
  br i1 %i.ee, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit196.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i194.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i194.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit192.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i.i195.i = load ptr, ptr %i.ef, align 8, !alias.scope !160537, !noalias !160463, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i195.i, i64 noundef %.val.i.i193.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !160538
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit196.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit196.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i194.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit192.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !160463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !160463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !160463
  br label %bb.ab

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit179.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i177.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !160463
  call void @llvm.experimental.noalias.scope.decl(metadata !160539)
  call void @llvm.experimental.noalias.scope.decl(metadata !160540)
  %.val.i.i197.i = load i64, ptr %i.z, align 8, !alias.scope !160541, !noalias !160463 ; 2 uses
  %i.eg = icmp eq i64 %.val.i.i197.i, 0
  br i1 %i.eg, label %_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i198.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i198.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit179.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i199.i = load ptr, ptr %i.eh, align 8, !alias.scope !160541, !noalias !160463, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i199.i, i64 noundef %.val.i.i197.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !160542
  br label %_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit

_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit179.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i198.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !160463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ab, ptr %i.aa, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !56, !noundef !56
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.ei, align 8, !nonnull !56, !noundef !56
  %i.ej = invoke noundef zeroext i1 @_RNvNtCslwFuT2d6ECx_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val5, ptr noundef nonnull @6, ptr noundef nonnull %i.aa)
          to label %_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit unwind label %bb.ah

bb.ah:                                            ; preds = %_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160543)
  call void @llvm.experimental.noalias.scope.decl(metadata !160544)
  %.val.i.i = load i64, ptr %i.ab, align 8, !alias.scope !160545 ; 2 uses
  %i.el = icmp eq i64 %.val.i.i, 0
  br i1 %i.el, label %common.resume, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i = load ptr, ptr %i.em, align 8, !alias.scope !160545, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !160545
  br label %common.resume

_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit: ; preds = %_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !160546)
  call void @llvm.experimental.noalias.scope.decl(metadata !160547)
  %.val.i.i8 = load i64, ptr %i.ab, align 8, !alias.scope !160548 ; 2 uses
  %i.en = icmp eq i64 %.val.i.i8, 0
  br i1 %i.en, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit11, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i9

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i9: ; preds = %_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i10 = load ptr, ptr %i.eo, align 8, !alias.scope !160548, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i10, i64 noundef %.val.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !160548
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit11

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit11: ; preds = %_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret i1 %i.ej
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtCshByAT0BfsDP_7ndarray8impl_ops14arithmetic_opsINtB9_9ArrayBaseINtNtB9_9data_repr9OwnedReprdEINtNtNtB9_9dimension3dim3DimAjj1_EdEINtNtNtCslwFuT2d6ECx_4core3ops5arith3AddRINtB9_8ArrayRefdB1E_EE3addCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %lhsv = load i64, ptr %i.h, align 8             ; 5 uses
  %rhsv = load i64, ptr %i.i, align 8             ; 19 uses
  %.not95 = icmp eq i64 %lhsv, %rhsv
  br i1 %.not95, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160631)
  %i.j = icmp eq i64 %lhsv, 1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %rhsv, 1
  %i.l = icmp sgt i64 %lhsv, -1
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.k, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %rhsv, 0
  br i1 %i.m, label %bb.e, label %_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160632
  store i8 1, ptr %i.a, align 1, !noalias !160632
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1535, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #60
          to label %.noexc8 unwind label %.split.thread

.noexc8:                                          ; preds = %bb.e
  unreachable

.split.thread:                                    ; preds = %bb.e, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !160633)
  call void @llvm.experimental.noalias.scope.decl(metadata !160634)
  call void @llvm.experimental.noalias.scope.decl(metadata !160635)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !160636, !noundef !56 ; 2 uses
  %.not.i.i.i26 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i26, label %.thread, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i27

_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i25.i = load i64, ptr %i.p, align 8, !alias.scope !160637 ; 4 uses
  %.sroa.039.0 = load ptr, ptr %i.g, align 8, !alias.scope !160630, !nonnull !56, !noundef !56 ; 7 uses
  %.sroa.17.0 = load ptr, ptr %2, align 8, !alias.scope !160631, !nonnull !56, !noundef !56 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = icmp samesign ugt i64 %rhsv, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160638)
  %i.r = shl i64 %rhsv, 3                         ; 6 uses
  %i.s = icmp samesign ugt i64 %rhsv, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.r, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.i, label %bb.f, !prof !62

bb.f:                                             ; preds = %_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !160639
  %i.u = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !160639 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = ptrtoint ptr %i.u to i64
  br label %_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.i:                                             ; preds = %bb.g, %_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17
  %.sroa.414.0.ph.i.i.i = phi i64 [ 8, %bb.g ], [ 0, %_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17 ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.414.0.ph.i.i.i, i64 %i.r) #61
          to label %.noexc19 unwind label %.split.thread

.noexc19:                                         ; preds = %bb.i
  unreachable

_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.h, %bb.f
  %.sroa.414.0.i.i.i = phi i64 [ %rhsv, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.sroa.10.0.i.i.i = phi i64 [ %i.w, %bb.h ], [ 8, %bb.f ]
  %i.x = inttoptr i64 %.sroa.10.0.i.i.i to ptr    ; 10 uses
  %i.y = icmp samesign ule i64 %rhsv, %.sroa.414.0.i.i.i
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %rhsv, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %bb.j

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %min.iters.check = icmp samesign ugt i64 %rhsv, 11
  %ident.check.not = icmp eq i64 %.val.i25.i, 1
  %or.cond11 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond11, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.r    ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.039.0, i64 8
  %4 = getelementptr i8, ptr %.sroa.17.0, i64 %i.r
  %bound0 = icmp ugt ptr %i.ab, %i.x
  %bound1 = icmp ult ptr %.sroa.039.0, %i.aa
  %found.conflict = and i1 %bound0, %bound1
  %bound07 = icmp ugt ptr %4, %i.x
  %bound18 = icmp ult ptr %.sroa.17.0, %i.aa
  %found.conflict9 = and i1 %bound07, %bound18
  %conflict.rdx = or i1 %found.conflict, %found.conflict9
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %rhsv, 1152921504606846972     ; 3 uses
  %i.ac = load double, ptr %.sroa.039.0, align 8, !alias.scope !160640, !noalias !160641
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ac, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.sroa.17.0, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <2 x double>, ptr %i.ad, align 8, !alias.scope !160642, !noalias !160641
  %wide.load10 = load <2 x double>, ptr %i.af, align 8, !alias.scope !160642, !noalias !160641
  %i.ag = fadd <2 x double> %broadcast.splat, %wide.load
  %i.ah = fadd <2 x double> %broadcast.splat, %wide.load10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> %i.ag, ptr %i.ae, align 8, !alias.scope !160643, !noalias !160644
  store <2 x double> %i.ah, ptr %i.ai, align 8, !alias.scope !160643, !noalias !160644
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !160601

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %rhsv, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.i.i.i.i.preheader12:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %rhsv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12
  %i.ak = mul i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph, %.val.i25.i
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.17.0, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph
  %.val.i.i.i.i.i.i.i.i.i.i.prol = load double, ptr %.sroa.039.0, align 8, !alias.scope !160645, !noalias !160641, !noundef !56
  %.val1.i.i.i.i.i.i.i.i.i.i.prol = load double, ptr %i.al, align 8, !alias.scope !160646, !noalias !160641, !noundef !56
  %i.an = fadd double %.val.i.i.i.i.i.i.i.i.i.i.prol, %.val1.i.i.i.i.i.i.i.i.i.i.prol
  store double %i.an, ptr %i.am, align 8, !noalias !160641
  %i.ao = or disjoint i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12
  %.sroa.01.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12 ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ap = icmp eq i64 %rhsv, %.neg
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.01.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.aq = mul i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i, %.val.i25.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %.sroa.17.0, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.039.0, align 8, !alias.scope !160645, !noalias !160641, !noundef !56
  %.val1.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ar, align 8, !alias.scope !160646, !noalias !160641, !noundef !56
  %i.at = fadd double %.val.i.i.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i.i.i
  store double %i.at, ptr %i.as, align 8, !noalias !160641
  %i.au = add nuw nsw i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.av = mul i64 %i.au, %.val.i25.i
  %i.aw = getelementptr inbounds [8 x i8], ptr %.sroa.17.0, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.au
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %.sroa.039.0, align 8, !alias.scope !160645, !noalias !160641, !noundef !56
  %.val1.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.aw, align 8, !alias.scope !160646, !noalias !160641, !noundef !56
  %i.ay = fadd double %.val.i.i.i.i.i.i.i.i.i.i.1, %.val1.i.i.i.i.i.i.i.i.i.i.1
  store double %i.ay, ptr %i.ax, align 8, !noalias !160641
  %i.az = add nuw nsw i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.az, %rhsv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !160602

bb.j:                                             ; preds = %_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %rhsv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.j
  %.val.i.i.i4.i.i.i.i.i.i = load double, ptr %.sroa.039.0, align 8, !alias.scope !160647, !noalias !160648, !noundef !56
  %.val1.i.i.i5.i.i.i.i.i.i = load double, ptr %.sroa.17.0, align 8, !alias.scope !160649, !noalias !160648, !noundef !56
  %i.ba = fadd double %.val.i.i.i4.i.i.i.i.i.i, %.val1.i.i.i5.i.i.i.i.i.i
  store double %i.ba, ptr %i.x, align 8, !noalias !160648
  br label %.loopexit

bb.k:                                             ; preds = %bb.c
  %.sroa.039.0115 = load ptr, ptr %i.g, align 8, !alias.scope !160630, !nonnull !56, !noundef !56
  %.sroa.17.0116 = load ptr, ptr %2, align 8, !alias.scope !160631, !nonnull !56, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.17.0116, ptr %i.e, align 8
  %.sroa.847.24..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %lhsv, ptr %.sroa.847.24..sroa_idx117, align 8
  %.sroa.9.24..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.9.24..sroa_idx118, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.058.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.459.0.copyload = load i8, ptr %.sroa.459.0..sroa_idx, align 8 ; 2 uses
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.863.0.copyload = load i64, ptr %.sroa.863.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160651)
  %i.bb = icmp eq ptr %.sroa.058.0.copyload, null
  br i1 %i.bb, label %.noexc6, label %.thread94, !prof !60

.noexc6:                                          ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !160652
  store i8 %.sroa.459.0.copyload, ptr %i.b, align 1, !noalias !160652
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1535, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #60
  unreachable

.thread94:                                        ; preds = %bb.k
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  store ptr %.sroa.058.0.copyload, ptr %i.d, align 8, !alias.scope !160653
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %.sroa.459.0.copyload, ptr %.sroa.550.0..sroa_idx, align 8, !alias.scope !160653
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.653.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.560.0..sroa_idx, i64 15, i1 false)
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %.sroa.039.0115, ptr %.sroa.655.0..sroa_idx, align 8, !alias.scope !160653
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %lhsv, ptr %.sroa.756.0..sroa_idx, align 8, !alias.scope !160653
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.863.0.copyload, ptr %.sroa.857.0..sroa_idx, align 8, !alias.scope !160653
  call fastcc void @_RINvMsy_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj1_EE23zip_mut_with_same_shapedBY_NCINvNtNtB8_8impl_ops14arithmetic_ops10clone_iopfddNvYdNtNtNtCslwFuT2d6ECx_4core3ops5arith3Add3addE0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.655.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i21, %.loopexit, %.thread94, %bb.m
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i.i.i.i.i.i.i, %bb.j
  %.sroa.0.0.i.v.i.i.i.i = icmp ne i64 %rhsv, 0
  %.sroa.0.0.i.i.i.i.i = zext i1 %.sroa.0.0.i.v.i.i.i.i to i64
  store ptr %i.x, ptr %0, align 8, !alias.scope !160654
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %rhsv, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !alias.scope !160654
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.414.0.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !160654
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %i.bc, align 8, !alias.scope !160654
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %rhsv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !160654
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i10.i, align 8, !alias.scope !160654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160657)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !160658, !noundef !56 ; 2 uses
  %.not.i.i.i20 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i20, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i21

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i21: ; preds = %.loopexit
  %i.bf = load ptr, ptr %1, align 8, !alias.scope !160658, !nonnull !56, !noundef !56
  %i.bg = shl nuw i64 %i.be, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !160658
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.034.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.636.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !56, !noundef !56
  %i.bh = load <2 x i64>, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160660)
  %i.bi = icmp eq ptr %.sroa.034.0.copyload, null
  br i1 %i.bi, label %.noexc, label %bb.m, !prof !60

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !160661
  store i8 %.sroa.4.0.copyload, ptr %i.c, align 1, !noalias !160661
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1534, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1535, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #60
  unreachable

bb.m:                                             ; preds = %bb.l
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  store ptr %.sroa.034.0.copyload, ptr %i.f, align 8, !alias.scope !160662
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !160662
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.535.0..sroa_idx, i64 15, i1 false)
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %.sroa.636.0.copyload, ptr %.sroa.633.0..sroa_idx, align 8, !alias.scope !160662
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i64> %i.bh, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !160662
  call fastcc void @_RINvMsy_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj1_EE23zip_mut_with_same_shapedBY_NCINvNtNtB8_8impl_ops14arithmetic_ops10clone_iopfddNvYdNtNtNtCslwFuT2d6ECx_4core3ops5arith3Add3addE0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.633.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22

.thread:                                          ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i27, %.split.thread
end_hunk_2
