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
  %.pn69 = phi { ptr, i32 } [ %i.bf, %bb.t ], [ %.pn, %.loopexit.split-lp485 ], [ %i.hf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126 ], [ %i.hp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136 ], [ %i.hf, %bb.av ], [ %i.hp, %bb.bb ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
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
  %i.cg = load ptr, ptr %i.cd, align 8, !nonnull !56 ; 22 uses
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
  %umin = tail call i64 @llvm.umin.i64(i64 %.val4.i200, i64 %i.fy) ; 2 uses
  %i.fz = shl i64 %umin, 3
  %6 = add i64 %i.fz, 8                           ; 2 uses
  %i.ga = shl i64 %.val5.i203, 3
  %7 = mul i64 %.val5.i203, %i.fy
  %8 = add i64 %7, %umin
  %9 = shl i64 %8, 3
  %i.gb = getelementptr i8, ptr %i.cg, i64 %9
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = getelementptr i8, ptr %i.cg, i64 %6     ; 2 uses
  %i.ge = getelementptr i8, ptr %i.cg, i64 %6
  %i.gf = add i64 %i.r, -1
  %i.gg = tail call i64 @llvm.umin.i64(i64 %.val4.i200, i64 %i.gf)
  %i.gh = add i64 %i.gg, 1                        ; 3 uses
  %min.iters.check58 = icmp ugt i64 %i.gh, 8
  %ident.check.not = icmp eq i64 %.val6.i202, 1
  %or.cond81 = select i1 %min.iters.check58, i1 %ident.check.not, i1 false
  %i.gi = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.gj = shufflevector <2 x ptr> %i.gi, <2 x ptr> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x ptr> poison, ptr %i.gc, i64 0
  %i.gk = insertelement <2 x ptr> %10, ptr %i.gd, i64 1
  %.mask = and i64 %.val5.i203, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %bound062 = icmp ult ptr %i.cg, %i.gd
  %invariant.op = or i1 %bound062, %stride.check
  %i.gl = and i64 %i.gh, 3                        ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = select i1 %i.gm, i64 4, i64 %i.gl
  %n.vec66 = sub i64 %i.gh, %i.gn                 ; 2 uses
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
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
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
  %i.gq = tail call i64 @llvm.umin.i64(i64 %.val3.i199, i64 %i.r) ; 2 uses
  %i.gr = icmp eq i64 %i.gq, -1
  %i.gs = zext i1 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.gv = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.gw = shufflevector <2 x i64> %i.gv, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.az

.preheader471:                                    ; preds = %bb.ap
  br i1 %.not607, label %.loopexit470, label %.lr.ph543

.lr.ph543:                                        ; preds = %.preheader471
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5367.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6370.sroa.4.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6370.sroa.5.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6370.sroa.6.0..sroa.6370.0..sroa_idx371.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.gz = icmp eq i64 %.val3.i199, -1
  %i.ha = zext i1 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph543, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132
  %.sroa.061.0542 = phi i64 [ 0, %.lr.ph543 ], [ %i.hd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132 ] ; 3 uses
  %i.hd = add nuw i64 %.sroa.061.0542, 1          ; 2 uses
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
  %i.he = icmp sgt i64 %.val.i.i.i.i.i121, 0
  br i1 %i.he, label %bb.at, label %bb.as, !prof !109

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
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34149)
  call void @llvm.experimental.noalias.scope.decl(metadata !34150)
  call void @llvm.experimental.noalias.scope.decl(metadata !34151)
  %i.hg = load i64, ptr %i.hb, align 8, !alias.scope !34152, !noundef !56 ; 2 uses
  %.not.i.i.i125 = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i.i125, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126: ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i8 0, i64 16, i1 false), !alias.scope !34152
  %i.hh = load ptr, ptr %i.i, align 8, !alias.scope !34152, !nonnull !56, !noundef !56
  %i.hi = shl nuw i64 %i.hg, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hh, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34152
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34153
  store ptr %i.i, ptr %i.gx, align 8, !noalias !34153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34154
  store i64 0, ptr %i.d, align 8, !noalias !34155
  store i64 %.val3.i199, ptr %.sroa.5367.0..sroa_idx368, align 8, !noalias !34155
  store i64 %.val5.i203, ptr %.sroa.6370.0..sroa_idx371, align 8, !noalias !34155
  store i64 %.val4.i200, ptr %.sroa.6370.sroa.4.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34155
  store i64 %.val6.i202, ptr %.sroa.6370.sroa.5.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34155
  store ptr %i.cg, ptr %.sroa.6370.sroa.6.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34155
  store i64 1, ptr %i.gy, align 8, !noalias !34154
  %i.hj = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hj, i64 %i.ha)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB40_(i64 noundef %.val3.i199, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34156)
  call void @llvm.experimental.noalias.scope.decl(metadata !34157)
  call void @llvm.experimental.noalias.scope.decl(metadata !34158)
  %i.hk = load i64, ptr %i.hb, align 8, !alias.scope !34159, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i8 0, i64 16, i1 false), !alias.scope !34159
  %i.hl = load ptr, ptr %i.i, align 8, !alias.scope !34159, !nonnull !56, !noundef !56
  %i.hm = shl nuw i64 %i.hk, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hl, i64 noundef %i.hm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34159
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond653.not = icmp eq i64 %i.hd, %i.r
  br i1 %exitcond653.not, label %.loopexit470, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body195
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph541, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0540 = phi i64 [ 0, %.lr.ph541 ], [ %i.ho, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.ho = add nuw i64 %.sroa.059.0540, 1          ; 2 uses
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
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc149, %bb.bc
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34160)
  call void @llvm.experimental.noalias.scope.decl(metadata !34161)
  call void @llvm.experimental.noalias.scope.decl(metadata !34162)
  %i.hq = load i64, ptr %i.gt, align 8, !alias.scope !34163, !noundef !56 ; 2 uses
  %.not.i.i.i135 = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i.i135, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136: ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false), !alias.scope !34163
  %i.hr = load ptr, ptr %i.m, align 8, !alias.scope !34163, !nonnull !56, !noundef !56
  %i.hs = shl nuw i64 %i.hq, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hr, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34163
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8, !noalias !34164
  store ptr %i.m, ptr %i.go, align 8, !noalias !34164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34165
  store i64 0, ptr %i.gp, align 8, !noalias !34166
  store <2 x i64> %i.gw, ptr %.sroa.10349.56..sroa_idx350, align 8, !noalias !34166
  store i64 %i.r, ptr %.sroa.11352.sroa.4.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34166
  store i64 %.sroa.25.0, ptr %.sroa.11352.sroa.5.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34166
  store ptr %.sroa.14.0, ptr %.sroa.11352.sroa.6.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34166
  store i64 0, ptr %i.b, align 8, !noalias !34167
  store i64 %.val3.i199, ptr %.sroa.5341.0..sroa_idx342, align 8, !noalias !34167
  store i64 %.val5.i203, ptr %.sroa.6344.0..sroa_idx345, align 8, !noalias !34167
  store i64 %.val4.i200, ptr %.sroa.6344.sroa.4.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34167
  store i64 %.val6.i202, ptr %.sroa.6344.sroa.5.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34167
  store ptr %i.cg, ptr %.sroa.6344.sroa.6.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34167
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34168
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34169
  %i.ht = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc149 unwind label %bb.bb

.noexc149:                                        ; preds = %bb.bc
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 %i.gs)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4H_(i64 noundef %i.gq, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !34170)
  call void @llvm.experimental.noalias.scope.decl(metadata !34171)
  call void @llvm.experimental.noalias.scope.decl(metadata !34172)
  %i.hu = load i64, ptr %i.gt, align 8, !alias.scope !34173, !noundef !56 ; 2 uses
  %.not.i.i.i151 = icmp eq i64 %i.hu, 0
  br i1 %.not.i.i.i151, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152: ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false), !alias.scope !34173
  %i.hv = load ptr, ptr %i.m, align 8, !alias.scope !34173, !nonnull !56, !noundef !56
  %i.hw = shl nuw i64 %i.hu, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hv, i64 noundef %i.hw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34173
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond652.not = icmp eq i64 %i.ho, %i.r
  br i1 %exitcond652.not, label %.loopexit470, label %bb.az

bb.be:                                            ; preds = %.lr.ph605, %.loopexit469.split.us
  %.sroa.053.0604 = phi i64 [ 0, %.lr.ph605 ], [ %i.hz, %.loopexit469.split.us ] ; 8 uses
  %i.hx = mul i64 %i.ga, %.sroa.053.0604          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ge, i64 %i.hx
  %scevgep53 = getelementptr i8, ptr %i.cg, i64 %i.hx
  %i.hy = shl i64 %.sroa.053.0604, 3              ; 2 uses
  %11 = getelementptr i8, ptr %i.cg, i64 %i.hy
  %scevgep54 = getelementptr i8, ptr %11, i64 8
  %scevgep55 = getelementptr i8, ptr %i.cg, i64 %i.hy
  %i.hz = add nuw i64 %.sroa.053.0604, 1          ; 2 uses
  %i.ia = mul i64 %.val6.i202, %.sroa.053.0604
  %i.ib = getelementptr [8 x i8], ptr %i.cg, i64 %i.ia ; 2 uses
  %i.ic = mul i64 %.sroa.053.0604, %.val5.i203    ; 5 uses
  %i.id = mul i64 %.sroa.053.0604, %.sroa.25.0
  %i.ie = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.id
  %exitcond666.not = icmp eq i64 %.sroa.053.0604, %.val4.i200
  br i1 %exitcond666.not, label %.split553.us.invoke, label %.split557

.split557:                                        ; preds = %bb.be
  %i.if = icmp ult i64 %.sroa.053.0604, %.val3.i199
  %.fr = freeze i1 %i.if
  br i1 %.fr, label %.split557.split.us, label %.split553.us.invoke

.split557.split.us:                               ; preds = %.split557
  br i1 %.not67, label %.split557.split.us.split.us.preheader, label %.split557.split.us.split

.split557.split.us.split.us.preheader:            ; preds = %.split557.split.us
  %i.ig = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.ih = insertelement <2 x ptr> %i.ig, ptr %scevgep54, i64 1
  %i.ii = icmp ult <2 x ptr> %i.gj, %i.ih
  %i.ij = insertelement <2 x ptr> poison, ptr %scevgep53, i64 0
  %i.ik = insertelement <2 x ptr> %i.ij, ptr %scevgep55, i64 1
  %i.il = icmp ult <2 x ptr> %i.ik, %i.gk
  %i.im = and <2 x i1> %i.ii, %i.il
  %i.in = bitcast <2 x i1> %i.im to i2
  %i.io = icmp ne i2 %i.in, 0
  %op.rdx82.reass = or i1 %i.io, %invariant.op
  br label %.split557.split.us.split.us

.split557.split.us.split.us:                      ; preds = %.split557.split.us.split.us.preheader, %.loopexit.us.us
  %.sroa.055.0556.us.us = phi i64 [ %i.ip, %.loopexit.us.us ], [ 0, %.split557.split.us.split.us.preheader ] ; 4 uses
  %i.ip = add nuw i64 %.sroa.055.0556.us.us, 1    ; 2 uses
  %i.iq = mul i64 %.sroa.055.0556.us.us, %.val5.i203 ; 5 uses
  %i.ir = getelementptr [8 x i8], ptr %i.ib, i64 %i.iq ; 3 uses
  %invariant.gep545.us.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.iq ; 5 uses
  %exitcond664.not = icmp eq i64 %.sroa.055.0556.us.us, %.val3.i199
  br i1 %exitcond664.not, label %.split553.us.invoke, label %.split.us.us

.split.us.us:                                     ; preds = %.split557.split.us.split.us
  %i.is = icmp ult i64 %.sroa.055.0556.us.us, %.val3.i199
  %.fr554.us.us = freeze i1 %i.is
  br i1 %.fr554.us.us, label %.split.split.split.us560.us.preheader, label %.split.split.split.us.us.us

.split.split.split.us560.us.preheader:            ; preds = %.split.us.us
  %or.cond81.not = xor i1 %or.cond81, true
  %brmerge = select i1 %or.cond81.not, i1 true, i1 %op.rdx82.reass
  br i1 %brmerge, label %.split.split.split.us560.us.preheader83, label %vector.ph65

.split.split.split.us560.us.preheader83:          ; preds = %.split.split.split.us560.us.preheader, %pred.store.continue77
  %.sroa.057.0544.us555.us.us.ph = phi i64 [ %n.vec66, %pred.store.continue77 ], [ 0, %.split.split.split.us560.us.preheader ]
  br label %.split.split.split.us560.us

vector.ph65:                                      ; preds = %.split.split.split.us560.us.preheader
  %i.it = load double, ptr %i.ir, align 8, !alias.scope !34174
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.it, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body67

vector.body67:                                    ; preds = %pred.store.continue77, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next78, %pred.store.continue77 ] ; 6 uses
  %i.iu = getelementptr [8 x i8], ptr %i.cg, i64 %index68 ; 2 uses
  %i.iv = getelementptr [8 x i8], ptr %i.iu, i64 %i.ic ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  %wide.load = load <2 x double>, ptr %i.iv, align 8, !alias.scope !34175
  %wide.load69 = load <2 x double>, ptr %i.iw, align 8, !alias.scope !34175
  %i.ix = fadd <2 x double> %broadcast.splat, %wide.load ; 3 uses
  %i.iy = fadd <2 x double> %broadcast.splat, %wide.load69 ; 3 uses
  %i.iz = getelementptr [8 x i8], ptr %i.iu, i64 %i.iq ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 16
  %wide.load70 = load <2 x double>, ptr %i.iz, align 8, !alias.scope !34176
  %wide.load71 = load <2 x double>, ptr %i.ja, align 8, !alias.scope !34176
  %i.jb = fcmp olt <2 x double> %i.ix, %wide.load70 ; 2 uses
  %i.jc = fcmp olt <2 x double> %i.iy, %wide.load71 ; 2 uses
  %i.jd = extractelement <2 x i1> %i.jb, i64 0
  br i1 %i.jd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body67
  %i.je = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index68
  %i.jf = extractelement <2 x double> %i.ix, i64 0
  store double %i.jf, ptr %i.je, align 8, !alias.scope !34177, !noalias !34178
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body67
  %i.jg = extractelement <2 x i1> %i.jb, i64 1
  br i1 %i.jg, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue
  %i.jh = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index68
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  %i.jj = extractelement <2 x double> %i.ix, i64 1
  store double %i.jj, ptr %i.ji, align 8, !alias.scope !34177, !noalias !34178
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue
  %i.jk = extractelement <2 x i1> %i.jc, i64 0
  br i1 %i.jk, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %i.jl = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index68
  %i.jm = getelementptr i8, ptr %i.jl, i64 16
  %i.jn = extractelement <2 x double> %i.iy, i64 0
  store double %i.jn, ptr %i.jm, align 8, !alias.scope !34177, !noalias !34178
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.jo = extractelement <2 x i1> %i.jc, i64 1
  br i1 %i.jo, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.jp = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index68
  %i.jq = getelementptr i8, ptr %i.jp, i64 24
  %i.jr = extractelement <2 x double> %i.iy, i64 1
  store double %i.jr, ptr %i.jq, align 8, !alias.scope !34177, !noalias !34178
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %index.next78 = add nuw i64 %index68, 4         ; 2 uses
  %i.js = icmp eq i64 %index.next78, %n.vec66
  br i1 %i.js, label %.split.split.split.us560.us.preheader83, label %vector.body67, !llvm.loop !34107

.split.split.split.us.us.us:                      ; preds = %.split.us.us
  %i.jt = load double, ptr %i.ir, align 8, !noundef !56
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.split.split.split.us.us.us
  %.sroa.057.0544.us.us.us = phi i64 [ 0, %.split.split.split.us.us.us ], [ %i.ju, %bb.bh ] ; 3 uses
  %i.ju = add nuw i64 %.sroa.057.0544.us.us.us, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %.sroa.057.0544.us.us.us, %.val4.i200
  br i1 %exitcond660.not, label %.split553.us.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jv = mul i64 %.val6.i202, %.sroa.057.0544.us.us.us
  %i.jw = getelementptr [8 x i8], ptr %i.cg, i64 %i.jv ; 2 uses
  %i.jx = getelementptr [8 x i8], ptr %i.jw, i64 %i.ic
  %i.jy = load double, ptr %i.jx, align 8, !noundef !56
  %i.jz = fadd double %i.jt, %i.jy
  %i.ka = getelementptr [8 x i8], ptr %i.jw, i64 %i.iq
  %i.kb = load double, ptr %i.ka, align 8, !noundef !56
  %i.kc = fcmp olt double %i.jz, %i.kb
  br i1 %i.kc, label %.split553.us.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %exitcond661.not = icmp eq i64 %i.ju, %i.r
  br i1 %exitcond661.not, label %.loopexit.us.us, label %bb.bf

.split.split.split.us560.us:                      ; preds = %.split.split.split.us560.us.preheader83, %bb.bk
  %.sroa.057.0544.us555.us.us = phi i64 [ %i.kd, %bb.bk ], [ %.sroa.057.0544.us555.us.us.ph, %.split.split.split.us560.us.preheader83 ] ; 3 uses
  %i.kd = add nuw i64 %.sroa.057.0544.us555.us.us, 1 ; 2 uses
  %exitcond662.not = icmp eq i64 %.sroa.057.0544.us555.us.us, %.val4.i200
  br i1 %exitcond662.not, label %.split553.us.invoke, label %bb.bi

bb.bi:                                            ; preds = %.split.split.split.us560.us
  %i.ke = load double, ptr %i.ir, align 8, !noundef !56
  %i.kf = mul i64 %.val6.i202, %.sroa.057.0544.us555.us.us ; 2 uses
  %i.kg = getelementptr [8 x i8], ptr %i.cg, i64 %i.kf ; 2 uses
  %i.kh = getelementptr [8 x i8], ptr %i.kg, i64 %i.ic
  %i.ki = load double, ptr %i.kh, align 8, !noundef !56
  %i.kj = fadd double %i.ke, %i.ki                ; 2 uses
  %i.kk = getelementptr [8 x i8], ptr %i.kg, i64 %i.iq
  %i.kl = load double, ptr %i.kk, align 8, !noundef !56
  %i.km = fcmp olt double %i.kj, %i.kl
  br i1 %i.km, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %gep546.us.us.us = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %i.kf
  store double %i.kj, ptr %gep546.us.us.us, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %exitcond663.not = icmp eq i64 %i.kd, %i.r
  br i1 %exitcond663.not, label %.loopexit.us.us, label %.split.split.split.us560.us, !llvm.loop !34108

.loopexit.us.us:                                  ; preds = %bb.bh, %bb.bk
  %exitcond665.not = icmp eq i64 %i.ip, %i.r
  br i1 %exitcond665.not, label %.loopexit469.split.us, label %.split557.split.us.split.us

.split557.split.us.split:                         ; preds = %.split557.split.us, %.loopexit.us
  %.sroa.055.0556.us = phi i64 [ %i.kn, %.loopexit.us ], [ 0, %.split557.split.us ] ; 5 uses
  %i.kn = add nuw i64 %.sroa.055.0556.us, 1       ; 2 uses
  %i.ko = mul i64 %.sroa.055.0556.us, %.val5.i203 ; 4 uses
  %i.kp = getelementptr [8 x i8], ptr %i.ib, i64 %i.ko ; 2 uses
  %invariant.gep545.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.ko
  %i.kq = mul i64 %.sroa.055.0556.us, %i.r        ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %i.ie, i64 %i.kq
  %invariant.gep547.us = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.kq
  %exitcond658.not = icmp eq i64 %.sroa.055.0556.us, %.val3.i199
  br i1 %exitcond658.not, label %.split553.us.invoke, label %.split.us

.split.us:                                        ; preds = %.split557.split.us.split
  %i.ks = icmp ult i64 %.sroa.055.0556.us, %.val3.i199
  %.fr554.us = freeze i1 %i.ks
  br i1 %.fr554.us, label %.split.split.split.us560, label %.split.split.split.us.us

.split.split.split.us.us:                         ; preds = %.split.us
  %i.kt = load double, ptr %i.kp, align 8, !noundef !56
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.split.split.split.us.us
  %.sroa.057.0544.us.us = phi i64 [ 0, %.split.split.split.us.us ], [ %i.ku, %bb.bn ] ; 3 uses
  %i.ku = add nuw i64 %.sroa.057.0544.us.us, 1    ; 2 uses
  %exitcond654.not = icmp eq i64 %.sroa.057.0544.us.us, %.val4.i200
  br i1 %exitcond654.not, label %.split553.us.invoke, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kv = mul i64 %.val6.i202, %.sroa.057.0544.us.us
  %i.kw = getelementptr [8 x i8], ptr %i.cg, i64 %i.kv ; 2 uses
  %i.kx = getelementptr [8 x i8], ptr %i.kw, i64 %i.ic
  %i.ky = load double, ptr %i.kx, align 8, !noundef !56
  %i.kz = fadd double %i.kt, %i.ky
  %i.la = getelementptr [8 x i8], ptr %i.kw, i64 %i.ko
  %i.lb = load double, ptr %i.la, align 8, !noundef !56
  %i.lc = fcmp olt double %i.kz, %i.lb
  br i1 %i.lc, label %.split553.us.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %exitcond655.not = icmp eq i64 %i.ku, %i.r
  br i1 %exitcond655.not, label %.loopexit.us, label %bb.bl

.split.split.split.us560:                         ; preds = %.split.us, %bb.bq
  %.sroa.057.0544.us562 = phi i64 [ %i.ld, %bb.bq ], [ 0, %.split.us ] ; 4 uses
  %i.ld = add nuw i64 %.sroa.057.0544.us562, 1    ; 2 uses
  %exitcond656.not = icmp eq i64 %.sroa.057.0544.us562, %.val4.i200
  br i1 %exitcond656.not, label %.split553.us.invoke, label %bb.bo
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
  %.pn69 = phi { ptr, i32 } [ %i.bf, %bb.t ], [ %.pn, %.loopexit.split-lp483 ], [ %i.hf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126 ], [ %i.hp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136 ], [ %i.hf, %bb.av ], [ %i.hp, %bb.bb ], [ %lpad.loopexit.split-lp841, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
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
  %i.cg = load ptr, ptr %i.cd, align 8, !nonnull !56 ; 22 uses
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
  %umin = tail call i64 @llvm.umin.i64(i64 %.val4.i198, i64 %i.fy) ; 2 uses
  %i.fz = shl i64 %umin, 3
  %7 = add i64 %i.fz, 8                           ; 2 uses
  %i.ga = shl i64 %.val5.i201, 3
  %8 = mul i64 %.val5.i201, %i.fy
  %9 = add i64 %8, %umin
  %10 = shl i64 %9, 3
  %i.gb = getelementptr i8, ptr %i.cg, i64 %10
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = getelementptr i8, ptr %i.cg, i64 %7     ; 2 uses
  %i.ge = getelementptr i8, ptr %i.cg, i64 %7
  %i.gf = add i64 %i.r, -1
  %i.gg = tail call i64 @llvm.umin.i64(i64 %.val4.i198, i64 %i.gf)
  %i.gh = add i64 %i.gg, 1                        ; 3 uses
  %min.iters.check803 = icmp ugt i64 %i.gh, 8
  %ident.check.not = icmp eq i64 %.val6.i200, 1
  %or.cond826 = select i1 %min.iters.check803, i1 %ident.check.not, i1 false
  %i.gi = insertelement <2 x ptr> poison, ptr %i.cg, i64 0
  %i.gj = shufflevector <2 x ptr> %i.gi, <2 x ptr> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x ptr> poison, ptr %i.gc, i64 0
  %i.gk = insertelement <2 x ptr> %11, ptr %i.gd, i64 1
  %.mask = and i64 %.val5.i201, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %bound0807 = icmp ult ptr %i.cg, %i.gd
  %invariant.op = or i1 %bound0807, %stride.check
  %i.gl = and i64 %i.gh, 3                        ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = select i1 %i.gm, i64 4, i64 %i.gl
  %n.vec811 = sub i64 %i.gh, %i.gn                ; 2 uses
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
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
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
  %i.gq = tail call i64 @llvm.umin.i64(i64 %.val3.i197, i64 %i.r) ; 2 uses
  %i.gr = icmp eq i64 %i.gq, -1
  %i.gs = zext i1 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.gv = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.gw = shufflevector <2 x i64> %i.gv, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.az

.preheader469:                                    ; preds = %bb.ap
  br i1 %.not605, label %.loopexit468, label %.lr.ph541

.lr.ph541:                                        ; preds = %.preheader469
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.438.sroa.3.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5365.0..sroa_idx366 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6368.0..sroa_idx369 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6368.sroa.4.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6368.sroa.5.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6368.sroa.6.0..sroa.6368.0..sroa_idx369.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.gz = icmp eq i64 %.val3.i197, -1
  %i.ha = zext i1 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph541, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132
  %.sroa.061.0540 = phi i64 [ 0, %.lr.ph541 ], [ %i.hd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132 ] ; 3 uses
  %i.hd = add nuw i64 %.sroa.061.0540, 1          ; 2 uses
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
  %i.he = icmp sgt i64 %.val.i.i.i.i.i121, 0
  br i1 %i.he, label %bb.at, label %bb.as, !prof !109

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
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34363)
  call void @llvm.experimental.noalias.scope.decl(metadata !34364)
  call void @llvm.experimental.noalias.scope.decl(metadata !34365)
  %i.hg = load i64, ptr %i.hb, align 8, !alias.scope !34366, !noundef !56 ; 2 uses
  %.not.i.i.i125 = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i.i125, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i126: ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i8 0, i64 16, i1 false), !alias.scope !34366
  %i.hh = load ptr, ptr %i.i, align 8, !alias.scope !34366, !nonnull !56, !noundef !56
  %i.hi = shl nuw i64 %i.hg, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hh, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34366
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34367
  store ptr %i.i, ptr %i.gx, align 8, !noalias !34367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34368
  store i64 0, ptr %i.d, align 8, !noalias !34369
  store i64 %.val3.i197, ptr %.sroa.5365.0..sroa_idx366, align 8, !noalias !34369
  store i64 %.val5.i201, ptr %.sroa.6368.0..sroa_idx369, align 8, !noalias !34369
  store i64 %.val4.i198, ptr %.sroa.6368.sroa.4.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34369
  store i64 %.val6.i200, ptr %.sroa.6368.sroa.5.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34369
  store ptr %i.cg, ptr %.sroa.6368.sroa.6.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34369
  store i64 1, ptr %i.gy, align 8, !noalias !34368
  %i.hj = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hj, i64 %i.ha)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB40_(i64 noundef %.val3.i197, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34370)
  call void @llvm.experimental.noalias.scope.decl(metadata !34371)
  call void @llvm.experimental.noalias.scope.decl(metadata !34372)
  %i.hk = load i64, ptr %i.hb, align 8, !alias.scope !34373, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i8 0, i64 16, i1 false), !alias.scope !34373
  %i.hl = load ptr, ptr %i.i, align 8, !alias.scope !34373, !nonnull !56, !noundef !56
  %i.hm = shl nuw i64 %i.hk, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hl, i64 noundef %i.hm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34373
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond651.not = icmp eq i64 %i.hd, %i.r
  br i1 %exitcond651.not, label %.loopexit468, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body193
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph539, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0538 = phi i64 [ 0, %.lr.ph539 ], [ %i.ho, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.ho = add nuw i64 %.sroa.059.0538, 1          ; 2 uses
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
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc149, %bb.bc
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34374)
  call void @llvm.experimental.noalias.scope.decl(metadata !34375)
  call void @llvm.experimental.noalias.scope.decl(metadata !34376)
  %i.hq = load i64, ptr %i.gt, align 8, !alias.scope !34377, !noundef !56 ; 2 uses
  %.not.i.i.i135 = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i.i135, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136: ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false), !alias.scope !34377
  %i.hr = load ptr, ptr %i.m, align 8, !alias.scope !34377, !nonnull !56, !noundef !56
  %i.hs = shl nuw i64 %i.hq, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hr, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34377
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8, !noalias !34378
  store ptr %i.m, ptr %i.go, align 8, !noalias !34378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34379
  store i64 0, ptr %i.gp, align 8, !noalias !34380
  store <2 x i64> %i.gw, ptr %.sroa.10347.56..sroa_idx348, align 8, !noalias !34380
  store i64 %i.r, ptr %.sroa.11350.sroa.4.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34380
  store i64 %.sroa.25.0, ptr %.sroa.11350.sroa.5.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34380
  store ptr %.sroa.14.0, ptr %.sroa.11350.sroa.6.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34380
  store i64 0, ptr %i.b, align 8, !noalias !34381
  store i64 %.val3.i197, ptr %.sroa.5339.0..sroa_idx340, align 8, !noalias !34381
  store i64 %.val5.i201, ptr %.sroa.6342.0..sroa_idx343, align 8, !noalias !34381
  store i64 %.val4.i198, ptr %.sroa.6342.sroa.4.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34381
  store i64 %.val6.i200, ptr %.sroa.6342.sroa.5.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34381
  store ptr %i.cg, ptr %.sroa.6342.sroa.6.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34381
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34382
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34383
  %i.ht = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc149 unwind label %bb.bb

.noexc149:                                        ; preds = %bb.bc
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 %i.gs)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4H_(i64 noundef %i.gq, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !34384)
  call void @llvm.experimental.noalias.scope.decl(metadata !34385)
  call void @llvm.experimental.noalias.scope.decl(metadata !34386)
  %i.hu = load i64, ptr %i.gt, align 8, !alias.scope !34387, !noundef !56 ; 2 uses
  %.not.i.i.i151 = icmp eq i64 %i.hu, 0
  br i1 %.not.i.i.i151, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152: ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false), !alias.scope !34387
  %i.hv = load ptr, ptr %i.m, align 8, !alias.scope !34387, !nonnull !56, !noundef !56
  %i.hw = shl nuw i64 %i.hu, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hv, i64 noundef %i.hw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34387
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond650.not = icmp eq i64 %i.ho, %i.r
  br i1 %exitcond650.not, label %.loopexit468, label %bb.az

bb.be:                                            ; preds = %.lr.ph603, %.loopexit467.split.us
  %.sroa.053.0602 = phi i64 [ 0, %.lr.ph603 ], [ %i.hz, %.loopexit467.split.us ] ; 8 uses
  %i.hx = mul i64 %i.ga, %.sroa.053.0602          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ge, i64 %i.hx
  %scevgep798 = getelementptr i8, ptr %i.cg, i64 %i.hx
  %i.hy = shl i64 %.sroa.053.0602, 3              ; 2 uses
  %12 = getelementptr i8, ptr %i.cg, i64 %i.hy
  %scevgep799 = getelementptr i8, ptr %12, i64 8
  %scevgep800 = getelementptr i8, ptr %i.cg, i64 %i.hy
  %i.hz = add nuw i64 %.sroa.053.0602, 1          ; 2 uses
  %i.ia = mul i64 %.val6.i200, %.sroa.053.0602
  %i.ib = getelementptr [8 x i8], ptr %i.cg, i64 %i.ia ; 2 uses
  %i.ic = mul i64 %.sroa.053.0602, %.val5.i201    ; 5 uses
  %i.id = mul i64 %.sroa.053.0602, %.sroa.25.0
  %i.ie = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.id
  %exitcond664.not = icmp eq i64 %.sroa.053.0602, %.val4.i198
  br i1 %exitcond664.not, label %.split551.us.invoke, label %.split555

.split555:                                        ; preds = %bb.be
  %i.if = icmp ult i64 %.sroa.053.0602, %.val3.i197
  %.fr = freeze i1 %i.if
  br i1 %.fr, label %.split555.split.us, label %.split551.us.invoke

.split555.split.us:                               ; preds = %.split555
  br i1 %.not67, label %.split555.split.us.split.us.preheader, label %.split555.split.us.split

.split555.split.us.split.us.preheader:            ; preds = %.split555.split.us
  %i.ig = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.ih = insertelement <2 x ptr> %i.ig, ptr %scevgep799, i64 1
  %i.ii = icmp ult <2 x ptr> %i.gj, %i.ih
  %i.ij = insertelement <2 x ptr> poison, ptr %scevgep798, i64 0
  %i.ik = insertelement <2 x ptr> %i.ij, ptr %scevgep800, i64 1
  %i.il = icmp ult <2 x ptr> %i.ik, %i.gk
  %i.im = and <2 x i1> %i.ii, %i.il
  %i.in = bitcast <2 x i1> %i.im to i2
  %i.io = icmp ne i2 %i.in, 0
  %op.rdx827.reass = or i1 %i.io, %invariant.op
  br label %.split555.split.us.split.us

.split555.split.us.split.us:                      ; preds = %.split555.split.us.split.us.preheader, %.loopexit.us.us
  %.sroa.055.0554.us.us = phi i64 [ %i.ip, %.loopexit.us.us ], [ 0, %.split555.split.us.split.us.preheader ] ; 4 uses
  %i.ip = add nuw i64 %.sroa.055.0554.us.us, 1    ; 2 uses
  %i.iq = mul i64 %.sroa.055.0554.us.us, %.val5.i201 ; 5 uses
  %i.ir = getelementptr [8 x i8], ptr %i.ib, i64 %i.iq ; 3 uses
  %invariant.gep543.us.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.iq ; 5 uses
  %exitcond662.not = icmp eq i64 %.sroa.055.0554.us.us, %.val3.i197
  br i1 %exitcond662.not, label %.split551.us.invoke, label %.split.us.us

.split.us.us:                                     ; preds = %.split555.split.us.split.us
  %i.is = icmp ult i64 %.sroa.055.0554.us.us, %.val3.i197
  %.fr552.us.us = freeze i1 %i.is
  br i1 %.fr552.us.us, label %.split.split.split.us558.us.preheader, label %.split.split.split.us.us.us

.split.split.split.us558.us.preheader:            ; preds = %.split.us.us
  %or.cond826.not = xor i1 %or.cond826, true
  %brmerge = select i1 %or.cond826.not, i1 true, i1 %op.rdx827.reass
  br i1 %brmerge, label %.split.split.split.us558.us.preheader828, label %vector.ph810

.split.split.split.us558.us.preheader828:         ; preds = %.split.split.split.us558.us.preheader, %pred.store.continue822
  %.sroa.057.0542.us553.us.us.ph = phi i64 [ %n.vec811, %pred.store.continue822 ], [ 0, %.split.split.split.us558.us.preheader ]
  br label %.split.split.split.us558.us

vector.ph810:                                     ; preds = %.split.split.split.us558.us.preheader
  %i.it = load double, ptr %i.ir, align 8, !alias.scope !34388
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.it, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body812

vector.body812:                                   ; preds = %pred.store.continue822, %vector.ph810
  %index813 = phi i64 [ 0, %vector.ph810 ], [ %index.next823, %pred.store.continue822 ] ; 6 uses
  %i.iu = getelementptr [8 x i8], ptr %i.cg, i64 %index813 ; 2 uses
  %i.iv = getelementptr [8 x i8], ptr %i.iu, i64 %i.ic ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  %wide.load = load <2 x double>, ptr %i.iv, align 8, !alias.scope !34389
  %wide.load814 = load <2 x double>, ptr %i.iw, align 8, !alias.scope !34389
  %i.ix = fadd <2 x double> %broadcast.splat, %wide.load ; 3 uses
  %i.iy = fadd <2 x double> %broadcast.splat, %wide.load814 ; 3 uses
  %i.iz = getelementptr [8 x i8], ptr %i.iu, i64 %i.iq ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 16
  %wide.load815 = load <2 x double>, ptr %i.iz, align 8, !alias.scope !34390
  %wide.load816 = load <2 x double>, ptr %i.ja, align 8, !alias.scope !34390
  %i.jb = fcmp olt <2 x double> %i.ix, %wide.load815 ; 2 uses
  %i.jc = fcmp olt <2 x double> %i.iy, %wide.load816 ; 2 uses
  %i.jd = extractelement <2 x i1> %i.jb, i64 0
  br i1 %i.jd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body812
  %i.je = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index813
  %i.jf = extractelement <2 x double> %i.ix, i64 0
  store double %i.jf, ptr %i.je, align 8, !alias.scope !34391, !noalias !34392
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body812
  %i.jg = extractelement <2 x i1> %i.jb, i64 1
  br i1 %i.jg, label %pred.store.if817, label %pred.store.continue818

pred.store.if817:                                 ; preds = %pred.store.continue
  %i.jh = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index813
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  %i.jj = extractelement <2 x double> %i.ix, i64 1
  store double %i.jj, ptr %i.ji, align 8, !alias.scope !34391, !noalias !34392
  br label %pred.store.continue818

pred.store.continue818:                           ; preds = %pred.store.if817, %pred.store.continue
  %i.jk = extractelement <2 x i1> %i.jc, i64 0
  br i1 %i.jk, label %pred.store.if819, label %pred.store.continue820

pred.store.if819:                                 ; preds = %pred.store.continue818
  %i.jl = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index813
  %i.jm = getelementptr i8, ptr %i.jl, i64 16
  %i.jn = extractelement <2 x double> %i.iy, i64 0
  store double %i.jn, ptr %i.jm, align 8, !alias.scope !34391, !noalias !34392
  br label %pred.store.continue820

pred.store.continue820:                           ; preds = %pred.store.if819, %pred.store.continue818
  %i.jo = extractelement <2 x i1> %i.jc, i64 1
  br i1 %i.jo, label %pred.store.if821, label %pred.store.continue822

pred.store.if821:                                 ; preds = %pred.store.continue820
  %i.jp = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index813
  %i.jq = getelementptr i8, ptr %i.jp, i64 24
  %i.jr = extractelement <2 x double> %i.iy, i64 1
  store double %i.jr, ptr %i.jq, align 8, !alias.scope !34391, !noalias !34392
  br label %pred.store.continue822

pred.store.continue822:                           ; preds = %pred.store.if821, %pred.store.continue820
  %index.next823 = add nuw i64 %index813, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next823, %n.vec811
  br i1 %i.js, label %.split.split.split.us558.us.preheader828, label %vector.body812, !llvm.loop !34321

.split.split.split.us.us.us:                      ; preds = %.split.us.us
  %i.jt = load double, ptr %i.ir, align 8, !noundef !56
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.split.split.split.us.us.us
  %.sroa.057.0542.us.us.us = phi i64 [ 0, %.split.split.split.us.us.us ], [ %i.ju, %bb.bh ] ; 3 uses
  %i.ju = add nuw i64 %.sroa.057.0542.us.us.us, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %.sroa.057.0542.us.us.us, %.val4.i198
  br i1 %exitcond658.not, label %.split551.us.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jv = mul i64 %.val6.i200, %.sroa.057.0542.us.us.us
  %i.jw = getelementptr [8 x i8], ptr %i.cg, i64 %i.jv ; 2 uses
  %i.jx = getelementptr [8 x i8], ptr %i.jw, i64 %i.ic
  %i.jy = load double, ptr %i.jx, align 8, !noundef !56
  %i.jz = fadd double %i.jt, %i.jy
  %i.ka = getelementptr [8 x i8], ptr %i.jw, i64 %i.iq
  %i.kb = load double, ptr %i.ka, align 8, !noundef !56
  %i.kc = fcmp olt double %i.jz, %i.kb
  br i1 %i.kc, label %.split551.us.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %exitcond659.not = icmp eq i64 %i.ju, %i.r
  br i1 %exitcond659.not, label %.loopexit.us.us, label %bb.bf

.split.split.split.us558.us:                      ; preds = %.split.split.split.us558.us.preheader828, %bb.bk
  %.sroa.057.0542.us553.us.us = phi i64 [ %i.kd, %bb.bk ], [ %.sroa.057.0542.us553.us.us.ph, %.split.split.split.us558.us.preheader828 ] ; 3 uses
  %i.kd = add nuw i64 %.sroa.057.0542.us553.us.us, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %.sroa.057.0542.us553.us.us, %.val4.i198
  br i1 %exitcond660.not, label %.split551.us.invoke, label %bb.bi

bb.bi:                                            ; preds = %.split.split.split.us558.us
  %i.ke = load double, ptr %i.ir, align 8, !noundef !56
  %i.kf = mul i64 %.val6.i200, %.sroa.057.0542.us553.us.us ; 2 uses
  %i.kg = getelementptr [8 x i8], ptr %i.cg, i64 %i.kf ; 2 uses
  %i.kh = getelementptr [8 x i8], ptr %i.kg, i64 %i.ic
  %i.ki = load double, ptr %i.kh, align 8, !noundef !56
  %i.kj = fadd double %i.ke, %i.ki                ; 2 uses
  %i.kk = getelementptr [8 x i8], ptr %i.kg, i64 %i.iq
  %i.kl = load double, ptr %i.kk, align 8, !noundef !56
  %i.km = fcmp olt double %i.kj, %i.kl
  br i1 %i.km, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %gep544.us.us.us = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %i.kf
  store double %i.kj, ptr %gep544.us.us.us, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %exitcond661.not = icmp eq i64 %i.kd, %i.r
  br i1 %exitcond661.not, label %.loopexit.us.us, label %.split.split.split.us558.us, !llvm.loop !34322

.loopexit.us.us:                                  ; preds = %bb.bh, %bb.bk
  %exitcond663.not = icmp eq i64 %i.ip, %i.r
  br i1 %exitcond663.not, label %.loopexit467.split.us, label %.split555.split.us.split.us

.split555.split.us.split:                         ; preds = %.split555.split.us, %.loopexit.us
  %.sroa.055.0554.us = phi i64 [ %i.kn, %.loopexit.us ], [ 0, %.split555.split.us ] ; 5 uses
  %i.kn = add nuw i64 %.sroa.055.0554.us, 1       ; 2 uses
  %i.ko = mul i64 %.sroa.055.0554.us, %.val5.i201 ; 4 uses
  %i.kp = getelementptr [8 x i8], ptr %i.ib, i64 %i.ko ; 2 uses
  %invariant.gep543.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.ko
  %i.kq = mul i64 %.sroa.055.0554.us, %i.r        ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %i.ie, i64 %i.kq
  %invariant.gep545.us = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.kq
  %exitcond656.not = icmp eq i64 %.sroa.055.0554.us, %.val3.i197
  br i1 %exitcond656.not, label %.split551.us.invoke, label %.split.us

.split.us:                                        ; preds = %.split555.split.us.split
  %i.ks = icmp ult i64 %.sroa.055.0554.us, %.val3.i197
  %.fr552.us = freeze i1 %i.ks
  br i1 %.fr552.us, label %.split.split.split.us558, label %.split.split.split.us.us

.split.split.split.us.us:                         ; preds = %.split.us
  %i.kt = load double, ptr %i.kp, align 8, !noundef !56
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.split.split.split.us.us
  %.sroa.057.0542.us.us = phi i64 [ 0, %.split.split.split.us.us ], [ %i.ku, %bb.bn ] ; 3 uses
  %i.ku = add nuw i64 %.sroa.057.0542.us.us, 1    ; 2 uses
  %exitcond652.not = icmp eq i64 %.sroa.057.0542.us.us, %.val4.i198
  br i1 %exitcond652.not, label %.split551.us.invoke, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kv = mul i64 %.val6.i200, %.sroa.057.0542.us.us
  %i.kw = getelementptr [8 x i8], ptr %i.cg, i64 %i.kv ; 2 uses
  %i.kx = getelementptr [8 x i8], ptr %i.kw, i64 %i.ic
  %i.ky = load double, ptr %i.kx, align 8, !noundef !56
  %i.kz = fadd double %i.kt, %i.ky
  %i.la = getelementptr [8 x i8], ptr %i.kw, i64 %i.ko
  %i.lb = load double, ptr %i.la, align 8, !noundef !56
  %i.lc = fcmp olt double %i.kz, %i.lb
  br i1 %i.lc, label %.split551.us.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %exitcond653.not = icmp eq i64 %i.ku, %i.r
  br i1 %exitcond653.not, label %.loopexit.us, label %bb.bl

.split.split.split.us558:                         ; preds = %.split.us, %bb.bq
  %.sroa.057.0542.us560 = phi i64 [ %i.ld, %bb.bq ], [ 0, %.split.us ] ; 4 uses
  %i.ld = add nuw i64 %.sroa.057.0542.us560, 1    ; 2 uses
  %exitcond654.not = icmp eq i64 %.sroa.057.0542.us560, %.val4.i198
  br i1 %exitcond654.not, label %.split551.us.invoke, label %bb.bo
end_hunk_1
begin_hunk_2_@_RINvNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data20parse_node_link_dataNtCs68Jln09rRqb_8petgraph8DirectedEB6_:bb.a
bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.0328.0)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294 unwind label %.loopexit.split-lp424.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ds:                                            ; preds = %bb.dq
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0328.0) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit294

bb.dt:                                            ; preds = %.thread409, %bb.dc
  %i.oa = phi { ptr, i32 } [ %i.lx, %.thread409 ], [ %i.ly, %bb.dc ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr %.sroa.0328.0) #63
          to label %.loopexit.split-lp424 unwind label %bb.af

bb.du:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !34888)
  call void @llvm.experimental.noalias.scope.decl(metadata !34889)
  call void @llvm.experimental.noalias.scope.decl(metadata !34890)
  %.val1.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !34891, !noundef !56 ; 4 uses
  %i.ob = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ob, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i295

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i295: ; preds = %bb.du
  %.val.i.i.i296 = load ptr, ptr %i.fr, align 8, !alias.scope !34891, !nonnull !56, !noundef !56
  %i.oc = shl i64 %.val1.i.i.i, 3
  %i.od = icmp slt i64 %.val1.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.od)
  %i.oe = and i64 %i.oc, -16                      ; 2 uses
  %i.of = add i64 %i.oe, 16                       ; 2 uses
  %i.og = add nsw i64 %.val1.i.i.i, 17
  %i.oh = add i64 %i.og, %i.of                    ; 3 uses
  %i.oi = icmp uge i64 %i.oh, %i.of
  call void @llvm.assume(i1 %i.oi)
  %i.oj = icmp ult i64 %i.oh, 9223372036854775793
  call void @llvm.assume(i1 %i.oj)
  %i.ok = sub nuw nsw i64 -16, %i.oe
  %i.ol = getelementptr inbounds i8, ptr %.val.i.i.i296, i64 %i.ok
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ol, i64 noundef %i.oh, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !34891
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i295, %bb.du
  %.val2.i.i.i297 = load i64, ptr %i.ab, align 8, !alias.scope !34891 ; 2 uses
  %i.om = icmp eq i64 %.val2.i.i.i297, 0
  br i1 %i.om, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.val3.i.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !34891, !nonnull !56, !noundef !56
  %i.on = shl nuw i64 %.val2.i.i.i297, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.on, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34891
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ad

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.ae, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.oo = icmp eq ptr %4, null
  br i1 %i.oo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300, label %bb.dv

bb.dv:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit
  %i.op = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i298 = load i64, ptr %i.op, align 8, !noundef !56
  %i.oq = icmp sgt i64 %.val.i.i.i.i.i298, 0
  br i1 %i.oq, label %bb.dx, label %bb.dw, !prof !109

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300 unwind label %bb.bb

bb.dx:                                            ; preds = %bb.dv
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300: ; preds = %bb.dx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, %bb.dw
  %i.or = icmp eq ptr %3, null
  br i1 %i.or, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303, label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300
  %i.os = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i301 = load i64, ptr %i.os, align 8, !noundef !56
  %i.ot = icmp sgt i64 %.val.i.i.i.i.i301, 0
  br i1 %i.ot, label %bb.ea, label %bb.dz, !prof !109

bb.dz:                                            ; preds = %bb.dy
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %3)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303 unwind label %bb.bh

bb.ea:                                            ; preds = %bb.dy
  call void @_Py_DecRef(ptr noundef nonnull %3) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303: ; preds = %bb.ea, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit300, %bb.dz
  %i.ou = load i64, ptr %1, align 8, !range !57, !alias.scope !34892, !noundef !56
  %i.ov = icmp eq i64 %i.ou, 0
  br i1 %i.ov, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit305, label %bb.eb

bb.eb:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ow)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit305 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ox = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oy = trunc nuw i8 %.sroa.077.4 to i1
  br i1 %i.oy, label %bb.ef, label %bb.ee

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit305: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit303, %bb.eb
  %i.oz = trunc nuw i8 %.sroa.077.4 to i1
  br i1 %i.oz, label %bb.ed, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit252

bb.ed:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit305
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 56
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pa)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit252

bb.ee:                                            ; preds = %bb.ej, %bb.eh, %bb.ef, %bb.ec
  %.pn205 = phi { ptr, i32 } [ %i.ox, %bb.ef ], [ %i.ox, %bb.ec ], [ %.pn203, %bb.ej ], [ %.pn203, %bb.eh ]
  resume { ptr, i32 } %.pn205

bb.ef:                                            ; preds = %bb.ec
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pb) #63
          to label %bb.ee unwind label %bb.af

bb.eg:                                            ; preds = %bb.ap, %.loopexit.split-lp424
  %.pn195.ph = phi { ptr, i32 } [ %.pn193, %.loopexit.split-lp424 ], [ %i.ga, %bb.ap ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ab) #63
  br label %.body

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.bf, %bb.bg
  br i1 %.sroa.082.8, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.ei, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit
  %i.pc = trunc nuw i8 %.sroa.077.7 to i1
  br i1 %i.pc, label %bb.ej, label %bb.ee

bb.ei:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_EEECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9NodeInputEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #63
          to label %bb.eh unwind label %bb.af

bb.ej:                                            ; preds = %bb.eh
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pd) #63
          to label %bb.ee unwind label %bb.af
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate10ptr_rotateNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 noundef range(i64 -2305843009213693951, 2305843009213693952) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 -2305843009213693951, 2305843009213693952) %2) unnamed_addr #14 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = icmp eq i64 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %. = tail call i64 @llvm.umin.i64(i64 %2, i64 %0)
  %i.d = icmp ult i64 %., 65
  br i1 %i.d, label %bb.d, label %bb.c

_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit.i, %bb.r, %bb.m, %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate18ptr_rotate_memmoveNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %2, %0
  %i.f = icmp ult i64 %i.e, 24
  br i1 %i.f, label %bb.i, label %.preheader

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %2, %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = sub nsw i64 0, %0
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %2 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i64 %0, 2                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 4 %i.i, i64 %i.k, i1 false)
  %i.l = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %1, i64 %i.l, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 8 %i.a, i64 %i.k, i1 false)
  br label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate18ptr_rotate_memmoveNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

bb.f:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %2, 2                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 4 %1, i64 %i.m, i1 false)
  %i.n = shl nuw nsw i64 %0, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 4 %i.i, i64 %i.n, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 8 %i.a, i64 %i.m, i1 false)
  br label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate18ptr_rotate_memmoveNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate18ptr_rotate_memmoveNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

.preheader:                                       ; preds = %bb.c, %.loopexit.i
  %.sroa.016.0.i = phi i64 [ %.sroa.016.2.i, %.loopexit.i ], [ %2, %bb.c ] ; 22 uses
  %.sroa.010.0.i = phi ptr [ %.sroa.010.2.i, %.loopexit.i ], [ %1, %bb.c ] ; 15 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i, %.loopexit.i ], [ %0, %bb.c ] ; 25 uses
  %.not.i2 = icmp ult i64 %.sroa.0.0.i, %.sroa.016.0.i
  br i1 %.not.i2, label %.preheader.i, label %.preheader57.i

.preheader57.i:                                   ; preds = %.preheader
  %i.o = sub nsw i64 0, %.sroa.016.0.i            ; 3 uses
  %.not37.i = icmp eq i64 %.sroa.016.0.i, 0
  %i.p = shl nuw nsw i64 %.sroa.016.0.i, 2
  %i.q = lshr i64 %.sroa.016.0.i, 1               ; 6 uses
  %i.r = and i64 %.sroa.016.0.i, 1
  %.not4.i45.i = icmp eq i64 %i.r, 0              ; 2 uses
  %i.s = and i64 %i.p, 9223372036854775800        ; 5 uses
  br i1 %.not37.i, label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i, label %.preheader57.split.i

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i: ; preds = %.preheader57.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.us.i

.preheader57.split.i:                             ; preds = %.preheader57.i
  %.not.i38.i = icmp eq i64 %i.q, 0
  br i1 %.not.i38.i, label %.preheader57.split.split.us.i, label %.preheader.i39.preheader.i.preheader

.preheader.i39.preheader.i.preheader:             ; preds = %.preheader57.split.i
  %i.t = shl i64 %i.q, 3                          ; 2 uses
  %scevgep106 = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.t
  %i.u = shl i64 %.sroa.016.0.i, 2
  %i.v = sub i64 %i.t, %i.u
  %scevgep107 = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.v
  %3 = mul i64 %.sroa.016.0.i, -4
  %scevgep108 = getelementptr i8, ptr %.sroa.010.0.i, i64 %3
  %min.iters.check106 = icmp ult i64 %.sroa.016.0.i, 8
  %bound0112 = icmp ult ptr %scevgep108, %scevgep106
  %bound1113 = icmp ult ptr %.sroa.010.0.i, %scevgep107
  %found.conflict114 = and i1 %bound0112, %bound1113
  %n.vec112 = and i64 %i.q, 9223372036854775804   ; 3 uses
  %cmp.n121 = icmp eq i64 %i.q, %n.vec112
  %i.w = and i64 %.sroa.016.0.i, 2
  %lcmp.mod.not = icmp eq i64 %i.w, 0
  br label %.preheader.i39.preheader.i

.preheader57.split.split.us.i:                    ; preds = %.preheader57.split.i
  br i1 %.not4.i45.i, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i: ; preds = %.preheader57.split.split.us.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 %i.s
  %.sroa.02.0.copyload.i.i6.i47.us.pre.i = load i32, ptr %.phi.trans.insert.i, align 1, !alias.scope !34921
  br label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i: ; preds = %.preheader57.split.split.us.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i
  %.sroa.010.3.us63.us.i = phi ptr [ %i.x, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %.sroa.010.0.i, %.preheader57.split.split.us.i ]
  %.sroa.0.2.us64.us.i = phi i64 [ %i.y, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %.sroa.0.0.i, %.preheader57.split.split.us.i ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.3.us63.us.i, i64 %i.o ; 2 uses
  %i.y = sub nuw nsw i64 %.sroa.0.2.us64.us.i, %.sroa.016.0.i ; 3 uses
  %i.z = icmp ult i64 %i.y, %.sroa.016.0.i
  br i1 %i.z, label %.loopexit.i, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i: ; preds = %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i
  %.sroa.010.3.us63.i = phi ptr [ %i.aa, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %.sroa.010.0.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i ] ; 2 uses
  %.sroa.0.2.us64.i = phi i64 [ %i.ad, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %.sroa.0.0.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.preheader.i ]
  %i.aa = getelementptr inbounds [4 x i8], ptr %.sroa.010.3.us63.i, i64 %i.o ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.3.us63.i, i64 %i.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34921)
  %.sroa.0.0.copyload.i.i5.i46.us.i = load i32, ptr %i.ab, align 1, !alias.scope !34922
  store i32 %.sroa.02.0.copyload.i.i6.i47.us.pre.i, ptr %i.ab, align 1, !alias.scope !34922
  store i32 %.sroa.0.0.copyload.i.i5.i46.us.i, ptr %i.ac, align 1, !alias.scope !34921
  %i.ad = sub i64 %.sroa.0.2.us64.i, %.sroa.016.0.i ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %.sroa.016.0.i
  br i1 %i.ae, label %.loopexit.i, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i

.preheader.i:                                     ; preds = %.preheader
  %.not36.i = icmp eq i64 %.sroa.0.0.i, 0
  %i.af = shl nuw nsw i64 %.sroa.0.0.i, 2
  %i.ag = sub nsw i64 0, %.sroa.0.0.i             ; 2 uses
  %i.ah = lshr i64 %.sroa.0.0.i, 1                ; 6 uses
  %i.ai = and i64 %.sroa.0.0.i, 1
  %.not4.i.i = icmp eq i64 %i.ai, 0               ; 2 uses
  %i.aj = and i64 %i.af, 9223372036854775800      ; 4 uses
  br i1 %.not36.i, label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.us.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %.preheader.i
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %.preheader.split.i.preheader.split.us, label %.preheader.split.i.preheader73

.preheader.split.i.preheader73:                   ; preds = %.preheader.split.i.preheader
  %i.ak = shl i64 %i.ah, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.ak
  %i.al = shl i64 %.sroa.0.0.i, 2
  %i.am = sub i64 %i.ak, %i.al
  %scevgep94 = getelementptr i8, ptr %.sroa.010.0.i, i64 %i.am
  %4 = mul i64 %.sroa.0.0.i, -4
  %scevgep95 = getelementptr i8, ptr %.sroa.010.0.i, i64 %4
  %min.iters.check = icmp ult i64 %.sroa.0.0.i, 8
  %bound0 = icmp ult ptr %scevgep95, %scevgep
  %bound1 = icmp ult ptr %.sroa.010.0.i, %scevgep94
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.ah, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  %i.an = and i64 %.sroa.0.0.i, 2
  %lcmp.mod143.not = icmp eq i64 %i.an, 0
  br label %.preheader.split.i

.preheader.split.i.preheader.split.us:            ; preds = %.preheader.split.i.preheader
  br i1 %.not4.i.i, label %.preheader.split.i.us.us, label %.preheader.split.i.us

.preheader.split.i.us.us:                         ; preds = %.preheader.split.i.preheader.split.us, %.preheader.split.i.us.us
  %.sroa.016.1.i.us.us = phi i64 [ %i.ap, %.preheader.split.i.us.us ], [ %.sroa.016.0.i, %.preheader.split.i.preheader.split.us ]
  %.sroa.010.1.i.us.us = phi ptr [ %i.ao, %.preheader.split.i.us.us ], [ %.sroa.010.0.i, %.preheader.split.i.preheader.split.us ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.1.i.us.us, i64 %.sroa.0.0.i ; 2 uses
  %i.ap = sub nuw nsw i64 %.sroa.016.1.i.us.us, %.sroa.0.0.i ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.0.0.i
  br i1 %i.aq, label %.loopexit.i, label %.preheader.split.i.us.us

.preheader.split.i.us:                            ; preds = %.preheader.split.i.preheader.split.us, %.preheader.split.i.us
  %.sroa.016.1.i.us = phi i64 [ %i.av, %.preheader.split.i.us ], [ %.sroa.016.0.i, %.preheader.split.i.preheader.split.us ]
  %.sroa.010.1.i.us = phi ptr [ %i.au, %.preheader.split.i.us ], [ %.sroa.010.0.i, %.preheader.split.i.preheader.split.us ] ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %.sroa.010.1.i.us, i64 %i.ag
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.us, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34924)
  %.sroa.0.0.copyload.i.i5.i.i.us = load i32, ptr %i.as, align 1, !alias.scope !34923
  %.sroa.02.0.copyload.i.i6.i.i.us = load i32, ptr %i.at, align 1, !alias.scope !34924
  store i32 %.sroa.02.0.copyload.i.i6.i.i.us, ptr %i.as, align 1, !alias.scope !34923
  store i32 %.sroa.0.0.copyload.i.i5.i.i.us, ptr %i.at, align 1, !alias.scope !34924
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.1.i.us, i64 %.sroa.0.0.i ; 2 uses
  %i.av = sub i64 %.sroa.016.1.i.us, %.sroa.0.0.i ; 3 uses
  %i.aw = icmp ult i64 %i.av, %.sroa.0.0.i
  br i1 %i.aw, label %.loopexit.i, label %.preheader.split.i.us

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.us.i: ; preds = %.preheader.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.us.i
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.us.i

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader73, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %indvar = phi i64 [ %i.bp, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.016.0.i, %.preheader.split.i.preheader73 ]
  %.sroa.010.1.i = phi ptr [ %i.bo, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.010.0.i, %.preheader.split.i.preheader73 ] ; 7 uses
  %5 = getelementptr inbounds [4 x i8], ptr %.sroa.010.1.i, i64 %i.ag ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.split.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34926)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ax, align 1, !alias.scope !34927, !noalias !34928
  %wide.load93 = load <2 x i64>, ptr %i.az, align 1, !alias.scope !34927, !noalias !34928
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.load94 = load <2 x i64>, ptr %i.ay, align 1, !alias.scope !34929
  %wide.load95 = load <2 x i64>, ptr %i.ba, align 1, !alias.scope !34929
  store <2 x i64> %wide.load94, ptr %i.ax, align 1, !alias.scope !34927, !noalias !34928
  store <2 x i64> %wide.load95, ptr %i.az, align 1, !alias.scope !34927, !noalias !34928
  store <2 x i64> %wide.load, ptr %i.ay, align 1, !alias.scope !34929
  store <2 x i64> %wide.load93, ptr %i.ba, align 1, !alias.scope !34929
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !34905

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.split.i, %middle.block
  %.sroa.01.03.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.split.i ] ; 5 uses
  %.neg144 = or disjoint i64 %.sroa.01.03.i.i.i.ph, 1
  br i1 %lcmp.mod143.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.bc = or disjoint i64 %.sroa.01.03.i.i.i.ph, 1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.01.03.i.i.i.ph ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %.sroa.01.03.i.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34926)
  %.sroa.0.0.copyload.i.i.i.i.prol = load i64, ptr %i.bd, align 1, !alias.scope !34925
  %.sroa.02.0.copyload.i.i.i.i.prol = load i64, ptr %i.be, align 1, !alias.scope !34926
  store i64 %.sroa.02.0.copyload.i.i.i.i.prol, ptr %i.bd, align 1, !alias.scope !34925
  store i64 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %i.be, align 1, !alias.scope !34926
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.sroa.01.03.i.i.i.unr = phi i64 [ %.sroa.01.03.i.i.i.ph, %.preheader.i.i.preheader ], [ %i.bc, %.preheader.i.i.prol ]
  %i.bf = icmp eq i64 %i.ah, %.neg144
  br i1 %i.bf, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.sroa.01.03.i.i.i = phi i64 [ %i.bj, %.preheader.i.i ], [ %.sroa.01.03.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 4 uses
  %i.bg = add nuw nsw i64 %.sroa.01.03.i.i.i, 1   ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.01.03.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %.sroa.01.03.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34926)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bh, align 1, !alias.scope !34925
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.bi, align 1, !alias.scope !34926
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.bh, align 1, !alias.scope !34925
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.bi, align 1, !alias.scope !34926
  %i.bj = add nuw nsw i64 %.sroa.01.03.i.i.i, 2   ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bg ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i, i64 %i.bg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34931)
  %.sroa.0.0.copyload.i.i.i.i.1 = load i64, ptr %i.bk, align 1, !alias.scope !34930
  %.sroa.02.0.copyload.i.i.i.i.1 = load i64, ptr %i.bl, align 1, !alias.scope !34931
  store i64 %.sroa.02.0.copyload.i.i.i.i.1, ptr %i.bk, align 1, !alias.scope !34930
  store i64 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.bl, align 1, !alias.scope !34931
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.bj, %i.ah
  br i1 %exitcond.not.i.i.i.1, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit, label %.preheader.i.i, !llvm.loop !34909

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit: ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block
  br i1 %.not4.i.i, label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i, label %bb.g

bb.g:                                             ; preds = %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 %i.aj ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34924)
  %.sroa.0.0.copyload.i.i5.i.i = load i32, ptr %i.bm, align 1, !alias.scope !34923
  %.sroa.02.0.copyload.i.i6.i.i = load i32, ptr %i.bn, align 1, !alias.scope !34924
  store i32 %.sroa.02.0.copyload.i.i6.i.i, ptr %i.bm, align 1, !alias.scope !34923
  store i32 %.sroa.0.0.copyload.i.i5.i.i, ptr %i.bn, align 1, !alias.scope !34924
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.g, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i.i.loopexit
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.1.i, i64 %.sroa.0.0.i ; 2 uses
  %i.bp = sub i64 %indvar, %.sroa.0.0.i           ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.0.0.i
  br i1 %i.bq, label %.loopexit.i, label %.preheader.split.i

.loopexit.i:                                      ; preds = %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i, %.preheader.split.i.us, %.preheader.split.i.us.us
  %.sroa.016.2.i = phi i64 [ %i.ap, %.preheader.split.i.us.us ], [ %.sroa.016.0.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %i.av, %.preheader.split.i.us ], [ %.sroa.016.0.i, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %i.bp, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.016.0.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 2 uses
  %.sroa.010.2.i = phi ptr [ %i.ao, %.preheader.split.i.us.us ], [ %i.aa, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %i.au, %.preheader.split.i.us ], [ %i.x, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %i.bo, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.bt, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %.preheader.split.i.us.us ], [ %i.ad, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.i ], [ %.sroa.0.0.i, %.preheader.split.i.us ], [ %i.y, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.us.us.i ], [ %.sroa.0.0.i, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.cl, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ] ; 2 uses
  %i.br = icmp eq i64 %.sroa.016.2.i, 0
  %i.bs = icmp eq i64 %.sroa.0.1.i, 0
  %or.cond.i = or i1 %i.br, %i.bs
  br i1 %or.cond.i, label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %.preheader

.preheader.i39.preheader.i:                       ; preds = %.preheader.i39.preheader.i.preheader, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i
  %.sroa.010.3.i = phi ptr [ %i.bt, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ], [ %.sroa.010.0.i, %.preheader.i39.preheader.i.preheader ] ; 6 uses
  %.sroa.0.2.i = phi i64 [ %i.cl, %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i ], [ %.sroa.0.0.i, %.preheader.i39.preheader.i.preheader ]
  %i.bt = getelementptr inbounds [4 x i8], ptr %.sroa.010.3.i, i64 %i.o ; 7 uses
  %brmerge162 = select i1 %min.iters.check106, i1 true, i1 %found.conflict114
  br i1 %brmerge162, label %.preheader.i39.i.preheader, label %vector.body113

vector.body113:                                   ; preds = %.preheader.i39.preheader.i, %vector.body113
  %index114 = phi i64 [ %index.next119, %vector.body113 ], [ 0, %.preheader.i39.preheader.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index114 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %index114 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34933)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %wide.load115 = load <2 x i64>, ptr %i.bu, align 1, !alias.scope !34934, !noalias !34935
  %wide.load116 = load <2 x i64>, ptr %i.bw, align 1, !alias.scope !34934, !noalias !34935
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load117 = load <2 x i64>, ptr %i.bv, align 1, !alias.scope !34936
  %wide.load118 = load <2 x i64>, ptr %i.bx, align 1, !alias.scope !34936
  store <2 x i64> %wide.load117, ptr %i.bu, align 1, !alias.scope !34934, !noalias !34935
  store <2 x i64> %wide.load118, ptr %i.bw, align 1, !alias.scope !34934, !noalias !34935
  store <2 x i64> %wide.load115, ptr %i.bv, align 1, !alias.scope !34936
  store <2 x i64> %wide.load116, ptr %i.bx, align 1, !alias.scope !34936
  %index.next119 = add nuw i64 %index114, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.by, label %middle.block120, label %vector.body113, !llvm.loop !34916

middle.block120:                                  ; preds = %vector.body113
  br i1 %cmp.n121, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i, label %.preheader.i39.i.preheader

.preheader.i39.i.preheader:                       ; preds = %.preheader.i39.preheader.i, %middle.block120
  %.sroa.01.03.i.i40.i.ph = phi i64 [ %n.vec112, %middle.block120 ], [ 0, %.preheader.i39.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.03.i.i40.i.ph, 1
  br i1 %lcmp.mod.not, label %.preheader.i39.i.prol.loopexit, label %.preheader.i39.i.prol

.preheader.i39.i.prol:                            ; preds = %.preheader.i39.i.preheader
  %i.bz = or disjoint i64 %.sroa.01.03.i.i40.i.ph, 1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.01.03.i.i40.i.ph ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %.sroa.01.03.i.i40.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34933)
  %.sroa.0.0.copyload.i.i.i41.i.prol = load i64, ptr %i.ca, align 1, !alias.scope !34932
  %.sroa.02.0.copyload.i.i.i42.i.prol = load i64, ptr %i.cb, align 1, !alias.scope !34933
  store i64 %.sroa.02.0.copyload.i.i.i42.i.prol, ptr %i.ca, align 1, !alias.scope !34932
  store i64 %.sroa.0.0.copyload.i.i.i41.i.prol, ptr %i.cb, align 1, !alias.scope !34933
  br label %.preheader.i39.i.prol.loopexit

.preheader.i39.i.prol.loopexit:                   ; preds = %.preheader.i39.i.prol, %.preheader.i39.i.preheader
  %.sroa.01.03.i.i40.i.unr = phi i64 [ %.sroa.01.03.i.i40.i.ph, %.preheader.i39.i.preheader ], [ %i.bz, %.preheader.i39.i.prol ]
  %i.cc = icmp eq i64 %i.q, %.neg
  br i1 %i.cc, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i, label %.preheader.i39.i

.preheader.i39.i:                                 ; preds = %.preheader.i39.i.prol.loopexit, %.preheader.i39.i
  %.sroa.01.03.i.i40.i = phi i64 [ %i.cg, %.preheader.i39.i ], [ %.sroa.01.03.i.i40.i.unr, %.preheader.i39.i.prol.loopexit ] ; 4 uses
  %i.cd = add nuw nsw i64 %.sroa.01.03.i.i40.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.01.03.i.i40.i ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %.sroa.01.03.i.i40.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34933)
  %.sroa.0.0.copyload.i.i.i41.i = load i64, ptr %i.ce, align 1, !alias.scope !34932
  %.sroa.02.0.copyload.i.i.i42.i = load i64, ptr %i.cf, align 1, !alias.scope !34933
  store i64 %.sroa.02.0.copyload.i.i.i42.i, ptr %i.ce, align 1, !alias.scope !34932
  store i64 %.sroa.0.0.copyload.i.i.i41.i, ptr %i.cf, align 1, !alias.scope !34933
  %i.cg = add nuw nsw i64 %.sroa.01.03.i.i40.i, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cd ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i, i64 %i.cd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34938)
  %.sroa.0.0.copyload.i.i.i41.i.1 = load i64, ptr %i.ch, align 1, !alias.scope !34937
  %.sroa.02.0.copyload.i.i.i42.i.1 = load i64, ptr %i.ci, align 1, !alias.scope !34938
  store i64 %.sroa.02.0.copyload.i.i.i42.i.1, ptr %i.ch, align 1, !alias.scope !34937
  store i64 %.sroa.0.0.copyload.i.i.i41.i.1, ptr %i.ci, align 1, !alias.scope !34938
  %exitcond.not.i.i43.i.1 = icmp eq i64 %i.cg, %i.q
  br i1 %exitcond.not.i.i43.i.1, label %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i, label %.preheader.i39.i, !llvm.loop !34920

_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i: ; preds = %.preheader.i39.i.prol.loopexit, %.preheader.i39.i, %middle.block120
  br i1 %.not4.i45.i, label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i, label %bb.h

bb.h:                                             ; preds = %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.s ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.010.3.i, i64 %i.s ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34921)
  %.sroa.0.0.copyload.i.i5.i46.i = load i32, ptr %i.cj, align 1, !alias.scope !34922
  %.sroa.02.0.copyload.i.i6.i47.i = load i32, ptr %i.ck, align 1, !alias.scope !34921
  store i32 %.sroa.02.0.copyload.i.i6.i47.i, ptr %i.cj, align 1, !alias.scope !34922
  store i32 %.sroa.0.0.copyload.i.i5.i46.i, ptr %i.ck, align 1, !alias.scope !34921
  br label %_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i

_RNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes.exit54.i: ; preds = %bb.h, %_RINvNvNtCslwFuT2d6ECx_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskcxRuJ53GpR_9rustworkx.exit.i44.loopexit.i
  %i.cl = sub i64 %.sroa.0.2.i, %.sroa.016.0.i    ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %.sroa.016.0.i
  br i1 %i.cm, label %.loopexit.i, label %.preheader.i39.preheader.i

bb.i:                                             ; preds = %bb.c
  %i.cn = sub nsw i64 0, %0
  %i.co = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cn ; 5 uses
  %i.cp = load i32, ptr %i.co, align 4, !noundef !56
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.i
  %.sroa.019.0.i.ph = phi i64 [ %spec.select.i, %bb.n ], [ %2, %bb.i ] ; 3 uses
  %.sroa.027.0.i.ph = phi i32 [ %i.cr, %bb.n ], [ %i.cp, %bb.i ]
  %.sroa.06.0.i.ph = phi i64 [ %i.ct, %bb.n ], [ %2, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %bb.k
  %.sroa.027.0.i = phi i32 [ %i.cr, %bb.k ], [ %.sroa.027.0.i.ph, %.outer ]
  %.sroa.06.0.i = phi i64 [ %i.cs, %bb.k ], [ %.sroa.06.0.i.ph, %.outer ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.sroa.06.0.i ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !noundef !56 ; 3 uses
  store i32 %.sroa.027.0.i, ptr %i.cq, align 4
  %.not.i3 = icmp ult i64 %.sroa.06.0.i, %0
  br i1 %.not.i3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cs = add i64 %.sroa.06.0.i, %2
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.ct = sub nuw i64 %.sroa.06.0.i, %0           ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.cr, ptr %i.co, align 4
  %i.cv = icmp ugt i64 %.sroa.019.0.i.ph, 1
  br i1 %i.cv, label %.lr.ph.i, label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.l
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 %.sroa.019.0.i.ph)
  br label %.outer

.lr.ph.i:                                         ; preds = %bb.m, %bb.r
  %.sroa.021.036.i = phi i64 [ %i.de, %bb.r ], [ 1, %bb.m ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.sroa.021.036.i ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !56
  %i.cy = add i64 %.sroa.021.036.i, %2
  br label %bb.o

bb.o:                                             ; preds = %.backedge, %.lr.ph.i
  %.sroa.027.1.i = phi i32 [ %i.cx, %.lr.ph.i ], [ %i.da, %.backedge ]
  %.sroa.06.2.i = phi i64 [ %i.cy, %.lr.ph.i ], [ %.sroa.06.2.i.be, %.backedge ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.sroa.06.2.i ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !noundef !56 ; 2 uses
  store i32 %.sroa.027.1.i, ptr %i.cz, align 4
  %.not34.i = icmp ult i64 %.sroa.06.2.i, %0
  br i1 %.not34.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = add i64 %.sroa.06.2.i, %2
  br label %.backedge

bb.q:                                             ; preds = %bb.o
  %i.dc = sub nuw i64 %.sroa.06.2.i, %0           ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %.sroa.021.036.i
  br i1 %i.dd, label %bb.r, label %.backedge

.backedge:                                        ; preds = %bb.q, %bb.p
  %.sroa.06.2.i.be = phi i64 [ %i.dc, %bb.q ], [ %i.db, %bb.p ]
  br label %bb.o

bb.r:                                             ; preds = %bb.q
  store i32 %i.da, ptr %i.cw, align 4
  %i.de = add nuw i64 %.sroa.021.036.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.de, %.sroa.019.0.i.ph
  br i1 %exitcond.not.i, label %_RINvNtNtCslwFuT2d6ECx_4core5slice6rotate15ptr_rotate_swapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCs68Jln09rRqb_8petgraph4algo3scc12kosaraju_scc12kosaraju_sccRINtNtNtB8_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEB1U_EECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 15 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [72 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35035)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35036
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !35035, !noalias !35037, !nonnull !56, !noundef !56 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !alias.scope !35035, !noalias !35037, !noundef !56 ; 6 uses
  %.idx341 = shl nuw nsw i64 %.val1.i.i, 4
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx341 ; 4 uses
  %.not.i.i.i.i329 = icmp eq i64 %.val1.i.i, 0
  %.sink345.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink345.sroa.gep385 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink345.sroa.gep387 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink345.sroa.gep388 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink345.sroa.gep390 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink345.sroa.gep391 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %.not.i.i.i.i329, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph331

bb.b:                                             ; preds = %.lr.ph331
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, %i.r
  br i1 %.not.i.i.i.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph331

.lr.ph331:                                        ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.r, %bb.b ], [ %i.p, %bb.a ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 4 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !35038, !noundef !56
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i: ; preds = %.lr.ph331
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 4
  %i.w = and i64 %i.v, 4294967295
  %i.x = add nuw nsw i64 %i.w, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.b, %bb.a, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.x, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.02.0.i.i.i.i.i), !noalias !35036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35036
  %.not.i.i.i7.i332 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i.i7.i332, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i, label %.lr.ph333

bb.c:                                             ; preds = %.lr.ph333
  %.not.i.i.i7.i = icmp eq ptr %.val.i.i, %i.z
  br i1 %.not.i.i.i7.i, label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i, label %.lr.ph333

.lr.ph333:                                        ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.c
  %i.y = phi ptr [ %i.z, %bb.c ], [ %i.p, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 4 uses
  %.val.i.i.i.i8.i = load ptr, ptr %i.z, align 8, !noalias !35039, !noundef !56
  %.not.i.not.i.i.i.i9.i = icmp eq ptr %.val.i.i.i.i8.i, null
  br i1 %.not.i.not.i.i.i.i9.i, label %bb.c, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i: ; preds = %.lr.ph333
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %.val.i.i to i64
  %i.ac = sub nuw i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 4
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = add nuw nsw i64 %i.ae, 1
  br label %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i

_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i: ; preds = %bb.c, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i
  %.sroa.02.0.i.i.i.i12.i = phi i64 [ %i.af, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i10.i ], [ 0, %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 0, %bb.c ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.sroa.02.0.i.i.i.i12.i)
          to label %bb.g unwind label %bb.d, !noalias !35036

bb.d:                                             ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.e, !noalias !35036

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !35036
  unreachable

common.resume:                                    ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.d ], [ %.pn28126, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit95: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i94, %.thread127
  br i1 %i.av, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100, label %bb.as

bb.f:                                             ; preds = %bb.m
  br i1 %.sroa.016.2, label %.thread127, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100

.thread133:                                       ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i59
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit100

bb.g:                                             ; preds = %_RNvXsw_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i11.i
  store i64 0, ptr %i.m, align 8, !alias.scope !35034
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35034
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !35034
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !35035
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
end_hunk_2
